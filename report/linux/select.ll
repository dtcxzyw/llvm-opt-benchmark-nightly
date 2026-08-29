Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/select?download=true
inline.NumInlined: 155
inline.NumDeleted: 78
begin_hunk_0_@do_sys_poll:bb.a
  %.not.i75.i = icmp eq i64 %i.cs, 0
  br i1 %.not.i75.i, label %signal_pending.exit.i, label %do_poll.exit, !prof !25

signal_pending.exit.i:                            ; preds = %test_tsk_thread_flag.exit.i.i
  %i.ct = load volatile i64, ptr %i.e, align 16
  %.in.i.i.in.in.i.i.fr.i = freeze i64 %i.ct
  %i.cu = and i64 %.in.i.i.in.in.i.i.fr.i, 2
  %.not69.i = icmp eq i64 %i.cu, 0
  br i1 %.not69.i, label %bb.s, label %do_poll.exit

bb.s:                                             ; preds = %signal_pending.exit.i
  %i.cv = icmp ne i32 %i.cq, 0
  %or.cond3.i112 = select i1 %i.cv, i1 true, i1 %.156.i
  br i1 %or.cond3.i112, label %do_poll.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %.183.lcssa.i, label %bb.u, label %busy_loop_timeout.exit.thread.i

bb.u:                                             ; preds = %bb.t
  %i.cw = load volatile i64, ptr %i.e, align 16
  %i.cx = and i64 %i.cw, 16
  %.not116.i = icmp eq i64 %i.cx, 0
  br i1 %.not116.i, label %bb.v, label %busy_loop_timeout.exit.thread.i

bb.v:                                             ; preds = %bb.u
  br i1 %.not70.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cy = call i64 @ktime_get() #13
  %i.cz = lshr i64 %i.cy, 10
  br label %.outer201

bb.x:                                             ; preds = %bb.v
  %i.da = load volatile i32, ptr @sysctl_net_busy_poll, align 4 ; 2 uses
  %.not.i77.i = icmp eq i32 %i.da, 0
  br i1 %.not.i77.i, label %busy_loop_timeout.exit.thread.i, label %busy_loop_timeout.exit.i

busy_loop_timeout.exit.i:                         ; preds = %bb.x
  %i.db = zext i32 %i.da to i64
  %i.dc = add nuw nsw i64 %.046.i.ph204, %i.db
  %i.dd = call i64 @ktime_get() #13
  %i.de = lshr i64 %i.dd, 10
  %i.df = icmp samesign ult i64 %i.dc, %i.de
  br i1 %i.df, label %busy_loop_timeout.exit.thread.i, label %bb.l

busy_loop_timeout.exit.thread.i:                  ; preds = %busy_loop_timeout.exit.i, %bb.x, %bb.u, %bb.t
  %i.dg = icmp ne ptr %.059.i.ph, null
  %or.cond5.i = select i1 %.not.i110, i1 true, i1 %i.dg
  br i1 %or.cond5.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %busy_loop_timeout.exit.thread.i
  %i.dh = load i64, ptr %2, align 8               ; 2 uses
  %i.di = load i64, ptr %i.bi, align 8
  %i.dj = icmp sgt i64 %i.dh, 9223372035
  %i.dk = mul i64 %i.dh, 1000000000
  %i.dl = add i64 %i.dk, %i.di
  %.0.i.i79.i = select i1 %i.dj, i64 9223372036854775807, i64 %i.dl, !prof !14
  store i64 %.0.i.i79.i, ptr %i.a, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %busy_loop_timeout.exit.thread.i
  %.160.i = phi ptr [ %.059.i.ph, %busy_loop_timeout.exit.thread.i ], [ %i.a, %bb.y ] ; 2 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_sched_set_state_tp, i64 8), i1 false) #11
          to label %arch_static_branch.exit22.i.i [label %bb.aa], !srcloc !35

bb.aa:                                            ; preds = %bb.z
  call void @__trace_set_current_state(i32 noundef 1) #13
  br label %arch_static_branch.exit22.i.i

