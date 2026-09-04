Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_storage?download=true
inline.NumInlined: 3
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TitleStorageBootStrap = type { ptr, ptr, ptr }
%struct.UserStorageBootStrap = type { ptr, ptr, ptr }
%struct.SDL_PathInfo = type { i32, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [25 x i8] c"SDL_STORAGE_TITLE_DRIVER\00", align 1
@titlebootstrap = internal unnamed_addr constant [2 x ptr] [ptr @GENERIC_titlebootstrap, ptr null], align 16
@.str.1 = private unnamed_addr constant [14 x i8] c"title_storage\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"%s not available\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"No available title storage driver\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"SDL_STORAGE_USER_DRIVER\00", align 1
@userbootstrap = internal unnamed_addr constant [3 x ptr] [ptr @STEAM_userbootstrap, ptr @GENERIC_userbootstrap, ptr null], align 16
@.str.5 = private unnamed_addr constant [13 x i8] c"user_storage\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"No available user storage driver\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Parameter '%s' is invalid\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"iface\00", align 1
@.str.9 = private unnamed_addr constant [67 x i8] c"Invalid interface, should be initialized with SDL_INIT_INTERFACE()\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Invalid storage container\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"destination\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"That operation is not supported\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"oldpath\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"newpath\00", align 1
@GENERIC_titlebootstrap = external global %struct.TitleStorageBootStrap, align 8
@STEAM_userbootstrap = external global %struct.UserStorageBootStrap, align 8
@GENERIC_userbootstrap = external global %struct.UserStorageBootStrap, align 8
@.str.18 = private unnamed_addr constant [68 x i8] c"Windows-style path separators ('\\') not permitted, use '/' instead.\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"../\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"Relative paths not permitted\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"..\00", align 1

; Function Attrs: nounwind uwtable
define hidden ptr @SDL_OpenTitleStorage_REAL(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @SDL_GetHint_REAL(ptr noundef nonnull @.str) #5 ; 5 uses
  %.not = icmp eq ptr %i.a, null                  ; 2 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %i.a, align 1
  %.not46 = icmp eq i8 %i.b, 0
  br i1 %.not46, label %bb.h, label %select.unfold.preheader.preheader

select.unfold.preheader.preheader:                ; preds = %bb.b
  %i.c = load i8, ptr %i.a, align 1
  %.not5086.not = icmp eq i8 %i.c, 0
  br i1 %.not5086.not, label %.critedge, label %.lr.ph

select.unfold.preheader:                          ; preds = %select.unfold
  %i.d = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1
  %.not50 = icmp ne i8 %i.e, 0
  %.not51 = icmp eq ptr %.135, null
  %or.cond = select i1 %.not50, i1 %.not51, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %select.unfold.preheader.preheader, %select.unfold.preheader
  %.07387 = phi ptr [ %i.d, %select.unfold.preheader ], [ %i.a, %select.unfold.preheader.preheader ] ; 4 uses
  %i.f = tail call ptr @SDL_strchr_REAL(ptr noundef nonnull %.07387, i32 noundef 44) #5 ; 3 uses
  %.not53 = icmp eq ptr %i.f, null                ; 2 uses
  br i1 %.not53, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %.07387 to i64
  %i.i = sub i64 %i.g, %i.h
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.j = tail call i64 @SDL_strlen_REAL(ptr noundef nonnull %.07387) #5
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = phi i64 [ %i.i, %bb.c ], [ %i.j, %bb.d ] ; 2 uses
  %i.l = load ptr, ptr @GENERIC_titlebootstrap, align 8
  %i.m = tail call i64 @SDL_strlen_REAL(ptr noundef %i.l) #5
  %i.n = icmp eq i64 %i.k, %i.m
  br i1 %i.n, label %bb.f, label %select.unfold

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr @GENERIC_titlebootstrap, align 8
  %i.p = tail call i32 @SDL_strncasecmp_REAL(ptr noundef %i.o, ptr noundef nonnull %.07387, i64 noundef %i.k) #5
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %select.unfold

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GENERIC_titlebootstrap, i64 16), align 8
  %i.s = tail call ptr %i.r(ptr noundef %0, i32 noundef %1) #5
  br label %select.unfold

select.unfold:                                    ; preds = %bb.f, %bb.e, %bb.g
  %.168 = phi i64 [ 0, %bb.g ], [ 1, %bb.e ], [ 1, %bb.f ] ; 2 uses
  %.135 = phi ptr [ %i.s, %bb.g ], [ null, %bb.e ], [ null, %bb.f ] ; 3 uses
  br i1 %.not53, label %.critedge, label %select.unfold.preheader

bb.h:                                             ; preds = %bb.b, %bb.a
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GENERIC_titlebootstrap, i64 16), align 8
  %i.u = tail call ptr %i.t(ptr noundef %0, i32 noundef %1) #5 ; 2 uses
  %.not48 = icmp eq ptr %i.u, null
  br i1 %.not48, label %.critedge.thread, label %.critedge.thread60

