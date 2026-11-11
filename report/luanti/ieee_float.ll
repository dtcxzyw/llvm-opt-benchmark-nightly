Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/ieee_float?download=true
inline.NumInlined: 28
inline.NumDeleted: 21
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @_Z12u32Tof32Slowj(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %0, 23                          ; 2 uses
  %i.b = and i32 %0, -2147483648                  ; 3 uses
  %i.c = and i32 %0, 8388607                      ; 3 uses
  %trunc = trunc i32 %i.a to i8
  switch i8 %trunc, label %bb.e [
    i8 -1, label %bb.b
    i8 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %.not18 = icmp eq i32 %i.b, 0
  %i.e = select nsz i1 %.not18, float +inf, float -inf
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %.not16 = icmp eq i32 %i.b, 0
  %i.f = uitofp nsz nneg i32 %i.c to float
  %1 = tail call nsz float @ldexpf(float noundef %i.f, i32 noundef -149) #5 ; 2 uses
  br i1 %.not16, label %bb.g, label %2

2:                                                ; preds = %bb.d
  %3 = fneg nsz float %1
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.g = and i32 %i.a, 255
  %.not17 = icmp eq i32 %i.b, 0
  %i.h = or disjoint i32 %i.c, 8388608
  %i.i = uitofp nneg i32 %i.h to float
  %i.j = add nsw i32 %i.g, -150
  %4 = tail call nsz float @ldexpf(float noundef %i.i, i32 noundef %i.j) #5 ; 2 uses
  br i1 %.not17, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = fneg nsz float %4
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.b, %bb.f, %2, %bb.c
  %.0 = phi nsz float [ %i.e, %bb.c ], [ %1, %bb.d ], [ +qnan, %bb.b ], [ %3, %2 ], [ %i.k, %bb.f ], [ %4, %bb.e ]
  ret float %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @ldexpf(float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z12f32Tou32Slowf(float noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = tail call nsz noundef float @llvm.copysign.f32(float 1.000000e+00, float %0)
  %i.c = fcmp nsz oeq float %i.b, 1.000000e+00    ; 2 uses
  %i.d = select i1 %i.c, i32 0, i32 -2147483648   ; 6 uses
  %i.e = fcmp nsz oeq float %0, 0.000000e+00
  br i1 %i.e, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = fcmp uno float %0, 0.000000e+00
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = or disjoint i32 %i.d, 2143289344
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.h = tail call float @llvm.fabs.f32(float %0)
  %i.i = fcmp oeq float %i.h, +inf
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = or disjoint i32 %i.d, 2139095040
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !9
  %i.k = call nsz float @frexpf(float noundef %0, ptr noundef nonnull %i.a) #6
  %i.l = select nsz i1 %i.c, float f0x4B800000, float f0xCB800000
  %i.m = fmul nsz float %i.l, %i.k
  %i.n = tail call nsz noundef float @llvm.floor.f32(float %i.m)
  %i.o = fptoui float %i.n to i32                 ; 2 uses
  %i.p = load i32, ptr %i.a, align 4, !tbaa !9    ; 5 uses
  %i.q = icmp slt i32 %i.p, -125
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = icmp samesign ult i32 %i.p, -156
  %i.s = sub nuw nsw i32 -125, %i.p
  %i.t = lshr i32 %i.o, %i.s
  %i.u = select i1 %i.r, i32 0, i32 %i.t
  %i.v = or i32 %i.u, %i.d
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.w = icmp sgt i32 %i.p, 128
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = or disjoint i32 %i.d, 2139095040
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.y = shl i32 %i.p, 23
  %i.z = add i32 %i.y, 1056964608
  %i.aa = and i32 %i.o, 8388607
  %i.ab = or disjoint i32 %i.aa, %i.z
  %i.ac = or disjoint i32 %i.ab, %i.d
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %.0 = phi i32 [ %i.v, %bb.g ], [ %i.x, %bb.i ], [ %i.ac, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k, %bb.e, %bb.c
  %.1 = phi i32 [ %.0, %bb.k ], [ %i.g, %bb.c ], [ %i.j, %bb.e ], [ %i.d, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare float @frexpf(float noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 1, 3) i32 @_Z25getFloatSerializationTypev() local_unnamed_addr #0 {
bb.a:
  ret i32 2
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.copysign.f32(float, float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!6, !6, i64 0}
end_hunk_0
