Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/ttm_pool?download=true
inline.NumInlined: 177
inline.NumDeleted: 73
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop", target_cpu: "x86-64")
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_pool_alloc: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ttm_pool_alloc ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_pool_free: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ttm_pool_free ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_pool_init: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ttm_pool_init ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_pool_fini: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ttm_pool_fini ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_pool_debugfs: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ttm_pool_debugfs ; .previous"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%union.anon = type { ptr }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nodemask_t = type { [1 x i64] }
%struct.list_head = type { ptr, ptr }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.list_lru }
%struct.list_lru = type { ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, ptr }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ttm_pool_alloc_state = type { ptr, ptr, ptr, i64, i32 }

@__UNIQUE_ID_modinfo_689 = internal constant [76 x i8] c"ttm.parm=page_pool_size:Number of pages in the WC/UC/DMA pool per NUMA node\00", section ".modinfo", align 1
@__param_str_page_pool_size = internal constant [19 x i8] c"ttm.page_pool_size\00", align 16
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 8
@page_pool_size = internal global i64 0, align 8
@__param_page_pool_size = internal constant { ptr, ptr, ptr, i16, i8, i8, [4 x i8], %union.anon } { ptr @__param_str_page_pool_size, ptr null, ptr @param_ops_ulong, i16 420, i8 -1, i8 0, [4 x i8] zeroinitializer, %union.anon { ptr @page_pool_size } }, section "__param", align 8
@__UNIQUE_ID_modinfo_690 = internal constant [34 x i8] c"ttm.parmtype=page_pool_size:ulong\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"drivers/gpu/drm/ttm/ttm_pool.c\00", align 1
@__UNIQUE_ID_addressable_ttm_pool_alloc_699 = internal global ptr @ttm_pool_alloc, section ".discard.addressable", align 8
@allocated_pages = internal global [64 x %struct.atomic64_t] zeroinitializer, align 16
@pool_node_limit = internal unnamed_addr global [64 x i64] zeroinitializer, align 16
@__UNIQUE_ID_addressable_ttm_pool_free_702 = internal global ptr @ttm_pool_free, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_ttm_pool_init_711 = internal global ptr @ttm_pool_init, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_ttm_pool_fini_712 = internal global ptr @ttm_pool_fini, section ".discard.addressable", align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"unused\0A\00", align 1
@shrinker_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"DMA \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\09:\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"wc\09:\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"uc\09:\00", align 1
@__UNIQUE_ID_addressable_ttm_pool_debugfs_713 = internal global ptr @ttm_pool_debugfs, section ".discard.addressable", align 8
@node_states = external dso_local global [6 x %struct.nodemask_t], align 16
@shrinker_list = internal global %struct.list_head zeroinitializer, align 8
@global_write_combined = internal global [11 x %struct.ttm_pool_type] zeroinitializer, align 16
@global_uncached = internal global [11 x %struct.ttm_pool_type] zeroinitializer, align 16
@global_dma32_write_combined = internal global [11 x %struct.ttm_pool_type] zeroinitializer, align 16
@global_dma32_uncached = internal global [11 x %struct.ttm_pool_type] zeroinitializer, align 16
@.str.7 = private unnamed_addr constant [10 x i8] c"page_pool\00", align 1
@ttm_debugfs_root = external dso_local local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [17 x i8] c"page_pool_shrink\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"drm-ttm_pool\00", align 1
@mm_shrinker = internal unnamed_addr global ptr null, align 8
@node_data = external dso_local local_unnamed_addr global [0 x ptr], align 8
@vmemmap_base = external dso_local local_unnamed_addr global i64, align 8
@numa_node = external dso_local global i32, section ".data..percpu", align 4
@.str.10 = private unnamed_addr constant [40 x i8] c"\014%pGg allocation from offline node %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 16
@phys_base = external dso_local local_unnamed_addr global i64, align 8
@page_offset_base = external dso_local local_unnamed_addr global i64, align 8
@pool_shrink_rwsem = internal global %struct.rw_semaphore zeroinitializer, align 8
@.str.13 = private unnamed_addr constant [3 x i8] c"\09 \00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c" ---%2u---\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c" %8u\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"\0Atotal node%d\09: %8lu of %8lu\0A\00", align 1
@ttm_pool_debugfs_globals_fops = internal constant { ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr null, i32 0, [4 x i8] zeroinitializer, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ttm_pool_debugfs_globals_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.19 = private unnamed_addr constant [8 x i8] c"wc 32\09:\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"uc 32\09:\00", align 1
@ttm_pool_debugfs_shrink_fops = internal constant { ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr null, i32 0, [4 x i8] zeroinitializer, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ttm_pool_debugfs_shrink_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.22 = private unnamed_addr constant [13 x i8] c"%d: %lu/%lu\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_addressable_ttm_pool_alloc_699, ptr @__UNIQUE_ID_addressable_ttm_pool_debugfs_713, ptr @__UNIQUE_ID_addressable_ttm_pool_fini_712, ptr @__UNIQUE_ID_addressable_ttm_pool_free_702, ptr @__UNIQUE_ID_addressable_ttm_pool_init_711, ptr @__UNIQUE_ID_modinfo_689, ptr @__UNIQUE_ID_modinfo_690, ptr @__param_page_pool_size], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local noundef zeroext i1 @ttm_backup_fault_inject_folio() local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  ret i1 false
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @ttm_pool_alloc(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.ttm_pool_alloc_state, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load i32, ptr %i.a, align 8
  %i.b = and i32 %.val, 32
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.critedge, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "697: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 697b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 697) #12, !srcloc !34
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 893, i32 2305, i64 16) #12, !srcloc !35
  tail call void asm sideeffect "698: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 698b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 698) #12, !srcloc !36
  br label %bb.c

.critedge:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 0, ptr %i.c, align 8, !annotation !22
  %i.d = load ptr, ptr %1, align 8                ; 2 uses
  store ptr %i.d, ptr %3, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.d, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %1, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.k, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %1, i64 48
  %i.n = load i32, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.n, ptr %i.o, align 8
  %i.p = call fastcc i32 @__ttm_pool_alloc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef null) #13, !srcloc !37
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge
  %.0 = phi i32 [ %i.p, %.critedge ], [ -22, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @__ttm_pool_alloc(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = getelementptr i8, ptr %3, i64 24         ; 6 uses
  %i.e = load i64, ptr %i.d, align 8
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 8
  %.val = load i32, ptr %i.f, align 8
  %i.g = and i32 %.val, 64
  %.not193 = icmp eq i32 %i.g, 0
  br i1 %.not193, label %bb.c, label %.critedge, !prof !21

.critedge:                                        ; preds = %bb.a, %bb.b
  tail call void asm sideeffect "693: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 693b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 693) #12, !srcloc !41
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 791, i32 2305, i64 16) #12, !srcloc !42
  tail call void asm sideeffect "694: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 694b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 694) #12, !srcloc !43
  br label %bb.c

bb.c:                                             ; preds = %.critedge, %bb.b
  %i.h = getelementptr i8, ptr %3, i64 16         ; 13 uses
  %i.i = load ptr, ptr %i.h, align 8
  %.not95 = icmp eq ptr %i.i, null
  br i1 %.not95, label %.critedge107, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %0, align 8
  %.not96 = icmp eq ptr %i.j, null
  br i1 %.not96, label %bb.e, label %.critedge107, !prof !23

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "695: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 695b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 695) #12, !srcloc !44
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 792, i32 2305, i64 16) #12, !srcloc !45
  tail call void asm sideeffect "696: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 696b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 696) #12, !srcloc !46
  br label %.critedge107

.critedge107:                                     ; preds = %bb.c, %bb.e, %bb.d
  %i.k = getelementptr i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 8
  %5 = shl i32 %i.l, 7
  %6 = and i32 %5, 256
  %i.m = getelementptr i8, ptr %2, i64 2
  %i.n = load i8, ptr %i.m, align 2, !range !24, !noundef !25
  %i.o = trunc nuw i8 %i.n to i1
  %.177.v = select i1 %i.o, i32 1076416, i32 1051840
  %.177 = or disjoint i32 %.177.v, %6
  %i.p = getelementptr i8, ptr %0, i64 12         ; 4 uses
  %.val108 = load i32, ptr %i.p, align 4
  %i.q = and i32 %.val108, 512
  %.not194 = icmp eq i32 %i.q, 0
  %.278.v = select i1 %.not194, i32 1051842, i32 4
  %.278 = or i32 %.177, %.278.v                   ; 2 uses
  %i.r = getelementptr i8, ptr %1, i64 48         ; 3 uses
  %.val110 = load i64, ptr %i.d, align 8          ; 2 uses
  %i.s = tail call i64 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %.val110) #14, !srcloc !47
  %.not98198 = icmp eq i64 %.val110, 0
  br i1 %.not98198, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge107
  %i.t = load i32, ptr %i.r, align 8
  %i.u = trunc i64 %i.s to i32
  %i.v = tail call i32 @llvm.umin.i32(i32 %i.u, i32 10)
  %i.w = getelementptr i8, ptr %0, i64 16
  %.not.i111 = icmp eq ptr %0, null
  %i.x = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.y = or i32 %.278, 2695168
  %i.z = getelementptr i8, ptr %3, i64 32
  %i.aa = getelementptr i8, ptr %3, i64 8         ; 3 uses
  %.not31.i = icmp eq ptr %4, null
  %i.ab = getelementptr i8, ptr %4, i64 84
  %i.ac = getelementptr i8, ptr %4, i64 72
  %i.ad = getelementptr i8, ptr %4, i64 80
  %i.ae = getelementptr i8, ptr %4, i64 56
  %i.af = getelementptr i8, ptr %4, i64 48
  %i.ag = getelementptr i8, ptr %4, i64 8
  %i.ah = getelementptr i8, ptr %1, i64 40
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %ttm_pool_restore_valid.exit.thread
  %.075201 = phi i32 [ %i.t, %.lr.ph ], [ %.2.ph, %ttm_pool_restore_valid.exit.thread ] ; 3 uses
  %.084200 = phi i1 [ true, %.lr.ph ], [ %.286.ph, %ttm_pool_restore_valid.exit.thread ]
  %.087199 = phi i32 [ %i.v, %.lr.ph ], [ %i.gf, %ttm_pool_restore_valid.exit.thread ] ; 21 uses
  %.val12.i = load i32, ptr %i.p, align 4         ; 5 uses
  %i.ai = and i32 %.val12.i, 256
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = zext i32 %.075201 to i64
  %i.ak = getelementptr [440 x i8], ptr %i.w, i64 %i.aj
  %i.al = zext nneg i32 %.087199 to i64
  %i.am = getelementptr [40 x i8], ptr %i.ak, i64 %i.al
  br label %ttm_pool_select_type.exit

