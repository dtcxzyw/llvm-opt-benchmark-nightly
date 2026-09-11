Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/dma-resv?download=true
inline.NumInlined: 115
inline.NumDeleted: 46
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop", target_cpu: "x86-64")
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_reservation_ww_class: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad reservation_ww_class ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_resv_init: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad dma_resv_init ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_resv_fini: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad dma_resv_fini ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_resv_reserve_fences: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad dma_resv_reserve_fences ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_resv_add_fence: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad dma_resv_add_fence ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_resv_replace_fences: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad dma_resv_replace_fences ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_resv_iter_first_unlocked: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad dma_resv_iter_first_unlocked ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_resv_iter_next_unlocked: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad dma_resv_iter_next_unlocked ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_resv_iter_first: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad dma_resv_iter_first ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_resv_iter_next: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad dma_resv_iter_next ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_resv_copy_fences: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad dma_resv_copy_fences ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_resv_get_fences: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad dma_resv_get_fences ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_resv_get_singleton: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad dma_resv_get_singleton ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_resv_wait_timeout: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad dma_resv_wait_timeout ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_resv_set_deadline: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad dma_resv_set_deadline ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_resv_test_signaled: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad dma_resv_test_signaled ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_resv_describe: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad dma_resv_describe ; .previous"

%struct.atomic64_t = type { i64 }
%struct.dma_fence_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_resv_iter = type { ptr, i32, ptr, i32, i32, ptr, i32, i8 }

@.str = private unnamed_addr constant [29 x i8] c"reservation_ww_class_acquire\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"reservation_ww_class_mutex\00", align 1
@reservation_ww_class = dso_local global { %struct.atomic64_t, ptr, ptr, i32, [4 x i8] } { %struct.atomic64_t zeroinitializer, ptr @.str, ptr @.str.1, i32 1, [4 x i8] zeroinitializer }, align 8
@__UNIQUE_ID_addressable_reservation_ww_class_499 = internal global ptr @reservation_ww_class, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_dma_resv_init_505 = internal global ptr @dma_resv_init, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_dma_resv_fini_506 = internal global ptr @dma_resv_fini, section ".discard.addressable", align 8
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"drivers/dma-buf/dma-resv.c\00", align 1
@__UNIQUE_ID_addressable_dma_resv_reserve_fences_522 = internal global ptr @dma_resv_reserve_fences, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_dma_resv_add_fence_526 = internal global ptr @dma_resv_add_fence, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_dma_resv_replace_fences_527 = internal global ptr @dma_resv_replace_fences, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_dma_resv_iter_first_unlocked_528 = internal global ptr @dma_resv_iter_first_unlocked, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_dma_resv_iter_next_unlocked_529 = internal global ptr @dma_resv_iter_next_unlocked, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_dma_resv_iter_first_530 = internal global ptr @dma_resv_iter_first, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_dma_resv_iter_next_531 = internal global ptr @dma_resv_iter_next, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_dma_resv_copy_fences_535 = internal global ptr @dma_resv_copy_fences, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_dma_resv_get_fences_536 = internal global ptr @dma_resv_get_fences, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_dma_resv_get_singleton_537 = internal global ptr @dma_resv_get_singleton, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_dma_resv_wait_timeout_538 = internal global ptr @dma_resv_wait_timeout, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_dma_resv_set_deadline_539 = internal global ptr @dma_resv_set_deadline, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_dma_resv_test_signaled_540 = internal global ptr @dma_resv_test_signaled, section ".discard.addressable", align 8
@dma_resv_describe.usage = internal unnamed_addr constant [4 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], align 16
@.str.4 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"bookkeep\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"\09%s fence:\00", align 1
@__UNIQUE_ID_addressable_dma_resv_describe_541 = internal global ptr @dma_resv_describe, section ".discard.addressable", align 8
@dma_fence_array_ops = external dso_local constant %struct.dma_fence_ops, align 8
@dma_fence_chain_ops = external dso_local constant %struct.dma_fence_ops, align 8
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_addressable_dma_resv_add_fence_526, ptr @__UNIQUE_ID_addressable_dma_resv_copy_fences_535, ptr @__UNIQUE_ID_addressable_dma_resv_describe_541, ptr @__UNIQUE_ID_addressable_dma_resv_fini_506, ptr @__UNIQUE_ID_addressable_dma_resv_get_fences_536, ptr @__UNIQUE_ID_addressable_dma_resv_get_singleton_537, ptr @__UNIQUE_ID_addressable_dma_resv_init_505, ptr @__UNIQUE_ID_addressable_dma_resv_iter_first_530, ptr @__UNIQUE_ID_addressable_dma_resv_iter_first_unlocked_528, ptr @__UNIQUE_ID_addressable_dma_resv_iter_next_531, ptr @__UNIQUE_ID_addressable_dma_resv_iter_next_unlocked_529, ptr @__UNIQUE_ID_addressable_dma_resv_replace_fences_527, ptr @__UNIQUE_ID_addressable_dma_resv_reserve_fences_522, ptr @__UNIQUE_ID_addressable_dma_resv_set_deadline_539, ptr @__UNIQUE_ID_addressable_dma_resv_test_signaled_540, ptr @__UNIQUE_ID_addressable_dma_resv_wait_timeout_538, ptr @__UNIQUE_ID_addressable_reservation_ww_class_499], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @dma_resv_init(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  tail call void @mutex_init_generic(ptr noundef %0) #9
  %i.a = getelementptr i8, ptr %0, i64 24
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 32
  store volatile ptr null, ptr %i.b, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @dma_resv_fini(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %dma_resv_list_free.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 16       ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %.not11.i = icmp eq i32 %i.d, 0
  br i1 %.not11.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.e = getelementptr i8, ptr %i.b, i64 24
  br label %bb.b

bb.b:                                             ; preds = %dma_fence_put.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %dma_fence_put.exit.i ] ; 2 uses
  %i.f = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.g = load volatile ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = and i64 %i.h, -4                         ; 2 uses
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %dma_fence_put.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr i8, ptr %i.j, i64 56       ; 4 uses
  %i.l = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.k, i32 -1, ptr elementtype(i32) %i.k) #10, !srcloc !14 ; 2 uses
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = icmp slt i32 %i.l, 1
  br i1 %i.n, label %bb.e, label %dma_fence_put.exit.i, !prof !15

