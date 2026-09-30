Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/bts?download=true
inline.NumInlined: 45
inline.NumDeleted: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop", target_cpu: "x86-64")
    ".section\09\22.initcallearly.init\22, \22a\22\09\09"
    "__initcall__kmod_bts__630_646_bts_initearly:\09\09\09"
    ".long\09bts_init - .\09"
    ".previous\09\09\09\09\09"

%struct.cpu_hw_events = type { [64 x ptr], [1 x i64], [1 x i64], i32, i32, i32, i32, i32, i32, [64 x i32], [64 x i64], [64 x ptr], [64 x ptr], i32, i32, i32, i32, ptr, ptr, ptr, i64, i32, i32, i32, i32, i64, i64, i32, i64, i64, [64 x i64], [64 x i64], i32, i32, %struct.perf_branch_stack, [32 x %struct.perf_branch_entry], [32 x i64], %union.anon.1, i64, ptr, i32, i32, ptr, i64, i64, [64 x %struct.perf_guest_switch_msr], i64, ptr, ptr, ptr, i32, i64, i32, ptr, i32, i64, i32, [2 x ptr], ptr }
%struct.perf_branch_stack = type { i64, i64, [0 x %struct.perf_branch_entry] }
%struct.perf_branch_entry = type { i64, i64, i64 }
%union.anon.1 = type { ptr }
%struct.perf_guest_switch_msr = type { i32, i64, i64 }
%struct.cpuinfo_x86 = type { %union.anon.32, i8, %union.anon.34, i32, [5 x i32], i8, i8, i32, i32, %union.anon.35, [16 x i8], [64 x i8], %struct.cpuinfo_topology, %struct.cpuid_table, i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.32 = type { i32 }
%union.anon.34 = type { i8 }
%union.anon.35 = type { i64, [88 x i8] }
%struct.cpuinfo_topology = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.36 }
%union.anon.36 = type { i32 }
%struct.cpuid_table = type { %struct.cpuid_leaves }
%struct.cpuid_leaves = type <{ [1 x %struct.leaf_0x0_0], %struct.leaf_parse_info, [1 x %struct.leaf_0x1_0], %struct.leaf_parse_info }>
%struct.leaf_0x0_0 = type { i64, i64 }
%struct.leaf_0x1_0 = type { i64, i64 }
%struct.leaf_parse_info = type { i32 }
%struct.x86_pmu = type <{ ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8], i64, %union.anon.39, %union.anon.40, %union.anon.41, %union.anon.42, i32, [4 x i8], i64, %union.anon.43, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.perf_capabilities, i16, [2 x i8], i32, i32, [4 x i8], i64, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.arch_pebs_cap, i32, i32, i32, i32, i32, [4 x i8], %union.anon.45, %union.anon.46, i64, i8, i8, i32, [2 x i8], ptr, ptr, ptr, ptr, [3 x %struct.atomic_t], i32, i8, [7 x i8], i64, ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, i32, [4 x i8], ptr, ptr }>
%union.anon.39 = type { i64 }
%union.anon.40 = type { i64 }
%union.anon.41 = type { i64 }
%union.anon.42 = type { i64 }
%union.anon.43 = type { i64 }
%union.perf_capabilities = type { i64 }
%struct.arch_pebs_cap = type { i64, i64, i64 }
%union.anon.45 = type { i64 }
%union.anon.46 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.pmu = type { %struct.list_head, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.atomic_t, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.22 }
%union.anon.22 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.19 }
%union.anon.19 = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }

