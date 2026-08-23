Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/pidfs?download=true
inline.NumInlined: 220
inline.NumDeleted: 93
begin_hunk_0_@pidfd_ioctl:bb.a

__ns_ref_get.exit67:                              ; preds = %bb.an
  %i.gj = tail call fastcc zeroext i1 @refcount_inc_not_zero(ptr noundef nonnull %i.gf) #21, !srcloc !89
  br i1 %i.gj, label %__ns_ref_get.exit67.__ns_ref_get.exit67.thread_crit_edge, label %.thread115

__ns_ref_get.exit67.__ns_ref_get.exit67.thread_crit_edge: ; preds = %__ns_ref_get.exit67
  %.pre141 = load ptr, ptr %i.ge, align 8
  br label %__ns_ref_get.exit67.thread

bb.ao:                                            ; preds = %bb.al
  %i.gk = getelementptr i8, ptr %i.gc, i64 16     ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8            ; 4 uses
  %.not47 = icmp eq ptr %i.gl, null
  br i1 %.not47, label %.thread115, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gm = getelementptr i8, ptr %i.gl, i64 1248
  %i.gn = load i64, ptr %i.gm, align 32
  %i.go = icmp ult i64 %i.gn, 9
  br i1 %i.go, label %__ns_ref_get.exit65.thread, label %__ns_ref_get.exit65

__ns_ref_get.exit65:                              ; preds = %bb.ap
  %i.gp = getelementptr i8, ptr %i.gl, i64 1152
  %i.gq = tail call fastcc zeroext i1 @refcount_inc_not_zero(ptr noundef %i.gp) #21, !srcloc !89
  br i1 %i.gq, label %__ns_ref_get.exit65.__ns_ref_get.exit65.thread_crit_edge, label %.thread115

__ns_ref_get.exit65.__ns_ref_get.exit65.thread_crit_edge: ; preds = %__ns_ref_get.exit65
  %.pre140 = load ptr, ptr %i.gk, align 8
  br label %__ns_ref_get.exit65.thread

__ns_ref_get.exit65.thread:                       ; preds = %__ns_ref_get.exit65.__ns_ref_get.exit65.thread_crit_edge, %bb.ap
  %i.gr = phi ptr [ %.pre140, %__ns_ref_get.exit65.__ns_ref_get.exit65.thread_crit_edge ], [ %i.gl, %bb.ap ]
  %i.gs = getelementptr i8, ptr %i.gr, i64 1152
  br label %__ns_ref_get.exit67.thread

bb.aq:                                            ; preds = %bb.al
  %i.gt = getelementptr i8, ptr %i.gc, i64 24     ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8            ; 4 uses
  %.not46 = icmp eq ptr %i.gu, null
  br i1 %.not46, label %.thread115, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gv = getelementptr i8, ptr %i.gu, i64 96
  %i.gw = load i64, ptr %i.gv, align 32
  %i.gx = icmp ult i64 %i.gw, 9
  br i1 %i.gx, label %__ns_ref_get.exit67.thread.thread, label %__ns_ref_get.exit63

__ns_ref_get.exit63:                              ; preds = %bb.ar
  %i.gy = tail call fastcc zeroext i1 @refcount_inc_not_zero(ptr noundef nonnull %i.gu) #21, !srcloc !89
  br i1 %i.gy, label %__ns_ref_get.exit63.__ns_ref_get.exit63.thread_crit_edge, label %.thread115

__ns_ref_get.exit63.__ns_ref_get.exit63.thread_crit_edge: ; preds = %__ns_ref_get.exit63
  %.pre139 = load ptr, ptr %i.gt, align 8
  br label %__ns_ref_get.exit67.thread

bb.as:                                            ; preds = %bb.al
  %i.gz = getelementptr i8, ptr %i.gc, i64 40     ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8            ; 4 uses
  %.not45 = icmp eq ptr %i.ha, null
  br i1 %.not45, label %.thread115, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hb = getelementptr i8, ptr %i.ha, i64 288
  %i.hc = load i64, ptr %i.hb, align 32
  %i.hd = icmp ult i64 %i.hc, 9
  br i1 %i.hd, label %__ns_ref_get.exit61.thread, label %__ns_ref_get.exit61

