inline.NumInlined: 35
inline.NumDeleted: 21
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop", target_cpu: "x86-64")
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_page_frag_cache_drain: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad page_frag_cache_drain ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol___page_frag_cache_drain: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad __page_frag_cache_drain ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol___page_frag_alloc_align: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad __page_frag_alloc_align ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_page_frag_free: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad page_frag_free ; .previous"

@__UNIQUE_ID_addressable_page_frag_cache_drain_640 = internal global ptr @page_frag_cache_drain, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable___page_frag_cache_drain_641 = internal global ptr @__page_frag_cache_drain, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable___page_frag_alloc_align_642 = internal global ptr @__page_frag_alloc_align, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_page_frag_free_643 = internal global ptr @page_frag_free, section ".discard.addressable", align 8
@vmemmap_base = external dso_local local_unnamed_addr global i64, align 8
@phys_base = external dso_local local_unnamed_addr global i64, align 8
@page_offset_base = external dso_local local_unnamed_addr global i64, align 8
@numa_node = external dso_local global i32, section ".data..percpu", align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_addressable___page_frag_alloc_align_642, ptr @__UNIQUE_ID_addressable___page_frag_cache_drain_641, ptr @__UNIQUE_ID_addressable_page_frag_cache_drain_640, ptr @__UNIQUE_ID_addressable_page_frag_free_643], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @page_frag_cache_drain(ptr nofree noundef captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @vmemmap_base, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = add i64 %i.a, 2147483648
  %i.e = icmp ugt i64 %i.a, -2147483649
  %i.f = load i64, ptr @phys_base, align 8
  %i.g = load i64, ptr @page_offset_base, align 8
  %i.h = sub i64 -2147483648, %i.g
  %i.i = select i1 %i.e, i64 %i.f, i64 %i.h
  %i.j = add i64 %i.d, %i.i
  %i.k = lshr i64 %i.j, 12
  %i.l = getelementptr [64 x i8], ptr %i.c, i64 %i.k ; 4 uses
  %i.m = getelementptr i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4
  %i.o = getelementptr i8, ptr %i.l, i64 52       ; 2 uses
  %i.p = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock subl $2, $0", "=*m,={@cce},er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.o, i32 %i.n, ptr elementtype(i32) %i.o) #3, !srcloc !10 ; 2 uses
  %i.q = icmp ult i8 %i.p, 2
  tail call void @llvm.assume(i1 %i.q)
  %.not.i = icmp eq i8 %i.p, 0
  br i1 %.not.i, label %__page_frag_cache_drain.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load volatile i64, ptr %i.l, align 8
  %i.s = and i64 %i.r, 64
  %.not.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i, label %compound_order.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr i8, ptr %i.l, i64 64
  %.val.i.i = load i64, ptr %i.t, align 16
  %i.u = trunc i64 %.val.i.i to i32
  %i.v = and i32 %i.u, 255
  br label %compound_order.exit.i

compound_order.exit.i:                            ; preds = %bb.d, %bb.c
  %.0.i.i = phi i32 [ %i.v, %bb.d ], [ 0, %bb.c ]
  tail call void @free_frozen_pages(ptr noundef %i.l, i32 noundef %.0.i.i) #4
  br label %__page_frag_cache_drain.exit

__page_frag_cache_drain.exit:                     ; preds = %bb.b, %compound_order.exit.i
  store i64 0, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %__page_frag_cache_drain.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @__page_frag_cache_drain(ptr noundef %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 52         ; 2 uses
  %i.b = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock subl $2, $0", "=*m,={@cce},er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.a, i32 %1, ptr elementtype(i32) %i.a) #3, !srcloc !10 ; 2 uses
  %i.c = icmp ult i8 %i.b, 2
  tail call void @llvm.assume(i1 %i.c)
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load volatile i64, ptr %0, align 8
  %i.e = and i64 %i.d, 64
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %compound_order.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 64
  %.val.i = load i64, ptr %i.f, align 16
  %i.g = trunc i64 %.val.i to i32
  %i.h = and i32 %i.g, 255
  br label %compound_order.exit

compound_order.exit:                              ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.h, %bb.c ], [ 0, %bb.b ]
  tail call void @free_frozen_pages(ptr noundef %0, i32 noundef %.0.i) #4
  br label %bb.d