@bts_ctx = internal unnamed_addr global ptr null, align 8
@this_cpu_off = external dso_local global i64, section ".data..percpu..hot..this_cpu_off", align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"arch/x86/events/intel/bts.c\00", align 1
@cpu_hw_events = external dso_local global %struct.cpu_hw_events, section ".data..percpu", align 8
@__UNIQUE_ID_addressable_bts_init_631 = internal global ptr @bts_init, section ".discard.addressable", align 8
@cpu_number = external dso_local global i32, section ".data..percpu..hot..cpu_number", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [64 x i64], align 16
@vmemmap_base = external dso_local local_unnamed_addr global i64, align 8
@page_offset_base = external dso_local local_unnamed_addr global i64, align 8
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@x86_pmu = external dso_local local_unnamed_addr global %struct.x86_pmu, section ".data..read_mostly", align 8
@bts_pmu = internal global %struct.pmu zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"intel_bts\00", align 1
@numa_node = external dso_local global i32, section ".data..percpu", align 4
@phys_base = external dso_local local_unnamed_addr global i64, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID_addressable_bts_init_631], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_bts_enable_local() local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr @bts_ctx, align 8          ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @this_cpu_off) #8, !srcloc !16
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = add i64 %i.b, %i.c
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8192
  %i.g = load volatile i32, ptr %i.f, align 4096
  switch i32 %i.g, label %bb.d [
    i32 2, label %bb.c
    i32 0, label %bb.f
  ], !prof !17

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "625: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 625b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 625) #9, !srcloc !18
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 355, i32 2307, i64 16) #9, !srcloc !19
  tail call void asm sideeffect "626: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 626b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 626) #9, !srcloc !20
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.e, align 4096           ; 2 uses
  %.not17 = icmp eq ptr %i.h, null
  br i1 %.not17, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @__bts_event_start(ptr noundef nonnull %i.h) #10, !srcloc !21
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @__bts_event_start(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @this_cpu_off) #8, !srcloc !22
  %i.b = load ptr, ptr @bts_ctx, align 8
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = add i64 %i.a, %i.c
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = tail call ptr @perf_get_aux(ptr noundef %i.e) #11 ; 5 uses
  %i.g = getelementptr i8, ptr %i.f, i64 20       ; 3 uses
  %i.h = load i8, ptr %i.g, align 4, !range !10, !noundef !11
  %i.i = getelementptr i8, ptr %0, i64 256
  %i.j = load i64, ptr %i.i, align 8
  %i.k = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #9, !srcloc !23
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8
  %i.o = add i64 %i.n, ptrtoint (ptr @cpu_hw_events to i64)
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr i8, ptr %i.p, i64 2360
  %i.r = load ptr, ptr %i.q, align 8              ; 4 uses
  %i.s = getelementptr i8, ptr %i.f, i64 56
  %i.t = getelementptr i8, ptr %i.f, i64 16
  %i.u = load i32, ptr %i.t, align 8
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr [32 x i8], ptr %i.s, i64 %i.v ; 5 uses
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8              ; 3 uses
  %i.aa = getelementptr i8, ptr %i.f, i64 32
  %i.ab = load volatile i64, ptr %i.aa, align 8   ; 2 uses
  %i.ac = load i8, ptr %i.g, align 4, !range !10, !noundef !11
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %._crit_edge.i, label %PagePrivate.exit.i.i.i

._crit_edge.i:                                    ; preds = %bb.a
  %.phi.trans.insert48.i = getelementptr i8, ptr %i.w, i64 24
  %.pre49.i = load i64, ptr %.phi.trans.insert48.i, align 8
  br label %bts_config_buffer.exit

PagePrivate.exit.i.i.i:                           ; preds = %bb.a
  %i.ae = getelementptr i8, ptr %i.f, i64 40
  %i.af = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.ag = getelementptr i8, ptr %i.w, i64 16
  %i.ah = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.ai = load volatile i64, ptr %i.z, align 8
  %i.aj = and i64 %i.ai, 16384
  %.not.i.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i.i, label %buf_size.exit.i, label %bb.b

bb.b:                                             ; preds = %PagePrivate.exit.i.i.i
  %i.ak = getelementptr i8, ptr %i.z, i64 40
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = trunc i64 %i.al to i32
  %i.an = shl nuw i32 1, %i.am
  %i.ao = sext i32 %i.an to i64
  %i.ap = shl nsw i64 %i.ao, 12
  br label %buf_size.exit.i

buf_size.exit.i:                                  ; preds = %bb.b, %PagePrivate.exit.i.i.i
  %.0.i.i.i = phi i64 [ %i.ap, %bb.b ], [ 4096, %PagePrivate.exit.i.i.i ]
  %i.aq = add i64 %.0.i.i.i, %i.ah
  %i.ar = icmp ult i64 %i.af, %i.aq
  %i.as = getelementptr i8, ptr %i.w, i64 24
  %i.at = load i64, ptr %i.as, align 8            ; 3 uses
  %i.au = add i64 %i.at, %i.ah                    ; 2 uses
  %i.av = sub i64 %i.af, %i.au
  %.0.i = select i1 %i.ar, i64 %i.av, i64 %i.y    ; 6 uses
  %i.aw = sub i64 %i.ab, %i.au                    ; 3 uses
  %i.ax = sub i64 %.0.i, %i.aw                    ; 2 uses
  %i.ay = icmp ugt i64 %i.ax, 4080
  br i1 %i.ay, label %bb.c, label %bb.d

bb.c:                                             ; preds = %buf_size.exit.i
  %i.az = add i64 %.0.i, -4080
  br label %bts_config_buffer.exit

