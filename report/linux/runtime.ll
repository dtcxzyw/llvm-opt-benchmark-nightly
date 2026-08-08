inline.NumInlined: 231
inline.NumDeleted: 70
begin_hunk_0_@rpm_suspend:bb.a
  %.not115205 = icmp eq i32 %i.ca, 3
  br i1 %.not115205, label %.lr.ph, label %._crit_edge

bb.w:                                             ; preds = %bb.v
  call void @_raw_spin_unlock(ptr noundef %i.ak) #7
  call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !25
  call void @_raw_spin_lock(ptr noundef %i.ak) #7
  br label %bb.x

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  call void @_raw_spin_unlock_irq(ptr noundef %i.ak) #7
  call void @schedule() #7
  call void @_raw_spin_lock_irq(ptr noundef %i.ak) #7
  call void @prepare_to_wait(ptr noundef %i.ae, ptr noundef nonnull %2, i32 noundef 2) #7
  %i.cb = load i32, ptr %i.q, align 4
  %.not115 = icmp eq i32 %i.cb, 3
  br i1 %.not115, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  call void @finish_wait(ptr noundef %i.ae, ptr noundef nonnull %2) #7
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %pm_runtime_autosuspend_expiration.exit152.backedge

pm_runtime_autosuspend_expiration.exit152.backedge: ; preds = %bb.x, %bb.bq
  %i.cc = load i32, ptr %i.l, align 4
  %.not.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i, label %bb.e, label %rpm_check_suspend_allowed.exit.thread

bb.y:                                             ; preds = %pm_runtime_cancel_pending.exit
  %i.cd = load i16, ptr %i.n, align 8             ; 5 uses
  %i.ce = and i16 %i.cd, 512
  %.not101 = icmp eq i16 %i.ce, 0
  br i1 %.not101, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %bb.y
  br i1 %.not, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cf = select i1 %.not96, i32 2, i32 3
  store i32 %i.cf, ptr %i.r, align 8
  %i.cg = and i16 %i.cd, 16
  %.not106 = icmp eq i16 %i.cg, 0
  br i1 %.not106, label %bb.ab, label %rpm_check_suspend_allowed.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.ch = or disjoint i16 %i.cd, 16
  store i16 %i.ch, ptr %i.n, align 8
  %i.ci = load ptr, ptr @pm_wq, align 8
  %i.cj = getelementptr i8, ptr %0, i64 392
  %i.ck = call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %i.ci, ptr noundef %i.cj) #7 ; 0 uses
  br label %rpm_check_suspend_allowed.exit.thread

bb.ac:                                            ; preds = %bb.z
  %i.cl = and i16 %i.cd, 7
  %.not.i.i120 = icmp eq i16 %i.cl, 0
  br i1 %.not.i.i120, label %bb.ad, label %update_pm_runtime_accounting.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.cm = load i64, ptr %i.y, align 8             ; 2 uses
  %i.cn = call i64 @ktime_get_mono_fast_ns() #7   ; 3 uses
  store i64 %i.cn, ptr %i.y, align 8
  %i.co = icmp ult i64 %i.cn, %i.cm
  br i1 %i.co, label %update_pm_runtime_accounting.exit.i, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.ad
  %i.cp = sub nuw i64 %i.cn, %i.cm
  %i.cq = load i32, ptr %i.q, align 4
  %i.cr = icmp eq i32 %i.cq, 2
  %..i.i = select i1 %i.cr, i64 512, i64 504
  %i.cs = getelementptr i8, ptr %0, i64 %..i.i    ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8
  %i.cu = add i64 %i.cp, %i.ct
  store i64 %i.cu, ptr %i.cs, align 8
  br label %update_pm_runtime_accounting.exit.i

update_pm_runtime_accounting.exit.i:              ; preds = %.sink.split.i.i, %bb.ad, %bb.ac
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_rpm_status, i64 8), i1 false) #8
          to label %__update_runtime_status.exit [label %arch_test_bit.exit.i.i.i], !srcloc !17

arch_test_bit.exit.i.i.i:                         ; preds = %update_pm_runtime_accounting.exit.i
  %i.cv = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #8, !srcloc !26
  %i.cw = zext i32 %i.cv to i64
  %i.cx = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.cw) #8, !srcloc !19 ; 2 uses
  %i.cy = icmp ult i8 %i.cx, 2
  call void @llvm.assume(i1 %i.cy)
  %i.cz = trunc nuw i8 %i.cx to i1
  br i1 %i.cz, label %bb.ae, label %__update_runtime_status.exit

bb.ae:                                            ; preds = %arch_test_bit.exit.i.i.i
  %i.da = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.da, ptr elementtype(i64) %i.da) #8, !srcloc !20
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !21
  %i.db = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_rpm_status, i64 56), align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dc = getelementptr i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = call i32 @__SCT__tp_func_rpm_status(ptr noundef %i.dd, ptr noundef %0, i32 noundef 3) #7 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !22
  %i.df = getelementptr i8, ptr %i.da, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.df, ptr elementtype(i64) %i.df) #8, !srcloc !23
  br label %__update_runtime_status.exit

__update_runtime_status.exit:                     ; preds = %update_pm_runtime_accounting.exit.i, %arch_test_bit.exit.i.i.i, %bb.ag
  store i32 3, ptr %i.q, align 4
  %i.dg = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not.i121 = icmp eq ptr %i.dg, null
  br i1 %.not.i121, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %__update_runtime_status.exit
  %i.dh = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not25.i = icmp eq ptr %i.dh, null
  br i1 %.not25.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.di = getelementptr i8, ptr %i.dh, i64 40
  %i.dj = load ptr, ptr %i.di, align 8            ; 2 uses
  %.not26.i = icmp eq ptr %i.dj, null
  br i1 %.not26.i, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.dk = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not27.i = icmp eq ptr %i.dk, null
  br i1 %.not27.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dl = getelementptr i8, ptr %i.dk, i64 88
  %i.dm = load ptr, ptr %i.dl, align 8            ; 2 uses
  %.not28.i = icmp eq ptr %i.dm, null
  br i1 %.not28.i, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.dn = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not29.i = icmp eq ptr %i.dn, null
  br i1 %.not29.i, label %.thread37.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.do = getelementptr i8, ptr %i.dn, i64 152
  %i.dp = load ptr, ptr %i.do, align 8            ; 2 uses
  %.not30.i = icmp eq ptr %i.dp, null
  br i1 %.not30.i, label %.thread37.i, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ak, %bb.ai, %__update_runtime_status.exit
  %.017.ph.i = phi ptr [ %i.dp, %bb.am ], [ %i.dm, %bb.ak ], [ %i.dj, %bb.ai ], [ %i.dg, %__update_runtime_status.exit ]
  %i.dq = getelementptr i8, ptr %.017.ph.i, i64 160
  %i.dr = load ptr, ptr %i.dq, align 8            ; 2 uses
  %.not32.i = icmp eq ptr %i.dr, null
  br i1 %.not32.i, label %.thread37.i, label %__rpm_get_callback.exit

.thread37.i:                                      ; preds = %bb.an, %bb.am, %bb.al
  %.val.i = load ptr, ptr %i.ad, align 8          ; 2 uses
  %.not.i.i122 = icmp eq ptr %.val.i, null
  br i1 %.not.i.i122, label %__rpm_get_callback.exit, label %bb.ao

