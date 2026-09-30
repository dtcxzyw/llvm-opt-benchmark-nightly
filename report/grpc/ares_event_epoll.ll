Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/ares_event_epoll?download=true
inline.NumInlined: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ares_event_sys_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.epoll_event = type <{ i32, %union.epoll_data }>
%union.epoll_data = type { ptr }

@.str = private unnamed_addr constant [6 x i8] c"epoll\00", align 1
@ares_evsys_epoll = local_unnamed_addr constant %struct.ares_event_sys_t { ptr @.str, ptr @ares_evsys_epoll_init, ptr @ares_evsys_epoll_destroy, ptr @ares_evsys_epoll_event_add, ptr @ares_evsys_epoll_event_del, ptr @ares_evsys_epoll_event_mod, ptr @ares_evsys_epoll_wait }, align 8

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @ares_evsys_epoll_init(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @ares_malloc_zero(i64 noundef 4) #5 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %ares_evsys_epoll_destroy.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !18
  %i.d = tail call i32 @epoll_create1(i32 noundef 524288) #5 ; 2 uses
  store i32 %i.d, ptr %i.a, align 4, !tbaa !20
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !18   ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %ares_evsys_epoll_destroy.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %i.f, align 4, !tbaa !20   ; 2 uses
  %.not.i = icmp eq i32 %i.h, -1
  br i1 %.not.i, label %ares_evsys_epoll_destroy.exit.sink.split, label %ares_evsys_epoll_destroy.exit.sink.split.sink.split

bb.e:                                             ; preds = %bb.b
  %i.i = tail call ptr @ares_pipeevent_create(ptr noundef nonnull %0) #5 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.i, ptr %i.j, align 8, !tbaa !28
  %i.k = icmp eq ptr %i.i, null
  br i1 %i.k, label %bb.f, label %ares_evsys_epoll_destroy.exit

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !18   ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %ares_evsys_epoll_destroy.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = load i32, ptr %i.l, align 4, !tbaa !20   ; 2 uses
  %.not.i11 = icmp eq i32 %i.n, -1
  br i1 %.not.i11, label %ares_evsys_epoll_destroy.exit.sink.split, label %ares_evsys_epoll_destroy.exit.sink.split.sink.split

ares_evsys_epoll_destroy.exit.sink.split.sink.split: ; preds = %bb.g, %bb.d
  %.sink18 = phi i32 [ %i.h, %bb.d ], [ %i.n, %bb.g ]
  %.sink.ph = phi ptr [ %i.f, %bb.d ], [ %i.l, %bb.g ]
  %i.o = tail call i32 @close(i32 noundef %.sink18) #5 ; 0 uses
  br label %ares_evsys_epoll_destroy.exit.sink.split

ares_evsys_epoll_destroy.exit.sink.split:         ; preds = %ares_evsys_epoll_destroy.exit.sink.split.sink.split, %bb.g, %bb.d
  %.sink = phi ptr [ %i.f, %bb.d ], [ %i.l, %bb.g ], [ %.sink.ph, %ares_evsys_epoll_destroy.exit.sink.split.sink.split ]
  tail call void @ares_free(ptr noundef nonnull %.sink) #5
  store ptr null, ptr %i.c, align 8, !tbaa !18
  br label %ares_evsys_epoll_destroy.exit

ares_evsys_epoll_destroy.exit:                    ; preds = %ares_evsys_epoll_destroy.exit.sink.split, %bb.f, %bb.c, %bb.e, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.e ], [ 0, %bb.f ], [ 0, %bb.c ], [ 0, %ares_evsys_epoll_destroy.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @ares_evsys_epoll_destroy(ptr nofree noundef captures(address_is_null) %0) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.c, align 4, !tbaa !20   ; 2 uses
  %.not = icmp eq i32 %i.e, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @close(i32 noundef %i.e) #5 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @ares_free(ptr noundef nonnull %i.c) #5
  store ptr null, ptr %i.b, align 8, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @ares_evsys_epoll_event_add(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %1 = alloca %struct.epoll_event, align 4        ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !24   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.f, ptr %i.g, align 4, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !29   ; 2 uses
  %i.j = and i32 %i.i, 1
  %2 = shl i32 %i.i, 1
  %3 = and i32 %2, 4
  %spec.select.v = or disjoint i32 %3, 8216
  %spec.select = or disjoint i32 %i.j, %spec.select.v
  store i32 %spec.select, ptr %1, align 4
  %i.k = load i32, ptr %i.c, align 4, !tbaa !20
  %i.l = call i32 @epoll_ctl(i32 noundef %i.k, i32 noundef 1, i32 noundef %i.f, ptr noundef nonnull %1) #5
  %.not8 = icmp eq i32 %i.l, 0
  %. = zext i1 %.not8 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #5
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define internal void @ares_evsys_epoll_event_del(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %1 = alloca %struct.epoll_event, align 1        ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %1, i8 0, i64 12, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !24   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.e, ptr %i.f, align 1, !tbaa !25
  %i.g = load i32, ptr %i.c, align 4, !tbaa !20
  %i.h = call i32 @epoll_ctl(i32 noundef %i.g, i32 noundef 2, i32 noundef %i.e, ptr noundef nonnull %1) #5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ares_evsys_epoll_event_mod(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %2 = alloca %struct.epoll_event, align 4        ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !24   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.f, ptr %i.g, align 4, !tbaa !25
  %i.h = and i32 %1, 1
  %3 = shl i32 %1, 1
  %4 = and i32 %3, 4
  %spec.select7.v = or disjoint i32 %4, 8216
  %spec.select7 = or disjoint i32 %i.h, %spec.select7.v
  store i32 %spec.select7, ptr %2, align 4, !tbaa !27
  %i.i = load i32, ptr %i.c, align 4, !tbaa !20
  %i.j = call i32 @epoll_ctl(i32 noundef %i.i, i32 noundef 3, i32 noundef %i.f, ptr noundef nonnull %2) #5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @ares_evsys_epoll_wait(ptr noundef %0, i64 noundef %1) #0 {
bb.a:
  %2 = alloca [8 x %struct.epoll_event], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %2, i8 0, i64 96, i1 false)
  %i.c = load i32, ptr %i.b, align 4, !tbaa !20
  %i.d = icmp eq i64 %1, 0
  %i.e = trunc i64 %1 to i32
  %i.f = select i1 %i.d, i32 -1, i32 %i.e
  %i.g = call i32 @epoll_wait(i32 noundef %i.c, ptr noundef nonnull %2, i32 noundef 8, i32 noundef %i.f) #5 ; 3 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = zext nneg i32 %i.g to i64
  %.not34 = icmp eq i32 %i.g, 0
  br i1 %.not34, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.02533 = phi i64 [ 0, %.lr.ph ], [ %.126, %bb.f ] ; 3 uses
  %.02732 = phi i64 [ 0, %.lr.ph ], [ %i.ac, %bb.f ] ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %.02732 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !25
  %i.o = call ptr @ares_htable_asvp_get_direct(ptr noundef %i.k, i32 noundef %i.n) #5 ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !31   ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = add i64 %.02533, 1
  %i.u = load i32, ptr %i.l, align 4, !tbaa !27   ; 2 uses
  %i.v = and i32 %i.u, 8217
  %.not = icmp ne i32 %i.v, 0
  %spec.select = zext i1 %.not to i32
  %i.w = lshr i32 %i.u, 1
  %i.x = and i32 %i.w, 2
  %.1 = or disjoint i32 %i.x, %spec.select
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !32
  call void %i.r(ptr noundef nonnull %0, i32 noundef %i.z, ptr noundef %i.ab, i32 noundef %.1) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.126 = phi i64 [ %i.t, %bb.e ], [ %.02533, %bb.d ], [ %.02533, %bb.c ] ; 2 uses
  %i.ac = add nuw nsw i64 %.02732, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ac, %i.i
  br i1 %exitcond.not, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.f, %bb.b, %bb.a
  %.028 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %.126, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  ret i64 %.028
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @ares_malloc_zero(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @epoll_create1(i32 noundef) local_unnamed_addr #3

declare ptr @ares_pipeevent_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @close(i32 noundef) local_unnamed_addr #2

declare void @ares_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind
declare i32 @epoll_ctl(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @epoll_wait(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ares_htable_asvp_get_direct(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS11ares_thread", !8, i64 0}
!10 = !{!"p1 _ZTS17ares_thread_mutex", !8, i64 0}
!11 = !{!"p1 _ZTS16ares_channeldata", !8, i64 0}
!12 = !{!"p1 _ZTS10ares_llist", !8, i64 0}
!13 = !{!"p1 _ZTS16ares_htable_asvp", !8, i64 0}
!14 = !{!"p1 _ZTS16ares_htable_vpvp", !8, i64 0}
!15 = !{!"p1 _ZTS10ares_event", !8, i64 0}
!16 = !{!"p1 _ZTS20ares_event_configchg", !8, i64 0}
!17 = !{!"ares_event_thread", !5, i64 0, !9, i64 8, !10, i64 16, !11, i64 24, !5, i64 32, !12, i64 40, !13, i64 48, !14, i64 56, !15, i64 64, !16, i64 72, !8, i64 80, !8, i64 88}
!18 = !{!17, !8, i64 88}
!19 = !{!"", !5, i64 0}
!20 = !{!19, !5, i64 0}
!21 = !{!"p1 _ZTS17ares_event_thread", !8, i64 0}
!22 = !{!"ares_event", !21, i64 0, !5, i64 8, !8, i64 16, !5, i64 24, !8, i64 32, !8, i64 40, !8, i64 48}
!23 = !{!22, !21, i64 0}
!24 = !{!22, !5, i64 24}
!25 = !{!4, !4, i64 0}
!26 = !{!"epoll_event", !5, i64 0, !4, i64 4}
!27 = !{!26, !5, i64 0}
!28 = !{!17, !15, i64 64}
!29 = !{!22, !5, i64 8}
!30 = !{!17, !13, i64 48}
!31 = !{!22, !8, i64 16}
!32 = !{!22, !8, i64 32}
end_hunk_0