bb.d:                                             ; preds = %buf_size.exit.i
  %i.ba = icmp samesign ugt i64 %i.ax, 24
  %i.bb = add i64 %.0.i, -24
  %spec.select.i = select i1 %i.ba, i64 %i.bb, i64 %.0.i
  br label %bts_config_buffer.exit

bts_config_buffer.exit:                           ; preds = %._crit_edge.i, %bb.c, %bb.d
  %i.bc = phi i64 [ %.pre49.i, %._crit_edge.i ], [ %i.at, %bb.c ], [ %i.at, %bb.d ]
  %.042.i = phi i64 [ %i.ab, %._crit_edge.i ], [ %i.aw, %bb.c ], [ %i.aw, %bb.d ]
  %.041.i = phi i64 [ 0, %._crit_edge.i ], [ %i.az, %bb.c ], [ %spec.select.i, %bb.d ]
  %.1.i = phi i64 [ %i.y, %._crit_edge.i ], [ %.0.i, %bb.c ], [ %.0.i, %bb.d ]
  %i.bd = shl i64 %i.j, 12
  %i.be = trunc nuw i8 %i.h to i1
  %spec.select = select i1 %i.be, i64 0, i64 1048576
  %1 = and i64 %i.bd, 196608
  %2 = or disjoint i64 %1, %spec.select
  %.2 = xor i64 %2, 196608
  %i.bf = load i64, ptr @vmemmap_base, align 8
  %i.bg = ptrtoint ptr %i.z to i64
  %i.bh = sub i64 %i.bg, %i.bf
  %i.bi = shl i64 %i.bh, 6
  %i.bj = load i64, ptr @page_offset_base, align 8
  %i.bk = add i64 %i.bj, %i.bc
  %i.bl = add i64 %i.bk, %i.bi                    ; 4 uses
  store i64 %i.bl, ptr %i.r, align 4096
  %i.bm = add i64 %i.bl, %.042.i
  %i.bn = getelementptr i8, ptr %i.r, i64 8
  store i64 %i.bm, ptr %i.bn, align 8
  %i.bo = add i64 %i.bl, %.1.i                    ; 2 uses
  %i.bp = getelementptr i8, ptr %i.r, i64 16
  store i64 %i.bo, ptr %i.bp, align 16
  %i.bq = load i8, ptr %i.g, align 4, !range !10, !noundef !11
  %i.br = trunc nuw i8 %i.bq to i1
  %i.bs = add i64 %i.bl, %.041.i
  %i.bt = add i64 %i.bo, 24
  %i.bu = select i1 %i.br, i64 %i.bt, i64 %i.bs
  %i.bv = getelementptr i8, ptr %i.r, i64 24
  store i64 %i.bu, ptr %i.bv, align 8
  tail call void asm sideeffect "sfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !24
  %i.bw = getelementptr i8, ptr %i.e, i64 8192
  store volatile i32 2, ptr %i.bw, align 4096
  tail call void @intel_pmu_enable_bts(i64 noundef %.2) #11
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_bts_disable_local() local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr @bts_ctx, align 8          ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @this_cpu_off) #8, !srcloc !25
  %i.c = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.d = add i64 %i.b, %i.c
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8192
  %i.g = load volatile i32, ptr %i.f, align 4096
  %.not10 = icmp eq i32 %i.g, 2
  br i1 %.not10, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.e, align 4096
  %.not11 = icmp eq ptr %i.h, null
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @this_cpu_off) #8, !srcloc !12
  %i.j = add i64 %i.i, %i.c
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr i8, ptr %i.k, i64 8192
  store volatile i32 1, ptr %i.l, align 4096
  tail call void @intel_pmu_disable_bts() #11
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 2) i32 @intel_bts_interrupt() local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @this_cpu_off) #8, !srcloc !26 ; 2 uses
  %i.b = add i64 %i.a, ptrtoint (ptr @cpu_hw_events to i64)
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr i8, ptr %i.c, i64 2360
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = load ptr, ptr @bts_ctx, align 8          ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = add i64 %i.a, %i.g
  %i.i = inttoptr i64 %i.h to ptr                 ; 8 uses
  %i.j = load ptr, ptr %i.i, align 4096
  %.not45 = icmp eq ptr %i.e, null
  br i1 %.not45, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.e, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %i.e, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %.not46 = icmp uge i64 %i.l, %i.n
  %spec.select = zext i1 %.not46 to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.040 = phi i32 [ 0, %bb.b ], [ %spec.select, %bb.c ] ; 3 uses
  %i.o = getelementptr i8, ptr %i.i, i64 8192     ; 3 uses
  %i.p = load volatile i32, ptr %i.o, align 4096
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = tail call ptr @perf_get_aux(ptr noundef %i.i) #11 ; 4 uses
  %.not47 = icmp eq ptr %i.r, null
  br i1 %.not47, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr i8, ptr %i.r, i64 20
  %i.t = load i8, ptr %i.s, align 4, !range !10, !noundef !11
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr i8, ptr %i.r, i64 32       ; 2 uses
  %i.w = load volatile i64, ptr %i.v, align 8
  tail call fastcc void @bts_update(ptr noundef %i.i) #10, !srcloc !27
  %i.x = load volatile i64, ptr %i.v, align 8
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr i8, ptr %i.r, i64 24       ; 5 uses
  %i.aa = load volatile i64, ptr %i.z, align 8    ; 2 uses
  %i.ab = tail call { i8, i64 } asm sideeffect "cmpxchgq $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.z, i64 0, ptr elementtype(i64) %i.z, i64 %i.aa) #9, !srcloc !13 ; 2 uses
  %i.ac = extractvalue { i8, i64 } %i.ab, 0       ; 2 uses
  %i.ad = icmp ult i8 %i.ac, 2
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = trunc nuw i8 %i.ac to i1
  br i1 %i.ae, label %local_xchg.exit, label %local_try_cmpxchg.exit, !prof !14

