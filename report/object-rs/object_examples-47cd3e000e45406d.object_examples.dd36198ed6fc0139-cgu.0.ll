Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/object-rs/original/object_examples-47cd3e000e45406d.object_examples.dd36198ed6fc0139-cgu.0?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define noundef zeroext i1 @_RNvNtCsiZvaoMVVkxx_15object_examples7objdump11find_member(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtCsexYYUdYSQU6_5alloc6string6StringbEENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCsiZvaoMVVkxx_15object_examples7objdump11find_member0EB2q_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.idx = shl nuw nsw i64 %1, 5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RNCNvNtCsiZvaoMVVkxx_15object_examples7objdump11find_member0B5_.exit.thread.i
  %.sroa.02.010.i = phi i64 [ %i.i, %_RNCNvNtCsiZvaoMVVkxx_15object_examples7objdump11find_member0B5_.exit.thread.i ], [ 0, %bb.b ] ; 3 uses
  %i.c = phi ptr [ %i.d, %_RNCNvNtCsiZvaoMVVkxx_15object_examples7objdump11find_member0B5_.exit.thread.i ], [ %0, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %.val7.i = load i64, ptr %i.e, align 8, !noalias !12, !noundef !8
  %i.f = icmp eq i64 %.val7.i, %3
  br i1 %i.f, label %_RNCNvNtCsiZvaoMVVkxx_15object_examples7objdump11find_member0B5_.exit.i, label %_RNCNvNtCsiZvaoMVVkxx_15object_examples7objdump11find_member0B5_.exit.thread.i

_RNCNvNtCsiZvaoMVVkxx_15object_examples7objdump11find_member0B5_.exit.i: ; preds = %.lr.ph.i
  %i.g = getelementptr i8, ptr %i.c, i64 8
  %.val6.i = load ptr, ptr %i.g, align 8, !noalias !12, !nonnull !8, !noundef !8
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val6.i, ptr nonnull %2, i64 %3), !noalias !12
  %i.h = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.h, label %bb.c, label %_RNCNvNtCsiZvaoMVVkxx_15object_examples7objdump11find_member0B5_.exit.thread.i

_RNCNvNtCsiZvaoMVVkxx_15object_examples7objdump11find_member0B5_.exit.thread.i: ; preds = %_RNCNvNtCsiZvaoMVVkxx_15object_examples7objdump11find_member0B5_.exit.i, %.lr.ph.i
  %i.i = add nuw nsw i64 %.sroa.02.010.i, 1
  %i.j = icmp eq ptr %i.d, %i.b
  br i1 %i.j, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtCsexYYUdYSQU6_5alloc6string6StringbEENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCsiZvaoMVVkxx_15object_examples7objdump11find_member0EB2q_.exit.thread, label %.lr.ph.i

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtCsexYYUdYSQU6_5alloc6string6StringbEENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCsiZvaoMVVkxx_15object_examples7objdump11find_member0EB2q_.exit.thread: ; preds = %_RNCNvNtCsiZvaoMVVkxx_15object_examples7objdump11find_member0B5_.exit.thread.i, %bb.c, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ true, %bb.c ], [ false, %_RNCNvNtCsiZvaoMVVkxx_15object_examples7objdump11find_member0B5_.exit.thread.i ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %_RNCNvNtCsiZvaoMVVkxx_15object_examples7objdump11find_member0B5_.exit.i
  %i.k = icmp samesign ult i64 %.sroa.02.010.i, %1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.02.010.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i8 1, ptr %i.m, align 8
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtCsexYYUdYSQU6_5alloc6string6StringbEENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCsiZvaoMVVkxx_15object_examples7objdump11find_member0EB2q_.exit.thread
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #3

attributes #0 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #3 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!8 = !{}
!9 = distinct !{!9, i1 false, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtCsexYYUdYSQU6_5alloc6string6StringbEENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCsiZvaoMVVkxx_15object_examples7objdump11find_member0EB2q_"}
!10 = distinct !{!10, !9, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtCsexYYUdYSQU6_5alloc6string6StringbEENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCsiZvaoMVVkxx_15object_examples7objdump11find_member0EB2q_: argument 0"}
!11 = distinct !{!11, !9, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtCsexYYUdYSQU6_5alloc6string6StringbEENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCsiZvaoMVVkxx_15object_examples7objdump11find_member0EB2q_: argument 1"}
!12 = !{!10, !11}
end_hunk_0
