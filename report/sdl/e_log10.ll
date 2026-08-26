Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/e_log10?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden double @SDL_uclibc_log10(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = bitcast double %0 to i64                 ; 3 uses
  %.sroa.02.4.extract.shift = lshr i64 %i.a, 32
  %.sroa.02.4.extract.trunc = trunc nuw i64 %.sroa.02.4.extract.shift to i32 ; 3 uses
  %i.b = icmp slt i32 %.sroa.02.4.extract.trunc, 1048576
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.sroa.02.0.extract.trunc = trunc i64 %i.a to i32
  %i.c = and i32 %.sroa.02.4.extract.trunc, 2147483647
  %i.d = or i32 %i.c, %.sroa.02.0.extract.trunc
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp slt i64 %i.a, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = fsub double %0, %0
  %i.h = fdiv double %i.g, 0.000000e+00
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.i = fmul double %0, f0x4350000000000000      ; 2 uses
  %i.j = bitcast double %i.i to i64
  %.sroa.01.4.extract.shift = lshr i64 %i.j, 32
  %.sroa.01.4.extract.trunc = trunc nuw i64 %.sroa.01.4.extract.shift to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %.030 = phi i32 [ %.sroa.01.4.extract.trunc, %bb.e ], [ %.sroa.02.4.extract.trunc, %bb.a ] ; 3 uses
  %.029 = phi i32 [ -54, %bb.e ], [ 0, %bb.a ]
  %.028 = phi double [ %i.i, %bb.e ], [ %0, %bb.a ] ; 3 uses
  %i.k = icmp sgt i32 %.030, 2146435071
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = fadd double %.028, %.028
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.m = ashr i32 %.030, 20
  %1 = add nsw i32 %i.m, -1023
  %i.n = add nsw i32 %1, %.029                    ; 2 uses
  %i.o = lshr i32 %i.n, 31                        ; 2 uses
  %i.p = and i32 %.030, 1048575
  %i.q = shl nuw nsw i32 %i.o, 20
  %i.r = or disjoint i32 %i.q, %i.p
  %i.s = xor i32 %i.r, 1072693248
  %i.t = add nsw i32 %i.o, %i.n
  %i.u = sitofp i32 %i.t to double                ; 2 uses
  %i.v = bitcast double %.028 to i64
  %.sroa.0.4.insert.ext = zext nneg i32 %i.s to i64
  %.sroa.0.4.insert.shift = shl nuw nsw i64 %.sroa.0.4.insert.ext, 32
  %.sroa.0.4.insert.mask = and i64 %i.v, 4294967295
  %.sroa.0.4.insert.insert = or disjoint i64 %.sroa.0.4.insert.shift, %.sroa.0.4.insert.mask
  %i.w = bitcast i64 %.sroa.0.4.insert.insert to double
  %i.x = tail call double @SDL_uclibc_log(double noundef %i.w) #3
  %i.y = fmul double %i.x, f0x3FDBCB7B1526E50E
  %i.z = tail call double @llvm.fmuladd.f64(double %i.u, double f0x3D59FEF311F12B36, double %i.y)
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.u, double f0x3FD34413509F6000, double %i.z)
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h, %bb.g, %bb.d
  %.0 = phi double [ %i.aa, %bb.h ], [ %i.h, %bb.d ], [ %i.l, %bb.g ], [ -inf, %bb.b ]
  ret double %.0
}

declare double @SDL_uclibc_log(double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
end_hunk_0
