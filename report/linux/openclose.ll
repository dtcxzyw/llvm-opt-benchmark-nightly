Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/openclose?download=true
inline.NumInlined: 45
inline.NumDeleted: 15
begin_hunk_0_@io_close_prep:bb.a
  store i32 %i.o, ptr %i.p, align 8
  %i.q = getelementptr i8, ptr %1, i64 44
  %i.r = load volatile i32, ptr %i.q, align 4     ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 12
  store i32 %i.r, ptr %i.s, align 4
  %.not20 = icmp eq i32 %i.r, 0
  %.not21 = icmp eq i32 %i.o, 0
  %or.cond = select i1 %.not20, i1 true, i1 %.not21
  %spec.select = select i1 %or.cond, i32 0, i32 -22
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.0 = phi i32 [ %spec.select, %bb.g ], [ -22, %bb.a ], [ -9, %bb.f ], [ -22, %bb.e ], [ -22, %bb.d ], [ -22, %bb.c ], [ -22, %bb.b ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -11, 1) i32 @io_close(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #9, !srcloc !11
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr i8, ptr %i.b, i64 2064     ; 2 uses
  %i.d = load ptr, ptr %i.c, align 16             ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 96
  %.val29 = load ptr, ptr %i.g, align 8           ; 3 uses
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = and i32 %1, 2
  %.not.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i, label %io_ring_submit_lock.exit.thread.i.i, label %bb.c, !prof !10

io_ring_submit_lock.exit.thread.i.i:              ; preds = %bb.b
  %i.j = tail call i32 @io_fixed_fd_remove(ptr noundef %.val29, i32 noundef %i.h) #8
  br label %io_close_fixed.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %.val29, i64 64    ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.k) #8
  %i.l = tail call i32 @io_fixed_fd_remove(ptr noundef %.val29, i32 noundef %i.h) #8
  tail call void @mutex_unlock(ptr noundef %i.k) #8
  br label %io_close_fixed.exit

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %i.d, i64 128      ; 4 uses
  tail call void @_raw_spin_lock(ptr noundef %i.m) #8
  %i.n = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr i8, ptr %i.d, i64 32
  %i.q = load volatile ptr, ptr %i.p, align 32    ; 2 uses
  %i.r = load i32, ptr %i.q, align 8
  %i.s = tail call i64 asm sideeffect "cmp $1,$2; sbb $0,$0", "=r,ir,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i32 %i.r, i32 %i.o) #7, !srcloc !16 ; 2 uses
  %i.t = getelementptr i8, ptr %i.q, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = zext i32 %i.o to i64
  %i.w = and i64 %i.s, %i.v
  %i.x = getelementptr [8 x i8], ptr %i.u, i64 %i.w
  %i.y = load volatile ptr, ptr %i.x, align 8
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = and i64 %i.s, %i.z                      ; 2 uses
  %i.ab = inttoptr i64 %i.aa to ptr               ; 2 uses
  %.not25 = icmp eq i64 %i.aa, 0
  br i1 %.not25, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call zeroext i1 @io_is_uring_fops(ptr noundef nonnull %i.ab) #8
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_raw_spin_unlock(ptr noundef %i.m) #8
  br label %io_close_fixed.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.ad = getelementptr i8, ptr %i.ab, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr i8, ptr %i.ae, i64 112
  %i.ag = load ptr, ptr %i.af, align 8
  %.not26 = icmp eq ptr %i.ag, null
  %.not27 = icmp sgt i32 %1, -1
  %or.cond = or i1 %.not27, %.not26
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_raw_spin_unlock(ptr noundef %i.m) #8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ah = load i32, ptr %i.n, align 8
  %i.ai = tail call ptr @file_close_fd_locked(ptr noundef %i.d, i32 noundef %i.ah) #8 ; 2 uses
  tail call void @_raw_spin_unlock(ptr noundef %i.m) #8
  %.not28 = icmp eq ptr %i.ai, null
  br i1 %.not28, label %io_close_fixed.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %i.c, align 16
  %i.ak = tail call i32 @filp_close(ptr noundef nonnull %i.ai, ptr noundef %i.aj) #8
  br label %io_close_fixed.exit

io_close_fixed.exit:                              ; preds = %bb.c, %io_ring_submit_lock.exit.thread.i.i, %bb.j
  %.0 = phi i32 [ %i.j, %io_ring_submit_lock.exit.thread.i.i ], [ %i.l, %bb.c ], [ %i.ak, %bb.j ] ; 3 uses
  %i.al = icmp slt i32 %.0, 0
  br i1 %i.al, label %io_close_fixed.exit.thread, label %bb.k