bb.h:                                             ; preds = %bb.f
  switch i32 %.075201, label %.thread [
    i32 1, label %bb.i
    i32 0, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %i.an = and i32 %.val12.i, 512
  %.not14.i = icmp eq i32 %i.an, 0
  %i.ao = zext nneg i32 %.087199 to i64           ; 2 uses
  br i1 %.not14.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr [40 x i8], ptr @global_dma32_write_combined, i64 %i.ao
  br label %ttm_pool_select_type.exit

bb.k:                                             ; preds = %bb.i
  %i.aq = getelementptr [40 x i8], ptr @global_write_combined, i64 %i.ao
  br label %ttm_pool_select_type.exit

bb.l:                                             ; preds = %bb.h
  %i.ar = and i32 %.val12.i, 512
  %.not13.i = icmp eq i32 %i.ar, 0
  %i.as = zext nneg i32 %.087199 to i64           ; 2 uses
  br i1 %.not13.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr [40 x i8], ptr @global_dma32_uncached, i64 %i.as
  br label %ttm_pool_select_type.exit

bb.n:                                             ; preds = %bb.l
  %i.au = getelementptr [40 x i8], ptr @global_uncached, i64 %i.as
  br label %ttm_pool_select_type.exit

ttm_pool_select_type.exit:                        ; preds = %bb.g, %bb.j, %bb.k, %bb.m, %bb.n
  %.0.i = phi ptr [ %i.am, %bb.g ], [ %i.au, %bb.n ], [ %i.ap, %bb.j ], [ %i.aq, %bb.k ], [ %i.at, %bb.m ] ; 3 uses
  %i.av = icmp ne ptr %.0.i, null
  %or.cond = and i1 %.084200, %i.av
  br i1 %or.cond, label %bb.o, label %.thread

bb.o:                                             ; preds = %ttm_pool_select_type.exit
  br i1 %.not.i111, label %.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = load i32, ptr %i.x, align 8             ; 2 uses
  %i.ax = icmp eq i32 %i.aw, -1
  br i1 %i.ax, label %.thread.i, label %ttm_pool_nid.exit

.thread.i:                                        ; preds = %bb.p, %bb.o
  %i.ay = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @numa_node) #15, !srcloc !26
  br label %ttm_pool_nid.exit

