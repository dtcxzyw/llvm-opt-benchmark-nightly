inline.NumInlined: 7
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@parse_topology_leaf.__already_done = internal unnamed_addr global i1 false, section ".data..once", align 1
@.str = private unnamed_addr constant [90 x i8] c"\014[Firmware Bug]: CPUID leaf 0x%x subleaf 0 has shift level 0 but %u CPUs. Fixing it up.\0A\00", align 1
@topo_domain_map_0b_1f = internal unnamed_addr constant [7 x i32] [i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5], align 16
@topo_domain_map_80000026 = internal unnamed_addr constant [5 x i32] [i32 0, i32 0, i32 1, i32 3, i32 4], align 16
@topo_subleaf.__already_done = internal unnamed_addr global i1 false, section ".data..once", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"\013Topology: leaf 0x%x:%d Unknown domain type %u\0A\00", align 1
@topo_subleaf.__already_done.2 = internal unnamed_addr global i1 false, section ".data..once", align 1
@.str.3 = private unnamed_addr constant [72 x i8] c"\014[Firmware Bug]: CPUID leaf 0x%x subleaf %d APIC ID mismatch %x != %x\0A\00", align 1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef zeroext i1 @cpu_parse_topology_ext(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 40
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp sgt i32 %i.c, 30
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc zeroext i1 @parse_topology_leaf(ptr noundef %0, i32 noundef 31) #3, !srcloc !10
  br i1 %i.e, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.f = phi ptr [ %.pre, %._crit_edge ], [ %i.a, %bb.a ] ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 36
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp ugt i32 %i.h, -2147483611
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = tail call fastcc zeroext i1 @parse_topology_leaf(ptr noundef %0, i32 noundef -2147483610) #3, !srcloc !11
  br i1 %i.j, label %bb.g, label %._crit_edge7

._crit_edge7:                                     ; preds = %bb.d
  %.pre8 = load ptr, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge7, %bb.c
  %i.k = phi ptr [ %.pre8, %._crit_edge7 ], [ %i.f, %bb.c ]
  %i.l = getelementptr i8, ptr %i.k, i64 40
  %i.m = load i32, ptr %i.l, align 8
  %i.n = icmp sgt i32 %i.m, 10
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = tail call fastcc zeroext i1 @parse_topology_leaf(ptr noundef %0, i32 noundef 11) #3, !srcloc !12
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.b
  %.0 = phi i1 [ true, %bb.d ], [ true, %bb.b ], [ false, %bb.e ], [ %i.o, %bb.f ]
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noundef zeroext i1 @parse_topology_leaf(ptr noundef %0, i32 noundef range(i32 -2147483610, 32) %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.p, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %.1, %bb.p ]      ; 2 uses
  %.019 = phi i32 [ 0, %bb.a ], [ %i.t, %bb.p ]   ; 5 uses
  switch i32 %1, label %.thread [
    i32 11, label %bb.e
    i32 31, label %bb.c
    i32 -2147483610, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.031.i = phi ptr [ @topo_domain_map_80000026, %bb.d ], [ @topo_domain_map_0b_1f, %bb.c ], [ @topo_domain_map_0b_1f, %bb.b ]
  %.029.i = phi i32 [ 5, %bb.d ], [ 7, %bb.c ], [ 3, %bb.b ]
  %i.a = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},0,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -2147483610, 32) %1, i32 %.019) #4, !srcloc !13 ; 4 uses
  %i.b = extractvalue { i32, i32, i32, i32 } %i.a, 0
  %i.c = extractvalue { i32, i32, i32, i32 } %i.a, 1
  %i.d = extractvalue { i32, i32, i32, i32 } %i.a, 3 ; 3 uses
  %i.e = and i32 %i.c, 65535                      ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = extractvalue { i32, i32, i32, i32 } %i.a, 2
  %i.g = lshr i32 %i.f, 8
  %i.h = and i32 %i.g, 255                        ; 4 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not35.i = icmp samesign ult i32 %i.h, %.029.i
  br i1 %.not35.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.b.i = load i1, ptr @topo_subleaf.__already_done, align 1
  br i1 %.b.i, label %.critedge.i, label %bb.i, !prof !14