arch_static_branch.exit22.i.i:                    ; preds = %bb.aa, %bb.z
  %i.dm = call i32 asm sideeffect "xchgl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bj, i32 1, ptr elementtype(i32) %i.bj) #11, !srcloc !36 ; 0 uses
  %i.dn = load volatile i32, ptr %i.ae, align 8
  %.not.i80.i = icmp eq i32 %i.dn, 0
  br i1 %.not.i80.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %arch_static_branch.exit22.i.i
  %i.do = call i32 @schedule_hrtimeout_range(ptr noundef %.160.i, i64 noundef %.049.i, i32 noundef 0) #13
  %i.dp = icmp eq i32 %i.do, 0
  %i.dq = zext i1 %i.dp to i32
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %arch_static_branch.exit22.i.i
  %.0.i81.i = phi i32 [ 0, %arch_static_branch.exit22.i.i ], [ %i.dq, %bb.ab ]
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_sched_set_state_tp, i64 8), i1 false) #11
          to label %poll_schedule_timeout.exit.i [label %bb.ad], !srcloc !35

bb.ad:                                            ; preds = %bb.ac
  call void @__trace_set_current_state(i32 noundef 0) #13
  br label %poll_schedule_timeout.exit.i

poll_schedule_timeout.exit.i:                     ; preds = %bb.ad, %bb.ac
  store volatile i32 0, ptr %i.bj, align 8
  %i.dr = call i32 asm sideeffect "xchgl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.ae, i32 0, ptr nonnull elementtype(i32) %i.ae) #11, !srcloc !37 ; 0 uses
  br label %.outer

