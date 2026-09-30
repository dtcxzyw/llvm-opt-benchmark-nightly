Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/syscalls?download=true
inline.NumInlined: 79
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.futex_q = type { %struct.plist_node, ptr, ptr, ptr, ptr, %union.futex_key, ptr, ptr, ptr, i32, %struct.atomic_t, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.futex_key = type { %struct.anon }
%struct.anon = type { i64, i64, i32 }
%struct.atomic_t = type { i32 }
%struct.time_namespace = type { ptr, ptr, [48 x i8], %struct.ns_common, %struct.timens_offsets, ptr, i8, [23 x i8] }
%struct.ns_common = type { %struct.anon.24, i32, ptr, ptr, i32, %union.anon.25 }
%struct.anon.24 = type { %struct.refcount_struct, [60 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.25 = type { %struct.ns_tree }
%struct.ns_tree = type { i64, %struct.atomic_t, %struct.ns_tree_node, %struct.ns_tree_node, %struct.ns_tree_node, %struct.ns_tree_root }
%struct.ns_tree_node = type { %struct.rb_node, %struct.list_head }
%struct.rb_node = type { i64, ptr, ptr }
%struct.ns_tree_root = type { %struct.rb_root, %struct.list_head }
%struct.rb_root = type { ptr }
%struct.timens_offsets = type { %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i64 }
%struct.futex_waitv = type { i64, i64, i32, i32 }
%struct.hrtimer_sleeper = type { %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_linked_node, ptr, i8, i8, i8, i8, i8, i64, ptr }
%struct.timerqueue_linked_node = type { %struct.rb_node_linked, i64 }
%struct.rb_node_linked = type { %struct.rb_node, ptr, ptr }

@futex_q_init = external dso_local local_unnamed_addr constant %struct.futex_q, align 8
@current_task = external dso_local global ptr, section ".data..percpu..hot..current_task", align 8
@init_time_ns = external dso_local global %struct.time_namespace, align 64
@nr_node_ids = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define dso_local range(i64 -22, 1) i64 @__x64_sys_set_robust_list(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 104
  %i.b = load i64, ptr %i.a, align 8
  %.not.i.i = icmp eq i64 %i.b, 24
  br i1 %.not.i.i, label %bb.b, label %__se_sys_set_robust_list.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 112
  %i.d = load i64, ptr %i.c, align 8
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #8, !srcloc !13
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr i8, ptr %i.g, i64 2528
  store ptr %i.e, ptr %i.h, align 32
  br label %__se_sys_set_robust_list.exit

__se_sys_set_robust_list.exit:                    ; preds = %bb.a, %bb.b
  %.0.i.i = phi i64 [ 0, %bb.b ], [ -22, %bb.a ]
  ret i64 %.0.i.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define dso_local range(i64 -22, 1) i64 @__ia32_sys_set_robust_list(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 88
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 4294967295
  %.not.i.i = icmp eq i64 %i.c, 24
  br i1 %.not.i.i, label %bb.b, label %__se_sys_set_robust_list.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 4294967295
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #8, !srcloc !13
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr i8, ptr %i.i, i64 2528
  store ptr %i.g, ptr %i.j, align 32
  br label %__se_sys_set_robust_list.exit

__se_sys_set_robust_list.exit:                    ; preds = %bb.a, %bb.b
  %.0.i.i = phi i64 [ 0, %bb.b ], [ -22, %bb.a ]
  ret i64 %.0.i.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @__x64_sys_get_robust_list(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 104
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 8
  %i.g = trunc i64 %i.b to i32
  %i.h = inttoptr i64 %i.d to ptr
  %i.i = tail call fastcc ptr @futex_get_robust_list_common(i32 noundef %i.g, i1 noundef zeroext false) #9, !srcloc !14 ; 3 uses
  %i.j = icmp ugt ptr %i.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %i.i to i64
  br label %__se_sys_get_robust_list.exit

bb.c:                                             ; preds = %bb.a
  %i.l = inttoptr i64 %i.f to ptr
  %i.m = tail call i64 @llvm.read_register.i64(metadata !1)
  %i.n = tail call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %i.l, i64 24, i64 8, i64 %i.m) #10, !srcloc !15 ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 0
  %i.p = extractvalue { ptr, i64 } %i.n, 1
  %i.q = ptrtoint ptr %i.o to i64
  tail call void @llvm.write_register.i64(metadata !1, i64 %i.p)
  %sext.mask.i.i = and i64 %i.q, 4294967295
  %.not.i.i = icmp eq i64 %sext.mask.i.i, 0
  br i1 %.not.i.i, label %bb.d, label %__se_sys_get_robust_list.exit

bb.d:                                             ; preds = %bb.c
  %i.r = tail call i64 @llvm.read_register.i64(metadata !1)
  %i.s = tail call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %i.h, ptr %i.i, i64 8, i64 %i.r) #10, !srcloc !16 ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.s, 0
  %i.u = extractvalue { ptr, i64 } %i.s, 1
  %i.v = ptrtoint ptr %i.t to i64
  tail call void @llvm.write_register.i64(metadata !1, i64 %i.u)
  %sext.i.i = shl i64 %i.v, 32
  %i.w = ashr exact i64 %sext.i.i, 32
  br label %__se_sys_get_robust_list.exit

__se_sys_get_robust_list.exit:                    ; preds = %bb.b, %bb.c, %bb.d
  %.0.i.i = phi i64 [ %i.k, %bb.b ], [ %i.w, %bb.d ], [ -14, %bb.c ]
  ret i64 %.0.i.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @__ia32_sys_get_robust_list(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8
  %i.e = and i64 %i.d, 4294967295
  %i.f = getelementptr i8, ptr %0, i64 96
  %i.g = load i64, ptr %i.f, align 8
  %i.h = trunc i64 %i.b to i32
  %i.i = inttoptr i64 %i.e to ptr
  %i.j = tail call fastcc ptr @futex_get_robust_list_common(i32 noundef %i.h, i1 noundef zeroext false) #9, !srcloc !14 ; 3 uses
  %i.k = icmp ugt ptr %i.j, inttoptr (i64 -4096 to ptr)
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = ptrtoint ptr %i.j to i64
  br label %__se_sys_get_robust_list.exit

bb.c:                                             ; preds = %bb.a
  %i.m = and i64 %i.g, 4294967295
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = tail call i64 @llvm.read_register.i64(metadata !1)
  %i.p = tail call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %i.n, i64 24, i64 8, i64 %i.o) #10, !srcloc !15 ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 0
  %i.r = extractvalue { ptr, i64 } %i.p, 1
  %i.s = ptrtoint ptr %i.q to i64
  tail call void @llvm.write_register.i64(metadata !1, i64 %i.r)
  %sext.mask.i.i = and i64 %i.s, 4294967295
  %.not.i.i = icmp eq i64 %sext.mask.i.i, 0
  br i1 %.not.i.i, label %bb.d, label %__se_sys_get_robust_list.exit

bb.d:                                             ; preds = %bb.c
  %i.t = tail call i64 @llvm.read_register.i64(metadata !1)
  %i.u = tail call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %i.i, ptr %i.j, i64 8, i64 %i.t) #10, !srcloc !16 ; 2 uses
  %i.v = extractvalue { ptr, i64 } %i.u, 0
  %i.w = extractvalue { ptr, i64 } %i.u, 1
  %i.x = ptrtoint ptr %i.v to i64
  tail call void @llvm.write_register.i64(metadata !1, i64 %i.w)
  %sext.i.i = shl i64 %i.x, 32
  %i.y = ashr exact i64 %sext.i.i, 32
  br label %__se_sys_get_robust_list.exit

__se_sys_get_robust_list.exit:                    ; preds = %bb.b, %bb.c, %bb.d
  %.0.i.i = phi i64 [ %i.l, %bb.b ], [ %i.y, %bb.d ], [ -14, %bb.c ]
  ret i64 %.0.i.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @do_futex(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  store i32 %6, ptr %i.a, align 4
  %7 = and i32 %1, 128
  %.not.i = icmp eq i32 %7, 0
  %spec.select.i = select i1 %.not.i, i32 18, i32 2
  %i.b = lshr i32 %1, 3
  %i.c = and i32 %i.b, 32                         ; 2 uses
  %i.d = shl i32 %1, 1
  %i.e = and i32 %i.d, 3072
  %i.f = or disjoint i32 %spec.select.i, %i.e     ; 2 uses
  %.3.i = or disjoint i32 %i.f, %i.c              ; 13 uses
  %i.g = and i32 %1, -1921                        ; 3 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = and i32 %1, -1923
  %or.cond = icmp ne i32 %i.h, 9
  %i.i = icmp ne i32 %i.g, 13
  %or.cond3 = and i1 %or.cond, %i.i
  br i1 %or.cond3, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = and i32 %1, 512
  %.not64 = icmp eq i32 %i.j, 0
  br i1 %.not64, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i32 %i.g, label %bb.s [
    i32 1, label %bb.h
    i32 10, label %bb.i
    i32 7, label %bb.o
  ]

bb.e:                                             ; preds = %bb.c
  switch i32 %i.g, label %bb.s [
    i32 0, label %bb.f
    i32 9, label %bb.g
    i32 1, label %bb.h
    i32 10, label %bb.i
    i32 3, label %bb.j
    i32 4, label %bb.k
    i32 5, label %bb.l
    i32 6, label %bb.m
    i32 13, label %bb.n
    i32 7, label %bb.o
    i32 8, label %bb.p
    i32 11, label %bb.q
    i32 12, label %bb.r
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = phi i32 [ -1, %bb.f ], [ %6, %bb.e ]
  %i.l = tail call i32 @futex_wait(ptr noundef %0, i32 noundef %.3.i, i32 noundef %2, ptr noundef %3, i32 noundef %i.k) #11
  %i.m = sext i32 %i.l to i64
  br label %bb.s

bb.h:                                             ; preds = %bb.d, %bb.e
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.h, %bb.e
  %i.n = phi i32 [ %6, %bb.d ], [ -1, %bb.h ], [ %6, %bb.e ]
  %i.o = tail call i32 @futex_wake(ptr noundef %0, i32 noundef %.3.i, ptr noundef %4, i32 noundef %2, i32 noundef %i.n) #11
  %i.p = sext i32 %i.o to i64
  br label %bb.s

bb.j:                                             ; preds = %bb.e
  %i.q = tail call i32 @futex_requeue(ptr noundef %0, i32 noundef %.3.i, ptr noundef %4, i32 noundef %.3.i, i32 noundef %2, i32 noundef %5, ptr noundef null, i32 noundef 0) #11
  %i.r = sext i32 %i.q to i64
  br label %bb.s

bb.k:                                             ; preds = %bb.e
  %i.s = call i32 @futex_requeue(ptr noundef %0, i32 noundef %.3.i, ptr noundef %4, i32 noundef %.3.i, i32 noundef %2, i32 noundef %5, ptr noundef nonnull %i.a, i32 noundef 0) #11
  %i.t = sext i32 %i.s to i64
  br label %bb.s

bb.l:                                             ; preds = %bb.e
  %i.u = tail call i32 @futex_wake_op(ptr noundef %0, i32 noundef %.3.i, ptr noundef %4, i32 noundef %2, i32 noundef %5, i32 noundef %6) #11
  %i.v = sext i32 %i.u to i64
  br label %bb.s

bb.m:                                             ; preds = %bb.e
  %i.w = or disjoint i32 %i.f, 32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.e
  %.0 = phi i32 [ %i.w, %bb.m ], [ %.3.i, %bb.e ]
  %i.x = tail call i32 @futex_lock_pi(ptr noundef %0, i32 noundef %.0, ptr noundef %3, i32 noundef 0) #11
  %i.y = sext i32 %i.x to i64
  br label %bb.s

bb.o:                                             ; preds = %bb.d, %bb.e
  %i.z = tail call i32 @futex_unlock_pi(ptr noundef %0, i32 noundef %.3.i, ptr noundef %4) #11
  %i.aa = sext i32 %i.z to i64
  br label %bb.s

bb.p:                                             ; preds = %bb.e
  %i.ab = tail call i32 @futex_lock_pi(ptr noundef %0, i32 noundef %.3.i, ptr noundef null, i32 noundef 1) #11
  %i.ac = sext i32 %i.ab to i64
  br label %bb.s

bb.q:                                             ; preds = %bb.e
  %i.ad = tail call i32 @futex_wait_requeue_pi(ptr noundef %0, i32 noundef %.3.i, i32 noundef %2, ptr noundef %3, i32 noundef -1, ptr noundef %4) #11
  %i.ae = sext i32 %i.ad to i64
  br label %bb.s

bb.r:                                             ; preds = %bb.e
  %i.af = call i32 @futex_requeue(ptr noundef %0, i32 noundef %.3.i, ptr noundef %4, i32 noundef %.3.i, i32 noundef %2, i32 noundef %5, ptr noundef nonnull %i.a, i32 noundef 1) #11
  %i.ag = sext i32 %i.af to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.e, %bb.d, %bb.b, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %bb.i, %bb.g
  %.063 = phi i64 [ %i.ag, %bb.r ], [ -38, %bb.b ], [ -38, %bb.d ], [ %i.m, %bb.g ], [ %i.p, %bb.i ], [ %i.r, %bb.j ], [ %i.t, %bb.k ], [ %i.v, %bb.l ], [ %i.y, %bb.n ], [ %i.aa, %bb.o ], [ %i.ac, %bb.p ], [ %i.ae, %bb.q ], [ -38, %bb.e ]
  ret i64 %.063
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @futex_wait(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @futex_wake(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @futex_requeue(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @futex_wake_op(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @futex_lock_pi(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @futex_unlock_pi(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @futex_wait_requeue_pi(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__x64_sys_futex(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 104
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %0, i64 56
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %0, i64 72
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %0, i64 64
  %i.l = load i64, ptr %i.k, align 8
  %i.m = tail call fastcc i64 @__se_sys_futex(i64 noundef %i.b, i64 noundef %i.d, i64 noundef %i.f, i64 noundef %i.h, i64 noundef %i.j, i64 noundef %i.l) #9, !srcloc !20
  ret i64 %i.m
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i64 -2147483648, 2147483648) i64 @__se_sys_futex(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %6 = alloca %struct.timespec64, align 8         ; 6 uses
  %i.b = inttoptr i64 %0 to ptr
  %i.c = trunc i64 %1 to i32                      ; 3 uses
  %i.d = trunc i64 %2 to i32
  %i.e = inttoptr i64 %3 to ptr
  %i.f = inttoptr i64 %4 to ptr
  %i.g = trunc i64 %5 to i32
  %i.h = and i32 %i.c, -1921                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 0, ptr %i.a, align 8, !annotation !17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !annotation !17
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %futex_cmd_has_timeout.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %i.h, label %futex_cmd_has_timeout.exit.i [
    i32 0, label %bb.c
    i32 6, label %bb.c
    i32 13, label %bb.c
    i32 9, label %bb.c
    i32 11, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.i = call i32 @get_timespec64(ptr noundef nonnull %6, ptr noundef nonnull %i.e) #11
  %.not20.i = icmp eq i32 %i.i, 0
  br i1 %.not20.i, label %bb.d, label %__do_sys_futex.exit

bb.d:                                             ; preds = %bb.c
  %.val.i = load i64, ptr %6, align 8             ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val23.i = load i64, ptr %i.j, align 8         ; 2 uses
  %i.k = icmp sgt i64 %.val.i, -1
  %i.l = icmp ult i64 %.val23.i, 1000000000
  %.0.i24.i = select i1 %i.k, i1 %i.l, i1 false
  br i1 %.0.i24.i, label %bb.e, label %__do_sys_futex.exit

bb.e:                                             ; preds = %bb.d
  %i.m = icmp samesign ugt i64 %.val.i, 9223372035
  %i.n = mul i64 %.val.i, 1000000000
  %i.o = add i64 %i.n, %.val23.i
  %.0.i.i.i = select i1 %i.m, i64 9223372036854775807, i64 %i.o, !prof !18 ; 4 uses
  store i64 %.0.i.i.i, ptr %i.a, align 8
  switch i32 %i.h, label %bb.g [
    i32 0, label %bb.f
    i32 6, label %futex_cmd_has_timeout.exit.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.p = call i64 @ktime_get() #11
  %i.q = call i64 @ktime_add_safe(i64 noundef %i.p, i64 noundef %.0.i.i.i) #11
  br label %futex_cmd_has_timeout.exit.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.r = and i32 %i.c, 256
  %.not11.i.i = icmp eq i32 %i.r, 0
  br i1 %.not11.i.i, label %bb.h, label %futex_cmd_has_timeout.exit.i

bb.h:                                             ; preds = %bb.g
  %i.s = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #8, !srcloc !13
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr i8, ptr %i.t, i64 2088
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = icmp eq ptr %i.x, @init_time_ns
  br i1 %i.y, label %futex_cmd_has_timeout.exit.sink.split.i, label %bb.i, !prof !12

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr i8, ptr %i.x, i64 320
  %i.aa = call i64 @do_timens_ktime_to_host(i32 noundef 1, i64 noundef %.0.i.i.i, ptr noundef %i.z) #11
  br label %futex_cmd_has_timeout.exit.sink.split.i

futex_cmd_has_timeout.exit.sink.split.i:          ; preds = %bb.i, %bb.h, %bb.f
  %.sink.i = phi i64 [ %i.q, %bb.f ], [ %i.aa, %bb.i ], [ %.0.i.i.i, %bb.h ]
  store i64 %.sink.i, ptr %i.a, align 8
  br label %futex_cmd_has_timeout.exit.i

futex_cmd_has_timeout.exit.i:                     ; preds = %futex_cmd_has_timeout.exit.sink.split.i, %bb.g, %bb.e, %bb.b, %bb.a
  %.0.i = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.a, %bb.e ], [ %i.a, %bb.g ], [ %i.a, %futex_cmd_has_timeout.exit.sink.split.i ]
  %i.ab = trunc i64 %3 to i32
  %i.ac = call i64 @do_futex(ptr noundef %i.b, i32 noundef %i.c, i32 noundef %i.d, ptr noundef %.0.i, ptr noundef %i.f, i32 noundef %i.ab, i32 noundef %i.g) #9
  br label %__do_sys_futex.exit

__do_sys_futex.exit:                              ; preds = %bb.c, %bb.d, %futex_cmd_has_timeout.exit.i
  %.016.i = phi i64 [ %i.ac, %futex_cmd_has_timeout.exit.i ], [ -14, %bb.c ], [ -22, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i64 %.016.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__ia32_sys_futex(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 4294967295
  %i.d = getelementptr i8, ptr %0, i64 88
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 4294967295
  %i.g = getelementptr i8, ptr %0, i64 96
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 4294967295
  %i.j = getelementptr i8, ptr %0, i64 104
  %i.k = load i64, ptr %i.j, align 8
  %i.l = and i64 %i.k, 4294967295
  %i.m = getelementptr i8, ptr %0, i64 112
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, 4294967295
  %i.p = getelementptr i8, ptr %0, i64 32
  %i.q = load i64, ptr %i.p, align 8
  %i.r = and i64 %i.q, 4294967295
  %i.s = tail call fastcc i64 @__se_sys_futex(i64 noundef %i.c, i64 noundef %i.f, i64 noundef %i.i, i64 noundef %i.l, i64 noundef %i.o, i64 noundef %i.r) #9, !srcloc !21
  ret i64 %i.s
}

end_hunk_0