bb.e:                                             ; preds = %bb.d
  tail call void @refcount_warn_saturate(ptr noundef %i.k, i32 noundef 3) #9
  br label %dma_fence_put.exit.i

bb.f:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !16
  tail call void @dma_fence_release(ptr noundef %i.k) #9
  br label %dma_fence_put.exit.i

dma_fence_put.exit.i:                             ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.o = load i32, ptr %i.c, align 8
  %i.p = zext i32 %i.o to i64
  %i.q = icmp samesign ult i64 %indvars.iv.next.i, %i.p
  br i1 %i.q, label %bb.b, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %dma_fence_put.exit.i, %.preheader.i
  tail call void @kvfree_call_rcu(ptr noundef nonnull %i.b, ptr noundef nonnull %i.b) #9
  br label %dma_resv_list_free.exit

dma_resv_list_free.exit:                          ; preds = %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @dma_resv_reserve_fences(ptr nofree noundef captures(address) %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %.critedge, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "509: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 509b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 509) #10, !srcloc !24
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.2, ptr nonnull @.str.3, i32 193, i32 2305, i64 16) #10, !srcloc !25
  tail call void asm sideeffect "510: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 510b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 510) #10, !srcloc !26
  br label %dma_resv_list_alloc.exit.thread

.critedge:                                        ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.b = load volatile ptr, ptr %i.a, align 8     ; 7 uses
  %.not76 = icmp eq ptr %i.b, null                ; 2 uses
  br i1 %.not76, label %__roundup_pow_of_two.exit, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.c = getelementptr i8, ptr %i.b, i64 20
  %i.d = load i32, ptr %i.c, align 4              ; 3 uses
  %.not77 = icmp eq i32 %i.d, 0
  br i1 %.not77, label %__roundup_pow_of_two.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %i.b, i64 16
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add i32 %i.f, %1                         ; 2 uses
  %.not78 = icmp ugt i32 %i.g, %i.d
  br i1 %.not78, label %bb.e, label %dma_resv_list_alloc.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.h = shl i32 %i.d, 1
  %i.i = tail call i32 @llvm.umax.i32(i32 %i.g, i32 %i.h)
  br label %_kmalloc_noprof.exit.i

