Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/msg?download=true
inline.NumInlined: 176
inline.NumDeleted: 84
begin_hunk_0_@compat_ksys_msgctl:bb.a
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
  %i.cs = load i32, ptr %i.cr, align 8
  %i.ct = trunc i32 %i.cs to i16
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 50
  store i16 %i.ct, ptr %i.cu, align 2
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 100
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = trunc i32 %i.cw to i16
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i16 %i.cx, ptr %i.cy, align 4
  %i.cz = call i64 @_copy_to_user(ptr noundef %2, ptr noundef nonnull %5, i64 noundef 56) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %copy_compat_msqid_to_user.exit

copy_compat_msqid_to_user.exit:                   ; preds = %copy_to_user.exit25.i, %copy_to_user.exit.i
  %.0.in.i = phi i64 [ %i.bt, %copy_to_user.exit25.i ], [ %i.cz, %copy_to_user.exit.i ]
  %i.da = and i64 %.0.in.i, 4294967295
  %.not35 = icmp eq i64 %i.da, 0
  %i.db = zext nneg i32 %i.ao to i64
  %i.dc = select i1 %.not35, i64 %i.db, i64 -14
  br label %copy_compat_msqid_from_user.exit

bb.p:                                             ; preds = %bb.b
  %i.dd = icmp eq i32 %3, 256
  br i1 %i.dd, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.de = call i32 @get_compat_ipc64_perm(ptr noundef nonnull %6, ptr noundef %2) #12
  %.not27.i = icmp eq i32 %i.de, 0
  br i1 %.not27.i, label %bb.r, label %copy_compat_msqid_from_user.exit

bb.r:                                             ; preds = %bb.q
  %i.df = call i64 @llvm.read_register.i64(metadata !2)
  %i.dg = getelementptr i8, ptr %2, i64 68
  %i.dh = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %i.dg, i64 4, i64 %i.df) #10, !srcloc !37 ; 3 uses
  %i.di = extractvalue { ptr, i32, i64 } %i.dh, 0
  %i.dj = extractvalue { ptr, i32, i64 } %i.dh, 1
  %i.dk = extractvalue { ptr, i32, i64 } %i.dh, 2
  %i.dl = ptrtoint ptr %i.di to i64
  call void @llvm.write_register.i64(metadata !2, i64 %i.dk)
  %i.dm = zext i32 %i.dj to i64                   ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 88
  store i64 %i.dm, ptr %i.dn, align 8
  %sext.mask29.i = and i64 %i.dl, 4294967295
  %.not28.i = icmp eq i64 %sext.mask29.i, 0
  br i1 %.not28.i, label %bb.u, label %copy_compat_msqid_from_user.exit

bb.s:                                             ; preds = %bb.p
  %i.do = call i32 @get_compat_ipc_perm(ptr noundef nonnull %6, ptr noundef %2) #12
  %.not.i40 = icmp eq i32 %i.do, 0
  br i1 %.not.i40, label %bb.t, label %copy_compat_msqid_from_user.exit

bb.t:                                             ; preds = %bb.s
  %i.dp = call i64 @llvm.read_register.i64(metadata !2)
  %i.dq = getelementptr i8, ptr %2, i64 48
  %i.dr = call { ptr, i16, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %i.dq, i64 2, i64 %i.dp) #10, !srcloc !38 ; 3 uses
  %i.ds = extractvalue { ptr, i16, i64 } %i.dr, 0
  %i.dt = extractvalue { ptr, i16, i64 } %i.dr, 1
  %i.du = extractvalue { ptr, i16, i64 } %i.dr, 2
  %i.dv = ptrtoint ptr %i.ds to i64
  call void @llvm.write_register.i64(metadata !2, i64 %i.du)
  %i.dw = zext i16 %i.dt to i64                   ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store i64 %i.dw, ptr %i.dx, align 8
  %sext.mask.i = and i64 %i.dv, 4294967295
  %.not26.i = icmp eq i64 %sext.mask.i, 0
  br i1 %.not26.i, label %bb.u, label %copy_compat_msqid_from_user.exit

bb.u:                                             ; preds = %bb.r, %bb.t
  %i.dy = phi i64 [ %i.dm, %bb.r ], [ %i.dw, %bb.t ]
  %i.dz = trunc nuw i64 %i.dy to i32
  %i.ea = call fastcc i32 @msgctl_down(ptr noundef %i.f, i32 noundef %0, i32 noundef %1, ptr noundef nonnull %6, i32 noundef %i.dz) #14, !srcloc !39
  %i.eb = sext i32 %i.ea to i64
  br label %copy_compat_msqid_from_user.exit

