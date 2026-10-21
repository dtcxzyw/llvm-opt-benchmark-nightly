Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_asyncio?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SDL_AsyncIOOutcome = type { ptr, i32, i32, ptr, i64, i64, i64, ptr }

@.str = private unnamed_addr constant [26 x i8] c"Parameter '%s' is invalid\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Unsupported file mode\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"asyncio\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"queue\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Already closing\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@AsyncFileModeValid.mode_map = internal unnamed_addr constant [4 x { ptr, ptr, i8, [7 x i8] }] [{ ptr, ptr, i8, [7 x i8] } { ptr @.str.7, ptr @.str.8, i8 1, [7 x i8] zeroinitializer }, { ptr, ptr, i8, [7 x i8] } { ptr @.str.9, ptr @.str.10, i8 0, [7 x i8] zeroinitializer }, { ptr, ptr, i8, [7 x i8] } { ptr @.str.11, ptr @.str.12, i8 0, [7 x i8] zeroinitializer }, { ptr, ptr, i8, [7 x i8] } { ptr @.str.13, ptr @.str.14, i8 0, [7 x i8] zeroinitializer }], align 16
@.str.8 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"r+b\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"w+b\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"ptr\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"SDL_AsyncIO is closing, can't start new tasks\00", align 1

; Function Attrs: nounwind uwtable
define hidden noundef ptr @SDL_AsyncIOFromFile_REAL(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #5 ; 0 uses
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %.not20 = icmp eq ptr %1, null
  br i1 %.not20, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #5 ; 0 uses
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.c = tail call i32 @SDL_strcmp_REAL(ptr noundef nonnull %1, ptr noundef nonnull @.str.7) #5
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %AsyncFileModeValid.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = tail call i32 @SDL_strcmp_REAL(ptr noundef nonnull %1, ptr noundef nonnull @.str.9) #5
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %AsyncFileModeValid.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = tail call i32 @SDL_strcmp_REAL(ptr noundef nonnull %1, ptr noundef nonnull @.str.11) #5
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %AsyncFileModeValid.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = tail call i32 @SDL_strcmp_REAL(ptr noundef nonnull %1, ptr noundef nonnull @.str.13) #5
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %AsyncFileModeValid.exit, label %AsyncFileModeValid.exit.thread

AsyncFileModeValid.exit:                          ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %.lcssa.i = phi ptr [ @AsyncFileModeValid.mode_map, %bb.e ], [ getelementptr inbounds nuw (i8, ptr @AsyncFileModeValid.mode_map, i64 24), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @AsyncFileModeValid.mode_map, i64 48), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @AsyncFileModeValid.mode_map, i64 72), %bb.h ] ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 16
  %3 = load i8, ptr %2, align 8, !range !3, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not21 = icmp eq ptr %i.l, null
  br i1 %.not21, label %AsyncFileModeValid.exit.thread, label %bb.i

AsyncFileModeValid.exit.thread:                   ; preds = %bb.h, %AsyncFileModeValid.exit
  %i.m = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.3) #5 ; 0 uses
  br label %bb.n

bb.i:                                             ; preds = %AsyncFileModeValid.exit
  %i.n = tail call noalias dereferenceable_or_null(208) ptr @SDL_calloc_REAL(i64 noundef 1, i64 noundef 208) #6 ; 7 uses
  %.not22 = icmp eq ptr %i.n, null
  br i1 %.not22, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 201
  store i8 %3, ptr %i.o, align 1
  %i.p = tail call ptr @SDL_CreateMutex_REAL() #5 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8
  %.not23 = icmp eq ptr %i.p, null
  br i1 %.not23, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.n) #5
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.r = tail call zeroext i1 @SDL_SYS_AsyncIOFromFile(ptr noundef nonnull %0, ptr noundef nonnull %i.l, ptr noundef nonnull %i.n) #5
  br i1 %i.r, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = load ptr, ptr %i.q, align 8
  tail call void @SDL_DestroyMutex_REAL(ptr noundef %i.s) #5
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.n) #5
  br label %bb.n