__ns_ref_get.exit61:                              ; preds = %bb.at
  %i.he = getelementptr i8, ptr %i.ha, i64 192
  %i.hf = tail call fastcc zeroext i1 @refcount_inc_not_zero(ptr noundef %i.he) #21, !srcloc !89
  br i1 %i.hf, label %__ns_ref_get.exit61.__ns_ref_get.exit61.thread_crit_edge, label %.thread115

__ns_ref_get.exit61.__ns_ref_get.exit61.thread_crit_edge: ; preds = %__ns_ref_get.exit61
  %.pre138 = load ptr, ptr %i.gz, align 8
  br label %__ns_ref_get.exit61.thread

__ns_ref_get.exit61.thread:                       ; preds = %__ns_ref_get.exit61.__ns_ref_get.exit61.thread_crit_edge, %bb.at
  %i.hg = phi ptr [ %.pre138, %__ns_ref_get.exit61.__ns_ref_get.exit61.thread_crit_edge ], [ %i.ha, %bb.at ]
  %i.hh = getelementptr i8, ptr %i.hg, i64 192
  br label %__ns_ref_get.exit67.thread

bb.au:                                            ; preds = %bb.al
  %i.hi = getelementptr i8, ptr %i.gc, i64 32     ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8            ; 4 uses
  %.not44 = icmp eq ptr %i.hj, null
  br i1 %.not44, label %.thread115, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hk = getelementptr i8, ptr %i.hj, i64 352
  %i.hl = load i64, ptr %i.hk, align 32
  %i.hm = icmp ult i64 %i.hl, 9
  br i1 %i.hm, label %__ns_ref_get.exit59.thread, label %__ns_ref_get.exit59

__ns_ref_get.exit59:                              ; preds = %bb.av
  %i.hn = getelementptr i8, ptr %i.hj, i64 256
  %i.ho = tail call fastcc zeroext i1 @refcount_inc_not_zero(ptr noundef %i.hn) #21, !srcloc !89
  br i1 %i.ho, label %__ns_ref_get.exit59.__ns_ref_get.exit59.thread_crit_edge, label %.thread115

__ns_ref_get.exit59.__ns_ref_get.exit59.thread_crit_edge: ; preds = %__ns_ref_get.exit59
  %.pre137 = load ptr, ptr %i.hi, align 8
  br label %__ns_ref_get.exit59.thread

__ns_ref_get.exit59.thread:                       ; preds = %__ns_ref_get.exit59.__ns_ref_get.exit59.thread_crit_edge, %bb.av
  %i.hp = phi ptr [ %.pre137, %__ns_ref_get.exit59.__ns_ref_get.exit59.thread_crit_edge ], [ %i.hj, %bb.av ]
  %i.hq = getelementptr i8, ptr %i.hp, i64 256
  br label %__ns_ref_get.exit67.thread

bb.aw:                                            ; preds = %bb.al
  %i.hr = getelementptr i8, ptr %i.gc, i64 48     ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8            ; 4 uses
  %.not43 = icmp eq ptr %i.hs, null
  br i1 %.not43, label %.thread115, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ht = getelementptr i8, ptr %i.hs, i64 160
  %i.hu = load i64, ptr %i.ht, align 32
  %i.hv = icmp ult i64 %i.hu, 9
  br i1 %i.hv, label %__ns_ref_get.exit57.thread, label %__ns_ref_get.exit57

__ns_ref_get.exit57:                              ; preds = %bb.ax
  %i.hw = getelementptr i8, ptr %i.hs, i64 64
  %i.hx = tail call fastcc zeroext i1 @refcount_inc_not_zero(ptr noundef %i.hw) #21, !srcloc !89
  br i1 %i.hx, label %__ns_ref_get.exit57.__ns_ref_get.exit57.thread_crit_edge, label %.thread115

__ns_ref_get.exit57.__ns_ref_get.exit57.thread_crit_edge: ; preds = %__ns_ref_get.exit57
  %.pre136 = load ptr, ptr %i.hr, align 8
  br label %__ns_ref_get.exit57.thread

