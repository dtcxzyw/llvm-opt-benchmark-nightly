Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/af_unix?download=true
inline.NumInlined: 459
inline.NumDeleted: 195
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@unix_ioctl:bb.a
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @unix_compat_ioctl(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i64 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = and i64 %2, 4294967295
  %i.b = tail call i32 @unix_ioctl(ptr noundef %0, i32 noundef %1, i64 noundef %i.a) #20, !srcloc !72
  ret i32 %i.b
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @unix_listen(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %i.c = getelementptr i8, ptr %0, i64 4
  %i.d = load i16, ptr %i.c, align 4
  switch i16 %i.d, label %prepare_peercred.exit [
    i16 1, label %bb.b
    i16 5, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 776
  %i.f = load volatile ptr, ptr %i.e, align 8
  %.not27 = icmp eq ptr %i.f, null
  br i1 %.not27, label %prepare_peercred.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #21, !srcloc !24
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 2096
  %.val.i = load ptr, ptr %i.i, align 16
  %i.j = getelementptr i8, ptr %.val.i, i64 384
  %.val.val.i = load ptr, ptr %i.j, align 8       ; 7 uses
  %i.k = tail call i32 @pidfs_register_pid_gfp(ptr noundef %.val.val.i, i32 noundef 3264) #18 ; 2 uses
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.d, label %prepare_peercred.exit, !prof !17

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq ptr %.val.val.i, null
  br i1 %.not.i.i, label %get_pid.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %.val.val.i, i32 range(i32 0, -2147483648) 1, ptr nonnull elementtype(i32) %.val.val.i) #19, !srcloc !15 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %bb.f, !prof !16

bb.f:                                             ; preds = %bb.e
  %i.m = add i32 %i.l, 1
  %i.n = or i32 %i.m, %i.l
  %.not10.i.i.i.i.i = icmp sgt i32 %i.n, -1
  br i1 %.not10.i.i.i.i.i, label %get_pid.exit.i, label %.sink.split.i.i.i.i.i, !prof !17

.sink.split.i.i.i.i.i:                            ; preds = %bb.f, %bb.e
  %.sink.i.i.i.i.i = phi i32 [ 2, %bb.e ], [ 1, %bb.f ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %.val.val.i, i32 noundef %.sink.i.i.i.i.i) #18
  br label %get_pid.exit.i

get_pid.exit.i:                                   ; preds = %.sink.split.i.i.i.i.i, %bb.f, %bb.d
  %i.o = getelementptr i8, ptr %i.h, i64 1992
  %i.p = load ptr, ptr %i.o, align 8              ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %get_pid.exit.i
  %i.q = getelementptr i8, ptr %i.p, i64 168
  store i32 0, ptr %i.q, align 8
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock addq $1, $0", "=*m,er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.p, i64 1, ptr nonnull elementtype(i64) %i.p) #19, !srcloc !30
  br label %bb.h

bb.h:                                             ; preds = %get_pid.exit.i, %bb.g
  %i.r = getelementptr i8, ptr %i.b, i64 872      ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.r) #18
  %i.s = getelementptr i8, ptr %i.b, i64 18       ; 3 uses
  %i.t = load volatile i8, ptr %i.s, align 2
  %.not29 = icmp eq i8 %i.t, 7
  br i1 %.not29, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = load volatile i8, ptr %i.s, align 2
  %.not30 = icmp eq i8 %i.u, 10
  br i1 %.not30, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.v = getelementptr i8, ptr %i.b, i64 604      ; 2 uses
  %i.w = load i32, ptr %i.v, align 4
  %i.x = icmp ugt i32 %1, %i.w
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr i8, ptr %i.b, i64 896
  %i.z = tail call i32 @__wake_up(ptr noundef %i.y, i32 noundef 1, i32 noundef 0, ptr noundef null) #18 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store i32 %1, ptr %i.v, align 4
  store volatile i8 10, ptr %i.s, align 2
  %i.aa = getelementptr i8, ptr %i.b, i64 616     ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.aa) #18
  %i.ab = getelementptr i8, ptr %i.b, i64 624     ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr i8, ptr %i.b, i64 632     ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  store ptr %.val.val.i, ptr %i.ab, align 8
  store ptr %i.p, ptr %i.ad, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i.aa) #18
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l
  %.sroa.0.0 = phi ptr [ %i.ac, %bb.l ], [ %.val.val.i, %bb.i ]
  %.sroa.8.0 = phi ptr [ %i.ae, %bb.l ], [ %i.p, %bb.i ] ; 4 uses
  %.0 = phi i32 [ 0, %bb.l ], [ -22, %bb.i ]      ; 3 uses
  tail call void @_raw_spin_unlock(ptr noundef %i.r) #18
  %i.af = tail call i32 @__SCT__might_resched() #18 ; 0 uses
  tail call void @put_pid(ptr noundef %.sroa.0.0) #18
  %.not.i.i.i31 = icmp eq ptr %.sroa.8.0, null
  br i1 %.not.i.i.i31, label %prepare_peercred.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock subq $2, $0", "=*m,={@cce},er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %.sroa.8.0, i64 1, ptr nonnull elementtype(i64) %.sroa.8.0) #19, !srcloc !31 ; 2 uses
  %i.ah = icmp ult i8 %i.ag, 2
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = trunc nuw i8 %i.ag to i1
  br i1 %i.ai, label %bb.o, label %prepare_peercred.exit

