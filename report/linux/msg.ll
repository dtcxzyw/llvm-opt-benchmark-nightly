Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/msg?download=true
inline.NumInlined: 176
inline.NumDeleted: 84
begin_hunk_0_@__se_sys_msgctl:bb.a
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %bb.d, label %msgctl_info.exit.i.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.l = getelementptr i8, ptr %i.j, i64 724
  %i.m = load i32, ptr %i.l, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.m, ptr %i.n, align 4
  %i.o = getelementptr i8, ptr %i.j, i64 716
  %i.p = load i32, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.p, ptr %i.q, align 4
  %i.r = getelementptr i8, ptr %i.j, i64 720
  %i.s = load i32, ptr %i.r, align 16
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.s, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 16, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i16 -1, ptr %i.v, align 4
  %i.w = getelementptr i8, ptr %i.j, i64 232
  %i.x = getelementptr i8, ptr %i.j, i64 240      ; 2 uses
  tail call void @down_read(ptr noundef %i.x) #12
  %i.y = icmp eq i32 %i.b, 12                     ; 2 uses
  %.pre.i.i.i = load i32, ptr %i.w, align 8       ; 4 uses
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %.pre.i.i.i, ptr %4, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = icmp eq i32 %.pre.i.i.i, 0
  br i1 %i.z, label %ipc_get_maxidx.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load i32, ptr @ipc_mni, align 4
  %i.ab = icmp eq i32 %.pre.i.i.i, %i.aa
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = add i32 %.pre.i.i.i, -1
  br label %ipc_get_maxidx.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ad = getelementptr i8, ptr %i.j, i64 296
  %i.ae = load i32, ptr %i.ad, align 8
  br label %ipc_get_maxidx.exit.i.i.i

ipc_get_maxidx.exit.i.i.i:                        ; preds = %bb.i, %bb.h, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.i ], [ %i.ac, %bb.h ], [ -1, %bb.f ]
  tail call void @up_read(ptr noundef %i.x) #12
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %ipc_get_maxidx.exit.i.i.i
  %i.af = getelementptr i8, ptr %i.j, i64 768
  %i.ag = tail call i64 @__percpu_counter_sum(ptr noundef %i.af) #12
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = getelementptr i8, ptr %i.j, i64 728
  %i.aj = tail call i64 @__percpu_counter_sum(ptr noundef %i.ai) #12
  %i.ak = trunc i64 %i.aj to i32
  br label %msgctl_info.exit.thread.i.i

bb.k:                                             ; preds = %ipc_get_maxidx.exit.i.i.i
  store i32 512000, ptr %4, align 4
  br label %msgctl_info.exit.thread.i.i

msgctl_info.exit.thread.i.i:                      ; preds = %bb.k, %bb.j
  %.sink.i.i = phi i32 [ %i.ah, %bb.j ], [ 16384, %bb.k ]
  %.sink.i.i.i = phi i32 [ %i.ak, %bb.j ], [ 16384, %bb.k ]
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %.sink.i.i, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %.sink.i.i.i, ptr %i.am, align 4
  %i.an = tail call i32 @llvm.smax.i32(i32 %.0.i.i.i.i, i32 0)
  br label %copy_to_user.exit.i.i

msgctl_info.exit.i.i:                             ; preds = %bb.c
  %i.ao = icmp slt i32 %i.k, 0
  br i1 %i.ao, label %bb.l, label %copy_to_user.exit.i.i

copy_to_user.exit.i.i:                            ; preds = %msgctl_info.exit.i.i, %msgctl_info.exit.thread.i.i
  %.0.i3842.i.i = phi i32 [ %i.an, %msgctl_info.exit.thread.i.i ], [ %i.k, %msgctl_info.exit.i.i ]
  %i.ap = call i64 @_copy_to_user(ptr noundef %i.c, ptr noundef nonnull %4, i64 noundef 32) #12
  %.fr52.i.i = freeze i64 %i.ap
  %.not36.i.i = icmp eq i64 %.fr52.i.i, 0
  %spec.select.i.i = select i1 %.not36.i.i, i32 %.0.i3842.i.i, i32 -14
  br label %bb.l

