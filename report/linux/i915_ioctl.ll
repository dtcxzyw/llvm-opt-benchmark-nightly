Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/i915_ioctl?download=true
inline.NumInlined: 11
inline.NumDeleted: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @i915_reg_read_ioctl(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1840       ; 8 uses
  %i.b = getelementptr i8, ptr %0, i64 1656
  %i.c = load i8, ptr %i.b, align 8
  %i.d = add i8 %i.c, -13
  %or.cond109 = icmp ult i8 %i.d, -9
  br i1 %or.cond109, label %.thread75, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8                ; 2 uses
  %i.f = and i64 %i.e, -8
  %i.g = icmp eq i64 %i.f, 9048
  br i1 %i.g, label %bb.c, label %.thread75

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 3176       ; 2 uses
  %i.i = tail call ptr @intel_runtime_pm_get(ptr noundef %i.h) #2
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.thread75, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %3 = and i64 %i.e, 7
  %i.k = getelementptr i8, ptr %1, i64 8
  %i.l = getelementptr i8, ptr %0, i64 1872       ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 1876       ; 3 uses
  switch i64 %3, label %.thread75.sink.split [
    i64 1, label %__raw_uncore_read32.exit26.us.us.i.us.preheader
    i64 0, label %.lr.ph.split.split.us
  ]

__raw_uncore_read32.exit26.us.us.i.us.preheader:  ; preds = %.lr.ph
  %i.n = tail call i32 @intel_uncore_forcewake_for_reg(ptr noundef %i.a, i32 9048, i32 noundef 1) #2
  %i.o = tail call i32 @intel_uncore_forcewake_for_reg(ptr noundef %i.a, i32 9052, i32 noundef 1) #2
  %i.p = or i32 %i.o, %i.n                        ; 2 uses
  %i.q = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.l) #2
  tail call void @intel_uncore_forcewake_get__locked(ptr noundef %i.a, i32 noundef %i.p) #2
  %i.r = load i32, ptr %i.m, align 4
  %i.s = add i32 %i.r, 9052
  %i.t = load ptr, ptr %i.a, align 8
  %i.u = zext i32 %i.s to i64
  %i.v = getelementptr i8, ptr %i.t, i64 %i.u
  %i.w = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.v) #3, !srcloc !12
  br label %__raw_uncore_read32.exit26.us.us.i.us

__raw_uncore_read32.exit26.us.us.i.us:            ; preds = %__raw_uncore_read32.exit26.us.us.i.us.preheader, %__raw_uncore_read32.exit26.us.us.i.us
  %.022.us.us.i.us = phi i32 [ %i.aj, %__raw_uncore_read32.exit26.us.us.i.us ], [ 0, %__raw_uncore_read32.exit26.us.us.i.us.preheader ] ; 2 uses
  %.0.us.us.i.us = phi i32 [ %i.ai, %__raw_uncore_read32.exit26.us.us.i.us ], [ %i.w, %__raw_uncore_read32.exit26.us.us.i.us.preheader ]
  %i.x = load i32, ptr %i.m, align 4
  %i.y = add i32 %i.x, 9048
  %i.z = load ptr, ptr %i.a, align 8
  %i.aa = zext i32 %i.y to i64
  %i.ab = getelementptr i8, ptr %i.z, i64 %i.aa
  %i.ac = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ab) #3, !srcloc !12
  %i.ad = load i32, ptr %i.m, align 4
  %i.ae = add i32 %i.ad, 9052
  %i.af = load ptr, ptr %i.a, align 8
  %i.ag = zext i32 %i.ae to i64
  %i.ah = getelementptr i8, ptr %i.af, i64 %i.ag
  %i.ai = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ah) #3, !srcloc !12 ; 3 uses
  %.not.us.us.i.us = icmp ne i32 %i.ai, %.0.us.us.i.us
  %i.aj = add nuw nsw i32 %.022.us.us.i.us, 1
  %i.ak = icmp samesign ult i32 %.022.us.us.i.us, 2
  %or.cond.us.us.i.us = select i1 %.not.us.us.i.us, i1 %i.ak, i1 false
  br i1 %or.cond.us.us.i.us, label %__raw_uncore_read32.exit26.us.us.i.us, label %intel_uncore_read64_2x32.exit.us, !llvm.loop !10

intel_uncore_read64_2x32.exit.us:                 ; preds = %__raw_uncore_read32.exit26.us.us.i.us
  tail call void @intel_uncore_forcewake_put__locked(ptr noundef %i.a, i32 noundef %i.p) #2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.l, i64 noundef %i.q) #2
  %i.al = zext i32 %i.ai to i64
  %i.am = shl nuw i64 %i.al, 32
  %i.an = zext i32 %i.ac to i64
  %i.ao = or disjoint i64 %i.am, %i.an
  br label %.thread75.sink.split.sink.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph
  %i.ap = getelementptr i8, ptr %0, i64 1992
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call i64 %i.aq(ptr noundef %i.a, i32 9048, i1 noundef zeroext true) #2, !inline_history !11
  br label %.thread75.sink.split.sink.split

.thread75.sink.split.sink.split:                  ; preds = %.lr.ph.split.split.us, %intel_uncore_read64_2x32.exit.us
  %.sink = phi i64 [ %i.ao, %intel_uncore_read64_2x32.exit.us ], [ %i.ar, %.lr.ph.split.split.us ]
  store i64 %.sink, ptr %i.k, align 8
  br label %.thread75.sink.split

.thread75.sink.split:                             ; preds = %.thread75.sink.split.sink.split, %.lr.ph
  %.066.ph = phi i32 [ -22, %.lr.ph ], [ 0, %.thread75.sink.split.sink.split ]
  tail call void @intel_runtime_pm_put_unchecked(ptr noundef %i.h) #2
  br label %.thread75

.thread75:                                        ; preds = %.thread75.sink.split, %bb.b, %bb.a, %bb.c
  %.066 = phi i32 [ -22, %bb.b ], [ 0, %bb.c ], [ -22, %bb.a ], [ %.066.ph, %.thread75.sink.split ]
  ret i32 %.066
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_runtime_pm_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_uncore_forcewake_for_reg(ptr noundef, i32, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_uncore_forcewake_get__locked(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_uncore_forcewake_put__locked(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_runtime_pm_put_unchecked(ptr noundef) local_unnamed_addr #1

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { noredzone nounwind "no-builtin-wcslen" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = distinct !{!10, !13}
!11 = distinct !{null}
!12 = !{i64 2155971563}
!13 = !{!"llvm.loop.mustprogress"}
end_hunk_0
