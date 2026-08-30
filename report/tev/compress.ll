Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/compress?download=true
inline.NumInlined: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"1.3.2\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @compress2_z(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.z_stream_s, align 8         ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.a = icmp ne i64 %3, 0
  %i.b = icmp eq ptr %2, null
  %or.cond = and i1 %i.b, %i.a
  %i.c = icmp eq ptr %1, null
  %or.cond3 = or i1 %i.c, %or.cond
  br i1 %or.cond3, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !9      ; 2 uses
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp eq ptr %0, null
  %or.cond5 = and i1 %i.f, %i.e
  br i1 %or.cond5, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %1, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.h = call i32 @deflateInit_(ptr noundef nonnull %5, i32 noundef %4, ptr noundef nonnull @.str, i32 noundef 112) #6 ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %0, ptr %i.i, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  store i32 0, ptr %i.j, align 8, !tbaa !16
  store ptr %2, ptr %5, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i32 0, ptr %i.k, align 8, !tbaa !18
  br label %bb.e

thread-pre-split:                                 ; preds = %bb.i
  %.pr = load i32, ptr %i.j, align 8, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split, %bb.d
  %i.l = phi i32 [ %.pr, %thread-pre-split ], [ 0, %bb.d ]
  %.030 = phi i64 [ %.131, %thread-pre-split ], [ %3, %bb.d ] ; 3 uses
  %.0 = phi i64 [ %.1, %thread-pre-split ], [ %i.d, %bb.d ] ; 3 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = call i64 @llvm.umin.i64(i64 %.0, i64 4294967295) ; 2 uses
  %i.o = trunc nuw i64 %i.n to i32
  store i32 %i.o, ptr %i.j, align 8, !tbaa !16
  %i.p = sub i64 %.0, %i.n
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1 = phi i64 [ %i.p, %bb.f ], [ %.0, %bb.e ]
  %i.q = load i32, ptr %i.k, align 8, !tbaa !18
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = call i64 @llvm.umin.i64(i64 %.030, i64 4294967295) ; 2 uses
  %i.t = trunc nuw i64 %i.s to i32
  store i32 %i.t, ptr %i.k, align 8, !tbaa !18
  %i.u = sub nuw i64 %.030, %i.s
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.131 = phi i64 [ %i.u, %bb.h ], [ %.030, %bb.g ] ; 2 uses
  %.not35 = icmp eq i64 %.131, 0
  %i.v = select i1 %.not35, i32 4, i32 0
  %i.w = call i32 @deflate(ptr noundef nonnull %5, i32 noundef %i.v) #6 ; 3 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %thread-pre-split, label %bb.j, !llvm.loop !19

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !11
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %0 to i64
  %i.ab = sub i64 %i.z, %i.aa
  store i64 %i.ab, ptr %1, align 8, !tbaa !9
  %i.ac = call i32 @deflateEnd(ptr noundef nonnull %5) #6 ; 0 uses
  %i.ad = icmp eq i32 %i.w, 1
  %i.ae = select i1 %i.ad, i32 0, i32 %i.w
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.a, %bb.b, %bb.j
  %.029 = phi i32 [ %i.ae, %bb.j ], [ -2, %bb.a ], [ -2, %bb.b ], [ %i.h, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  ret i32 %.029
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @deflateInit_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @deflate(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @deflateEnd(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @compress2(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = load i64, ptr %1, align 8, !tbaa !9
  store i64 %i.b, ptr %i.a, align 8, !tbaa !9
  %i.c = call i32 @compress2_z(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %2, i64 noundef %3, i32 noundef %4)
  %i.d = load i64, ptr %i.a, align 8, !tbaa !9
  store i64 %i.d, ptr %1, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local i32 @compress_z(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @compress2_z(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef -1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @compress(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = load i64, ptr %1, align 8, !tbaa !9
  store i64 %i.b, ptr %i.a, align 8, !tbaa !9
  %i.c = call i32 @compress2_z(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %2, i64 noundef %3, i32 noundef -1)
  %i.d = load i64, ptr %i.a, align 8, !tbaa !9
  store i64 %i.d, ptr %1, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @compressBound_z(i64 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = lshr i64 %0, 12
  %i.b = lshr i64 %0, 14
  %i.c = lshr i64 %0, 25
  %i.d = add i64 %0, 13
  %i.e = add i64 %i.d, %i.a
  %i.f = add i64 %i.e, %i.b
  %i.g = add i64 %i.f, %i.c                       ; 2 uses
  %i.h = icmp ult i64 %i.g, %0
  %i.i = select i1 %i.h, i64 -1, i64 %i.g
  ret i64 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @compressBound(i64 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = lshr i64 %0, 12
  %i.b = lshr i64 %0, 14
  %i.c = lshr i64 %0, 25
  %i.d = add i64 %0, 13
  %i.e = add i64 %i.d, %i.a
  %i.f = add i64 %i.e, %i.b
  %i.g = add i64 %i.f, %i.c                       ; 2 uses
  %i.h = icmp ult i64 %i.g, %0
  %i.i = select i1 %i.h, i64 -1, i64 %i.g
  ret i64 %i.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!12, !13, i64 24}
!12 = !{!"z_stream_s", !13, i64 0, !6, i64 8, !10, i64 16, !13, i64 24, !6, i64 32, !10, i64 40, !13, i64 48, !15, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !6, i64 88, !10, i64 96, !10, i64 104}
!13 = !{!"p1 omnipotent char", !14, i64 0}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!"p1 _ZTS14internal_state", !14, i64 0}
!16 = !{!12, !6, i64 32}
!17 = !{!12, !13, i64 0}
!18 = !{!12, !6, i64 8}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
end_hunk_0
