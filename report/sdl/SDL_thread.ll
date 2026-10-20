Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_thread?download=true
inline.NumInlined: 12
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SDL_AtomicInt = type { i32 }
%struct.SDL_error = type { [2 x %struct.SDL_ErrorInfo], i32, ptr, ptr }
%struct.SDL_ErrorInfo = type { i32, ptr, i64 }

@.str = private unnamed_addr constant [26 x i8] c"Parameter '%s' is invalid\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@SDL_tls_id = internal global %struct.SDL_AtomicInt zeroinitializer, align 4
@SDL_tls_allocated = internal global %struct.SDL_AtomicInt zeroinitializer, align 4
@SDL_generic_TLS_mutex = internal unnamed_addr global ptr null, align 8
@SDL_generic_TLS = internal unnamed_addr global ptr null, align 8
@SDL_GetErrBuf.tls_errbuf = internal global %struct.SDL_AtomicInt zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"_beginthreadex/_endthreadex not supported on this platform\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"SDL.thread.create.entry_function\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"SDL.thread.create.name\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"SDL.thread.create.stacksize\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"SDL.thread.create.userdata\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Thread entry function is NULL\00", align 1
@SDL_GetStaticErrBuf.SDL_global_error = internal global %struct.SDL_error zeroinitializer, align 8
@SDL_GetStaticErrBuf.SDL_global_error_str1 = internal global [128 x i8] zeroinitializer, align 16
@SDL_GetStaticErrBuf.SDL_global_error_str2 = internal global [128 x i8] zeroinitializer, align 16
@SDL_object_validation = external local_unnamed_addr global i8, align 1

; Function Attrs: nounwind uwtable
define hidden void @SDL_InitTLSData() local_unnamed_addr #0 {
bb.a:
  tail call void @SDL_SYS_InitTLSData() #6
  ret void
}

declare void @SDL_SYS_InitTLSData() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden ptr @SDL_GetTLS_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #6 ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull %0) #6 ; 3 uses
  %i.d = tail call ptr @SDL_SYS_GetTLSData() #6   ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  %i.f = icmp slt i32 %i.c, 1
  %or.cond = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.d, align 8
  %.not.not = icmp sgt i32 %i.c, %i.g
  br i1 %.not.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %1 = zext nneg i32 %i.c to i64
  %2 = getelementptr [16 x i8], ptr %i.d, i64 %1
  %3 = getelementptr i8, ptr %2, i64 -8
  %i.h = load ptr, ptr %3, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.h, %bb.e ], [ null, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare zeroext i1 @SDL_SetError_REAL(ptr noundef, ...) local_unnamed_addr #1

declare i32 @SDL_GetAtomicInt_REAL(ptr noundef) local_unnamed_addr #1

declare ptr @SDL_SYS_GetTLSData() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_SetTLS_REAL(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #6
  br label %.critedge53

bb.c:                                             ; preds = %bb.a
  tail call void @SDL_SYS_InitTLSData() #6
  %i.c = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull %0) #6 ; 7 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull @SDL_tls_id, i32 noundef 1) #6
  %i.f = add nsw i32 %i.e, 1
  %i.g = tail call zeroext i1 @SDL_CompareAndSwapAtomicInt_REAL(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %i.f) #6 ; 0 uses
  %i.h = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull %0) #6
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.i = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull @SDL_tls_id) #6 ; 2 uses
  %.not.not54 = icmp sgt i32 %i.c, %i.i
  br i1 %.not.not54, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.03955 = phi i32 [ %i.k, %bb.f ], [ %i.i, %bb.e ]
  %i.j = tail call zeroext i1 @SDL_CompareAndSwapAtomicInt_REAL(ptr noundef nonnull @SDL_tls_id, i32 noundef %.03955, i32 noundef %i.c) #6
  br i1 %i.j, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.k = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull @SDL_tls_id) #6 ; 2 uses
  %.not.not = icmp sgt i32 %i.c, %i.k
  br i1 %.not.not, label %.lr.ph, label %.loopexit, !llvm.loop !8

.loopexit:                                        ; preds = %.lr.ph, %bb.f, %bb.e, %bb.d
  %.042.in = phi i32 [ %i.h, %bb.d ], [ %i.c, %bb.e ], [ %i.c, %bb.f ], [ %i.c, %.lr.ph ] ; 4 uses
  %i.l = tail call ptr @SDL_SYS_GetTLSData() #6   ; 4 uses
  %.not.a = icmp eq ptr %i.l, null
  br i1 %.not.a, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.m = load i32, ptr %i.l, align 8              ; 2 uses
  %.not50.not = icmp sgt i32 %.042.in, %i.m
  br i1 %.not50.not, label %.critedge, label %bb.k