bb.l:                                             ; preds = %copy_to_user.exit.i.i, %msgctl_info.exit.i.i
  %.027.in.i.i = phi i32 [ %i.k, %msgctl_info.exit.i.i ], [ %spec.select.i.i, %copy_to_user.exit.i.i ]
  %.027.i.i = sext i32 %.027.in.i.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %__do_sys_msgctl.exit

bb.m:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.aq = call fastcc i32 @msgctl_stat(ptr noundef %i.j, i32 noundef %i.a, i32 noundef %i.b, ptr noundef nonnull %3) #14, !srcloc !31 ; 3 uses
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.n, label %copy_msqid_to_user.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.as = sext i32 %i.aq to i64
  br label %__do_sys_msgctl.exit

copy_msqid_to_user.exit.i.i:                      ; preds = %bb.m
  %i.at = call i64 @_copy_to_user(ptr noundef %i.c, ptr noundef nonnull %3, i64 noundef 120) #12
  %.fr.i.i = freeze i64 %i.at
  %.not35.i.i = icmp eq i64 %.fr.i.i, 0
  %i.au = zext nneg i32 %i.aq to i64
  %i.av = select i1 %.not35.i.i, i64 %i.au, i64 -14
  br label %__do_sys_msgctl.exit

copy_from_user.exit.i.i.i:                        ; preds = %bb.b
  %i.aw = call i64 @_copy_from_user(ptr noundef nonnull %3, ptr noundef %i.c, i64 noundef 120) #12
  %.fr.i.i.i = freeze i64 %i.aw
  %.not.i40.i.i = icmp eq i64 %.fr.i.i.i, 0
  br i1 %.not.i40.i.i, label %copy_msqid_from_user.exit.i.i, label %__do_sys_msgctl.exit

copy_msqid_from_user.exit.i.i:                    ; preds = %copy_from_user.exit.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = trunc i64 %i.ay to i32
  %i.ba = call fastcc i32 @msgctl_down(ptr noundef %i.j, i32 noundef %i.a, i32 noundef 1, ptr noundef nonnull %3, i32 noundef %i.az) #14, !srcloc !32
  %i.bb = sext i32 %i.ba to i64
  br label %__do_sys_msgctl.exit

bb.o:                                             ; preds = %bb.b
  %i.bc = tail call fastcc i32 @msgctl_down(ptr noundef %i.j, i32 noundef %i.a, i32 noundef 0, ptr noundef null, i32 noundef 0) #14, !srcloc !33
  %i.bd = sext i32 %i.bc to i64
  br label %__do_sys_msgctl.exit

