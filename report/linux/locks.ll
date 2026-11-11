Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/locks?download=true
inline.NumInlined: 481
inline.NumDeleted: 157
begin_hunk_0_@__break_lease:bb.a
  br i1 %.not.i3.i.i.i.i, label %__hlist_del.exit.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dt = getelementptr i8, ptr %i.ds, i64 8
  store volatile ptr %.val.i.i.i.i, ptr %i.dt, align 8
  br label %__hlist_del.exit.i.i.i.i

__hlist_del.exit.i.i.i.i:                         ; preds = %bb.aj, %bb.ai
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.dj, i8 0, i64 16, i1 false)
  br label %hlist_del_init.exit.i.i.i

hlist_del_init.exit.i.i.i:                        ; preds = %__hlist_del.exit.i.i.i.i, %bb.ah
  call void @_raw_spin_unlock(ptr noundef %i.dr) #15
  br label %locks_delete_lock_ctx.exit

locks_delete_lock_ctx.exit:                       ; preds = %bb.ag, %hlist_del_init.exit.i.i.i
  %i.du = getelementptr i8, ptr %.pn.in221, i64 8 ; 3 uses
  %i.dv = load ptr, ptr %i.du, align 8            ; 2 uses
  %i.dw = load ptr, ptr %.pn.in221, align 8       ; 2 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 8
  store ptr %i.dv, ptr %i.dx, align 8
  store volatile ptr %i.dw, ptr %i.dv, align 8
  store volatile ptr %.pn.in221, ptr %.pn.in221, align 8
  store volatile ptr %.pn.in221, ptr %i.du, align 8
  call fastcc void @locks_wake_up_blocks(ptr noundef %.0120222) #18, !srcloc !43
  %i.dy = load ptr, ptr %2, align 8               ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 8
  store ptr %.pn.in221, ptr %i.dz, align 8
  store ptr %i.dy, ptr %.pn.in221, align 8
  store ptr %2, ptr %i.du, align 8
  store volatile ptr %.pn.in221, ptr %2, align 8
  br label %leases_conflict.exit.thread

leases_conflict.exit.thread:                      ; preds = %bb.ac, %bb.aa, %bb.y, %bb.p, %.split, %bb.af, %locks_delete_lock_ctx.exit, %bb.ae, %bb.ad, %leases_conflict.exit
  %.not213 = icmp eq ptr %.pn223, %i.bk
  br i1 %.not213, label %._crit_edge, label %bb.o, !llvm.loop !117

._crit_edge:                                      ; preds = %leases_conflict.exit.thread, %bb.n
  %i.ea = call fastcc ptr @first_visible_lease(ptr noundef %0, ptr noundef nonnull %i.s, i32 noundef %1) #18, !srcloc !124 ; 2 uses
  %.not146 = icmp eq ptr %i.ea, null
  br i1 %.not146, label %trace_break_lease_noblock.exit, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge
  %i.eb = and i64 %i.b, 8
  %.not147 = icmp eq i64 %i.eb, 0
  br i1 %.not147, label %.preheader, label %bb.al

bb.al:                                            ; preds = %bb.ak
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_break_lease_noblock, i64 8), i1 false) #16
          to label %trace_break_lease_noblock.exit [label %arch_test_bit.exit.i.i172], !srcloc !48

arch_test_bit.exit.i.i172:                        ; preds = %bb.al
  %i.ec = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #16, !srcloc !125
  %i.ed = zext i32 %i.ec to i64
  %i.ee = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.ed) #16, !srcloc !49 ; 2 uses
  %i.ef = icmp ult i8 %i.ee, 2
  call void @llvm.assume(i1 %i.ef)
  %i.eg = trunc nuw i8 %i.ee to i1
  br i1 %i.eg, label %bb.am, label %trace_break_lease_noblock.exit