.critedge:                                        ; preds = %bb.g, %.loopexit
  %i.n = phi i32 [ 0, %.loopexit ], [ %i.m, %bb.g ] ; 3 uses
  %i.o = add nsw i32 %.042.in, 3                  ; 3 uses
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 4
  %i.r = or disjoint i64 %i.q, 8
  %i.s = tail call ptr @SDL_realloc_REAL(ptr noundef %i.l, i64 noundef %i.r) #7 ; 6 uses
  %.not51.a = icmp eq ptr %i.s, null
  br i1 %.not51.a, label %.critedge53, label %bb.h

bb.h:                                             ; preds = %.critedge
  store i32 %i.o, ptr %i.s, align 8
  %i.t = icmp ult i32 %i.n, %i.o
  br i1 %i.t, label %.lr.ph58, label %._crit_edge

.lr.ph58:                                         ; preds = %bb.h
  %i.u = zext i32 %i.n to i64
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = getelementptr i8, ptr %i.s, i64 %i.v
  %scevgep = getelementptr i8, ptr %i.w, i64 8
  %i.x = add i32 %.042.in, 2
  %i.y = sub i32 %i.x, %i.n
  %i.z = zext i32 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 4
  %i.ab = add nuw nsw i64 %i.aa, 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.ab, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph58, %bb.h
  %i.ac = tail call zeroext i1 @SDL_SYS_SetTLSData(ptr noundef nonnull %i.s) #6
  br i1 %i.ac, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.s) #6
  br label %.critedge53

bb.j:                                             ; preds = %._crit_edge
  %i.ad = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull @SDL_tls_allocated, i32 noundef 1) #6 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.144 = phi ptr [ %i.s, %bb.j ], [ %i.l, %bb.g ]
  %i.ae = sext i32 %.042.in to i64
  %i.af = getelementptr [16 x i8], ptr %.144, i64 %i.ae ; 2 uses
  %3 = getelementptr i8, ptr %i.af, i64 -8
  store ptr %1, ptr %3, align 8
  store ptr %2, ptr %i.af, align 8
  br label %.critedge53

.critedge53:                                      ; preds = %bb.i, %.critedge, %bb.k, %bb.b
  %.1 = phi i1 [ %i.b, %bb.b ], [ true, %bb.k ], [ false, %.critedge ], [ false, %bb.i ]
  ret i1 %.1
}

declare i32 @SDL_AddAtomicInt_REAL(ptr noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i1 @SDL_CompareAndSwapAtomicInt_REAL(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: allocsize(1)
declare ptr @SDL_realloc_REAL(ptr noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @SDL_SYS_SetTLSData(ptr noundef) local_unnamed_addr #1

declare void @SDL_free_REAL(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @SDL_CleanupTLS_REAL() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @SDL_SYS_GetTLSData() #6   ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.e = phi i32 [ %i.b, %.lr.ph ], [ %i.j, %bb.d ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not12 = icmp eq ptr %i.h, null
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.f, align 8
  tail call void %i.h(ptr noundef %i.i) #6
  %.pre = load i32, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.j = phi i32 [ %i.e, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = icmp slt i64 %indvars.iv.next, %i.k
  br i1 %i.l, label %bb.b, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.d, %.preheader
  %i.m = tail call zeroext i1 @SDL_SYS_SetTLSData(ptr noundef null) #6 ; 0 uses
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.a) #6
  %i.n = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull @SDL_tls_allocated, i32 noundef -1) #6 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_QuitTLSData() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @SDL_SYS_GetTLSData() #6   ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %SDL_CleanupTLS_REAL.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %i.e = phi i32 [ %i.b, %.lr.ph.i ], [ %i.j, %bb.d ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv.i ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not12.i = icmp eq ptr %i.h, null
  br i1 %.not12.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.f, align 8
  tail call void %i.h(ptr noundef %i.i) #6, !inline_history !5
  %.pre.i = load i32, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = phi i32 [ %i.e, %bb.b ], [ %.pre.i, %bb.c ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = icmp slt i64 %indvars.iv.next.i, %i.k
  br i1 %i.l, label %bb.b, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.d, %.preheader.i
  %i.m = tail call zeroext i1 @SDL_SYS_SetTLSData(ptr noundef null) #6 ; 0 uses
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.a) #6
  %i.n = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull @SDL_tls_allocated, i32 noundef -1) #6 ; 0 uses
  br label %SDL_CleanupTLS_REAL.exit

SDL_CleanupTLS_REAL.exit:                         ; preds = %bb.a, %._crit_edge.i
  %i.o = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull @SDL_tls_allocated) #6
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %SDL_CleanupTLS_REAL.exit
  tail call void @SDL_SYS_QuitTLSData() #6
  br label %bb.f

bb.f:                                             ; preds = %SDL_CleanupTLS_REAL.exit, %bb.e
  ret void
}