.critedge:                                        ; preds = %select.unfold.preheader, %select.unfold, %select.unfold.preheader.preheader
  %.034.lcssa = phi ptr [ null, %select.unfold.preheader.preheader ], [ %.135, %select.unfold ], [ %.135, %select.unfold.preheader ] ; 2 uses
  %.033.lcssa = phi i64 [ 0, %select.unfold.preheader.preheader ], [ %.168, %select.unfold ], [ %.168, %select.unfold.preheader ]
  %.not52 = icmp eq ptr %.034.lcssa, null
  br i1 %.not52, label %.critedge.thread, label %.critedge.thread60

.critedge.thread60:                               ; preds = %bb.h, %.critedge
  %.365 = phi i64 [ %.033.lcssa, %.critedge ], [ 0, %bb.h ]
  %.33764 = phi ptr [ %.034.lcssa, %.critedge ], [ %i.u, %bb.h ]
  %i.v = getelementptr inbounds [8 x i8], ptr @titlebootstrap, i64 %.365
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.w, align 8
  tail call void @SDL_DebugLogBackend(ptr noundef nonnull @.str.1, ptr noundef %i.x) #5
  br label %bb.k

.critedge.thread:                                 ; preds = %bb.h, %.critedge
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.critedge.thread
  %i.y = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a) #5 ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %.critedge.thread
  %i.z = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.3) #5 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %.critedge.thread60
  %.33758 = phi ptr [ null, %bb.i ], [ null, %bb.j ], [ %.33764, %.critedge.thread60 ]
  ret ptr %.33758
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @SDL_GetHint_REAL(ptr noundef) local_unnamed_addr #2