bb.ao:                                            ; preds = %.thread37.i
  %i.ds = getelementptr i8, ptr %.val.i, i64 120
  %i.dt = load ptr, ptr %i.ds, align 8            ; 2 uses
  %.not6.i.i = icmp eq ptr %i.dt, null
  br i1 %.not6.i.i, label %__rpm_get_callback.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.du = getelementptr i8, ptr %i.dt, i64 160
  %i.dv = load ptr, ptr %i.du, align 8
  br label %__rpm_get_callback.exit

__rpm_get_callback.exit:                          ; preds = %bb.an, %.thread37.i, %bb.ao, %bb.ap
  %.1.i = phi ptr [ %i.dr, %bb.an ], [ %i.dv, %bb.ap ], [ null, %bb.ao ], [ null, %.thread37.i ] ; 2 uses
  call void @dev_pm_enable_wake_irq_check(ptr noundef %0, i1 noundef zeroext true) #7
  %i.dw = load i16, ptr %i.n, align 8
  %i.dx = and i16 %i.dw, 8192
  %.not.i123 = icmp eq i16 %i.dx, 0
  br i1 %.not.i123, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %__rpm_get_callback.exit
  %i.dy = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #10, !srcloc !24
  %i.dz = inttoptr i64 %i.dy to ptr
  %i.ea = getelementptr i8, ptr %i.dz, i64 44     ; 4 uses
  %i.eb = load i32, ptr %i.ea, align 4            ; 2 uses
  %i.ec = or i32 %i.eb, 524288
  store i32 %i.ec, ptr %i.ea, align 4
  %i.ed = call fastcc i32 @__rpm_callback(ptr noundef %.1.i, ptr noundef %0) #9, !inline_history !27, !srcloc !28
  %i.ee = or i32 %i.eb, -524289
  %i.ef = load i32, ptr %i.ea, align 4
  %i.eg = and i32 %i.ef, %i.ee
  store i32 %i.eg, ptr %i.ea, align 4
  br label %bb.as

bb.ar:                                            ; preds = %__rpm_get_callback.exit
  %i.eh = call fastcc i32 @__rpm_callback(ptr noundef %.1.i, ptr noundef %0) #9, !inline_history !27, !srcloc !29
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.0.i124 = phi i32 [ %i.ed, %bb.aq ], [ %i.eh, %bb.ar ] ; 5 uses
  switch i32 %.0.i124, label %rpm_callback.exit [
    i32 -11, label %rpm_callback.exit.thread
    i32 -16, label %rpm_callback.exit.thread
    i32 -13, label %rpm_callback.exit.thread
  ]

rpm_callback.exit:                                ; preds = %bb.as
  store i32 %.0.i124, ptr %i.l, align 4
  %.not103 = icmp eq i32 %.0.i124, 0
  br i1 %.not103, label %bb.at, label %rpm_callback.exit.thread

bb.at:                                            ; preds = %rpm_callback.exit
  call void @dev_pm_enable_wake_irq_complete(ptr noundef %0) #7
  %.pre = load i16, ptr %i.n, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.y, %bb.at
  %i.ei = phi i16 [ %.pre, %bb.at ], [ %i.cd, %bb.y ]
  %i.ej = and i16 %i.ei, 7
  %.not.i.i125 = icmp eq i16 %i.ej, 0
  br i1 %.not.i.i125, label %bb.au, label %update_pm_runtime_accounting.exit.i126

bb.au:                                            ; preds = %.loopexit
  %i.ek = load i64, ptr %i.y, align 8             ; 2 uses
  %i.el = call i64 @ktime_get_mono_fast_ns() #7   ; 3 uses
  store i64 %i.el, ptr %i.y, align 8
  %i.em = icmp ult i64 %i.el, %i.ek
  br i1 %i.em, label %update_pm_runtime_accounting.exit.i126, label %.sink.split.i.i131

.sink.split.i.i131:                               ; preds = %bb.au
  %i.en = sub nuw i64 %i.el, %i.ek
  %i.eo = load i32, ptr %i.q, align 4
  %i.ep = icmp eq i32 %i.eo, 2
  %..i.i132 = select i1 %i.ep, i64 512, i64 504
  %i.eq = getelementptr i8, ptr %0, i64 %..i.i132 ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8
  %i.es = add i64 %i.en, %i.er
  store i64 %i.es, ptr %i.eq, align 8
  br label %update_pm_runtime_accounting.exit.i126

update_pm_runtime_accounting.exit.i126:           ; preds = %.sink.split.i.i131, %bb.au, %.loopexit
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_rpm_status, i64 8), i1 false) #8
          to label %__update_runtime_status.exit133 [label %arch_test_bit.exit.i.i.i127], !srcloc !17

arch_test_bit.exit.i.i.i127:                      ; preds = %update_pm_runtime_accounting.exit.i126
  %i.et = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #8, !srcloc !26
  %i.eu = zext i32 %i.et to i64
  %i.ev = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.eu) #8, !srcloc !19 ; 2 uses
  %i.ew = icmp ult i8 %i.ev, 2
  call void @llvm.assume(i1 %i.ew)
  %i.ex = trunc nuw i8 %i.ev to i1
  br i1 %i.ex, label %bb.av, label %__update_runtime_status.exit133

bb.av:                                            ; preds = %arch_test_bit.exit.i.i.i127
  %i.ey = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ey, ptr elementtype(i64) %i.ey) #8, !srcloc !20
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !21
  %i.ez = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_rpm_status, i64 56), align 8 ; 2 uses
  %.not.i.i.i128 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i128, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fa = getelementptr i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = call i32 @__SCT__tp_func_rpm_status(ptr noundef %i.fb, ptr noundef %0, i32 noundef 2) #7 ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !22
  %i.fd = getelementptr i8, ptr %i.ey, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.fd, ptr elementtype(i64) %i.fd) #8, !srcloc !23
  br label %__update_runtime_status.exit133

__update_runtime_status.exit133:                  ; preds = %update_pm_runtime_accounting.exit.i126, %arch_test_bit.exit.i.i.i127, %bb.ax
  store i32 2, ptr %i.q, align 4
  %i.fe = load i64, ptr %i.w, align 8
  %.not.i134 = icmp eq i64 %i.fe, 0
  br i1 %.not.i134, label %pm_runtime_deactivate_timer.exit, label %bb.ay

bb.ay:                                            ; preds = %__update_runtime_status.exit133
  %i.ff = call i32 @hrtimer_try_to_cancel(ptr noundef %i.x) #7 ; 0 uses
  store i64 0, ptr %i.w, align 8
  br label %pm_runtime_deactivate_timer.exit

pm_runtime_deactivate_timer.exit:                 ; preds = %__update_runtime_status.exit133, %bb.ay
  %i.fg = getelementptr i8, ptr %0, i64 64
  %i.fh = load ptr, ptr %i.fg, align 8            ; 5 uses
  %.not107 = icmp eq ptr %i.fh, null              ; 2 uses
  br i1 %.not107, label %raw_atomic_fetch_add_unless.exit, label %bb.az

bb.az:                                            ; preds = %pm_runtime_deactivate_timer.exit
  %i.fi = getelementptr i8, ptr %i.fh, i64 460    ; 3 uses
  %i.fj = load volatile i32, ptr %i.fi, align 4   ; 2 uses
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %raw_atomic_fetch_add_unless.exit, label %.lr.ph222, !prof !10

