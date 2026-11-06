Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/pack?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @gdcmuuid_uuid_pack(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !11
  %2 = tail call i32 @llvm.bswap.i32(i32 %i.a)
  store i32 %2, ptr %1, align 1, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i16, ptr %i.b, align 4, !tbaa !13   ; 2 uses
  %i.d = trunc i16 %i.c to i8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.d, ptr %i.e, align 1, !tbaa !12
  %i.f = lshr i16 %i.c, 8
  %i.g = trunc nuw i16 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.g, ptr %i.h, align 1, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.j = load i16, ptr %i.i, align 2, !tbaa !14   ; 2 uses
  %i.k = trunc i16 %i.j to i8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.k, ptr %i.l, align 1, !tbaa !12
  %i.m = lshr i16 %i.j, 8
  %i.n = trunc nuw i16 %i.m to i8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.n, ptr %i.o, align 1, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i16, ptr %i.p, align 4, !tbaa !15   ; 2 uses
  %i.r = trunc i16 %i.q to i8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.r, ptr %i.s, align 1, !tbaa !12
  %i.t = lshr i16 %i.q, 8
  %i.u = trunc nuw i16 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.u, ptr %i.v, align 1, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.w, ptr noundef nonnull align 2 dereferenceable(6) %i.x, i64 6, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"short", !5, i64 0}
!10 = !{!"uuid", !6, i64 0, !9, i64 4, !9, i64 6, !9, i64 8, !5, i64 10}
!11 = !{!10, !6, i64 0}
!12 = !{!5, !5, i64 0}
!13 = !{!10, !9, i64 4}
!14 = !{!10, !9, i64 6}
!15 = !{!10, !9, i64 8}
end_hunk_0