do_poll.exit:                                     ; preds = %._crit_edge132.i, %test_tsk_thread_flag.exit.i.i, %signal_pending.exit.i, %bb.s
  %.454104.ph.i = phi i32 [ %i.cq, %bb.s ], [ %.252.lcssa.i, %._crit_edge132.i ], [ -514, %signal_pending.exit.i ], [ -514, %test_tsk_thread_flag.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @poll_freewait(ptr noundef nonnull %5) #16
  %i.ds = call i64 asm "mov $1,$0\0A1:\0A.pushsection runtime_ptr_USER_PTR_MAX,\22a\22\0A\09.long 1b - ${2:c} - .\0A.popsection", "=r,i,i,~{dirflag},~{fpsr},~{flags}"(i64 81985529216486895, i64 8) #12, !srcloc !42
  %i.dt = call ptr asm "cmp $1,$0\0A\09cmova $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ds, ptr readnone %0) #12, !srcloc !43
  call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09stac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !26
  br label %bb.ae

.loopexit129:                                     ; preds = %._crit_edge153
  call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09clac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !28
  br label %copy_from_user.exit.thread

bb.ae:                                            ; preds = %do_poll.exit, %._crit_edge153
  %.084155 = phi ptr [ %i.dt, %do_poll.exit ], [ %.1.lcssa, %._crit_edge153 ] ; 2 uses
  %.187154 = phi ptr [ %i.b, %do_poll.exit ], [ %i.ed, %._crit_edge153 ] ; 3 uses
  %i.du = getelementptr i8, ptr %.187154, i64 8
  %i.dv = load i32, ptr %i.du, align 8            ; 2 uses
  %.not103147 = icmp eq i32 %i.dv, 0
  br i1 %.not103147, label %._crit_edge153, label %.lr.ph152.preheader

.lr.ph152.preheader:                              ; preds = %bb.ae
  %i.dw = getelementptr i8, ptr %.187154, i64 12
  br label %.lr.ph152

.lr.ph152:                                        ; preds = %.lr.ph152.preheader, %bb.af
  %.082150 = phi i32 [ %i.ec, %bb.af ], [ %i.dv, %.lr.ph152.preheader ]
  %.083149 = phi ptr [ %i.ea, %bb.af ], [ %i.dw, %.lr.ph152.preheader ] ; 2 uses
  %.1148 = phi ptr [ %i.eb, %bb.af ], [ %.084155, %.lr.ph152.preheader ] ; 2 uses
  %i.dx = getelementptr i8, ptr %.083149, i64 6
  %i.dy = load i16, ptr %i.dx, align 2
  %i.dz = getelementptr i8, ptr %.1148, i64 6
  callbr void asm sideeffect "\0A1:\09movw $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "ir,*m,!i,~{dirflag},~{fpsr},~{flags}"(i16 %i.dy, ptr elementtype(%struct.__large_struct) %i.dz) #11
          to label %bb.af [label %bb.ag], !srcloc !71

bb.af:                                            ; preds = %.lr.ph152
  %i.ea = getelementptr i8, ptr %.083149, i64 8
  %i.eb = getelementptr i8, ptr %.1148, i64 8     ; 2 uses
  %i.ec = add i32 %.082150, -1                    ; 2 uses
  %.not103 = icmp eq i32 %i.ec, 0
  br i1 %.not103, label %._crit_edge153, label %.lr.ph152, !llvm.loop !72

._crit_edge153:                                   ; preds = %bb.af, %bb.ae
  %.1.lcssa = phi ptr [ %.084155, %bb.ae ], [ %i.eb, %bb.af ]
  %i.ed = load ptr, ptr %.187154, align 8         ; 2 uses
  %.not102 = icmp eq ptr %i.ed, null
  br i1 %.not102, label %.loopexit129, label %bb.ae, !llvm.loop !73

bb.ag:                                            ; preds = %.lr.ph152
  call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09clac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !28
  br label %copy_from_user.exit.thread

copy_from_user.exit.thread:                       ; preds = %copy_from_user.exit, %.loopexit129, %bb.ag, %.critedge
  %.085 = phi i32 [ %.454104.ph.i, %.loopexit129 ], [ -12, %.critedge ], [ -14, %bb.ag ], [ -14, %copy_from_user.exit ] ; 2 uses
  %i.ee = load ptr, ptr %i.b, align 16            ; 2 uses
  %.not104156 = icmp eq ptr %i.ee, null
  br i1 %.not104156, label %.loopexit, label %.lr.ph158

.lr.ph158:                                        ; preds = %copy_from_user.exit.thread, %.lr.ph158
  %.2157 = phi ptr [ %i.ef, %.lr.ph158 ], [ %i.ee, %copy_from_user.exit.thread ] ; 2 uses
  %i.ef = load ptr, ptr %.2157, align 8           ; 2 uses
  call void @kfree(ptr noundef nonnull %.2157) #13
  %.not104 = icmp eq ptr %i.ef, null
  br i1 %.not104, label %.loopexit, label %.lr.ph158, !llvm.loop !74

.loopexit:                                        ; preds = %.lr.ph158, %copy_from_user.exit.thread, %bb.a
  %.0 = phi i32 [ -22, %bb.a ], [ %.085, %copy_from_user.exit.thread ], [ %.085, %.lr.ph158 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -2147483648, 2147483648) i64 @do_restart_poll(ptr nofree noundef captures(address_is_null) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4
  %.not = icmp eq i32 %i.f, 0
  %i.g = getelementptr i8, ptr %0, i64 32
  %spec.select = select i1 %.not, ptr null, ptr %i.g
  %i.h = tail call fastcc i32 @do_sys_poll(ptr noundef %i.b, i32 noundef %i.d, ptr noundef %spec.select) #16, !srcloc !75 ; 2 uses
  %i.i = icmp eq i32 %i.h, -514
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %0, i64 8
  store ptr @do_restart_poll, ptr %i.j, align 8
  %i.k = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #12, !inline_history !76, !srcloc !12
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr i8, ptr %i.l, i64 16
  %i.n = load i32, ptr %i.m, align 8
  %i.o = zext i32 %i.n to i64
  store i64 %i.o, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -516, %bb.b ], [ %i.h, %bb.a ]
  %i.p = sext i32 %.0 to i64
  ret i64 %i.p
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noundef i32 @do_compat_select(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %5 = alloca %struct.timespec64, align 8         ; 11 uses
  %6 = alloca %struct.old_timeval32, align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  store i64 0, ptr %6, align 8, !annotation !11
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %poll_select_set_timeout.exit.thread, label %copy_from_user.exit

copy_from_user.exit:                              ; preds = %bb.a
  %i.a = call i64 @_copy_from_user(ptr noundef nonnull %6, ptr noundef nonnull %4, i64 noundef 8) #13
  %.not12 = icmp eq i64 %i.a, 0
  br i1 %.not12, label %bb.b, label %poll_select_set_timeout.exit

bb.b:                                             ; preds = %copy_from_user.exit
  %i.b = load i32, ptr %6, align 8
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = sdiv i32 %i.e, 1000000
  %.sext = sext i32 %i.f to i64
  %i.g = add nsw i64 %.sext, %i.c                 ; 3 uses
  %i.h = srem i32 %i.e, 1000000
  %narrow = mul nsw i32 %i.h, 1000                ; 2 uses
  %i.i = sext i32 %narrow to i64                  ; 2 uses
  %i.j = icmp sgt i64 %i.g, -1
  %i.k = icmp ult i32 %narrow, 1000000000
  %.0.i.i = and i1 %i.k, %i.j
  br i1 %.0.i.i, label %bb.c, label %poll_select_set_timeout.exit

bb.c:                                             ; preds = %bb.b
  %i.l = or i64 %i.g, %i.i
  %or.cond.not.i = icmp eq i64 %i.l, 0
  br i1 %or.cond.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  br label %poll_select_set_timeout.exit.thread

bb.e:                                             ; preds = %bb.c
  call void @ktime_get_ts64(ptr noundef nonnull %5) #13
  %i.m = load i64, ptr %5, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = call { i64, i64 } @timespec64_add_safe(i64 %i.m, i64 %i.o, i64 %i.g, i64 %i.i) #13 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = extractvalue { i64, i64 } %i.p, 1
  store i64 %i.q, ptr %5, align 8
  store i64 %i.r, ptr %i.n, align 8
  br label %poll_select_set_timeout.exit.thread

poll_select_set_timeout.exit.thread:              ; preds = %bb.d, %bb.e, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %5, %bb.e ], [ %5, %bb.d ]
  %i.s = call fastcc i32 @compat_core_sys_select(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %.0) #16, !srcloc !77
  %i.t = call fastcc i32 @poll_select_finish(ptr noundef nonnull %5, ptr noundef %4, i32 noundef 1, i32 noundef %i.s) #16, !srcloc !78
  br label %poll_select_set_timeout.exit

poll_select_set_timeout.exit:                     ; preds = %bb.b, %copy_from_user.exit, %poll_select_set_timeout.exit.thread
  %.010 = phi i32 [ %i.t, %poll_select_set_timeout.exit.thread ], [ -14, %copy_from_user.exit ], [ -22, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret i32 %.010
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @compat_core_sys_select(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %5 = alloca %struct.fd_set_bits, align 8        ; 9 uses
  %i.a = alloca [32 x i64], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = icmp slt i32 %0, 0
  br i1 %i.b, label %_kmalloc_array_noprof.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false), !annotation !11
  tail call void @__rcu_read_lock() #13
  %i.c = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #12, !srcloc !12
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 2064
  %i.f = load ptr, ptr %i.e, align 16
  %i.g = getelementptr i8, ptr %i.f, i64 32
  %i.h = load volatile ptr, ptr %i.g, align 32
  %i.i = load i32, ptr %i.h, align 8
  tail call void @__rcu_read_unlock() #13
  %spec.select = tail call i32 @llvm.smin.i32(i32 %0, i32 %i.i) ; 2 uses
  %i.j = sext i32 %spec.select to i64             ; 7 uses
  %i.k = add nsw i64 %i.j, 63
  %i.l = lshr i64 %i.k, 3                         ; 5 uses
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %i.n = and i32 %i.m, -8                         ; 6 uses
  %i.o = sext i32 %i.n to i64                     ; 2 uses
  %i.p = icmp ugt i32 %i.n, 42
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %6 = icmp slt i32 %i.m, 0
  br i1 %6, label %_kmalloc_array_noprof.exit.thread, label %_kmalloc_array_noprof.exit, !prof !14

_kmalloc_array_noprof.exit:                       ; preds = %bb.c
  %7 = mul nuw nsw i64 %i.o, 6
  %i.q = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 -12884901888, 34359738377) %7, i32 noundef 3264) #15 ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %_kmalloc_array_noprof.exit.thread, label %bb.d

