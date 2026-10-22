Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/dumpstack_64?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.estack_pages = type { i32, i16, i16 }

@.str = private unnamed_addr constant [5 x i8] c"TASK\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"IRQ\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"SOFTIRQ\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"ENTRY_TRAMPOLINE\00", align 1
@exception_stack_names = internal unnamed_addr constant [6 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], align 16
@get_stack_info.__already_done = internal unnamed_addr global i1 false, section ".data..once", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"\014WARNING: stack recursion on stack type %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"#DF\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"NMI\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"#DB\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"#MC\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"#VC\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"#VC2\00", align 1
@current_task = external dso_local global ptr, section ".data..percpu..hot..current_task", align 8
@cea_exception_stacks = external dso_local global ptr, section ".data..percpu", align 8
@estack_pages = internal unnamed_addr constant [19 x %struct.estack_pages] [%struct.estack_pages zeroinitializer, %struct.estack_pages { i32 4096, i16 8192, i16 5 }, %struct.estack_pages { i32 4096, i16 8192, i16 5 }, %struct.estack_pages zeroinitializer, %struct.estack_pages { i32 16384, i16 8192, i16 6 }, %struct.estack_pages { i32 16384, i16 8192, i16 6 }, %struct.estack_pages zeroinitializer, %struct.estack_pages { i32 28672, i16 8192, i16 7 }, %struct.estack_pages { i32 28672, i16 8192, i16 7 }, %struct.estack_pages zeroinitializer, %struct.estack_pages { i32 40960, i16 8192, i16 8 }, %struct.estack_pages { i32 40960, i16 8192, i16 8 }, %struct.estack_pages zeroinitializer, %struct.estack_pages { i32 53248, i16 8192, i16 9 }, %struct.estack_pages { i32 53248, i16 8192, i16 9 }, %struct.estack_pages zeroinitializer, %struct.estack_pages { i32 65536, i16 8192, i16 10 }, %struct.estack_pages { i32 65536, i16 8192, i16 10 }, %struct.estack_pages zeroinitializer], align 64
@hardirq_stack_ptr = external dso_local global ptr, section ".data..percpu..hot..hardirq_stack_ptr", align 8

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local ptr @stack_type_name(i32 noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  switch i32 %0, label %bb.e [
    i32 1, label %bb.g
    i32 2, label %bb.b
    i32 3, label %bb.c
    i32 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.a = add i32 %0, -5
  %or.cond = icmp ult i32 %i.a, 6
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr [8 x i8], ptr @exception_stack_names, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -40
  %i.e = load ptr, ptr %i.d, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.a, %bb.f, %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ @.str, %bb.a ], [ @.str.1, %bb.b ], [ @.str.2, %bb.c ], [ @.str.3, %bb.d ], [ %i.e, %bb.f ], [ null, %bb.e ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong
define dso_local zeroext i1 @get_stack_info_noinstr(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 section ".noinstr.text" align 16 prefalign(16) {
bb.a:
  %i.a = tail call zeroext i1 @in_task_stack(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #6, !srcloc !10
  %i.c = inttoptr i64 %i.b to ptr
  %.not = icmp eq ptr %1, %i.c
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.e = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) @cea_exception_stacks) #7, !srcloc !11 ; 5 uses
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp ule i64 %i.e, %i.d
  %i.g = add i64 %i.e, 77824
  %.not32.i = icmp ugt i64 %i.g, %i.d
  %or.cond.i = and i1 %i.f, %.not32.i
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = sub nuw i64 %i.d, %i.e
  %i.i = lshr i64 %i.h, 12
  %i.j = and i64 %i.i, 4294967295
  %3 = getelementptr [8 x i8], ptr @estack_pages, i64 %i.j ; 3 uses
  %4 = getelementptr i8, ptr %3, i64 4
  %5 = load i16, ptr %4, align 4                  ; 2 uses
  %.not33.i = icmp eq i16 %5, 0
  br i1 %.not33.i, label %bb.f, label %in_exception_stack.exit

in_exception_stack.exit:                          ; preds = %bb.e
  %i.k = load i32, ptr %3, align 8
  %i.l = zext i32 %i.k to i64
  %i.m = add i64 %i.e, %i.l                       ; 2 uses
  %i.n = zext i16 %5 to i64
  %i.o = add i64 %i.m, %i.n
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = getelementptr i8, ptr %3, i64 6
  %i.r = load i16, ptr %i.q, align 2
  %i.s = zext i16 %i.r to i32
  store i32 %i.s, ptr %2, align 8
  %i.t = inttoptr i64 %i.m to ptr
  %i.u = getelementptr i8, ptr %2, i64 8
  store ptr %i.t, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %2, i64 16
  store ptr %i.p, ptr %i.v, align 8
  %i.w = getelementptr i8, ptr %i.p, i64 -16
  %i.x = load i64, ptr %i.w, align 8
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr i8, ptr %2, i64 24
  store ptr %i.y, ptr %i.z, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %i.aa = tail call i64 asm sideeffect "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) @hardirq_stack_ptr) #8, !srcloc !12
  %i.ab = inttoptr i64 %i.aa to ptr               ; 3 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 8      ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ab, i64 -16376 ; 2 uses
  %i.ae = icmp uge ptr %0, %i.ad
  %.not.i11 = icmp ult ptr %0, %i.ac
  %or.cond.i12 = and i1 %i.ae, %.not.i11
  br i1 %or.cond.i12, label %in_irq_stack.exit.thread, label %in_irq_stack.exit

in_irq_stack.exit.thread:                         ; preds = %bb.f
  store i32 2, ptr %2, align 8
  %i.af = getelementptr i8, ptr %2, i64 8
  store ptr %i.ad, ptr %i.af, align 8
  %i.ag = getelementptr i8, ptr %2, i64 16
  store ptr %i.ac, ptr %i.ag, align 8
  %i.ah = load i64, ptr %i.ab, align 8
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = getelementptr i8, ptr %2, i64 24
  store ptr %i.ai, ptr %i.aj, align 8
  br label %bb.g

in_irq_stack.exit:                                ; preds = %bb.f
  %i.ak = tail call zeroext i1 @in_entry_stack(ptr noundef %0, ptr noundef %2) #5
  br label %bb.g

bb.g:                                             ; preds = %in_irq_stack.exit.thread, %in_exception_stack.exit, %in_irq_stack.exit, %bb.b, %bb.a
  %.0 = phi i1 [ true, %in_irq_stack.exit.thread ], [ true, %bb.a ], [ false, %bb.b ], [ true, %in_exception_stack.exit ], [ %i.ak, %in_irq_stack.exit ]
  ret i1 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @in_task_stack(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @in_entry_stack(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @get_stack_info(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #6, !srcloc !10
  %i.b = inttoptr i64 %i.a to ptr
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ %1, %bb.a ]   ; 2 uses
  %.not22 = icmp eq ptr %0, null
  br i1 %.not22, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call zeroext i1 @get_stack_info_noinstr(ptr noundef nonnull %0, ptr noundef %i.c, ptr noundef %2) #9
  br i1 %i.d, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %.not23 = icmp eq ptr %3, null
  br i1 %.not23, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = load i64, ptr %3, align 8                ; 2 uses
  %i.f = load i32, ptr %2, align 8                ; 2 uses
  %i.g = zext nneg i32 %i.f to i64
  %i.h = shl nuw i64 1, %i.g                      ; 2 uses
  %i.i = and i64 %i.h, %i.e
  %.not24 = icmp eq i64 %i.i, 0
  br i1 %.not24, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #6, !srcloc !10
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = icmp eq ptr %i.c, %i.k
  br i1 %i.l, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %.b = load i1, ptr @get_stack_info.__already_done, align 1
  br i1 %.b, label %.critedge, label %bb.i, !prof !13

bb.i:                                             ; preds = %bb.h
  store i1 true, ptr @get_stack_info.__already_done, align 1
  %i.m = tail call i32 (ptr, ...) @_printk_deferred(ptr noundef @.str.4, i32 noundef %i.f) #10 ; 0 uses
  br label %.critedge

bb.j:                                             ; preds = %bb.f
  %i.n = or i64 %i.h, %i.e
  store i64 %i.n, ptr %3, align 8
  br label %bb.k

.critedge:                                        ; preds = %bb.i, %bb.h, %bb.g, %bb.d, %bb.c
  store i32 0, ptr %2, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %.critedge
  %.0 = phi i32 [ -22, %.critedge ], [ 0, %bb.j ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk_deferred(ptr noundef, ...) local_unnamed_addr #4

attributes #0 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #2 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone nounwind "no-builtin-wcslen" }
attributes #6 = { nounwind memory(none) }
attributes #7 = { nounwind memory(read) }
attributes #8 = { nounwind }
attributes #9 = { noredzone "no-builtin-wcslen" }
attributes #10 = { cold noredzone nounwind "no-builtin-wcslen" }

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
!10 = !{i64 2149894922}
!11 = !{i64 2156543717}
!12 = !{i64 2156548131}
!13 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_0
