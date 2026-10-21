Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/md?download=true
inline.NumInlined: 1946
inline.NumDeleted: 201
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 13
begin_hunk_0_@resync_start_store:bb.a
  %.023 = phi i64 [ %i.u, %mddev_lock.exit ], [ %i.af, %bb.l ], [ %i.o, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %.023
}

; Function Attrs: fn_ret_thunk_extern nofree noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -2147483648, 2147483648) i64 @metadata_show(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) #21 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 208
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 196
  %i.d = load i32, ptr %i.c, align 4
  %i.e = getelementptr i8, ptr %0, i64 200
  %i.f = load i32, ptr %i.e, align 8
  %i.g = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef @.str.165, i32 noundef %i.d, i32 noundef %i.f) #29
  %i.h = sext i32 %i.g to i64
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 212
  %i.j = load i32, ptr %i.i, align 4
  %.not8 = icmp eq i32 %i.j, 0
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %0, i64 216
  %i.l = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef @.str.166, ptr noundef %i.k) #29
  %i.m = sext i32 %i.l to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(6) %1, ptr noundef align 1 dereferenceable(6) @.str.99, i64 6, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i64 [ %i.h, %bb.b ], [ %i.m, %bb.d ], [ 5, %bb.e ]
  ret i64 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @metadata_store(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = getelementptr i8, ptr %0, i64 536        ; 2 uses
  %i.c = tail call i32 @mutex_lock_interruptible(ptr noundef %i.b) #29 ; 2 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %mddev_lock.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 40
  %i.e = load volatile i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 2048
  %.not12.i = icmp eq i64 %i.f, 0
  br i1 %.not12.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @mutex_unlock(ptr noundef %i.b) #29
  br label %mddev_lock.exit

mddev_lock.exit:                                  ; preds = %bb.c, %bb.a
  %.0.i = phi i32 [ %i.c, %bb.a ], [ -19, %bb.c ]
  %i.g = sext i32 %.0.i to i64
  br label %bb.u

bb.d:                                             ; preds = %bb.b
  store ptr null, ptr %i.a, align 8, !annotation !30
  %i.h = getelementptr i8, ptr %0, i64 212        ; 4 uses
  %i.i = load i32, ptr %i.h, align 4
  %.not50 = icmp eq i32 %i.i, 0
  br i1 %.not50, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @strncmp(ptr noundef %1, ptr noundef dereferenceable(10) @.str.167, i64 noundef 9) #29
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.m = load volatile ptr, ptr %i.l, align 8
  %.not = icmp eq ptr %i.m, %i.l
  br i1 %.not, label %bb.g, label %bb.t

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = load i8, ptr %1, align 1                 ; 2 uses
  %.not23.i = icmp eq i8 %i.n, 0
  br i1 %.not23.i, label %.critedgethread-pre-split.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %i.o = phi i8 [ %i.t, %bb.h ], [ %i.n, %bb.g ]  ; 2 uses
  %.025.i = phi ptr [ %i.s, %bb.h ], [ @.str.148, %bb.g ] ; 2 uses
  %.01024.i = phi ptr [ %i.r, %bb.h ], [ %1, %bb.g ] ; 2 uses
  %i.p = load i8, ptr %.025.i, align 1            ; 2 uses
  %i.q = icmp eq i8 %i.o, %i.p
  br i1 %i.q, label %bb.h, label %.critedge.loopexit.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr i8, ptr %.01024.i, i64 1   ; 3 uses
  %i.s = getelementptr i8, ptr %.025.i, i64 1     ; 2 uses
  %i.t = load i8, ptr %i.r, align 1               ; 2 uses
  %.not.i59 = icmp eq i8 %i.t, 0
  br i1 %.not.i59, label %.critedgethread-pre-split.i, label %.lr.ph.i, !llvm.loop !7

.critedgethread-pre-split.i:                      ; preds = %bb.h, %bb.g
  %.010.lcssa.i = phi ptr [ %1, %bb.g ], [ %i.r, %bb.h ]
  %.0.lcssa.i = phi ptr [ @.str.148, %bb.g ], [ %i.s, %bb.h ]
  %.pr.i = load i8, ptr %.0.lcssa.i, align 1
  br label %.critedge.i

.critedge.loopexit.i:                             ; preds = %.lr.ph.i
  %i.u = icmp eq i8 %i.o, 10
  %i.v = zext i1 %i.u to i64
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.critedgethread-pre-split.i
  %.01021.i = phi ptr [ %.010.lcssa.i, %.critedgethread-pre-split.i ], [ %.01024.i, %.critedge.loopexit.i ]
  %spec.select.idx.i = phi i64 [ 0, %.critedgethread-pre-split.i ], [ %i.v, %.critedge.loopexit.i ]
  %i.w = phi i8 [ %.pr.i, %.critedgethread-pre-split.i ], [ %i.p, %.critedge.loopexit.i ]
  %.not15.i = icmp eq i8 %i.w, 0
  br i1 %.not15.i, label %cmd_match.exit, label %cmd_match.exit.thread

cmd_match.exit:                                   ; preds = %.critedge.i
  %spec.select.i = getelementptr i8, ptr %.01021.i, i64 %spec.select.idx.i
  %i.x = load i8, ptr %spec.select.i, align 1
  %.not16.i.not = icmp eq i8 %i.x, 0
  br i1 %.not16.i.not, label %bb.i, label %cmd_match.exit.thread

bb.i:                                             ; preds = %cmd_match.exit
  %i.y = getelementptr i8, ptr %0, i64 208
  store i32 0, ptr %i.y, align 8
  store i32 0, ptr %i.h, align 4
  %i.z = getelementptr i8, ptr %0, i64 196
  store i32 0, ptr %i.z, align 4
  %i.aa = getelementptr i8, ptr %0, i64 200
  store i32 90, ptr %i.aa, align 8
  br label %bb.t

cmd_match.exit.thread:                            ; preds = %.critedge.i, %cmd_match.exit
  %i.ab = tail call i32 @strncmp(ptr noundef %1, ptr noundef dereferenceable(10) @.str.167, i64 noundef 9) #29
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.j, label %bb.n

bb.j:                                             ; preds = %cmd_match.exit.thread
  %i.ad = add i64 %2, -9                          ; 2 uses
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 16) ; 2 uses
  %i.ae = getelementptr i8, ptr %0, i64 216       ; 2 uses
  %i.af = getelementptr i8, ptr %1, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ae, ptr align 1 %i.af, i64 %spec.store.select, i1 false)
  %i.ag = getelementptr i8, ptr %i.ae, i64 %spec.store.select ; 2 uses
  store i8 0, ptr %i.ag, align 1
  %.not57.a = icmp eq i64 %i.ad, 0
  br i1 %.not57.a, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr i8, ptr %i.ag, i64 -1     ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = icmp eq i8 %i.ai, 10
  br i1 %i.aj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i8 0, ptr %i.ah, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.ak = getelementptr i8, ptr %0, i64 208
  store i32 0, ptr %i.ak, align 8
  store i32 1, ptr %i.h, align 4
  %i.al = getelementptr i8, ptr %0, i64 196
  store i32 0, ptr %i.al, align 4
  %i.am = getelementptr i8, ptr %0, i64 200
  store i32 90, ptr %i.am, align 8
  br label %bb.t

