begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Can't open directory: %s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Can't remove path: %s\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Can't rename path: %s\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Can't create directory: %s\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"Can't stat: %s\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"getcwd failed: %s\00", align 1

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_SYS_EnumerateDirectory(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8
  %i.b = load i8, ptr %0, align 1
  %.not = icmp eq i8 %i.b, 0
  %i.c = select i1 %.not, ptr @.str.2, ptr @.str.1
  %i.d = call i32 (ptr, ptr, ...) @SDL_asprintf_REAL(ptr noundef nonnull %i.a, ptr noundef nonnull @.str, ptr noundef nonnull %0, ptr noundef nonnull %i.c) #7 ; 3 uses
  call void @SDL_free_REAL(ptr noundef null) #7
  %i.e = icmp ne i32 %i.d, -1
  %i.f = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.g = icmp ne ptr %i.f, null
  %or.cond = select i1 %i.e, i1 %i.g, i1 false
  br i1 %or.cond, label %.preheader38, label %bb.h

.preheader38:                                     ; preds = %bb.a
  %i.h = icmp sgt i32 %i.d, 1
  br i1 %i.h, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader38, %bb.b
  %.030.in40 = phi i32 [ %.03041, %bb.b ], [ %i.d, %.preheader38 ] ; 3 uses
  %i.i = load ptr, ptr %i.a, align 8              ; 3 uses
  %3 = zext nneg i32 %.030.in40 to i64
  %i.j = getelementptr i8, ptr %i.i, i64 %3
  %i.k = getelementptr i8, ptr %i.j, i64 -2
  %i.l = load i8, ptr %i.k, align 1
  %i.m = icmp eq i8 %i.l, 47
  br i1 %i.m, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %.03041 = add nsw i32 %.030.in40, -1            ; 2 uses
  %4 = zext nneg i32 %.03041 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 %4
  store i8 0, ptr %i.n, align 1
  %i.o = icmp sgt i32 %.030.in40, 2
  br i1 %i.o, label %.lr.ph, label %..critedge.loopexit_crit_edge, !llvm.loop !3

..critedge.loopexit_crit_edge:                    ; preds = %bb.b
  %.pre.pre = load ptr, ptr %i.a, align 8
  br label %.critedge, !llvm.loop !3

.critedge:                                        ; preds = %.lr.ph, %..critedge.loopexit_crit_edge, %.preheader38
  %i.p = phi ptr [ %i.f, %.preheader38 ], [ %.pre.pre, %..critedge.loopexit_crit_edge ], [ %i.i, %.lr.ph ]
  %i.q = call noalias ptr @opendir(ptr noundef %i.p) ; 3 uses
  %.not36 = icmp eq ptr %i.q, null
  br i1 %.not36, label %bb.c, label %.preheader

bb.c:                                             ; preds = %.critedge
  %i.r = load ptr, ptr %i.a, align 8
  call void @SDL_free_REAL(ptr noundef %i.r) #7
  %i.s = tail call ptr @__errno_location() #8
  %i.t = load i32, ptr %i.s, align 4
  %i.u = call ptr @strerror(i32 noundef %i.t) #7
  %i.v = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.3, ptr noundef %i.u) #7
  br label %bb.h

.preheader:                                       ; preds = %.critedge, %bb.g
  %i.w = call ptr @readdir(ptr noundef nonnull %i.q) #7 ; 2 uses
  %.not37 = icmp eq ptr %i.w, null
  br i1 %.not37, label %.critedge3, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 19 ; 3 uses
  %i.y = call i32 @SDL_strcmp_REAL(ptr noundef nonnull %i.x, ptr noundef nonnull @.str.4) #7
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.g, label %bb.e, !llvm.loop !5