ttm_pool_nid.exit:                                ; preds = %bb.p, %.thread.i
  %.1.i = phi i32 [ %i.ay, %.thread.i ], [ %i.aw, %bb.p ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr null, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i64 1, ptr %i.c, align 8
  %i.az = getelementptr i8, ptr %.0.i, i64 32
  %i.ba = call i64 @list_lru_walk_node(ptr noundef %i.az, i32 noundef %.1.i, ptr noundef nonnull @take_one_from_lru, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #16
  %i.bb = and i64 %i.ba, 4294967295
  %i.bc = icmp eq i64 %i.bb, 1
  %i.bd = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.be = icmp ne ptr %i.bd, null
  %or.cond.i = select i1 %i.bc, i1 %i.be, i1 false
  br i1 %or.cond.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %ttm_pool_nid.exit
  %i.bf = getelementptr i8, ptr %.0.i, i64 8      ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 8
  %i.bh = shl nuw i32 1, %i.bg
  %i.bi = sext i32 %i.bh to i64
  %i.bj = sext i32 %.1.i to i64
  %i.bk = getelementptr [8 x i8], ptr @allocated_pages, i64 %i.bj ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock subq $1, $0", "=*m,er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bk, i64 range(i64 -2147483648, 2147483648) %i.bi, ptr elementtype(i64) %i.bk) #12, !srcloc !27
  %i.bl = load ptr, ptr %i.b, align 8
  %i.bm = load i32, ptr %i.bf, align 8
  %i.bn = shl nuw i32 1, %i.bm
  %.val7.i = load i64, ptr %i.bl, align 16
  %i.bo = lshr i64 %.val7.i, 58
  %i.bp = getelementptr [8 x i8], ptr @node_data, i64 %i.bo
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = sext i32 %i.bn to i64
  call void @mod_node_page_state(ptr noundef %i.bq, i32 noundef 62, i64 noundef %i.br) #16
  %i.bs = load ptr, ptr %i.b, align 8
  %i.bt = load i32, ptr %i.bf, align 8
  %.neg.i = shl nsw i32 -1, %i.bt
  %.val.i = load i64, ptr %i.bs, align 16
  %i.bu = lshr i64 %.val.i, 58
  %i.bv = getelementptr [8 x i8], ptr @node_data, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = sext i32 %.neg.i to i64
  call void @mod_node_page_state(ptr noundef %i.bw, i32 noundef 63, i64 noundef %i.bx) #16
  %.pre.i = load ptr, ptr %i.b, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %ttm_pool_nid.exit
  %i.by = phi ptr [ %.pre.i, %bb.q ], [ %i.bd, %ttm_pool_nid.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %.not100 = icmp eq ptr %i.by, null
  br i1 %.not100, label %..thread_crit_edge, label %ttm_pool_alloc_page.exit.thread153

..thread_crit_edge:                               ; preds = %bb.r
  %.val61.i.pre = load i32, ptr %i.p, align 4
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.h, %ttm_pool_select_type.exit
  %.val61.i = phi i32 [ %.val61.i.pre, %..thread_crit_edge ], [ %.val12.i, %bb.h ], [ %.val12.i, %ttm_pool_select_type.exit ] ; 2 uses
  %i.bz = and i32 %.val61.i, 255                  ; 2 uses
  %.not.i112 = icmp eq i32 %.087199, 0            ; 3 uses
  %spec.select.i = select i1 %.not.i112, i32 %.278, i32 %i.y ; 2 uses
  %.not55.i = icmp ne i32 %i.bz, 0
  %i.ca = icmp ugt i32 %.087199, %i.bz
  %or.cond.i113 = and i1 %.not55.i, %i.ca
  %i.cb = and i32 %spec.select.i, 3762630
  %.1.i114 = select i1 %or.cond.i113, i32 %i.cb, i32 %spec.select.i ; 4 uses
  %i.cc = and i32 %.val61.i, 256
  %.not62.i = icmp eq i32 %i.cc, 0
  br i1 %.not62.i, label %bb.s, label %bb.x

bb.s:                                             ; preds = %.thread
  %i.cd = load i32, ptr %i.x, align 8             ; 2 uses
  %i.ce = icmp eq i32 %i.cd, -1
  br i1 %i.ce, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cf = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @numa_node) #15, !srcloc !26
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0.i.i117 = phi i32 [ %i.cf, %bb.t ], [ %i.cd, %bb.s ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.1.i114, ptr %i.a, align 4
  %i.cg = and i32 %.1.i114, 2105344
  %.not.i.i.i.i = icmp eq i32 %i.cg, 2105344
  br i1 %.not.i.i.i.i, label %.split5.i.i.i.i, label %alloc_pages_node_noprof.exit.i

.split5.i.i.i.i:                                  ; preds = %bb.u
  %i.ch = sext i32 %.0.i.i117 to i64
  %i.ci = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) getelementptr inbounds nuw (i8, ptr @node_states, i64 8), i64 range(i64 -2147483648, 2147483648) %i.ch) #12, !srcloc !48 ; 2 uses
  %i.cj = icmp ult i8 %i.ci, 2
  call void @llvm.assume(i1 %i.cj)
  %i.ck = trunc nuw i8 %i.ci to i1
  br i1 %i.ck, label %alloc_pages_node_noprof.exit.i, label %bb.v