.lr.ph222:                                        ; preds = %bb.az, %arch_atomic_try_cmpxchg.exit
  %.0220 = phi i32 [ %i.fq, %arch_atomic_try_cmpxchg.exit ], [ %i.fj, %bb.az ] ; 2 uses
  %i.fl = add i32 %.0220, -1
  %i.fm = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.fi, i32 %i.fl, ptr elementtype(i32) %i.fi, i32 %.0220) #8, !srcloc !11 ; 2 uses
  %i.fn = extractvalue { i8, i32 } %i.fm, 0       ; 2 uses
  %i.fo = icmp ult i8 %i.fn, 2
  call void @llvm.assume(i1 %i.fo)
  %i.fp = trunc nuw i8 %i.fn to i1
  br i1 %i.fp, label %raw_atomic_fetch_add_unless.exit, label %arch_atomic_try_cmpxchg.exit, !prof !12

arch_atomic_try_cmpxchg.exit:                     ; preds = %.lr.ph222
  %i.fq = extractvalue { i8, i32 } %i.fm, 1       ; 2 uses
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %raw_atomic_fetch_add_unless.exit, label %.lr.ph222, !prof !13

raw_atomic_fetch_add_unless.exit:                 ; preds = %arch_atomic_try_cmpxchg.exit, %.lr.ph222, %bb.az, %pm_runtime_deactivate_timer.exit
  %i.fs = call i32 @__wake_up(ptr noundef %i.ae, i32 noundef 3, i32 noundef 0, ptr noundef null) #7 ; 0 uses
  %i.ft = load i16, ptr %i.n, align 8             ; 3 uses
  %i.fu = and i16 %i.ft, 32
  %.not108 = icmp eq i16 %i.fu, 0
  br i1 %.not108, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %raw_atomic_fetch_add_unless.exit
  %i.fv = and i16 %i.ft, -33
  store i16 %i.fv, ptr %i.n, align 8
  %i.fw = call fastcc i32 @rpm_resume(ptr noundef %0, i32 noundef 0) #9, !srcloc !30 ; 0 uses
  br label %rpm_check_suspend_allowed.exit.thread

bb.bb:                                            ; preds = %raw_atomic_fetch_add_unless.exit
  %i.fx = and i16 %i.ft, 1024
  %.not109 = icmp eq i16 %i.fx, 0
  br i1 %.not109, label %bb.bc, label %rpm_check_suspend_allowed.exit.thread

bb.bc:                                            ; preds = %bb.bb
  br i1 %.not107, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fy = getelementptr i8, ptr %i.fh, i64 464
  %i.fz = load i16, ptr %i.fy, align 8
  %i.ga = and i16 %i.fz, 256
  %.not111 = icmp eq i16 %i.ga, 0
  br i1 %.not111, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call void @_raw_spin_unlock(ptr noundef %i.ak) #7
  %i.gb = getelementptr i8, ptr %i.fh, i64 236    ; 2 uses
  call void @_raw_spin_lock(ptr noundef %i.gb) #7
  %i.gc = call fastcc i32 @rpm_idle(ptr noundef nonnull %i.fh, i32 noundef 1) #9, !srcloc !31 ; 0 uses
  call void @_raw_spin_unlock(ptr noundef %i.gb) #7
  call void @_raw_spin_lock(ptr noundef %i.ak) #7
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bc
  %i.gd = getelementptr i8, ptr %0, i64 468
  %i.ge = load i32, ptr %i.gd, align 4
  %.not112 = icmp eq i32 %i.ge, 0
  br i1 %.not112, label %rpm_check_suspend_allowed.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @_raw_spin_unlock_irq(ptr noundef %i.ak) #7
  %i.gf = call i32 @device_links_read_lock() #7, !inline_history !32
  %i.gg = getelementptr i8, ptr %0, i64 168       ; 3 uses
  %i.gh = load volatile ptr, ptr %i.gg, align 8   ; 2 uses
  %.not.i135224 = icmp eq ptr %i.gh, %i.gg
  br i1 %.not.i135224, label %rpm_suspend_suppliers.exit, label %.lr.ph227

.lr.ph227:                                        ; preds = %bb.bg, %.lr.ph227
  %.pn.i225 = phi ptr [ %i.gm, %.lr.ph227 ], [ %i.gh, %bb.bg ] ; 2 uses
  %.0.i136 = getelementptr i8, ptr %.pn.i225, i64 -32
  %i.gi = load ptr, ptr %.0.i136, align 8         ; 2 uses
  %i.gj = getelementptr i8, ptr %i.gi, i64 236    ; 2 uses
  %i.gk = call i64 @_raw_spin_lock_irqsave(ptr noundef %i.gj) #7, !inline_history !33
  %i.gl = call fastcc i32 @rpm_idle(ptr noundef %i.gi, i32 noundef 1) #9, !inline_history !33, !srcloc !34 ; 0 uses
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.gj, i64 noundef %i.gk) #7, !inline_history !33
  %i.gm = load volatile ptr, ptr %.pn.i225, align 8 ; 2 uses
  %.not.i135 = icmp eq ptr %i.gm, %i.gg
  br i1 %.not.i135, label %rpm_suspend_suppliers.exit, label %.lr.ph227, !llvm.loop !35

rpm_suspend_suppliers.exit:                       ; preds = %.lr.ph227, %bb.bg
  call void @device_links_read_unlock(i32 noundef %i.gf) #7, !inline_history !32
  call void @_raw_spin_lock_irq(ptr noundef %i.ak) #7
  br label %rpm_check_suspend_allowed.exit.thread

rpm_check_suspend_allowed.exit.thread:            ; preds = %rpm_check_suspend_allowed.exit, %bb.f, %pm_runtime_autosuspend_expiration.exit152.backedge, %bb.e, %bb.h, %bb.j, %bb.m, %bb.l, %trace_rpm_suspend.exit, %.thread162, %bb.s, %bb.bf, %rpm_suspend_suppliers.exit, %bb.bb, %bb.aa, %bb.ab, %pm_runtime_cancel_pending.exit154, %bb.ba
  %.3 = phi i32 [ %spec.store.select.i.le, %pm_runtime_cancel_pending.exit154 ], [ 0, %bb.s ], [ -115, %.thread162 ], [ -11, %bb.ba ], [ 0, %bb.bb ], [ 0, %rpm_suspend_suppliers.exit ], [ 0, %bb.bf ], [ 0, %bb.aa ], [ 0, %bb.ab ], [ -22, %trace_rpm_suspend.exit ], [ -11, %bb.f ], [ -22, %pm_runtime_autosuspend_expiration.exit152.backedge ], [ -13, %bb.e ], [ -16, %bb.h ], [ -11, %bb.j ], [ -1, %bb.m ], [ %.086, %rpm_check_suspend_allowed.exit ], [ -11, %bb.l ] ; 2 uses
  %i.gn = tail call i64 asm "lea 0(%rip), $0", "=r,~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !36
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_rpm_return_int, i64 8), i1 false) #8
          to label %trace_rpm_return_int.exit [label %arch_test_bit.exit.i.i137], !srcloc !17

arch_test_bit.exit.i.i137:                        ; preds = %rpm_check_suspend_allowed.exit.thread
  %i.go = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #8, !srcloc !37
  %i.gp = zext i32 %i.go to i64
  %i.gq = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.gp) #8, !srcloc !19 ; 2 uses
  %i.gr = icmp ult i8 %i.gq, 2
  call void @llvm.assume(i1 %i.gr)
  %i.gs = trunc nuw i8 %i.gq to i1
  br i1 %i.gs, label %bb.bh, label %trace_rpm_return_int.exit