bb.v:                                             ; preds = %bb.b
  %i.ec = tail call fastcc i32 @msgctl_down(ptr noundef %i.f, i32 noundef %0, i32 noundef %1, ptr noundef null, i32 noundef 0) #14, !srcloc !40
  %i.ed = sext i32 %i.ec to i64
  br label %copy_compat_msqid_from_user.exit

copy_compat_msqid_from_user.exit:                 ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.b, %bb.a, %bb.v, %bb.u, %copy_compat_msqid_to_user.exit, %bb.n, %bb.l
  %.128 = phi i64 [ %i.ed, %bb.v ], [ -22, %bb.b ], [ %.027, %bb.l ], [ %i.aq, %bb.n ], [ %i.dc, %copy_compat_msqid_to_user.exit ], [ -22, %bb.a ], [ %i.eb, %bb.u ], [ -14, %bb.q ], [ -14, %bb.r ], [ -14, %bb.s ], [ -14, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  ret i64 %.128
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__ia32_compat_sys_old_msgctl(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 4294967295
  %i.h = trunc i64 %i.b to i32
  %i.i = trunc i64 %i.d to i32                    ; 2 uses
  %i.j = inttoptr i64 %i.g to ptr
  %i.k = and i32 %i.i, 256
  %i.l = and i32 %i.i, -257
  %i.m = tail call fastcc range(i64 -2147483648, 2147483648) i64 @compat_ksys_msgctl(i32 noundef %i.h, i32 noundef %i.l, ptr noundef %i.j, i32 noundef %i.k) #14, !srcloc !16
  ret i64 %i.m
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ksys_msgsnd(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 @llvm.read_register.i64(metadata !2)
  %i.b = tail call { ptr, i64, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %1, i64 8, i64 %i.a) #10, !srcloc !17 ; 3 uses
  %i.c = extractvalue { ptr, i64, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64, i64 } %i.b, 2
  %i.e = ptrtoint ptr %i.c to i64
  tail call void @llvm.write_register.i64(metadata !2, i64 %i.d)
  %sext.mask = and i64 %i.e, 4294967295
  %.not = icmp eq i64 %sext.mask, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { ptr, i64, i64 } %i.b, 1
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = tail call fastcc i64 @do_msgsnd(i32 noundef %0, i64 noundef %i.f, ptr noundef %i.g, i64 noundef %2, i32 noundef %3) #14, !srcloc !18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.h, %bb.b ], [ -14, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #4

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i64 @do_msgsnd(i32 noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %5 = alloca %struct.wake_q_head, align 8        ; 8 uses
  %6 = alloca %struct.msg_sender, align 8         ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store ptr inttoptr (i64 1 to ptr), ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %5, ptr %i.a, align 8
  %i.b = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #11, !srcloc !14
  %i.c = inttoptr i64 %i.b to ptr                 ; 6 uses
  %i.d = getelementptr i8, ptr %i.c, i64 2088
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 6 uses
  %i.h = getelementptr i8, ptr %i.g, i64 716
  %i.i = load i32, ptr %i.h, align 4
  %i.j = zext i32 %i.i to i64
  %i.k = icmp ugt i64 %3, %i.j
  %i.l = icmp slt i32 %0, 0
  %or.cond3 = or i1 %i.l, %i.k
  %i.m = icmp slt i64 %1, 1
  %or.cond70 = or i1 %i.m, %or.cond3
  br i1 %or.cond70, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = call ptr @load_msg(ptr noundef %2, i64 noundef %3) #12 ; 13 uses
  %i.o = icmp ugt ptr %i.n, inttoptr (i64 -4096 to ptr)
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = ptrtoint ptr %i.n to i64
  br label %bb.ah

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr i8, ptr %i.n, i64 16       ; 4 uses
  store i64 %1, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %i.n, i64 24       ; 2 uses
  store i64 %3, ptr %i.r, align 8
  call void @__rcu_read_lock() #12
  %i.s = getelementptr i8, ptr %i.g, i64 232
  %i.t = call ptr @ipc_obtain_object_check(ptr noundef %i.s, i32 noundef range(i32 0, -2147483648) %0) #12 ; 25 uses
  %i.u = icmp ugt ptr %i.t, inttoptr (i64 -4096 to ptr)
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = trunc i64 %i.v to i32
  br label %bb.ae

bb.f:                                             ; preds = %bb.d
  call void @_raw_spin_lock(ptr noundef %i.t) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false), !annotation !13
  %i.x = call i32 @ipcperms(ptr noundef %i.g, ptr noundef %i.t, i16 noundef signext 146) #12
  %.not91 = icmp eq i32 %i.x, 0
  br i1 %.not91, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.f
  %i.y = getelementptr i8, ptr %i.t, i64 4        ; 2 uses
  %i.z = getelementptr i8, ptr %i.t, i64 152      ; 3 uses
  %i.aa = getelementptr i8, ptr %i.t, i64 168
  %i.ab = getelementptr i8, ptr %i.t, i64 160     ; 3 uses
  %i.ac = and i32 %4, 2048
  %.not65 = icmp eq i32 %i.ac, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.af = getelementptr i8, ptr %i.c, i64 24
  %i.ag = getelementptr i8, ptr %i.t, i64 224
  %i.ah = getelementptr i8, ptr %i.t, i64 232     ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.o
  %.val71.a = load i8, ptr %i.y, align 4, !range !19, !noundef !20
  %i.aj = trunc nuw i8 %.val71.a to i1
  br i1 %i.aj, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = call i32 @security_msg_queue_msgsnd(ptr noundef %i.t, ptr noundef %i.n, i32 noundef %4) #12 ; 2 uses
  %.not64 = icmp eq i32 %i.ak, 0
  br i1 %.not64, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.al = load i64, ptr %i.z, align 8
  %i.am = add i64 %i.al, %3
  %i.an = load i64, ptr %i.aa, align 8            ; 2 uses
  %.not.i = icmp ugt i64 %i.am, %i.an
  br i1 %.not.i, label %msg_fits_inqueue.exit.thread, label %msg_fits_inqueue.exit

msg_fits_inqueue.exit:                            ; preds = %bb.i
  %i.ao = load i64, ptr %i.ab, align 32
  %i.ap = add i64 %i.ao, 1
  %.not89 = icmp ugt i64 %i.ap, %i.an
  br i1 %.not89, label %msg_fits_inqueue.exit.thread, label %bb.p

msg_fits_inqueue.exit.thread:                     ; preds = %bb.i, %msg_fits_inqueue.exit
  br i1 %.not65, label %bb.j, label %.thread

bb.j:                                             ; preds = %msg_fits_inqueue.exit.thread
  store ptr %i.c, ptr %i.ad, align 8
  store i64 %3, ptr %i.ae, align 8
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_sched_set_state_tp, i64 8), i1 false) #10
          to label %ss_add.exit [label %bb.k], !srcloc !21

bb.k:                                             ; preds = %bb.j
  call void @__trace_set_current_state(i32 noundef 1) #12
  br label %ss_add.exit

ss_add.exit:                                      ; preds = %bb.j, %bb.k
  store volatile i32 1, ptr %i.af, align 8
  %i.aq = load ptr, ptr %i.ah, align 8            ; 2 uses
  store ptr %6, ptr %i.ah, align 8
  store ptr %i.ag, ptr %6, align 8
  store ptr %i.aq, ptr %i.ai, align 8
  store volatile ptr %6, ptr %i.aq, align 8
  %i.ar = call zeroext i1 @ipc_rcu_getref(ptr noundef %i.t) #12
  br i1 %i.ar, label %bb.l, label %.thread

bb.l:                                             ; preds = %ss_add.exit
  call void @_raw_spin_unlock(ptr noundef %i.t) #12
  call void @__rcu_read_unlock() #12
  call void @schedule() #12
  call void @__rcu_read_lock() #12
  call void @_raw_spin_lock(ptr noundef %i.t) #12
  call void @ipc_rcu_putref(ptr noundef %i.t, ptr noundef nonnull @msg_rcu_free) #12
  %.val = load i8, ptr %i.y, align 4, !range !19, !noundef !20
  %i.as = trunc nuw i8 %.val to i1
  br i1 %i.as, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = load ptr, ptr %6, align 8               ; 3 uses
  %.not.i73.a = icmp eq ptr %i.at, null
  br i1 %.not.i73.a, label %ss_del.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.av = getelementptr i8, ptr %i.at, i64 8
  store ptr %i.au, ptr %i.av, align 8
  store volatile ptr %i.at, ptr %i.au, align 8
  br label %ss_del.exit

ss_del.exit:                                      ; preds = %bb.n, %bb.m
  %i.aw = load volatile i64, ptr %i.c, align 8
  %i.ax = and i64 %i.aw, 4
  %.not.i74.a = icmp eq i64 %i.ax, 0
  br i1 %.not.i74.a, label %signal_pending.exit, label %.thread, !prof !22

signal_pending.exit:                              ; preds = %ss_del.exit
  %i.ay = load volatile i64, ptr %i.c, align 8
  %i.az = and i64 %i.ay, 2
  %.not66 = icmp eq i64 %i.az, 0
  br i1 %.not66, label %bb.o, label %.thread

.thread:                                          ; preds = %msg_fits_inqueue.exit.thread, %ss_add.exit, %bb.l, %signal_pending.exit, %bb.h, %bb.g, %bb.o, %ss_del.exit, %bb.f
  %.055.ph = phi i32 [ -13, %bb.f ], [ -43, %ss_add.exit ], [ -43, %bb.l ], [ -514, %signal_pending.exit ], [ %i.ak, %bb.h ], [ -43, %bb.g ], [ -13, %bb.o ], [ -514, %ss_del.exit ], [ -11, %msg_fits_inqueue.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.ad

bb.o:                                             ; preds = %signal_pending.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false), !annotation !13
  %i.ba = call i32 @ipcperms(ptr noundef %i.g, ptr noundef %i.t, i16 noundef signext 146) #12
  %.not = icmp eq i32 %i.ba, 0
  br i1 %.not, label %bb.g, label %.thread

bb.p:                                             ; preds = %msg_fits_inqueue.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %i.bb = getelementptr i8, ptr %i.t, i64 176     ; 2 uses
  %i.bc = getelementptr i8, ptr %i.c, i64 2096
  %.val72 = load ptr, ptr %i.bc, align 16
  %i.bd = getelementptr i8, ptr %.val72, i64 384
  %.val72.val = load ptr, ptr %i.bd, align 8      ; 6 uses
  %i.be = load ptr, ptr %i.bb, align 16           ; 2 uses
  %.not.i75 = icmp eq ptr %i.be, %.val72.val
  br i1 %.not.i75, label %ipc_update_pid.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not.i.i = icmp eq ptr %.val72.val, null
  br i1 %.not.i.i, label %get_pid.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %.val72.val, i32 1, ptr nonnull elementtype(i32) %.val72.val) #10, !srcloc !23 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %bb.s, !prof !15