bb.v:                                             ; preds = %.split5.i.i.i.i
  %i.cl = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull %i.a, i32 noundef %.0.i.i117) #17 ; 0 uses
  call void @dump_stack() #17
  br label %alloc_pages_node_noprof.exit.i

alloc_pages_node_noprof.exit.i:                   ; preds = %bb.v, %.split5.i.i.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cm = call ptr @__alloc_pages_noprof(i32 noundef range(i32 1050624, 3768320) %.1.i114, i32 noundef %.087199, i32 noundef %.0.i.i117, ptr noundef null) #16 ; 4 uses
  %.not56.i = icmp eq ptr %i.cm, null
  br i1 %.not56.i, label %ttm_pool_alloc_page.exit.thread, label %bb.w

bb.w:                                             ; preds = %alloc_pages_node_noprof.exit.i
  %i.cn = zext nneg i32 %.087199 to i64
  %i.co = getelementptr i8, ptr %i.cm, i64 40
  store i64 %i.cn, ptr %i.co, align 8
  %i.cp = shl nuw nsw i32 1, %.087199
  %.val60.i = load i64, ptr %i.cm, align 16
  %i.cq = lshr i64 %.val60.i, 58
  %i.cr = getelementptr [8 x i8], ptr @node_data, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = zext nneg i32 %i.cp to i64
  call void @mod_node_page_state(ptr noundef %i.cs, i32 noundef 62, i64 noundef %i.ct) #16
  br label %ttm_pool_alloc_page.exit.thread153

