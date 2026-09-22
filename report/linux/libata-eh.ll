Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/libata-eh?download=true
inline.NumInlined: 312
inline.NumDeleted: 119
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 13
begin_hunk_0_@ata_eh_reset:bb.a
  br label %bb.dm

bb.dk:                                            ; preds = %bb.dj
  %i.op = load i32, ptr %i.oo, align 4
  %i.oq = icmp eq i32 %i.op, 0
  br i1 %i.oq, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  store i32 11, ptr %i.oo, align 4
  br label %bb.dm

bb.dm:                                            ; preds = %bb.di, %bb.dh, %bb.dk, %bb.dl, %ata_class_enabled.exit
  %.1363 = phi i32 [ %i.oi, %bb.di ], [ %.0362540, %bb.dh ], [ %.0362540, %ata_class_enabled.exit ], [ %.0362540, %bb.dl ], [ %.0362540, %bb.dk ] ; 6 uses
  %i.or = call ptr @ata_dev_next(ptr noundef nonnull %.4541, ptr noundef %1, i32 noundef 2) #16 ; 2 uses
  %.not415 = icmp eq ptr %i.or, null
  br i1 %.not415, label %._crit_edge544, label %.lr.ph543, !llvm.loop !106

._crit_edge544:                                   ; preds = %bb.dm
  %i.os = icmp ne i32 %.1363, 0
  %or.cond5 = select i1 %i.dc, i1 %i.os, i1 false
  br i1 %or.cond5, label %bb.dn, label %.loopexit

bb.dn:                                            ; preds = %._crit_edge544
  %i.ot = icmp samesign ult i64 %indvars.iv.next, %i.df
  %i.ou = load ptr, ptr %1, align 64              ; 7 uses
  %i.ov = getelementptr i8, ptr %i.ou, i64 15816
  %.val435 = load i32, ptr %i.ov, align 8
  %.not518 = icmp eq i32 %.val435, 0              ; 2 uses
  br i1 %i.ot, label %bb.do, label %bb.ds

bb.do:                                            ; preds = %bb.dn
  br i1 %.not518, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.ow = getelementptr i8, ptr %i.ou, i64 15808
  %i.ox = load ptr, ptr %i.ow, align 64
  %.not417 = icmp eq ptr %i.ox, null
  br i1 %.not417, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.do, %bb.dp
  %i.oy = getelementptr i8, ptr %i.ou, i64 36
  %i.oz = load i32, ptr %i.oy, align 4
  %i.pa = load i32, ptr %i.cv, align 8
  %i.pb = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, i32 noundef %i.oz, i32 noundef %i.pa, i32 noundef %.1363) #19 ; 0 uses
  br label %bb.ea

bb.dr:                                            ; preds = %bb.dp
  %i.pc = getelementptr i8, ptr %i.ou, i64 36
  %i.pd = load i32, ptr %i.pc, align 4
  %i.pe = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, i32 noundef %i.pd, i32 noundef %.1363) #19 ; 0 uses
  br label %bb.ea

bb.ds:                                            ; preds = %bb.dn
  br i1 %.not518, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.pf = getelementptr i8, ptr %i.ou, i64 15808
  %i.pg = load ptr, ptr %i.pf, align 64
  %.not416 = icmp eq ptr %i.pg, null
  br i1 %.not416, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.ds, %bb.dt
  %i.ph = getelementptr i8, ptr %i.ou, i64 36
  %i.pi = load i32, ptr %i.ph, align 4
  %i.pj = load i32, ptr %i.cv, align 8
  %i.pk = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, i32 noundef %i.pi, i32 noundef %i.pj, i32 noundef %.1363) #19 ; 0 uses
  br label %.loopexit

bb.dv:                                            ; preds = %bb.dt
  %i.pl = getelementptr i8, ptr %i.ou, i64 36
  %i.pm = load i32, ptr %i.pl, align 4
  %i.pn = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, i32 noundef %i.pm, i32 noundef %.1363) #19 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.dg, %._crit_edge544, %bb.du, %bb.dv
  call void @ata_eh_done(ptr noundef %1, ptr noundef null, i32 noundef 6) #17
  br i1 %.not, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %.loopexit
  call void @ata_eh_done(ptr noundef nonnull %i.c, ptr noundef null, i32 noundef 6) #17
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %.loopexit
  %i.po = load volatile i64, ptr @jiffies, align 64
  store i64 %i.po, ptr %i.cw, align 8
  %i.pp = load i32, ptr %i.au, align 8
  %i.pq = or i32 %i.pp, 1
  store i32 %i.pq, ptr %i.au, align 8
  %i.pr = getelementptr i8, ptr %1, i64 804
  store i32 0, ptr %i.pr, align 4
  br label %ata_eh_thaw_port.exit500