bb.bh:                                            ; preds = %arch_test_bit.exit.i.i137
  %i.gt = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.gt, ptr elementtype(i64) %i.gt) #8, !srcloc !20
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !21
  %i.gu = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_rpm_return_int, i64 56), align 8 ; 2 uses
  %.not.i.i138 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i138, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gv = getelementptr i8, ptr %i.gu, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8
  %i.gx = call i32 @__SCT__tp_func_rpm_return_int(ptr noundef %i.gw, ptr noundef %0, i64 noundef %i.gn, i32 noundef %.3) #7 ; 0 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !22
  %i.gy = getelementptr i8, ptr %i.gt, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.gy, ptr elementtype(i64) %i.gy) #8, !srcloc !23
  br label %trace_rpm_return_int.exit

trace_rpm_return_int.exit:                        ; preds = %rpm_check_suspend_allowed.exit.thread, %arch_test_bit.exit.i.i137, %bb.bj
  ret i32 %.3

rpm_callback.exit.thread:                         ; preds = %bb.as, %bb.as, %bb.as, %rpm_callback.exit
  call void @dev_pm_disable_wake_irq_check(ptr noundef %0, i1 noundef zeroext true) #7
  %i.gz = load i16, ptr %i.n, align 8
  %i.ha = and i16 %i.gz, 7
  %.not.i.i140 = icmp eq i16 %i.ha, 0
  br i1 %.not.i.i140, label %bb.bk, label %update_pm_runtime_accounting.exit.i141

bb.bk:                                            ; preds = %rpm_callback.exit.thread
  %i.hb = load i64, ptr %i.y, align 8             ; 2 uses
  %i.hc = call i64 @ktime_get_mono_fast_ns() #7   ; 3 uses
  store i64 %i.hc, ptr %i.y, align 8
  %i.hd = icmp ult i64 %i.hc, %i.hb
  br i1 %i.hd, label %update_pm_runtime_accounting.exit.i141, label %.sink.split.i.i146

.sink.split.i.i146:                               ; preds = %bb.bk
  %i.he = sub nuw i64 %i.hc, %i.hb
  %i.hf = load i32, ptr %i.q, align 4
  %i.hg = icmp eq i32 %i.hf, 2
  %..i.i147 = select i1 %i.hg, i64 512, i64 504
  %i.hh = getelementptr i8, ptr %0, i64 %..i.i147 ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8
  %i.hj = add i64 %i.he, %i.hi
  store i64 %i.hj, ptr %i.hh, align 8
  br label %update_pm_runtime_accounting.exit.i141

update_pm_runtime_accounting.exit.i141:           ; preds = %.sink.split.i.i146, %bb.bk, %rpm_callback.exit.thread
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_rpm_status, i64 8), i1 false) #8
          to label %__update_runtime_status.exit148 [label %arch_test_bit.exit.i.i.i142], !srcloc !17

arch_test_bit.exit.i.i.i142:                      ; preds = %update_pm_runtime_accounting.exit.i141
  %i.hk = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #8, !srcloc !26
  %i.hl = zext i32 %i.hk to i64
  %i.hm = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.hl) #8, !srcloc !19 ; 2 uses
  %i.hn = icmp ult i8 %i.hm, 2
  call void @llvm.assume(i1 %i.hn)
  %i.ho = trunc nuw i8 %i.hm to i1
  br i1 %i.ho, label %bb.bl, label %__update_runtime_status.exit148

bb.bl:                                            ; preds = %arch_test_bit.exit.i.i.i142
  %i.hp = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.hp, ptr elementtype(i64) %i.hp) #8, !srcloc !20
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !21
  %i.hq = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_rpm_status, i64 56), align 8 ; 2 uses
  %.not.i.i.i143 = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i143, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hr = getelementptr i8, ptr %i.hq, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8
  %i.ht = call i32 @__SCT__tp_func_rpm_status(ptr noundef %i.hs, ptr noundef %0, i32 noundef 0) #7 ; 0 uses
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !22
  %i.hu = getelementptr i8, ptr %i.hp, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.hu, ptr elementtype(i64) %i.hu) #8, !srcloc !23
  br label %__update_runtime_status.exit148

__update_runtime_status.exit148:                  ; preds = %update_pm_runtime_accounting.exit.i141, %arch_test_bit.exit.i.i.i142, %bb.bn
  store i32 0, ptr %i.q, align 4
  %i.hv = load i16, ptr %i.n, align 8
  %i.hw = and i16 %i.hv, -33
  store i16 %i.hw, ptr %i.n, align 8
  %i.hx = call i32 @__wake_up(ptr noundef %i.ae, i32 noundef 3, i32 noundef 0, ptr noundef null) #7 ; 0 uses
  %i.hy = load i32, ptr %i.l, align 4
  %.not104 = icmp ne i32 %i.hy, 0
  %brmerge = or i1 %.not96, %.not104
  br i1 %brmerge, label %pm_runtime_autosuspend_expiration.exit152.thread, label %bb.bo

bb.bo:                                            ; preds = %__update_runtime_status.exit148
  %i.hz = load i16, ptr %i.n, align 8
  %i.ia = and i16 %i.hz, 2048
  %.not.i149 = icmp eq i16 %i.ia, 0
  br i1 %.not.i149, label %pm_runtime_autosuspend_expiration.exit152.thread, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ib = load volatile i32, ptr %i.u, align 8    ; 2 uses
  %i.ic = icmp slt i32 %i.ib, 0
  br i1 %i.ic, label %pm_runtime_autosuspend_expiration.exit152.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.id = load volatile i64, ptr %i.v, align 8
  %i.ie = zext nneg i32 %i.ib to i64
  %i.if = mul nuw nsw i64 %i.ie, 1000000
  %i.ig = add i64 %i.id, %i.if
  %i.ih = call i64 @ktime_get_mono_fast_ns() #7
  %i.ii = icmp ugt i64 %i.ig, %i.ih
  br i1 %i.ii, label %pm_runtime_autosuspend_expiration.exit152.backedge, label %pm_runtime_autosuspend_expiration.exit152.thread

pm_runtime_autosuspend_expiration.exit152.thread: ; preds = %bb.bp, %bb.bq, %bb.bo, %__update_runtime_status.exit148
  %3 = icmp eq i32 %.0.i124, -13
  %spec.store.select.i.le = select i1 %3, i32 -11, i32 %.0.i124
  %i.ij = load i64, ptr %i.w, align 8
  %.not.i.i153 = icmp eq i64 %i.ij, 0
  br i1 %.not.i.i153, label %pm_runtime_cancel_pending.exit154, label %bb.br

bb.br:                                            ; preds = %pm_runtime_autosuspend_expiration.exit152.thread
  %i.ik = call i32 @hrtimer_try_to_cancel(ptr noundef %i.x) #7 ; 0 uses
  store i64 0, ptr %i.w, align 8
  br label %pm_runtime_cancel_pending.exit154

pm_runtime_cancel_pending.exit154:                ; preds = %pm_runtime_autosuspend_expiration.exit152.thread, %bb.br
  store i32 0, ptr %i.r, align 8
  br label %rpm_check_suspend_allowed.exit.thread
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = and i32 %1, 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 456        ; 4 uses
  %i.c = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.b, i32 -1, ptr elementtype(i32) %i.b) #8, !srcloc !38
  %i.d = add i32 %i.c, -1                         ; 2 uses
  %i.e = icmp sgt i32 %i.d, -1
  br i1 %i.e, label %rpm_drop_usage_count.exit, label %rpm_drop_usage_count.exit.thread

rpm_drop_usage_count.exit.thread:                 ; preds = %bb.b
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.b, ptr elementtype(i32) %i.b) #8, !srcloc !39
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.9) #11
  br label %trace_rpm_usage.exit

rpm_drop_usage_count.exit:                        ; preds = %bb.b
  %.not16 = icmp eq i32 %i.d, 0
  br i1 %.not16, label %bb.g, label %bb.c