bb.x:                                             ; preds = %.thread
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 32), align 16
  %i.cv = call noalias align 8 dereferenceable_or_null(16) ptr @__kmalloc_cache_noprof(ptr noundef %i.cu, i32 noundef 3264, i64 noundef 16) #18 ; 5 uses
  %.not57.i = icmp eq ptr %i.cv, null
  br i1 %.not57.i, label %ttm_pool_alloc_page.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %spec.select59.i = select i1 %.not.i112, i64 64, i64 320
  %i.cw = load ptr, ptr %0, align 8
  %i.cx = zext nneg i32 %.087199 to i64           ; 2 uses
  %i.cy = shl nuw nsw i64 4096, %i.cx
  %i.cz = call ptr @dma_alloc_attrs(ptr noundef %i.cw, i64 noundef %i.cy, ptr noundef nonnull %i.cv, i32 noundef %.1.i114, i64 noundef %spec.select59.i) #16 ; 6 uses
  %.not58.i = icmp eq ptr %i.cz, null
  br i1 %.not58.i, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.da = call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %i.cz) #16
  br i1 %i.da, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.db = call ptr @vmalloc_to_page(ptr noundef nonnull %i.cz) #16
  %.pre.i116 = ptrtoint ptr %i.cz to i64
  br label %ttm_pool_alloc_page.exit