ata_eh_thaw_port.exit500:                         ; preds = %.lr.ph529, %bb.o, %ata_is_host_link.exit, %ata_is_host_link.exit.thread, %bb.r, %._crit_edge534, %bb.s, %bb.ev, %arch_test_bit.exit.i.i.i496, %bb.es, %ata_is_host_link.exit494, %bb.ef, %bb.eg, %bb.dx
  %.10 = phi i32 [ %.12, %bb.ef ], [ %.12, %bb.eg ], [ -85, %bb.ev ], [ -85, %ata_is_host_link.exit494 ], [ 0, %bb.dx ], [ -85, %bb.es ], [ 0, %bb.o ], [ -85, %arch_test_bit.exit.i.i.i496 ], [ 0, %ata_is_host_link.exit ], [ 0, %ata_is_host_link.exit.thread ], [ %.1365, %bb.r ], [ %.1365, %bb.s ], [ 0, %._crit_edge534 ], [ 0, %.lr.ph529 ]
  %i.ps = load i32, ptr %i.m, align 4
  %i.pt = and i32 %i.ps, -2
  store i32 %i.pt, ptr %i.m, align 4
  br i1 %.not, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %ata_eh_thaw_port.exit500
  %i.pu = getelementptr i8, ptr %i.c, i64 996     ; 2 uses
  %i.pv = load i32, ptr %i.pu, align 4
  %i.pw = and i32 %i.pv, -2
  store i32 %i.pw, ptr %i.pu, align 4
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %ata_eh_thaw_port.exit500
  %i.px = load ptr, ptr %i.af, align 16
  %i.py = call i64 @_raw_spin_lock_irqsave(ptr noundef %i.px) #16
  %i.pz = load i32, ptr %i.ai, align 32
  %i.qa = and i32 %i.pz, -257
  store i32 %i.qa, ptr %i.ai, align 32
  %i.qb = load ptr, ptr %i.af, align 16
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.qb, i64 noundef %i.py) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.10

bb.ea:                                            ; preds = %trace_ata_slave_hardreset_end.exit, %bb.dq, %bb.dr, %trace_ata_link_softreset_end.exit479, %bb.bw, %bb.bx, %trace_ata_link_hardreset_end.exit
  %.11 = phi i32 [ -11, %bb.dq ], [ -22, %bb.bw ], [ %i.ka, %trace_ata_link_softreset_end.exit479 ], [ %i.gh, %trace_ata_link_hardreset_end.exit ], [ -22, %bb.bx ], [ -11, %bb.dr ], [ %i.ia, %trace_ata_slave_hardreset_end.exit ] ; 3 uses
  %.3360 = phi ptr [ %.2359, %bb.dq ], [ null, %bb.bw ], [ %i.g, %trace_ata_link_softreset_end.exit479 ], [ %.1358, %trace_ata_link_hardreset_end.exit ], [ null, %bb.bx ], [ %.2359, %bb.dr ], [ %.1358, %trace_ata_slave_hardreset_end.exit ] ; 3 uses
  %.2353 = phi ptr [ %1, %bb.dq ], [ %1, %bb.bw ], [ %1, %trace_ata_link_softreset_end.exit479 ], [ %1, %trace_ata_link_hardreset_end.exit ], [ %1, %bb.bx ], [ %1, %bb.dr ], [ %i.c, %trace_ata_slave_hardreset_end.exit ] ; 3 uses
  %.2 = phi i32 [ %.1, %bb.dq ], [ %.0347, %bb.bw ], [ %.0347, %trace_ata_link_softreset_end.exit479 ], [ %.0347, %trace_ata_link_hardreset_end.exit ], [ %.0347, %bb.bx ], [ %.1, %bb.dr ], [ %.0347, %trace_ata_slave_hardreset_end.exit ]
  %i.qc = load ptr, ptr %1, align 64              ; 2 uses
  %i.qd = getelementptr i8, ptr %i.qc, i64 8256
  %i.qe = icmp eq ptr %1, %i.qd
  br i1 %i.qe, label %ata_is_host_link.exit490.thread, label %ata_is_host_link.exit490