bb.i:                                             ; preds = %bb.h
  store i1 true, ptr @topo_subleaf.__already_done, align 1
  %i.j = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef range(i32 -2147483610, 32) %1, i32 noundef %.019, i32 noundef %i.h) #5 ; 0 uses
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.i, %bb.h
  %i.k = add i32 %.0, 1
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.l = zext nneg i32 %i.h to i64
  %i.m = getelementptr [4 x i8], ptr %.031.i, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge.i
  %.1 = phi i32 [ %i.n, %bb.j ], [ %.0, %.critedge.i ]
  %.028.i = phi i32 [ %i.n, %bb.j ], [ %i.k, %.critedge.i ] ; 2 uses
  %.not36.i = icmp eq i32 %.028.i, 0
  %i.o = load ptr, ptr %0, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 228      ; 2 uses
  br i1 %.not36.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 %i.d, ptr %i.p, align 4
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.q = load i32, ptr %i.p, align 4              ; 2 uses
  %.not37.i = icmp eq i32 %i.q, %i.d
  br i1 %.not37.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.b34.i = load i1, ptr @topo_subleaf.__already_done.2, align 1
  br i1 %.b34.i, label %bb.p, label %bb.o, !prof !14

bb.o:                                             ; preds = %bb.n
  store i1 true, ptr @topo_subleaf.__already_done.2, align 1
  %i.r = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef range(i32 -2147483610, 32) %1, i32 noundef %.019, i32 noundef %i.q, i32 noundef %i.d) #5 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %i.s = and i32 %i.b, 31
  tail call void @topology_set_dom(ptr noundef %0, i32 noundef %.028.i, i32 noundef %i.s, i32 noundef %i.e) #6
  %i.t = add i32 %.019, 1
  br label %bb.b, !llvm.loop !15

bb.q:                                             ; preds = %bb.f, %bb.e
  %.not.not = icmp eq i32 %.019, 0
  br i1 %.not.not, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.u = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.v = load i32, ptr %i.u, align 8
  %.not22 = icmp eq i32 %i.v, 0
  br i1 %.not22, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.w = getelementptr i8, ptr %0, i64 36
  %i.x = load i32, ptr %i.w, align 4              ; 3 uses
  %i.y = icmp ugt i32 %i.x, 1
  br i1 %i.y, label %get_count_order.exit, label %bb.u

get_count_order.exit:                             ; preds = %bb.s
  %i.z = add i32 %i.x, -1
  %i.aa = tail call i32 asm "bsrl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 1, -1) %i.z, i32 -1) #7, !srcloc !17
  %i.ab = add i32 %i.aa, 1
  %.b = load i1, ptr @parse_topology_leaf.__already_done, align 1
  br i1 %.b, label %.critedge, label %bb.t, !prof !14

bb.t:                                             ; preds = %get_count_order.exit
  store i1 true, ptr @parse_topology_leaf.__already_done, align 1
  %i.ac = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %1, i32 noundef %i.x) #5 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %get_count_order.exit, %bb.t
  store i32 %i.ab, ptr %i.u, align 8
  br label %bb.u

bb.u:                                             ; preds = %.critedge, %bb.s, %bb.r
  %i.ad = load ptr, ptr %0, align 8
  %i.ae = getelementptr i8, ptr %i.ad, i64 62     ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.ae, i32 64, ptr elementtype(i8) %i.ae) #4, !srcloc !18
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.q, %bb.u
  %.not32 = phi i1 [ true, %bb.u ], [ false, %bb.q ], [ false, %bb.b ]
  ret i1 %.not32
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @topology_set_dom(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { noredzone "no-builtin-wcslen" }
attributes #4 = { nounwind }
attributes #5 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #6 = { noredzone nounwind "no-builtin-wcslen" }
attributes #7 = { nounwind memory(none) }

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
!10 = !{i64 4007}
!11 = !{i64 4149}
!12 = !{i64 4299}
!13 = !{i64 8051253}
!14 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{i64 980708}
!18 = !{i64 2148467596, i64 2148467635, i64 2148467656, i64 2148467693, i64 2148467716, i64 2148467587}
end_hunk_0
