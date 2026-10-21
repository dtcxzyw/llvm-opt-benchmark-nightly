Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/info?download=true
inline.NumInlined: 42
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop", target_cpu: "x86-64")
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_seq_root: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad snd_seq_root ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_info_get_line: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad snd_info_get_line ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_info_get_str: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad snd_info_get_str ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_info_create_module_entry: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad snd_info_create_module_entry ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_info_create_card_entry: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad snd_info_create_card_entry ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_info_free_entry: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad snd_info_free_entry ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_info_register: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad snd_info_register ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_card_rw_proc_new: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad snd_card_rw_proc_new ; .previous"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, ptr }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.uts_namespace = type { %struct.new_utsname, ptr, ptr, [40 x i8], %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.ns_common = type { %struct.anon.14, i32, ptr, ptr, i32, %union.anon.15 }
%struct.anon.14 = type { %struct.refcount_struct, [60 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.15 = type { %struct.ns_tree }
%struct.ns_tree = type { i64, %struct.atomic_t, %struct.ns_tree_node, %struct.ns_tree_node, %struct.ns_tree_node, %struct.ns_tree_root }
%struct.ns_tree_node = type { %struct.rb_node, %struct.list_head }
%struct.rb_node = type { i64, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.ns_tree_root = type { %struct.rb_root, %struct.list_head }
%struct.rb_root = type { ptr }

@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"meminfo\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"memdebug\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"detect\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"devices\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"oss\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"cards\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"timers\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"synth\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"pcm\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"seq\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"card\00", align 1
@snd_seq_root = dso_local global ptr null, align 8
@__UNIQUE_ID_addressable_snd_seq_root_490 = internal global ptr @snd_seq_root, section ".discard.addressable", align 8
@.str.12 = private unnamed_addr constant [7 x i8] c"asound\00", align 1
@snd_proc_root = internal unnamed_addr global ptr null, align 8
@.str.13 = private unnamed_addr constant [7 x i8] c"card%i\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@info_mutex = internal global %struct.mutex zeroinitializer, align 8
@__UNIQUE_ID_addressable_snd_info_get_line_509 = internal global ptr @snd_info_get_line, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_snd_info_get_str_510 = internal global ptr @snd_info_get_str, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_snd_info_create_module_entry_513 = internal global ptr @snd_info_create_module_entry, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_snd_info_create_card_entry_514 = internal global ptr @snd_info_create_card_entry, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_snd_info_free_entry_519 = internal global ptr @snd_info_free_entry, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_snd_info_register_522 = internal global ptr @snd_info_register, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_snd_card_rw_proc_new_523 = internal global ptr @snd_card_rw_proc_new, section ".discard.addressable", align 8
@.str.15 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 16
@snd_info_entry_operations = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @snd_info_entry_open, ptr @snd_info_entry_read, ptr null, ptr @snd_info_entry_write, ptr @snd_info_entry_llseek, ptr @snd_info_entry_release, ptr @snd_info_entry_poll, ptr @snd_info_entry_ioctl, ptr null, ptr @snd_info_entry_mmap, ptr null }, align 8
@snd_info_text_entry_ops = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @snd_info_text_entry_open, ptr @seq_read, ptr null, ptr @snd_info_text_entry_write, ptr @seq_lseek, ptr @snd_info_text_entry_release, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.22 = private unnamed_addr constant [55 x i8] c"Advanced Linux Sound Architecture Driver Version k%s.\0A\00", align 1
@init_uts_ns = external dso_local global %struct.uts_namespace, align 64
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_addressable_snd_card_rw_proc_new_523, ptr @__UNIQUE_ID_addressable_snd_info_create_card_entry_514, ptr @__UNIQUE_ID_addressable_snd_info_create_module_entry_513, ptr @__UNIQUE_ID_addressable_snd_info_free_entry_519, ptr @__UNIQUE_ID_addressable_snd_info_get_line_509, ptr @__UNIQUE_ID_addressable_snd_info_get_str_510, ptr @__UNIQUE_ID_addressable_snd_info_register_522, ptr @__UNIQUE_ID_addressable_snd_seq_root_490, ptr @snd_info_done], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local range(i32 0, 2) i32 @snd_info_check_reserved_words(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str, ptr noundef %0) #13
  %.not8 = icmp eq i32 %i.a, 0
  br i1 %.not8, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.1, ptr noundef %0) #13
  %.not8.1 = icmp eq i32 %i.b, 0
  br i1 %.not8.1, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.2, ptr noundef %0) #13
  %.not8.2 = icmp eq i32 %i.c, 0
  br i1 %.not8.2, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.3, ptr noundef %0) #13
  %.not8.3 = icmp eq i32 %i.d, 0
  br i1 %.not8.3, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.4, ptr noundef %0) #13
  %.not8.4 = icmp eq i32 %i.e, 0
  br i1 %.not8.4, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.5, ptr noundef %0) #13
  %.not8.5 = icmp eq i32 %i.f, 0
  br i1 %.not8.5, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.6, ptr noundef %0) #13
  %.not8.6 = icmp eq i32 %i.g, 0
  br i1 %.not8.6, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.7, ptr noundef %0) #13
  %.not8.7 = icmp eq i32 %i.h, 0
  br i1 %.not8.7, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.8, ptr noundef %0) #13
  %.not8.8 = icmp eq i32 %i.i, 0
  br i1 %.not8.8, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.9, ptr noundef %0) #13
  %.not8.9 = icmp eq i32 %i.j, 0
  br i1 %.not8.9, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.10, ptr noundef %0) #13
  %.not8.10 = icmp eq i32 %i.k, 0
  br i1 %.not8.10, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.l = tail call i32 @strncmp(ptr noundef %0, ptr noundef dereferenceable(5) @.str.11, i64 noundef 4) #13
  %.not7 = icmp ne i32 %i.l, 0
  %. = zext i1 %.not7 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.05 = phi i32 [ %., %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.05
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local range(i32 -12, 1) i32 @snd_info_init() local_unnamed_addr #3 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc ptr @snd_info_create_entry(ptr noundef @.str.12, ptr noundef null, ptr noundef null) #14, !srcloc !13 ; 3 uses
  store ptr %i.a, ptr @snd_proc_root, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  store i16 16749, ptr %i.b, align 8
  %i.c = tail call ptr @proc_mkdir(ptr noundef @.str.12, ptr noundef null) #13 ; 2 uses
  %i.d = load ptr, ptr @snd_proc_root, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 80
  store ptr %i.c, ptr %i.e, align 8
  %.not2 = icmp eq ptr %i.c, null
  br i1 %.not2, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc ptr @create_subdir(ptr noundef null, ptr noundef @.str.10) #14, !srcloc !14 ; 2 uses
  store ptr %i.f, ptr @snd_seq_root, align 8
  %.not3 = icmp eq ptr %i.f, null
  br i1 %.not3, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call fastcc i32 @snd_info_version_init() #14, !srcloc !15
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @snd_minor_info_init() #13
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i32 @snd_card_info_init() #13
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.c, %bb.b
  %i.m = load ptr, ptr @snd_proc_root, align 8
  tail call void @snd_info_free_entry(ptr noundef %i.m) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.a, %bb.g
  %.0 = phi i32 [ -12, %bb.g ], [ -12, %bb.a ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noundef ptr @snd_info_create_entry(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 16), align 16
  %i.b = tail call noalias align 8 dereferenceable_or_null(144) ptr @__kmalloc_cache_noprof(ptr noundef %i.a, i32 noundef 3520, i64 noundef range(i64 32, 145) 144) #15 ; 14 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias ptr @kstrdup(ptr noundef %0, i32 noundef 3264) #13 ; 2 uses
  store ptr %i.d, ptr %i.b, align 8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @kfree(ptr noundef nonnull %i.b) #13
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.b, i64 8
  store i16 -32476, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %i.b, i64 24
  store i16 0, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %i.b, i64 88
  tail call void @mutex_init_generic(ptr noundef %i.h) #13
  %i.i = getelementptr i8, ptr %i.b, i64 112      ; 3 uses
  store volatile ptr %i.i, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %i.b, i64 120
  store volatile ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %i.b, i64 128      ; 6 uses
  store volatile ptr %i.k, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %i.b, i64 136      ; 2 uses
  store volatile ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.b, i64 48
  store ptr %1, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %i.b, i64 56
  store ptr %2, ptr %i.n, align 8
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %1, i64 88         ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.o) #13
  %i.p = getelementptr i8, ptr %1, i64 112
  %i.q = getelementptr i8, ptr %1, i64 120        ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  store ptr %i.k, ptr %i.q, align 8
  store ptr %i.p, ptr %i.k, align 8
  store ptr %i.r, ptr %i.l, align 8
  store volatile ptr %i.k, ptr %i.r, align 8
  tail call void @mutex_unlock(ptr noundef %i.o) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.b, %bb.e ], [ %i.b, %bb.d ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noundef ptr @create_subdir(ptr noundef %0, ptr noundef %1) unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr @snd_proc_root, align 8
  %i.b = tail call fastcc noundef ptr @snd_info_create_entry(ptr noundef %1, ptr noundef %i.a, ptr noundef %0) #14, !srcloc !10 ; 5 uses
  %.not = icmp eq ptr %i.b, null
end_hunk_0
begin_hunk_1_@snd_info_create_card_entry:bb.a
  %i.a = getelementptr i8, ptr %0, i64 576
  %i.b = load ptr, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %2, %bb.a ], [ %i.b, %bb.b ]
  %i.c = getelementptr i8, ptr %0, i64 392
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call fastcc ptr @snd_info_create_entry(ptr noundef %1, ptr noundef %.0, ptr noundef %i.d) #14, !srcloc !12
  ret ptr %i.e
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -12, 1) i32 @snd_card_rw_proc_new(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #4 align 16 prefalign(16) {
snd_info_create_card_entry.exit:
  %i.a = getelementptr i8, ptr %0, i64 576
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 392
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call fastcc noundef ptr @snd_info_create_entry(ptr noundef %1, ptr noundef %i.b, ptr noundef %i.d) #14, !srcloc !12 ; 5 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.a

bb.a:                                             ; preds = %snd_info_create_card_entry.exit
  %i.f = getelementptr i8, ptr %i.e, i64 64
  store ptr %2, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %i.e, i64 32
  store ptr %3, ptr %i.g, align 8
  %.not13 = icmp eq ptr %4, null
  br i1 %.not13, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.e, i64 8        ; 2 uses
  %i.i = load i16, ptr %i.h, align 8
  %i.j = or i16 %i.i, 128
  store i16 %i.j, ptr %i.h, align 8
  %i.k = getelementptr i8, ptr %i.e, i64 40
  store ptr %4, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b, %snd_info_create_card_entry.exit
  %.0 = phi i32 [ -12, %snd_info_create_card_entry.exit ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_init_generic(ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @proc_mkdir_mode(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @proc_create_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @proc_set_size(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -2147483648, 1) i32 @snd_info_entry_open(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 536
  %.val = load ptr, ptr %i.a, align 8             ; 7 uses
  tail call void @mutex_lock(ptr noundef @info_mutex) #13
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %alloc_info_private.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %.val, i64 80
  %i.c = load ptr, ptr %i.b, align 8
  %.not17.i = icmp eq ptr %i.c, null
  br i1 %.not17.i, label %alloc_info_private.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %.val, i64 56      ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call zeroext i1 @try_module_get(ptr noundef %i.e) #13
  br i1 %i.f, label %bb.d, label %alloc_info_private.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 40), align 8
  %i.h = tail call noalias align 8 dereferenceable_or_null(32) ptr @__kmalloc_cache_noprof(ptr noundef %i.g, i32 noundef 3520, i64 noundef range(i64 32, 145) 32) #15 ; 5 uses
  %.not18.i = icmp eq ptr %i.h, null
  br i1 %.not18.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %i.d, align 8
  tail call void @module_put(ptr noundef %i.i) #13
  br label %alloc_info_private.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %i.h, i64 16
  store ptr %.val, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %1, i64 40
  %i.l = load i32, ptr %i.k, align 8              ; 2 uses
  %i.m = and i32 %i.l, 3                          ; 2 uses
  %i.n = and i32 %i.l, 1
  %or.cond = icmp eq i32 %i.n, 0
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr i8, ptr %.val, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.s = add nsw i32 %i.m, -1
  %or.cond3 = icmp ult i32 %i.s, 2
  %i.t = getelementptr i8, ptr %.val, i64 32
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  br i1 %or.cond3, label %bb.i, label %._crit_edge

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  %.not26 = icmp eq ptr %i.w, null
  br i1 %.not26, label %bb.l, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h, %bb.i
  %i.x = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not27 = icmp eq ptr %i.x, null
  br i1 %.not27, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.y = trunc nuw nsw i32 %i.m to i16
  %i.z = getelementptr i8, ptr %i.h, i64 24
  %i.aa = tail call i32 %i.x(ptr noundef nonnull %.val, i16 noundef zeroext %i.y, ptr noundef %i.z) #13 ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %i.ac = getelementptr i8, ptr %1, i64 24
  store ptr %i.h, ptr %i.ac, align 8
  br label %alloc_info_private.exit.thread

bb.l:                                             ; preds = %bb.g, %bb.i, %bb.j
  %.0 = phi i32 [ %i.aa, %bb.j ], [ -19, %bb.i ], [ -19, %bb.g ]
  tail call void @kfree(ptr noundef nonnull %i.h) #13
  %i.ad = load ptr, ptr %i.d, align 8
  tail call void @module_put(ptr noundef %i.ad) #13
  br label %alloc_info_private.exit.thread

alloc_info_private.exit.thread:                   ; preds = %bb.c, %bb.b, %bb.a, %bb.e, %bb.l, %bb.k
  %.022 = phi i32 [ 0, %bb.k ], [ %.0, %bb.l ], [ -14, %bb.c ], [ -19, %bb.b ], [ -19, %bb.a ], [ -12, %bb.e ]
  tail call void @mutex_unlock(ptr noundef @info_mutex) #13
  ret i32 %.022
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @snd_info_entry_read(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3) #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = load i64, ptr %3, align 8                ; 5 uses
  %i.f = or i64 %i.e, %2
  %or.cond.not.i = icmp sgt i64 %i.f, -1
  br i1 %or.cond.not.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.d, i64 16
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %.not = icmp slt i64 %i.e, %i.h
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = sub nuw nsw i64 %i.h, %i.e
  %i.j = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.i)
  %i.k = getelementptr i8, ptr %i.d, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %i.b, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call i64 %i.n(ptr noundef %i.d, ptr noundef %i.p, ptr noundef %0, ptr noundef %1, i64 noundef %i.j, i64 noundef %i.e) #13 ; 4 uses
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = add nuw i64 %i.q, %i.e
  store i64 %i.s, ptr %3, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  %.0 = phi i64 [ -5, %bb.a ], [ 0, %bb.b ], [ %i.q, %bb.d ], [ %i.q, %bb.c ]
  ret i64 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @snd_info_entry_write(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3) #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = load i64, ptr %3, align 8                ; 4 uses
  %i.f = or i64 %i.e, %2
  %or.cond.not.i = icmp sgt i64 %i.f, -1
  br i1 %or.cond.not.i, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.d, i64 16
  %i.h = load i64, ptr %i.g, align 8
  %i.i = sub i64 %i.h, %i.e
  %i.j = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.i)
  %i.k = getelementptr i8, ptr %i.d, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %i.b, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call i64 %i.n(ptr noundef %i.d, ptr noundef %i.p, ptr noundef %0, ptr noundef %1, i64 noundef %i.j, i64 noundef %i.e) #13 ; 4 uses
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.s = add nuw i64 %i.q, %i.e
  store i64 %i.s, ptr %3, align 8
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %.0 = phi i64 [ -5, %bb.a ], [ %i.q, %bb.d ], [ %i.q, %bb.c ], [ 0, %bb.b ]
  ret i64 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @snd_info_entry_llseek(ptr noundef %0, i64 noundef %1, i32 noundef %2) #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 88       ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.e) #13
  %i.f = getelementptr i8, ptr %i.d, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.b, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call i64 %i.i(ptr noundef %i.d, ptr noundef %i.k, ptr noundef %0, i64 noundef %1, i32 noundef %2) #13
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %i.d, i64 16
  %i.n = load i64, ptr %i.m, align 8              ; 4 uses
  switch i32 %2, label %bb.i [
    i32 0, label %bb.g
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %0, i64 104
  %i.p = load i64, ptr %i.o, align 8
  %i.q = add i64 %i.p, %1
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %.not29 = icmp eq i64 %i.n, 0
  br i1 %.not29, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add i64 %i.n, %1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.c
  %.026 = phi i64 [ %1, %bb.c ], [ %i.q, %bb.d ], [ %i.r, %bb.f ] ; 3 uses
  %i.s = icmp slt i64 %.026, 0
  br i1 %i.s, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not30.not = icmp eq i64 %i.n, 0
  %i.t = tail call i64 @llvm.smin.i64(i64 %.026, i64 %i.n)
  %.1 = select i1 %.not30.not, i64 %.026, i64 %i.t ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 104
  store i64 %.1, ptr %i.u, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.c, %bb.e, %bb.h, %bb.b
  %.0 = phi i64 [ %i.l, %bb.b ], [ -22, %bb.e ], [ -22, %bb.c ], [ %.1, %bb.h ], [ -22, %bb.g ]
  tail call void @mutex_unlock(ptr noundef %i.e) #13
  ret i64 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @snd_info_entry_release(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %1, i64 40
  %i.j = load i32, ptr %i.i, align 8
  %i.k = trunc i32 %i.j to i16
  %i.l = and i16 %i.k, 3
  %i.m = getelementptr i8, ptr %i.b, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call i32 %i.h(ptr noundef %i.d, i16 noundef zeroext %i.l, ptr noundef %i.n) #13 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = getelementptr i8, ptr %i.d, i64 56
  %i.q = load ptr, ptr %i.p, align 8
  tail call void @module_put(ptr noundef %i.q) #13
  tail call void @kfree(ptr noundef %i.b) #13
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_info_entry_poll(ptr noundef %0, ptr noundef %1) #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.b, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call i32 %i.h(ptr noundef %i.d, ptr noundef %i.j, ptr noundef %0, ptr noundef %1) #13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.f, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %.not15 = icmp eq ptr %i.m, null
  %spec.select = select i1 %.not15, i32 0, i32 65 ; 2 uses
  %i.n = getelementptr i8, ptr %i.f, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %.not16 = icmp eq ptr %i.o, null
  %i.p = or disjoint i32 %spec.select, 260
  %.1 = select i1 %.not16, i32 %spec.select, i32 %i.p
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.013 = phi i32 [ %i.k, %bb.b ], [ %.1, %bb.c ]
  ret i32 %.013
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -2147483648, 2147483648) i64 @snd_info_entry_ioctl(ptr noundef %0, i32 noundef %1, i64 noundef %2) #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.b, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call i32 %i.h(ptr noundef %i.d, ptr noundef %i.j, ptr noundef %0, i32 noundef %1, i64 noundef %2) #13
  %i.l = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.l, %bb.b ], [ -25, %bb.a ]
  ret i64 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_info_entry_mmap(ptr noundef %0, ptr noundef %1) #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 56
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.c, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call i32 %i.j(ptr noundef %i.f, ptr noundef %i.l, ptr noundef %.val, ptr noundef %0, ptr noundef %1) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.a ], [ %i.m, %bb.c ], [ -6, %bb.b ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -2147483648, 1) i32 @snd_info_text_entry_open(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 536
  %.val = load ptr, ptr %i.a, align 8             ; 5 uses
  tail call void @mutex_lock(ptr noundef @info_mutex) #13
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %alloc_info_private.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %.val, i64 80
  %i.c = load ptr, ptr %i.b, align 8
  %.not17.i = icmp eq ptr %i.c, null
  br i1 %.not17.i, label %alloc_info_private.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %.val, i64 56      ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call zeroext i1 @try_module_get(ptr noundef %i.e) #13
  br i1 %i.f, label %bb.d, label %alloc_info_private.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 40), align 8
  %i.h = tail call noalias align 8 dereferenceable_or_null(32) ptr @__kmalloc_cache_noprof(ptr noundef %i.g, i32 noundef 3520, i64 noundef range(i64 32, 145) 32) #15 ; 7 uses
  %.not18.i = icmp eq ptr %i.h, null
  br i1 %.not18.i, label %alloc_info_private.exit.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %i.h, i64 16
  store ptr %.val, ptr %i.i, align 8
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 40), align 8
  %i.k = tail call noalias align 8 dereferenceable_or_null(32) ptr @__kmalloc_cache_noprof(ptr noundef %i.j, i32 noundef 3520, i64 noundef range(i64 32, 145) 32) #15 ; 2 uses
  store ptr %i.k, ptr %i.h, align 8
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %.val, i64 16
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %.not21 = icmp eq i64 %i.m, 0
  br i1 %.not21, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = tail call i32 @single_open_size(ptr noundef %1, ptr noundef @snd_info_seq_show, ptr noundef nonnull %i.h, i64 noundef %i.m) #13
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.o = tail call i32 @single_open(ptr noundef %1, ptr noundef @snd_info_seq_show, ptr noundef nonnull %i.h) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.018 = phi i32 [ %i.n, %bb.g ], [ %i.o, %bb.h ] ; 2 uses
  %i.p = icmp slt i32 %.018, 0
  br i1 %i.p, label %._crit_edge, label %alloc_info_private.exit.thread