__roundup_pow_of_two.exit:                        ; preds = %bb.c, %.critedge
  %i.j = zext i32 %1 to i64
  %i.k = add nsw i64 %i.j, -1
  %i.l = tail call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 4294967295) %i.k, i32 -1) #11, !srcloc !27
  %i.m = add i32 %i.l, 1
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl nuw i64 1, %i.n
  %i.p = tail call i64 @llvm.umax.i64(i64 %i.o, i64 4)
  %i.q = trunc i64 %i.p to i32
  br label %_kmalloc_noprof.exit.i

_kmalloc_noprof.exit.i:                           ; preds = %__roundup_pow_of_two.exit, %bb.e
  %.068 = phi i32 [ %i.i, %bb.e ], [ %i.q, %__roundup_pow_of_two.exit ] ; 4 uses
  %i.r = zext i32 %.068 to i64                    ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = add nuw nsw i64 %i.s, 24
  %i.u = tail call i64 @kmalloc_size_roundup(i64 noundef %i.t) #9 ; 2 uses
  %i.v = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef %i.u, i32 noundef 3264) #12 ; 7 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %dma_resv_list_alloc.exit.thread, label %dma_resv_list_alloc.exit

dma_resv_list_alloc.exit:                         ; preds = %_kmalloc_noprof.exit.i
  %i.w = add i64 %i.u, 34359738344
  %i.x = lshr i64 %i.w, 3
  %i.y = trunc i64 %i.x to i32
  %i.z = getelementptr i8, ptr %i.v, i64 20
  store i32 %i.y, ptr %i.z, align 4
  br i1 %.not76, label %.critedge82, label %.lr.ph

.lr.ph:                                           ; preds = %dma_resv_list_alloc.exit
  %i.aa = getelementptr i8, ptr %i.b, i64 16      ; 2 uses
  %i.ab = getelementptr i8, ptr %i.b, i64 24
  %i.ac = getelementptr i8, ptr %i.v, i64 24      ; 2 uses
  %i.ad = load i32, ptr %i.aa, align 8
  %.not123 = icmp eq i32 %i.ad, 0
  br i1 %.not123, label %.critedge81, label %.lr.ph121

.lr.ph121:                                        ; preds = %.lr.ph, %bb.l
  %.06693120 = phi i32 [ %.167, %bb.l ], [ %.068, %.lr.ph ] ; 2 uses
  %.06494119 = phi i32 [ %.165, %bb.l ], [ 0, %.lr.ph ] ; 3 uses
  %indvars.iv118 = phi i64 [ %indvars.iv.next, %bb.l ], [ 0, %.lr.ph ] ; 2 uses
  %i.ae = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv118
  %i.af = load volatile ptr, ptr %i.ae, align 8   ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = and i64 %i.ag, -4
  %i.ai = inttoptr i64 %i.ah to ptr               ; 5 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 48
  %i.ak = load volatile i64, ptr %i.aj, align 8
  %.in.in.i.i = and i64 %i.ak, 8
  %.in.i.not.i = icmp eq i64 %.in.in.i.i, 0
  br i1 %.in.i.not.i, label %bb.f, label %bb.j