declare ptr @SDL_strchr_REAL(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @SDL_strlen_REAL(ptr noundef) local_unnamed_addr #2

declare i32 @SDL_strncasecmp_REAL(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @SDL_DebugLogBackend(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_SetError_REAL(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden ptr @SDL_OpenUserStorage_REAL(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @SDL_GetHint_REAL(ptr noundef nonnull @.str.4) #5 ; 5 uses
  %.not = icmp eq ptr %i.a, null                  ; 2 uses
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %i.a, align 1
  %.not48 = icmp eq i8 %i.b, 0
  br i1 %.not48, label %bb.j, label %select.unfold.preheader.preheader

select.unfold.preheader.preheader:                ; preds = %bb.b
  %i.c = load i8, ptr %i.a, align 1
  %.not5290.not = icmp eq i8 %i.c, 0
  br i1 %.not5290.not, label %.critedge, label %.lr.ph

select.unfold.preheader:                          ; preds = %select.unfold
  %i.d = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1
  %.not52 = icmp ne i8 %i.e, 0
  %.not53 = icmp eq ptr %.137, null
  %or.cond = select i1 %.not52, i1 %.not53, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %select.unfold.preheader.preheader, %select.unfold.preheader
  %.07591 = phi ptr [ %i.d, %select.unfold.preheader ], [ %i.a, %select.unfold.preheader.preheader ] ; 5 uses
  %i.f = tail call ptr @SDL_strchr_REAL(ptr noundef nonnull %.07591, i32 noundef 44) #5 ; 3 uses
  %.not55 = icmp eq ptr %i.f, null                ; 2 uses
  br i1 %.not55, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %.07591 to i64
  %i.i = sub i64 %i.g, %i.h
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.j = tail call i64 @SDL_strlen_REAL(ptr noundef nonnull %.07591) #5
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = phi i64 [ %i.i, %bb.c ], [ %i.j, %bb.d ] ; 4 uses
  %i.l = load ptr, ptr @STEAM_userbootstrap, align 8
  %i.m = tail call i64 @SDL_strlen_REAL(ptr noundef %i.l) #5
  %i.n = icmp eq i64 %i.k, %i.m
  br i1 %i.n, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr @STEAM_userbootstrap, align 8
  %i.p = tail call i32 @SDL_strncasecmp_REAL(ptr noundef %i.o, ptr noundef nonnull %.07591, i64 noundef %i.k) #5
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.i, %bb.f
  %.172.lcssa.wide = phi i64 [ 0, %bb.f ], [ 1, %bb.i ]
  %.lcssa79 = phi ptr [ @STEAM_userbootstrap, %bb.f ], [ @GENERIC_userbootstrap, %bb.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.lcssa79, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call ptr %i.s(ptr noundef %0, ptr noundef %1, i32 noundef %2) #5
  br label %select.unfold

bb.h:                                             ; preds = %bb.e, %bb.f
  %i.u = load ptr, ptr @GENERIC_userbootstrap, align 8
  %i.v = tail call i64 @SDL_strlen_REAL(ptr noundef %i.u) #5
  %i.w = icmp eq i64 %i.k, %i.v
  br i1 %i.w, label %bb.i, label %select.unfold

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr @GENERIC_userbootstrap, align 8
  %i.y = tail call i32 @SDL_strncasecmp_REAL(ptr noundef %i.x, ptr noundef nonnull %.07591, i64 noundef %i.k) #5
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.g, label %select.unfold

select.unfold:                                    ; preds = %bb.h, %bb.i, %bb.g
  %.170 = phi i64 [ %.172.lcssa.wide, %bb.g ], [ 2, %bb.i ], [ 2, %bb.h ] ; 2 uses
  %.137 = phi ptr [ %i.t, %bb.g ], [ null, %bb.i ], [ null, %bb.h ] ; 3 uses
  br i1 %.not55, label %.critedge, label %select.unfold.preheader

bb.j:                                             ; preds = %bb.b, %bb.a
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @STEAM_userbootstrap, i64 16), align 8
  %i.ab = tail call ptr %i.aa(ptr noundef %0, ptr noundef %1, i32 noundef %2) #5 ; 2 uses
  %.not50 = icmp eq ptr %i.ab, null
  br i1 %.not50, label %bb.k, label %.critedge.thread62

bb.k:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GENERIC_userbootstrap, i64 16), align 8
  %i.ad = tail call ptr %i.ac(ptr noundef %0, ptr noundef %1, i32 noundef %2) #5 ; 2 uses
  %.not50.1 = icmp eq ptr %i.ad, null
  br i1 %.not50.1, label %.critedge.thread, label %.critedge.thread62

.critedge:                                        ; preds = %select.unfold.preheader, %select.unfold, %select.unfold.preheader.preheader
  %.036.lcssa = phi ptr [ null, %select.unfold.preheader.preheader ], [ %.137, %select.unfold ], [ %.137, %select.unfold.preheader ] ; 2 uses
  %.035.lcssa = phi i64 [ 0, %select.unfold.preheader.preheader ], [ %.170, %select.unfold ], [ %.170, %select.unfold.preheader ]
  %.not54 = icmp eq ptr %.036.lcssa, null
  br i1 %.not54, label %.critedge.thread, label %.critedge.thread62

.critedge.thread62:                               ; preds = %bb.j, %bb.k, %.critedge
  %.367 = phi i64 [ %.035.lcssa, %.critedge ], [ 0, %bb.j ], [ 1, %bb.k ]
  %.33966 = phi ptr [ %.036.lcssa, %.critedge ], [ %i.ab, %bb.j ], [ %i.ad, %bb.k ]
  %i.ae = getelementptr inbounds [8 x i8], ptr @userbootstrap, i64 %.367
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void @SDL_DebugLogBackend(ptr noundef nonnull @.str.5, ptr noundef %i.ag) #5
  br label %bb.n

.critedge.thread:                                 ; preds = %bb.k, %.critedge
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.critedge.thread
  %i.ah = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a) #5 ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %.critedge.thread
  %i.ai = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.6) #5 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %.critedge.thread62
  %.33960 = phi ptr [ null, %bb.l ], [ null, %bb.m ], [ %.33966, %.critedge.thread62 ]
  ret ptr %.33960
}

; Function Attrs: nounwind uwtable
define hidden ptr @SDL_OpenFileStorage_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @GENERIC_OpenFileStorage(ptr noundef %0) #5
  ret ptr %i.a
}

