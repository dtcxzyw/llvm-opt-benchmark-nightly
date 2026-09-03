Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/copy?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @gdcmuuid_uuid_copy(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = add i64 %i.b, 16
  %i.d = add i64 %i.a, 16
  %rt.bound0 = icmp ugt i64 %i.c, %i.a
  %rt.bound1 = icmp ugt i64 %i.d, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.rtscalar, label %.rtvec

.rtvec:                                           ; preds = %bb.a
  %i.e = load <16 x i8>, ptr %1, align 1, !tbaa !9
  store <16 x i8> %i.e, ptr %0, align 1, !tbaa !9
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.g = load i8, ptr %1, align 1, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.g, ptr %0, align 1, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.j = load i8, ptr %i.f, align 1, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.j, ptr %i.h, align 1, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.m = load i8, ptr %i.i, align 1, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.m, ptr %i.k, align 1, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = load i8, ptr %i.l, align 1, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.p, ptr %i.n, align 1, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.s = load i8, ptr %i.o, align 1, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.s, ptr %i.q, align 1, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.v = load i8, ptr %i.r, align 1, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.v, ptr %i.t, align 1, !tbaa !9
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.y = load i8, ptr %i.u, align 1, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.y, ptr %i.w, align 1, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i8, ptr %i.x, align 1, !tbaa !9
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.ab, ptr %i.z, align 1, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ae = load i8, ptr %i.aa, align 1, !tbaa !9
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.ae, ptr %i.ac, align 1, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ah = load i8, ptr %i.ad, align 1, !tbaa !9
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.ah, ptr %i.af, align 1, !tbaa !9
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ak = load i8, ptr %i.ag, align 1, !tbaa !9
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %i.ak, ptr %i.ai, align 1, !tbaa !9
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.an = load i8, ptr %i.aj, align 1, !tbaa !9
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.an, ptr %i.al, align 1, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.aq = load i8, ptr %i.am, align 1, !tbaa !9
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.aq, ptr %i.ao, align 1, !tbaa !9
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.at = load i8, ptr %i.ap, align 1, !tbaa !9
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.at, ptr %i.ar, align 1, !tbaa !9
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.aw = load i8, ptr %i.as, align 1, !tbaa !9
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.aw, ptr %i.au, align 1, !tbaa !9
  %i.ay = load i8, ptr %i.av, align 1, !tbaa !9
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !9
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!5, !5, i64 0}
end_hunk_0