._crit_edge:                                      ; preds = %bb.i
  %.pre = load ptr, ptr %i.h, align 8
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.e
  %i.q = phi ptr [ %.pre, %._crit_edge ], [ null, %bb.e ]
  %.1 = phi i32 [ %.018, %._crit_edge ], [ -12, %bb.e ]
  tail call void @kfree(ptr noundef %i.q) #13
  tail call void @kfree(ptr noundef nonnull %i.h) #13
  br label %alloc_info_private.exit.thread.sink.split

alloc_info_private.exit.thread.sink.split:        ; preds = %bb.d, %bb.j
  %.0.ph = phi i32 [ %.1, %bb.j ], [ -12, %bb.d ]
  %i.r = load ptr, ptr %i.d, align 8
  tail call void @module_put(ptr noundef %i.r) #13
  br label %alloc_info_private.exit.thread

alloc_info_private.exit.thread:                   ; preds = %alloc_info_private.exit.thread.sink.split, %bb.c, %bb.b, %bb.a, %bb.i
  %.0 = phi i32 [ 0, %bb.i ], [ -19, %bb.a ], [ -14, %bb.c ], [ -19, %bb.b ], [ %.0.ph, %alloc_info_private.exit.thread.sink.split ]
  tail call void @mutex_unlock(ptr noundef @info_mutex) #13
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_read(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -14, 2147483648) i64 @snd_info_text_entry_write(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3) #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %3, align 8                ; 3 uses
  %i.j = or i64 %i.i, %2
  %or.cond.not.i = icmp sgt i64 %i.j, -1
  br i1 %or.cond.not.i, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %i.i, %2                     ; 6 uses
  %i.l = icmp ugt i64 %i.k, 16384
  br i1 %i.l, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.f, i64 88       ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.m) #13
  %i.n = getelementptr i8, ptr %i.d, i64 8        ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not50 = icmp eq ptr %i.o, null
  br i1 %.not50, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 40), align 8
  %i.q = tail call noalias align 8 dereferenceable_or_null(32) ptr @__kmalloc_cache_noprof(ptr noundef %i.p, i32 noundef 3520, i64 noundef range(i64 32, 145) 32) #15 ; 3 uses
  store ptr %i.q, ptr %i.n, align 8
  %.not51 = icmp eq ptr %i.q, null
  br i1 %.not51, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.046 = phi ptr [ %i.o, %bb.d ], [ %i.q, %bb.e ] ; 5 uses
  %i.r = getelementptr i8, ptr %.046, i64 16      ; 2 uses
  %i.s = load i32, ptr %i.r, align 8
  %i.t = zext i32 %i.s to i64
  %i.u = icmp samesign ugt i64 %i.k, %i.t
  br i1 %i.u, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.pre = load ptr, ptr %.046, align 8
  br label %copy_from_user.exit

