Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/hidraw?download=true
inline.NumInlined: 71
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@hidraw_write:bb.a

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.e, %bb.b ], [ -19, %bb.a ]
  tail call void @up_read(ptr noundef @minors_rwsem) #13
  ret i64 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 260, 350) i32 @hidraw_poll(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr i8, ptr %i.b, i64 1040     ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %poll_wait.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %.not7.i = icmp eq ptr %i.f, null
  br i1 %.not7.i, label %poll_wait.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.f(ptr noundef %0, ptr noundef %i.e, ptr noundef nonnull %1) #13, !inline_history !31
  tail call void asm sideeffect "lock addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !32
  %.pre = load ptr, ptr %i.c, align 8
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %bb.a, %bb.b, %bb.c
  %i.g = phi ptr [ %i.d, %bb.a ], [ %i.d, %bb.b ], [ %.pre, %bb.c ]
  %i.h = getelementptr i8, ptr %i.b, i64 1024
  %i.i = load i32, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.b, i64 1028
  %i.k = load i32, ptr %i.j, align 4
  %.not = icmp eq i32 %i.i, %i.k
  %spec.select = select i1 %.not, i32 260, i32 325 ; 2 uses
  %i.l = getelementptr i8, ptr %i.g, i64 4
  %i.m = load i32, ptr %i.l, align 4
  %.not10 = icmp eq i32 %i.m, 0
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %poll_wait.exit
  %i.n = getelementptr i8, ptr %i.b, i64 1088
  %.val = load i8, ptr %i.n, align 8, !range !12, !noundef !13
  %i.o = trunc nuw i8 %.val to i1
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %poll_wait.exit
  %i.p = or disjoint i32 %spec.select, 24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1 = phi i32 [ %i.p, %bb.e ], [ %spec.select, %bb.d ]
  ret i32 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -2147483648, 2147483648) i64 @hidraw_ioctl(ptr noundef %0, i32 noundef %1, i64 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.hidraw_devinfo, align 4     ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 32
  %.val31 = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %.val31, i64 76
  %.val30 = load i32, ptr %i.b, align 4
  %i.c = and i32 %.val30, 1048575
  %i.d = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = inttoptr i64 %2 to ptr                   ; 6 uses
  tail call void @down_read(ptr noundef @minors_rwsem) #13
  %i.g = zext nneg i32 %i.c to i64
  %i.h = getelementptr [8 x i8], ptr @hidraw_table, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %hidraw_fixed_size_ioctl.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4
  %.not27 = icmp eq i32 %i.k, 0
  br i1 %.not27, label %hidraw_fixed_size_ioctl.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.e, i64 1088
  %.val = load i8, ptr %i.l, align 8, !range !12, !noundef !13
  %i.m = trunc nuw i8 %.val to i1
  br i1 %i.m, label %hidraw_fixed_size_ioctl.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = and i32 %1, 65280
  %.not28 = icmp eq i32 %i.n, 18432
  br i1 %.not28, label %bb.e, label %hidraw_fixed_size_ioctl.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.o = and i32 %1, 255
  %i.p = add nsw i32 %i.o, -14
  %or.cond = icmp ult i32 %i.p, -13
  br i1 %or.cond, label %hidraw_fixed_size_ioctl.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %i.i, i64 40
  %.val32 = load ptr, ptr %i.q, align 8           ; 7 uses
  switch i32 %1, label %bb.n [
    i32 -2147203071, label %bb.g
    i32 -1878767614, label %bb.h
    i32 -2146940925, label %copy_to_user.exit.i
    i32 1074022413, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %.val32, i64 32
  %i.s = load i32, ptr %i.r, align 8
  %i.t = tail call i64 @llvm.read_register.i64(metadata !1)
  %i.u = tail call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %i.f, i32 %i.s, i64 4, i64 %i.t) #17, !srcloc !33 ; 2 uses
  %i.v = extractvalue { ptr, i64 } %i.u, 0
  %i.w = extractvalue { ptr, i64 } %i.u, 1
  %i.x = ptrtoint ptr %i.v to i64
  tail call void @llvm.write_register.i64(metadata !1, i64 %i.w)
  %.mask44.i = and i64 %i.x, 4294967295
  %.not43.i = icmp eq i64 %.mask44.i, 0
  br i1 %.not43.i, label %bb.m, label %hidraw_fixed_size_ioctl.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.y = tail call i64 @llvm.read_register.i64(metadata !1)
  %i.z = tail call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %i.f, i64 4, i64 %i.y) #17, !srcloc !34 ; 3 uses
  %i.aa = extractvalue { ptr, i32, i64 } %i.z, 0
  %i.ab = extractvalue { ptr, i32, i64 } %i.z, 1  ; 2 uses
  %i.ac = extractvalue { ptr, i32, i64 } %i.z, 2
  %i.ad = ptrtoint ptr %i.aa to i64
  tail call void @llvm.write_register.i64(metadata !1, i64 %i.ac)
  %.mask.i = and i64 %i.ad, 4294967295
  %.not41.i = icmp eq i64 %.mask.i, 0
  br i1 %.not41.i, label %bb.i, label %hidraw_fixed_size_ioctl.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ae = icmp ugt i32 %i.ab, 4095
  br i1 %i.ae, label %hidraw_fixed_size_ioctl.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr i8, ptr %.val32, i64 32
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = tail call i32 @llvm.umin.i32(i32 %i.ag, i32 %i.ab)
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr i8, ptr %.val32, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr i8, ptr %i.f, i64 4
  %i.am = tail call i64 @_copy_to_user(ptr noundef %i.al, ptr noundef %i.ak, i64 noundef range(i64 -2147483648, 4294967296) %i.ai) #13
  %.not42.i = icmp eq i64 %i.am, 0
  br i1 %.not42.i, label %bb.m, label %hidraw_fixed_size_ioctl.exit.thread

