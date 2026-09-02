Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/if2ip?download=true
inline.NumInlined: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%%%u\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 5) i32 @Curl_ipv6_scope(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !10
  %i.b = icmp eq i16 %i.a, 10
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i8, ptr %i.c, align 2, !tbaa !11    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1, !tbaa !11    ; 2 uses
  %1 = and i8 %i.d, -2
  %i.g = icmp eq i8 %1, -4
  br i1 %i.g, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %2 = and i8 %i.f, -64
  %.masked = zext i8 %2 to i16
  %.tr = zext i8 %i.d to i16
  %3 = shl nuw i16 %.tr, 8
  %trunc = or disjoint i16 %3, %.masked
  switch i16 %trunc, label %bb.g [
    i16 -384, label %.thread
    i16 -320, label %bb.d
    i16 0, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.i = load <8 x i8>, ptr %i.h, align 2, !tbaa !11 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.k = load <4 x i8>, ptr %i.j, align 2, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.m = load i8, ptr %i.l, align 2, !tbaa !11
  %i.n = shufflevector <4 x i8> %i.k, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.o = or <8 x i8> %i.i, %i.n
  %i.p = shufflevector <8 x i8> %i.o, <8 x i8> %i.i, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.q = tail call i8 @llvm.vector.reduce.or.v8i8(<8 x i8> %i.p)
  %op.rdx = or i8 %i.q, %i.m
  %op.rdx29 = or i8 %op.rdx, %i.f
  %.not = icmp eq i8 %op.rdx29, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.s = load i8, ptr %i.r, align 1, !tbaa !11
  %.not25 = icmp eq i8 %i.s, 1
  br i1 %.not25, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.c, %bb.b, %bb.d, %bb.f
  %.024.ph = phi i32 [ 4, %bb.f ], [ 2, %bb.d ], [ 3, %bb.b ], [ 1, %bb.c ]
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.c, %.thread
  %.1 = phi i32 [ %.024.ph, %.thread ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @Curl_if2ip(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [12 x i8], align 1                ; 8 uses
  %i.c = alloca [64 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.d = call i32 @getifaddrs(ptr noundef nonnull %i.a) #7
  %i.e = icmp sgt i32 %i.d, -1
  br i1 %i.e, label %.preheader, label %bb.u

.preheader:                                       ; preds = %bb.a
  %.03662 = load ptr, ptr %i.a, align 8, !tbaa !15 ; 3 uses
  %.not63 = icmp eq ptr %.03662, null
  br i1 %.not63, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = icmp eq i32 %0, 10
  %.not45 = icmp eq i32 %2, 0
  br i1 %i.f, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.m
  %.03665.us = phi ptr [ %.036.us, %bb.m ], [ %.03662, %.lr.ph ] ; 4 uses
  %.03464.us = phi i32 [ %.3.us, %bb.m ], [ 0, %.lr.ph ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.03665.us, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  %.not41.us = icmp eq ptr %i.h, null
  br i1 %.not41.us, label %bb.m, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.i = load i16, ptr %i.h, align 2, !tbaa !10
  %i.j = icmp eq i16 %i.i, 10
  br i1 %i.j, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i32 %.03464.us, 0
  br i1 %i.k, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.03665.us, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.n = call i32 @curl_strequal(ptr noundef %i.m, ptr noundef %3) #7
  %.not42.us = icmp ne i32 %i.n, 0
  %spec.select.us = zext i1 %.not42.us to i32
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.03665.us, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !20
  %i.q = call i32 @curl_strequal(ptr noundef %i.p, ptr noundef %3) #7
  %.not43.us = icmp eq i32 %i.q, 0
  br i1 %.not43.us, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.b, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !19   ; 9 uses
  %i.s = load i16, ptr %i.r, align 2, !tbaa !10
  %i.t = icmp eq i16 %i.s, 10
  br i1 %i.t, label %bb.g, label %Curl_ipv6_scope.exit.us

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = load i8, ptr %i.u, align 2, !tbaa !11    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 9
  %i.x = load i8, ptr %i.w, align 1, !tbaa !11    ; 2 uses
  %6 = and i8 %i.v, -2
  %i.y = icmp eq i8 %6, -4
  br i1 %i.y, label %.thread.i.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %7 = and i8 %i.x, -64
  %.masked.i.us = zext i8 %7 to i16
  %.tr.i.us = zext i8 %i.v to i16
  %8 = shl nuw i16 %.tr.i.us, 8
  %trunc.i.us = or disjoint i16 %8, %.masked.i.us
  switch i16 %trunc.i.us, label %Curl_ipv6_scope.exit.us [
    i16 -384, label %.thread.i.us
    i16 -320, label %bb.k
    i16 0, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 10
  %i.aa = load <8 x i8>, ptr %i.z, align 2, !tbaa !11 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 18
  %i.ac = load <4 x i8>, ptr %i.ab, align 2, !tbaa !11
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 22
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !11
  %i.af = shufflevector <4 x i8> %i.ac, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ag = or <8 x i8> %i.aa, %i.af
  %i.ah = shufflevector <8 x i8> %i.ag, <8 x i8> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.ai = call i8 @llvm.vector.reduce.or.v8i8(<8 x i8> %i.ah)
  %op.rdx = or i8 %i.ai, %i.ae
  %op.rdx83 = or i8 %op.rdx, %i.x
  %.not.i.us = icmp eq i8 %op.rdx83, 0
  br i1 %.not.i.us, label %bb.j, label %Curl_ipv6_scope.exit.us

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 23
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !11
  %.not25.i.us = icmp eq i8 %i.ak, 1
  br i1 %.not25.i.us, label %.thread.i.us, label %Curl_ipv6_scope.exit.us

bb.k:                                             ; preds = %bb.h
  br label %.thread.i.us

.thread.i.us:                                     ; preds = %bb.k, %bb.j, %bb.h, %bb.g
  %.024.ph.i.us = phi i32 [ 4, %bb.j ], [ 2, %bb.k ], [ 3, %bb.g ], [ 1, %bb.h ]
  br label %Curl_ipv6_scope.exit.us

Curl_ipv6_scope.exit.us:                          ; preds = %.thread.i.us, %bb.j, %bb.i, %bb.h, %bb.f
  %.1.i.us = phi i32 [ %.024.ph.i.us, %.thread.i.us ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.f ]
  %.not44.us = icmp eq i32 %.1.i.us, %1
  br i1 %.not44.us, label %bb.l, label %.thread53.us

bb.l:                                             ; preds = %Curl_ipv6_scope.exit.us
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.am = load i32, ptr %i.al, align 4, !tbaa !23 ; 3 uses
  %.not46.us = icmp eq i32 %i.am, %2
  %or.cond.us = select i1 %.not45, i1 true, i1 %.not46.us
  br i1 %or.cond.us, label %.split.us, label %.thread53.us

.thread53.us:                                     ; preds = %bb.l, %Curl_ipv6_scope.exit.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.m

bb.m:                                             ; preds = %.thread53.us, %bb.e, %bb.d, %bb.c, %.lr.ph.split.us
  %.3.us = phi i32 [ 1, %.thread53.us ], [ %.03464.us, %bb.e ], [ %.03464.us, %.lr.ph.split.us ], [ %spec.select.us, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %.036.us = load ptr, ptr %.03665.us, align 8, !tbaa !15 ; 2 uses
  %.not.us = icmp eq ptr %.036.us, null
  br i1 %.not.us, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !12

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.t
  %.03665 = phi ptr [ %.036, %bb.t ], [ %.03662, %.lr.ph ] ; 5 uses
  %.03464 = phi i32 [ %.3, %bb.t ], [ 0, %.lr.ph ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.03665, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !19 ; 2 uses
  %.not41 = icmp eq ptr %i.ao, null
  br i1 %.not41, label %bb.t, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !10
  %i.aq = zext i16 %i.ap to i32
  %i.ar = icmp eq i32 %0, %i.aq
  br i1 %i.ar, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %.03665, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !20
  %i.au = call i32 @curl_strequal(ptr noundef %i.at, ptr noundef %3) #7
  %.not43 = icmp eq i32 %i.au, 0
  br i1 %.not43, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %.03665, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.b, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !19
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  br label %.thread

.split.us:                                        ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %.not47 = icmp eq i32 %i.am, 0
  br i1 %.not47, label %.thread, label %bb.q

bb.q:                                             ; preds = %.split.us
  %i.az = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.b, i64 noundef 12, ptr noundef nonnull @.str, i32 noundef %i.am) #7 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %.split.us, %bb.q, %bb.p
  %.133 = phi ptr [ %i.ax, %bb.p ], [ %i.ay, %bb.q ], [ %i.ay, %.split.us ]
  %i.ba = call ptr @inet_ntop(i32 noundef %0, ptr noundef nonnull %.133, ptr noundef nonnull %i.c, i32 noundef 64) #7
  %i.bb = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef %4, i64 noundef %5, ptr noundef nonnull @.str.1, ptr noundef %i.ba, ptr noundef nonnull %i.b) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %.loopexit

bb.r:                                             ; preds = %bb.n
  %i.bc = icmp eq i32 %.03464, 0
  br i1 %i.bc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %.03665, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !20
  %i.bf = call i32 @curl_strequal(ptr noundef %i.be, ptr noundef %3) #7
  %.not42 = icmp ne i32 %i.bf, 0
  %spec.select = zext i1 %.not42 to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.split, %bb.r, %bb.o
  %.3 = phi i32 [ 1, %bb.r ], [ %.03464, %bb.o ], [ %.03464, %.lr.ph.split ], [ %spec.select, %bb.s ] ; 2 uses
  %.036 = load ptr, ptr %.03665, align 8, !tbaa !15 ; 2 uses
  %.not = icmp eq ptr %.036, null
  br i1 %.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !12

.loopexit:                                        ; preds = %bb.t, %bb.m, %.preheader, %.thread
  %.4 = phi i32 [ 2, %.thread ], [ 0, %.preheader ], [ %.3.us, %bb.m ], [ %.3, %bb.t ]
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !15
  call void @freeifaddrs(ptr noundef %i.bg) #7
  br label %bb.u

bb.u:                                             ; preds = %.loopexit, %bb.a
  %.5 = phi i32 [ %.4, %.loopexit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.5
}

; Function Attrs: nounwind
declare i32 @getifaddrs(ptr noundef) local_unnamed_addr #3

declare i32 @curl_strequal(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare i32 @curl_msnprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @inet_ntop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @freeifaddrs(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.or.v8i8(<8 x i8>) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

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
!8 = !{!"short", !4, i64 0}
!9 = !{!"sockaddr", !8, i64 0, !4, i64 2}
!10 = !{!9, !8, i64 0}
!11 = !{!4, !4, i64 0}
!12 = distinct !{!12, !24}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!"p1 _ZTS7ifaddrs", !13, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"p1 omnipotent char", !13, i64 0}
!17 = !{!"p1 _ZTS8sockaddr", !13, i64 0}
!18 = !{!"ifaddrs", !14, i64 0, !16, i64 8, !5, i64 16, !17, i64 24, !17, i64 32, !4, i64 40, !13, i64 48}
!19 = !{!18, !17, i64 24}
!20 = !{!18, !16, i64 8}
!21 = !{!"in6_addr", !4, i64 0}
!22 = !{!"sockaddr_in6", !8, i64 0, !8, i64 2, !5, i64 4, !21, i64 8, !5, i64 24}
!23 = !{!22, !5, i64 24}
!24 = !{!"llvm.loop.mustprogress"}
end_hunk_0
