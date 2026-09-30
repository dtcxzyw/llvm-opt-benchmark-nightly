Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/futex?download=true
inline.NumInlined: 66
inline.NumDeleted: 35
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracepoint = type { ptr, %struct.static_key_false, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.29 }
%struct.atomic_t = type { i32 }
%union.anon.29 = type { i64 }
%struct.futex_q = type { %struct.plist_node, ptr, ptr, ptr, ptr, %union.futex_key, ptr, ptr, ptr, i32, %struct.atomic_t, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.futex_key = type { %struct.anon.25 }
%struct.anon.25 = type { i64, i64, i32 }

@__tracepoint_sched_set_state_tp = external dso_local global %struct.tracepoint, align 8
@futex_q_init = external dso_local local_unnamed_addr constant %struct.futex_q, align 8
@nr_node_ids = external dso_local local_unnamed_addr global i32, align 4
@current_task = external dso_local global ptr, section ".data..percpu..hot..current_task", align 8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local zeroext i1 @io_futex_cache_init(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 744
  %i.b = tail call zeroext i1 @io_alloc_cache_init(ptr noundef %i.a, i32 noundef 32, i32 noundef 144, i32 noundef 0) #6
  ret i1 %i.b
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @io_alloc_cache_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @io_futex_cache_free(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 744
  tail call void @io_alloc_cache_free(ptr noundef %i.a, ptr noundef nonnull @kfree) #6
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @io_alloc_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @io_futex_cancel(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 736
  %i.b = tail call i32 @io_cancel_remove(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.a, ptr noundef nonnull @__io_futex_cancel) #6
  ret i32 %i.b
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @io_cancel_remove(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef zeroext i1 @__io_futex_cancel(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8
  %i.c = icmp eq i8 %i.b, 51
  %i.d = getelementptr i8, ptr %0, i64 184
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @futex_unqueue(ptr noundef %i.e) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %io_req_task_work_add.exit, label %.thread

bb.c:                                             ; preds = %bb.a
  %i.g = load volatile i64, ptr %i.e, align 8
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %io_req_task_work_add.exit, label %io_futexv_claim.exit

io_futexv_claim.exit:                             ; preds = %bb.c
  %i.i = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.e, i64 0, ptr elementtype(i64) %i.e) #7, !srcloc !10 ; 2 uses
  %i.j = icmp ult i8 %i.i, 2
  tail call void @llvm.assume(i1 %i.j)
  %i.k = trunc nuw i8 %i.i to i1
  br i1 %i.k, label %io_req_task_work_add.exit, label %.thread

.thread:                                          ; preds = %io_futexv_claim.exit, %bb.b
  %io_futexv_complete.sink = phi ptr [ @io_futex_complete, %bb.b ], [ @io_futexv_complete, %io_futexv_claim.exit ]
  %i.l = getelementptr i8, ptr %0, i64 152
  store ptr %io_futexv_complete.sink, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %0, i64 160        ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 168
  %.val.i = load ptr, ptr %i.n, align 8           ; 3 uses
  %.not.i.not.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.not.i, label %hlist_del_init.exit, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.o = load ptr, ptr %i.m, align 8              ; 3 uses
  store volatile ptr %i.o, ptr %.val.i, align 8
  %.not.i3.i = icmp eq ptr %i.o, null
  br i1 %.not.i3.i, label %__hlist_del.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.o, i64 8
  store volatile ptr %.val.i, ptr %i.p, align 8
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %bb.e, %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  br label %hlist_del_init.exit

hlist_del_init.exit:                              ; preds = %.thread, %__hlist_del.exit.i
  %i.q = getelementptr i8, ptr %0, i64 88
  store i32 -125, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %0, i64 92
  store i32 0, ptr %i.r, align 4
  %i.s = getelementptr i8, ptr %0, i64 96
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load i32, ptr %i.t, align 64
  %i.v = and i32 %i.u, 8192
  %.not.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %hlist_del_init.exit
  tail call void @io_req_local_work_add(ptr noundef %0, i32 noundef 0) #6
  br label %io_req_task_work_add.exit

bb.g:                                             ; preds = %hlist_del_init.exit
  tail call void @io_req_normal_work_add(ptr noundef %0) #6
  br label %io_req_task_work_add.exit

io_req_task_work_add.exit:                        ; preds = %bb.c, %io_futexv_claim.exit, %bb.g, %bb.f, %bb.b
  %.2 = phi i1 [ false, %bb.b ], [ true, %bb.g ], [ true, %bb.f ], [ false, %io_futexv_claim.exit ], [ false, %bb.c ]
  ret i1 %.2
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local zeroext i1 @io_futex_remove_all(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 736
  %i.b = tail call zeroext i1 @io_cancel_remove_all(ptr noundef %0, ptr noundef %1, ptr noundef %i.a, i1 noundef zeroext %2, ptr noundef nonnull @__io_futex_cancel) #6
  ret i1 %i.b
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @io_cancel_remove_all(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @io_futex_prep(ptr noundef %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %.critedge, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 28
  %i.d = load i32, ptr %i.c, align 4
  %.not26 = icmp eq i32 %i.d, 0
  br i1 %.not26, label %bb.c, label %.critedge, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %1, i64 40
  %i.f = load i16, ptr %i.e, align 8
  %.not27 = icmp eq i16 %i.f, 0
  br i1 %.not27, label %bb.d, label %.critedge, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 44
  %i.h = load i32, ptr %i.g, align 4
  %.not37 = icmp eq i32 %i.h, 0
  br i1 %.not37, label %bb.e, label %.critedge, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %1, i64 16
  %i.j = load volatile i64, ptr %i.i, align 8
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %1, i64 8
  %i.n = load volatile i64, ptr %i.m, align 8     ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %1, i64 48
  %i.q = load volatile i64, ptr %i.p, align 8     ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 24
  store i64 %i.q, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %1, i64 4
  %i.t = load volatile i32, ptr %i.s, align 4     ; 5 uses
  %i.u = and i32 %i.t, -144
  %.not28 = icmp eq i32 %i.u, 0
  br i1 %.not28, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.v = and i32 %i.t, 3                          ; 2 uses
  %i.w = lshr i32 %i.t, 3
  %i.x = and i32 %i.w, 16
  %2 = shl nuw nsw i32 %i.t, 5
  %i.y = and i32 %2, 128                          ; 2 uses
  %3 = shl nuw nsw i32 %i.t, 6
  %4 = and i32 %3, 512
  %5 = or disjoint i32 %4, %i.x
  %6 = or disjoint i32 %5, %i.v
  %7 = or disjoint i32 %6, %i.y
  %.2.i = xor i32 %7, 16
  %i.z = getelementptr i8, ptr %0, i64 32
  store i32 %.2.i, ptr %i.z, align 8
  %i.aa = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #8, !srcloc !12 ; 0 uses
  %.not.i = icmp eq i32 %i.v, 2
  br i1 %.not.i, label %futex_flags_valid.exit, label %.critedge

futex_flags_valid.exit:                           ; preds = %bb.f
  %.not9.i = icmp eq i32 %i.y, 0
  %i.ab = load i32, ptr @nr_node_ids, align 4
  %.not10.not.i = icmp ne i32 %i.ab, -1
  %or.cond.not.i = select i1 %.not9.i, i1 true, i1 %.not10.not.i
  %.not.i29 = icmp ult i64 %i.n, 4294967296
  %or.cond = select i1 %or.cond.not.i, i1 %.not.i29, i1 false
  %.not.i31 = icmp ult i64 %i.q, 4294967296
  %or.cond38 = select i1 %or.cond, i1 %.not.i31, i1 false
  br i1 %or.cond38, label %bb.g, label %.critedge

bb.g:                                             ; preds = %futex_flags_valid.exit
  tail call void @io_req_track_inflight(ptr noundef %0) #6
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.c, %bb.b, %bb.a, %futex_flags_valid.exit, %bb.e, %bb.d, %bb.g
  %.0 = phi i32 [ -22, %bb.e ], [ -22, %bb.d ], [ 0, %bb.g ], [ -22, %futex_flags_valid.exit ], [ -22, %bb.c ], [ -22, %bb.f ], [ -22, %bb.a ], [ -22, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @io_req_track_inflight(ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @io_futexv_prep(ptr noundef %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %.critedge, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 40
  %i.d = load i16, ptr %i.c, align 8
  %.not43 = icmp eq i16 %i.d, 0
  br i1 %.not43, label %bb.c, label %.critedge, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %1, i64 44
  %i.f = load i32, ptr %i.e, align 4
  %.not44 = icmp eq i32 %i.f, 0
  br i1 %.not44, label %bb.d, label %.critedge, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %.not45 = icmp eq i64 %i.h, 0
  br i1 %.not45, label %bb.e, label %.critedge, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %1, i64 28
  %i.j = load i32, ptr %i.i, align 4
  %.not46 = icmp eq i32 %i.j, 0
  br i1 %.not46, label %bb.f, label %.critedge, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %1, i64 48
  %i.l = load i64, ptr %i.k, align 8
  %.not50 = icmp eq i64 %i.l, 0
  br i1 %.not50, label %bb.g, label %.critedge, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr i8, ptr %1, i64 16
  %i.n = load volatile i64, ptr %i.m, align 8
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr i8, ptr %0, i64 8          ; 2 uses
  store ptr %i.o, ptr %i.p, align 8
  %i.q = getelementptr i8, ptr %1, i64 24
  %i.r = load volatile i32, ptr %i.q, align 8     ; 3 uses
  %i.s = getelementptr i8, ptr %0, i64 36         ; 2 uses
  store i32 %i.r, ptr %i.s, align 4
  %i.t = add i32 %i.r, -129
  %or.cond = icmp ult i32 %i.t, -128
  br i1 %or.cond, label %.critedge, label %_kzalloc_noprof.exit

_kzalloc_noprof.exit:                             ; preds = %bb.g
  %narrow = mul nuw nsw i32 %i.r, 160
  %i.u = or disjoint i32 %narrow, 8
  %i.v = zext nneg i32 %i.u to i64
  %i.w = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 168, 20489) %i.v, i32 noundef 4197824) #9 ; 4 uses
  %.not48 = icmp eq ptr %i.w, null
  br i1 %.not48, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_kzalloc_noprof.exit
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.p, align 8
  %i.z = load i32, ptr %i.s, align 4
  %i.aa = tail call i32 @futex_parse_waitv(ptr noundef %i.x, ptr noundef %i.y, i32 noundef %i.z, ptr noundef nonnull @io_futex_wakev_fn, ptr noundef %0) #6 ; 2 uses
  %.not49 = icmp eq i32 %i.aa, 0
  br i1 %.not49, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @kfree(ptr noundef nonnull %i.w) #6
  br label %.critedge

bb.j:                                             ; preds = %bb.h
  tail call void @io_req_track_inflight(ptr noundef %0) #6
  %i.ab = getelementptr i8, ptr %0, i64 40
  store i8 0, ptr %i.ab, align 8
  %i.ac = getelementptr i8, ptr %0, i64 72        ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = or i64 %i.ad, 4194304
  store i64 %i.ae, ptr %i.ac, align 8
  %i.af = getelementptr i8, ptr %0, i64 184
  store ptr %i.w, ptr %i.af, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %_kzalloc_noprof.exit, %bb.g, %bb.f, %bb.j, %bb.i
  %.0 = phi i32 [ -22, %bb.g ], [ -22, %bb.f ], [ %i.aa, %bb.i ], [ 0, %bb.j ], [ -12, %_kzalloc_noprof.exit ], [ -22, %bb.a ], [ -22, %bb.b ], [ -22, %bb.c ], [ -22, %bb.d ], [ -22, %bb.e ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @futex_parse_waitv(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @io_futex_wakev_fn(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  %i.c = getelementptr i8, ptr %i.b, i64 184
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = load volatile i64, ptr %i.d, align 8
  %i.f = trunc i64 %i.e to i1
  br i1 %i.f, label %io_futexv_claim.exit.thread, label %io_futexv_claim.exit

io_futexv_claim.exit:                             ; preds = %bb.a
  %i.g = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.d, i64 0, ptr elementtype(i64) %i.d) #7, !srcloc !10 ; 2 uses
  %i.h = icmp ult i8 %i.g, 2
  tail call void @llvm.assume(i1 %i.h)
  %i.i = trunc nuw i8 %i.g to i1
  br i1 %i.i, label %io_futexv_claim.exit.thread, label %bb.b

io_futexv_claim.exit.thread:                      ; preds = %bb.a, %io_futexv_claim.exit
  %i.j = tail call zeroext i1 @__futex_wake_mark(ptr noundef %1) #6 ; 0 uses
  br label %io_req_task_work_add.exit

bb.b:                                             ; preds = %io_futexv_claim.exit
  %i.k = tail call zeroext i1 @__futex_wake_mark(ptr noundef %1) #6
  br i1 %i.k, label %bb.c, label %io_req_task_work_add.exit, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.b, i64 88
  store i32 0, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.b, i64 92
  store i32 0, ptr %i.m, align 4
  %i.n = getelementptr i8, ptr %i.b, i64 152
  store ptr @io_futexv_complete, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %i.b, i64 96
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = load i32, ptr %i.p, align 64
  %i.r = and i32 %i.q, 8192
  %.not.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @io_req_local_work_add(ptr noundef %i.b, i32 noundef 0) #6
  br label %io_req_task_work_add.exit

bb.e:                                             ; preds = %bb.c
  tail call void @io_req_normal_work_add(ptr noundef %i.b) #6
  br label %io_req_task_work_add.exit

io_req_task_work_add.exit:                        ; preds = %bb.e, %bb.d, %bb.b, %io_futexv_claim.exit.thread
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -529, 1) i32 @io_futexv_wait(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 184        ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 -1, ptr %i.a, align 4
  %i.f = and i32 %1, 2
  %.not.i = icmp eq i32 %i.f, 0                   ; 2 uses
  br i1 %.not.i, label %io_ring_submit_lock.exit, label %io_ring_submit_lock.exit.thread, !prof !11

io_ring_submit_lock.exit:                         ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.c, i64 8
  %i.h = getelementptr i8, ptr %0, i64 36
  %i.i = load i32, ptr %i.h, align 4
  %i.j = call i32 @futex_wait_multiple_setup(ptr noundef %i.g, i32 noundef %i.i, ptr noundef nonnull %i.a) #6 ; 3 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %io_ring_submit_unlock.exit, label %bb.c, !prof !13

io_ring_submit_lock.exit.thread:                  ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.e, i64 64       ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.l) #6
  %i.m = getelementptr i8, ptr %i.c, i64 8
  %i.n = getelementptr i8, ptr %0, i64 36
  %i.o = load i32, ptr %i.n, align 4
  %i.p = call i32 @futex_wait_multiple_setup(ptr noundef %i.m, i32 noundef %i.o, ptr noundef nonnull %i.a) #6 ; 3 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.b, label %bb.c, !prof !13

end_hunk_0