bb.o:                                             ; preds = %bb.n
  tail call void @__put_cred(ptr noundef nonnull %.sroa.8.0) #18
  br label %prepare_peercred.exit

prepare_peercred.exit:                            ; preds = %bb.o, %bb.n, %bb.m, %bb.c, %bb.a, %bb.b
  %.1 = phi i32 [ -95, %bb.a ], [ -22, %bb.b ], [ %i.k, %bb.c ], [ %.0, %bb.m ], [ %.0, %bb.n ], [ %.0, %bb.o ]
  ret i32 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -22, 1) i32 @unix_shutdown(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %or.cond = icmp ugt i32 %1, 2
  br i1 %or.cond, label %.critedge61, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nuw nsw i32 %1, 1                    ; 2 uses
  %i.d = getelementptr i8, ptr %i.b, i64 872      ; 3 uses
  tail call void @_raw_spin_lock(ptr noundef %i.d) #18
  %i.e = getelementptr i8, ptr %i.b, i64 575      ; 2 uses
  %i.f = load i8, ptr %i.e, align 1
  %i.g = trunc nuw nsw i32 %i.c to i8
  %i.h = or i8 %i.f, %i.g
  store volatile i8 %i.h, ptr %i.e, align 1
  %i.i = getelementptr i8, ptr %i.b, i64 848
  %i.j = load ptr, ptr %i.i, align 16             ; 12 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %sk_wake_async.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.j, i64 128      ; 6 uses
  %i.l = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.k, i32 range(i32 0, -2147483648) 1, ptr elementtype(i32) %i.k) #19, !srcloc !15 ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i, label %.sink.split.i.i.i, label %bb.d, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.m = add i32 %i.l, 1
  %i.n = or i32 %i.m, %i.l
  %.not10.i.i.i = icmp sgt i32 %i.n, -1
  br i1 %.not10.i.i.i, label %refcount_inc.exit, label %.sink.split.i.i.i, !prof !17

.sink.split.i.i.i:                                ; preds = %bb.d, %bb.c
  %.sink.i.i.i = phi i32 [ 2, %bb.c ], [ 1, %bb.d ]
  tail call void @refcount_warn_saturate(ptr noundef %i.k, i32 noundef %.sink.i.i.i) #18
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %bb.d, %.sink.split.i.i.i
  tail call void @_raw_spin_unlock(ptr noundef %i.d) #18
  %i.o = getelementptr i8, ptr %i.b, i64 688
  %i.p = load ptr, ptr %i.o, align 16
  tail call void %i.p(ptr noundef %i.b) #18
  %i.q = getelementptr i8, ptr %i.b, i64 534
  %i.r = load i16, ptr %i.q, align 2
  switch i16 %i.r, label %bb.i [
    i16 1, label %bb.e
    i16 5, label %bb.e
  ]