bb.n:                                             ; preds = %cmd_match.exit.thread
  %i.an = call i64 @simple_strtoul(ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef 10) #29 ; 2 uses
  %i.ao = trunc i64 %i.an to i32
  %i.ap = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.aq = icmp eq ptr %i.ap, %1
  br i1 %i.aq, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = load i8, ptr %i.ap, align 1
  %.not53 = icmp eq i8 %i.ar, 46
  br i1 %.not53, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr i8, ptr %i.ap, i64 1      ; 2 uses
  %i.at = call i64 @simple_strtoul(ptr noundef %i.as, ptr noundef nonnull %i.a, i32 noundef 10) #29
  %i.au = trunc i64 %i.at to i32
  %i.av = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.as
  br i1 %i.aw, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = load i8, ptr %i.av, align 1
  switch i8 %i.ax, label %bb.t [
    i8 0, label %3
    i8 10, label %3
  ]

3:                                                ; preds = %bb.q, %bb.q
  %sext = shl i64 %i.an, 32
  %4 = ashr exact i64 %sext, 32                   ; 2 uses
  %5 = icmp ugt i64 %4, 1
  br i1 %5, label %bb.t, label %bb.r

bb.r:                                             ; preds = %3
  %6 = getelementptr [56 x i8], ptr @super_types, i64 %4
  %7 = load ptr, ptr %6, align 8
  %.not56 = icmp eq ptr %7, null
  br i1 %.not56, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ay = getelementptr i8, ptr %0, i64 196
  store i32 %i.ao, ptr %i.ay, align 4
  %i.az = getelementptr i8, ptr %0, i64 200
  store i32 %i.au, ptr %i.az, align 8
  %i.ba = getelementptr i8, ptr %0, i64 208
  store i32 1, ptr %i.ba, align 8
  store i32 0, ptr %i.h, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.m, %3, %bb.r, %bb.p, %bb.n, %bb.o, %bb.f, %bb.s, %bb.i
  %.not57 = phi i64 [ %2, %bb.i ], [ %2, %bb.m ], [ -22, %bb.n ], [ -22, %bb.o ], [ -22, %bb.p ], [ -22, %bb.q ], [ -2, %3 ], [ -2, %bb.r ], [ %2, %bb.s ], [ -16, %bb.f ]
  call void @mddev_unlock(ptr noundef %0) #30
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %mddev_lock.exit
  %.044 = phi i64 [ %i.g, %mddev_lock.exit ], [ %.not57, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %.044
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @new_dev_store(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store ptr null, ptr %i.a, align 8, !annotation !30
  %i.b = call i64 @simple_strtoul(ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef 10) #29
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = load i8, ptr %1, align 1
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.f = load i8, ptr %i.e, align 1
  %.not47 = icmp eq i8 %i.f, 58
  br i1 %.not47, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.e, i64 1        ; 2 uses
  %i.h = load i8, ptr %i.g, align 1
  switch i8 %i.h, label %bb.d [
    i8 0, label %bb.q
    i8 10, label %bb.q
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = call i64 @simple_strtoul(ptr noundef %i.g, ptr noundef nonnull %i.a, i32 noundef 10) #29
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = load i8, ptr %i.j, align 1
  switch i8 %i.k, label %bb.q [
    i8 0, label %bb.e
    i8 10, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.l = trunc i64 %i.i to i32                    ; 2 uses
  %i.m = shl i32 %i.c, 20
  %i.n = or i32 %i.m, %i.l                        ; 3 uses
  %i.o = lshr i32 %i.n, 20
  %.not51 = icmp eq i32 %i.o, %i.c
  %.not52 = icmp ult i32 %i.l, 1048576
  %or.cond = and i1 %.not52, %.not51
  br i1 %or.cond, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.p = call i32 @mddev_suspend(ptr noundef %0, i1 noundef zeroext true) #30 ; 2 uses
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.g, label %mddev_suspend_and_lock.exit

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr i8, ptr %0, i64 536        ; 2 uses
  %i.r = call i32 @mutex_lock_interruptible(ptr noundef %i.q) #29 ; 2 uses
  %.not.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i, label %bb.h, label %mddev_lock.exit.i

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr i8, ptr %0, i64 40
  %i.t = load volatile i64, ptr %i.s, align 8
  %i.u = and i64 %i.t, 2048
  %.not12.i.i = icmp eq i64 %i.u, 0
  br i1 %.not12.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @mutex_unlock(ptr noundef %i.q) #29
  br label %mddev_lock.exit.i

mddev_lock.exit.i:                                ; preds = %bb.i, %bb.g
  %.0.i.i = phi i32 [ %i.r, %bb.g ], [ -19, %bb.i ]
  call fastcc void @__mddev_resume(ptr noundef %0, i1 noundef zeroext true) #30, !srcloc !37
  br label %mddev_suspend_and_lock.exit

mddev_suspend_and_lock.exit:                      ; preds = %mddev_lock.exit.i, %bb.f
  %.0.i = phi i32 [ %i.p, %bb.f ], [ %.0.i.i, %mddev_lock.exit.i ]
  %i.v = sext i32 %.0.i to i64
  br label %bb.q

bb.j:                                             ; preds = %bb.h
  %i.w = getelementptr i8, ptr %0, i64 208
  %i.x = load i32, ptr %i.w, align 8
  %.not54 = icmp eq i32 %i.x, 0
  br i1 %.not54, label %.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr i8, ptr %0, i64 196        ; 2 uses
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = getelementptr i8, ptr %0, i64 200       ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = call fastcc ptr @md_import_device(i32 noundef %i.n, i32 noundef %i.z, i32 noundef %i.ab) #30, !srcloc !287 ; 6 uses
  %i.ad = icmp ugt ptr %i.ac, inttoptr (i64 -4096 to ptr)
  br i1 %i.ad, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.af = load volatile ptr, ptr %i.ae, align 8   ; 2 uses
  %.not68 = icmp eq ptr %i.af, %i.ae
  br i1 %.not68, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = load i32, ptr %i.y, align 4
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr [56 x i8], ptr @super_types, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = load i32, ptr %i.aa, align 8
  %i.am = call i32 %i.ak(ptr noundef %i.ac, ptr noundef %i.af, i32 noundef %i.al) #29 ; 2 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %.thread, label %bb.n

.sink.split:                                      ; preds = %bb.j
  %i.ao = getelementptr i8, ptr %0, i64 212
  %i.ap = load i32, ptr %i.ao, align 4
  %.not55 = icmp eq i32 %i.ap, 0
  %. = select i1 %.not55, i32 -1, i32 -2
  %i.aq = call fastcc ptr @md_import_device(i32 noundef %i.n, i32 noundef %., i32 noundef -1) #30
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.m, %bb.k, %bb.l
  %.043 = phi ptr [ %i.ac, %bb.k ], [ %i.ac, %bb.l ], [ %i.ac, %bb.m ], [ %i.aq, %.sink.split ] ; 4 uses
  %i.ar = icmp ugt ptr %.043, inttoptr (i64 -4096 to ptr)
  br i1 %i.ar, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @mddev_unlock(ptr noundef %0) #30
  call fastcc void @__mddev_resume(ptr noundef %0, i1 noundef zeroext true) #30, !srcloc !37
  %i.as = ptrtoint ptr %.043 to i64
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.at = call fastcc i32 @bind_rdev_to_array(ptr noundef %.043, ptr noundef %0) #30, !srcloc !288 ; 2 uses
  %.not57 = icmp eq i32 %i.at, 0
  br i1 %.not57, label %.critedge, label %.thread

.thread:                                          ; preds = %bb.m, %bb.p
  %.04265 = phi i32 [ %i.at, %bb.p ], [ %i.am, %bb.m ]
  %.163 = phi ptr [ %.043, %bb.p ], [ %i.ac, %bb.m ]
  call fastcc void @export_rdev(ptr noundef %.163) #30, !srcloc !289
  call void @mddev_unlock(ptr noundef %0) #30
  call fastcc void @__mddev_resume(ptr noundef %0, i1 noundef zeroext true) #30, !srcloc !37
  %i.au = sext i32 %.04265 to i64
  br label %bb.q

.critedge:                                        ; preds = %bb.p
  call void @mddev_unlock(ptr noundef %0) #30
  call fastcc void @__mddev_resume(ptr noundef %0, i1 noundef zeroext true) #30, !srcloc !37
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @md_event_count, ptr elementtype(i32) @md_event_count) #28, !srcloc !28
  %i.av = call i32 @__wake_up(ptr noundef @md_event_waiters, i32 noundef 3, i32 noundef 1, ptr noundef null) #29 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %.critedge, %.thread, %bb.e, %bb.d, %bb.a, %bb.b, %bb.c, %bb.c, %bb.o, %mddev_suspend_and_lock.exit
  %.0 = phi i64 [ -75, %bb.e ], [ -22, %bb.a ], [ -22, %bb.d ], [ %i.v, %mddev_suspend_and_lock.exit ], [ %i.as, %bb.o ], [ -22, %bb.b ], [ -22, %bb.c ], [ -22, %bb.c ], [ %i.au, %.thread ], [ %2, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %.0
}

; Function Attrs: fn_ret_thunk_extern nofree noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef range(i64 -2147483648, 2147483648) i64 @safe_delay_show(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #21 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 784
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = udiv i32 %i.b, 1000
  %i.d = urem i32 %i.b, 1000
  %i.e = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef @.str.172, i32 noundef %i.c, i32 noundef %i.d) #29
  %i.f = sext i32 %i.e to i64
  ret i64 %i.f
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i64 @safe_delay_store(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1856
  %i.b = load ptr, ptr %i.a, align 8
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %mddev_is_clustered.exit.thread.preheader, label %mddev_is_clustered.exit

mddev_is_clustered.exit:                          ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 964
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp slt i32 %i.d, 2
  br i1 %i.e, label %mddev_is_clustered.exit.thread.preheader, label %bb.b

mddev_is_clustered.exit.thread.preheader:         ; preds = %bb.a, %mddev_is_clustered.exit
  br label %mddev_is_clustered.exit.thread

bb.b:                                             ; preds = %mddev_is_clustered.exit
  %i.f = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.173) #31 ; 0 uses
  br label %strict_strtoul_scaled.exit.thread

mddev_is_clustered.exit.thread:                   ; preds = %mddev_is_clustered.exit.thread.preheader, %.critedge.thread.i
  %.023.i = phi ptr [ %i.t, %.critedge.thread.i ], [ %1, %mddev_is_clustered.exit.thread.preheader ] ; 3 uses
  %.020.i = phi i64 [ %.121.i, %.critedge.thread.i ], [ 0, %mddev_is_clustered.exit.thread.preheader ] ; 4 uses
  %.0.i = phi i64 [ %.2.i, %.critedge.thread.i ], [ -1, %mddev_is_clustered.exit.thread.preheader ] ; 6 uses
  %i.g = load i8, ptr %.023.i, align 1            ; 4 uses
  %i.h = add i8 %i.g, -58
  %i.i = icmp ult i8 %i.h, -10
  br i1 %i.i, label %bb.c, label %.critedge.i
end_hunk_0
