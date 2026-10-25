Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/aio?download=true
inline.NumInlined: 328
inline.NumDeleted: 152
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@__ia32_compat_sys_io_submit:bb.a
  %i.ai = icmp ult i8 %i.ah, 2
  call void @llvm.assume(i1 %i.ai)
  %i.aj = trunc nuw i8 %i.ah to i1
  br i1 %i.aj, label %bb.i, label %percpu_ref_put.exit.i.i, !prof !17

bb.i:                                             ; preds = %__ref_is_percpu.exit.i.i.i.i
  %i.ak = load ptr, ptr %i.af, align 8
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull %i.l) #14, !inline_history !78
  br label %percpu_ref_put.exit.i.i

percpu_ref_put.exit.i.i:                          ; preds = %bb.i, %__ref_is_percpu.exit.i.i.i.i, %bb.h
  call void @__rcu_read_unlock() #14
  %.not36.i.i = icmp eq i32 %.028.lcssa57.i.i, 0
  %i.an = zext nneg i32 %.028.lcssa57.i.i to i64
  %i.ao = select i1 %.not36.i.i, i64 %.258.i.i, i64 %i.an
  br label %__se_compat_sys_io_submit.exit

__se_compat_sys_io_submit.exit:                   ; preds = %bb.a, %bb.b, %percpu_ref_put.exit.i.i
  %.0.i.i = phi i64 [ %i.ao, %percpu_ref_put.exit.i.i ], [ -22, %bb.a ], [ -22, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret i64 %.0.i.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__x64_sys_io_cancel(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 104
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call fastcc i64 @__se_sys_io_cancel(i64 noundef %i.b, i64 noundef %i.d) #16
  ret i64 %i.e
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i64 -2147483648, 2147483648) i64 @__se_sys_io_cancel(i64 noundef %0, i64 noundef %1) unnamed_addr #1 align 16 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr
  %i.b = tail call i64 @llvm.read_register.i64(metadata !3)
  %i.c = getelementptr i8, ptr %i.a, i64 8
  %i.d = tail call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %i.c, i64 4, i64 %i.b) #13, !srcloc !85 ; 3 uses
  %i.e = extractvalue { ptr, i32, i64 } %i.d, 0
  %i.f = extractvalue { ptr, i32, i64 } %i.d, 2
  %i.g = ptrtoint ptr %i.e to i64
  tail call void @llvm.write_register.i64(metadata !3, i64 %i.f)
  %.mask.i = and i64 %i.g, 4294967295
  %.not.i = icmp eq i64 %.mask.i, 0
  br i1 %.not.i, label %bb.b, label %__do_sys_io_cancel.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { ptr, i32, i64 } %i.d, 1
  %.not30.i = icmp eq i32 %i.h, 0
  br i1 %.not30.i, label %bb.c, label %__do_sys_io_cancel.exit, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.i = tail call fastcc ptr @lookup_ioctx(i64 noundef %0) #16, !srcloc !86 ; 6 uses
  %.not31.i = icmp eq ptr %i.i, null
  br i1 %.not31.i, label %__do_sys_io_cancel.exit, label %bb.d, !prof !17

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.i, i64 256      ; 3 uses
  tail call void @_raw_spin_lock_irq(ptr noundef %i.j) #14
  %i.k = getelementptr i8, ptr %i.i, i64 264      ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.pn.in.i = phi ptr [ %i.k, %bb.d ], [ %.pn.i, %bb.f ]
  %.pn.i = load ptr, ptr %.pn.in.i, align 8       ; 10 uses
  %.not4.i = icmp eq ptr %.pn.i, %i.k
  br i1 %.not4.i, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.e
  tail call void @_raw_spin_unlock_irq(ptr noundef %i.j) #14
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %.pn.i, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = icmp eq i64 %i.m, %1
  br i1 %i.n, label %bb.g, label %bb.e, !llvm.loop !82

bb.g:                                             ; preds = %bb.f
  %.028.le.i = getelementptr i8, ptr %.pn.i, i64 -144
  %i.o = getelementptr i8, ptr %.pn.i, i64 -40
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call i32 %i.p(ptr noundef %.028.le.i) #14, !inline_history !83
  %.fr.i = freeze i32 %i.q                        ; 2 uses
  %i.r = getelementptr i8, ptr %.pn.i, i64 8      ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = load ptr, ptr %.pn.i, align 8            ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  store ptr %i.s, ptr %i.u, align 8
  store volatile ptr %i.t, ptr %i.s, align 8
  store volatile ptr %.pn.i, ptr %.pn.i, align 8
  store volatile ptr %.pn.i, ptr %i.r, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %i.j) #14
  %.not33.i = icmp eq i32 %.fr.i, 0
  %spec.select.i = select i1 %.not33.i, i32 -115, i32 %.fr.i
  %i.v = sext i32 %spec.select.i to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread.i
  %i.w = phi i64 [ -22, %.thread.i ], [ %i.v, %bb.g ]
  tail call void @__rcu_read_lock() #14
  %i.x = load volatile i64, ptr %i.i, align 8     ; 2 uses
  %i.y = and i64 %i.x, 3
  %.not.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %__ref_is_percpu.exit.i.i.i, !prof !14