bb.am:                                            ; preds = %arch_test_bit.exit.i.i172
  %i.eh = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.eh, ptr elementtype(i64) %i.eh) #16, !srcloc !50
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !51
  %i.ei = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_break_lease_noblock, i64 56), align 8 ; 2 uses
  %.not.i.i173 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i173, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ej = getelementptr i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = call i32 @__SCT__tp_func_break_lease_noblock(ptr noundef %i.ek, ptr noundef %0, ptr noundef nonnull %i.s) #15 ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !52
  %i.em = getelementptr i8, ptr %i.eh, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.em, ptr elementtype(i64) %i.em) #16, !srcloc !53
  br label %trace_break_lease_noblock.exit

.preheader:                                       ; preds = %bb.ak, %bb.bo
  %.1 = phi ptr [ %i.hj, %bb.bo ], [ %i.ea, %bb.ak ] ; 3 uses
  %i.en = getelementptr i8, ptr %.1, i64 136      ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8            ; 3 uses
  %.not148 = icmp eq i64 %i.eo, 0
  br i1 %.not148, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %.preheader
  %i.ep = load volatile i64, ptr @jiffies, align 64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = icmp slt i64 %i.eq, 0
  %i.es = load volatile i64, ptr @jiffies, align 64 ; 2 uses
  br i1 %i.er, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.et = load i32, ptr @lease_break_time, align 4
  %i.eu = mul i32 %i.et, 1000
  %i.ev = sext i32 %i.eu to i64                   ; 2 uses
  %i.ew = add i64 %i.es, %i.ev
  store i64 %i.ew, ptr %i.en, align 8
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.ex = sub i64 %i.eo, %i.es
  br label %bb.as

bb.as:                                            ; preds = %.preheader, %bb.aq, %bb.ar
  %.1126 = phi i64 [ %i.ev, %bb.aq ], [ %i.ex, %bb.ar ], [ 1, %.preheader ] ; 3 uses
  call void @_raw_spin_lock(ptr noundef @blocked_lock_lock) #15
  call fastcc void @__locks_insert_block(ptr noundef nonnull %.1, ptr noundef nonnull %i.s, ptr noundef @leases_conflict) #18, !srcloc !59
  call void @_raw_spin_unlock(ptr noundef @blocked_lock_lock) #15
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_break_lease_block, i64 8), i1 false) #16
          to label %trace_break_lease_block.exit [label %arch_test_bit.exit.i.i176], !srcloc !48

arch_test_bit.exit.i.i176:                        ; preds = %bb.as
  %i.ey = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #16, !srcloc !126
  %i.ez = zext i32 %i.ey to i64
  %i.fa = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.ez) #16, !srcloc !49 ; 2 uses
  %i.fb = icmp ult i8 %i.fa, 2
  call void @llvm.assume(i1 %i.fb)
  %i.fc = trunc nuw i8 %i.fa to i1
  br i1 %i.fc, label %bb.at, label %trace_break_lease_block.exit

bb.at:                                            ; preds = %arch_test_bit.exit.i.i176
  %i.fd = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.fd, ptr elementtype(i64) %i.fd) #16, !srcloc !50
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !51
  %i.fe = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_break_lease_block, i64 56), align 8 ; 2 uses
  %.not.i.i177 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i177, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ff = getelementptr i8, ptr %i.fe, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = call i32 @__SCT__tp_func_break_lease_block(ptr noundef %i.fg, ptr noundef %0, ptr noundef nonnull %.1) #15 ; 0 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !52
  %i.fi = getelementptr i8, ptr %i.fd, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.fi, ptr elementtype(i64) %i.fi) #16, !srcloc !53
  br label %trace_break_lease_block.exit

trace_break_lease_block.exit:                     ; preds = %bb.as, %arch_test_bit.exit.i.i176, %bb.av
  call void @_raw_spin_unlock(ptr noundef nonnull %i.at) #15
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @__preempt_count, ptr elementtype(i32) @__preempt_count) #16, !srcloc !17
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !39
  %i.fj = load volatile i32, ptr @file_rwsem, align 8
  %.not.i.i180 = icmp eq i32 %i.fj, 0
  br i1 %.not.i.i180, label %bb.aw, label %bb.ax, !prof !19

bb.aw:                                            ; preds = %trace_break_lease_block.exit
  %i.fk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @file_rwsem, i64 48), align 8 ; 2 uses
  call void asm sideeffect "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.fk, ptr elementtype(i32) %i.fk) #16, !srcloc !40
  br label %bb.ay