ata_is_host_link.exit490:                         ; preds = %bb.ea
  %i.qf = getelementptr i8, ptr %i.qc, i64 15808
  %i.qg = load ptr, ptr %i.qf, align 64
  %i.qh = icmp eq ptr %1, %i.qg
  br i1 %i.qh, label %ata_is_host_link.exit490.thread, label %bb.eb

bb.eb:                                            ; preds = %ata_is_host_link.exit490
  %i.qi = call i32 @sata_scr_read(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %i.a) #16
  %.not421 = icmp eq i32 %i.qi, 0
  %spec.select430 = select i1 %.not421, i32 %.11, i32 -85
  br label %ata_is_host_link.exit490.thread

ata_is_host_link.exit490.thread:                  ; preds = %bb.ea, %bb.eb, %ata_is_host_link.exit490
  %.12 = phi i32 [ %.11, %ata_is_host_link.exit490 ], [ %spec.select430, %bb.eb ], [ %.11, %bb.ea ] ; 8 uses
  %i.qj = icmp samesign uge i64 %indvars.iv.next, %i.df
  %i.qk = icmp eq i32 %.12, -19
  %or.cond7 = select i1 %i.qj, i1 true, i1 %i.qk
  br i1 %or.cond7, label %bb.ec, label %bb.eh

bb.ec:                                            ; preds = %ata_is_host_link.exit490.thread
  %i.ql = load ptr, ptr %1, align 64              ; 3 uses
  %i.qm = getelementptr i8, ptr %i.ql, i64 8256
  %i.qn = icmp eq ptr %1, %i.qm
  br i1 %i.qn, label %ata_is_host_link.exit491.thread, label %ata_is_host_link.exit491

ata_is_host_link.exit491:                         ; preds = %bb.ec
  %i.qo = getelementptr i8, ptr %i.ql, i64 15808
  %i.qp = load ptr, ptr %i.qo, align 64
  %i.qq = icmp eq ptr %1, %i.qp
  br i1 %i.qq, label %ata_is_host_link.exit491.thread, label %bb.ed

ata_is_host_link.exit491.thread:                  ; preds = %bb.ec, %ata_is_host_link.exit491
  call void @ata_eh_thaw_port(ptr noundef %0) #17
  %.pre554 = load ptr, ptr %1, align 64
  br label %bb.ed

bb.ed:                                            ; preds = %ata_is_host_link.exit491, %ata_is_host_link.exit491.thread
  %i.qr = phi ptr [ %i.ql, %ata_is_host_link.exit491 ], [ %.pre554, %ata_is_host_link.exit491.thread ] ; 4 uses
  %i.qs = getelementptr i8, ptr %i.qr, i64 15816
  %.val433 = load i32, ptr %i.qs, align 8
  %.not520 = icmp eq i32 %.val433, 0
  br i1 %.not520, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.qt = getelementptr i8, ptr %i.qr, i64 15808
  %i.qu = load ptr, ptr %i.qt, align 64
  %.not424 = icmp eq ptr %i.qu, null
  br i1 %.not424, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ed, %bb.ee
  %i.qv = getelementptr i8, ptr %i.qr, i64 36
  %i.qw = load i32, ptr %i.qv, align 4
  %i.qx = load i32, ptr %i.cv, align 8
  %i.qy = icmp eq ptr %.3360, %.0345
  %i.qz = select i1 %i.qy, ptr @.str.121, ptr @.str.122
  %i.ra = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i32 noundef %i.qw, i32 noundef %i.qx, ptr noundef nonnull %i.qz) #19 ; 0 uses
  br label %ata_eh_thaw_port.exit500

bb.eg:                                            ; preds = %bb.ee
  %i.rb = getelementptr i8, ptr %i.qr, i64 36
  %i.rc = load i32, ptr %i.rb, align 4
  %i.rd = icmp eq ptr %.3360, %.0345
  %i.re = select i1 %i.rd, ptr @.str.121, ptr @.str.122
  %i.rf = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, i32 noundef %i.rc, ptr noundef nonnull %i.re) #19 ; 0 uses
  br label %ata_eh_thaw_port.exit500