bb.ab:                                            ; preds = %bb.z
  %i.dc = load i64, ptr @vmemmap_base, align 8
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = ptrtoint ptr %i.cz to i64               ; 2 uses
  %i.df = add i64 %i.de, 2147483648
  %i.dg = icmp ugt ptr %i.cz, inttoptr (i64 -2147483649 to ptr)
  %i.dh = load i64, ptr @phys_base, align 8
  %i.di = load i64, ptr @page_offset_base, align 8
  %i.dj = sub i64 -2147483648, %i.di
  %i.dk = select i1 %i.dg, i64 %i.dh, i64 %i.dj
  %i.dl = add i64 %i.df, %i.dk
  %i.dm = lshr i64 %i.dl, 12
  %i.dn = getelementptr [64 x i8], ptr %i.dd, i64 %i.dm
  br label %ttm_pool_alloc_page.exit

bb.ac:                                            ; preds = %bb.y
  call void @kfree(ptr noundef nonnull %i.cv) #16
  br label %ttm_pool_alloc_page.exit.thread

ttm_pool_alloc_page.exit:                         ; preds = %bb.aa, %bb.ab
  %.pre-phi.i = phi i64 [ %i.de, %bb.ab ], [ %.pre.i116, %bb.aa ]
  %.051.i = phi ptr [ %i.dn, %bb.ab ], [ %i.db, %bb.aa ] ; 3 uses
  %i.do = or i64 %.pre-phi.i, %i.cx
  %i.dp = getelementptr i8, ptr %i.cv, i64 8
  store i64 %i.do, ptr %i.dp, align 8
  %i.dq = ptrtoint ptr %i.cv to i64
  %i.dr = getelementptr i8, ptr %.051.i, i64 40
  store i64 %i.dq, ptr %i.dr, align 8
  %.not101 = icmp eq ptr %.051.i, null
  br i1 %.not101, label %ttm_pool_alloc_page.exit.thread, label %ttm_pool_alloc_page.exit.thread153

ttm_pool_alloc_page.exit.thread:                  ; preds = %bb.x, %alloc_pages_node_noprof.exit.i, %bb.ac, %ttm_pool_alloc_page.exit
  br i1 %.not.i112, label %ttm_pool_page_allocated.exit, label %bb.ad

bb.ad:                                            ; preds = %ttm_pool_alloc_page.exit.thread
  %i.ds = add nsw i32 %.087199, -1
  %i.dt = load i32, ptr %i.r, align 8
  br label %ttm_pool_restore_valid.exit.thread

ttm_pool_alloc_page.exit.thread153:               ; preds = %bb.w, %bb.r, %ttm_pool_alloc_page.exit
  %.1160 = phi i32 [ 2, %ttm_pool_alloc_page.exit ], [ 2, %bb.w ], [ %.075201, %bb.r ] ; 7 uses
  %.183159 = phi ptr [ %.051.i, %ttm_pool_alloc_page.exit ], [ %i.cm, %bb.w ], [ %i.by, %bb.r ] ; 6 uses
  %.185158 = phi i1 [ false, %ttm_pool_alloc_page.exit ], [ false, %bb.w ], [ true, %bb.r ] ; 3 uses
  %i.du = load i32, ptr %i.z, align 8
  %i.dv = icmp eq i32 %.1160, %i.du               ; 2 uses
  br i1 %i.dv, label %.critedge.i, label %ttm_pool_apply_caching.exit.thread.i