bb.ax:                                            ; preds = %trace_break_lease_block.exit
  call void @__percpu_up_read(ptr noundef @file_rwsem) #15
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !41
  %i.fl = call i8 asm sideeffect "decl %gs:$0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @__preempt_count, ptr elementtype(i32) @__preempt_count) #16, !srcloc !23 ; 2 uses
  %i.fm = icmp ult i8 %i.fl, 2
  call void @llvm.assume(i1 %i.fm)
  %i.fn = trunc nuw i8 %i.fl to i1
  br i1 %i.fn, label %bb.az, label %percpu_up_read.exit, !prof !20

bb.az:                                            ; preds = %bb.ay
  %i.fo = call i64 @llvm.read_register.i64(metadata !5)
  %i.fp = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.fo) #16, !srcloc !42
  call void @llvm.write_register.i64(metadata !5, i64 %i.fp)
  br label %percpu_up_read.exit

percpu_up_read.exit:                              ; preds = %bb.ay, %bb.az
  %i.fq = load volatile ptr, ptr %2, align 8      ; 2 uses
  %.not6.i181 = icmp eq ptr %i.fq, %2
  br i1 %.not6.i181, label %lease_dispose_list.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %percpu_up_read.exit, %.lr.ph.i
  %i.fr = phi ptr [ %i.fy, %.lr.ph.i ], [ %i.fq, %percpu_up_read.exit ] ; 6 uses
  %i.fs = getelementptr i8, ptr %i.fr, i64 -8
  %i.ft = getelementptr i8, ptr %i.fr, i64 8      ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8            ; 2 uses
  %i.fv = load ptr, ptr %i.fr, align 8            ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 8
  store ptr %i.fu, ptr %i.fw, align 8
  store volatile ptr %i.fv, ptr %i.fu, align 8
  store volatile ptr %i.fr, ptr %i.fr, align 8
  store volatile ptr %i.fr, ptr %i.ft, align 8
  %i.fx = load ptr, ptr @filelease_cache, align 8
  call void @kmem_cache_free(ptr noundef %i.fx, ptr noundef %i.fs) #15
  %i.fy = load volatile ptr, ptr %2, align 8      ; 2 uses
  %.not.i182 = icmp eq ptr %i.fy, %2
  br i1 %.not.i182, label %lease_dispose_list.exit, label %.lr.ph.i, !llvm.loop !4

lease_dispose_list.exit:                          ; preds = %.lr.ph.i, %percpu_up_read.exit
  %i.fz = call i32 @__SCT__might_resched() #15    ; 0 uses
  %i.ga = load volatile ptr, ptr %i.y, align 8
  %i.gb = icmp ne ptr %i.ga, %i.y                 ; 2 uses
  %i.gc = icmp ne i64 %.1126, 0
  %or.cond = select i1 %i.gb, i1 true, i1 %i.gc
  %spec.store.select = select i1 %or.cond, i64 %.1126, i64 1 ; 2 uses
  %.not = icmp ne i64 %spec.store.select, 0
  %spec.select158.not = select i1 %i.gb, i1 %.not, i1 false
  br i1 %spec.select158.not, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %lease_dispose_list.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false), !annotation !21
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #15
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bd, %bb.ba
  %.0122 = phi i64 [ %.1126, %bb.ba ], [ %spec.store.select9, %bb.bd ] ; 2 uses
  %i.gd = call i64 @prepare_to_wait_event(ptr noundef %i.aa, ptr noundef nonnull %3, i32 noundef 1) #15 ; 2 uses
  %i.ge = load volatile ptr, ptr %i.y, align 8
  %i.gf = icmp ne ptr %i.ge, %i.y                 ; 2 uses
  %i.gg = icmp ne i64 %.0122, 0
  %or.cond4 = select i1 %i.gf, i1 true, i1 %i.gg
  %spec.store.select8 = select i1 %or.cond4, i64 %.0122, i64 1 ; 3 uses
  %.not151 = icmp ne i64 %spec.store.select8, 0
  %spec.select159.not = select i1 %i.gf, i1 %.not151, i1 false
  br i1 %spec.select159.not, label %bb.bc, label %select.unfold

