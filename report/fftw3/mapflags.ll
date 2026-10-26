Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/mapflags?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @fftw_mapflags(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
.thread:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.b = load i64, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load double, ptr %i.c, align 8, !tbaa !19 ; 4 uses
  %i.e = fcmp olt double %i.d, 0.000000e+00
  %i.f = fcmp oge double %i.d, 3.153600e+07
  %or.cond.i = or i1 %i.e, %i.f
  br i1 %or.cond.i, label %timelimit_to_flags.exit, label %bb.a

bb.a:                                             ; preds = %.thread
  %i.g = fcmp ugt double %i.d, 1.000000e-10
  br i1 %i.g, label %bb.b, label %timelimit_to_flags.exit

bb.b:                                             ; preds = %bb.a
  %i.h = fdiv double 3.153600e+07, %i.d
  %i.i = tail call double @log(double noundef %i.h) #3
  %i.j = fdiv double %i.i, f0x3FA8FB063EF2C7F0
  %i.k = fadd double %i.j, 5.000000e-01
  %i.l = fptosi double %i.k to i32
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.l, i32 0)
  %spec.store.select2.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.i, i32 511)
  %i.m = shl nuw i32 %spec.store.select2.i, 23
  %i.n = zext i32 %i.m to i64
  br label %timelimit_to_flags.exit

timelimit_to_flags.exit:                          ; preds = %.thread, %bb.a, %bb.b
  %.0.i = phi i64 [ %i.n, %bb.b ], [ 0, %.thread ], [ 4286578688, %bb.a ]
  %i.o = and i64 %i.b, -4503599620030464
  %i.p = and i32 %1, 16
  %.not.i = icmp eq i32 %i.p, 0
  %i.q = and i32 %1, -2
  %spec.select = select i1 %.not.i, i32 %1, i32 %i.q ; 4 uses
  %i.r = and i32 %spec.select, 64
  %.not.i.3 = icmp eq i32 %i.r, 0
  %i.s = shl i32 %spec.select, 4
  %i.t = and i32 %i.s, 16
  %i.u = shl i32 %spec.select, 2
  %i.v = and i32 %i.u, 32
  %i.w = or disjoint i32 %i.t, %i.v
  %i.x = xor i32 %i.w, 16
  %.130.2 = or i32 %i.x, %spec.select             ; 2 uses
  %i.y = and i32 %.130.2, -1052833
  %i.z = or disjoint i32 %i.y, 1052800
  %.130.4 = select i1 %.not.i.3, i32 %.130.2, i32 %i.z ; 3 uses
  %i.aa = and i32 %.130.4, 32
  %.not.i.6.not = icmp eq i32 %i.aa, 0
  %i.ab = shl i32 %.130.4, 15
  %i.ac = and i32 %i.ab, 262144
  %i.ad = xor i32 %i.ac, 262144
  %.130.5 = or i32 %.130.4, %i.ad                 ; 2 uses
  %i.ae = or i32 %.130.5, 640768
  %.130.6 = select i1 %.not.i.6.not, i32 %i.ae, i32 %.130.5 ; 17 uses
  %i.af = lshr i32 %.130.6, 7
  %i.ag = and i32 %i.af, 64
  %i.ah = shl i32 %.130.6, 8
  %.128.1 = and i32 %i.ah, 4096
  %i.ai = lshr i32 %.130.6, 4
  %i.aj = and i32 %i.ai, 8192
  %.128.3 = or disjoint i32 %.128.1, %i.aj
  %i.ak = shl i32 %.130.6, 12
  %i.al = and i32 %i.ak, 16384
  %.128.5 = or disjoint i32 %.128.3, %i.al
  %i.am = lshr i32 %.130.6, 1
  %i.an = and i32 %i.am, 1024
  %.128.7 = or disjoint i32 %.128.5, %i.an
  %i.ao = or disjoint i32 %i.ag, %.128.7
  %.128.9 = xor i32 %i.ao, 64                     ; 2 uses
  %i.ap = shl i32 %.130.6, 13
  %i.aq = and i32 %i.ap, 65536
  %i.ar = lshr i32 %.130.6, 6
  %i.as = and i32 %i.ar, 2
  %i.at = or disjoint i32 %i.aq, %i.as
  %i.au = lshr i32 %.130.6, 3
  %i.av = and i32 %i.au, 131072
  %i.aw = or disjoint i32 %i.at, %i.av
  %i.ax = lshr i32 %.130.6, 8
  %i.ay = and i32 %i.ax, 1
  %i.az = or disjoint i32 %i.aw, %i.ay
  %i.ba = lshr i32 %.130.6, 7
  %i.bb = and i32 %i.ba, 4
  %i.bc = or disjoint i32 %i.az, %i.bb
  %i.bd = lshr i32 %.130.6, 1
  %masksel = and i32 %i.bd, 512
  %.1.11 = or disjoint i32 %i.bc, %masksel
  %i.be = lshr i32 %.130.6, 7
  %masksel80 = and i32 %i.be, 32
  %.1.13.masked.masked.masked.masked = or i32 %.1.11, %masksel80
  %i.bf = lshr i32 %.130.6, 7
  %masksel81 = and i32 %i.bf, 128
  %.1.15.masked.masked.masked = or i32 %.1.13.masked.masked.masked.masked, %masksel81
  %i.bg = lshr i32 %.130.6, 7
  %masksel82 = and i32 %i.bg, 256
  %.1.17.masked.masked = or i32 %.1.15.masked.masked.masked, %masksel82
  %i.bh = lshr i32 %.130.6, 12
  %masksel83 = and i32 %i.bh, 16
  %.1.19.masked = or i32 %.1.17.masked.masked, %masksel83
  %i.bi = lshr i32 %.130.6, 15
  %masksel84 = and i32 %i.bi, 8
  %.1.21 = or i32 %.1.19.masked, %masksel84
  %i.bj = lshr i32 %.130.6, 8
  %masksel85 = and i32 %i.bj, 2048
  %i.bk = or i32 %.1.21, %masksel85
  %i.bl = or i32 %i.bk, %.128.9
  %i.bm = xor i32 %i.bl, 65536
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = shl nuw nsw i64 %i.bn, 32
  %2 = and i32 %.128.9, 8388607
  %.masked86 = zext nneg i32 %2 to i64
  %.masked = or i64 %i.o, %.masked86
  %i.bp = or i64 %.masked, %i.bo
  %i.bq = or disjoint i64 %.0.i, %i.bp
  store i64 %i.bq, ptr %i.a, align 4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS9slvdesc_s", !9, i64 0}
!11 = !{!"p1 omnipotent char", !9, i64 0}
!12 = !{!"p1 _ZTS10solution_s", !9, i64 0}
!13 = !{!"", !12, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40}
!14 = !{!"", !6, i64 0, !6, i64 2, !6, i64 2, !6, i64 4, !6, i64 6}
!15 = !{!"long", !5, i64 0}
!16 = !{!"timeval", !15, i64 0, !15, i64 8}
!17 = !{!"double", !5, i64 0}
!18 = !{!"planner_s", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !10, i64 48, !6, i64 56, !6, i64 60, !11, i64 64, !6, i64 72, !5, i64 76, !6, i64 108, !13, i64 112, !13, i64 160, !6, i64 208, !14, i64 212, !16, i64 224, !17, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !17, i64 264, !17, i64 272, !6, i64 280}
!19 = !{!18, !17, i64 240}
end_hunk_0
