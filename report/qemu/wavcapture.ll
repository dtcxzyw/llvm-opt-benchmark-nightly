Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/wavcapture?download=true
inline.NumInlined: 6
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.capture_ops = type { ptr, ptr }
%struct.audsettings = type { i32, i32, i32, i8 }
%struct.audio_capture_ops = type { ptr, ptr, ptr }

@__const.wav_start_capture.hdr = private unnamed_addr constant [44 x i8] c"RIFF\00\00\00\00WAVEfmt \10\00\00\00\01\00\02\00D\AC\00\00\10\B1\02\00\04\00\10\00data\00\00\00\00", align 16
@.str = private unnamed_addr constant [40 x i8] c"incorrect bit count %d, must be 8 or 16\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"incorrect channel count %d, must be 1 or 2\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed to open wave file `%s': %s\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Failed to write header: %s\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Failed to add audio capture\00", align 1
@wav_capture_ops = internal unnamed_addr constant %struct.capture_ops { ptr @wav_capture_info, ptr @wav_capture_destroy }, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"Failed to close wave file: %s\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"wav_capture: fwrite error: %s\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"wav_destroy: rlen fseek failed: %s\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"wav_destroy: rlen fwrite failed: %s\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"wav_destroy: dlen fseek failed: %s\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"wav_destroy: dlen fwrite failed: %s\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"wav_destroy: fclose failed: %s\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"Capturing audio(%d,%d,%d) to %s: %d bytes\0A\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"<not available>\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -1, 1) i32 @wav_start_capture(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [44 x i8], align 16               ; 17 uses
  %6 = alloca %struct.audsettings, align 4        ; 8 uses
  %7 = alloca %struct.audio_capture_ops, align 8  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.a, ptr noundef nonnull align 16 dereferenceable(44) @__const.wav_start_capture.hdr, i64 44, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  switch i32 %4, label %bb.b [
    i32 16, label %bb.c
    i32 8, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str, i32 noundef %4) #8
  br label %bb.m

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.c = add i32 %5, -3
  %or.cond3 = icmp ult i32 %i.c, -2
  br i1 %or.cond3, label %bb.d, label %le_store.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.1, i32 noundef %5) #8
  br label %bb.m

le_store.exit:                                    ; preds = %bb.c
  store i32 0, ptr %i.b, align 4, !annotation !7
  %i.d = icmp eq i32 %5, 2
  %i.e = zext i1 %i.d to i32                      ; 2 uses
  %i.f = icmp eq i32 %4, 16                       ; 3 uses
  store i32 %3, ptr %6, align 4
  %i.g = shl nuw nsw i32 1, %i.e                  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.g, ptr %i.h, align 4
  %i.i = select i1 %i.f, i32 3, i32 0
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.i, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i8 0, ptr %i.k, align 4
  store ptr @wav_notify, ptr %7, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @wav_capture, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr @wav_destroy, ptr %i.m, align 8
  %i.n = tail call noalias dereferenceable_or_null(56) ptr @g_malloc0(i64 noundef 56) #9 ; 13 uses
  %i.o = select i1 %i.f, i8 16, i8 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  store i8 %i.o, ptr %i.p, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %i.r = trunc nuw nsw i32 %i.g to i8
  store i8 %i.r, ptr %i.q, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %8 = trunc i32 %3 to i8
  store i8 %8, ptr %i.t, align 8
  %9 = lshr i32 %3, 8
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  store i8 %10, ptr %11, align 1
  %12 = lshr i32 %3, 16
  %13 = trunc i32 %12 to i8
  %14 = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  store i8 %13, ptr %14, align 2
  %15 = lshr i32 %3, 24
  %16 = trunc nuw i32 %15 to i8
  %17 = getelementptr inbounds nuw i8, ptr %i.a, i64 27
  store i8 %16, ptr %17, align 1
  %i.u = zext i1 %i.f to i32
  %i.v = add nuw nsw i32 %i.e, %i.u               ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.x = shl i32 %3, %i.v                         ; 4 uses
  %18 = trunc i32 %i.x to i8
  store i8 %18, ptr %i.w, align 4
  %19 = lshr i32 %i.x, 8
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds nuw i8, ptr %i.a, i64 29
  store i8 %20, ptr %21, align 1
  %22 = lshr i32 %i.x, 16
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  store i8 %23, ptr %24, align 2
  %25 = lshr i32 %i.x, 24
  %26 = trunc nuw i32 %25 to i8
  %27 = getelementptr inbounds nuw i8, ptr %i.a, i64 31
  store i8 %26, ptr %27, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.z = shl nuw nsw i32 1, %i.v
  %i.aa = trunc nuw nsw i32 %i.z to i8
  store i8 %i.aa, ptr %i.y, align 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  store i8 0, ptr %i.ab, align 1
  %i.ac = tail call noalias ptr @fopen64(ptr noundef %2, ptr noundef nonnull @.str.2) ; 2 uses
  store ptr %i.ac, ptr %i.n, align 8
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.e, label %g_strdup_inline.exit

bb.e:                                             ; preds = %le_store.exit
  %i.ad = tail call ptr @__errno_location() #10
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = tail call ptr @strerror(i32 noundef %i.ae) #8
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.3, ptr noundef %2, ptr noundef %i.af) #8
  tail call void @g_free(ptr noundef nonnull %i.n) #8
  br label %bb.m

g_strdup_inline.exit:                             ; preds = %le_store.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 2 uses
  store ptr %0, ptr %i.ag, align 8
  %i.ah = tail call noalias ptr @g_strdup(ptr noundef %2) #8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  store i32 %4, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i32 %5, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i32 %3, ptr %i.al, align 8
  %i.am = load ptr, ptr %i.n, align 8
  %i.an = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 44, i64 noundef 1, ptr noundef %i.am)
  %.not51 = icmp eq i64 %i.an, 1
  br i1 %.not51, label %bb.g, label %bb.f

bb.f:                                             ; preds = %g_strdup_inline.exit
  %i.ao = tail call ptr @__errno_location() #10
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = tail call ptr @strerror(i32 noundef %i.ap) #8
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.4, ptr noundef %i.aq) #8
  br label %bb.j

bb.g:                                             ; preds = %g_strdup_inline.exit
  %i.ar = load ptr, ptr %i.ag, align 8
  %i.as = call ptr @audio_be_add_capture(ptr noundef %i.ar, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %i.n) #8 ; 2 uses
  %.not52 = icmp eq ptr %i.as, null
  br i1 %.not52, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.5) #8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store ptr %i.as, ptr %i.at, align 8
  store ptr %i.n, ptr %1, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) @wav_capture_ops, i64 16, i1 false)
  br label %bb.m

bb.j:                                             ; preds = %bb.h, %bb.f
  %i.av = load ptr, ptr %i.ai, align 8
  call void @g_free(ptr noundef %i.av) #8
  %i.aw = load ptr, ptr %i.n, align 8
  %i.ax = call i32 @fclose(ptr noundef %i.aw)
  %.not53 = icmp eq i32 %i.ax, 0
  br i1 %.not53, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = tail call ptr @__errno_location() #10
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = call ptr @strerror(i32 noundef %i.az) #8
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.6, ptr noundef %i.ba) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @g_free(ptr noundef nonnull %i.n) #8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i, %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ -1, %bb.l ], [ 0, %bb.i ], [ -1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @error_report(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal void @wav_notify(ptr nofree readnone captures(none) %0, i32 %1) #3 {
bb.a:
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @wav_capture(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = load ptr, ptr %0, align 8
  %i.c = tail call i64 @fwrite(ptr noundef %1, i64 noundef %i.a, i64 noundef 1, ptr noundef %i.b)
  %.not = icmp eq i64 %i.c, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #10
  %i.e = load i32, ptr %i.d, align 4
  %i.f = tail call ptr @strerror(i32 noundef %i.e) #8
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.7, ptr noundef %i.f) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = add i32 %i.h, %2
  store i32 %i.i, ptr %i.g, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @wav_destroy(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 7 uses
  %i.b = alloca [4 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.c = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %le_store.exit.preheader

le_store.exit.preheader:                          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8              ; 5 uses
  %i.f = add i32 %i.e, 36                         ; 4 uses
  %1 = trunc i32 %i.f to i8
  store i8 %1, ptr %i.a, align 1
  %2 = lshr i32 %i.f, 8
  %3 = trunc i32 %2 to i8
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %3, ptr %4, align 1
  %5 = lshr i32 %i.f, 16
  %6 = trunc i32 %5 to i8
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %6, ptr %7, align 1
  %8 = lshr i32 %i.f, 24
  %9 = trunc nuw i32 %8 to i8
  %10 = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %9, ptr %10, align 1
  %11 = trunc i32 %i.e to i8
  store i8 %11, ptr %i.b, align 1
  %12 = lshr i32 %i.e, 8
  %13 = trunc i32 %12 to i8
  %14 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %13, ptr %14, align 1
  %15 = lshr i32 %i.e, 16
  %16 = trunc i32 %15 to i8
  %17 = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %16, ptr %17, align 1
  %18 = lshr i32 %i.e, 24
  %19 = trunc nuw i32 %18 to i8
  %20 = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %19, ptr %20, align 1
  %i.g = tail call i32 @fseek(ptr noundef nonnull %i.c, i64 noundef 4, i32 noundef 0)
  %.not11 = icmp eq i32 %i.g, 0
  br i1 %.not11, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %le_store.exit.preheader
  %i.h = load ptr, ptr %0, align 8
  %i.i = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1, ptr noundef %i.h)
  %.not12 = icmp eq i64 %i.i, 1
  br i1 %.not12, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %0, align 8
  %i.k = tail call i32 @fseek(ptr noundef %i.j, i64 noundef 32, i32 noundef 1)
  %.not13 = icmp eq i32 %i.k, 0
  br i1 %.not13, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %0, align 8
  %i.m = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 4, ptr noundef %i.l)
  %.not14 = icmp eq i64 %i.m, 4
  br i1 %.not14, label %bb.e, label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.c, %bb.b, %le_store.exit.preheader
  %.str.11.sink = phi ptr [ @.str.10, %bb.c ], [ @.str.9, %bb.b ], [ @.str.8, %le_store.exit.preheader ], [ @.str.11, %bb.d ]
  %i.n = tail call ptr @__errno_location() #10
  %i.o = load i32, ptr %i.n, align 4
  %i.p = tail call ptr @strerror(i32 noundef %i.o) #8
  tail call void (ptr, ...) @error_report(ptr noundef nonnull %.str.11.sink, ptr noundef %i.p) #8
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d
  %i.q = load ptr, ptr %0, align 8
  %i.r = tail call i32 @fclose(ptr noundef %i.q)
  %.not15 = icmp eq i32 %i.r, 0
  br i1 %.not15, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = tail call ptr @__errno_location() #10
  %i.t = load i32, ptr %i.s, align 4
  %i.u = tail call ptr @strerror(i32 noundef %i.t) #8
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.12, ptr noundef %i.u) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  tail call void @g_free(ptr noundef %i.w) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

declare void @g_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #5

declare ptr @audio_be_add_capture(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #5

declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @wav_capture_info(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i32, ptr %i.g, align 8
  %.not = icmp eq ptr %i.b, null
  %i.i = select i1 %.not, ptr @.str.14, ptr %i.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 8
  %i.l = tail call i32 (ptr, ...) @qemu_printf(ptr noundef nonnull @.str.13, i32 noundef %i.d, i32 noundef %i.f, i32 noundef %i.h, ptr noundef nonnull %i.i, i32 noundef %i.k) #8 ; 0 uses
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @wav_capture_destroy(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @audio_be_del_capture(ptr noundef %i.b, ptr noundef %i.d, ptr noundef %0) #8
  tail call void @g_free(ptr noundef %0) #8
  ret void
}

declare i32 @qemu_printf(ptr noundef, ...) local_unnamed_addr #2

declare void @audio_be_del_capture(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"auto-init"}
end_hunk_0