bb.eh:                                            ; preds = %ata_is_host_link.exit490.thread
  %i.rg = load volatile i64, ptr @jiffies, align 64 ; 2 uses
  %i.rh = sub i64 %i.rg, %i.ek
  %i.ri = icmp slt i64 %i.rh, 0
  br i1 %i.ri, label %bb.ei, label %bb.ep

bb.ei:                                            ; preds = %bb.eh
  %i.rj = sub i64 %i.ek, %i.rg                    ; 4 uses
  %i.rk = load ptr, ptr %.2353, align 64          ; 4 uses
  %i.rl = getelementptr i8, ptr %i.rk, i64 15816
  %.val432 = load i32, ptr %i.rl, align 8
  %.not519 = icmp eq i32 %.val432, 0
  br i1 %.not519, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.rm = getelementptr i8, ptr %i.rk, i64 15808
  %i.rn = load ptr, ptr %i.rm, align 64
  %.not422 = icmp eq ptr %i.rn, null
  br i1 %.not422, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ei, %bb.ej
  %i.ro = getelementptr i8, ptr %i.rk, i64 36
  %i.rp = load i32, ptr %i.ro, align 4
  %i.rq = getelementptr i8, ptr %.2353, i64 8
  %i.rr = load i32, ptr %i.rq, align 8
  %i.rs = trunc i64 %i.rj to i32
  %i.rt = add i32 %i.rs, 999
  %i.ru = udiv i32 %i.rt, 1000
  %i.rv = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, i32 noundef %i.rp, i32 noundef %i.rr, i32 noundef %.12, i32 noundef %i.ru) #19 ; 0 uses
  br label %bb.em

bb.el:                                            ; preds = %bb.ej
  %i.rw = getelementptr i8, ptr %i.rk, i64 36
  %i.rx = load i32, ptr %i.rw, align 4
  %i.ry = trunc i64 %i.rj to i32
  %i.rz = add i32 %i.ry, 999
  %i.sa = udiv i32 %i.rz, 1000
  %i.sb = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, i32 noundef %i.rx, i32 noundef %.12, i32 noundef %i.sa) #19 ; 0 uses
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %i.sc = load ptr, ptr %i.dd, align 8            ; 2 uses
  %i.sd = getelementptr i8, ptr %i.sc, i64 88
  %i.se = load ptr, ptr %i.sd, align 8
  %i.sf = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #18, !srcloc !26
  %i.sg = inttoptr i64 %i.sf to ptr               ; 2 uses
  %.not.i492 = icmp eq ptr %i.se, %i.sg
  br i1 %.not.i492, label %ata_eh_release.exit, label %bb.en, !prof !22

bb.en:                                            ; preds = %bb.em
  call void asm sideeffect "839: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 839b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 839) #15, !srcloc !27
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 500, i32 2307, i64 16) #15, !srcloc !28
  call void asm sideeffect "840: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 840b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 840) #15, !srcloc !29
  %.pre.i = load ptr, ptr %i.dd, align 8
  br label %ata_eh_release.exit

ata_eh_release.exit:                              ; preds = %bb.em, %bb.en
  %i.sh = phi ptr [ %.pre.i, %bb.en ], [ %i.sc, %bb.em ]
  %i.si = getelementptr i8, ptr %i.sh, i64 88
  store ptr null, ptr %i.si, align 8
  %i.sj = load ptr, ptr %i.dd, align 8
  %i.sk = getelementptr i8, ptr %i.sj, i64 64
  call void @mutex_unlock(ptr noundef %i.sk) #16
  %.not423545 = icmp eq i64 %i.rj, 0
  br i1 %.not423545, label %._crit_edge548, label %.lr.ph547

.lr.ph547:                                        ; preds = %ata_eh_release.exit, %.lr.ph547
  %.0344546 = phi i64 [ %i.sl, %.lr.ph547 ], [ %i.rj, %ata_eh_release.exit ]
  %i.sl = call i64 @schedule_timeout_uninterruptible(i64 noundef %.0344546) #16 ; 2 uses
  %.not423 = icmp eq i64 %i.sl, 0
  br i1 %.not423, label %._crit_edge548, label %.lr.ph547, !llvm.loop !107