__ns_ref_get.exit57.thread:                       ; preds = %__ns_ref_get.exit57.__ns_ref_get.exit57.thread_crit_edge, %bb.ax
  %i.hy = phi ptr [ %.pre136, %__ns_ref_get.exit57.__ns_ref_get.exit57.thread_crit_edge ], [ %i.hs, %bb.ax ]
  %i.hz = getelementptr i8, ptr %i.hy, i64 64
  br label %__ns_ref_get.exit67.thread

bb.ay:                                            ; preds = %bb.al
  %i.ia = getelementptr i8, ptr %i.gc, i64 56     ; 2 uses
  %i.ib = load ptr, ptr %i.ia, align 8            ; 4 uses
  %.not42 = icmp eq ptr %i.ib, null
  br i1 %.not42, label %.thread115, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ic = getelementptr i8, ptr %i.ib, i64 160
  %i.id = load i64, ptr %i.ic, align 32
  %i.ie = icmp ult i64 %i.id, 9
  br i1 %i.ie, label %__ns_ref_get.exit55.thread, label %__ns_ref_get.exit55

__ns_ref_get.exit55:                              ; preds = %bb.az
  %i.if = getelementptr i8, ptr %i.ib, i64 64
  %i.ig = tail call fastcc zeroext i1 @refcount_inc_not_zero(ptr noundef %i.if) #21, !srcloc !89
  br i1 %i.ig, label %__ns_ref_get.exit55.__ns_ref_get.exit55.thread_crit_edge, label %.thread115

__ns_ref_get.exit55.__ns_ref_get.exit55.thread_crit_edge: ; preds = %__ns_ref_get.exit55
  %.pre135 = load ptr, ptr %i.ia, align 8
  br label %__ns_ref_get.exit55.thread

__ns_ref_get.exit55.thread:                       ; preds = %__ns_ref_get.exit55.__ns_ref_get.exit55.thread_crit_edge, %bb.az
  %i.ih = phi ptr [ %.pre135, %__ns_ref_get.exit55.__ns_ref_get.exit55.thread_crit_edge ], [ %i.ib, %bb.az ]
  %i.ii = getelementptr i8, ptr %i.ih, i64 64
  br label %__ns_ref_get.exit67.thread

bb.ba:                                            ; preds = %bb.al
  %i.ij = getelementptr i8, ptr %i.gc, i64 8      ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8            ; 4 uses
  %.not41 = icmp eq ptr %i.ik, null
  br i1 %.not41, label %.thread115, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.il = getelementptr i8, ptr %i.ik, i64 544
  %i.im = load i64, ptr %i.il, align 32
  %i.in = icmp ult i64 %i.im, 9
  br i1 %i.in, label %__ns_ref_get.exit53.thread, label %__ns_ref_get.exit53

__ns_ref_get.exit53:                              ; preds = %bb.bb
  %i.io = getelementptr i8, ptr %i.ik, i64 448
  %i.ip = tail call fastcc zeroext i1 @refcount_inc_not_zero(ptr noundef %i.io) #21, !srcloc !89
  br i1 %i.ip, label %__ns_ref_get.exit53.__ns_ref_get.exit53.thread_crit_edge, label %.thread115

__ns_ref_get.exit53.__ns_ref_get.exit53.thread_crit_edge: ; preds = %__ns_ref_get.exit53
  %.pre = load ptr, ptr %i.ij, align 8
  br label %__ns_ref_get.exit53.thread

__ns_ref_get.exit53.thread:                       ; preds = %__ns_ref_get.exit53.__ns_ref_get.exit53.thread_crit_edge, %bb.bb
  %i.iq = phi ptr [ %.pre, %__ns_ref_get.exit53.__ns_ref_get.exit53.thread_crit_edge ], [ %i.ik, %bb.bb ]
  %i.ir = getelementptr i8, ptr %i.iq, i64 448
  br label %__ns_ref_get.exit67.thread