bb.d:                                             ; preds = %compound_order.exit, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @free_frozen_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @__page_frag_alloc_align(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %4, label %._crit_edge, !prof !11

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  br label %bb.d

4:                                                ; preds = %bb.f, %bb.a, %bb.h
  %5 = and i32 %2, -861185
  %6 = or disjoint i32 %5, 860160
  %7 = tail call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @numa_node) #5, !srcloc !12
  %8 = tail call ptr @__alloc_pages_noprof(i32 noundef %6, i32 noundef 3, i32 noundef %7, ptr noundef null) #4 ; 2 uses
  %.not.i = icmp eq ptr %8, null
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %4
  %9 = tail call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @numa_node) #5, !srcloc !12
  %10 = tail call ptr @__alloc_pages_noprof(i32 noundef %2, i32 noundef 0, i32 noundef %9, ptr noundef null) #4 ; 2 uses
  %.not34 = icmp eq ptr %10, null
  br i1 %.not34, label %__page_frag_cache_refill.exit.thread, label %bb.c

__page_frag_cache_refill.exit.thread:             ; preds = %bb.b
  store i64 0, ptr %0, align 8
  br label %bb.k

bb.c:                                             ; preds = %bb.b, %4
  %.027.i = phi i64 [ 0, %bb.b ], [ 3, %4 ]
  %.01925.i = phi ptr [ %10, %bb.b ], [ %8, %4 ]  ; 3 uses
  %11 = getelementptr i8, ptr %.01925.i, i64 8
  %.019.val.i = load ptr, ptr %11, align 8
  %12 = ptrtoint ptr %.019.val.i to i64
  %13 = load i64, ptr @vmemmap_base, align 8
  %14 = ptrtoint ptr %.01925.i to i64
  %15 = sub i64 %14, %13
  %16 = shl i64 %15, 6
  %i.b = load i64, ptr @page_offset_base, align 8
  %17 = add i64 %16, %i.b
  %18 = shl i64 %12, 7
  %19 = and i64 %18, 256
  %20 = or disjoint i64 %19, %.027.i
  %21 = or i64 %20, %17                           ; 2 uses
  store i64 %21, ptr %0, align 8
  %i.c = getelementptr i8, ptr %.01925.i, i64 52  ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock addl $1, $0", "=*m,ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.c, i32 32768, ptr elementtype(i32) %i.c) #3, !srcloc !13
  %i.d = getelementptr i8, ptr %0, i64 12
  store i32 32769, ptr %i.d, align 4
  %i.e = getelementptr i8, ptr %0, i64 8
  store i32 0, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %i.f = phi i32 [ 0, %bb.c ], [ %.pre, %._crit_edge ]
  %.031 = phi i64 [ %21, %bb.c ], [ %i.a, %._crit_edge ] ; 5 uses
  %i.g = and i64 %.031, 255                       ; 2 uses
  %i.h = shl i64 4096, %i.g
  %i.i = trunc i64 %i.h to i32
  %i.j = getelementptr i8, ptr %0, i64 8
  %i.k = xor i32 %3, -1
  %i.l = add i32 %i.f, %i.k
  %i.m = and i32 %i.l, %3                         ; 2 uses
  %i.n = add i32 %i.m, %1
  %i.o = icmp ugt i32 %i.n, %i.i
  br i1 %i.o, label %bb.e, label %._crit_edge37, !prof !11

._crit_edge37:                                    ; preds = %bb.d
  %.phi.trans.insert38 = getelementptr i8, ptr %0, i64 12
  %.pre39 = load i32, ptr %.phi.trans.insert38, align 4
  %i.p = add i32 %.pre39, -1
  br label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.q = icmp ugt i32 %1, 4096
  br i1 %i.q, label %bb.k, label %bb.f, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.r = load i64, ptr @vmemmap_base, align 8
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = add i64 %.031, 2147483648
  %i.u = icmp ugt i64 %.031, -2147483649
  %i.v = load i64, ptr @phys_base, align 8
  %i.w = load i64, ptr @page_offset_base, align 8
  %i.x = sub i64 -2147483648, %i.w
  %i.y = select i1 %i.u, i64 %i.v, i64 %i.x
  %i.z = add i64 %i.t, %i.y
  %i.aa = lshr i64 %i.z, 12
  %i.ab = getelementptr [64 x i8], ptr %i.s, i64 %i.aa ; 2 uses
  %i.ac = getelementptr i8, ptr %0, i64 12
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = getelementptr i8, ptr %i.ab, i64 52     ; 3 uses
  %i.af = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock subl $2, $0", "=*m,={@cce},er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ae, i32 %i.ad, ptr elementtype(i32) %i.ae) #3, !srcloc !10 ; 2 uses
  %i.ag = icmp ult i8 %i.af, 2
  tail call void @llvm.assume(i1 %i.ag)
  %.not35 = icmp eq i8 %i.af, 0
  br i1 %.not35, label %4, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = and i64 %.031, 256
  %.not36 = icmp eq i64 %i.ah, 0
  br i1 %.not36, label %bb.i, label %bb.h, !prof !14