bb.e:                                             ; preds = %refcount_inc.exit, %refcount_inc.exit
  %i.s = getelementptr i8, ptr %i.j, i64 40
  %i.t = load volatile ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 176
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not56 = icmp eq ptr %i.v, null
  br i1 %.not56, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void %i.v(ptr noundef nonnull %i.j) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = shl nuw nsw i32 %1, 1
  %i.x = and i32 %i.w, 2
  %2 = lshr i32 %i.c, 1                           ; 2 uses
  %3 = or disjoint i32 %2, %i.x                   ; 2 uses
  %i.y = getelementptr i8, ptr %i.j, i64 872      ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.y) #18
  %i.z = getelementptr i8, ptr %i.j, i64 575      ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = trunc nuw nsw i32 %3 to i8
  %4 = xor i8 %i.ab, 2
  %i.ac = or i8 %i.aa, %4
  store volatile i8 %i.ac, ptr %i.z, align 1
  tail call void @_raw_spin_unlock(ptr noundef %i.y) #18
  %i.ad = getelementptr i8, ptr %i.j, i64 688
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull %i.j) #18
  %i.af = icmp eq i32 %3, 1
  br i1 %i.af, label %sock_flag.exit.i, label %bb.h

sock_flag.exit.i:                                 ; preds = %bb.g
  %i.ag = getelementptr i8, ptr %i.j, i64 96
  %i.ah = load volatile i64, ptr %i.ag, align 8
  %i.ai = and i64 %i.ah, 65536
  %.not.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i, label %bb.i, label %.sink.split

bb.h:                                             ; preds = %bb.g
  %.not59 = icmp eq i32 %2, 0
  br i1 %.not59, label %bb.i, label %sock_flag.exit.i63

sock_flag.exit.i63:                               ; preds = %bb.h
  %i.aj = getelementptr i8, ptr %i.j, i64 96
  %i.ak = load volatile i64, ptr %i.aj, align 8
  %i.al = and i64 %i.ak, 65536
  %.not.i64 = icmp eq i64 %i.al, 0
  br i1 %.not.i64, label %bb.i, label %.sink.split

sk_wake_async.exit:                               ; preds = %bb.b
  tail call void @_raw_spin_unlock(ptr noundef %i.d) #18
  %i.am = getelementptr i8, ptr %i.b, i64 688
  %i.an = load ptr, ptr %i.am, align 16
  tail call void %i.an(ptr noundef %i.b) #18
  br label %.critedge61

.sink.split:                                      ; preds = %sock_flag.exit.i63, %sock_flag.exit.i
  %.sink75 = phi i32 [ 1, %sock_flag.exit.i63 ], [ 6, %sock_flag.exit.i ]
  tail call void @__rcu_read_lock() #18
  %i.ao = getelementptr i8, ptr %i.j, i64 256
  %i.ap = load volatile ptr, ptr %i.ao, align 8
  %i.aq = tail call i32 @sock_wake_async(ptr noundef %i.ap, i32 noundef 1, i32 noundef %.sink75) #18 ; 0 uses
  tail call void @__rcu_read_unlock() #18
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %sock_flag.exit.i63, %sock_flag.exit.i, %bb.h, %refcount_inc.exit
  %i.ar = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.k, i32 -1, ptr elementtype(i32) %i.k) #19, !srcloc !15 ; 2 uses
  %i.as = icmp eq i32 %i.ar, 1
  br i1 %i.as, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = icmp slt i32 %i.ar, 1
  br i1 %i.at, label %bb.k, label %.critedge61, !prof !16

bb.k:                                             ; preds = %bb.j
  tail call void @refcount_warn_saturate(ptr noundef %i.k, i32 noundef 3) #18
  br label %.critedge61

bb.l:                                             ; preds = %bb.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !27
  tail call void @sk_free(ptr noundef nonnull %i.j) #18
  br label %.critedge61

.critedge61:                                      ; preds = %bb.l, %bb.k, %bb.j, %sk_wake_async.exit, %bb.a
  %.0 = phi i32 [ -22, %bb.a ], [ 0, %sk_wake_async.exit ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.l ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @unix_setsockopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr %3, i8 %4, i32 noundef %5) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %cond.i = icmp eq i32 %2, 84
  br i1 %cond.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @sock_setsockopt(ptr noundef %0, i32 noundef 1, i32 noundef %2, ptr %3, i8 %4, i32 noundef %5) #18
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %.not19 = icmp eq i32 %5, 4
  br i1 %.not19, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.a, align 4, !annotation !18
  %i.e = trunc i8 %4 to i1
  br i1 %i.e, label %copy_from_sockptr.exit.thread, label %copy_from_sockptr.exit

