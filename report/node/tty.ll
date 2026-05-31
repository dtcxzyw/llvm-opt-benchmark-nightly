inline.NumInlined: 7
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.winsize = type { i16, i16, i16, i16 }

@termios_spinlock = internal global i32 0, align 4
@orig_termios_fd = internal unnamed_addr global i32 -1, align 4
@orig_termios = internal global %struct.termios zeroinitializer, align 4
@.str = private unnamed_addr constant [24 x i8] c"0 && \22unreachable code\22\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"../../deps/uv/src/unix/tty.c\00", align 1
@__PRETTY_FUNCTION__.uv_tty_set_mode = private unnamed_addr constant [47 x i8] c"int uv_tty_set_mode(uv_tty_t *, uv_tty_mode_t)\00", align 1

; Function Attrs: nounwind uwtable
define hidden range(i32 -2147483647, -2147483648) i32 @uv__tcsetattr(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.a = tail call i32 @tcsetattr(i32 noundef %0, i32 noundef %1, ptr noundef %2) #8
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.c, label %.critedge5

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @__errno_location() #9
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp eq i32 %i.d, 4
  br i1 %i.e, label %bb.b, label %.critedge, !llvm.loop !8

.critedge:                                        ; preds = %bb.c
  %i.f = sub nsw i32 0, %i.d
  br label %.critedge5

.critedge5:                                       ; preds = %bb.b, %.critedge
  %.0 = phi i32 [ %i.f, %.critedge ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @tcsetattr(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @uv_tty_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca [256 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.c = tail call i32 @uv_guess_handle(i32 noundef %2) ; 2 uses
  %.off = add nsw i32 %i.c, -1
  %switch = icmp ult i32 %.off, 16
  br i1 %switch, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.a, %bb.b
  %i.d = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %2, i32 noundef 3) #8 ; 2 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.b, label %.critedge47

bb.b:                                             ; preds = %.preheader
  %i.f = tail call ptr @__errno_location() #9
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = icmp eq i32 %i.g, 4
  br i1 %i.h, label %.preheader, label %.critedge, !llvm.loop !10

.critedge:                                        ; preds = %bb.b
  %i.i = sub nsw i32 0, %i.g
  br label %bb.j

.critedge47:                                      ; preds = %.preheader
  %i.j = and i32 %i.d, 3                          ; 4 uses
  %i.k = icmp eq i32 %i.c, 14
  br i1 %i.k, label %bb.c, label %.thread52

bb.c:                                             ; preds = %.critedge47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.l = call i32 (i32, i64, ...) @ioctl(i32 noundef %2, i64 noundef 2147767344, ptr noundef nonnull %i.a) #8
  %.not60 = icmp eq i32 %i.l, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br i1 %.not60, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call i32 @ttyname_r(i32 noundef %2, ptr noundef nonnull %i.b, i64 noundef 256) #8
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.o = or disjoint i32 %i.j, 256
  %i.p = call i32 @uv__open_cloexec(ptr noundef nonnull %i.b, i32 noundef %i.o) #8 ; 4 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = call i32 @uv__dup2_cloexec(i32 noundef %i.p, i32 noundef %2) #8 ; 3 uses
  %i.s = icmp slt i32 %i.r, 0
  %i.t = icmp ne i32 %i.r, -22
  %or.cond3 = and i1 %i.s, %i.t
  br i1 %or.cond3, label %bb.g, label %.thread52

bb.g:                                             ; preds = %bb.f
  %i.u = call i32 @uv__close(i32 noundef %i.p) #8 ; 0 uses
  br label %bb.j

.thread52:                                        ; preds = %.critedge47, %bb.f
  %.037.ph = phi i32 [ %i.p, %bb.f ], [ %2, %.critedge47 ]
  call void @uv__stream_init(ptr noundef %0, ptr noundef %1, i32 noundef 14) #8
  br label %bb.h

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e
  %.not43 = icmp eq i32 %i.j, 0
  call void @uv__stream_init(ptr noundef %0, ptr noundef %1, i32 noundef 14) #8
  br i1 %.not43, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread52, %.thread
  %.03759 = phi i32 [ %.037.ph, %.thread52 ], [ %2, %.thread ] ; 2 uses
  %i.v = call i32 @uv__nonblock_ioctl(i32 noundef %.03759, i32 noundef 1) #8 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread
  %.03758 = phi i32 [ %.03759, %bb.h ], [ %2, %.thread ]
  %.03956 = phi i32 [ 0, %bb.h ], [ 1048576, %.thread ] ; 2 uses
  %.not45 = icmp eq i32 %i.j, 1
  %i.w = or disjoint i32 %.03956, 16384           ; 2 uses
  %spec.select49 = select i1 %.not45, i32 %.03956, i32 %i.w
  %.not46 = icmp eq i32 %i.j, 0
  %i.x = or disjoint i32 %spec.select49, 32768
  %.2 = select i1 %.not46, i32 %i.w, i32 %i.x
  %i.y = call i32 @uv__stream_open(ptr noundef %1, i32 noundef %.03758, i32 noundef %.2) #8 ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 308
  store i32 0, ptr %i.z, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i, %bb.g, %.critedge
  %.0 = phi i32 [ %i.r, %bb.g ], [ %i.i, %.critedge ], [ 0, %bb.i ], [ -22, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 18) i32 @uv_guess_handle(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.sockaddr_storage, align 8   ; 5 uses
  %2 = alloca %struct.stat, align 8               ; 4 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.c = icmp slt i32 %0, 0
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @isatty(i32 noundef %0) #8
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.e = call noundef i32 @fstat64(i32 noundef range(i32 0, -2147483648) %0, ptr noundef nonnull %2) #8
  %.not16 = icmp eq i32 %i.e, 0
  br i1 %.not16, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load i32, ptr %i.f, align 8
  %3 = trunc i32 %i.g to i16
  %trunc = and i16 %3, -4096
  switch i16 %trunc, label %.thread [
    i16 -32768, label %bb.l
    i16 8192, label %bb.l
    i16 4096, label %bb.e
    i16 -16384, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  store i32 128, ptr %i.a, align 4
  %i.h = call i32 @getsockname(i32 noundef %0, ptr nonnull %1, ptr noundef nonnull %i.a) #8
  %.not17 = icmp eq i32 %i.h, 0
  br i1 %.not17, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  store i32 4, ptr %i.a, align 4
  %i.i = call i32 @getsockopt(i32 noundef %0, i32 noundef 1, i32 noundef 3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #8
  %.not18 = icmp eq i32 %i.i, 0
  br i1 %.not18, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.j = load i32, ptr %i.b, align 4
  switch i32 %i.j, label %.thread [
    i32 2, label %bb.i
    i32 1, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.k = load i16, ptr %1, align 8
  %i.l = and i16 %i.k, -9
  %or.cond = icmp eq i16 %i.l, 2
  br i1 %or.cond, label %bb.l, label %.thread

bb.j:                                             ; preds = %bb.h
  %i.m = load i16, ptr %1, align 8                ; 2 uses
  %i.n = and i16 %i.m, -9
  %or.cond7 = icmp eq i16 %i.n, 2
  br i1 %or.cond7, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = icmp eq i16 %i.m, 1
  br i1 %i.o, label %bb.l, label %.thread

.thread:                                          ; preds = %bb.d, %bb.h, %bb.i, %bb.k
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.g, %bb.f, %bb.d, %bb.d, %bb.c, %bb.b, %bb.a, %.thread, %bb.e
  %.0 = phi i32 [ 7, %bb.k ], [ 0, %bb.a ], [ 14, %bb.b ], [ 0, %bb.c ], [ 17, %bb.d ], [ 7, %bb.e ], [ 17, %bb.d ], [ 0, %bb.f ], [ 0, %bb.g ], [ 15, %bb.i ], [ 12, %bb.j ], [ 0, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  ret i32 %.0
}

declare i32 @fcntl64(i32 noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @ttyname_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @uv__open_cloexec(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @uv__dup2_cloexec(i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @uv__close(i32 noundef) local_unnamed_addr #4

declare void @uv__stream_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @uv__nonblock_ioctl(i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @uv__stream_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @uv_tty_set_mode(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.termios, align 16           ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.a = and i32 %1, -3
  %.not = icmp eq i32 %i.a, 1
  %spec.select = select i1 %.not, i32 1, i32 %1   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = icmp eq i32 %i.c, %spec.select
  br i1 %i.d, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.f = load i32, ptr %i.e, align 8              ; 3 uses
  %i.g = icmp eq i32 %i.c, 0
  %i.h = icmp ne i32 %spec.select, 0
  %or.cond = and i1 %i.h, %i.g
  br i1 %or.cond, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.d
  %i.j = tail call i32 @tcgetattr(i32 noundef %i.f, ptr noundef nonnull %i.i) #8
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.d, label %.critedge26

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @__errno_location() #9
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = icmp eq i32 %i.m, 4
  br i1 %i.n, label %bb.c, label %.critedge, !llvm.loop !11

.critedge:                                        ; preds = %bb.d
  %i.o = sub nsw i32 0, %i.m
  br label %bb.n

.critedge26:                                      ; preds = %bb.c, %.critedge26
  %i.p = cmpxchg ptr @termios_spinlock, i32 0, i32 1 seq_cst seq_cst, align 4
  %i.q = extractvalue { i32, i1 } %i.p, 1
  br i1 %i.q, label %bb.e, label %.critedge26, !llvm.loop !12

bb.e:                                             ; preds = %.critedge26
  %i.r = load i32, ptr @orig_termios_fd, align 4
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) @orig_termios, ptr noundef nonnull align 8 dereferenceable(60) %i.i, i64 60, i1 false)
  store i32 %i.f, ptr @orig_termios_fd, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store atomic i32 0, ptr @termios_spinlock seq_cst, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(60) %2, ptr noundef nonnull align 8 dereferenceable(60) %i.t, i64 60, i1 false)
  switch i32 %spec.select, label %bb.k [
    i32 0, label %.preheader38
    i32 1, label %bb.i
    i32 2, label %bb.j
  ]

.preheader38:                                     ; preds = %bb.j, %bb.i, %bb.h
  br label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.u = load <4 x i32>, ptr %2, align 16         ; 2 uses
  %i.v = and <4 x i32> %i.u, <i32 -1331, i32 poison, i32 poison, i32 -32780>
  %i.w = or <4 x i32> %i.u, <i32 poison, i32 4, i32 48, i32 poison>
  %i.x = shufflevector <4 x i32> %i.v, <4 x i32> %i.w, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i32> %i.x, ptr %2, align 16
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 23
  store i8 1, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 22
  store i8 0, ptr %i.z, align 2
  br label %.preheader38

bb.j:                                             ; preds = %bb.h
  call void @cfmakeraw(ptr noundef nonnull %2) #8
  br label %.preheader38

bb.k:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 333, ptr noundef nonnull @__PRETTY_FUNCTION__.uv_tty_set_mode) #10
  unreachable

bb.l:                                             ; preds = %.preheader38, %bb.m
  %i.aa = call i32 @tcsetattr(i32 noundef %i.f, i32 noundef 1, ptr noundef nonnull %2) #8
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %bb.m, label %uv__tcsetattr.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.ac = tail call ptr @__errno_location() #9
  %i.ad = load i32, ptr %i.ac, align 4            ; 3 uses
  %i.ae = icmp eq i32 %i.ad, 4
  br i1 %i.ae, label %bb.l, label %uv__tcsetattr.exit, !llvm.loop !8

uv__tcsetattr.exit:                               ; preds = %bb.m
  %i.af = sub nsw i32 0, %i.ad
  %i.ag = icmp eq i32 %i.ad, 0
  br i1 %i.ag, label %uv__tcsetattr.exit.thread, label %bb.n

uv__tcsetattr.exit.thread:                        ; preds = %bb.l, %uv__tcsetattr.exit
  store i32 %spec.select, ptr %i.b, align 4
  br label %bb.n

bb.n:                                             ; preds = %uv__tcsetattr.exit, %uv__tcsetattr.exit.thread, %bb.a, %.critedge
  %.0 = phi i32 [ 0, %bb.a ], [ %i.o, %.critedge ], [ 0, %uv__tcsetattr.exit.thread ], [ %i.af, %uv__tcsetattr.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @tcgetattr(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden void @uv__tty_close(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
end_hunk_0