bb.s:                                             ; preds = %bb.r
  %i.bg = add i32 %i.bf, 1
  %i.bh = or i32 %i.bg, %i.bf
  %.not10.i.i.i.i.i = icmp sgt i32 %i.bh, -1
  br i1 %.not10.i.i.i.i.i, label %get_pid.exit.i, label %.sink.split.i.i.i.i.i, !prof !22

.sink.split.i.i.i.i.i:                            ; preds = %bb.s, %bb.r
  %.sink.i.i.i.i.i = phi i32 [ 2, %bb.r ], [ 1, %bb.s ]
  call void @refcount_warn_saturate(ptr noundef nonnull %.val72.val, i32 noundef %.sink.i.i.i.i.i) #12
  br label %get_pid.exit.i

get_pid.exit.i:                                   ; preds = %.sink.split.i.i.i.i.i, %bb.s, %bb.q
  store ptr %.val72.val, ptr %i.bb, align 16
  call void @put_pid(ptr noundef %i.be) #12
  br label %ipc_update_pid.exit

ipc_update_pid.exit:                              ; preds = %bb.p, %get_pid.exit.i
  %i.bi = call i64 @ktime_get_real_seconds() #12
  %i.bj = getelementptr i8, ptr %i.t, i64 128
  store i64 %i.bi, ptr %i.bj, align 64
  %i.bk = getelementptr i8, ptr %i.t, i64 208     ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 16           ; 2 uses
  %.not42.i = icmp eq ptr %i.bl, %i.bk
  br i1 %.not42.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %ipc_update_pid.exit, %testmsg.exit.i
  %.03343.i = phi ptr [ %.03444.i, %testmsg.exit.i ], [ %i.bl, %ipc_update_pid.exit ] ; 10 uses
  %.03444.i = load ptr, ptr %.03343.i, align 8    ; 2 uses
  %i.bm = getelementptr i8, ptr %.03343.i, i64 32
  %i.bn = load i64, ptr %i.bm, align 8            ; 4 uses
  %i.bo = getelementptr i8, ptr %.03343.i, i64 24
  %i.bp = load i32, ptr %i.bo, align 8            ; 2 uses
  switch i32 %i.bp, label %testmsg.exit.i [
    i32 1, label %bb.w
end_hunk_0