bb.i:                                             ; preds = %bb.h
  %i.z = inttoptr i64 %i.x to ptr                 ; 2 uses
  tail call void asm sideeffect "decq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.z, ptr elementtype(i64) %i.z) #13, !srcloc !22
  br label %percpu_ref_put.exit.i

__ref_is_percpu.exit.i.i.i:                       ; preds = %bb.h
  %i.aa = getelementptr i8, ptr %i.i, i64 8       ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock subq $2, $0", "=*m,={@cce},er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ab, i64 1, ptr elementtype(i64) %i.ab) #13, !srcloc !23 ; 2 uses
  %i.ad = icmp ult i8 %i.ac, 2
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = trunc nuw i8 %i.ac to i1
  br i1 %i.ae, label %bb.j, label %percpu_ref_put.exit.i, !prof !17

bb.j:                                             ; preds = %__ref_is_percpu.exit.i.i.i
  %i.af = load ptr, ptr %i.aa, align 8
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull %i.i) #14, !inline_history !84
  br label %percpu_ref_put.exit.i

percpu_ref_put.exit.i:                            ; preds = %bb.j, %__ref_is_percpu.exit.i.i.i, %bb.i
  tail call void @__rcu_read_unlock() #14
  br label %__do_sys_io_cancel.exit