bb.c:                                             ; preds = %rpm_drop_usage_count.exit
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_rpm_usage, i64 8), i1 false) #8
          to label %trace_rpm_usage.exit [label %arch_test_bit.exit.i.i], !srcloc !17

arch_test_bit.exit.i.i:                           ; preds = %bb.c
  %i.f = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #8, !srcloc !40
  %i.g = zext i32 %i.f to i64
  %i.h = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.g) #8, !srcloc !19 ; 2 uses
  %i.i = icmp ult i8 %i.h, 2
  tail call void @llvm.assume(i1 %i.i)
  %i.j = trunc nuw i8 %i.h to i1
  br i1 %i.j, label %bb.d, label %trace_rpm_usage.exit

bb.d:                                             ; preds = %arch_test_bit.exit.i.i
  %i.k = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.k, ptr elementtype(i64) %i.k) #8, !srcloc !20
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !21
  %i.l = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_rpm_usage, i64 56), align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call i32 @__SCT__tp_func_rpm_usage(ptr noundef %i.n, ptr noundef %0, i32 noundef %1) #7 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !22
  %i.p = getelementptr i8, ptr %i.k, i64 8        ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.p, ptr elementtype(i64) %i.p) #8, !srcloc !23
  br label %trace_rpm_usage.exit

bb.g:                                             ; preds = %bb.a, %rpm_drop_usage_count.exit
  %i.q = and i32 %1, 1
  %.not17 = icmp eq i32 %i.q, 0
  br i1 %.not17, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr i8, ptr %0, i64 464
  %i.s = load i16, ptr %i.r, align 8
  %i.t = and i16 %i.s, 1024
  %.not18 = icmp eq i16 %i.t, 0
  br i1 %.not18, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = tail call i32 @__SCT__might_resched() #7 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.v = getelementptr i8, ptr %0, i64 236        ; 2 uses
  %i.w = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.v) #7
  %i.x = tail call fastcc i32 @rpm_idle(ptr noundef %0, i32 noundef %1) #9, !srcloc !34
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.v, i64 noundef %i.w) #7
  br label %trace_rpm_usage.exit

trace_rpm_usage.exit:                             ; preds = %bb.f, %arch_test_bit.exit.i.i, %bb.c, %rpm_drop_usage_count.exit.thread, %bb.j
  %.0 = phi i32 [ %i.x, %bb.j ], [ -22, %rpm_drop_usage_count.exit.thread ], [ 0, %bb.c ], [ 0, %bb.f ], [ 0, %arch_test_bit.exit.i.i ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @rpm_idle(ptr noundef %0, i32 noundef %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_rpm_idle, i64 8), i1 false) #8
          to label %trace_rpm_idle.exit [label %arch_test_bit.exit.i.i], !srcloc !17

arch_test_bit.exit.i.i:                           ; preds = %bb.a
  %i.a = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #8, !srcloc !41
  %i.b = zext i32 %i.a to i64
  %i.c = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.b) #8, !srcloc !19 ; 2 uses
  %i.d = icmp ult i8 %i.c, 2
  tail call void @llvm.assume(i1 %i.d)
  %i.e = trunc nuw i8 %i.c to i1
  br i1 %i.e, label %bb.b, label %trace_rpm_idle.exit

bb.b:                                             ; preds = %arch_test_bit.exit.i.i
  %i.f = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.f, ptr elementtype(i64) %i.f) #8, !srcloc !20
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !21
  %i.g = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_rpm_idle, i64 56), align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i32 @__SCT__tp_func_rpm_idle(ptr noundef %i.i, ptr noundef %0, i32 noundef %1) #7 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !22
  %i.k = getelementptr i8, ptr %i.f, i64 8        ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.k, ptr elementtype(i64) %i.k) #8, !srcloc !23
  br label %trace_rpm_idle.exit

trace_rpm_idle.exit:                              ; preds = %bb.a, %arch_test_bit.exit.i.i, %bb.d
  %i.l = getelementptr i8, ptr %0, i64 484
  %i.m = load i32, ptr %i.l, align 4
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.e, label %.thread

bb.e:                                             ; preds = %trace_rpm_idle.exit
  %i.n = getelementptr i8, ptr %0, i64 464        ; 7 uses
  %i.o = load i16, ptr %i.n, align 8              ; 4 uses
  %i.p = and i16 %i.o, 7
  %.not11.i = icmp eq i16 %i.p, 0
  br i1 %.not11.i, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %0, i64 456
  %i.r = load volatile i32, ptr %i.q, align 8
  %.not12.i = icmp eq i32 %i.r, 0
  br i1 %.not12.i, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.s = and i16 %i.o, 256
  %.not13.i = icmp eq i16 %i.s, 0
  br i1 %.not13.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %0, i64 460
  %i.u = load volatile i32, ptr %i.t, align 4
  %.not14.i = icmp eq i32 %i.u, 0
  br i1 %.not14.i, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = and i16 %i.o, 32
  %.not15.i = icmp eq i16 %i.v, 0
  br i1 %.not15.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr i8, ptr %0, i64 476
  %i.x = load i32, ptr %i.w, align 4
  %i.y = icmp eq i32 %i.x, 3
  br i1 %i.y, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.z = and i16 %i.o, 16
  %.not16.i = icmp eq i16 %i.z, 0
  br i1 %.not16.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr i8, ptr %0, i64 472
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = icmp eq i32 %i.ab, 4
  br i1 %i.ac, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ad = tail call i32 @__dev_pm_qos_resume_latency(ptr noundef %0) #7
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %.thread, label %rpm_check_suspend_allowed.exit

rpm_check_suspend_allowed.exit:                   ; preds = %bb.m
  %i.af = getelementptr i8, ptr %0, i64 476
  %i.ag = load i32, ptr %i.af, align 4            ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 2                    ; 2 uses
  %i.ai = and i32 %1, 4
  %i.aj = icmp ne i32 %i.ai, 0
  %or.cond = and i1 %i.aj, %i.ah
  br i1 %or.cond, label %.thread, label %bb.n

bb.n:                                             ; preds = %rpm_check_suspend_allowed.exit
end_hunk_0
begin_hunk_1_@rpm_resume:bb.a

._crit_edge:                                      ; preds = %bb.ab
  %.pre = load i16, ptr %i.m, align 8
  br label %split

bb.ac:                                            ; preds = %bb.ab
  %i.ca = load ptr, ptr %i.y, align 8             ; 10 uses
  %.not107 = icmp eq ptr %i.ca, null
  %.pre312 = load i16, ptr %i.m, align 8          ; 3 uses
  br i1 %.not107, label %split, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cb = and i16 %.pre312, 1024
  %.not108 = icmp eq i16 %i.cb, 0
  br i1 %.not108, label %bb.ae, label %split

bb.ae:                                            ; preds = %bb.ad
  call void @_raw_spin_unlock(ptr noundef %i.w) #7
  %i.cc = getelementptr i8, ptr %i.ca, i64 456    ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cc, ptr elementtype(i32) %i.cc) #8, !srcloc !39
  %i.cd = getelementptr i8, ptr %i.ca, i64 236    ; 3 uses
  call void @_raw_spin_lock(ptr noundef %i.cd) #7
  %i.ce = getelementptr i8, ptr %i.ca, i64 464
  %i.cf = load i16, ptr %i.ce, align 8
  %i.cg = and i16 %i.cf, 263
  %or.cond125 = icmp eq i16 %i.cg, 0
  br i1 %or.cond125, label %bb.af, label %.outer.critedge