io_close_fixed.exit.thread:                       ; preds = %bb.f, %bb.i, %io_close_fixed.exit
  %.032 = phi i32 [ %.0, %io_close_fixed.exit ], [ -9, %bb.i ], [ -9, %bb.f ]
  %i.am = getelementptr i8, ptr %0, i64 72        ; 2 uses
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = or i64 %i.an, 256                       ; 2 uses
  %i.ap = and i64 %i.an, 64
  %.not.i = icmp eq i64 %i.ap, 0
  %i.aq = and i64 %i.ao, -8388673
  %i.ar = or disjoint i64 %i.aq, 8388608
  %storemerge.i = select i1 %.not.i, i64 %i.ao, i64 %i.ar
  store i64 %storemerge.i, ptr %i.am, align 8
  br label %bb.k

bb.k:                                             ; preds = %io_close_fixed.exit.thread, %io_close_fixed.exit
  %.031 = phi i32 [ %.032, %io_close_fixed.exit.thread ], [ %.0, %io_close_fixed.exit ]
  %i.as = getelementptr i8, ptr %0, i64 88
  store i32 %.031, ptr %i.as, align 8
  %i.at = getelementptr i8, ptr %0, i64 92
  store i32 0, ptr %i.at, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.022 = phi i32 [ 0, %bb.k ], [ -11, %bb.h ]
  ret i32 %.022
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @io_is_uring_fops(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @file_close_fd_locked(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @filp_close(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite, inaccessiblemem: readwrite)
define dso_local range(i32 -22, 1) i32 @io_install_fixed_fd_prep(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %.not15 = icmp eq i64 %i.d, 0
  br i1 %.not15, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8
  %.not16 = icmp eq i32 %i.f, 0
  br i1 %.not16, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 40
  %i.h = load i16, ptr %i.g, align 8
  %.not17 = icmp eq i16 %i.h, 0
  br i1 %.not17, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %1, i64 44
  %i.j = load i32, ptr %i.i, align 4
  %.not18 = icmp eq i32 %i.j, 0
  br i1 %.not18, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %1, i64 48
  %i.l = load i64, ptr %i.k, align 8
  %.not19 = icmp eq i64 %i.l, 0
  br i1 %.not19, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr i8, ptr %0, i64 72
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = and i64 %i.n, 1
  %.not20 = icmp eq i64 %i.o, 0
  br i1 %.not20, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr i8, ptr %1, i64 28
  %i.q = load volatile i32, ptr %i.p, align 4     ; 2 uses
  %.not21 = icmp ult i32 %i.q, 2
  br i1 %.not21, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.r = and i64 %i.n, 524288
  %.not22 = icmp eq i64 %i.r, 0
  br i1 %.not22, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr i8, ptr %0, i64 8
  %.not23 = icmp eq i32 %i.q, 0
  %spec.select = select i1 %.not23, i32 524288, i32 0
  store i32 %spec.select, ptr %i.s, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.j
  %.0 = phi i32 [ -22, %bb.a ], [ -9, %bb.g ], [ -22, %bb.h ], [ 0, %bb.j ], [ -22, %bb.f ], [ -22, %bb.e ], [ -22, %bb.d ], [ -22, %bb.c ], [ -22, %bb.b ], [ -1, %bb.i ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef i32 @io_install_fixed_fd(ptr nofree noundef captures(none) initializes((88, 96)) %0, i32 noundef %1) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8
  %i.d = tail call i32 @receive_fd(ptr noundef %i.a, ptr noundef null, i32 noundef %i.c) #8 ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = or i64 %i.g, 256                         ; 2 uses
  %i.i = and i64 %i.g, 64
  %.not.i = icmp eq i64 %i.i, 0
  %i.j = and i64 %i.h, -8388673
  %i.k = or disjoint i64 %i.j, 8388608
  %storemerge.i = select i1 %.not.i, i64 %i.h, i64 %i.k
  store i64 %storemerge.i, ptr %i.f, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr i8, ptr %0, i64 88
  store i32 %i.d, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %0, i64 92
  store i32 0, ptr %i.m, align 4
  ret i32 0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @receive_fd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none)
define dso_local range(i32 -22, 1) i32 @io_pipe_prep(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #6 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %.not16 = icmp eq i64 %i.d, 0
  br i1 %.not16, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %1, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %.not17 = icmp eq i64 %i.f, 0
  br i1 %.not17, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 16
  %i.h = load volatile i64, ptr %i.g, align 8
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %1, i64 28
  %i.l = load volatile i32, ptr %i.k, align 4     ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 16
  store i32 %i.l, ptr %i.m, align 8
  %i.n = and i32 %i.l, -542849
  %.not18 = icmp eq i32 %i.n, 0
  br i1 %.not18, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %1, i64 44
  %i.p = load volatile i32, ptr %i.o, align 4
  %i.q = getelementptr i8, ptr %0, i64 20
  store i32 %i.p, ptr %i.q, align 4
  %i.r = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #9, !srcloc !11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = getelementptr i8, ptr %i.s, i64 2096
  %i.u = load ptr, ptr %i.t, align 16
  %i.v = getelementptr i8, ptr %i.u, i64 800
  %i.w = load volatile i64, ptr %i.v, align 8
  %i.x = getelementptr i8, ptr %0, i64 24
  store i64 %i.w, ptr %i.x, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.b, %bb.c, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ -22, %bb.a ], [ -22, %bb.c ], [ -22, %bb.b ], [ -22, %bb.d ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @io_pipe(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 8 uses
  %i.b = alloca [2 x i32], align 8                ; 9 uses
  %i.c = alloca [2 x ptr], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !annotation !12
  %i.d = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = call i32 @create_pipe_files(ptr noundef nonnull %i.c, i32 noundef %i.e) #8 ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4              ; 6 uses
  %.not17 = icmp eq i32 %i.h, 0
  br i1 %.not17, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %0, i64 96
  %i.j = load ptr, ptr %i.i, align 8              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i64 -1, ptr %i.b, align 8
  %i.k = load i32, ptr %i.d, align 8
  %i.l = and i32 %i.k, 524288
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.d, label %io_pipe_fixed.exit

bb.d:                                             ; preds = %bb.c
  %i.m = icmp eq i32 %i.h, -1                     ; 3 uses
  %i.n = and i32 %1, 2
  %.not.i.i = icmp eq i32 %i.n, 0                 ; 3 uses
  br i1 %.not.i.i, label %io_ring_submit_lock.exit.i, label %bb.e, !prof !10

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.j, i64 64
  call void @mutex_lock(ptr noundef %i.o) #8
  br label %io_ring_submit_lock.exit.i

io_ring_submit_lock.exit.i:                       ; preds = %bb.e, %bb.d
  %i.p = load ptr, ptr %i.c, align 16
  %i.q = call i32 @__io_fixed_fd_install(ptr noundef %i.j, ptr noundef %i.p, i32 noundef %i.h) #8 ; 3 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %io_ring_submit_lock.exit49.i, label %bb.f

bb.f:                                             ; preds = %io_ring_submit_lock.exit.i
  %i.s = add i32 %i.h, -1
  %i.t = select i1 %i.m, i32 %i.q, i32 %i.s
  store i32 %i.t, ptr %i.b, align 8
  store ptr null, ptr %i.c, align 16
  %i.u = add nuw i32 %i.h, 1
  %spec.select.i = select i1 %i.m, i32 -1, i32 %i.u
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call i32 @__io_fixed_fd_install(ptr noundef %i.j, ptr noundef %i.w, i32 noundef %spec.select.i) #8 ; 3 uses
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %io_ring_submit_lock.exit49.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = select i1 %i.m, i32 %i.x, i32 %i.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.z, ptr %i.aa, align 4
  store ptr null, ptr %i.v, align 8
  br i1 %.not.i.i, label %copy_to_user.exit.i, label %copy_to_user.exit.thread.i, !prof !10

copy_to_user.exit.i:                              ; preds = %bb.g
  %i.ab = getelementptr i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call i64 @_copy_to_user(ptr noundef %i.ac, ptr noundef nonnull %i.b, i64 noundef 8) #8
  %.not44.i = icmp eq i64 %i.ad, 0
  br i1 %.not44.i, label %io_pipe_fixed.exit, label %io_ring_submit_lock.exit49.i

copy_to_user.exit.thread.i:                       ; preds = %bb.g
  %i.ae = getelementptr i8, ptr %i.j, i64 64      ; 2 uses
  call void @mutex_unlock(ptr noundef %i.ae) #8
  %i.af = getelementptr i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = call i64 @_copy_to_user(ptr noundef %i.ag, ptr noundef nonnull %i.b, i64 noundef 8) #8
  %.not4459.i = icmp eq i64 %i.ah, 0
  br i1 %.not4459.i, label %io_pipe_fixed.exit, label %bb.h

bb.h:                                             ; preds = %copy_to_user.exit.thread.i
  call void @mutex_lock(ptr noundef %i.ae) #8
  br label %io_ring_submit_lock.exit49.i

io_ring_submit_lock.exit49.i:                     ; preds = %bb.h, %copy_to_user.exit.i, %bb.f, %io_ring_submit_lock.exit.i
  %.035.i = phi i32 [ %i.q, %io_ring_submit_lock.exit.i ], [ %i.x, %bb.f ], [ -14, %bb.h ], [ -14, %copy_to_user.exit.i ] ; 2 uses
  %i.ai = load i32, ptr %i.b, align 8             ; 2 uses
  %.not45.i = icmp eq i32 %i.ai, -1
  br i1 %.not45.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %io_ring_submit_lock.exit49.i
  %i.aj = call i32 @io_fixed_fd_remove(ptr noundef %i.j, i32 noundef %i.ai) #8 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %io_ring_submit_lock.exit49.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %.not46.i = icmp eq i32 %i.al, -1
  br i1 %.not46.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = call i32 @io_fixed_fd_remove(ptr noundef %i.j, i32 noundef %i.al) #8 ; 0 uses
end_hunk_0
