Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/tctx?download=true
inline.NumInlined: 46
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_class_key = type {}
%struct.atomic_t = type { i32 }
%struct.static_call_key = type { ptr, %union.anon.24 }
%union.anon.24 = type { i64 }
%struct.io_wq_data = type { ptr, ptr }
%struct.io_uring_rsrc_update = type { i32, i32, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"io_uring/tctx.c\00", align 1
@io_uring_alloc_task_context.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@io_uring_alloc_task_context.__key.2 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"&tctx->wait\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 16
@io_init_wq_offload.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"&hash->wait\00", align 1
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@current_task = external dso_local global ptr, section ".data..percpu..hot..current_task", align 8
@_cond_resched.__UNIQUE_ID_addressable___SCK__cond_resched_113 = internal global ptr @__SCK__cond_resched, section ".discard.addressable", align 8
@__SCK__cond_resched = external dso_local global %struct.static_call_key, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @_cond_resched.__UNIQUE_ID_addressable___SCK__cond_resched_113], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @io_uring_free_tctx(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 2072       ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 168
  %i.e = call ptr @xa_find(ptr noundef %i.d, ptr noundef nonnull %i.a, i64 noundef -1, i32 noundef 8) #8
  %.not17 = icmp eq ptr %i.e, null
  br i1 %.not17, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void asm sideeffect "758: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 758b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 758) #7, !srcloc !17
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 60, i32 2307, i64 16) #7, !srcloc !18
  call void asm sideeffect "759: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 759b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 759) #7, !srcloc !19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr i8, ptr %i.c, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %.not18 = icmp eq ptr %i.g, null
  br i1 %.not18, label %bb.f, label %bb.e, !prof !11

bb.e:                                             ; preds = %bb.d
  call void asm sideeffect "760: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 760b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 760) #7, !srcloc !20
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 63, i32 2307, i64 16) #7, !srcloc !21
  call void asm sideeffect "761: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 761b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 761) #7, !srcloc !22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = load i32, ptr %i.c, align 64
  %.not19 = icmp eq i32 %i.h, 0
  br i1 %.not19, label %bb.h, label %bb.g, !prof !11