bb.bc:                                            ; preds = %bb.al
  tail call void @__rcu_read_lock() #18
  %i.is = tail call ptr @task_active_pid_ns(ptr noundef nonnull %i.fz) #18 ; 3 uses
  %.not40 = icmp eq ptr %i.is, null
  br i1 %.not40, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.it = getelementptr i8, ptr %i.is, i64 256    ; 2 uses
  %i.iu = getelementptr i8, ptr %i.is, i64 352
  %i.iv = load i64, ptr %i.iu, align 32
  %i.iw = icmp ult i64 %i.iv, 9
  br i1 %i.iw, label %__ns_ref_get.exit.thread, label %__ns_ref_get.exit

__ns_ref_get.exit:                                ; preds = %bb.bd
  %i.ix = tail call fastcc zeroext i1 @refcount_inc_not_zero(ptr noundef %i.it) #21, !srcloc !89
  br i1 %i.ix, label %__ns_ref_get.exit.thread, label %bb.be

__ns_ref_get.exit.thread:                         ; preds = %bb.bd, %__ns_ref_get.exit
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %__ns_ref_get.exit.thread, %__ns_ref_get.exit
  %.025 = phi ptr [ %i.it, %__ns_ref_get.exit.thread ], [ null, %__ns_ref_get.exit ], [ null, %bb.bc ]
  tail call void @__rcu_read_unlock() #18
  br label %__ns_ref_get.exit67.thread

.thread115:                                       ; preds = %__ns_ref_get.exit67, %bb.am, %__ns_ref_get.exit65, %bb.ao, %__ns_ref_get.exit63, %bb.aq, %__ns_ref_get.exit61, %bb.as, %__ns_ref_get.exit59, %bb.au, %__ns_ref_get.exit57, %bb.aw, %__ns_ref_get.exit55, %bb.ay, %__ns_ref_get.exit53, %bb.ba, %bb.al
  br label %pidfd_info.exit

__ns_ref_get.exit67.thread:                       ; preds = %__ns_ref_get.exit63.__ns_ref_get.exit63.thread_crit_edge, %__ns_ref_get.exit67.__ns_ref_get.exit67.thread_crit_edge, %bb.be, %__ns_ref_get.exit53.thread, %__ns_ref_get.exit55.thread, %__ns_ref_get.exit57.thread, %__ns_ref_get.exit59.thread, %__ns_ref_get.exit61.thread, %__ns_ref_get.exit65.thread
  %.1 = phi ptr [ %i.ii, %__ns_ref_get.exit55.thread ], [ %i.hh, %__ns_ref_get.exit61.thread ], [ %i.hz, %__ns_ref_get.exit57.thread ], [ %i.gs, %__ns_ref_get.exit65.thread ], [ %i.ir, %__ns_ref_get.exit53.thread ], [ %i.hq, %__ns_ref_get.exit59.thread ], [ %.pre139, %__ns_ref_get.exit63.__ns_ref_get.exit63.thread_crit_edge ], [ %.025, %bb.be ], [ %.pre141, %__ns_ref_get.exit67.__ns_ref_get.exit67.thread_crit_edge ] ; 2 uses
  %.not49 = icmp eq ptr %.1, null
  br i1 %.not49, label %pidfd_info.exit, label %__ns_ref_get.exit67.thread.thread

__ns_ref_get.exit67.thread.thread:                ; preds = %bb.ar, %bb.an, %__ns_ref_get.exit67.thread
  %.1167 = phi ptr [ %.1, %__ns_ref_get.exit67.thread ], [ %i.gu, %bb.ar ], [ %i.gf, %bb.an ]
  %i.iy = tail call i32 @open_namespace(ptr noundef nonnull %.1167) #18
  %i.iz = sext i32 %i.iy to i64
  br label %pidfd_info.exit