declare void @SDL_SYS_QuitTLSData() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @SDL_Generic_InitTLSData() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @SDL_generic_TLS_mutex, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @SDL_CreateMutex_REAL() #6
  store ptr %i.b, ptr @SDL_generic_TLS_mutex, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare ptr @SDL_CreateMutex_REAL() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden ptr @SDL_Generic_GetTLSData() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @SDL_GetCurrentThreadID_REAL() #6
  %i.b = load ptr, ptr @SDL_generic_TLS_mutex, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.b) #6
  %.057 = load ptr, ptr @SDL_generic_TLS, align 8 ; 2 uses
  %.not8 = icmp eq ptr %.057, null
  br i1 %.not8, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.059 = phi ptr [ %.05, %bb.c ], [ %.057, %bb.a ] ; 3 uses
  %i.c = load i64, ptr %.059, align 8
  %i.d = icmp eq i64 %i.c, %i.a
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.059, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.059, i64 16
  %.05 = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not = icmp eq ptr %.05, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !9

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ], [ null, %bb.c ]
  %i.h = load ptr, ptr @SDL_generic_TLS_mutex, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.h) #6
  ret ptr %.0
}

declare i64 @SDL_GetCurrentThreadID_REAL() local_unnamed_addr #1

declare void @SDL_LockMutex_REAL(ptr noundef) local_unnamed_addr #1

declare void @SDL_UnlockMutex_REAL(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @SDL_Generic_SetTLSData(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @SDL_GetCurrentThreadID_REAL() #6 ; 3 uses
  %i.b = load ptr, ptr @SDL_generic_TLS_mutex, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.b) #6
  %.02334 = load ptr, ptr @SDL_generic_TLS, align 8 ; 4 uses
  %.not35 = icmp eq ptr %.02334, null
  br i1 %.not35, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = load i64, ptr %.02334, align 8
  %i.d = icmp eq i64 %i.c, %i.a
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph47

.lr.ph:                                           ; preds = %.lr.ph47
  %i.e = load i64, ptr %.023, align 8
  %i.f = icmp eq i64 %i.e, %i.a
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph47, !llvm.loop !10

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.02337.lcssa = phi ptr [ %.02334, %.lr.ph.preheader ], [ %.023, %.lr.ph ] ; 3 uses
  %.02436.lcssa = phi ptr [ null, %.lr.ph.preheader ], [ %.0233746, %.lr.ph ] ; 2 uses
  %.not27 = icmp eq ptr %0, null
  br i1 %.not27, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph._crit_edge
  %i.g = getelementptr inbounds nuw i8, ptr %.02337.lcssa, i64 8
  store ptr %0, ptr %i.g, align 8
  br label %.thread

bb.c:                                             ; preds = %.lr.ph._crit_edge
  %.not28 = icmp eq ptr %.02436.lcssa, null
  %i.h = getelementptr inbounds nuw i8, ptr %.02337.lcssa, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  br i1 %.not28, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.02436.lcssa, i64 16
  store ptr %i.i, ptr %i.j, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr %i.i, ptr @SDL_generic_TLS, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @SDL_free_REAL(ptr noundef nonnull %.02337.lcssa) #6
  br label %.thread

.lr.ph47:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0233746 = phi ptr [ %.023, %.lr.ph ], [ %.02334, %.lr.ph.preheader ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0233746, i64 16
  %.023 = load ptr, ptr %i.k, align 8             ; 4 uses
  %.not = icmp eq ptr %.023, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !10

._crit_edge:                                      ; preds = %.lr.ph47, %bb.a
  %.not31 = icmp eq ptr %0, null
  br i1 %.not31, label %.thread, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.l = tail call noalias ptr @SDL_malloc_REAL(i64 noundef 24) #6 ; 5 uses
  %.not29 = icmp eq ptr %i.l, null
  br i1 %.not29, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 %i.a, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %0, ptr %i.m, align 8
  %i.n = load ptr, ptr @SDL_generic_TLS, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.n, ptr %i.o, align 8
  store ptr %i.l, ptr @SDL_generic_TLS, align 8
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.b, %bb.g, %bb.h, %._crit_edge
  %.0 = phi i1 [ true, %bb.h ], [ true, %._crit_edge ], [ false, %bb.g ], [ true, %bb.b ], [ true, %bb.f ]
  %i.p = load ptr, ptr @SDL_generic_TLS_mutex, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.p) #6
  ret i1 %.0
}