local_try_cmpxchg.exit:                           ; preds = %bb.h, %local_try_cmpxchg.exit
  %i.af = phi { i8, i64 } [ %i.ah, %local_try_cmpxchg.exit ], [ %i.ab, %bb.h ]
  %i.ag = extractvalue { i8, i64 } %i.af, 1       ; 2 uses
  %i.ah = tail call { i8, i64 } asm sideeffect "cmpxchgq $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.z, i64 0, ptr elementtype(i64) %i.z, i64 %i.ag) #9, !srcloc !13 ; 2 uses
  %i.ai = extractvalue { i8, i64 } %i.ah, 0       ; 2 uses
  %i.aj = icmp ult i8 %i.ai, 2
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = trunc nuw i8 %i.ai to i1
  br i1 %i.ak, label %local_xchg.exit, label %local_try_cmpxchg.exit, !prof !15

local_xchg.exit:                                  ; preds = %local_try_cmpxchg.exit, %bb.h
  %.052.lcssa = phi i64 [ %i.aa, %bb.h ], [ %i.ag, %local_try_cmpxchg.exit ]
  tail call void @perf_aux_output_end(ptr noundef %i.i, i64 noundef %.052.lcssa) #11
  %i.al = tail call ptr @perf_aux_output_begin(ptr noundef %i.i, ptr noundef %i.j) #11 ; 2 uses
  %.not48 = icmp eq ptr %i.al, null
  br i1 %.not48, label %.critedge50, label %bb.i

bb.i:                                             ; preds = %local_xchg.exit
  %i.am = tail call fastcc i32 @bts_buffer_reset(ptr noundef %i.al, ptr noundef %i.i) #10, !srcloc !28
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store volatile i32 0, ptr %i.o, align 4096
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !29
  tail call void @perf_aux_output_end(ptr noundef %i.i, i64 noundef 0) #11
  br label %bb.k

.critedge50:                                      ; preds = %local_xchg.exit
  store volatile i32 0, ptr %i.o, align 4096
  br label %bb.k

bb.k:                                             ; preds = %.critedge50, %bb.i, %bb.j, %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %.040, %bb.e ], [ 0, %bb.f ], [ %.040, %bb.g ], [ %.040, %bb.d ], [ 1, %.critedge50 ], [ 1, %bb.j ], [ 1, %bb.i ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @perf_get_aux(ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @bts_update(ptr noundef %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #9, !srcloc !30
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.d, ptrtoint (ptr @cpu_hw_events to i64)
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr i8, ptr %i.f, i64 2360
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = tail call ptr @perf_get_aux(ptr noundef %0) #11 ; 7 uses
  %i.j = getelementptr i8, ptr %i.h, i64 8        ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8
  %i.l = load i64, ptr %i.h, align 4096
  %i.m = sub i64 %i.k, %i.l
  %i.n = getelementptr i8, ptr %i.i, i64 16
  %i.o = load i32, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.i, i64 56
  %i.q = zext i32 %i.o to i64
  %i.r = getelementptr [32 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 16
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.r, i64 24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = add i64 %i.t, %i.m
  %i.x = add i64 %i.w, %i.v                       ; 5 uses
  %i.y = getelementptr i8, ptr %i.i, i64 32       ; 5 uses
end_hunk_0