bb.af:                                            ; preds = %bb.ae
  %i.ch = call fastcc i32 @rpm_resume(ptr noundef nonnull %i.ca, i32 noundef 0) #9, !srcloc !48 ; 0 uses
  %i.ci = getelementptr i8, ptr %i.ca, i64 476
  %i.cj = load i32, ptr %i.ci, align 4
  %.not111 = icmp eq i32 %i.cj, 0
  call void @_raw_spin_unlock(ptr noundef %i.cd) #7
  call void @_raw_spin_lock(ptr noundef %i.w) #7
  br i1 %.not111, label %.outer.backedge, label %.thread167

.outer.backedge:                                  ; preds = %bb.af, %.outer.critedge
  %i.ck = load i32, ptr %i.l, align 4
  %.not98212 = icmp eq i32 %i.ck, 0
  br i1 %.not98212, label %.lr.ph, label %.thread

split:                                            ; preds = %bb.ac, %bb.ad, %._crit_edge
  %i.cl = phi i16 [ %.pre, %._crit_edge ], [ %.pre312, %bb.ad ], [ %.pre312, %bb.ac ] ; 2 uses
  %.188 = phi ptr [ %.087.ph372, %._crit_edge ], [ null, %bb.ac ], [ %i.ca, %bb.ad ] ; 4 uses
  %i.cm = and i16 %i.cl, 512
  %.not113 = icmp eq i16 %i.cm, 0
  br i1 %.not113, label %bb.ag, label %bb.bc

bb.ag:                                            ; preds = %split
  %i.cn = and i16 %i.cl, 7
  %.not.i.i128 = icmp eq i16 %i.cn, 0
  br i1 %.not.i.i128, label %bb.ah, label %update_pm_runtime_accounting.exit.i

bb.ah:                                            ; preds = %bb.ag
  %i.co = getelementptr i8, ptr %0, i64 520       ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8            ; 2 uses
  %i.cq = call i64 @ktime_get_mono_fast_ns() #7   ; 3 uses
  store i64 %i.cq, ptr %i.co, align 8
  %i.cr = icmp ult i64 %i.cq, %i.cp
  br i1 %i.cr, label %update_pm_runtime_accounting.exit.i, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.ah
  %i.cs = sub nuw i64 %i.cq, %i.cp
  %i.ct = load i32, ptr %i.q, align 4
  %i.cu = icmp eq i32 %i.ct, 2
  %..i.i = select i1 %i.cu, i64 512, i64 504
  %i.cv = getelementptr i8, ptr %0, i64 %..i.i    ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8
  %i.cx = add i64 %i.cs, %i.cw
  store i64 %i.cx, ptr %i.cv, align 8
  br label %update_pm_runtime_accounting.exit.i

update_pm_runtime_accounting.exit.i:              ; preds = %.sink.split.i.i, %bb.ah, %bb.ag
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_rpm_status, i64 8), i1 false) #8
          to label %__update_runtime_status.exit [label %arch_test_bit.exit.i.i.i], !srcloc !17

arch_test_bit.exit.i.i.i:                         ; preds = %update_pm_runtime_accounting.exit.i
  %i.cy = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #8, !srcloc !26
  %i.cz = zext i32 %i.cy to i64
  %i.da = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.cz) #8, !srcloc !19 ; 2 uses
  %i.db = icmp ult i8 %i.da, 2
  call void @llvm.assume(i1 %i.db)
  %i.dc = trunc nuw i8 %i.da to i1
  br i1 %i.dc, label %bb.ai, label %__update_runtime_status.exit

bb.ai:                                            ; preds = %arch_test_bit.exit.i.i.i
  %i.dd = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.dd, ptr elementtype(i64) %i.dd) #8, !srcloc !20
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !21
  %i.de = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_rpm_status, i64 56), align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.df = getelementptr i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = call i32 @__SCT__tp_func_rpm_status(ptr noundef %i.dg, ptr noundef %0, i32 noundef 1) #7 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !22
  %i.di = getelementptr i8, ptr %i.dd, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.di, ptr elementtype(i64) %i.di) #8, !srcloc !23
  br label %__update_runtime_status.exit

__update_runtime_status.exit:                     ; preds = %update_pm_runtime_accounting.exit.i, %arch_test_bit.exit.i.i.i, %bb.ak
  store i32 1, ptr %i.q, align 4
  %i.dj = getelementptr i8, ptr %0, i64 560
  %i.dk = load ptr, ptr %i.dj, align 8            ; 2 uses
  %.not.i129 = icmp eq ptr %i.dk, null
  br i1 %.not.i129, label %bb.al, label %bb.ar

bb.al:                                            ; preds = %__update_runtime_status.exit
  %i.dl = getelementptr i8, ptr %0, i64 88
  %i.dm = load ptr, ptr %i.dl, align 8            ; 2 uses
  %.not25.i = icmp eq ptr %i.dm, null
  br i1 %.not25.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dn = getelementptr i8, ptr %i.dm, i64 40
  %i.do = load ptr, ptr %i.dn, align 8            ; 2 uses
  %.not26.i = icmp eq ptr %i.do, null
  br i1 %.not26.i, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.dp = getelementptr i8, ptr %0, i64 696
  %i.dq = load ptr, ptr %i.dp, align 8            ; 2 uses
  %.not27.i = icmp eq ptr %i.dq, null
  br i1 %.not27.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dr = getelementptr i8, ptr %i.dq, i64 88
  %i.ds = load ptr, ptr %i.dr, align 8            ; 2 uses
  %.not28.i = icmp eq ptr %i.ds, null
  br i1 %.not28.i, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.dt = getelementptr i8, ptr %0, i64 96
  %i.du = load ptr, ptr %i.dt, align 8            ; 2 uses
  %.not29.i = icmp eq ptr %i.du, null
  br i1 %.not29.i, label %.thread37.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dv = getelementptr i8, ptr %i.du, i64 152
  %i.dw = load ptr, ptr %i.dv, align 8            ; 2 uses
  %.not30.i = icmp eq ptr %i.dw, null
  br i1 %.not30.i, label %.thread37.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ao, %bb.am, %__update_runtime_status.exit
  %.017.ph.i = phi ptr [ %i.dw, %bb.aq ], [ %i.ds, %bb.ao ], [ %i.do, %bb.am ], [ %i.dk, %__update_runtime_status.exit ]
  %i.dx = getelementptr i8, ptr %.017.ph.i, i64 168
  %i.dy = load ptr, ptr %i.dx, align 8            ; 2 uses
  %.not32.i = icmp eq ptr %i.dy, null
  br i1 %.not32.i, label %.thread37.i, label %__rpm_get_callback.exit

.thread37.i:                                      ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.dz = getelementptr i8, ptr %0, i64 104
  %.val.i = load ptr, ptr %i.dz, align 8          ; 2 uses
  %.not.i.i130 = icmp eq ptr %.val.i, null
  br i1 %.not.i.i130, label %__rpm_get_callback.exit, label %bb.as

bb.as:                                            ; preds = %.thread37.i
  %i.ea = getelementptr i8, ptr %.val.i, i64 120
  %i.eb = load ptr, ptr %i.ea, align 8            ; 2 uses
  %.not6.i.i = icmp eq ptr %i.eb, null
  br i1 %.not6.i.i, label %__rpm_get_callback.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ec = getelementptr i8, ptr %i.eb, i64 168
  %i.ed = load ptr, ptr %i.ec, align 8
  br label %__rpm_get_callback.exit