pidfd_info.exit:                                  ; preds = %__ns_ref_get.exit67.thread.thread, %bb.ak, %bb.al, %__ns_ref_get.exit67.thread, %.thread115
  %.0 = phi i64 [ %i.iz, %__ns_ref_get.exit67.thread.thread ], [ -515, %bb.al ], [ -95, %.thread115 ], [ -95, %__ns_ref_get.exit67.thread ], [ -13, %bb.ak ] ; 3 uses
  %i.ja = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.gc, i32 -1, ptr nonnull elementtype(i32) %i.gc) #19, !srcloc !66 ; 2 uses
  %i.jb = icmp eq i32 %i.ja, 1
  br i1 %i.jb, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %pidfd_info.exit
  %i.jc = icmp slt i32 %i.ja, 1
  br i1 %i.jc, label %bb.bg, label %__free_put_nsproxy.exit, !prof !16

bb.bg:                                            ; preds = %bb.bf
  tail call void @refcount_warn_saturate(ptr noundef nonnull %i.gc, i32 noundef 3) #18
  br label %__free_put_nsproxy.exit

bb.bh:                                            ; preds = %pidfd_info.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !87
  tail call void @deactivate_nsproxy(ptr noundef nonnull %i.gc) #18
  br label %__free_put_nsproxy.exit

__free_put_nsproxy.exit:                          ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.ai, %.thread104
  %.0123127 = phi i64 [ -3, %.thread104 ], [ -22, %bb.ai ], [ %.0, %bb.bf ], [ %.0, %bb.bg ], [ %.0, %bb.bh ] ; 3 uses
  %i.jd = getelementptr i8, ptr %i.fz, i64 40     ; 3 uses
  %i.je = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.jd, i32 -1, ptr elementtype(i32) %i.jd) #19, !srcloc !66 ; 2 uses
  %i.jf = icmp eq i32 %i.je, 1
  br i1 %i.jf, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %__free_put_nsproxy.exit
  %i.jg = icmp slt i32 %i.je, 1
  br i1 %i.jg, label %bb.bj, label %__free_put_task.exit, !prof !16

bb.bj:                                            ; preds = %bb.bi
  tail call void @refcount_warn_saturate(ptr noundef %i.jd, i32 noundef 3) #18
  br label %__free_put_task.exit

bb.bk:                                            ; preds = %__free_put_nsproxy.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !87
  %i.jh = getelementptr i8, ptr %i.fz, i64 2880
  tail call void @call_rcu(ptr noundef %i.jh, ptr noundef nonnull @__put_task_struct_rcu_cb) #18
  br label %__free_put_task.exit