bb.bc:                                            ; preds = %bb.bb
  %.not152 = icmp eq i64 %i.gd, 0
  br i1 %.not152, label %bb.bd, label %.thread210

bb.bd:                                            ; preds = %bb.bc
  %i.gh = call i64 @schedule_timeout(i64 noundef %spec.store.select8) #15 ; 2 uses
  %i.gi = load volatile ptr, ptr %i.y, align 8
  %i.gj = icmp ne ptr %i.gi, %i.y                 ; 2 uses
  %i.gk = icmp ne i64 %i.gh, 0
  %or.cond7 = select i1 %i.gj, i1 true, i1 %i.gk
  %spec.store.select9 = select i1 %or.cond7, i64 %i.gh, i64 1 ; 3 uses
  %.not154 = icmp ne i64 %spec.store.select9, 0
  %spec.select160.not = select i1 %i.gj, i1 %.not154, i1 false
  br i1 %spec.select160.not, label %bb.bb, label %select.unfold

select.unfold:                                    ; preds = %bb.bd, %bb.bb
  %.1123.ph = phi i64 [ %spec.store.select8, %bb.bb ], [ %spec.store.select9, %bb.bd ]
  call void @finish_wait(ptr noundef %i.aa, ptr noundef nonnull %3) #15
  br label %.thread210

.thread210:                                       ; preds = %bb.bc, %select.unfold
  %.1123208 = phi i64 [ %.1123.ph, %select.unfold ], [ %i.gd, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.be

bb.be:                                            ; preds = %.thread210, %lease_dispose_list.exit
  %.0124 = phi i64 [ %spec.store.select, %lease_dispose_list.exit ], [ %.1123208, %.thread210 ]
  %i.gl = trunc i64 %.0124 to i32                 ; 3 uses
  %i.gm = call i32 @__SCT__might_resched() #15    ; 0 uses
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @__preempt_count, ptr elementtype(i32) @__preempt_count) #16, !srcloc !17
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !35
  %i.gn = load volatile i32, ptr @file_rwsem, align 8
  %.not.i.i.i183 = icmp eq i32 %i.gn, 0
  br i1 %.not.i.i.i183, label %bb.bf, label %bb.bg, !prof !19

bb.bf:                                            ; preds = %bb.be
  %i.go = load ptr, ptr getelementptr inbounds nuw (i8, ptr @file_rwsem, i64 48), align 8 ; 2 uses
  call void asm sideeffect "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.go, ptr elementtype(i32) %i.go) #16, !srcloc !36
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.gp = call zeroext i1 @__percpu_down_read(ptr noundef @file_rwsem, i1 noundef zeroext false, i1 noundef zeroext false) #15 ; 0 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !37
  %i.gq = call i8 asm sideeffect "decl %gs:$0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @__preempt_count, ptr elementtype(i32) @__preempt_count) #16, !srcloc !23 ; 2 uses
  %i.gr = icmp ult i8 %i.gq, 2
  call void @llvm.assume(i1 %i.gr)
  %i.gs = trunc nuw i8 %i.gq to i1
  br i1 %i.gs, label %bb.bi, label %percpu_down_read.exit184, !prof !20

bb.bi:                                            ; preds = %bb.bh
  %i.gt = call i64 @llvm.read_register.i64(metadata !5)
  %i.gu = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.gt) #16, !srcloc !38
  call void @llvm.write_register.i64(metadata !5, i64 %i.gu)
  br label %percpu_down_read.exit184

percpu_down_read.exit184:                         ; preds = %bb.bh, %bb.bi
  call void @_raw_spin_lock(ptr noundef nonnull %i.at) #15
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_break_lease_unblock, i64 8), i1 false) #16
          to label %trace_break_lease_unblock.exit [label %arch_test_bit.exit.i.i185], !srcloc !48

