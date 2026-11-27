Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pocketpy/original/socket?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }

@c11_socket_create.is_initialized = internal unnamed_addr global i1 false, align 4

; Function Attrs: nounwind uwtable
define ptr @c11_socket_create(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @c11_socket_create.is_initialized, align 4
  br i1 %.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i1 true, ptr @c11_socket_create.is_initialized, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = tail call i32 @socket(i32 noundef %0, i32 noundef %1, i32 noundef %2) #8
  %i.b = sext i32 %i.a to i64
  %i.c = inttoptr i64 %i.b to ptr
  ret ptr %i.c
}

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @c11_socket_bind(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.sockaddr_in, align 4        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %rev.i = tail call noundef i16 @llvm.bswap.i16(i16 %2)
  %4 = zext i16 %rev.i to i32
  %5 = shl nuw i32 %4, 16
  %6 = or disjoint i32 %5, 2
  store i32 %6, ptr %3, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.b = call i32 @inet_pton(i32 noundef 2, ptr noundef %1, ptr noundef nonnull %i.a) #8 ; 0 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = trunc i64 %i.c to i32
  %i.e = call i32 @bind(i32 noundef %i.d, ptr noundef nonnull %3, i32 noundef 16) #8
  %i.f = icmp eq i32 %i.e, -1
  %. = sext i1 %i.f to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret i32 %.
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nounwind
declare i32 @inet_pton(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @bind(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define noundef i32 @c11_socket_listen(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = trunc i64 %i.a to i32
  %i.c = tail call i32 @listen(i32 noundef %i.b, i32 noundef %1) #8 ; 0 uses
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @listen(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @c11_socket_accept(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.sockaddr_in, align 4        ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 16, ptr %i.a, align 4, !tbaa !8
  %i.b = ptrtoint ptr %0 to i64
  %i.c = trunc i64 %i.b to i32
  %i.d = call i32 @accept(i32 noundef %i.c, ptr noundef nonnull %3, ptr noundef nonnull %i.a) #8
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.f = call ptr @inet_ntop(i32 noundef 2, ptr noundef nonnull %i.e, ptr noundef nonnull %1, i32 noundef 16) #8 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not6 = icmp eq ptr %2, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.h = load i16, ptr %i.g, align 2, !tbaa !12
  %rev.i = call noundef i16 @llvm.bswap.i16(i16 %i.h)
  store i16 %rev.i, ptr %2, align 2, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = sext i32 %i.d to i64
  %i.j = inttoptr i64 %i.i to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret ptr %i.j
}

declare i32 @accept(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @inet_ntop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @c11_socket_connect(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.sockaddr_in, align 4        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %rev.i = tail call noundef i16 @llvm.bswap.i16(i16 %2)
  %4 = zext i16 %rev.i to i32
  %5 = shl nuw i32 %4, 16
  %6 = or disjoint i32 %5, 2
  store i32 %6, ptr %3, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.b = call i32 @inet_pton(i32 noundef 2, ptr noundef %1, ptr noundef nonnull %i.a) #8 ; 0 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = trunc i64 %i.c to i32
  %i.e = call i32 @connect(i32 noundef %i.d, ptr noundef nonnull %3, i32 noundef 16) #8
  %i.f = icmp eq i32 %i.e, -1
  %. = sext i1 %i.f to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret i32 %.
}

declare i32 @connect(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @c11_socket_recv(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = trunc i64 %i.a to i32
  %i.c = sext i32 %2 to i64
  %i.d = tail call i64 @recv(i32 noundef %i.b, ptr noundef %1, i64 noundef %i.c, i32 noundef 0) #8
  %i.e = trunc i64 %i.d to i32
  ret i32 %i.e
}

declare i64 @recv(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @c11_socket_send(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = trunc i64 %i.a to i32
  %i.c = sext i32 %2 to i64
  %i.d = tail call i64 @send(i32 noundef %i.b, ptr noundef %1, i64 noundef %i.c, i32 noundef 0) #8
  %i.e = trunc i64 %i.d to i32
  ret i32 %i.e
}

declare i64 @send(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @c11_socket_close(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = trunc i64 %i.a to i32
  %i.c = tail call i32 @close(i32 noundef %i.b) #8
  ret i32 %i.c
}

declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @c11_socket_set_block(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.b, i32 noundef 3, i32 noundef 0) #8
  %i.d = or i32 %i.c, 2048
  %i.e = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.b, i32 noundef 4, i32 noundef %i.d) #8
  ret i32 %i.e
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @c11_socket_invalid_socket_handler() local_unnamed_addr #4 {
bb.a:
  ret ptr inttoptr (i64 -1 to ptr)
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @c11_socket_get_last_error() local_unnamed_addr #5 {
bb.a:
  %i.a = tail call ptr @__errno_location() #9
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"short", !4, i64 0}
!10 = !{!"in_addr", !5, i64 0}
!11 = !{!"sockaddr_in", !9, i64 0, !9, i64 2, !10, i64 4, !4, i64 8}
!12 = !{!11, !9, i64 2}
!13 = !{!9, !9, i64 0}
end_hunk_0