__rpm_get_callback.exit:                          ; preds = %bb.ar, %.thread37.i, %bb.as, %bb.at
  %.1.i = phi ptr [ %i.dy, %bb.ar ], [ %i.ed, %bb.at ], [ null, %bb.as ], [ null, %.thread37.i ] ; 2 uses
  call void @dev_pm_disable_wake_irq_check(ptr noundef %0, i1 noundef zeroext false) #7
  %i.ee = load i16, ptr %i.m, align 8
  %i.ef = and i16 %i.ee, 8192
  %.not.i131 = icmp eq i16 %i.ef, 0
  br i1 %.not.i131, label %bb.av, label %bb.au

bb.au:                                            ; preds = %__rpm_get_callback.exit
  %i.eg = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #10, !inline_history !27, !srcloc !24
  %i.eh = inttoptr i64 %i.eg to ptr
  %i.ei = getelementptr i8, ptr %i.eh, i64 44     ; 4 uses
  %i.ej = load i32, ptr %i.ei, align 4            ; 2 uses
  %i.ek = or i32 %i.ej, 524288
  store i32 %i.ek, ptr %i.ei, align 4
  %i.el = call fastcc i32 @__rpm_callback(ptr noundef %.1.i, ptr noundef %0) #9, !inline_history !27, !srcloc !28
  %i.em = or i32 %i.ej, -524289
  %i.en = load i32, ptr %i.ei, align 4
  %i.eo = and i32 %i.en, %i.em
  store i32 %i.eo, ptr %i.ei, align 4
  br label %bb.aw

bb.av:                                            ; preds = %__rpm_get_callback.exit
  %i.ep = call fastcc i32 @__rpm_callback(ptr noundef %.1.i, ptr noundef %0) #9, !inline_history !27, !srcloc !29
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.0.i = phi i32 [ %i.el, %bb.au ], [ %i.ep, %bb.av ] ; 6 uses
  %i.eq = icmp eq i32 %.0.i, -13
  %spec.store.select.i = select i1 %i.eq, i32 -11, i32 %.0.i ; 2 uses
  switch i32 %.0.i, label %rpm_callback.exit [
    i32 -11, label %rpm_callback.exit.thread
    i32 -16, label %rpm_callback.exit.thread
    i32 -13, label %rpm_callback.exit.thread
  ]

rpm_callback.exit:                                ; preds = %bb.aw
  store i32 %.0.i, ptr %i.l, align 4
  %.not114 = icmp eq i32 %.0.i, 0
  br i1 %.not114, label %bb.bc, label %rpm_callback.exit.thread

rpm_callback.exit.thread:                         ; preds = %bb.aw, %bb.aw, %bb.aw, %rpm_callback.exit
  %i.er = load i16, ptr %i.m, align 8
  %i.es = and i16 %i.er, 7
  %.not.i.i132 = icmp eq i16 %i.es, 0
  br i1 %.not.i.i132, label %bb.ax, label %update_pm_runtime_accounting.exit.i133

bb.ax:                                            ; preds = %rpm_callback.exit.thread
  %i.et = getelementptr i8, ptr %0, i64 520       ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8            ; 2 uses
  %i.ev = call i64 @ktime_get_mono_fast_ns() #7   ; 3 uses
  store i64 %i.ev, ptr %i.et, align 8
  %i.ew = icmp ult i64 %i.ev, %i.eu
  br i1 %i.ew, label %update_pm_runtime_accounting.exit.i133, label %.sink.split.i.i138

.sink.split.i.i138:                               ; preds = %bb.ax
  %i.ex = sub nuw i64 %i.ev, %i.eu
  %i.ey = load i32, ptr %i.q, align 4
  %i.ez = icmp eq i32 %i.ey, 2
  %..i.i139 = select i1 %i.ez, i64 512, i64 504
  %i.fa = getelementptr i8, ptr %0, i64 %..i.i139 ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8
  %i.fc = add i64 %i.ex, %i.fb
  store i64 %i.fc, ptr %i.fa, align 8
  br label %update_pm_runtime_accounting.exit.i133

update_pm_runtime_accounting.exit.i133:           ; preds = %.sink.split.i.i138, %bb.ax, %rpm_callback.exit.thread
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_rpm_status, i64 8), i1 false) #8
          to label %__update_runtime_status.exit140 [label %arch_test_bit.exit.i.i.i134], !srcloc !17

arch_test_bit.exit.i.i.i134:                      ; preds = %update_pm_runtime_accounting.exit.i133
  %i.fd = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #8, !srcloc !26
  %i.fe = zext i32 %i.fd to i64
  %i.ff = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.fe) #8, !srcloc !19 ; 2 uses
  %i.fg = icmp ult i8 %i.ff, 2
  call void @llvm.assume(i1 %i.fg)
  %i.fh = trunc nuw i8 %i.ff to i1
  br i1 %i.fh, label %bb.ay, label %__update_runtime_status.exit140

bb.ay:                                            ; preds = %arch_test_bit.exit.i.i.i134
  %i.fi = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.fi, ptr elementtype(i64) %i.fi) #8, !srcloc !20
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !21
  %i.fj = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_rpm_status, i64 56), align 8 ; 2 uses
  %.not.i.i.i135 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i135, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fk = getelementptr i8, ptr %i.fj, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = call i32 @__SCT__tp_func_rpm_status(ptr noundef %i.fl, ptr noundef %0, i32 noundef 2) #7 ; 0 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !22
  %i.fn = getelementptr i8, ptr %i.fi, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.fn, ptr elementtype(i64) %i.fn) #8, !srcloc !23
  br label %__update_runtime_status.exit140

__update_runtime_status.exit140:                  ; preds = %update_pm_runtime_accounting.exit.i133, %arch_test_bit.exit.i.i.i134, %bb.ba
  store i32 2, ptr %i.q, align 4
  %i.fo = load i64, ptr %i.o, align 8
  %.not.i.i141 = icmp eq i64 %i.fo, 0
  br i1 %.not.i.i141, label %bb.bi, label %bb.bb

bb.bb:                                            ; preds = %__update_runtime_status.exit140
  %i.fp = call i32 @hrtimer_try_to_cancel(ptr noundef %i.p) #7 ; 0 uses
  store i64 0, ptr %i.o, align 8
  br label %bb.bi

bb.bc:                                            ; preds = %rpm_callback.exit, %split, %bb.w
  %.289 = phi ptr [ %.188, %split ], [ %.188, %rpm_callback.exit ], [ null, %bb.w ] ; 3 uses
  %.5 = phi i32 [ 0, %split ], [ 0, %rpm_callback.exit ], [ 1, %bb.w ]
  %i.fq = load i16, ptr %i.m, align 8
  %i.fr = and i16 %i.fq, 7
  %.not.i.i142 = icmp eq i16 %i.fr, 0
  br i1 %.not.i.i142, label %bb.bd, label %update_pm_runtime_accounting.exit.i143

bb.bd:                                            ; preds = %bb.bc
  %i.fs = getelementptr i8, ptr %0, i64 520       ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 8            ; 2 uses
  %i.fu = call i64 @ktime_get_mono_fast_ns() #7   ; 3 uses
  store i64 %i.fu, ptr %i.fs, align 8
  %i.fv = icmp ult i64 %i.fu, %i.ft
  br i1 %i.fv, label %update_pm_runtime_accounting.exit.i143, label %.sink.split.i.i148