copy_to_user.exit.i:                              ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.an = getelementptr i8, ptr %.val32, i64 56
  %i.ao = load i16, ptr %i.an, align 8
  %i.ap = zext i16 %i.ao to i32
  store i32 %i.ap, ptr %3, align 4
  %i.aq = getelementptr i8, ptr %.val32, i64 60
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = trunc i32 %i.ar to i16
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i16 %i.as, ptr %i.at, align 4
  %i.au = getelementptr i8, ptr %.val32, i64 64
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = trunc i32 %i.av to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 6
  store i16 %i.aw, ptr %i.ax, align 2
  %i.ay = call i64 @_copy_to_user(ptr noundef %i.f, ptr noundef nonnull %3, i64 noundef 8) #13
  %.not40.i = icmp eq i64 %i.ay, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br i1 %.not40.i, label %bb.m, label %hidraw_fixed_size_ioctl.exit.thread

bb.k:                                             ; preds = %bb.f
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %bb.l, label %hidraw_fixed_size_ioctl.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.az = load ptr, ptr %i.d, align 8
  %i.ba = getelementptr i8, ptr %i.az, i64 1088
  store i8 1, ptr %i.ba, align 8
  br label %hidraw_fixed_size_ioctl.exit.thread

bb.m:                                             ; preds = %copy_to_user.exit.i, %bb.j, %bb.g
  br label %hidraw_fixed_size_ioctl.exit.thread