bb.f:                                             ; preds = %.lr.ph121
  tail call void @__rcu_read_lock() #9
  %i.al = getelementptr i8, ptr %i.ai, i64 8
  %i.am = load volatile ptr, ptr %i.al, align 8   ; 2 uses
  %.not.i86 = icmp eq ptr %i.am, null
  br i1 %.not.i86, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %.not13.i = icmp eq ptr %i.ao, null
  br i1 %.not13.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = tail call zeroext i1 %i.ao(ptr noundef %i.ai) #9, !inline_history !1
  br i1 %i.ap, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  tail call void @__rcu_read_unlock() #9
  tail call void @dma_fence_signal(ptr noundef %i.ai) #9
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph121
  %i.aq = add i32 %.06693120, -1                  ; 2 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.h, %bb.g, %bb.f
  tail call void @__rcu_read_unlock() #9
  %i.ar = add i32 %.06494119, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.06494.sink = phi i32 [ %.06494119, %bb.k ], [ %i.aq, %bb.j ]
  %.sink = phi ptr [ %i.af, %bb.k ], [ %i.ai, %bb.j ]
  %.167 = phi i32 [ %.06693120, %bb.k ], [ %i.aq, %bb.j ] ; 2 uses
  %.165 = phi i32 [ %i.ar, %bb.k ], [ %.06494119, %bb.j ] ; 2 uses
  %i.as = zext i32 %.06494.sink to i64
  %i.at = getelementptr [8 x i8], ptr %i.ac, i64 %i.as
  store volatile ptr %.sink, ptr %i.at, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %i.au = load i32, ptr %i.aa, align 8
  %i.av = zext i32 %i.au to i64
  %i.aw = icmp samesign ult i64 %indvars.iv.next, %i.av
  br i1 %i.aw, label %.lr.ph121, label %.critedge81

.critedge81:                                      ; preds = %bb.l, %.lr.ph
  %.06494.lcssa = phi i32 [ 0, %.lr.ph ], [ %.165, %bb.l ]
  %.06693.lcssa = phi i32 [ %.068, %.lr.ph ], [ %.167, %bb.l ] ; 2 uses
  %i.ax = getelementptr i8, ptr %i.v, i64 16
  store i32 %.06494.lcssa, ptr %i.ax, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !28
  store volatile ptr %i.v, ptr %i.a, align 8
  %i.ay = icmp ult i32 %.06693.lcssa, %.068
  br i1 %i.ay, label %.lr.ph97, label %._crit_edge

.lr.ph97:                                         ; preds = %.critedge81
  %i.az = zext i32 %.06693.lcssa to i64
  br label %bb.m

.critedge82:                                      ; preds = %dma_resv_list_alloc.exit
  %i.ba = getelementptr i8, ptr %i.v, i64 16
  store i32 0, ptr %i.ba, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !28
  store volatile ptr %i.v, ptr %i.a, align 8
  br label %dma_resv_list_alloc.exit.thread

bb.m:                                             ; preds = %.lr.ph97, %dma_fence_put.exit
  %indvars.iv103 = phi i64 [ %i.az, %.lr.ph97 ], [ %indvars.iv.next104, %dma_fence_put.exit ] ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv103
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %.not.i87 = icmp eq ptr %i.bc, null
  br i1 %.not.i87, label %dma_fence_put.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr i8, ptr %i.bc, i64 56     ; 4 uses
  %i.be = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bd, i32 -1, ptr elementtype(i32) %i.bd) #10, !srcloc !14 ; 2 uses
  %i.bf = icmp eq i32 %i.be, 1
  br i1 %i.bf, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = icmp slt i32 %i.be, 1
  br i1 %i.bg, label %bb.p, label %dma_fence_put.exit, !prof !15

bb.p:                                             ; preds = %bb.o
  tail call void @refcount_warn_saturate(ptr noundef %i.bd, i32 noundef 3) #9
  br label %dma_fence_put.exit

bb.q:                                             ; preds = %bb.n
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !16
  tail call void @dma_fence_release(ptr noundef %i.bd) #9
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %bb.m, %bb.o, %bb.p, %bb.q
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next104, %i.r
  br i1 %exitcond.not, label %._crit_edge, label %bb.m, !llvm.loop !23

._crit_edge:                                      ; preds = %dma_fence_put.exit, %.critedge81
  tail call void @kvfree_call_rcu(ptr noundef nonnull %i.b, ptr noundef nonnull %i.b) #9
  br label %dma_resv_list_alloc.exit.thread