copy_from_sockptr.exit.thread:                    ; preds = %bb.e
  %i.f = load i32, ptr %3, align 1
  store i32 %i.f, ptr %i.a, align 4
  br label %bb.f

copy_from_sockptr.exit:                           ; preds = %bb.e
  %i.g = call i64 @_copy_from_user(ptr noundef nonnull %i.a, ptr noundef %3, i64 noundef 4) #18
  %i.h = and i64 %i.g, 4294967295
  %.not20 = icmp eq i64 %i.h, 0
  br i1 %.not20, label %bb.f, label %bb.i

bb.f:                                             ; preds = %copy_from_sockptr.exit, %copy_from_sockptr.exit.thread
  %i.i = getelementptr i8, ptr %i.c, i64 534
  %i.j = load i16, ptr %i.i, align 2
  %.not21 = icmp eq i16 %i.j, 1
  br i1 %.not21, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.k = load i32, ptr %i.a, align 4              ; 2 uses
  %or.cond = icmp ugt i32 %i.k, 1
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr i8, ptr %i.c, i64 1020
  %i.m = trunc nuw nsw i32 %i.k to i8
  store volatile i8 %i.m, ptr %i.l, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.f, %copy_from_sockptr.exit, %bb.d, %bb.a, %bb.h, %bb.c
  %.0 = phi i32 [ %i.d, %bb.c ], [ -95, %bb.a ], [ -22, %bb.d ], [ -14, %copy_from_sockptr.exit ], [ -22, %bb.f ], [ 0, %bb.h ], [ -22, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @unix_show_fdinfo(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 18
  %i.d = load volatile i8, ptr %i.c, align 2      ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 4
  %i.f = load i16, ptr %i.e, align 4
  %i.g = icmp eq i16 %i.f, 2
  %i.h = icmp eq i8 %i.d, 1
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.b, i64 1000
  %i.j = load volatile i32, ptr %i.i, align 4
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = icmp eq i8 %i.d, 10
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %i.b, i64 168      ; 3 uses
  %i.m = getelementptr i8, ptr %i.b, i64 188      ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.m) #18
  %i.n = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.o = icmp eq ptr %i.n, %i.l
  %.not1518.i = icmp eq ptr %i.n, null
  %.not15.i = or i1 %i.o, %.not1518.i
  br i1 %.not15.i, label %unix_count_nr_fds.exit, label %select.unfold.i

select.unfold.i:                                  ; preds = %bb.e, %select.unfold.i
  %.017.i = phi ptr [ %.0.val.i, %select.unfold.i ], [ %i.n, %bb.e ] ; 2 uses
  %.01116.i = phi i32 [ %i.t, %select.unfold.i ], [ 0, %bb.e ]
  %i.p = getelementptr i8, ptr %.017.i, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 1000
  %i.s = load volatile i32, ptr %i.r, align 4
  %i.t = add i32 %i.s, %.01116.i                  ; 2 uses
  %.0.val.i = load ptr, ptr %.017.i, align 8      ; 3 uses
  %i.u = icmp eq ptr %.0.val.i, %i.l
  %.not19.i = icmp eq ptr %.0.val.i, null
  %.not.i = or i1 %i.u, %.not19.i
  br i1 %.not.i, label %unix_count_nr_fds.exit, label %select.unfold.i

unix_count_nr_fds.exit:                           ; preds = %select.unfold.i, %bb.e
  %.011.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.t, %select.unfold.i ]
  tail call void @_raw_spin_unlock(ptr noundef %i.m) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %unix_count_nr_fds.exit, %bb.c
  %.0 = phi i32 [ %i.j, %bb.c ], [ %.011.lcssa.i, %unix_count_nr_fds.exit ], [ 0, %bb.d ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %.0) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @unix_stream_sendmsg(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.scm_cookie, align 8         ; 14 uses
  %i.a = alloca i32, align 4                      ; 17 uses
  %i.b = getelementptr i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !annotation !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 -1, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 -1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.g = call i32 @security_socket_getpeersec_dgram(ptr noundef %0, ptr noundef null, ptr noundef nonnull %i.f) #18 ; 0 uses
  %i.h = getelementptr i8, ptr %1, i64 72
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %scm_send.exit.thread, label %scm_send.exit

scm_send.exit.thread:                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 4
  br label %bb.b

end_hunk_0