declare ptr @GENERIC_OpenFileStorage(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden noundef ptr @SDL_OpenStorage_REAL(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #5 ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8
  %i.c = icmp ult i32 %i.b, 96
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.9) #5 ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.e = tail call noalias dereferenceable_or_null(104) ptr @SDL_calloc_REAL(i64 noundef 1, i64 noundef 104) #6 ; 4 uses
  %.not11 = icmp eq ptr %i.e, null
  br i1 %.not11, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.e, ptr noundef nonnull align 8 dereferenceable(96) %0, i64 96, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store ptr %1, ptr %i.f, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.b ], [ %i.e, %bb.f ], [ null, %bb.e ]
  ret ptr %.0
}

; Function Attrs: allocsize(0,1)
declare noalias ptr @SDL_calloc_REAL(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_CloseStorage_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.10) #5
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not9 = icmp eq ptr %i.c, null
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call zeroext i1 %i.c(ptr noundef %i.e) #5
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ %i.f, %bb.d ], [ true, %bb.c ]
  tail call void @SDL_free_REAL(ptr noundef nonnull %0) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.06 = phi i1 [ %.0, %bb.e ], [ %i.a, %bb.b ]
  ret i1 %.06
}

declare void @SDL_free_REAL(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_StorageReady_REAL(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.10) #5 ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not7 = icmp eq ptr %i.c, null
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call zeroext i1 %i.c(ptr noundef %i.e) #5
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ %i.f, %bb.d ], [ false, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @SDL_GetStorageFileSize_REAL(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.SDL_PathInfo, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  %.not14.i = icmp eq ptr %0, null
  br i1 %.not14.i, label %.split14, label %bb.b

.split14:                                         ; preds = %bb.a
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.10) #5
  br i1 %i.a, label %bb.e, label %SDL_GetStoragePathInfo_REAL.exit.thread

bb.b:                                             ; preds = %bb.a
  %.not15.i = icmp eq ptr %1, null
  br i1 %.not15.i, label %.split13, label %bb.c

.split13:                                         ; preds = %bb.b
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.11) #5
  br i1 %i.b, label %bb.e, label %SDL_GetStoragePathInfo_REAL.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.c = tail call fastcc zeroext i1 @ValidateStoragePath(ptr noundef nonnull %1)
  br i1 %i.c, label %bb.d, label %SDL_GetStoragePathInfo_REAL.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not16.i = icmp eq ptr %i.e, null
  br i1 %.not16.i, label %SDL_GetStoragePathInfo_REAL.exit, label %.split

.split:                                           ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call zeroext i1 %i.e(ptr noundef %i.g, ptr noundef nonnull %1, ptr noundef nonnull %3) #5, !inline_history !3
  br i1 %i.h, label %bb.e, label %SDL_GetStoragePathInfo_REAL.exit.thread

SDL_GetStoragePathInfo_REAL.exit:                 ; preds = %bb.d
  %i.i = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.13) #5
  br i1 %i.i, label %bb.e, label %SDL_GetStoragePathInfo_REAL.exit.thread

bb.e:                                             ; preds = %.split14, %.split13, %.split, %SDL_GetStoragePathInfo_REAL.exit
  %.not8 = icmp eq ptr %2, null
  br i1 %.not8, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load i64, ptr %i.j, align 8
  br label %.sink.split

SDL_GetStoragePathInfo_REAL.exit.thread:          ; preds = %bb.c, %.split14, %.split13, %.split, %SDL_GetStoragePathInfo_REAL.exit
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.g, label %.sink.split

.sink.split:                                      ; preds = %SDL_GetStoragePathInfo_REAL.exit.thread, %bb.f
  %.sink = phi i64 [ %i.k, %bb.f ], [ 0, %SDL_GetStoragePathInfo_REAL.exit.thread ]
  %.0.i10.ph = phi i1 [ true, %bb.f ], [ false, %SDL_GetStoragePathInfo_REAL.exit.thread ]
  store i64 %.sink, ptr %2, align 8
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %SDL_GetStoragePathInfo_REAL.exit.thread, %bb.e
  %.0.i10 = phi i1 [ false, %SDL_GetStoragePathInfo_REAL.exit.thread ], [ true, %bb.e ], [ %.0.i10.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  ret i1 %.0.i10
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_GetStoragePathInfo_REAL(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
end_hunk_0