__free_put_task.exit:                             ; preds = %bb.b, %bb.c, %bb.d, %pidfd_pid.exit, %pidfs_ioctl_valid.exit, %.thread.i, %bb.ab, %bb.ad, %bb.ae, %bb.af, %bb.bk, %bb.bj, %bb.bi
  %.0123128 = phi i64 [ %.0123127, %bb.bk ], [ %.0123127, %bb.bi ], [ %.0123127, %bb.bj ], [ %i.o, %bb.d ], [ -515, %pidfs_ioctl_valid.exit ], [ %.0114.i, %bb.af ], [ -3, %pidfd_pid.exit ], [ -22, %bb.c ], [ %.0.ph.i, %.thread.i ], [ %.0.i79.i, %bb.ab ], [ %.0114.i, %bb.ad ], [ %.0114.i, %bb.ae ], [ -515, %bb.b ]
  ret i64 %.0123128
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -2147483648, 2147483648) i64 @pidfd_compat_ioctl(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i64 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp eq i32 %1, -2147191295
  %spec.store.select = select i1 %i.a, i32 -2146929151, i32 %1
  %i.b = and i64 %2, 4294967295
  %i.c = tail call i64 @pidfd_ioctl(ptr noundef %0, i32 noundef %spec.store.select, i64 noundef %i.b) #21, !srcloc !90
  ret i64 %i.c
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @pidfs_file_release(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 40
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 512
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 536
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @__rcu_read_lock() #18
  %i.f = tail call ptr @pid_task(ptr noundef %i.e, i32 noundef 1) #18 ; 3 uses
  %.not10 = icmp eq ptr %i.f, null
  br i1 %.not10, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.f, i64 44
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 2113536
  %.not11 = icmp eq i32 %i.i, 0
  br i1 %.not11, label %.critedge, label %bb.d, !prof !15

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "746: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 746b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 746) #19, !srcloc !91
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.5, ptr nonnull @.str.6, i32 688, i32 2307, i64 16) #19, !srcloc !92
  tail call void asm sideeffect "747: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 747b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 747) #19, !srcloc !93
  br label %bb.e

.critedge:                                        ; preds = %bb.c
  %i.j = tail call i32 @do_send_sig_info(i32 noundef 9, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull %i.f, i32 noundef 1) #18 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %.critedge
  tail call void @__rcu_read_unlock() #18
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pidfd_show_fdinfo(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %.not.i = icmp eq ptr %i.b, @pidfs_file_operations
  br i1 %.not.i, label %bb.b, label %pidfd_pid.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 32
  %.val.i = load ptr, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %.val.i, i64 536
  %i.e = load ptr, ptr %i.d, align 8
  br label %pidfd_pid.exit

pidfd_pid.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.e, %bb.b ], [ inttoptr (i64 -9 to ptr), %bb.a ] ; 4 uses
  %i.f = getelementptr i8, ptr %.0.i, i64 48
  %i.g = load volatile ptr, ptr %i.f, align 8
  %.not.i.i.not = icmp eq ptr %i.g, null
  br i1 %.not.i.i.not, label %bb.d, label %bb.c, !prof !16

bb.c:                                             ; preds = %pidfd_pid.exit
  %i.h = getelementptr i8, ptr %0, i64 96
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 32
  %.val = load ptr, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %.val, i64 40
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 864
  %.val19 = load ptr, ptr %i.m, align 32
  %.val19.val = load ptr, ptr %.val19, align 8    ; 2 uses
  %i.n = tail call i32 @pid_nr_ns(ptr noundef %.0.i, ptr noundef %.val19.val) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %pidfd_pid.exit
  %.018 = phi ptr [ %.val19.val, %bb.c ], [ null, %pidfd_pid.exit ]
  %.017 = phi i32 [ %i.n, %bb.c ], [ -1, %pidfd_pid.exit ] ; 2 uses
  %i.o = sext i32 %.017 to i64                    ; 2 uses
  tail call void @seq_put_decimal_ll(ptr noundef %0, ptr noundef nonnull @.str.9, i64 noundef %i.o) #18
  tail call void @seq_put_decimal_ll(ptr noundef %0, ptr noundef nonnull @.str.10, i64 noundef %i.o) #18
  %i.p = icmp sgt i32 %.017, 0
  br i1 %i.p, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %.018, i64 176
  %i.r = load i32, ptr %i.q, align 16
  %i.s = getelementptr i8, ptr %.0.i, i64 4       ; 2 uses
  %.020 = add i32 %i.r, 1                         ; 2 uses
  %i.t = load i32, ptr %i.s, align 4
  %.not21 = icmp ugt i32 %.020, %i.t
  br i1 %.not21, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.u = getelementptr i8, ptr %.0.i, i64 128
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.022 = phi i32 [ %.020, %.lr.ph ], [ %.0, %bb.f ] ; 2 uses
  %i.v = sext i32 %.022 to i64
  %i.w = getelementptr [16 x i8], ptr %i.u, i64 %i.v
  %i.x = load i32, ptr %i.w, align 8
  %i.y = sext i32 %i.x to i64
  tail call void @seq_put_decimal_ll(ptr noundef %0, ptr noundef nonnull @.str.11, i64 noundef %i.y) #18
  %.0 = add i32 %.022, 1                          ; 2 uses
  %i.z = load i32, ptr %i.s, align 4
  %.not = icmp ugt i32 %.0, %i.z
  br i1 %.not, label %.loopexit, label %bb.f, !llvm.loop !94

.loopexit:                                        ; preds = %bb.f, %bb.e, %bb.d
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #18
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @pid_task(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @get_pid_task(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @get_nsproxy(ptr noundef nonnull %0) unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %0, i32 1, ptr nonnull elementtype(i32) %0) #19, !srcloc !66 ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i.i, label %.sink.split.i.i.i, label %bb.b, !prof !16
end_hunk_0