bb.g:                                             ; preds = %bb.f
  %i.v = add nuw nsw i64 %i.k, 4095
  %i.w = and i64 %i.v, 61440
  %i.x = tail call noalias ptr @__kvmalloc_node_noprof(i64 noundef %i.w, i64 noundef 1, i32 noundef 3520, i32 noundef -1) #17 ; 3 uses
  %.not52.not = icmp eq ptr %i.x, null
  br i1 %.not52.not, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %.046, align 8
  tail call void @kvfree(ptr noundef %i.y) #13
  store ptr %i.x, ptr %.046, align 8
  %i.z = trunc nuw nsw i64 %i.k to i32
  %i.aa = add nuw nsw i32 %i.z, 4095
  %i.ab = and i32 %i.aa, 61440
  store i32 %i.ab, ptr %i.r, align 8
  br label %copy_from_user.exit

copy_from_user.exit:                              ; preds = %bb.h, %._crit_edge
  %4 = phi ptr [ %.pre, %._crit_edge ], [ %i.x, %bb.h ]
  %i.ac = getelementptr i8, ptr %4, i64 %i.i
  %i.ad = tail call i64 @_copy_from_user(ptr noundef %i.ac, ptr noundef %1, i64 noundef %2) #13
  %.not53 = icmp eq i64 %i.ad, 0
  br i1 %.not53, label %bb.i, label %.critedge

