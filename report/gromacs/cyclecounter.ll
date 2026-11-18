Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/cyclecounter?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeval = type { i64, i64 }

; Function Attrs: mustprogress nounwind uwtable
define noundef double @_Z20gmx_cycles_calibrated(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.timeval, align 16           ; 5 uses
  %2 = alloca %struct.timeval, align 16           ; 4 uses
  %i.a = tail call { i32, i32, i64 } asm sideeffect "xchg %rbx, $2\0Acpuid\0Axchg %rbx, $2\0A", "={ax},={dx},=r,{ax},~{ecx},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 0) #4, !srcloc !9
  %i.b = extractvalue { i32, i32, i64 } %i.a, 0
  %i.c = icmp sgt i32 %i.b, 21
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i32, i32, i64 } asm sideeffect "xchg %rbx, $2\0Acpuid\0Axchg %rbx, $2\0A", "={ax},={dx},=r,{ax},~{ecx},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 22) #4, !srcloc !10
  %i.e = extractvalue { i32, i32, i64 } %i.d, 0
  %i.f = sext i32 %i.e to i64
  %i.g = mul nsw i64 %i.f, 1000000
  %i.h = uitofp i64 %i.g to double
  %i.i = fdiv double 1.000000e+00, %i.h
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #4
  %i.j = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #4 ; 0 uses
  %i.k = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #4 ; 0 uses
  %i.l = tail call { i32, i32 } asm sideeffect "rdtscp", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !11 ; 2 uses
  %i.m = load <2 x i64>, ptr %1, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.n = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #4 ; 0 uses
  %i.o = tail call { i32, i32 } asm sideeffect "rdtscp", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !11 ; 2 uses
  %i.p = load <2 x i64>, ptr %2, align 16, !tbaa !13
  %i.q = sub nsw <2 x i64> %i.p, %i.m
  %i.r = sitofp <2 x i64> %i.q to <2 x double>    ; 2 uses
  %i.s = extractelement <2 x double> %i.r, i64 0
  %i.t = extractelement <2 x double> %i.r, i64 1
  %i.u = tail call double @llvm.fmuladd.f64(double %i.t, double f0x3EB0C6F7A0B5ED8D, double %i.s) ; 3 uses
  %i.v = fcmp olt double %i.u, %0
  br i1 %i.v, label %.backedge, label %bb.f

bb.e:                                             ; preds = %.backedge, %bb.c
  %.025 = phi i32 [ 0, %bb.c ], [ %.025.be, %.backedge ]
  %.124 = phi double [ 1.000000e-01, %bb.c ], [ %i.y, %.backedge ]
  %i.w = add nuw nsw i32 %.025, 1                 ; 3 uses
  %i.x = uitofp nneg i32 %i.w to double
  %i.y = fdiv double %.124, %i.x                  ; 3 uses
  %exitcond.not = icmp eq i32 %i.w, 10000
  br i1 %exitcond.not, label %bb.d, label %.backedge

.backedge:                                        ; preds = %bb.e, %bb.d
  %.025.be = phi i32 [ %i.w, %bb.e ], [ 0, %bb.d ]
  br label %bb.e

bb.f:                                             ; preds = %bb.d
  %i.z = extractvalue { i32, i32 } %i.l, 0
  %i.aa = extractvalue { i32, i32 } %i.l, 1
  %i.ab = zext i32 %i.z to i64
  %.neg27 = sub i32 0, %i.aa
  %.neg27.z = zext i32 %.neg27 to i64
  %.neg26 = shl nuw i64 %.neg27.z, 32
  %i.ac = extractvalue { i32, i32 } %i.o, 1
  %i.ad = zext i32 %i.ac to i64
  %i.ae = shl nuw i64 %i.ad, 32
  %i.af = extractvalue { i32, i32 } %i.o, 0
  %i.ag = zext i32 %i.af to i64
  %.neg22 = sub i64 %.neg26, %i.ab
  %i.ah = add i64 %.neg22, %i.ag
  %i.ai = add i64 %i.ah, %i.ae
  %i.aj = uitofp i64 %i.ai to double
  %i.ak = fcmp olt double %i.y, 1.000000e-30
  %3 = fadd double %i.y, %i.u
  %spec.select = select i1 %i.ak, double %3, double %i.u
  %i.al = fdiv double %spec.select, %i.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.119 = phi double [ %i.i, %bb.b ], [ %i.al, %bb.f ]
  ret double %.119
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{i64 3711, i64 3743, i64 3765}
!10 = !{i64 4045, i64 4081, i64 4107}
!11 = !{i64 41569}
!12 = !{!"long", !5, i64 0}
!13 = !{!12, !12, i64 0}
end_hunk_0