__do_sys_io_cancel.exit:                          ; preds = %bb.a, %bb.b, %bb.c, %percpu_ref_put.exit.i
  %.0.i = phi i64 [ %i.w, %percpu_ref_put.exit.i ], [ -14, %bb.a ], [ -22, %bb.b ], [ -22, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__ia32_sys_io_cancel(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 4294967295
  %i.d = getelementptr i8, ptr %0, i64 88
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 4294967295
  %i.g = tail call fastcc i64 @__se_sys_io_cancel(i64 noundef %i.c, i64 noundef %i.f) #16
  ret i64 %i.g
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__x64_sys_io_getevents(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.timespec64, align 8         ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 104
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %0, i64 56
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %0, i64 72
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = inttoptr i64 %i.h to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !15
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = inttoptr i64 %i.j to ptr
  %i.m = call i32 @get_timespec64(ptr noundef nonnull %1, ptr noundef nonnull %i.l) #14
  %.not12.i.i = icmp eq i32 %i.m, 0
  br i1 %.not12.i.i, label %bb.c, label %__se_sys_io_getevents.exit, !prof !14

bb.c:                                             ; preds = %bb.b, %bb.a
  %..i.i = phi ptr [ %1, %bb.b ], [ null, %bb.a ]
  %i.n = call fastcc i64 @do_io_getevents(i64 noundef %i.b, i64 noundef %i.d, i64 noundef %i.f, ptr noundef %i.k, ptr noundef %..i.i) #16, !srcloc !24 ; 2 uses
  %i.o = and i64 %i.n, 4294967295
  %.not13.i.i = icmp eq i64 %i.o, 0
  br i1 %.not13.i.i, label %test_tsk_thread_flag.exit.i.i.i, label %signal_pending.exit.thread.i.i

test_tsk_thread_flag.exit.i.i.i:                  ; preds = %bb.c
  %i.p = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #17, !srcloc !21
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.r = load volatile i64, ptr %i.q, align 8
  %i.s = and i64 %i.r, 4
  %.not.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i.i, label %signal_pending.exit.i.i, label %signal_pending.exit.thread.i.i, !prof !14

signal_pending.exit.i.i:                          ; preds = %test_tsk_thread_flag.exit.i.i.i
  %i.t = load volatile i64, ptr %i.q, align 8
  %.in.i.i.in.in.i.i.fr.i.i = freeze i64 %i.t
  %i.u = and i64 %.in.i.i.in.in.i.i.fr.i.i, 2
  %.not14.i.i = icmp eq i64 %i.u, 0
  %spec.select.i.i = select i1 %.not14.i.i, i64 0, i64 -4
  br label %signal_pending.exit.thread.i.i

signal_pending.exit.thread.i.i:                   ; preds = %signal_pending.exit.i.i, %test_tsk_thread_flag.exit.i.i.i, %bb.c
  %.0.i.i = phi i64 [ %i.n, %bb.c ], [ -4, %test_tsk_thread_flag.exit.i.i.i ], [ %spec.select.i.i, %signal_pending.exit.i.i ]
  %sext.i.i = shl i64 %.0.i.i, 32
  %i.v = ashr exact i64 %sext.i.i, 32
  br label %__se_sys_io_getevents.exit

__se_sys_io_getevents.exit:                       ; preds = %bb.b, %signal_pending.exit.thread.i.i
  %.09.i.i = phi i64 [ %i.v, %signal_pending.exit.thread.i.i ], [ -14, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret i64 %.09.i.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__ia32_sys_io_getevents(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.timespec64, align 8         ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 4294967295
  %i.d = getelementptr i8, ptr %0, i64 88
  %i.e = load i64, ptr %i.d, align 8
  %i.f = shl i64 %i.e, 32
  %i.g = ashr exact i64 %i.f, 32
  %i.h = getelementptr i8, ptr %0, i64 96
  %i.i = load i64, ptr %i.h, align 8
  %i.j = shl i64 %i.i, 32
  %i.k = ashr exact i64 %i.j, 32
  %i.l = getelementptr i8, ptr %0, i64 104
  %i.m = load i64, ptr %i.l, align 8
  %i.n = and i64 %i.m, 4294967295
  %i.o = getelementptr i8, ptr %0, i64 112
  %i.p = load i64, ptr %i.o, align 8
  %i.q = and i64 %i.p, 4294967295                 ; 2 uses
  %i.r = inttoptr i64 %i.n to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !15
  %.not.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = inttoptr i64 %i.q to ptr
  %i.t = call i32 @get_timespec64(ptr noundef nonnull %1, ptr noundef nonnull %i.s) #14
  %.not12.i.i = icmp eq i32 %i.t, 0
  br i1 %.not12.i.i, label %bb.c, label %__se_sys_io_getevents.exit, !prof !14

bb.c:                                             ; preds = %bb.b, %bb.a
  %..i.i = phi ptr [ %1, %bb.b ], [ null, %bb.a ]
  %i.u = call fastcc i64 @do_io_getevents(i64 noundef %i.c, i64 noundef %i.g, i64 noundef %i.k, ptr noundef %i.r, ptr noundef %..i.i) #16, !srcloc !24 ; 2 uses
  %i.v = and i64 %i.u, 4294967295
  %.not13.i.i = icmp eq i64 %i.v, 0
  br i1 %.not13.i.i, label %test_tsk_thread_flag.exit.i.i.i, label %signal_pending.exit.thread.i.i

test_tsk_thread_flag.exit.i.i.i:                  ; preds = %bb.c
  %i.w = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #17, !srcloc !21
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = load volatile i64, ptr %i.x, align 8
  %i.z = and i64 %i.y, 4
  %.not.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i, label %signal_pending.exit.i.i, label %signal_pending.exit.thread.i.i, !prof !14

signal_pending.exit.i.i:                          ; preds = %test_tsk_thread_flag.exit.i.i.i
  %i.aa = load volatile i64, ptr %i.x, align 8
  %.in.i.i.in.in.i.i.fr.i.i = freeze i64 %i.aa
  %i.ab = and i64 %.in.i.i.in.in.i.i.fr.i.i, 2
  %.not14.i.i = icmp eq i64 %i.ab, 0
  %spec.select.i.i = select i1 %.not14.i.i, i64 0, i64 -4
  br label %signal_pending.exit.thread.i.i

signal_pending.exit.thread.i.i:                   ; preds = %signal_pending.exit.i.i, %test_tsk_thread_flag.exit.i.i.i, %bb.c
  %.0.i.i = phi i64 [ %i.u, %bb.c ], [ -4, %test_tsk_thread_flag.exit.i.i.i ], [ %spec.select.i.i, %signal_pending.exit.i.i ]
  %sext.i.i = shl i64 %.0.i.i, 32
  %i.ac = ashr exact i64 %sext.i.i, 32
  br label %__se_sys_io_getevents.exit

__se_sys_io_getevents.exit:                       ; preds = %bb.b, %signal_pending.exit.thread.i.i
  %.09.i.i = phi i64 [ %i.ac, %signal_pending.exit.thread.i.i ], [ -14, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret i64 %.09.i.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__x64_sys_io_pgetevents(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
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
  %i.m = tail call fastcc i64 @__se_sys_io_pgetevents(i64 noundef %i.b, i64 noundef %i.d, i64 noundef %i.f, i64 noundef %i.h, i64 noundef %i.j, i64 noundef %i.l) #16, !srcloc !87
  ret i64 %i.m
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i64 -2147483648, 2147483648) i64 @__se_sys_io_pgetevents(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %6 = alloca %struct.__aio_sigset, align 8       ; 6 uses
  %7 = alloca %struct.timespec64, align 8         ; 5 uses
  %i.a = inttoptr i64 %3 to ptr
  %i.b = inttoptr i64 %5 to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false), !annotation !15
  %.not19.i = icmp eq i64 %4, 0                   ; 2 uses
  br i1 %.not19.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %4 to ptr
  %i.d = call i32 @get_timespec64(ptr noundef nonnull %7, ptr noundef nonnull %i.c) #14
  %.not20.i = icmp eq i32 %i.d, 0
  br i1 %.not20.i, label %bb.c, label %__do_sys_io_pgetevents.exit, !prof !14

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not21.i = icmp eq i64 %5, 0
  br i1 %.not21.i, label %bb.d, label %copy_from_user.exit.i

copy_from_user.exit.i:                            ; preds = %bb.c
  %i.e = call i64 @_copy_from_user(ptr noundef nonnull %6, ptr noundef nonnull %i.b, i64 noundef 16) #14
  %.not22.i = icmp eq i64 %i.e, 0
  br i1 %.not22.i, label %copy_from_user.exit._crit_edge.i, label %__do_sys_io_pgetevents.exit

copy_from_user.exit._crit_edge.i:                 ; preds = %copy_from_user.exit.i
  %.pre.i = load ptr, ptr %6, align 8
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre33.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %copy_from_user.exit._crit_edge.i, %bb.c
  %i.f = phi i64 [ %.pre33.i, %copy_from_user.exit._crit_edge.i ], [ 0, %bb.c ]
  %i.g = phi ptr [ %.pre.i, %copy_from_user.exit._crit_edge.i ], [ null, %bb.c ]
  %i.h = call i32 @set_user_sigmask(ptr noundef %i.g, i64 noundef %i.f) #14 ; 2 uses
  %.not23.i = icmp eq i32 %i.h, 0
  br i1 %.not23.i, label %test_tsk_thread_flag.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = sext i32 %i.h to i64
  br label %__do_sys_io_pgetevents.exit

test_tsk_thread_flag.exit.i.i:                    ; preds = %bb.d
  %..i = select i1 %.not19.i, ptr null, ptr %7
  %i.j = call fastcc i64 @do_io_getevents(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %i.a, ptr noundef %..i) #16, !srcloc !88 ; 2 uses
  %i.k = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #17, !srcloc !21
  %i.l = inttoptr i64 %i.k to ptr                 ; 6 uses
  %i.m = load volatile i64, ptr %i.l, align 8
  %i.n = and i64 %i.m, 4
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %signal_pending.exit.i, label %signal_pending.exit.thread.i, !prof !14

signal_pending.exit.i:                            ; preds = %test_tsk_thread_flag.exit.i.i
  %i.o = load volatile i64, ptr %i.l, align 8
  %i.p = and i64 %i.o, 2
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.g, label %signal_pending.exit.thread.i

signal_pending.exit.thread.i:                     ; preds = %test_tsk_thread_flag.exit.i.i, %signal_pending.exit.i
  %i.q = load volatile i64, ptr %i.l, align 8
  %i.r = and i64 %i.q, 4
  %.not.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i, label %signal_pending.exit.i.i, label %restore_saved_sigmask_unless.exit.i, !prof !14

signal_pending.exit.i.i:                          ; preds = %signal_pending.exit.thread.i
  %i.s = load volatile i64, ptr %i.l, align 8
  %i.t = and i64 %i.s, 2
  %.not.i28.i = icmp eq i64 %i.t, 0
  br i1 %.not.i28.i, label %bb.f, label %restore_saved_sigmask_unless.exit.i, !prof !25

bb.f:                                             ; preds = %signal_pending.exit.i.i
  call void asm sideeffect "354: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 354b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 354) #13, !srcloc !26
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.22, i32 552, i32 2305, i64 16) #13, !srcloc !27
  call void asm sideeffect "355: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 355b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 355) #13, !srcloc !28
  br label %restore_saved_sigmask_unless.exit.i

bb.g:                                             ; preds = %signal_pending.exit.i
  %i.u = getelementptr i8, ptr %i.l, i64 1456     ; 2 uses
  %i.v = load i16, ptr %i.u, align 16             ; 2 uses
  %i.w = and i16 %i.v, 16
  %.not.i.not.i.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.not.i.i.i, label %restore_saved_sigmask_unless.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = and i16 %i.v, -17
  store i16 %i.x, ptr %i.u, align 16
  %i.y = getelementptr i8, ptr %i.l, i64 2128
  call void @__set_current_blocked(ptr noundef %i.y) #14
  br label %restore_saved_sigmask_unless.exit.i

restore_saved_sigmask_unless.exit.i:              ; preds = %bb.h, %bb.g, %bb.f, %signal_pending.exit.i.i, %signal_pending.exit.thread.i
  %i.z = phi i1 [ true, %signal_pending.exit.thread.i ], [ true, %signal_pending.exit.i.i ], [ true, %bb.f ], [ false, %bb.g ], [ false, %bb.h ]
  %i.aa = and i64 %i.j, 4294967295
  %i.ab = icmp eq i64 %i.aa, 0
  %or.cond.not.i = select i1 %i.z, i1 %i.ab, i1 false
  %sext.i = shl i64 %i.j, 32
  %i.ac = ashr exact i64 %sext.i, 32
  %i.ad = select i1 %or.cond.not.i, i64 -514, i64 %i.ac
  br label %__do_sys_io_pgetevents.exit

__do_sys_io_pgetevents.exit:                      ; preds = %bb.b, %copy_from_user.exit.i, %bb.e, %restore_saved_sigmask_unless.exit.i
  %.0.i = phi i64 [ %i.ad, %restore_saved_sigmask_unless.exit.i ], [ -14, %bb.b ], [ %i.i, %bb.e ], [ -14, %copy_from_user.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  ret i64 %.0.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__ia32_sys_io_pgetevents(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 4294967295
  %i.d = getelementptr i8, ptr %0, i64 88
  %i.e = load i64, ptr %i.d, align 8
  %i.f = shl i64 %i.e, 32
  %i.g = ashr exact i64 %i.f, 32
  %i.h = getelementptr i8, ptr %0, i64 96
  %i.i = load i64, ptr %i.h, align 8
  %i.j = shl i64 %i.i, 32
  %i.k = ashr exact i64 %i.j, 32
  %i.l = getelementptr i8, ptr %0, i64 104
  %i.m = load i64, ptr %i.l, align 8
  %i.n = and i64 %i.m, 4294967295
  %i.o = getelementptr i8, ptr %0, i64 112
  %i.p = load i64, ptr %i.o, align 8
  %i.q = and i64 %i.p, 4294967295
  %i.r = getelementptr i8, ptr %0, i64 32
  %i.s = load i64, ptr %i.r, align 8
  %i.t = and i64 %i.s, 4294967295
  %i.u = tail call fastcc i64 @__se_sys_io_pgetevents(i64 noundef %i.c, i64 noundef %i.g, i64 noundef %i.k, i64 noundef %i.n, i64 noundef %i.q, i64 noundef %i.t) #16, !srcloc !89
  ret i64 %i.u
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__x64_sys_io_getevents_time32(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.timespec64, align 8         ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 104
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %0, i64 56
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %0, i64 72
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = inttoptr i64 %i.h to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !15
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = inttoptr i64 %i.j to ptr
  %i.m = call i32 @get_old_timespec32(ptr noundef nonnull %1, ptr noundef nonnull %i.l) #14
  %.not12.i.i = icmp eq i32 %i.m, 0
  br i1 %.not12.i.i, label %bb.c, label %__se_sys_io_getevents_time32.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %..i.i = phi ptr [ %1, %bb.b ], [ null, %bb.a ]
  %i.n = and i64 %i.b, 4294967295
  %i.o = shl i64 %i.d, 32
  %i.p = ashr exact i64 %i.o, 32
  %i.q = shl i64 %i.f, 32
  %i.r = ashr exact i64 %i.q, 32
  %i.s = call fastcc i64 @do_io_getevents(i64 noundef %i.n, i64 noundef %i.p, i64 noundef %i.r, ptr noundef %i.k, ptr noundef %..i.i) #16, !srcloc !29 ; 2 uses
  %i.t = and i64 %i.s, 4294967295
  %.not13.i.i = icmp eq i64 %i.t, 0
  br i1 %.not13.i.i, label %test_tsk_thread_flag.exit.i.i.i, label %signal_pending.exit.thread.i.i

test_tsk_thread_flag.exit.i.i.i:                  ; preds = %bb.c
  %i.u = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #17, !srcloc !21
  %i.v = inttoptr i64 %i.u to ptr                 ; 2 uses
  %i.w = load volatile i64, ptr %i.v, align 8
  %i.x = and i64 %i.w, 4
  %.not.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i, label %signal_pending.exit.i.i, label %signal_pending.exit.thread.i.i, !prof !14

signal_pending.exit.i.i:                          ; preds = %test_tsk_thread_flag.exit.i.i.i
  %i.y = load volatile i64, ptr %i.v, align 8
  %.in.i.i.in.in.i.i.fr.i.i = freeze i64 %i.y
  %i.z = and i64 %.in.i.i.in.in.i.i.fr.i.i, 2
  %.not14.i.i = icmp eq i64 %i.z, 0
  %spec.select.i.i = select i1 %.not14.i.i, i64 0, i64 -4
  br label %signal_pending.exit.thread.i.i

signal_pending.exit.thread.i.i:                   ; preds = %signal_pending.exit.i.i, %test_tsk_thread_flag.exit.i.i.i, %bb.c
  %.0.i.i = phi i64 [ %i.s, %bb.c ], [ -4, %test_tsk_thread_flag.exit.i.i.i ], [ %spec.select.i.i, %signal_pending.exit.i.i ]
  %sext.i.i = shl i64 %.0.i.i, 32
  %i.aa = ashr exact i64 %sext.i.i, 32
  br label %__se_sys_io_getevents_time32.exit

__se_sys_io_getevents_time32.exit:                ; preds = %bb.b, %signal_pending.exit.thread.i.i
  %.09.i.i = phi i64 [ %i.aa, %signal_pending.exit.thread.i.i ], [ -14, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret i64 %.09.i.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__ia32_sys_io_getevents_time32(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.timespec64, align 8         ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 4294967295
  %i.d = getelementptr i8, ptr %0, i64 88
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %0, i64 96
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %0, i64 104
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 4294967295
  %i.k = getelementptr i8, ptr %0, i64 112
  %i.l = load i64, ptr %i.k, align 8
  %i.m = and i64 %i.l, 4294967295                 ; 2 uses
  %i.n = inttoptr i64 %i.j to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !15
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = inttoptr i64 %i.m to ptr
  %i.p = call i32 @get_old_timespec32(ptr noundef nonnull %1, ptr noundef nonnull %i.o) #14
  %.not12.i.i = icmp eq i32 %i.p, 0
  br i1 %.not12.i.i, label %bb.c, label %__se_sys_io_getevents_time32.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %..i.i = phi ptr [ %1, %bb.b ], [ null, %bb.a ]
  %i.q = shl i64 %i.e, 32
  %i.r = ashr exact i64 %i.q, 32
  %i.s = shl i64 %i.g, 32
  %i.t = ashr exact i64 %i.s, 32
  %i.u = call fastcc i64 @do_io_getevents(i64 noundef %i.c, i64 noundef %i.r, i64 noundef %i.t, ptr noundef %i.n, ptr noundef %..i.i) #16, !srcloc !29 ; 2 uses
  %i.v = and i64 %i.u, 4294967295
  %.not13.i.i = icmp eq i64 %i.v, 0
  br i1 %.not13.i.i, label %test_tsk_thread_flag.exit.i.i.i, label %signal_pending.exit.thread.i.i

test_tsk_thread_flag.exit.i.i.i:                  ; preds = %bb.c
  %i.w = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #17, !srcloc !21
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = load volatile i64, ptr %i.x, align 8
  %i.z = and i64 %i.y, 4
  %.not.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i, label %signal_pending.exit.i.i, label %signal_pending.exit.thread.i.i, !prof !14

signal_pending.exit.i.i:                          ; preds = %test_tsk_thread_flag.exit.i.i.i
  %i.aa = load volatile i64, ptr %i.x, align 8
  %.in.i.i.in.in.i.i.fr.i.i = freeze i64 %i.aa
  %i.ab = and i64 %.in.i.i.in.in.i.i.fr.i.i, 2
  %.not14.i.i = icmp eq i64 %i.ab, 0
  %spec.select.i.i = select i1 %.not14.i.i, i64 0, i64 -4
  br label %signal_pending.exit.thread.i.i

signal_pending.exit.thread.i.i:                   ; preds = %signal_pending.exit.i.i, %test_tsk_thread_flag.exit.i.i.i, %bb.c
  %.0.i.i = phi i64 [ %i.u, %bb.c ], [ -4, %test_tsk_thread_flag.exit.i.i.i ], [ %spec.select.i.i, %signal_pending.exit.i.i ]
  %sext.i.i = shl i64 %.0.i.i, 32
  %i.ac = ashr exact i64 %sext.i.i, 32
  br label %__se_sys_io_getevents_time32.exit

__se_sys_io_getevents_time32.exit:                ; preds = %bb.b, %signal_pending.exit.thread.i.i
  %.09.i.i = phi i64 [ %i.ac, %signal_pending.exit.thread.i.i ], [ -14, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret i64 %.09.i.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__ia32_compat_sys_io_pgetevents(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.__compat_aio_sigset, align 8 ; 6 uses
  %2 = alloca %struct.timespec64, align 8         ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 4294967295
  %i.d = getelementptr i8, ptr %0, i64 88
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %0, i64 96
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %0, i64 104
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 4294967295
  %i.k = getelementptr i8, ptr %0, i64 112
  %i.l = load i64, ptr %i.k, align 8
  %i.m = and i64 %i.l, 4294967295                 ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 32
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, 4294967295                 ; 2 uses
  %i.q = inttoptr i64 %i.j to ptr
  %i.r = inttoptr i64 %i.p to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  store i64 0, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !15
  %.not19.i.i = icmp eq i64 %i.m, 0               ; 2 uses
  br i1 %.not19.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = inttoptr i64 %i.m to ptr
  %i.t = call i32 @get_old_timespec32(ptr noundef nonnull %2, ptr noundef nonnull %i.s) #14
  %.not20.i.i = icmp eq i32 %i.t, 0
  br i1 %.not20.i.i, label %bb.c, label %__se_compat_sys_io_pgetevents.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not21.i.i = icmp eq i64 %i.p, 0
  br i1 %.not21.i.i, label %bb.d, label %copy_from_user.exit.i.i

copy_from_user.exit.i.i:                          ; preds = %bb.c
  %i.u = call i64 @_copy_from_user(ptr noundef nonnull %1, ptr noundef nonnull %i.r, i64 noundef 8) #14
  %.not22.i.i = icmp eq i64 %i.u, 0
  br i1 %.not22.i.i, label %copy_from_user.exit._crit_edge.i.i, label %__se_compat_sys_io_pgetevents.exit

copy_from_user.exit._crit_edge.i.i:               ; preds = %copy_from_user.exit.i.i
  %.pre.i.i = load i32, ptr %1, align 8
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.pre33.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4
  %i.v = zext i32 %.pre.i.i to i64
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = zext i32 %.pre33.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %copy_from_user.exit._crit_edge.i.i, %bb.c
  %i.y = phi i64 [ %i.x, %copy_from_user.exit._crit_edge.i.i ], [ 0, %bb.c ]
  %i.z = phi ptr [ %i.w, %copy_from_user.exit._crit_edge.i.i ], [ null, %bb.c ]
  %i.aa = call i32 @set_compat_user_sigmask(ptr noundef %i.z, i64 noundef %i.y) #14 ; 2 uses
  %.not23.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not23.i.i, label %test_tsk_thread_flag.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = sext i32 %i.aa to i64
  br label %__se_compat_sys_io_pgetevents.exit

test_tsk_thread_flag.exit.i.i.i:                  ; preds = %bb.d
  %i.ac = shl i64 %i.e, 32
  %i.ad = ashr exact i64 %i.ac, 32
  %i.ae = shl i64 %i.g, 32
  %i.af = ashr exact i64 %i.ae, 32
  %..i.i = select i1 %.not19.i.i, ptr null, ptr %2
  %i.ag = call fastcc i64 @do_io_getevents(i64 noundef range(i64 0, 4294967296) %i.c, i64 noundef %i.ad, i64 noundef %i.af, ptr noundef %i.q, ptr noundef %..i.i) #16, !srcloc !90 ; 2 uses
  %i.ah = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #17, !srcloc !21
  %i.ai = inttoptr i64 %i.ah to ptr               ; 6 uses
  %i.aj = load volatile i64, ptr %i.ai, align 8
  %i.ak = and i64 %i.aj, 4
  %.not.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i, label %signal_pending.exit.i.i, label %signal_pending.exit.thread.i.i, !prof !14

signal_pending.exit.i.i:                          ; preds = %test_tsk_thread_flag.exit.i.i.i
  %i.al = load volatile i64, ptr %i.ai, align 8
  %i.am = and i64 %i.al, 2
  %.not.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i, label %bb.g, label %signal_pending.exit.thread.i.i

signal_pending.exit.thread.i.i:                   ; preds = %test_tsk_thread_flag.exit.i.i.i, %signal_pending.exit.i.i
  %i.an = load volatile i64, ptr %i.ai, align 8
  %i.ao = and i64 %i.an, 4
  %.not.i.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.i.i, label %signal_pending.exit.i.i.i, label %restore_saved_sigmask_unless.exit.i.i, !prof !14

signal_pending.exit.i.i.i:                        ; preds = %signal_pending.exit.thread.i.i
  %i.ap = load volatile i64, ptr %i.ai, align 8
  %i.aq = and i64 %i.ap, 2
  %.not.i28.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i28.i.i, label %bb.f, label %restore_saved_sigmask_unless.exit.i.i, !prof !25

bb.f:                                             ; preds = %signal_pending.exit.i.i.i
  call void asm sideeffect "354: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 354b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 354) #13, !srcloc !26
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.22, i32 552, i32 2305, i64 16) #13, !srcloc !27
  call void asm sideeffect "355: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 355b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 355) #13, !srcloc !28
  br label %restore_saved_sigmask_unless.exit.i.i

bb.g:                                             ; preds = %signal_pending.exit.i.i
  %i.ar = getelementptr i8, ptr %i.ai, i64 1456   ; 2 uses
  %i.as = load i16, ptr %i.ar, align 16           ; 2 uses
  %i.at = and i16 %i.as, 16
  %.not.i.not.i.i.i.i = icmp eq i16 %i.at, 0
  br i1 %.not.i.not.i.i.i.i, label %restore_saved_sigmask_unless.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = and i16 %i.as, -17
  store i16 %i.au, ptr %i.ar, align 16
  %i.av = getelementptr i8, ptr %i.ai, i64 2128
  call void @__set_current_blocked(ptr noundef %i.av) #14
  br label %restore_saved_sigmask_unless.exit.i.i

restore_saved_sigmask_unless.exit.i.i:            ; preds = %bb.h, %bb.g, %bb.f, %signal_pending.exit.i.i.i, %signal_pending.exit.thread.i.i
  %i.aw = phi i1 [ true, %signal_pending.exit.thread.i.i ], [ true, %signal_pending.exit.i.i.i ], [ true, %bb.f ], [ false, %bb.g ], [ false, %bb.h ]
  %i.ax = and i64 %i.ag, 4294967295
  %i.ay = icmp eq i64 %i.ax, 0
  %or.cond.not.i.i = select i1 %i.aw, i1 %i.ay, i1 false
  %sext.i.i = shl i64 %i.ag, 32
  %i.az = ashr exact i64 %sext.i.i, 32
  %i.ba = select i1 %or.cond.not.i.i, i64 -514, i64 %i.az
  br label %__se_compat_sys_io_pgetevents.exit

__se_compat_sys_io_pgetevents.exit:               ; preds = %bb.b, %copy_from_user.exit.i.i, %bb.e, %restore_saved_sigmask_unless.exit.i.i
  %.0.i.i = phi i64 [ %i.ba, %restore_saved_sigmask_unless.exit.i.i ], [ -14, %bb.b ], [ %i.ab, %bb.e ], [ -14, %copy_from_user.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret i64 %.0.i.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__ia32_compat_sys_io_pgetevents_time64(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.__compat_aio_sigset, align 8 ; 6 uses
  %2 = alloca %struct.timespec64, align 8         ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 4294967295
  %i.d = getelementptr i8, ptr %0, i64 88
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %0, i64 96
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %0, i64 104
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 4294967295
  %i.k = getelementptr i8, ptr %0, i64 112
  %i.l = load i64, ptr %i.k, align 8
  %i.m = and i64 %i.l, 4294967295                 ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 32
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, 4294967295                 ; 2 uses
  %i.q = inttoptr i64 %i.j to ptr
  %i.r = inttoptr i64 %i.p to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  store i64 0, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !15
  %.not19.i.i = icmp eq i64 %i.m, 0               ; 2 uses
  br i1 %.not19.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = inttoptr i64 %i.m to ptr
  %i.t = call i32 @get_timespec64(ptr noundef nonnull %2, ptr noundef nonnull %i.s) #14
  %.not20.i.i = icmp eq i32 %i.t, 0
  br i1 %.not20.i.i, label %bb.c, label %__se_compat_sys_io_pgetevents_time64.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not21.i.i = icmp eq i64 %i.p, 0
  br i1 %.not21.i.i, label %bb.d, label %copy_from_user.exit.i.i

copy_from_user.exit.i.i:                          ; preds = %bb.c
  %i.u = call i64 @_copy_from_user(ptr noundef nonnull %1, ptr noundef nonnull %i.r, i64 noundef 8) #14
  %.not22.i.i = icmp eq i64 %i.u, 0
  br i1 %.not22.i.i, label %copy_from_user.exit._crit_edge.i.i, label %__se_compat_sys_io_pgetevents_time64.exit

copy_from_user.exit._crit_edge.i.i:               ; preds = %copy_from_user.exit.i.i
  %.pre.i.i = load i32, ptr %1, align 8
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.pre33.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4
  %i.v = zext i32 %.pre.i.i to i64
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = zext i32 %.pre33.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %copy_from_user.exit._crit_edge.i.i, %bb.c
  %i.y = phi i64 [ %i.x, %copy_from_user.exit._crit_edge.i.i ], [ 0, %bb.c ]
end_hunk_0