bb.n:                                             ; preds = %AsyncFileModeValid.exit.thread, %bb.l, %bb.i, %bb.m, %bb.k, %bb.d, %bb.b
  %.2 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %AsyncFileModeValid.exit.thread ], [ null, %bb.i ], [ null, %bb.m ], [ null, %bb.k ], [ %i.n, %bb.l ]
  ret ptr %.2
}

declare zeroext i1 @SDL_SetError_REAL(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: allocsize(0,1)
declare noalias ptr @SDL_calloc_REAL(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @SDL_CreateMutex_REAL() local_unnamed_addr #1

declare void @SDL_free_REAL(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @SDL_SYS_AsyncIOFromFile(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @SDL_DestroyMutex_REAL(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define hidden i64 @SDL_GetAsyncIOSize_REAL(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #5 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i64 %i.b(ptr noundef %i.d) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.e, %bb.c ], [ -1, %bb.b ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_ReadAsyncIO_REAL(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc zeroext i1 @RequestAsyncIO(i1 noundef zeroext true, ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5)
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @RequestAsyncIO(i1 noundef zeroext %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #5
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %.not60 = icmp eq ptr %2, null
  br i1 %.not60, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.15) #5
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  %.not61 = icmp eq ptr %5, null
  br i1 %.not61, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.c = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #5
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.d = tail call noalias dereferenceable_or_null(136) ptr @SDL_calloc_REAL(i64 noundef 1, i64 noundef 136) #6 ; 16 uses
  %.not62 = icmp eq ptr %i.d, null
  br i1 %.not62, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %1, ptr %i.d, align 8
  %not. = xor i1 %0, true
  %i.e = zext i1 %not. to i32
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %3, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i64 %4, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store ptr %6, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %5, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.m) #5
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.o = load ptr, ptr %i.n, align 8
  %.not63 = icmp eq ptr %i.o, null
  br i1 %.not63, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.d) #5
  %i.p = load ptr, ptr %i.l, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.p) #5
  %i.q = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.16) #5
  br label %bb.q

bb.j:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 3 uses
  store ptr %i.r, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 3 uses
  store ptr %i.u, ptr %i.v, align 8
  %.not64 = icmp eq ptr %i.u, null
  br i1 %.not64, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  store ptr %i.d, ptr %i.w, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.d, ptr %i.t, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.y = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.x, i32 noundef 1) #5 ; 0 uses
  %i.z = load ptr, ptr %i.l, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.z) #5
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  br i1 %0, label %.split, label %bb.m

.split:                                           ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call zeroext i1 %i.ad(ptr noundef %i.ab, ptr noundef nonnull %i.d) #5
  br i1 %i.ae, label %bb.q, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call zeroext i1 %i.ag(ptr noundef %i.ab, ptr noundef nonnull %i.d) #5
  br i1 %i.ah, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.split, %bb.m
  %i.ai = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.x, i32 noundef -1) #5 ; 0 uses
  %i.aj = load ptr, ptr %i.l, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.aj) #5
  %i.ak = load ptr, ptr %i.v, align 8             ; 2 uses
  %.not65 = icmp eq ptr %i.ak, null
  %.pre67 = load ptr, ptr %i.s, align 8           ; 2 uses
  br i1 %.not65, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  store ptr %.pre67, ptr %i.al, align 8
  %.pre = load ptr, ptr %i.v, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.am = phi ptr [ %.pre, %bb.o ], [ null, %bb.n ]
  %i.an = getelementptr inbounds nuw i8, ptr %.pre67, i64 96
  store ptr %i.am, ptr %i.an, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %i.ao = load ptr, ptr %i.l, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.ao) #5
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.d) #5
  br label %bb.q

bb.q:                                             ; preds = %.split, %bb.i, %bb.g, %bb.p, %bb.m, %bb.f, %bb.d, %bb.b
  %.1 = phi i1 [ %i.a, %bb.b ], [ %i.c, %bb.f ], [ %i.b, %bb.d ], [ %i.q, %bb.i ], [ false, %bb.g ], [ false, %bb.p ], [ true, %bb.m ], [ true, %.split ]
end_hunk_0