._crit_edge548:                                   ; preds = %.lr.ph547, %ata_eh_release.exit
  %i.sm = load ptr, ptr %i.dd, align 8
  %i.sn = getelementptr i8, ptr %i.sm, i64 64
  call void @mutex_lock(ptr noundef %i.sn) #16
  %i.so = load ptr, ptr %i.dd, align 8            ; 2 uses
  %i.sp = getelementptr i8, ptr %i.so, i64 88
  %i.sq = load ptr, ptr %i.sp, align 8
  %.not.i493 = icmp eq ptr %i.sq, null
  br i1 %.not.i493, label %ata_eh_acquire.exit, label %bb.eo, !prof !22

bb.eo:                                            ; preds = %._crit_edge548
  call void asm sideeffect "837: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 837b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 837) #15, !srcloc !23
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 483, i32 2307, i64 16) #15, !srcloc !24
  call void asm sideeffect "838: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 838b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 838) #15, !srcloc !25
  %.pre553 = load ptr, ptr %i.dd, align 8
  br label %ata_eh_acquire.exit

ata_eh_acquire.exit:                              ; preds = %._crit_edge548, %bb.eo
  %i.sr = phi ptr [ %i.so, %._crit_edge548 ], [ %.pre553, %bb.eo ]
  %i.ss = getelementptr i8, ptr %i.sr, i64 88
  store ptr %i.sg, ptr %i.ss, align 8
  br label %bb.ep

bb.ep:                                            ; preds = %ata_eh_acquire.exit, %bb.eh
  %i.st = icmp eq i32 %.12, -85
  br i1 %i.st, label %bb.eq, label %bb.ew

bb.eq:                                            ; preds = %bb.ep
  %i.su = load ptr, ptr %1, align 64              ; 2 uses
  %i.sv = getelementptr i8, ptr %i.su, i64 8256
  %i.sw = icmp eq ptr %1, %i.sv
  br i1 %i.sw, label %ata_is_host_link.exit494.thread, label %ata_is_host_link.exit494

ata_is_host_link.exit494:                         ; preds = %bb.eq
  %i.sx = getelementptr i8, ptr %i.su, i64 15808
  %i.sy = load ptr, ptr %i.sx, align 64
  %i.sz = icmp eq ptr %1, %i.sy
  br i1 %i.sz, label %ata_is_host_link.exit494.thread, label %ata_eh_thaw_port.exit500

ata_is_host_link.exit494.thread:                  ; preds = %bb.eq, %ata_is_host_link.exit494
  %i.ta = load ptr, ptr %i.af, align 16
  %i.tb = call i64 @_raw_spin_lock_irqsave(ptr noundef %i.ta) #16
  %i.tc = load i32, ptr %i.ai, align 32
  %i.td = and i32 %i.tc, -5
  store i32 %i.td, ptr %i.ai, align 32
  %i.te = load ptr, ptr %i.cu, align 8
  %i.tf = getelementptr i8, ptr %i.te, i64 112
  %i.tg = load ptr, ptr %i.tf, align 8            ; 2 uses
  %.not.i495 = icmp eq ptr %i.tg, null
  br i1 %.not.i495, label %bb.es, label %bb.er

bb.er:                                            ; preds = %ata_is_host_link.exit494.thread
  call void %i.tg(ptr noundef %0) #16, !inline_history !117
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %ata_is_host_link.exit494.thread
  %i.th = load ptr, ptr %i.af, align 16
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.th, i64 noundef %i.tb) #16
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_ata_port_thaw, i64 8), i1 false) #15
          to label %ata_eh_thaw_port.exit500 [label %arch_test_bit.exit.i.i.i496], !srcloc !30

arch_test_bit.exit.i.i.i496:                      ; preds = %bb.es
  %i.ti = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #15, !srcloc !40
  %i.tj = zext i32 %i.ti to i64
  %i.tk = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.tj) #15, !srcloc !32 ; 2 uses
  %i.tl = icmp ult i8 %i.tk, 2
  call void @llvm.assume(i1 %i.tl)
  %i.tm = trunc nuw i8 %i.tk to i1
  br i1 %i.tm, label %bb.et, label %ata_eh_thaw_port.exit500