dma_resv_list_alloc.exit.thread:                  ; preds = %_kmalloc_noprof.exit.i, %bb.b, %.critedge82, %bb.d, %._crit_edge
  %.0 = phi i32 [ 0, %bb.d ], [ -22, %bb.b ], [ 0, %._crit_edge ], [ 0, %.critedge82 ], [ -12, %_kmalloc_noprof.exit.i ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @dma_resv_add_fence(ptr nofree noundef captures(address) %0, ptr noundef %1, i32 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %dma_fence_get.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %1, i64 56         ; 3 uses
  %i.b = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.a, i32 1, ptr elementtype(i32) %i.a) #10, !srcloc !14 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %bb.c, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.c = add i32 %i.b, 1
  %i.d = or i32 %i.c, %i.b
  %.not10.i.i.i.i.i = icmp sgt i32 %i.d, -1
  br i1 %.not10.i.i.i.i.i, label %dma_fence_get.exit, label %.sink.split.i.i.i.i.i, !prof !18

.sink.split.i.i.i.i.i:                            ; preds = %bb.c, %bb.b
  %.sink.i.i.i.i.i = phi i32 [ 2, %bb.b ], [ 1, %bb.c ]
  tail call void @refcount_warn_saturate(ptr noundef %i.a, i32 noundef %.sink.i.i.i.i.i) #9
  br label %dma_fence_get.exit

dma_fence_get.exit:                               ; preds = %bb.a, %bb.c, %.sink.split.i.i.i.i.i
  %i.e = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.f = load volatile ptr, ptr %i.e, align 8
  %i.g = icmp eq ptr %i.f, @dma_fence_array_ops
  br i1 %i.g, label %dma_fence_is_container.exit.thread, label %dma_fence_is_container.exit, !prof !30

dma_fence_is_container.exit:                      ; preds = %dma_fence_get.exit
  %i.h = load volatile ptr, ptr %i.e, align 8
  %i.i = icmp eq ptr %i.h, @dma_fence_chain_ops
  br i1 %i.i, label %dma_fence_is_container.exit.thread, label %bb.d, !prof !31

dma_fence_is_container.exit.thread:               ; preds = %dma_fence_get.exit, %dma_fence_is_container.exit
  tail call void asm sideeffect "523: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 523b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 523) #10, !srcloc !32
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.2, ptr nonnull @.str.3, i32 301, i32 2305, i64 16) #10, !srcloc !33
  tail call void asm sideeffect "524: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 524b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 524) #10, !srcloc !34
  br label %bb.d

bb.d:                                             ; preds = %dma_fence_is_container.exit.thread, %dma_fence_is_container.exit
  %i.j = getelementptr i8, ptr %0, i64 32
  %i.k = load volatile ptr, ptr %i.j, align 8     ; 4 uses
  %i.l = getelementptr i8, ptr %i.k, i64 16       ; 3 uses
  %i.m = load i32, ptr %i.l, align 8              ; 4 uses
  %.not50 = icmp eq i32 %i.m, 0
  br i1 %.not50, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.n = getelementptr i8, ptr %i.k, i64 24       ; 2 uses
  %i.o = getelementptr i8, ptr %1, i64 32
  %i.p = getelementptr i8, ptr %1, i64 40
  %i.q = getelementptr i8, ptr %1, i64 48
  %wide.trip.count = zext i32 %i.m to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %i.r = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.s = load volatile ptr, ptr %i.r, align 8
  %i.t = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.u = and i64 %i.t, -4                         ; 2 uses
  %i.v = inttoptr i64 %i.u to ptr                 ; 8 uses
  %i.w = trunc i64 %i.t to i32
  %i.x = and i32 %i.w, 3
  %i.y = getelementptr i8, ptr %i.v, i64 32
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = load i64, ptr %i.o, align 8
  %i.ab = icmp ne i64 %i.z, %i.aa
  %.not31 = icmp ult i32 %i.x, %2
  %or.cond = or i1 %i.ab, %.not31
  br i1 %or.cond, label %dma_fence_test_signaled_flag.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = icmp eq ptr %1, %i.v
  br i1 %i.ac, label %.critedge, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.f
  %i.ad = load i64, ptr %i.p, align 8             ; 2 uses
  %i.ae = getelementptr i8, ptr %i.v, i64 40
  %i.af = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.ag = load volatile i64, ptr %i.q, align 8
  %i.ah = and i64 %i.ag, 4
  %.not.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i, label %dma_fence_is_later_or_same.exit, label %.split

.split:                                           ; preds = %.critedge.i.i
  %i.ai = icmp ugt i64 %i.ad, %i.af
  br i1 %i.ai, label %.critedge, label %dma_fence_test_signaled_flag.exit.i