.critedge.i:                                      ; preds = %ttm_pool_alloc_page.exit.thread153
  %i.dw = load ptr, ptr %3, align 8               ; 2 uses
  %i.dx = load ptr, ptr %i.aa, align 8            ; 3 uses
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = lshr exact i64 %i.ea, 3
  %i.ec = trunc i64 %i.eb to i32                  ; 3 uses
  %.not.i.i = icmp eq i32 %i.ec, 0
  br i1 %.not.i.i, label %ttm_pool_apply_caching.exit.thread.i, label %bb.ae

bb.ae:                                            ; preds = %.critedge.i
  switch i32 %.1160, label %bb.ah [
    i32 0, label %bb.ag
    i32 1, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae
  %i.ed = call i32 @set_pages_array_wc(ptr noundef %i.dx, i32 noundef %i.ec) #16
  br label %ttm_pool_apply_caching.exit.i

bb.ag:                                            ; preds = %bb.ae
  %i.ee = call i32 @set_pages_array_uc(ptr noundef %i.dx, i32 noundef %i.ec) #16
  br label %ttm_pool_apply_caching.exit.i

bb.ah:                                            ; preds = %bb.ae
  store ptr %i.dw, ptr %i.aa, align 8
  br label %ttm_pool_apply_caching.exit.thread.i

ttm_pool_apply_caching.exit.i:                    ; preds = %bb.ag, %bb.af
  %.0.i.i119 = phi i32 [ %i.ed, %bb.af ], [ %i.ee, %bb.ag ] ; 2 uses
  %.not.i120 = icmp eq i32 %.0.i.i119, 0
  br i1 %.not.i120, label %ttm_pool_apply_caching.exit.thread.i, label %bb.as

ttm_pool_apply_caching.exit.thread.i:             ; preds = %ttm_pool_apply_caching.exit.i, %bb.ah, %.critedge.i, %ttm_pool_alloc_page.exit.thread153
  %i.ef = load ptr, ptr %i.h, align 8
  %.not29.i = icmp eq ptr %i.ef, null
  br i1 %.not29.i, label %ttm_pool_map.exit.thread.i, label %bb.ai

bb.ai:                                            ; preds = %ttm_pool_apply_caching.exit.thread.i
  %.val.i.i = load i32, ptr %i.p, align 4
  %i.eg = and i32 %.val.i.i, 256
  %.not14.i.i = icmp eq i32 %i.eg, 0
  br i1 %.not14.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eh = getelementptr i8, ptr %.183159, i64 40
  %i.ei = load i64, ptr %i.eh, align 8
  %i.ej = inttoptr i64 %i.ei to ptr
  %i.ek = load i64, ptr %i.ej, align 8
  br label %ttm_pool_map.exit.thread.i

bb.ak:                                            ; preds = %bb.ai
  %i.el = zext nneg i32 %.087199 to i64
  %i.em = shl nuw nsw i64 4096, %i.el
  %i.en = load ptr, ptr %0, align 8
  %i.eo = call i64 @dma_map_page_attrs(ptr noundef %i.en, ptr noundef nonnull %.183159, i64 noundef 0, i64 noundef %i.em, i32 noundef 0, i64 noundef 0) #16 ; 2 uses
  %.not.i32.i = icmp eq i64 %i.eo, -1
  br i1 %.not.i32.i, label %bb.as, label %ttm_pool_map.exit.thread.i

ttm_pool_map.exit.thread.i:                       ; preds = %bb.ak, %bb.aj, %ttm_pool_apply_caching.exit.thread.i
  %.034.i = phi i64 [ 0, %ttm_pool_apply_caching.exit.thread.i ], [ %i.ek, %bb.aj ], [ %i.eo, %bb.ak ] ; 3 uses
  br i1 %.not31.i, label %bb.al, label %bb.an

bb.al:                                            ; preds = %ttm_pool_map.exit.thread.i
  %i.ep = zext nneg i32 %.087199 to i64
  %i.eq = shl nuw nsw i64 1, %i.ep                ; 5 uses
  %i.er = icmp ult i32 %.087199, 2
  br i1 %i.er, label %.lr.ph.i.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.al
  %unroll_iter = and i64 %i.eq, 9223372036854775804
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.new
end_hunk_0