bb.d:                                             ; preds = %_kmalloc_array_noprof.exit, %bb.b
  %.048 = phi ptr [ %i.q, %_kmalloc_array_noprof.exit ], [ %i.a, %bb.b ] ; 10 uses
  store ptr %.048, ptr %5, align 8
  %i.r = getelementptr i8, ptr %.048, i64 %i.o    ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.r, ptr %i.s, align 8
  %i.t = shl i32 %i.n, 1
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr i8, ptr %.048, i64 %i.u    ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.v, ptr %i.w, align 8
  %i.x = mul i32 %i.n, 3
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr i8, ptr %.048, i64 %i.y    ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = shl i32 %i.n, 2
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr i8, ptr %.048, i64 %i.ac  ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.ad, ptr %i.ae, align 8
  %i.af = mul i32 %i.n, 5
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr i8, ptr %.048, i64 %i.ag  ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.ah, ptr %i.ai, align 8
  %.not.i = icmp eq ptr %1, null                  ; 2 uses
  br i1 %.not.i, label %compat_get_fd_set.exit.thread, label %compat_get_fd_set.exit

compat_get_fd_set.exit.thread:                    ; preds = %bb.d
  %i.aj = and i64 %i.l, 2305843009213693944
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.048, i8 0, i64 %i.aj, i1 false)
  br label %bb.e