dma_fence_is_later_or_same.exit:                  ; preds = %.critedge.i.i
  %i.aj = trunc i64 %i.ad to i32
  %i.ak = trunc i64 %i.af to i32
  %i.al = sub i32 %i.aj, %i.ak
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.critedge, label %dma_fence_test_signaled_flag.exit.i

dma_fence_test_signaled_flag.exit.i:              ; preds = %bb.e, %dma_fence_is_later_or_same.exit, %.split
  %i.an = getelementptr i8, ptr %i.v, i64 48
  %i.ao = load volatile i64, ptr %i.an, align 8
  %.in.in.i.i = and i64 %i.ao, 8
  %.in.i.not.i = icmp eq i64 %.in.in.i.i, 0
  br i1 %.in.i.not.i, label %bb.g, label %.critedge

bb.g:                                             ; preds = %dma_fence_test_signaled_flag.exit.i
  tail call void @__rcu_read_lock() #9
  %i.ap = getelementptr i8, ptr %i.v, i64 8
  %i.aq = load volatile ptr, ptr %i.ap, align 8   ; 2 uses
  %.not.i33 = icmp eq ptr %i.aq, null
  br i1 %.not.i33, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %.not13.i = icmp eq ptr %i.as, null
  br i1 %.not13.i, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = tail call zeroext i1 %i.as(ptr noundef %i.v) #9, !inline_history !1
  br i1 %i.at, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  tail call void @__rcu_read_unlock() #9
  tail call void @dma_fence_signal(ptr noundef %i.v) #9
  br label %.critedge

.critedge:                                        ; preds = %dma_fence_test_signaled_flag.exit.i, %bb.f, %.split, %dma_fence_is_later_or_same.exit, %bb.j
  %i.au = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.av = ptrtoint ptr %1 to i64
  %i.aw = zext i32 %2 to i64
  %i.ax = or i64 %i.aw, %i.av
  %i.ay = inttoptr i64 %i.ax to ptr
  store volatile ptr %i.ay, ptr %i.au, align 8
  %.not.i34 = icmp eq i64 %i.u, 0
  br i1 %.not.i34, label %dma_fence_put.exit, label %bb.k

bb.k:                                             ; preds = %.critedge
  %i.az = getelementptr i8, ptr %i.v, i64 56      ; 4 uses
  %i.ba = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.az, i32 -1, ptr elementtype(i32) %i.az) #10, !srcloc !14 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 1
  br i1 %i.bb, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = icmp slt i32 %i.ba, 1
  br i1 %i.bc, label %bb.m, label %dma_fence_put.exit, !prof !15

bb.m:                                             ; preds = %bb.l
  tail call void @refcount_warn_saturate(ptr noundef %i.az, i32 noundef 3) #9
  br label %dma_fence_put.exit

bb.n:                                             ; preds = %bb.k
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !16
  tail call void @dma_fence_release(ptr noundef %i.az) #9
  br label %dma_fence_put.exit

bb.o:                                             ; preds = %bb.i, %bb.h, %bb.g
  tail call void @__rcu_read_unlock() #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.e, !llvm.loop !29

._crit_edge.loopexit:                             ; preds = %bb.o
  %.pre = load i32, ptr %i.l, align 8
  %i.bd = zext i32 %i.m to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %i.be = phi i32 [ 0, %bb.d ], [ %.pre, %._crit_edge.loopexit ]
  %.029.lcssa = phi i64 [ 0, %bb.d ], [ %i.bd, %._crit_edge.loopexit ]
  %i.bf = getelementptr i8, ptr %i.k, i64 20
  %i.bg = load i32, ptr %i.bf, align 4
  %.not = icmp ult i32 %i.be, %i.bg
  br i1 %.not, label %bb.q, label %bb.p, !prof !18

bb.p:                                             ; preds = %._crit_edge
  tail call void asm sideeffect "525: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 525b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 525) #10, !srcloc !35
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.2, ptr nonnull @.str.3, i32 319, i32 0, i64 16) #10, !srcloc !36
  unreachable

bb.q:                                             ; preds = %._crit_edge
end_hunk_0