arch_test_bit.exit.i.i185:                        ; preds = %percpu_down_read.exit184
  %i.gv = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #16, !srcloc !127
  %i.gw = zext i32 %i.gv to i64
  %i.gx = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.gw) #16, !srcloc !49 ; 2 uses
  %i.gy = icmp ult i8 %i.gx, 2
  call void @llvm.assume(i1 %i.gy)
  %i.gz = trunc nuw i8 %i.gx to i1
  br i1 %i.gz, label %bb.bj, label %trace_break_lease_unblock.exit

bb.bj:                                            ; preds = %arch_test_bit.exit.i.i185
  %i.ha = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ha, ptr elementtype(i64) %i.ha) #16, !srcloc !50
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !51
  %i.hb = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_break_lease_unblock, i64 56), align 8 ; 2 uses
  %.not.i.i186 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i186, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hc = getelementptr i8, ptr %i.hb, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8
  %i.he = call i32 @__SCT__tp_func_break_lease_unblock(ptr noundef %i.hd, ptr noundef %0, ptr noundef null) #15 ; 0 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !52
  %i.hf = getelementptr i8, ptr %i.ha, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.hf, ptr elementtype(i64) %i.hf) #16, !srcloc !53
  br label %trace_break_lease_unblock.exit

trace_break_lease_unblock.exit:                   ; preds = %percpu_down_read.exit184, %arch_test_bit.exit.i.i185, %bb.bl
  %i.hg = call fastcc i32 @__locks_delete_block(ptr noundef nonnull %i.s) #18, !srcloc !128 ; 0 uses
  %i.hh = icmp sgt i32 %i.gl, -1
  br i1 %i.hh, label %bb.bm, label %trace_break_lease_noblock.exit

bb.bm:                                            ; preds = %trace_break_lease_unblock.exit
  %i.hi = icmp eq i32 %i.gl, 0
  br i1 %i.hi, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  call fastcc void @time_out_leases(ptr noundef %0, ptr noundef nonnull %2) #18, !srcloc !129
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.hj = call fastcc ptr @first_visible_lease(ptr noundef %0, ptr noundef nonnull %i.s, i32 noundef %1) #18, !srcloc !130 ; 2 uses
  %.not155 = icmp eq ptr %i.hj, null
  br i1 %.not155, label %trace_break_lease_noblock.exit, label %.preheader

trace_break_lease_noblock.exit:                   ; preds = %bb.bo, %trace_break_lease_unblock.exit, %bb.ao, %arch_test_bit.exit.i.i172, %bb.al, %._crit_edge, %percpu_down_read.exit
  %.0127 = phi i32 [ -11, %arch_test_bit.exit.i.i172 ], [ 0, %percpu_down_read.exit ], [ -11, %bb.ao ], [ 0, %._crit_edge ], [ -11, %bb.al ], [ 0, %bb.bo ], [ %i.gl, %trace_break_lease_unblock.exit ] ; 2 uses
  call void @_raw_spin_unlock(ptr noundef nonnull %i.at) #15
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @__preempt_count, ptr elementtype(i32) @__preempt_count) #16, !srcloc !17
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !39
  %i.hk = load volatile i32, ptr @file_rwsem, align 8
  %.not.i.i188 = icmp eq i32 %i.hk, 0
  br i1 %.not.i.i188, label %bb.bp, label %bb.bq, !prof !19

bb.bp:                                            ; preds = %trace_break_lease_noblock.exit
  %i.hl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @file_rwsem, i64 48), align 8 ; 2 uses
  call void asm sideeffect "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.hl, ptr elementtype(i32) %i.hl) #16, !srcloc !40
  br label %bb.br

bb.bq:                                            ; preds = %trace_break_lease_noblock.exit
  call void @__percpu_up_read(ptr noundef @file_rwsem) #15
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !41
  %i.hm = call i8 asm sideeffect "decl %gs:$0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @__preempt_count, ptr elementtype(i32) @__preempt_count) #16, !srcloc !23 ; 2 uses
  %i.hn = icmp ult i8 %i.hm, 2
  call void @llvm.assume(i1 %i.hn)
  %i.ho = trunc nuw i8 %i.hm to i1
  br i1 %i.ho, label %bb.bs, label %percpu_up_read.exit189, !prof !20