bb.h:                                             ; preds = %bb.g
  %i.ai = trunc nuw nsw i64 %i.g to i32
  tail call void @free_frozen_pages(ptr noundef %i.ab, i32 noundef %i.ai) #4
  br label %4

bb.i:                                             ; preds = %bb.g
  store volatile i32 32769, ptr %i.ae, align 4
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge37, %bb.i
  %i.aj = phi i32 [ 32768, %bb.i ], [ %i.p, %._crit_edge37 ]
  %.0 = phi i32 [ 0, %bb.i ], [ %i.m, %._crit_edge37 ] ; 2 uses
  %i.ak = getelementptr i8, ptr %0, i64 12
  store i32 %i.aj, ptr %i.ak, align 4
  %i.al = add i32 %.0, %1
  store i32 %i.al, ptr %i.j, align 8
  %i.am = and i64 %.031, -4096
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = zext i32 %.0 to i64
  %i.ap = getelementptr i8, ptr %i.an, i64 %i.ao
  br label %bb.k

bb.k:                                             ; preds = %__page_frag_cache_refill.exit.thread, %bb.e, %bb.j
  %.032 = phi ptr [ null, %__page_frag_cache_refill.exit.thread ], [ %i.ap, %bb.j ], [ null, %bb.e ]
  ret ptr %.032
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @page_frag_free(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i64, ptr @vmemmap_base, align 8
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = ptrtoint ptr %0 to i64
  %i.d = add i64 %i.c, 2147483648
  %i.e = icmp ugt ptr %0, inttoptr (i64 -2147483649 to ptr)
  %i.f = load i64, ptr @phys_base, align 8
  %i.g = load i64, ptr @page_offset_base, align 8
  %i.h = sub i64 -2147483648, %i.g
  %i.i = select i1 %i.e, i64 %i.f, i64 %i.h
  %i.j = add i64 %i.d, %i.i
  %i.k = lshr i64 %i.j, 12
  %i.l = getelementptr [64 x i8], ptr %i.b, i64 %i.k ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = load volatile i64, ptr %i.m, align 8     ; 2 uses
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = and i64 %i.n, 1
  %i.q = add nsw i64 %i.p, -1
  %i.r = or i64 %i.q, %i.n
  %i.s = and i64 %i.r, %i.o
  %i.t = inttoptr i64 %i.s to ptr                 ; 4 uses
  %i.u = getelementptr i8, ptr %i.t, i64 52       ; 2 uses
  %i.v = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.u, ptr elementtype(i32) %i.u) #3, !srcloc !15 ; 2 uses
  %i.w = icmp ult i8 %i.v, 2
  tail call void @llvm.assume(i1 %i.w)
  %.not = icmp eq i8 %i.v, 0
  br i1 %.not, label %bb.d, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.x = load volatile i64, ptr %i.t, align 8
  %i.y = and i64 %i.x, 64
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %compound_order.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr i8, ptr %i.t, i64 64
  %.val.i = load i64, ptr %i.z, align 16
  %i.aa = trunc i64 %.val.i to i32
  %i.ab = and i32 %i.aa, 255
  br label %compound_order.exit

compound_order.exit:                              ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.ab, %bb.c ], [ 0, %bb.b ]
  tail call void @free_frozen_pages(ptr noundef %i.t, i32 noundef %.0.i) #4
  br label %bb.d

bb.d:                                             ; preds = %compound_order.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__alloc_pages_noprof(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #3 = { nounwind }
attributes #4 = { noredzone nounwind "no-builtin-wcslen" }
attributes #5 = { nounwind memory(read) }

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
!10 = !{i64 2148740023, i64 2148740062, i64 2148740083, i64 2148740120, i64 2148740143, i64 2148740152}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{i64 2152476946}
!13 = !{i64 2148737803, i64 2148737842, i64 2148737863, i64 2148737900, i64 2148737923, i64 2148737794}
!14 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!15 = !{i64 2148742635, i64 2148742674, i64 2148742695, i64 2148742732, i64 2148742755, i64 2148742764}
end_hunk_0