bb.n:                                             ; preds = %bb.f
  %i.bb = lshr i32 %1, 30
  switch i32 %i.bb, label %hidraw_fixed_size_ioctl.exit.thread [
    i32 3, label %bb.o
    i32 2, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.bc = tail call fastcc i64 @hidraw_rw_variable_size_ioctl(ptr noundef %0, i32 noundef %1, ptr noundef %i.f) #16
  br label %hidraw_fixed_size_ioctl.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.bd = tail call fastcc i64 @hidraw_ro_variable_size_ioctl(ptr %.val32, i32 noundef %1, ptr noundef %i.f) #16
  br label %hidraw_fixed_size_ioctl.exit.thread

hidraw_fixed_size_ioctl.exit.thread:              ; preds = %bb.h, %bb.i, %bb.l, %copy_to_user.exit.i, %bb.j, %bb.m, %bb.g, %bb.k, %bb.n, %bb.e, %bb.d, %bb.a, %bb.b, %bb.c, %bb.o, %bb.p
  %.0 = phi i64 [ %i.bd, %bb.p ], [ -19, %bb.a ], [ -22, %bb.d ], [ -22, %bb.n ], [ -25, %bb.e ], [ %i.bc, %bb.o ], [ -19, %bb.c ], [ -19, %bb.b ], [ -14, %bb.h ], [ -22, %bb.k ], [ -22, %bb.i ], [ -14, %bb.g ], [ 0, %bb.l ], [ -14, %copy_to_user.exit.i ], [ -14, %bb.j ], [ 0, %bb.m ]
  call void @up_read(ptr noundef @minors_rwsem) #13
  ret i64 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @compat_ptr_ioctl(ptr noundef, i32 noundef, i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hidraw_open(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 76
  %.val = load i32, ptr %i.a, align 4
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 88), align 8
  %i.c = tail call noalias align 8 dereferenceable_or_null(1096) ptr @__kmalloc_cache_noprof(ptr noundef %i.b, i32 noundef 3520, i64 noundef range(i64 2, 16384) 1096) #15 ; 7 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %.val, 1048575
  tail call void @down_write(ptr noundef @minors_rwsem) #13
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr [8 x i8], ptr @hidraw_table, i64 %i.e ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 5 uses
  %.not35 = icmp eq ptr %i.g, null
  br i1 %.not35, label %.thread43, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %.not36 = icmp eq i32 %i.i, 0
  br i1 %.not36, label %.thread43, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.g, i64 8        ; 4 uses
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8
  %.not37 = icmp eq i32 %i.k, 0
  br i1 %.not37, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.g, i64 40       ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = getelementptr i8, ptr %i.n, i64 7120
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %hid_hw_power.exit.thread, label %hid_hw_power.exit

hid_hw_power.exit:                                ; preds = %bb.e
  %i.s = tail call i32 %i.r(ptr noundef %i.n, i32 noundef 32) #13, !inline_history !0 ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %.thread43.sink.split, label %hid_hw_power.exit.hid_hw_power.exit.thread_crit_edge

hid_hw_power.exit.hid_hw_power.exit.thread_crit_edge: ; preds = %hid_hw_power.exit
  %.pre = load ptr, ptr %i.m, align 8
  br label %hid_hw_power.exit.thread

hid_hw_power.exit.thread:                         ; preds = %hid_hw_power.exit.hid_hw_power.exit.thread_crit_edge, %bb.e
  %i.u = phi ptr [ %.pre, %hid_hw_power.exit.hid_hw_power.exit.thread_crit_edge ], [ %i.n, %bb.e ]
  %i.v = tail call i32 @hid_hw_open(ptr noundef %i.u) #13 ; 4 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.f, label %hid_hw_power.exit.thread._crit_edge

hid_hw_power.exit.thread._crit_edge:              ; preds = %hid_hw_power.exit.thread
  %.pre45 = load ptr, ptr %i.f, align 8
  br label %bb.h

bb.f:                                             ; preds = %hid_hw_power.exit.thread
  %i.x = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 7120
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not.i38 = icmp eq ptr %i.ab, null
  br i1 %.not.i38, label %.thread43.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = tail call i32 %i.ab(ptr noundef %i.x, i32 noundef 2) #13, !inline_history !0 ; 0 uses
  br label %.thread43.sink.split

.thread43.sink.split:                             ; preds = %bb.g, %bb.f, %hid_hw_power.exit
  %.1.ph.ph = phi i32 [ %i.s, %hid_hw_power.exit ], [ %i.v, %bb.f ], [ %i.v, %bb.g ]
  %i.ad = load i32, ptr %i.j, align 8
  %i.ae = add i32 %i.ad, -1
  store i32 %i.ae, ptr %i.j, align 8
  br label %.thread43

.thread43:                                        ; preds = %.thread43.sink.split, %bb.c, %bb.b
  %.1.ph = phi i32 [ -19, %bb.b ], [ -19, %bb.c ], [ %.1.ph.ph, %.thread43.sink.split ]
  tail call void @up_write(ptr noundef @minors_rwsem) #13
  br label %.thread

bb.h:                                             ; preds = %hid_hw_power.exit.thread._crit_edge, %bb.d
  %i.af = phi ptr [ %i.g, %bb.d ], [ %.pre45, %hid_hw_power.exit.thread._crit_edge ]
  %.0 = phi i32 [ 0, %bb.d ], [ %i.v, %hid_hw_power.exit.thread._crit_edge ]
  %i.ag = getelementptr i8, ptr %i.c, i64 1040
  store ptr %i.af, ptr %i.ag, align 8
  %i.ah = getelementptr i8, ptr %i.c, i64 1064
  tail call void @mutex_init_generic(ptr noundef %i.ah) #13
  %i.ai = load ptr, ptr %i.f, align 8
  %i.aj = getelementptr i8, ptr %i.ai, i64 56
  %i.ak = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.aj) #13
  %i.al = getelementptr i8, ptr %i.c, i64 1048    ; 3 uses
  %i.am = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.an = getelementptr i8, ptr %i.am, i64 64
  %i.ao = getelementptr i8, ptr %i.am, i64 72     ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  store ptr %i.al, ptr %i.ao, align 8
  store ptr %i.an, ptr %i.al, align 8
  %i.aq = getelementptr i8, ptr %i.c, i64 1056
  store ptr %i.ap, ptr %i.aq, align 8
  store volatile ptr %i.al, ptr %i.ap, align 8
  %i.ar = getelementptr i8, ptr %i.am, i64 56
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.ar, i64 noundef %i.ak) #13
  %i.as = getelementptr i8, ptr %1, i64 24
  store ptr %i.c, ptr %i.as, align 8
  tail call void @up_write(ptr noundef @minors_rwsem) #13
  br label %bb.i