bb.g:                                             ; preds = %bb.f
  call void asm sideeffect "762: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 762b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 762) #7, !srcloc !23
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 64, i32 2307, i64 16) #7, !srcloc !24
  call void asm sideeffect "763: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 763b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 763) #7, !srcloc !25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.i = getelementptr i8, ptr %i.c, i64 216
  call void @percpu_counter_destroy_many(ptr noundef %i.i, i32 noundef 1) #8
  call void @kfree(ptr noundef nonnull %i.c) #8
  store ptr null, ptr %i.b, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @xa_find(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @xa_find_after(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @__io_uring_free(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void @io_uring_free_tctx(ptr noundef %0) #9
  %i.a = getelementptr i8, ptr %0, i64 2080       ; 3 uses
  %i.b = load ptr, ptr %i.a, align 32             ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @io_put_bpf_filters(ptr noundef nonnull %i.b) #8
  %i.c = load ptr, ptr %i.a, align 32
  tail call void @kfree(ptr noundef %i.c) #8
  store ptr null, ptr %i.a, align 32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @io_put_bpf_filters(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local ptr @io_uring_alloc_task_context(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.io_wq_data, align 8         ; 6 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 72), align 8
  %i.b = tail call noalias align 8 dereferenceable_or_null(384) ptr @__kmalloc_cache_noprof(ptr noundef %i.a, i32 noundef range(i32 3264, 4197888) 3520, i64 noundef range(i64 32, 385) 384) #10 ; 20 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.i, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 216      ; 2 uses
  %i.d = tail call i32 @__percpu_counter_init_many(ptr noundef %i.c, i64 noundef 0, i32 noundef 3264, i32 noundef 1, ptr noundef @io_uring_alloc_task_context.__key) #8 ; 2 uses
  %.not36 = icmp eq i32 %i.d, 0
  br i1 %.not36, label %bb.d, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void @kfree(ptr noundef nonnull %i.b) #8
  %i.e = sext i32 %i.d to i64
  %i.f = inttoptr i64 %i.e to ptr
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.g = getelementptr i8, ptr %1, i64 64         ; 3 uses
  tail call void @mutex_lock(ptr noundef %i.g) #8
  %i.h = getelementptr i8, ptr %1, i64 952        ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.e, label %io_init_wq_offload.exit

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 48), align 16
  %i.k = tail call noalias align 8 dereferenceable_or_null(40) ptr @__kmalloc_cache_noprof(ptr noundef %i.j, i32 noundef range(i32 3264, 4197888) 3520, i64 noundef range(i64 32, 385) 40) #10 ; 5 uses
  %.not28.i = icmp eq ptr %i.k, null
  br i1 %.not28.i, label %io_init_wq_offload.exit.thread, label %bb.f

io_init_wq_offload.exit.thread:                   ; preds = %bb.e
  tail call void @mutex_unlock(ptr noundef %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  %i.l = getelementptr i8, ptr %i.b, i64 24
  store ptr inttoptr (i64 -12 to ptr), ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  store volatile i32 1, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %i.k, i64 16
  tail call void @__init_waitqueue_head(ptr noundef %i.m, ptr noundef @.str.6, ptr noundef @io_init_wq_offload.__key) #8
  store ptr %i.k, ptr %i.h, align 8
  br label %io_init_wq_offload.exit

io_init_wq_offload.exit:                          ; preds = %bb.d, %bb.f
  %.025.i = phi ptr [ %i.i, %bb.d ], [ %i.k, %bb.f ]
  tail call void @mutex_unlock(ptr noundef %i.g) #8
  store ptr %.025.i, ptr %2, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %1, i64 108
  %i.p = load i32, ptr %i.o, align 4
  %i.q = load volatile i32, ptr @__num_online_cpus, align 4
  %i.r = shl i32 %i.q, 2
  %i.s = tail call i32 @llvm.umin.i32(i32 %i.p, i32 %i.r)
  %i.t = call ptr @io_wq_create(i32 noundef %i.s, ptr noundef nonnull %2) #8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  %i.u = getelementptr i8, ptr %i.b, i64 24
  store ptr %i.t, ptr %i.u, align 8
  %i.v = icmp ugt ptr %i.t, inttoptr (i64 -4096 to ptr)
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %io_init_wq_offload.exit.thread, %io_init_wq_offload.exit
  %.0.i38 = phi ptr [ inttoptr (i64 -12 to ptr), %io_init_wq_offload.exit.thread ], [ %i.t, %io_init_wq_offload.exit ]
  call void @percpu_counter_destroy_many(ptr noundef %i.c, i32 noundef 1) #8
  call void @kfree(ptr noundef nonnull %i.b) #8
  br label %bb.i

bb.h:                                             ; preds = %io_init_wq_offload.exit
  %i.w = getelementptr i8, ptr %i.b, i64 16
  store ptr %0, ptr %i.w, align 16
  %i.x = getelementptr i8, ptr %i.b, i64 168
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %i.y = getelementptr i8, ptr %i.b, i64 184
  call void @__init_waitqueue_head(ptr noundef %i.y, ptr noundef @.str.3, ptr noundef @io_uring_alloc_task_context.__key.2) #8
  %i.z = getelementptr i8, ptr %i.b, i64 208
  store volatile i32 0, ptr %i.z, align 16
  %i.aa = getelementptr i8, ptr %i.b, i64 212
  store volatile i32 0, ptr %i.aa, align 4
  %i.ab = getelementptr i8, ptr %i.b, i64 320
  %i.ac = getelementptr i8, ptr %i.b, i64 32
  %i.ad = getelementptr i8, ptr %i.b, i64 328     ; 3 uses
  store ptr %i.ad, ptr %i.ac, align 16
  store ptr %i.ad, ptr %i.ab, align 16
  store ptr null, ptr %i.ad, align 8
  %i.ae = getelementptr i8, ptr %i.b, i64 256
  store i64 4503599625273344, ptr %i.ae, align 64
  %i.af = getelementptr i8, ptr %i.b, i64 264     ; 3 uses
  store volatile ptr %i.af, ptr %i.af, align 8
  %i.ag = getelementptr i8, ptr %i.b, i64 272
  store volatile ptr %i.af, ptr %i.ag, align 16
  %i.ah = getelementptr i8, ptr %i.b, i64 280
  store ptr @io_tctx_fallback_work, ptr %i.ah, align 8
  %i.ai = getelementptr i8, ptr %i.b, i64 344
  store ptr @tctx_task_work, ptr %i.ai, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h, %bb.g, %bb.c
  %.0 = phi ptr [ %i.b, %bb.h ], [ %i.f, %bb.c ], [ %.0.i38, %bb.g ], [ inttoptr (i64 -12 to ptr), %bb.a ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__percpu_counter_init_many(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @io_tctx_fallback_work(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @tctx_task_work(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @__io_uring_add_tctx_node(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %i.b = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #11, !srcloc !13
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 2072     ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null                  ; 3 uses
  br i1 %.not, label %bb.b, label %bb.f, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @io_uring_alloc_task_context(ptr noundef %i.c, ptr noundef %0) #12 ; 6 uses
  %i.g = icmp ugt ptr %i.f, inttoptr (i64 -4096 to ptr)
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = trunc i64 %i.h to i32
  br label %io_tctx_install_node.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %0, i64 4
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 4096
  %.not36 = icmp eq i32 %i.l, 0
  br i1 %.not36, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.m = getelementptr i8, ptr %0, i64 64         ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.m) #8
  %i.n = getelementptr i8, ptr %0, i64 1080
  %i.o = load i32, ptr %i.n, align 8
  store i32 %i.o, ptr %i.a, align 4
  %i.p = getelementptr i8, ptr %0, i64 1084
  %i.q = load i32, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.q, ptr %i.r, align 4
  tail call void @mutex_unlock(ptr noundef %i.m) #8
  %i.s = getelementptr i8, ptr %i.f, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call i32 @io_wq_max_workers(ptr noundef %i.t, ptr noundef nonnull %i.a) #8 ; 2 uses
  %.not37 = icmp eq i32 %i.u, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br i1 %.not37, label %bb.f, label %io_tctx_install_node.exit.thread43

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a
  %.028 = phi ptr [ %i.f, %bb.e ], [ %i.f, %bb.d ], [ %i.e, %bb.a ] ; 4 uses
  %i.v = getelementptr i8, ptr %.028, i64 24
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not38 = icmp eq ptr %i.w, null
  br i1 %.not38, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @io_wq_set_exit_on_idle(ptr noundef nonnull %i.w, i1 noundef zeroext false) #8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %.028, ptr %i.d, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = getelementptr i8, ptr %.028, i64 168     ; 2 uses
  %i.y = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.z = call ptr @xa_load(ptr noundef %i.x, i64 noundef %i.y) #8
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %bb.k, label %io_tctx_install_node.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 40), align 8
  %i.ab = call noalias align 8 dereferenceable_or_null(32) ptr @__kmalloc_cache_noprof(ptr noundef %i.aa, i32 noundef 3264, i64 noundef 32) #10 ; 9 uses
  %.not24.i = icmp eq ptr %i.ab, null
  br i1 %.not24.i, label %io_tctx_install_node.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr i8, ptr %i.ab, i64 24
  store ptr %0, ptr %i.ac, align 8
  %i.ad = getelementptr i8, ptr %i.ab, i64 16
  store ptr %i.c, ptr %i.ad, align 8
  %i.ae = call ptr @xa_store(ptr noundef %i.x, i64 noundef %i.y, ptr noundef nonnull %i.ab, i32 noundef 3264) #8 ; 2 uses
  %i.af = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ag = and i64 %i.af, 3
  %i.ah = icmp ne i64 %i.ag, 2
  %i.ai = icmp ult ptr %i.ae, inttoptr (i64 -16378 to ptr)
  %spec.select.i.i.not.i = or i1 %i.ai, %i.ah
  %i.aj = lshr i64 %i.af, 2
  %i.ak = trunc i64 %i.aj to i32                  ; 2 uses
  %.not2526.i = icmp eq i32 %i.ak, 0
  %.not25.i = or i1 %spec.select.i.i.not.i, %.not2526.i
  br i1 %.not25.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @kfree(ptr noundef nonnull %i.ab) #8
  br label %io_tctx_install_node.exit

bb.n:                                             ; preds = %bb.l
  %i.al = getelementptr i8, ptr %0, i64 992       ; 2 uses
  call void @mutex_lock(ptr noundef %i.al) #8
  %i.am = getelementptr i8, ptr %0, i64 976       ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  store ptr %i.ab, ptr %i.ao, align 8
  store ptr %i.an, ptr %i.ab, align 8
  %i.ap = getelementptr i8, ptr %i.ab, i64 8
  store ptr %i.am, ptr %i.ap, align 8
  store volatile ptr %i.ab, ptr %i.am, align 8
  call void @mutex_unlock(ptr noundef %i.al) #8
  br label %io_tctx_install_node.exit.thread

io_tctx_install_node.exit:                        ; preds = %bb.m, %bb.k
  %.030 = phi i32 [ %i.ak, %bb.m ], [ -12, %bb.k ] ; 2 uses
  br i1 %.not, label %io_tctx_install_node.exit.thread43, label %io_tctx_install_node.exit.thread

io_tctx_install_node.exit.thread43:               ; preds = %bb.e, %io_tctx_install_node.exit
  %.148 = phi ptr [ %.028, %io_tctx_install_node.exit ], [ %i.f, %bb.e ] ; 3 uses
  %.03047 = phi i32 [ %.030, %io_tctx_install_node.exit ], [ %i.u, %bb.e ]
  store ptr null, ptr %i.d, align 8
  %i.aq = getelementptr i8, ptr %.148, i64 24     ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.not40 = icmp eq ptr %i.ar, null
  br i1 %.not40, label %bb.p, label %bb.o

bb.o:                                             ; preds = %io_tctx_install_node.exit.thread43
  call void @io_wq_exit_start(ptr noundef nonnull %i.ar) #8
  %i.as = load ptr, ptr %i.aq, align 8
  call void @io_wq_put_and_exit(ptr noundef %i.as) #8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %io_tctx_install_node.exit.thread43
  %i.at = getelementptr i8, ptr %.148, i64 216
  call void @percpu_counter_destroy_many(ptr noundef %i.at, i32 noundef 1) #8
  call void @kfree(ptr noundef %.148) #8
  br label %io_tctx_install_node.exit.thread

io_tctx_install_node.exit.thread:                 ; preds = %bb.n, %bb.j, %io_tctx_install_node.exit, %bb.p, %bb.c
  %.0 = phi i32 [ %i.i, %bb.c ], [ %.030, %io_tctx_install_node.exit ], [ %.03047, %bb.p ], [ 0, %bb.j ], [ 0, %bb.n ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @io_wq_max_workers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @io_wq_set_exit_on_idle(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @io_wq_exit_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @io_wq_put_and_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @__io_uring_add_tctx_node_from_submit(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr %0, align 64
  %i.b = and i32 %i.a, 4096
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #11, !srcloc !13
  %i.f = inttoptr i64 %i.e to ptr
  %.not7 = icmp eq ptr %i.d, %i.f
  br i1 %.not7, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = tail call i32 @__io_uring_add_tctx_node(ptr noundef %0) #9 ; 2 uses
  %.not8 = icmp eq i32 %i.g, 0
  br i1 %.not8, label %bb.d, label %bb.e

end_hunk_0