.sink.split.i.i148:                               ; preds = %bb.bd
  %i.fw = sub nuw i64 %i.fu, %i.ft
  %i.fx = load i32, ptr %i.q, align 4
  %i.fy = icmp eq i32 %i.fx, 2
  %..i.i149 = select i1 %i.fy, i64 512, i64 504
  %i.fz = getelementptr i8, ptr %0, i64 %..i.i149 ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 8
  %i.gb = add i64 %i.fw, %i.ga
  store i64 %i.gb, ptr %i.fz, align 8
  br label %update_pm_runtime_accounting.exit.i143

update_pm_runtime_accounting.exit.i143:           ; preds = %.sink.split.i.i148, %bb.bd, %bb.bc
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_rpm_status, i64 8), i1 false) #8
          to label %__update_runtime_status.exit150 [label %arch_test_bit.exit.i.i.i144], !srcloc !17

arch_test_bit.exit.i.i.i144:                      ; preds = %update_pm_runtime_accounting.exit.i143
  %i.gc = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #8, !srcloc !26
  %i.gd = zext i32 %i.gc to i64
  %i.ge = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.gd) #8, !srcloc !19 ; 2 uses
  %i.gf = icmp ult i8 %i.ge, 2
  call void @llvm.assume(i1 %i.gf)
  %i.gg = trunc nuw i8 %i.ge to i1
  br i1 %i.gg, label %bb.be, label %__update_runtime_status.exit150

bb.be:                                            ; preds = %arch_test_bit.exit.i.i.i144
  %i.gh = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.gh, ptr elementtype(i64) %i.gh) #8, !srcloc !20
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !21
  %i.gi = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_rpm_status, i64 56), align 8 ; 2 uses
  %.not.i.i.i145 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i145, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gj = getelementptr i8, ptr %i.gi, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = call i32 @__SCT__tp_func_rpm_status(ptr noundef %i.gk, ptr noundef %0, i32 noundef 0) #7 ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !22
  %i.gm = getelementptr i8, ptr %i.gh, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.gm, ptr elementtype(i64) %i.gm) #8, !srcloc !23
  br label %__update_runtime_status.exit150

__update_runtime_status.exit150:                  ; preds = %update_pm_runtime_accounting.exit.i143, %arch_test_bit.exit.i.i.i144, %bb.bg
  store i32 0, ptr %i.q, align 4
  %i.gn = call i64 @ktime_get_mono_fast_ns() #7
  %i.go = getelementptr i8, ptr %0, i64 496
  store volatile i64 %i.gn, ptr %i.go, align 8
  %.not115 = icmp eq ptr %.289, null
  br i1 %.not115, label %.thread162, label %bb.bh

bb.bh:                                            ; preds = %__update_runtime_status.exit150
  %i.gp = getelementptr i8, ptr %.289, i64 460    ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.gp, ptr elementtype(i32) %i.gp) #8, !srcloc !39
  br label %.thread162

.thread162:                                       ; preds = %bb.bh, %__update_runtime_status.exit150
  %i.gq = call i32 @__wake_up(ptr noundef %i.x, i32 noundef 3, i32 noundef 0, ptr noundef null) #7 ; 0 uses
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bb, %__update_runtime_status.exit140
  store i32 0, ptr %i.n, align 8
  call void @dev_pm_enable_wake_irq_check(ptr noundef %0, i1 noundef zeroext false) #7
  %i.gr = call i32 @__wake_up(ptr noundef %i.x, i32 noundef 3, i32 noundef 0, ptr noundef null) #7 ; 0 uses
  %i.gs = icmp sgt i32 %spec.store.select.i, -1
  br i1 %i.gs, label %bb.bj, label %.thread

bb.bj:                                            ; preds = %.thread162, %bb.bi
  %.6166 = phi i32 [ %.5, %.thread162 ], [ %.0.i, %bb.bi ]
  %.390165 = phi ptr [ %.289, %.thread162 ], [ %.188, %bb.bi ]
  %i.gt = call fastcc i32 @rpm_idle(ptr noundef %0, i32 noundef 1) #9, !srcloc !49 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %pm_runtime_deactivate_timer.exit, %.outer.backedge, %pm_runtime_deactivate_timer.exit.us, %bb.l, %trace_rpm_resume.exit, %bb.n, %bb.m, %.thread157, %bb.bi, %bb.bj
  %.491 = phi ptr [ %.087.ph372, %bb.m ], [ %.087.ph372, %bb.n ], [ %.087.ph372, %.thread157 ], [ null, %trace_rpm_resume.exit ], [ %.390165, %bb.bj ], [ %.188, %bb.bi ], [ %.087.ph372, %pm_runtime_deactivate_timer.exit.us ], [ %.087.ph372, %bb.l ], [ %i.ca, %.outer.backedge ], [ %.087.ph372, %pm_runtime_deactivate_timer.exit ] ; 2 uses
  %.7 = phi i32 [ 1, %bb.m ], [ %spec.select174, %bb.n ], [ %.3.ph, %.thread157 ], [ -22, %trace_rpm_resume.exit ], [ %.6166, %bb.bj ], [ %spec.store.select.i, %bb.bi ], [ 1, %pm_runtime_deactivate_timer.exit.us ], [ -22, %bb.l ], [ -22, %.outer.backedge ], [ 1, %pm_runtime_deactivate_timer.exit ] ; 2 uses
  %.not122 = icmp eq ptr %.491, null
  br i1 %.not122, label %.thread.thread, label %.thread167

.thread167:                                       ; preds = %bb.af, %.thread
  %.7172 = phi i32 [ %.7, %.thread ], [ -16, %bb.af ] ; 2 uses
  %.491171 = phi ptr [ %.491, %.thread ], [ %i.ca, %bb.af ]
  %i.gu = load i16, ptr %i.m, align 8
  %i.gv = and i16 %i.gu, 1024
  %.not123 = icmp eq i16 %i.gv, 0
  br i1 %.not123, label %bb.bk, label %.thread.thread

bb.bk:                                            ; preds = %.thread167
  call void @_raw_spin_unlock_irq(ptr noundef %i.w) #7
  %i.gw = call i32 @__pm_runtime_idle(ptr noundef nonnull %.491171, i32 noundef 5) #9, !inline_history !50 ; 0 uses
  call void @_raw_spin_lock_irq(ptr noundef %i.w) #7
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.z, %bb.aa, %bb.bk, %.thread167, %.thread
  %.7173 = phi i32 [ %.7172, %bb.bk ], [ %.7172, %.thread167 ], [ %.7, %.thread ], [ 0, %bb.aa ], [ 0, %bb.z ] ; 2 uses
  %i.gx = tail call i64 asm "lea 0(%rip), $0", "=r,~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !51
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_rpm_return_int, i64 8), i1 false) #8
          to label %trace_rpm_return_int.exit [label %arch_test_bit.exit.i.i151], !srcloc !17

arch_test_bit.exit.i.i151:                        ; preds = %.thread.thread
  %i.gy = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #8, !srcloc !37
  %i.gz = zext i32 %i.gy to i64
  %i.ha = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.gz) #8, !srcloc !19 ; 2 uses
  %i.hb = icmp ult i8 %i.ha, 2
  call void @llvm.assume(i1 %i.hb)
  %i.hc = trunc nuw i8 %i.ha to i1
  br i1 %i.hc, label %bb.bl, label %trace_rpm_return_int.exit

bb.bl:                                            ; preds = %arch_test_bit.exit.i.i151
  %i.hd = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.hd, ptr elementtype(i64) %i.hd) #8, !srcloc !20
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !21
  %i.he = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_rpm_return_int, i64 56), align 8 ; 2 uses
  %.not.i.i152 = icmp eq ptr %i.he, null
  br i1 %.not.i.i152, label %bb.bn, label %bb.bm
end_hunk_1