.thread:                                          ; preds = %bb.a, %.thread43
  %.242 = phi i32 [ %.1.ph, %.thread43 ], [ -12, %bb.a ]
  tail call void @kfree(ptr noundef %i.c) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread
  %.241 = phi i32 [ %.242, %.thread ], [ %.0, %bb.h ]
  ret i32 %.241
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @hidraw_release(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 76
  %.val = load i32, ptr %i.a, align 4
  %i.b = and i32 %.val, 1048575
  %i.c = getelementptr i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 7 uses
  tail call void @down_write(ptr noundef @minors_rwsem) #13
  %i.e = zext nneg i32 %i.b to i64
  %i.f = getelementptr [8 x i8], ptr @hidraw_table, i64 %i.e ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 56
  %i.i = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.h) #13
  %i.j = getelementptr i8, ptr %i.d, i64 1028     ; 4 uses
  %i.k = getelementptr i8, ptr %i.d, i64 1024     ; 2 uses
  %i.l = load i32, ptr %i.j, align 4              ; 2 uses
  %i.m = load i32, ptr %i.k, align 8
  %.not15 = icmp eq i32 %i.l, %i.m
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.n = phi i32 [ %i.w, %.lr.ph ], [ %i.l, %bb.a ]
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr [16 x i8], ptr %i.d, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8
  tail call void @kfree(ptr noundef %i.q) #13
  %i.r = load i32, ptr %i.j, align 4
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr [16 x i8], ptr %i.d, i64 %i.s
  store ptr null, ptr %i.t, align 8
  %i.u = load i32, ptr %i.j, align 4
  %i.v = add i32 %i.u, 1
  %i.w = and i32 %i.v, 63                         ; 3 uses
  store i32 %i.w, ptr %i.j, align 4
  %i.x = load i32, ptr %i.k, align 8
  %.not = icmp eq i32 %i.w, %i.x
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !35

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.y = getelementptr i8, ptr %i.d, i64 1048     ; 2 uses
  %i.z = getelementptr i8, ptr %i.d, i64 1056     ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  store ptr %i.aa, ptr %i.ac, align 8
  store volatile ptr %i.ab, ptr %i.aa, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %i.y, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.z, align 8
  %i.ad = load ptr, ptr %i.f, align 8
  %i.ae = getelementptr i8, ptr %i.ad, i64 56
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.ae, i64 noundef %i.i) #13
  tail call void @kfree(ptr noundef %i.d) #13
  %i.af = load ptr, ptr %i.f, align 8             ; 5 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 8      ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = add i32 %i.ah, -1                       ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 8
  %.not13.i = icmp eq i32 %i.ai, 0
  br i1 %.not13.i, label %bb.b, label %drop_ref.exit

bb.b:                                             ; preds = %._crit_edge
  %i.aj = getelementptr i8, ptr %i.af, i64 4
  %i.ak = load i32, ptr %i.aj, align 4
  %.not14.i = icmp eq i32 %i.ak, 0
  br i1 %.not14.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.al = load i32, ptr %i.af, align 8
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr [8 x i8], ptr @hidraw_table, i64 %i.am
end_hunk_0