bb.bs:                                            ; preds = %bb.br
  %i.hp = call i64 @llvm.read_register.i64(metadata !5)
  %i.hq = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.hp) #16, !srcloc !42
  call void @llvm.write_register.i64(metadata !5, i64 %i.hq)
  br label %percpu_up_read.exit189

percpu_up_read.exit189:                           ; preds = %bb.br, %bb.bs
  %i.hr = load volatile ptr, ptr %2, align 8      ; 2 uses
  %.not6.i190 = icmp eq ptr %i.hr, %2
  br i1 %.not6.i190, label %lease_dispose_list.exit193, label %.lr.ph.i191

.lr.ph.i191:                                      ; preds = %percpu_up_read.exit189, %.lr.ph.i191
  %i.hs = phi ptr [ %i.hz, %.lr.ph.i191 ], [ %i.hr, %percpu_up_read.exit189 ] ; 6 uses
  %i.ht = getelementptr i8, ptr %i.hs, i64 -8
  %i.hu = getelementptr i8, ptr %i.hs, i64 8      ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8            ; 2 uses
  %i.hw = load ptr, ptr %i.hs, align 8            ; 2 uses
  %i.hx = getelementptr i8, ptr %i.hw, i64 8
  store ptr %i.hv, ptr %i.hx, align 8
  store volatile ptr %i.hw, ptr %i.hv, align 8
  store volatile ptr %i.hs, ptr %i.hs, align 8
  store volatile ptr %i.hs, ptr %i.hu, align 8
  %i.hy = load ptr, ptr @filelease_cache, align 8
  call void @kmem_cache_free(ptr noundef %i.hy, ptr noundef %i.ht) #15
  %i.hz = load volatile ptr, ptr %2, align 8      ; 2 uses
  %.not.i192 = icmp eq ptr %i.hz, %2
  br i1 %.not.i192, label %lease_dispose_list.exit193, label %.lr.ph.i191, !llvm.loop !4

lease_dispose_list.exit193:                       ; preds = %.lr.ph.i191, %percpu_up_read.exit189, %locks_inode_context.exit.thread
  %.1128 = phi i32 [ 0, %locks_inode_context.exit.thread ], [ %.0127, %percpu_up_read.exit189 ], [ %.0127, %.lr.ph.i191 ]
  %i.ia = load ptr, ptr @filelease_cache, align 8
  call void @kmem_cache_free(ptr noundef %i.ia, ptr noundef %i.s) #15
  br label %bb.bt

bb.bt:                                            ; preds = %break_lease_flags_to_type.exit, %lease_dispose_list.exit193, %lease_alloc.exit.thread
  %.0 = phi i32 [ %i.ao, %lease_alloc.exit.thread ], [ %.1128, %lease_dispose_list.exit193 ], [ -22, %break_lease_flags_to_type.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @time_out_leases(ptr noundef %0, ptr noundef %1) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 336
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 40       ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not41 = icmp eq ptr %i.d, %i.c
  br i1 %.not41, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %past_time.exit35.thread
  %.pn.in42 = phi ptr [ %.pn44, %past_time.exit35.thread ], [ %i.d, %bb.a ] ; 11 uses
  %.043 = getelementptr i8, ptr %.pn.in42, i64 -8 ; 5 uses
  %.pn44 = load ptr, ptr %.pn.in42, align 8       ; 2 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_time_out_leases, i64 8), i1 false) #16
          to label %trace_time_out_leases.exit [label %arch_test_bit.exit.i.i], !srcloc !48

arch_test_bit.exit.i.i:                           ; preds = %.lr.ph
  %i.e = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #16, !srcloc !132
  %i.f = zext i32 %i.e to i64
  %i.g = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.f) #16, !srcloc !49 ; 2 uses
  %i.h = icmp ult i8 %i.g, 2
  tail call void @llvm.assume(i1 %i.h)
  %i.i = trunc nuw i8 %i.g to i1
  br i1 %i.i, label %bb.b, label %trace_time_out_leases.exit

bb.b:                                             ; preds = %arch_test_bit.exit.i.i
  %i.j = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.j, ptr elementtype(i64) %i.j) #16, !srcloc !50
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !51
  %i.k = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_time_out_leases, i64 56), align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
end_hunk_0