__do_sys_msgctl.exit:                             ; preds = %bb.a, %bb.b, %bb.l, %bb.n, %copy_msqid_to_user.exit.i.i, %copy_from_user.exit.i.i.i, %copy_msqid_from_user.exit.i.i, %bb.o
  %.128.i.i = phi i64 [ %i.bd, %bb.o ], [ -22, %bb.b ], [ %.027.i.i, %bb.l ], [ %i.as, %bb.n ], [ %i.av, %copy_msqid_to_user.exit.i.i ], [ -22, %bb.a ], [ %i.bb, %copy_msqid_from_user.exit.i.i ], [ -14, %copy_from_user.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i64 %.128.i.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__ia32_sys_msgctl(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
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
  %i.j = tail call fastcc i64 @__se_sys_msgctl(i64 noundef %i.c, i64 noundef %i.f, i64 noundef %i.i) #14, !srcloc !34
  ret i64 %i.j
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__ia32_compat_sys_msgctl(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 4294967295
  %i.h = trunc i64 %i.b to i32
  %i.i = trunc i64 %i.d to i32
  %i.j = inttoptr i64 %i.g to ptr
  %i.k = tail call fastcc range(i64 -2147483648, 2147483648) i64 @compat_ksys_msgctl(i32 noundef %i.h, i32 noundef %i.i, ptr noundef %i.j, i32 noundef 256) #14, !srcloc !35
  ret i64 %i.k
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @compat_ksys_old_msgctl(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = and i32 %1, 256
  %i.b = and i32 %1, -257
  %i.c = tail call fastcc i64 @compat_ksys_msgctl(i32 noundef %0, i32 noundef %i.b, ptr noundef %2, i32 noundef %i.a) #14, !srcloc !16
  ret i64 %i.c
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i64 -2147483648, 2147483648) i64 @compat_ksys_msgctl(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef range(i32 0, 257) %3) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.compat_msqid64_ds, align 4  ; 13 uses
  %5 = alloca %struct.compat_msqid_ds, align 4    ; 13 uses
  %6 = alloca %struct.msqid64_ds, align 8         ; 26 uses
  %7 = alloca %struct.msginfo, align 4            ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %6, i8 0, i64 120, i1 false), !annotation !13
  %i.a = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #11, !srcloc !14
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr i8, ptr %i.b, i64 2088
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 11 uses
  %i.g = or i32 %1, %0
  %or.cond.not = icmp sgt i32 %i.g, -1
  br i1 %or.cond.not, label %bb.b, label %copy_compat_msqid_from_user.exit

bb.b:                                             ; preds = %bb.a
  %i.h = and i32 %1, -257
  switch i32 %i.h, label %copy_compat_msqid_from_user.exit [
    i32 3, label %bb.c
    i32 12, label %bb.c
    i32 2, label %bb.m
    i32 11, label %bb.m
    i32 13, label %bb.m
    i32 1, label %bb.p
    i32 0, label %bb.v
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %7, i8 0, i64 32, i1 false), !annotation !13
  %i.i = tail call i32 @security_msg_queue_msgctl(ptr noundef null, i32 noundef range(i32 0, -2147483648) %1) #12 ; 4 uses
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.d, label %msgctl_info.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.j = getelementptr i8, ptr %i.f, i64 724
  %i.k = load i32, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %i.k, ptr %i.l, align 4
  %i.m = getelementptr i8, ptr %i.f, i64 716
  %i.n = load i32, ptr %i.m, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.n, ptr %i.o, align 4
  %i.p = getelementptr i8, ptr %i.f, i64 720
  %i.q = load i32, ptr %i.p, align 16
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.q, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 16, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i16 -1, ptr %i.t, align 4
  %i.u = getelementptr i8, ptr %i.f, i64 232
  %i.v = getelementptr i8, ptr %i.f, i64 240      ; 2 uses
  tail call void @down_read(ptr noundef %i.v) #12
  %i.w = icmp eq i32 %1, 12                       ; 2 uses
  %.pre.i = load i32, ptr %i.u, align 8           ; 4 uses
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %.pre.i, ptr %7, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = icmp eq i32 %.pre.i, 0
  br i1 %i.x, label %ipc_get_maxidx.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load i32, ptr @ipc_mni, align 4
  %i.z = icmp eq i32 %.pre.i, %i.y
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = add i32 %.pre.i, -1
  br label %ipc_get_maxidx.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr i8, ptr %i.f, i64 296
  %i.ac = load i32, ptr %i.ab, align 8
  br label %ipc_get_maxidx.exit.i

ipc_get_maxidx.exit.i:                            ; preds = %bb.i, %bb.h, %bb.f
  %.0.i.i = phi i32 [ %i.ac, %bb.i ], [ %i.aa, %bb.h ], [ -1, %bb.f ]
  tail call void @up_read(ptr noundef %i.v) #12
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %ipc_get_maxidx.exit.i
  %i.ad = getelementptr i8, ptr %i.f, i64 768
  %i.ae = tail call i64 @__percpu_counter_sum(ptr noundef %i.ad) #12
  %i.af = trunc i64 %i.ae to i32
  %i.ag = getelementptr i8, ptr %i.f, i64 728
  %i.ah = tail call i64 @__percpu_counter_sum(ptr noundef %i.ag) #12
  %i.ai = trunc i64 %i.ah to i32
  br label %msgctl_info.exit.thread

bb.k:                                             ; preds = %ipc_get_maxidx.exit.i
  store i32 512000, ptr %7, align 4
  br label %msgctl_info.exit.thread

msgctl_info.exit.thread:                          ; preds = %bb.j, %bb.k
  %.sink = phi i32 [ %i.af, %bb.j ], [ 16384, %bb.k ]
  %.sink.i = phi i32 [ %i.ai, %bb.j ], [ 16384, %bb.k ]
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %.sink, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 %.sink.i, ptr %i.ak, align 4
  %i.al = tail call i32 @llvm.smax.i32(i32 %.0.i.i, i32 0)
  br label %copy_to_user.exit

msgctl_info.exit:                                 ; preds = %bb.c
  %i.am = icmp slt i32 %i.i, 0
  br i1 %i.am, label %bb.l, label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %msgctl_info.exit, %msgctl_info.exit.thread
  %.0.i3842 = phi i32 [ %i.al, %msgctl_info.exit.thread ], [ %i.i, %msgctl_info.exit ]
  %i.an = call i64 @_copy_to_user(ptr noundef %2, ptr noundef nonnull %7, i64 noundef 32) #12
  %.fr = freeze i64 %i.an
  %.not36 = icmp eq i64 %.fr, 0
  %spec.select = select i1 %.not36, i32 %.0.i3842, i32 -14
  br label %bb.l

bb.l:                                             ; preds = %copy_to_user.exit, %msgctl_info.exit
  %.027.in = phi i32 [ %i.i, %msgctl_info.exit ], [ %spec.select, %copy_to_user.exit ]
  %.027 = sext i32 %.027.in to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %copy_compat_msqid_from_user.exit

bb.m:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.ao = call fastcc i32 @msgctl_stat(ptr noundef %i.f, i32 noundef %0, i32 noundef %1, ptr noundef nonnull %6) #14, !srcloc !36 ; 3 uses
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aq = sext i32 %i.ao to i64
  br label %copy_compat_msqid_from_user.exit

bb.o:                                             ; preds = %bb.m
  %i.ar = icmp eq i32 %3, 256
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  br i1 %i.ar, label %copy_to_user.exit25.i, label %copy_to_user.exit.i

copy_to_user.exit25.i:                            ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %4, i8 0, i64 88, i1 false)
  call void @to_compat_ipc64_perm(ptr noundef nonnull %4, ptr noundef nonnull %6) #12
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i64 %i.at, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i64 %i.aw, ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 52
  store i64 %i.az, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = trunc i64 %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 60
  store i32 %i.bd, ptr %i.be, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i32 %i.bh, ptr %i.bi, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 68
  store i32 %i.bl, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.bo = load i32, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i32 %i.bo, ptr %i.bp, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 100
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 76
  store i32 %i.br, ptr %i.bs, align 4
  %i.bt = call i64 @_copy_to_user(ptr noundef %2, ptr noundef nonnull %4, i64 noundef 88) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %copy_compat_msqid_to_user.exit

copy_to_user.exit.i:                              ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  call void @to_compat_ipc_perm(ptr noundef nonnull %5, ptr noundef nonnull %6) #12
  %i.bu = load i64, ptr %i.as, align 8
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %i.bv, ptr %i.bw, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = trunc i64 %i.by to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i32 %i.bz, ptr %i.ca, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 %i.cd, ptr %i.ce, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = trunc i64 %i.cg to i16
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i16 %i.ch, ptr %i.ci, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = trunc i64 %i.ck to i16
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 46
  store i16 %i.cl, ptr %i.cm, align 2
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = trunc i64 %i.co to i16
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i16 %i.cp, ptr %i.cq, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 96
end_hunk_0
