Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/tcp?download=true
inline.NumInlined: 13
inline.NumDeleted: 6
begin_hunk_0_@uv__tcp_listen:bb.a
  %.not17 = icmp eq i32 %i.k, 0
  br i1 %.not17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @__errno_location() #8
  %i.m = load i32, ptr %i.l, align 4
  %i.n = sub nsw i32 0, %i.m
  br label %maybe_new_socket.exit

bb.h:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %2, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8
  %i.s = or i32 %i.r, 8192
  store i32 %i.s, ptr %i.q, align 8
  store ptr @uv__server_io, ptr %i.o, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call i32 @uv__io_start(ptr noundef %i.u, ptr noundef nonnull %i.o, i32 noundef 1) #7 ; 0 uses
  br label %maybe_new_socket.exit

maybe_new_socket.exit:                            ; preds = %bb.e, %bb.c, %bb.a, %bb.h, %bb.g
  %.0 = phi i32 [ 0, %bb.h ], [ %i.b, %bb.a ], [ %i.n, %bb.g ], [ %i.f, %bb.c ], [ %i.h, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @listen(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @uv__server_io(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define hidden range(i32 -2147483647, -2147483648) i32 @uv__tcp_nodelay(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %1, ptr %i.a, align 4
  %i.b = call i32 @setsockopt(i32 noundef %0, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %i.a, i32 noundef 4) #7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #8
  %i.d = load i32, ptr %i.c, align 4
  %i.e = sub nsw i32 0, %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -2147483647, -2147483648) i32 @uv__tcp_keepalive(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  store i32 %1, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.e = call i32 @setsockopt(i32 noundef %0, i32 noundef 1, i32 noundef 9, ptr noundef nonnull %i.a, i32 noundef 4) #7
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.a, align 4
  %.not8 = icmp eq i32 %i.f, 0
  br i1 %.not8, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i32 %2, 0
  br i1 %i.g, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %2, ptr %i.b, align 4
  %i.h = call i32 @setsockopt(i32 noundef %0, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %i.b, i32 noundef 4) #7
  %.not9 = icmp eq i32 %i.h, 0
  br i1 %.not9, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.c, align 4
  %i.i = call i32 @setsockopt(i32 noundef %0, i32 noundef 6, i32 noundef 5, ptr noundef nonnull %i.c, i32 noundef 4) #7
  %.not10 = icmp eq i32 %i.i, 0
  br i1 %.not10, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %bb.e
  store i32 10, ptr %i.d, align 4
  %i.j = call i32 @setsockopt(i32 noundef %0, i32 noundef 6, i32 noundef 6, ptr noundef nonnull %i.d, i32 noundef 4) #7
  %.not11 = icmp eq i32 %i.j, 0
  br i1 %.not11, label %bb.g, label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.e, %bb.d, %bb.a
  %i.k = tail call ptr @__errno_location() #8
  %i.l = load i32, ptr %i.k, align 4
  %i.m = sub nsw i32 0, %i.l
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.f, %bb.c, %bb.b
  %.0 = phi i32 [ -22, %bb.c ], [ 0, %bb.b ], [ 0, %bb.f ], [ %i.m, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @uv_tcp_nodelay(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq i32 %i.c, -1
  br i1 %.not, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %1, ptr %i.a, align 4
  %i.d = call i32 @setsockopt(i32 noundef %i.c, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %i.a, i32 noundef 4) #7
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %uv__tcp_nodelay.exit.thread, label %uv__tcp_nodelay.exit

uv__tcp_nodelay.exit.thread:                      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.sink.split

uv__tcp_nodelay.exit:                             ; preds = %bb.b
  %i.e = tail call ptr @__errno_location() #8
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = sub nsw i32 0, %i.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not10 = icmp eq i32 %i.f, 0
  br i1 %.not10, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %uv__tcp_nodelay.exit.thread, %uv__tcp_nodelay.exit, %bb.a
  %.not11 = icmp eq i32 %1, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = and i32 %i.i, -16777217
  %masksel = select i1 %.not11, i32 0, i32 16777216
  %.sink = or disjoint i32 %i.j, %masksel
  store i32 %.sink, ptr %i.h, align 8
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %uv__tcp_nodelay.exit
  %.0 = phi i32 [ %i.g, %uv__tcp_nodelay.exit ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @uv_tcp_keepalive(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @uv__tcp_keepalive(i32 noundef %i.b, i32 noundef %1, i32 noundef %2) ; 2 uses
  %.not11 = icmp eq i32 %i.c, 0
  br i1 %.not11, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.b, %bb.a
  %.not12 = icmp eq i32 %1, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, -33554433
  %masksel = select i1 %.not12, i32 0, i32 33554432
  %.sink = or disjoint i32 %i.f, %masksel
  store i32 %.sink, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @uv_tcp_simultaneous_accepts(ptr nofree noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden void @uv__tcp_close(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @uv__stream_close(ptr noundef %0) #7
  ret void
}

declare void @uv__stream_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @uv_socketpair(i32 noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = and i32 %3, 64                           ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  %i.c = and i32 %4, 64
  %.not18 = icmp eq i32 %i.c, 0
  %i.d = and i32 %i.b, %4
  %or.cond.not.not = icmp eq i32 %i.d, 0
  %.0.v = select i1 %or.cond.not.not, i32 524288, i32 526336
  %.0 = or i32 %.0.v, %0                          ; 2 uses
  %i.e = call i32 @socketpair(i32 noundef 1, i32 noundef %.0, i32 noundef %1, ptr noundef nonnull %i.a) #7
  %.not19 = icmp eq i32 %i.e, 0
  br i1 %.not19, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__errno_location() #8
  %i.g = load i32, ptr %i.f, align 4
  %i.h = sub nsw i32 0, %i.g
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.i = and i32 %.0, 2048
  %.not20 = icmp eq i32 %i.i, 0
  br i1 %.not20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load <2 x i32>, ptr %i.a, align 8
  store <2 x i32> %i.j, ptr %2, align 4
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load i32, ptr %i.a, align 8
  %i.l = call i32 @uv__nonblock_ioctl(i32 noundef %i.k, i32 noundef 1) #7 ; 2 uses
  %.not21 = icmp eq i32 %i.l, 0
  br i1 %.not21, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f, %bb.e
  br i1 %.not18, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = call i32 @uv__nonblock_ioctl(i32 noundef %i.n, i32 noundef 1) #7 ; 2 uses
  %.not23 = icmp eq i32 %i.o, 0
  br i1 %.not23, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.p = load <2 x i32>, ptr %i.a, align 8
  store <2 x i32> %i.p, ptr %2, align 4
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.f
  %.014 = phi i32 [ %i.l, %bb.f ], [ %i.o, %bb.h ]
  %i.q = load i32, ptr %i.a, align 8
  %i.r = call i32 @uv__close(i32 noundef %i.q) #7 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.t = load i32, ptr %i.s, align 4
  %i.u = call i32 @uv__close(i32 noundef %i.t) #7 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.d, %bb.b
  %.015 = phi i32 [ %i.h, %bb.b ], [ 0, %bb.d ], [ %.014, %bb.j ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.015
}

; Function Attrs: nounwind
declare i32 @socketpair(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @uv__socket(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getifaddrs(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @freeifaddrs(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(none) }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
end_hunk_0