compat_get_fd_set.exit:                           ; preds = %bb.d
  %i.ak = call i64 @compat_get_bitmap(ptr noundef nonnull %.048, ptr noundef nonnull %1, i64 noundef range(i64 -2147483648, 2147483648) %i.j) #13
  %i.al = trunc i64 %i.ak to i32                  ; 2 uses
  %.not59 = icmp eq i32 %i.al, 0
  br i1 %.not59, label %bb.e, label %signal_pending.exit.thread

bb.e:                                             ; preds = %compat_get_fd_set.exit.thread, %compat_get_fd_set.exit
  %.not.i69 = icmp eq ptr %2, null                ; 2 uses
  br i1 %.not.i69, label %compat_get_fd_set.exit71.thread, label %compat_get_fd_set.exit71

compat_get_fd_set.exit71.thread:                  ; preds = %bb.e
  %i.am = and i64 %i.l, 2305843009213693944
  call void @llvm.memset.p0.i64(ptr align 8 %i.r, i8 0, i64 %i.am, i1 false)
  br label %bb.f

compat_get_fd_set.exit71:                         ; preds = %bb.e
  %i.an = call i64 @compat_get_bitmap(ptr noundef %i.r, ptr noundef nonnull %2, i64 noundef range(i64 -2147483648, 2147483648) %i.j) #13
  %i.ao = trunc i64 %i.an to i32                  ; 2 uses
  %.not60 = icmp eq i32 %i.ao, 0
  br i1 %.not60, label %bb.f, label %signal_pending.exit.thread

bb.f:                                             ; preds = %compat_get_fd_set.exit71.thread, %compat_get_fd_set.exit71
  %.not.i72 = icmp eq ptr %3, null                ; 2 uses
  br i1 %.not.i72, label %compat_get_fd_set.exit74.thread, label %compat_get_fd_set.exit74

compat_get_fd_set.exit74.thread:                  ; preds = %bb.f
  %i.ap = and i64 %i.l, 2305843009213693944       ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 %i.ap, i1 false)
  br label %bb.g