declare noalias ptr @SDL_malloc_REAL(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @SDL_Generic_QuitTLSData() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @SDL_generic_TLS, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @SDL_generic_TLS_mutex, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.b) #6
  %i.c = load ptr, ptr @SDL_generic_TLS, align 8  ; 2 uses
  %.not68 = icmp eq ptr %i.c, null
  br i1 %.not68, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.09 = phi ptr [ %i.e, %.lr.ph ], [ %i.c, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.09, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.09, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.g) #6
  tail call void @SDL_free_REAL(ptr noundef nonnull %.09) #6
  %.not6 = icmp eq ptr %i.e, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph, !llvm.loop !11

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  store ptr null, ptr @SDL_generic_TLS, align 8
  %i.h = load ptr, ptr @SDL_generic_TLS_mutex, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.h) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.i = load ptr, ptr @SDL_generic_TLS_mutex, align 8 ; 2 uses
  %.not7 = icmp eq ptr %i.i, null
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @SDL_DestroyMutex_REAL(ptr noundef nonnull %i.i) #6
  store ptr null, ptr @SDL_generic_TLS_mutex, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

declare void @SDL_DestroyMutex_REAL(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden ptr @SDL_GetErrBuf(i1 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull @SDL_GetErrBuf.tls_errbuf) #6 ; 3 uses
  %i.d = tail call ptr @SDL_SYS_GetTLSData() #6   ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  %i.f = icmp slt i32 %i.c, 1
  %or.cond.i = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond.i, label %SDL_GetTLS_REAL.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.d, align 8
  %.not.not.i = icmp sgt i32 %i.c, %i.g
  br i1 %.not.not.i, label %SDL_GetTLS_REAL.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %1 = zext nneg i32 %i.c to i64
  %2 = getelementptr [16 x i8], ptr %i.d, i64 %1
  %3 = getelementptr i8, ptr %2, i64 -8
  %i.h = load ptr, ptr %3, align 8
  br label %SDL_GetTLS_REAL.exit

SDL_GetTLS_REAL.exit:                             ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ null, %bb.a ], [ %i.h, %bb.c ], [ null, %bb.b ] ; 2 uses
  %.not = icmp eq ptr %.0.i, null
  %brmerge.not = and i1 %0, %.not
  br i1 %brmerge.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %SDL_GetTLS_REAL.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @SDL_GetOriginalMemoryFunctions_REAL(ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #6
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = call ptr %i.i(ptr noundef null, i64 noundef 72) #6 ; 6 uses
  %.not13.not = icmp eq ptr %i.j, null
  br i1 %.not13.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr @SDL_GetStaticErrBuf.SDL_global_error_str1, ptr getelementptr inbounds nuw (i8, ptr @SDL_GetStaticErrBuf.SDL_global_error, i64 8), align 8
  store i64 128, ptr getelementptr inbounds nuw (i8, ptr @SDL_GetStaticErrBuf.SDL_global_error, i64 16), align 8
  store ptr @SDL_GetStaticErrBuf.SDL_global_error_str2, ptr getelementptr inbounds nuw (i8, ptr @SDL_GetStaticErrBuf.SDL_global_error, i64 32), align 8
  store i64 128, ptr getelementptr inbounds nuw (i8, ptr @SDL_GetStaticErrBuf.SDL_global_error, i64 40), align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i8 0, i64 56, i1 false)
  %i.k = load ptr, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store ptr %i.k, ptr %i.l, align 8
  %i.m = load ptr, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store ptr %i.m, ptr %i.n, align 8
  %i.o = call zeroext i1 @SDL_SetTLS_REAL(ptr noundef nonnull @SDL_GetErrBuf.tls_errbuf, ptr noundef nonnull %i.j, ptr noundef nonnull @SDL_FreeErrBuf) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %spec.select = phi ptr [ %i.j, %bb.f ], [ @SDL_GetStaticErrBuf.SDL_global_error, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %SDL_GetTLS_REAL.exit
  %.1 = phi ptr [ %.0.i, %SDL_GetTLS_REAL.exit ], [ %spec.select, %bb.g ]
  ret ptr %.1
}

