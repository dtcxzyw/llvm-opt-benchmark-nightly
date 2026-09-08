Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_test_log?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [6 x i8] c"(nil)\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c" %s: %s\00", align 1
@SDLTest_TimestampToString.buffer = internal global [64 x i8] zeroinitializer, align 16
@.str.4 = private unnamed_addr constant [6 x i8] c"%x %X\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define dso_local void @SDLTest_LogMessage(i32 noundef %0, ptr noundef %1, ...) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @llvm.va_start.p0(ptr nonnull %2)
  call fastcc void @SDLTest_LogMessageV(i32 noundef %0, ptr noundef %1, ptr noundef %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #2

; Function Attrs: nounwind uwtable
define internal fastcc void @SDLTest_LogMessageV(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca [3584 x i8], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(3584) %i.c, i8 0, i64 3584, i1 false)
  %i.d = call i32 @SDL_vsnprintf(ptr noundef nonnull %i.c, i64 noundef 3583, ptr noundef %1, ptr noundef nonnull %2) #6 ; 0 uses
  %i.e = icmp ugt i32 %0, 4
  %i.f = call i64 @time(ptr noundef null) #6      ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @SDLTest_TimestampToString.buffer, i8 0, i64 64, i1 false)
  store i64 %i.f, ptr %i.b, align 8
  %i.g = call ptr @localtime(ptr noundef nonnull %i.b) #6
  %i.h = call i64 @strftime(ptr noundef nonnull @SDLTest_TimestampToString.buffer, i64 noundef 64, ptr noundef nonnull @.str.4, ptr noundef %i.g) #6
  %i.i = icmp eq i64 %i.h, 0
  %.str.5.SDLTest_TimestampToString.buffer.i = select i1 %i.i, ptr @.str.5, ptr @SDLTest_TimestampToString.buffer
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void (i32, i32, ptr, ...) @SDL_LogMessage(i32 noundef 8, i32 noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %.str.5.SDLTest_TimestampToString.buffer.i, ptr noundef nonnull %i.c) #6
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @SDLTest_TimestampToString.buffer, i8 0, i64 64, i1 false)
  store i64 %i.f, ptr %i.a, align 8
  %i.j = call ptr @localtime(ptr noundef nonnull %i.a) #6
  %i.k = call i64 @strftime(ptr noundef nonnull @SDLTest_TimestampToString.buffer, i64 noundef 64, ptr noundef nonnull @.str.4, ptr noundef %i.j) #6
  %i.l = icmp eq i64 %i.k, 0
  %.str.5.SDLTest_TimestampToString.buffer.i4 = select i1 %i.l, ptr @.str.5, ptr @SDLTest_TimestampToString.buffer
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void (i32, i32, ptr, ...) @SDL_LogMessage(i32 noundef 8, i32 noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %.str.5.SDLTest_TimestampToString.buffer.i4, ptr noundef nonnull %i.c) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @SDLTest_Log(ptr noundef %0, ...) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [3584 x i8], align 16             ; 5 uses
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  call void @llvm.va_start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(3584) %i.b, i8 0, i64 3584, i1 false)
  %i.c = call i32 @SDL_vsnprintf(ptr noundef nonnull %i.b, i64 noundef 3583, ptr noundef %0, ptr noundef nonnull %1) #6 ; 0 uses
  %i.d = call i64 @time(ptr noundef null) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @SDLTest_TimestampToString.buffer, i8 0, i64 64, i1 false)
  store i64 %i.d, ptr %i.a, align 8
  %i.e = call ptr @localtime(ptr noundef nonnull %i.a) #6
  %i.f = call i64 @strftime(ptr noundef nonnull @SDLTest_TimestampToString.buffer, i64 noundef 64, ptr noundef nonnull @.str.4, ptr noundef %i.e) #6
  %i.g = icmp eq i64 %i.f, 0
  %.str.5.SDLTest_TimestampToString.buffer.i4.i = select i1 %i.g, ptr @.str.5, ptr @SDLTest_TimestampToString.buffer
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void (i32, i32, ptr, ...) @SDL_LogMessage(i32 noundef 8, i32 noundef 4, ptr noundef nonnull @.str.3, ptr noundef nonnull %.str.5.SDLTest_TimestampToString.buffer.i4.i, ptr noundef nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SDLTest_LogError(ptr noundef %0, ...) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [3584 x i8], align 16             ; 5 uses
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  call void @llvm.va_start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(3584) %i.b, i8 0, i64 3584, i1 false)
  %i.c = call i32 @SDL_vsnprintf(ptr noundef nonnull %i.b, i64 noundef 3583, ptr noundef %0, ptr noundef nonnull %1) #6 ; 0 uses
  %i.d = call i64 @time(ptr noundef null) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @SDLTest_TimestampToString.buffer, i8 0, i64 64, i1 false)
  store i64 %i.d, ptr %i.a, align 8
  %i.e = call ptr @localtime(ptr noundef nonnull %i.a) #6
  %i.f = call i64 @strftime(ptr noundef nonnull @SDLTest_TimestampToString.buffer, i64 noundef 64, ptr noundef nonnull @.str.4, ptr noundef %i.e) #6
  %i.g = icmp eq i64 %i.f, 0
  %.str.5.SDLTest_TimestampToString.buffer.i.i = select i1 %i.g, ptr @.str.5, ptr @SDLTest_TimestampToString.buffer
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void (i32, i32, ptr, ...) @SDL_LogMessage(i32 noundef 8, i32 noundef 6, ptr noundef nonnull @.str.2, ptr noundef nonnull %.str.5.SDLTest_TimestampToString.buffer.i.i, ptr noundef nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SDLTest_LogEscapedString(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3584 x i8], align 16             ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 34, ptr %i.a, align 16
  %.not64 = icmp eq i64 %2, 0
  br i1 %.not64, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.x
  %.05263 = phi i64 [ %.1, %bb.x ], [ 1, %bb.b ]  ; 29 uses
  %.05362 = phi i64 [ %i.bl, %bb.x ], [ 0, %bb.b ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.05362
  %i.c = load i8, ptr %i.b, align 1               ; 6 uses
  switch i8 %i.c, label %bb.s [
    i8 0, label %bb.c
    i8 34, label %bb.e
    i8 10, label %bb.g
    i8 13, label %bb.i
    i8 9, label %bb.k
    i8 12, label %bb.m
    i8 8, label %bb.o
    i8 92, label %bb.q
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.d = add i64 %.05263, -3581
  %i.e = icmp ult i64 %i.d, -3583
  br i1 %i.e, label %bb.y, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %.05263 ; 2 uses
  store i8 92, ptr %i.f, align 1
  %i.g = add nsw i64 %.05263, 2
  %i.h = getelementptr i8, ptr %i.f, i64 1
  store i8 48, ptr %i.h, align 1
  br label %bb.x

bb.e:                                             ; preds = %.lr.ph
  %i.i = add i64 %.05263, -3581
  %i.j = icmp ult i64 %i.i, -3583
  br i1 %i.j, label %bb.y, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %.05263 ; 2 uses
  store i8 92, ptr %i.k, align 1
  %i.l = add nsw i64 %.05263, 2
  %i.m = getelementptr i8, ptr %i.k, i64 1
  store i8 34, ptr %i.m, align 1
  br label %bb.x

bb.g:                                             ; preds = %.lr.ph
  %i.n = add i64 %.05263, -3581
  %i.o = icmp ult i64 %i.n, -3583
  br i1 %i.o, label %bb.y, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %.05263 ; 2 uses
  store i8 92, ptr %i.p, align 1
  %i.q = add nsw i64 %.05263, 2
  %i.r = getelementptr i8, ptr %i.p, i64 1
  store i8 110, ptr %i.r, align 1
  br label %bb.x

bb.i:                                             ; preds = %.lr.ph
  %i.s = add i64 %.05263, -3581
  %i.t = icmp ult i64 %i.s, -3583
  br i1 %i.t, label %bb.y, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %.05263 ; 2 uses
  store i8 92, ptr %i.u, align 1
  %i.v = add nsw i64 %.05263, 2
  %i.w = getelementptr i8, ptr %i.u, i64 1
  store i8 114, ptr %i.w, align 1
  br label %bb.x

bb.k:                                             ; preds = %.lr.ph
  %i.x = add i64 %.05263, -3581
  %i.y = icmp ult i64 %i.x, -3583
  br i1 %i.y, label %bb.y, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %.05263 ; 2 uses
  store i8 92, ptr %i.z, align 1
  %i.aa = add nsw i64 %.05263, 2
  %i.ab = getelementptr i8, ptr %i.z, i64 1
  store i8 116, ptr %i.ab, align 1
  br label %bb.x

bb.m:                                             ; preds = %.lr.ph
  %i.ac = add i64 %.05263, -3581
  %i.ad = icmp ult i64 %i.ac, -3583
  br i1 %i.ad, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 %.05263 ; 2 uses
  store i8 92, ptr %i.ae, align 1
  %i.af = add nsw i64 %.05263, 2
  %i.ag = getelementptr i8, ptr %i.ae, i64 1
  store i8 102, ptr %i.ag, align 1
  br label %bb.x

bb.o:                                             ; preds = %.lr.ph
  %i.ah = add i64 %.05263, -3581
  %i.ai = icmp ult i64 %i.ah, -3583
  br i1 %i.ai, label %bb.y, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %.05263 ; 2 uses
  store i8 92, ptr %i.aj, align 1
  %i.ak = add nsw i64 %.05263, 2
  %i.al = getelementptr i8, ptr %i.aj, i64 1
  store i8 98, ptr %i.al, align 1
  br label %bb.x

bb.q:                                             ; preds = %.lr.ph
  %i.am = add i64 %.05263, -3581
  %i.an = icmp ult i64 %i.am, -3583
  br i1 %i.an, label %bb.y, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %.05263 ; 2 uses
  store i8 92, ptr %i.ao, align 1
  %i.ap = add nsw i64 %.05263, 2
  %i.aq = getelementptr i8, ptr %i.ao, i64 1
  store i8 92, ptr %i.aq, align 1
  br label %bb.x

bb.s:                                             ; preds = %.lr.ph
  %i.ar = zext i8 %i.c to i32
  %i.as = tail call i32 @SDL_isprint(i32 noundef %i.ar) #6
  %.not56 = icmp eq i32 %i.as, 0
  br i1 %.not56, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = add i64 %.05263, 1                      ; 2 uses
  %i.au = icmp ugt i64 %i.at, 3582
  br i1 %i.au, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %.05263
  store i8 %i.c, ptr %i.av, align 1
  br label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.aw = add i64 %.05263, -3579
  %i.ax = icmp ult i64 %i.aw, -3583
  br i1 %i.ax, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %.05263 ; 4 uses
  store i8 92, ptr %i.ay, align 1
  %i.az = getelementptr i8, ptr %i.ay, i64 1
  store i8 120, ptr %i.az, align 1
  %i.ba = lshr i8 %i.c, 4                         ; 2 uses
  %i.bb = icmp ult i8 %i.c, -96
  %i.bc = or disjoint i8 %i.ba, 48
  %i.bd = add nuw nsw i8 %i.ba, 87
  %.0.i = select i1 %i.bb, i8 %i.bc, i8 %i.bd
  %i.be = getelementptr i8, ptr %i.ay, i64 2
  store i8 %.0.i, ptr %i.be, align 1
  %i.bf = and i8 %i.c, 15                         ; 3 uses
  %i.bg = icmp samesign ult i8 %i.bf, 10
  %i.bh = or disjoint i8 %i.bf, 48
  %i.bi = add nuw nsw i8 %i.bf, 87
  %.0.i57 = select i1 %i.bg, i8 %i.bh, i8 %i.bi
  %i.bj = add nsw i64 %.05263, 4
  %i.bk = getelementptr i8, ptr %i.ay, i64 3
  store i8 %.0.i57, ptr %i.bk, align 1
  br label %bb.x

bb.x:                                             ; preds = %bb.d, %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.p, %bb.r, %bb.w, %bb.u
  %.1 = phi i64 [ %i.af, %bb.n ], [ %i.at, %bb.u ], [ %i.v, %bb.j ], [ %i.bj, %bb.w ], [ %i.ap, %bb.r ], [ %i.g, %bb.d ], [ %i.aa, %bb.l ], [ %i.l, %bb.f ], [ %i.ak, %bb.p ], [ %i.q, %bb.h ] ; 2 uses
  %i.bl = add nuw i64 %.05362, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bl, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !4

bb.y:                                             ; preds = %bb.t, %bb.v, %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %bb.m, %bb.o, %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 3580
  store <4 x i8> <i8 46, i8 46, i8 46, i8 0>, ptr %i.bm, align 4
  br label %bb.aa

._crit_edge:                                      ; preds = %bb.x, %bb.b
  %.052.lcssa = phi i64 [ 1, %bb.b ], [ %.1, %bb.x ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %.052.lcssa ; 2 uses
  store i8 34, ptr %i.bn, align 1
  %i.bo = getelementptr i8, ptr %i.bn, i64 1
  store i8 0, ptr %i.bo, align 1
  br label %bb.aa

bb.z:                                             ; preds = %bb.a
  %i.bp = call i64 @SDL_strlcpy(ptr noundef nonnull %i.a, ptr noundef nonnull @.str, i64 noundef 3584) #6 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %._crit_edge, %bb.z
  call void (ptr, ...) @SDLTest_Log(ptr noundef nonnull @.str.1, ptr noundef %0, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

declare i32 @SDL_isprint(i32 noundef) local_unnamed_addr #3

declare i64 @SDL_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @SDL_vsnprintf(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @SDL_LogMessage(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @strftime(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
end_hunk_0