bb.i:                                             ; preds = %copy_from_user.exit
  %i.ae = trunc nuw nsw i64 %i.k to i32
  %i.af = getelementptr i8, ptr %.046, i64 12
  store i32 %i.ae, ptr %i.af, align 4
  store i64 %i.k, ptr %3, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %copy_from_user.exit, %bb.e, %bb.i
  %.1 = phi i64 [ -14, %copy_from_user.exit ], [ %2, %bb.i ], [ -12, %bb.g ], [ -12, %bb.e ]
  tail call void @mutex_unlock(ptr noundef %i.m) #13
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.b, %bb.a, %.critedge
  %.2 = phi i64 [ -5, %bb.b ], [ %.1, %.critedge ], [ -5, %bb.a ], [ -5, %bb.c ]
  ret i64 %.2
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @snd_info_text_entry_release(ptr noundef %0, ptr noundef %1) #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr i8, ptr %i.d, i64 8        ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.f, i64 40
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not18 = icmp eq ptr %i.j, null
  br i1 %.not18, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.j(ptr noundef %i.f, ptr noundef nonnull %i.h) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = tail call i32 @single_release(ptr noundef %0, ptr noundef %1) #13 ; 0 uses
  %i.l = load ptr, ptr %i.d, align 8
  tail call void @kfree(ptr noundef %i.l) #13
  %i.m = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not19 = icmp eq ptr %i.m, null
  br i1 %.not19, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.m, align 8
  tail call void @kvfree(ptr noundef %i.n) #13
  %i.o = load ptr, ptr %i.g, align 8
  tail call void @kfree(ptr noundef %i.o) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = getelementptr i8, ptr %i.f, i64 56
  %i.q = load ptr, ptr %i.p, align 8
  tail call void @module_put(ptr noundef %i.q) #13
  tail call void @kfree(ptr noundef %i.d) #13
  ret i32 0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @single_open_size(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -5, 1) i32 @snd_info_seq_show(ptr noundef %0, ptr nofree readnone captures(none) %1) #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 32       ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8
  store ptr %0, ptr %i.g, align 8
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = load ptr, ptr %i.b, align 8
  tail call void %i.h(ptr noundef %i.d, ptr noundef %i.i) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -5, %bb.a ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kvmalloc_node_noprof(i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @snd_info_version_read(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #4 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %i.a, ptr noundef @.str.22, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @init_uts_ns, i64 130)) #13
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

attributes #0 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #4 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #5 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree noredzone nounwind null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { fn_ret_thunk_extern nofree noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #9 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { noredzone nounwind "no-builtin-wcslen" }
attributes #14 = { noredzone "no-builtin-wcslen" }
attributes #15 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }
attributes #16 = { nounwind }
attributes #17 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }

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
!10 = !{i64 15788}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{i64 16374}
!13 = !{i64 9726}
!14 = !{i64 10113}
!15 = !{i64 10194}
!16 = distinct !{!16, !11}
!17 = !{i64 16989}
!18 = !{!"auto-init"}
!19 = distinct !{!19, !11}
!20 = !{i64 12353}
!21 = distinct !{!21, !11}
!22 = !{i64 16642}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !11}
end_hunk_1