declare void @SDL_GetOriginalMemoryFunctions_REAL(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal void @SDL_FreeErrBuf(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull %i.b) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not10 = icmp eq ptr %i.f, null
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull %i.f) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull %0) #6
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_RunThread(ptr noundef initializes((16, 20)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @SDL_SYS_SetupThread(ptr noundef %i.g) #6
  %i.h = tail call i32 %i.d(ptr noundef %i.b) #6
  store i32 %i.h, ptr %i.e, align 8
  %i.i = tail call ptr @SDL_SYS_GetTLSData() #6   ; 5 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %SDL_CleanupTLS_REAL.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %i.m = phi i32 [ %i.j, %.lr.ph.i ], [ %i.r, %bb.d ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %indvars.iv.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not12.i = icmp eq ptr %i.p, null
  br i1 %.not12.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.n, align 8
  tail call void %i.p(ptr noundef %i.q) #6, !inline_history !5
  %.pre.i = load i32, ptr %i.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = phi i32 [ %i.m, %bb.b ], [ %.pre.i, %bb.c ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = icmp slt i64 %indvars.iv.next.i, %i.s
  br i1 %i.t, label %bb.b, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.d, %.preheader.i
  %i.u = tail call zeroext i1 @SDL_SYS_SetTLSData(ptr noundef null) #6 ; 0 uses
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.i) #6
  %i.v = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull @SDL_tls_allocated, i32 noundef -1) #6 ; 0 uses
  br label %SDL_CleanupTLS_REAL.exit

SDL_CleanupTLS_REAL.exit:                         ; preds = %bb.a, %._crit_edge.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.x = tail call zeroext i1 @SDL_CompareAndSwapAtomicInt_REAL(ptr noundef nonnull %i.w, i32 noundef 1, i32 noundef 3) #6
  br i1 %i.x, label %bb.g, label %bb.e

bb.e:                                             ; preds = %SDL_CleanupTLS_REAL.exit
  %i.y = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull %i.w) #6
  %i.z = icmp eq i32 %i.y, 2
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.f, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.aa) #6
  tail call void @SDL_free_REAL(ptr noundef nonnull %0) #6
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %SDL_CleanupTLS_REAL.exit
  ret void
}

declare void @SDL_SYS_SetupThread(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden noundef ptr @SDL_CreateThreadWithPropertiesRuntime_REAL(i32 noundef %0, ptr nofree noundef readnone captures(address_is_null) %1, ptr nofree noundef readnone captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2) #6 ; 0 uses
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @SDL_GetPointerProperty_REAL(i32 noundef %0, ptr noundef nonnull @.str.3, ptr noundef null) #6 ; 2 uses
  %i.e = tail call ptr @SDL_GetStringProperty_REAL(i32 noundef %0, ptr noundef nonnull @.str.4, ptr noundef null) #6 ; 2 uses
  %i.f = tail call i64 @SDL_GetNumberProperty_REAL(i32 noundef %0, ptr noundef nonnull @.str.5, i64 noundef 0) #6
  %i.g = tail call ptr @SDL_GetPointerProperty_REAL(i32 noundef %0, ptr noundef nonnull @.str.6, ptr noundef null) #6
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.7) #6 ; 0 uses
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  tail call void @SDL_InitMainThread() #6
  %i.i = tail call noalias dereferenceable_or_null(144) ptr @SDL_calloc_REAL(i64 noundef 1, i64 noundef 144) #8 ; 14 uses
  %.not35 = icmp eq ptr %i.i, null
  br i1 %.not35, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 -1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.l = tail call i32 @SDL_SetAtomicInt_REAL(ptr noundef nonnull %i.k, i32 noundef 1) #6 ; 0 uses
  %.not36 = icmp eq ptr %i.e, null
  br i1 %.not36, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call noalias ptr @SDL_strdup_REAL(ptr noundef nonnull %i.e) #6 ; 2 uses
end_hunk_0