compat_get_fd_set.exit74:                         ; preds = %bb.f
  %i.aq = call i64 @compat_get_bitmap(ptr noundef %i.v, ptr noundef nonnull %3, i64 noundef range(i64 -2147483648, 2147483648) %i.j) #13
  %i.ar = trunc i64 %i.aq to i32                  ; 2 uses
  %.not61 = icmp eq i32 %i.ar, 0
  br i1 %.not61, label %compat_get_fd_set.exit74._crit_edge, label %signal_pending.exit.thread

compat_get_fd_set.exit74._crit_edge:              ; preds = %compat_get_fd_set.exit74
  %.pre = and i64 %i.l, 2305843009213693944
  br label %bb.g

bb.g:                                             ; preds = %compat_get_fd_set.exit74._crit_edge, %compat_get_fd_set.exit74.thread
  %.pre-phi = phi i64 [ %.pre, %compat_get_fd_set.exit74._crit_edge ], [ %i.ap, %compat_get_fd_set.exit74.thread ] ; 3 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.z, i8 0, i64 %.pre-phi, i1 false)
  call void @llvm.memset.p0.i64(ptr align 8 %i.ad, i8 0, i64 %.pre-phi, i1 false)
  call void @llvm.memset.p0.i64(ptr align 8 %i.ah, i8 0, i64 %.pre-phi, i1 false)
  %i.as = call fastcc i32 @do_select(i32 noundef %spec.select, ptr noundef nonnull %5, ptr noundef %4) #16, !srcloc !79 ; 5 uses
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %signal_pending.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not62 = icmp eq i32 %i.as, 0
  br i1 %.not62, label %test_tsk_thread_flag.exit.i, label %bb.i

test_tsk_thread_flag.exit.i:                      ; preds = %bb.h
  %i.au = load volatile i64, ptr %i.d, align 16
  %i.av = and i64 %i.au, 4
  %.not.i75 = icmp eq i64 %i.av, 0
  br i1 %.not.i75, label %signal_pending.exit, label %signal_pending.exit.thread, !prof !25

signal_pending.exit:                              ; preds = %test_tsk_thread_flag.exit.i
  %i.aw = load volatile i64, ptr %i.d, align 16
  %i.ax = and i64 %i.aw, 2
  %.not63 = icmp eq i64 %i.ax, 0
  br i1 %.not63, label %bb.i, label %signal_pending.exit.thread

bb.i:                                             ; preds = %signal_pending.exit, %bb.h
  br i1 %.not.i, label %compat_set_fd_set.exit.thread, label %compat_set_fd_set.exit

compat_set_fd_set.exit:                           ; preds = %bb.i
  %i.ay = call i64 @compat_put_bitmap(ptr noundef nonnull %1, ptr noundef %i.z, i64 noundef range(i64 -2147483648, 2147483648) %i.j) #13
  %i.az = and i64 %i.ay, 4294967295
  %.not64 = icmp eq i64 %i.az, 0
  br i1 %.not64, label %compat_set_fd_set.exit.thread, label %bb.j

compat_set_fd_set.exit.thread:                    ; preds = %bb.i, %compat_set_fd_set.exit
  br i1 %.not.i69, label %compat_set_fd_set.exit81.thread, label %compat_set_fd_set.exit81

compat_set_fd_set.exit81:                         ; preds = %compat_set_fd_set.exit.thread
  %i.ba = call i64 @compat_put_bitmap(ptr noundef nonnull %2, ptr noundef %i.ad, i64 noundef range(i64 -2147483648, 2147483648) %i.j) #13
  %i.bb = and i64 %i.ba, 4294967295
  %.not65 = icmp eq i64 %i.bb, 0
  br i1 %.not65, label %compat_set_fd_set.exit81.thread, label %bb.j

compat_set_fd_set.exit81.thread:                  ; preds = %compat_set_fd_set.exit.thread, %compat_set_fd_set.exit81
  br i1 %.not.i72, label %signal_pending.exit.thread, label %compat_set_fd_set.exit84