bb.et:                                            ; preds = %arch_test_bit.exit.i.i.i496
  %i.tn = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.tn, ptr elementtype(i64) %i.tn) #15, !srcloc !33
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !34
  %i.to = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_ata_port_thaw, i64 56), align 8 ; 2 uses
  %.not.i.i.i497 = icmp eq ptr %i.to, null
  br i1 %.not.i.i.i497, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.tp = getelementptr i8, ptr %i.to, i64 8
  %i.tq = load ptr, ptr %i.tp, align 8
  %i.tr = call i32 @__SCT__tp_func_ata_port_thaw(ptr noundef %i.tq, ptr noundef %0) #16 ; 0 uses
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !35
  %i.ts = getelementptr i8, ptr %i.tn, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ts, ptr elementtype(i64) %i.ts) #15, !srcloc !36
  br label %ata_eh_thaw_port.exit500

bb.ew:                                            ; preds = %bb.ep
  %i.tt = icmp eq i64 %indvars.iv, %i.dg
  br i1 %i.tt, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.tu = call i32 @sata_down_spd_limit(ptr noundef %1, i32 noundef 0) #16 ; 0 uses
  br i1 %.not, label %bb.ez, label %.sink.split607

bb.ey:                                            ; preds = %bb.ew
  %i.tv = icmp eq i32 %.12, -32
  br i1 %i.tv, label %.sink.split607, label %bb.ez

.sink.split607:                                   ; preds = %bb.ey, %bb.ex
  %.2353.sink = phi ptr [ %i.c, %bb.ex ], [ %.2353, %bb.ey ]
  %i.tw = call i32 @sata_down_spd_limit(ptr noundef %.2353.sink, i32 noundef 0) #16 ; 0 uses
  br label %bb.ez

bb.ez:                                            ; preds = %.sink.split607, %bb.ey, %bb.ex
  %spec.select431 = select i1 %.not394, ptr %.3360, ptr %.0345
  br label %bb.y
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @schedule_timeout_uninterruptible(i64 noundef) local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @ata_phys_link_offline(ptr noundef) local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @ata_dev_phys_link(ptr noundef) local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @sata_scr_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @ata_phys_link_online(ptr noundef) local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @sata_down_spd_limit(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @ata_link_nr_enabled(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @ata_dev_next(ptr noundef null, ptr noundef %0, i32 noundef 0) #16 ; 2 uses
  %.not6 = icmp eq ptr %i.a, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.08 = phi i32 [ %i.b, %.lr.ph ], [ 0, %bb.a ]
  %.057 = phi ptr [ %i.c, %.lr.ph ], [ %i.a, %bb.a ]
  %i.b = add i32 %.08, 1                          ; 2 uses
  %i.c = tail call ptr @ata_dev_next(ptr noundef nonnull %.057, ptr noundef %0, i32 noundef 0) #16 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !8

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.b, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @ata_eh_recover(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.ata_taskfile, align 8       ; 10 uses
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %4 = alloca %struct.ata_taskfile, align 8       ; 10 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  %5 = alloca %struct.ata_taskfile, align 8       ; 10 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %6 = alloca %struct.ata_taskfile, align 8       ; 8 uses
  %7 = alloca %struct.ata_taskfile, align 8       ; 12 uses
  %i.d = alloca ptr, align 8                      ; 36 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store ptr null, ptr %i.d, align 8, !annotation !19
  %i.e = tail call ptr @ata_link_next(ptr noundef null, ptr noundef %0, i32 noundef 0) #16 ; 2 uses
  %.not365 = icmp eq ptr %i.e, null
  br i1 %.not365, label %.preheader334, label %.lr.ph368

.lr.ph368:                                        ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 16         ; 2 uses
  br label %bb.b

.preheader334:                                    ; preds = %._crit_edge, %bb.a
  %i.g = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 16896      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 9
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 15
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 17 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 18
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 19
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 21
  %i.r = getelementptr i8, ptr %0, i64 15864      ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 9
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 21
  %i.w = getelementptr i8, ptr %0, i64 15816      ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 9
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 21
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 9
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 21
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 15
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 18
end_hunk_0
