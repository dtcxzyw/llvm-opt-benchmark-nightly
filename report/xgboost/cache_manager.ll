Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/cache_manager?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN7xgboost6common12CacheManagerC1Ev = unnamed_addr alias void (ptr), ptr @_ZN7xgboost6common12CacheManagerC2Ev

; Function Attrs: mustprogress nounwind memory(argmem: write) uwtable
define void @_Z8RunCpuidjjRA4_j(i32 noundef %0, i32 noundef %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call { i32, i32, i32, i32 } asm "cpuid", "={bx},={ax},={cx},={dx},0,1,2,~{dirflag},~{fpsr},~{flags}"(i32 0, i32 %0, i32 %1) #3, !srcloc !8 ; 4 uses
  %i.b = extractvalue { i32, i32, i32, i32 } %i.a, 0
  %i.c = extractvalue { i32, i32, i32, i32 } %i.a, 1
  %i.d = extractvalue { i32, i32, i32, i32 } %i.a, 2
  %i.e = extractvalue { i32, i32, i32, i32 } %i.a, 3
  store i32 %i.c, ptr %2, align 4, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.b, ptr %i.f, align 4, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.d, ptr %i.g, align 4, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.e, ptr %i.h, align 4, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nounwind memory(write, inaccessiblemem: none, target_mem: none) uwtable
define void @_Z12GetCacheInfoiPiS_PlS_S_S_(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %5, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %6) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call { i32, i32, i32, i32 } asm "cpuid", "={bx},={ax},={cx},={dx},0,1,2,~{dirflag},~{fpsr},~{flags}"(i32 0, i32 0, i32 0) #3, !srcloc !8
  %i.b = extractvalue { i32, i32, i32, i32 } %i.a, 0
  %i.c = icmp eq i32 %i.b, 1752462657
  %i.d = select i1 %i.c, i32 -2147483619, i32 4
  %i.e = tail call { i32, i32, i32, i32 } asm "cpuid", "={bx},={ax},={cx},={dx},0,1,2,~{dirflag},~{fpsr},~{flags}"(i32 0, i32 %i.d, i32 %0) #3, !srcloc !8 ; 3 uses
  %i.f = extractvalue { i32, i32, i32, i32 } %i.e, 0 ; 3 uses
  %i.g = extractvalue { i32, i32, i32, i32 } %i.e, 1 ; 2 uses
  %i.h = extractvalue { i32, i32, i32, i32 } %i.e, 2
  %i.i = and i32 %i.g, 31
  store i32 %i.i, ptr %1, align 4, !tbaa !9
  %i.j = lshr i32 %i.g, 5
  %i.k = and i32 %i.j, 7
  store i32 %i.k, ptr %2, align 4, !tbaa !9
  %i.l = add i32 %i.h, 1
  %i.m = zext i32 %i.l to i64
  store i64 %i.m, ptr %3, align 8, !tbaa !11
  %i.n = and i32 %i.f, 2047
  %i.o = add nuw nsw i32 %i.n, 1
  store i32 %i.o, ptr %4, align 4, !tbaa !9
  %i.p = lshr i32 %i.f, 11
  %i.q = and i32 %i.p, 2047
  %i.r = add nuw nsw i32 %i.q, 1
  store i32 %i.r, ptr %5, align 4, !tbaa !9
  %i.s = lshr i32 %i.f, 22
  %i.t = add nuw nsw i32 %i.s, 1
  store i32 %i.t, ptr %6, align 4, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nounwind memory(write, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7xgboost6common12CacheManagerC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 -1, i64 32, i1 false)
  %i.a = tail call { i32, i32, i32, i32 } asm "cpuid", "={bx},={ax},={cx},={dx},0,1,2,~{dirflag},~{fpsr},~{flags}"(i32 0, i32 0, i32 0) #3, !srcloc !8
  %i.b = extractvalue { i32, i32, i32, i32 } %i.a, 0
  %i.c = icmp eq i32 %i.b, 1752462657
  %i.d = select i1 %i.c, i32 -2147483619, i32 4
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.0515.i = phi i32 [ 0, %bb.a ], [ %.1.i, %bb.d ] ; 3 uses
  %.0614.i = phi i32 [ 0, %bb.a ], [ %i.e, %bb.d ] ; 2 uses
  %i.e = add nuw nsw i32 %.0614.i, 1
  %i.f = tail call { i32, i32, i32, i32 } asm "cpuid", "={bx},={ax},={cx},={dx},0,1,2,~{dirflag},~{fpsr},~{flags}"(i32 0, i32 %i.d, i32 %.0614.i) #3, !srcloc !8 ; 3 uses
  %i.g = extractvalue { i32, i32, i32, i32 } %i.f, 1
  %i.h = and i32 %i.g, 31
  switch i32 %i.h, label %bb.c [
    i32 0, label %_Z16DetectDataCachesILi4EEvPl.exit
    i32 2, label %bb.d
  ], !llvm.loop !12

bb.c:                                             ; preds = %bb.b
  %i.i = extractvalue { i32, i32, i32, i32 } %i.f, 2
  %i.j = extractvalue { i32, i32, i32, i32 } %i.f, 0 ; 3 uses
  %i.k = lshr i32 %i.j, 22
  %i.l = add nuw nsw i32 %i.k, 1
  %i.m = lshr i32 %i.j, 11
  %i.n = and i32 %i.m, 2047
  %i.o = add nuw nsw i32 %i.n, 1
  %i.p = and i32 %i.j, 2047
  %i.q = add nuw nsw i32 %i.p, 1
  %i.r = add i32 %i.i, 1
  %i.s = zext i32 %i.r to i64
  %i.t = mul nuw nsw i32 %i.q, %i.l
  %i.u = mul nuw nsw i32 %i.t, %i.o
  %i.v = zext nneg i32 %i.u to i64
  %i.w = mul nuw nsw i64 %i.v, %i.s
  %i.x = add nsw i32 %.0515.i, 1
  %i.y = sext i32 %.0515.i to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %i.y
  store i64 %i.w, ptr %i.z, align 8, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.i = phi i32 [ %i.x, %bb.c ], [ %.0515.i, %bb.b ] ; 2 uses
  %i.aa = icmp slt i32 %.1.i, 4
  br i1 %i.aa, label %bb.b, label %_Z16DetectDataCachesILi4EEvPl.exit

_Z16DetectDataCachesILi4EEvPl.exit:               ; preds = %bb.b, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

attributes #0 = { mustprogress nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind memory(write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{i64 530}
!9 = !{!5, !5, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!10, !10, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
end_hunk_0