bb.e:                                             ; preds = %bb.d
  %i.aa = call i32 @SDL_strcmp_REAL(ptr noundef nonnull %i.x, ptr noundef nonnull @.str.5) #7
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %bb.f, !llvm.loop !5

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.a, align 8
  %i.ad = call i32 %1(ptr noundef %2, ptr noundef %i.ac, ptr noundef nonnull %i.x) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %.1 = phi i32 [ %i.ad, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.ae = icmp eq i32 %.1, 0
  br i1 %i.ae, label %.preheader, label %.critedge3

.critedge3:                                       ; preds = %bb.g, %.preheader
  %.0.lcssa = phi i32 [ %.1, %bb.g ], [ 0, %.preheader ]
  %i.af = call i32 @closedir(ptr noundef nonnull %i.q) ; 0 uses
  %i.ag = load ptr, ptr %i.a, align 8
  call void @SDL_free_REAL(ptr noundef %i.ag) #7
  %i.ah = icmp ne i32 %.0.lcssa, 2
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %.critedge3, %bb.a
  %.132 = phi i1 [ false, %bb.a ], [ %i.ah, %.critedge3 ], [ %i.v, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i1 %.132
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @SDL_asprintf_REAL(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i64 @SDL_strlen_REAL(ptr noundef) local_unnamed_addr #2

declare void @SDL_free_REAL(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr noundef readonly captures(none)) local_unnamed_addr #3

declare zeroext i1 @SDL_SetError_REAL(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

declare ptr @readdir(ptr noundef) local_unnamed_addr #2

declare i32 @SDL_strcmp_REAL(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_SYS_RemovePath(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @remove(ptr noundef %0) #7
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #8
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp eq i32 %i.d, 2
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @strerror(i32 noundef %i.d) #7
  %i.g = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.6, ptr noundef %i.f) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ true, %bb.b ], [ %i.g, %bb.c ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @remove(ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_SYS_RenamePath(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @rename(ptr noundef %0, ptr noundef %1) #7
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #8
  %i.d = load i32, ptr %i.c, align 4
  %i.e = tail call ptr @strerror(i32 noundef %i.d) #7
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.7, ptr noundef %i.e) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.f, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @rename(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_SYS_CopyFile(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @SDL_IOFromFile_REAL(ptr noundef %0, ptr noundef nonnull @.str.8) #7 ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.thread.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @SDL_IOFromFile_REAL(ptr noundef %1, ptr noundef nonnull @.str.9) #7 ; 5 uses
  %.not28 = icmp eq ptr %i.b, null
  br i1 %.not28, label %.thread55, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias ptr @SDL_malloc_REAL(i64 noundef 4096) #7 ; 5 uses
  %.not29 = icmp eq ptr %i.c, null
  br i1 %.not29, label %.thread55.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.d
  %i.d = tail call i64 @SDL_ReadIO_REAL(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, i64 noundef 4096) #7 ; 3 uses
  %.not30 = icmp eq i64 %i.d, 0
  br i1 %.not30, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.e = tail call i64 @SDL_WriteIO_REAL(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef %i.d) #7
  %i.f = icmp ult i64 %i.e, %i.d
  br i1 %i.f, label %.thread55.sink.split, label %.preheader, !llvm.loop !6

bb.e:                                             ; preds = %.preheader
  %i.g = tail call i32 @SDL_GetIOStatus_REAL(ptr noundef nonnull %i.a) #7
  %.not31 = icmp eq i32 %i.g, 2
  br i1 %.not31, label %bb.f, label %.thread55.sink.split

bb.f:                                             ; preds = %bb.e
  %i.h = tail call zeroext i1 @SDL_CloseIO_REAL(ptr noundef nonnull %i.a) #7 ; 0 uses
  %i.i = tail call zeroext i1 @SDL_FlushIO_REAL(ptr noundef nonnull %i.b) #7
  %i.j = tail call zeroext i1 @SDL_CloseIO_REAL(ptr noundef nonnull %i.b) #7
  %. = select i1 %i.i, i1 %i.j, i1 false
  br label %.thread.thread

.thread55.sink.split:                             ; preds = %bb.d, %bb.c, %bb.e
  %i.k = tail call zeroext i1 @SDL_CloseIO_REAL(ptr noundef nonnull %i.b) #7 ; 0 uses
  br label %.thread55

.thread55:                                        ; preds = %.thread55.sink.split, %bb.b
  %.0223963 = phi ptr [ null, %bb.b ], [ %i.c, %.thread55.sink.split ]
  %i.l = tail call zeroext i1 @SDL_CloseIO_REAL(ptr noundef nonnull %i.a) #7 ; 0 uses
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.f, %bb.a, %.thread55
  %.0223964 = phi ptr [ %.0223963, %.thread55 ], [ null, %bb.a ], [ %i.c, %bb.f ]
  %.04161 = phi i1 [ false, %.thread55 ], [ false, %bb.a ], [ %., %bb.f ]
  tail call void @SDL_free_REAL(ptr noundef %.0223964) #7
  ret i1 %.04161
}

declare ptr @SDL_IOFromFile_REAL(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noalias ptr @SDL_malloc_REAL(i64 noundef) local_unnamed_addr #2

declare i64 @SDL_ReadIO_REAL(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

end_hunk_0