compat_set_fd_set.exit84:                         ; preds = %compat_set_fd_set.exit81.thread
  %i.bc = call i64 @compat_put_bitmap(ptr noundef nonnull %3, ptr noundef %i.ah, i64 noundef range(i64 -2147483648, 2147483648) %i.j) #13
  %i.bd = and i64 %i.bc, 4294967295
  %.not66 = icmp eq i64 %i.bd, 0
  br i1 %.not66, label %signal_pending.exit.thread, label %bb.j

bb.j:                                             ; preds = %compat_set_fd_set.exit84, %compat_set_fd_set.exit81, %compat_set_fd_set.exit
  br label %signal_pending.exit.thread

signal_pending.exit.thread:                       ; preds = %compat_set_fd_set.exit81.thread, %test_tsk_thread_flag.exit.i, %compat_set_fd_set.exit84, %bb.j, %signal_pending.exit, %bb.g, %compat_get_fd_set.exit, %compat_get_fd_set.exit71, %compat_get_fd_set.exit74
  %.1 = phi i32 [ %i.al, %compat_get_fd_set.exit ], [ %i.ao, %compat_get_fd_set.exit71 ], [ %i.ar, %compat_get_fd_set.exit74 ], [ %i.as, %bb.g ], [ -14, %bb.j ], [ %i.as, %compat_set_fd_set.exit84 ], [ -514, %signal_pending.exit ], [ -514, %test_tsk_thread_flag.exit.i ], [ %i.as, %compat_set_fd_set.exit81.thread ] ; 2 uses
  %.not67 = icmp eq ptr %.048, %i.a
  br i1 %.not67, label %_kmalloc_array_noprof.exit.thread, label %bb.k

bb.k:                                             ; preds = %signal_pending.exit.thread
  call void @kfree(ptr noundef nonnull %.048) #13
  br label %_kmalloc_array_noprof.exit.thread

_kmalloc_array_noprof.exit.thread:                ; preds = %bb.c, %signal_pending.exit.thread, %bb.k, %_kmalloc_array_noprof.exit, %bb.a
  %.2 = phi i32 [ -22, %bb.a ], [ %.1, %bb.k ], [ %.1, %signal_pending.exit.thread ], [ -12, %_kmalloc_array_noprof.exit ], [ -12, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret i32 %.2
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @compat_get_bitmap(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @compat_put_bitmap(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i64 -2147483648, 2147483648) i64 @do_compat_pselect(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef range(i32 2, 4) %7) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %8 = alloca %struct.timespec64, align 8         ; 7 uses
  %9 = alloca %struct.timespec64, align 8         ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false), !annotation !11
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %poll_select_set_timeout.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i32 %7, 3
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = call i32 @get_old_timespec32(ptr noundef nonnull %8, ptr noundef nonnull %4) #13
  %.not21 = icmp eq i32 %i.b, 0
  br i1 %.not21, label %bb.e, label %poll_select_set_timeout.exit

bb.d:                                             ; preds = %bb.b
  %i.c = call i32 @get_timespec64(ptr noundef nonnull %8, ptr noundef nonnull %4) #13
  %.not20 = icmp eq i32 %i.c, 0
  br i1 %.not20, label %bb.e, label %poll_select_set_timeout.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.d = load i64, ptr %8, align 8                ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %i.g = icmp sgt i64 %i.d, -1
  %i.h = icmp ult i64 %i.f, 1000000000
  %.0.i.i = and i1 %i.g, %i.h
  br i1 %.0.i.i, label %bb.f, label %poll_select_set_timeout.exit

bb.f:                                             ; preds = %bb.e
  %i.i = or i64 %i.f, %i.d
  %or.cond.not.i = icmp eq i64 %i.i, 0
  br i1 %or.cond.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  br label %poll_select_set_timeout.exit.thread

bb.h:                                             ; preds = %bb.f
  call void @ktime_get_ts64(ptr noundef nonnull %9) #13
end_hunk_0
