Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_random?download=true
inline.NumInlined: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@SDL_rand_state = internal unnamed_addr global i64 0, align 8
@SDL_rand_initialized = internal unnamed_addr global i1 false, align 1

; Function Attrs: nounwind uwtable
define hidden void @SDL_srand_REAL(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @SDL_GetPerformanceCounter_REAL() #3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %0, %bb.a ], [ %i.a, %bb.b ]
  store i64 %.0, ptr @SDL_rand_state, align 8
  store i1 true, ptr @SDL_rand_initialized, align 1
  ret void
}

declare i64 @SDL_GetPerformanceCounter_REAL() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2147483647) i32 @SDL_rand_REAL(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @SDL_rand_initialized, align 1
  br i1 %.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @SDL_GetPerformanceCounter_REAL() #3
  store i64 %i.a, ptr @SDL_rand_state, align 8
  store i1 true, ptr @SDL_rand_initialized, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = icmp slt i32 %0, 0
  br i1 %i.b, label %SDL_rand_r_REAL.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i64, ptr @SDL_rand_state, align 8
  %i.d = mul i64 %i.c, 4280078389
  %i.e = add i64 %i.d, 5                          ; 2 uses
  store i64 %i.e, ptr @SDL_rand_state, align 8
  %i.f = lshr i64 %i.e, 32
  %1 = zext nneg i32 %0 to i64
  %2 = mul nuw nsw i64 %i.f, %1
  %3 = lshr i64 %2, 32
  %4 = trunc nuw nsw i64 %3 to i32
  br label %SDL_rand_r_REAL.exit

SDL_rand_r_REAL.exit:                             ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %4, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 0, 2147483647) i32 @SDL_rand_r_REAL(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_rand_bits_r_REAL.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load i64, ptr %0, align 8
  %i.c = mul i64 %i.b, 4280078389
  %i.d = add i64 %i.c, 5                          ; 2 uses
  store i64 %i.d, ptr %0, align 8
  %i.e = lshr i64 %i.d, 32
  br label %SDL_rand_bits_r_REAL.exit

SDL_rand_bits_r_REAL.exit:                        ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.e, %bb.c ], [ 0, %bb.b ]
  %2 = zext nneg i32 %1 to i64
  %3 = mul nuw nsw i64 %.0.i, %2
  %4 = lshr i64 %3, 32
  %5 = trunc nuw nsw i64 %4 to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %SDL_rand_bits_r_REAL.exit
  %.0 = phi i32 [ %5, %SDL_rand_bits_r_REAL.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden float @SDL_randf_REAL() local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @SDL_rand_initialized, align 1
  br i1 %.b, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre = load i64, ptr @SDL_rand_state, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @SDL_GetPerformanceCounter_REAL() #3
  store i1 true, ptr @SDL_rand_initialized, align 1
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.b = phi i64 [ %.pre, %._crit_edge ], [ %i.a, %bb.b ]
  %i.c = mul i64 %i.b, 4280078389
  %i.d = add i64 %i.c, 5                          ; 2 uses
  store i64 %i.d, ptr @SDL_rand_state, align 8
  %sum.shift.i = lshr i64 %i.d, 40
  %i.e = trunc nuw nsw i64 %sum.shift.i to i32
  %i.f = uitofp nneg i32 %i.e to float
  %i.g = fmul nnan float %i.f, f0x33800000
  ret float %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden float @SDL_randf_r_REAL(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_rand_bits_r_REAL.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %0, align 8
  %i.b = mul i64 %i.a, 4280078389
  %i.c = add i64 %i.b, 5                          ; 2 uses
  store i64 %i.c, ptr %0, align 8
  %sum.shift = lshr i64 %i.c, 40
  %i.d = trunc nuw nsw i64 %sum.shift to i32
  %i.e = uitofp nneg i32 %i.d to float
  %i.f = fmul nnan float %i.e, f0x33800000
  br label %SDL_rand_bits_r_REAL.exit

SDL_rand_bits_r_REAL.exit:                        ; preds = %bb.a, %bb.b
  %.0.i = phi float [ %i.f, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret float %.0.i
}

; Function Attrs: nounwind uwtable
define hidden i32 @SDL_rand_bits_REAL() local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @SDL_rand_initialized, align 1
  br i1 %.b, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre = load i64, ptr @SDL_rand_state, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @SDL_GetPerformanceCounter_REAL() #3
  store i1 true, ptr @SDL_rand_initialized, align 1
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.b = phi i64 [ %.pre, %._crit_edge ], [ %i.a, %bb.b ]
  %i.c = mul i64 %i.b, 4280078389
  %i.d = add i64 %i.c, 5                          ; 2 uses
  store i64 %i.d, ptr @SDL_rand_state, align 8
  %i.e = lshr i64 %i.d, 32
  %i.f = trunc nuw i64 %i.e to i32
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden i32 @SDL_rand_bits_r_REAL(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %0, align 8
  %i.b = mul i64 %i.a, 4280078389
  %i.c = add i64 %i.b, 5                          ; 2 uses
  store i64 %i.c, ptr %0, align 8
  %i.d = lshr i64 %i.c, 32
  %i.e = trunc nuw i64 %i.d to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
end_hunk_0
