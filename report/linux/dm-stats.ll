Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/dm-stats?download=true
inline.NumInlined: 111
inline.NumDeleted: 52
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dm_stat_free:bb.a
  %.not.i19 = icmp eq ptr %i.u, null
  br i1 %.not.i19, label %dm_kvfree.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = tail call i64 @_raw_spin_lock_irqsave(ptr noundef @shared_memory_lock) #15 ; 2 uses
  %i.x = load i64, ptr @shared_memory_amount, align 8 ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.v
  br i1 %i.y, label %bb.e, label %.critedge.i.i, !prof !17

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "787: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 787b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 787) #18, !srcloc !18
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, ptr @.str.2, i32 135, i32 2307, i64 16) #18, !srcloc !19
  tail call void asm sideeffect "788: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 788b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 788) #18, !srcloc !20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef @shared_memory_lock, i64 noundef %i.w) #15
  %i.z = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.13) #19 ; 0 uses
  br label %free_shared_memory.exit.i

.critedge.i.i:                                    ; preds = %bb.d
  %i.aa = sub nuw i64 %i.x, %i.v
  store i64 %i.aa, ptr @shared_memory_amount, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef @shared_memory_lock, i64 noundef %i.w) #15
  br label %free_shared_memory.exit.i

free_shared_memory.exit.i:                        ; preds = %.critedge.i.i, %bb.e
  tail call void @kvfree(ptr noundef nonnull %i.u) #15
  %.pre = load ptr, ptr %i.r, align 8
  br label %dm_kvfree.exit

dm_kvfree.exit:                                   ; preds = %bb.c, %free_shared_memory.exit.i
  %i.ab = phi ptr [ %i.s, %bb.c ], [ %.pre, %free_shared_memory.exit.i ] ; 2 uses
  %i.ac = load i64, ptr %i.i, align 8             ; 2 uses
  %.not.i20 = icmp eq ptr %i.ab, null
  br i1 %.not.i20, label %dm_kvfree.exit23, label %bb.f

bb.f:                                             ; preds = %dm_kvfree.exit
  %i.ad = tail call i64 @_raw_spin_lock_irqsave(ptr noundef @shared_memory_lock) #15 ; 2 uses
  %i.ae = load i64, ptr @shared_memory_amount, align 8 ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ac
  br i1 %i.af, label %bb.g, label %.critedge.i.i21, !prof !17

bb.g:                                             ; preds = %bb.f
  tail call void asm sideeffect "787: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 787b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 787) #18, !srcloc !18
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, ptr @.str.2, i32 135, i32 2307, i64 16) #18, !srcloc !19
  tail call void asm sideeffect "788: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 788b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 788) #18, !srcloc !20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef @shared_memory_lock, i64 noundef %i.ad) #15
  %i.ag = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.13) #19 ; 0 uses
  br label %free_shared_memory.exit.i22

.critedge.i.i21:                                  ; preds = %bb.f
  %i.ah = sub nuw i64 %i.ae, %i.ac
  store i64 %i.ah, ptr @shared_memory_amount, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef @shared_memory_lock, i64 noundef %i.ad) #15
  br label %free_shared_memory.exit.i22

free_shared_memory.exit.i22:                      ; preds = %.critedge.i.i21, %bb.g
  tail call void @kvfree(ptr noundef nonnull %i.ab) #15
  br label %dm_kvfree.exit23

dm_kvfree.exit23:                                 ; preds = %dm_kvfree.exit, %free_shared_memory.exit.i22
  %i.ai = add nuw nsw i64 %i.n, 1
  %i.aj = and i64 %i.ai, 127                      ; 2 uses
  %i.ak = icmp samesign ugt i64 %i.aj, 63
  br i1 %i.ak, label %find_next_bit.exit.thread, label %bb.b, !prof !14, !llvm.loop !33

find_next_bit.exit.thread:                        ; preds = %bb.b, %dm_kvfree.exit23, %find_next_bit.exit
  %i.al = getelementptr i8, ptr %0, i64 -88       ; 2 uses
  %i.am = getelementptr i8, ptr %0, i64 664
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = load i64, ptr %i.h, align 8             ; 2 uses
  %.not.i24 = icmp eq ptr %i.an, null
  br i1 %.not.i24, label %dm_kvfree.exit27, label %bb.h

bb.h:                                             ; preds = %find_next_bit.exit.thread
  %i.ap = tail call i64 @_raw_spin_lock_irqsave(ptr noundef @shared_memory_lock) #15 ; 2 uses
  %i.aq = load i64, ptr @shared_memory_amount, align 8 ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.ao
  br i1 %i.ar, label %bb.i, label %.critedge.i.i25, !prof !17

bb.i:                                             ; preds = %bb.h
  tail call void asm sideeffect "787: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 787b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 787) #18, !srcloc !18
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, ptr @.str.2, i32 135, i32 2307, i64 16) #18, !srcloc !19
  tail call void asm sideeffect "788: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 788b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 788) #18, !srcloc !20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef @shared_memory_lock, i64 noundef %i.ap) #15
  %i.as = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.13) #19 ; 0 uses
  br label %free_shared_memory.exit.i26

.critedge.i.i25:                                  ; preds = %bb.h
  %i.at = sub nuw i64 %i.aq, %i.ao
  store i64 %i.at, ptr @shared_memory_amount, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef @shared_memory_lock, i64 noundef %i.ap) #15
  br label %free_shared_memory.exit.i26

free_shared_memory.exit.i26:                      ; preds = %.critedge.i.i25, %bb.i
  tail call void @kvfree(ptr noundef nonnull %i.an) #15
  br label %dm_kvfree.exit27

dm_kvfree.exit27:                                 ; preds = %find_next_bit.exit.thread, %free_shared_memory.exit.i26
  %i.au = getelementptr i8, ptr %0, i64 16
  %i.av = load i64, ptr %i.au, align 8            ; 2 uses
  %.not.i28 = icmp eq ptr %i.al, null
  br i1 %.not.i28, label %dm_kvfree.exit31, label %bb.j

bb.j:                                             ; preds = %dm_kvfree.exit27
  %i.aw = tail call i64 @_raw_spin_lock_irqsave(ptr noundef @shared_memory_lock) #15 ; 2 uses
  %i.ax = load i64, ptr @shared_memory_amount, align 8 ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.av
  br i1 %i.ay, label %bb.k, label %.critedge.i.i29, !prof !17

bb.k:                                             ; preds = %bb.j
  tail call void asm sideeffect "787: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 787b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 787) #18, !srcloc !18
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, ptr @.str.2, i32 135, i32 2307, i64 16) #18, !srcloc !19
  tail call void asm sideeffect "788: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 788b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 788) #18, !srcloc !20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef @shared_memory_lock, i64 noundef %i.aw) #15
  %i.az = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.13) #19 ; 0 uses
  br label %free_shared_memory.exit.i30

.critedge.i.i29:                                  ; preds = %bb.j
  %i.ba = sub nuw i64 %i.ax, %i.av
  store i64 %i.ba, ptr @shared_memory_amount, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef @shared_memory_lock, i64 noundef %i.aw) #15
  br label %free_shared_memory.exit.i30

free_shared_memory.exit.i30:                      ; preds = %.critedge.i.i29, %bb.k
  tail call void @kvfree(ptr noundef nonnull %i.al) #15
  br label %dm_kvfree.exit31

dm_kvfree.exit31:                                 ; preds = %dm_kvfree.exit27, %free_shared_memory.exit.i30
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @dm_stats_account_io(ptr nofree noundef captures(address) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i64 noundef %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.bb, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.a = zext i32 %3 to i64
  %i.b = add i64 %2, %i.a                         ; 4 uses
  br i1 %4, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off) #21, !srcloc !38
  %i.d = getelementptr i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = add i64 %i.c, %i.f
  %i.h = inttoptr i64 %i.g to ptr                 ; 4 uses
  %i.i = load volatile i64, ptr %i.h, align 8
  %i.j = icmp eq i64 %2, %i.i
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i64 %1, 1
  %i.l = getelementptr i8, ptr %i.h, i64 8
  %i.m = load volatile i32, ptr %i.l, align 8
  %i.n = icmp ne i32 %i.m, 1
  %i.o = xor i1 %i.k, %i.n
  %i.p = zext i1 %i.o to i8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = phi i8 [ 0, %bb.c ], [ %i.p, %bb.d ]
  store i8 %i.q, ptr %6, align 8
  store volatile i64 %i.b, ptr %i.h, align 8
  %i.r = trunc i64 %1 to i32
  %i.s = getelementptr i8, ptr %i.h, i64 8
  store volatile i32 %i.r, ptr %i.s, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.t = load volatile i64, ptr @jiffies, align 64
  %i.u = sub i64 %i.t, %5
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.046 = phi i64 [ %i.u, %bb.f ], [ 0, %bb.e ]   ; 2 uses
  tail call void @__rcu_read_lock() #15
  %i.v = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %i.w = load volatile ptr, ptr %i.v, align 8     ; 2 uses
  %.not4751 = icmp eq ptr %i.w, %i.v
  br i1 %.not4751, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %.not48 = xor i1 %4, true
  %i.x = getelementptr i8, ptr %6, i64 8          ; 4 uses
  %i.y = shl i64 %1, 32
  %i.z = ashr exact i64 %i.y, 32                  ; 8 uses
  %i.aa = and i64 %.046, 4294967295
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %__dm_stat_bio.exit
  %.053 = phi ptr [ %i.w, %.lr.ph ], [ %i.hg, %__dm_stat_bio.exit ] ; 11 uses
  %.04552 = phi i1 [ false, %.lr.ph ], [ %.1, %__dm_stat_bio.exit ] ; 2 uses
  %i.ab = getelementptr i8, ptr %.053, i64 20     ; 5 uses
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = and i32 %i.ac, 1
  %i.ae = icmp eq i32 %i.ad, 0                    ; 2 uses
  %or.cond = select i1 %i.ae, i1 true, i1 %.04552
  %brmerge = or i1 %or.cond, %.not48
  %not.or.cond = xor i1 %i.ae, true
  %.045.mux = select i1 %not.or.cond, i1 true, i1 %.04552
  br i1 %brmerge, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = tail call i64 @ktime_get() #15
  %i.ag = load i64, ptr %i.x, align 8
  %i.ah = sub i64 %i.af, %i.ag
  store i64 %i.ah, ptr %i.x, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.1 = phi i1 [ %.045.mux, %bb.h ], [ true, %bb.i ]
  %i.ai = getelementptr i8, ptr %.053, i64 32
  %i.aj = load i64, ptr %i.ai, align 8            ; 3 uses
  %.not.i = icmp ugt i64 %i.b, %i.aj
  br i1 %.not.i, label %bb.k, label %__dm_stat_bio.exit

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr i8, ptr %.053, i64 40
  %i.al = load i64, ptr %i.ak, align 8            ; 3 uses
  %.not54.i = icmp ult i64 %2, %i.al
  br i1 %.not54.i, label %bb.l, label %__dm_stat_bio.exit

bb.l:                                             ; preds = %bb.k
  %.pn.i = tail call i64 @llvm.umax.i64(i64 %2, i64 %i.aj)
  %.0.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %i.aj) ; 2 uses
  %i.am = icmp ugt i64 %i.b, %i.al
  br i1 %i.am, label %bb.m, label %bb.n, !prof !17

bb.m:                                             ; preds = %bb.l
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn55.i = phi i64 [ %i.al, %bb.m ], [ %i.b, %bb.l ]
  %.1.i = sub i64 %.pn55.i, %.pn.i                ; 3 uses
  %i.an = getelementptr i8, ptr %.053, i64 48     ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8            ; 3 uses
  %i.ap = urem i64 %.0.i, %i.ao                   ; 2 uses
  %i.aq = udiv i64 %.0.i, %i.ao                   ; 5 uses
  %i.ar = getelementptr i8, ptr %.053, i64 24     ; 3 uses
  %i.as = getelementptr i8, ptr %.053, i64 640    ; 3 uses
  %i.at = getelementptr i8, ptr %.053, i64 128    ; 3 uses
  %i.au = getelementptr i8, ptr %.053, i64 56
  %i.av = getelementptr i8, ptr %.053, i64 64
  br i1 %4, label %.split.us.i, label %.split.preheader.i

.split.preheader.i:                               ; preds = %bb.n
  %i.aw = load i64, ptr %i.ar, align 8
  %.not56.peel.i = icmp ult i64 %i.aq, %i.aw
  br i1 %.not56.peel.i, label %.critedge.peel.i, label %.split59.us.i, !prof !16

.critedge.peel.i:                                 ; preds = %.split.preheader.i
  %i.ax = sub nuw i64 %i.ao, %i.ap                ; 2 uses
  %i.ay = getelementptr [120 x i8], ptr %i.as, i64 %i.aq ; 4 uses
  tail call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @__preempt_count, ptr elementtype(i32) @__preempt_count) #18, !srcloc !39
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !40
  %i.az = tail call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #21, !srcloc !41
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr [8 x i8], ptr %i.at, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr [104 x i8], ptr %i.bc, i64 %i.aq ; 4 uses
  %.val.i.peel.i = load i32, ptr %i.ab, align 4
  %i.be = and i32 %.val.i.peel.i, 1
  %.not.i55.i.peel.i = icmp eq i32 %i.be, 0
  br i1 %.not.i55.i.peel.i, label %bb.p, label %bb.o, !prof !16

bb.o:                                             ; preds = %.critedge.peel.i
  %i.bf = tail call i64 @ktime_get() #15
  br label %bb.q

bb.p:                                             ; preds = %.critedge.peel.i
  %i.bg = load volatile i64, ptr @jiffies, align 64
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0.i.i.peel.i = phi i64 [ %i.bg, %bb.p ], [ %i.bf, %bb.o ] ; 3 uses
  %i.bh = getelementptr i8, ptr %i.ay, i64 8      ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8            ; 2 uses
  %i.bj = sub i64 %.0.i.i.peel.i, %i.bi           ; 4 uses
  %.not23.i.i.peel.i = icmp eq i64 %.0.i.i.peel.i, %i.bi
  br i1 %.not23.i.i.peel.i, label %dm_stat_round.exit.i.peel.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = load volatile i32, ptr %i.ay, align 8   ; 2 uses
  %i.bl = getelementptr i8, ptr %i.ay, i64 4
  %i.bm = load volatile i32, ptr %i.bl, align 4   ; 2 uses
  %.not24.i.i.peel.i = icmp eq i32 %i.bk, 0
  br i1 %.not24.i.i.peel.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = getelementptr i8, ptr %i.bd, i64 64     ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = add i64 %i.bo, %i.bj
  store i64 %i.bp, ptr %i.bn, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.not25.i.i.peel.i = icmp eq i32 %i.bm, 0
  br i1 %.not25.i.i.peel.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = getelementptr i8, ptr %i.bd, i64 72     ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = add i64 %i.br, %i.bj
  store i64 %i.bs, ptr %i.bq, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bt = add i32 %i.bm, %i.bk                    ; 2 uses
  %.not26.i.i.peel.i = icmp eq i32 %i.bt, 0
  br i1 %.not26.i.i.peel.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bu = getelementptr i8, ptr %i.bd, i64 80     ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = add i64 %i.bv, %i.bj
  store i64 %i.bw, ptr %i.bu, align 8
  %i.bx = zext i32 %i.bt to i64
  %i.by = mul i64 %i.bj, %i.bx
  %i.bz = getelementptr i8, ptr %i.bd, i64 88     ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = add i64 %i.ca, %i.by
  store i64 %i.cb, ptr %i.bz, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  store i64 %.0.i.i.peel.i, ptr %i.bh, align 8
  br label %dm_stat_round.exit.i.peel.i

dm_stat_round.exit.i.peel.i:                      ; preds = %bb.x, %bb.q
  %i.cc = getelementptr [4 x i8], ptr %i.ay, i64 %i.z ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cc, ptr elementtype(i32) %i.cc) #18, !srcloc !42
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !43
  %i.cd = tail call i8 asm sideeffect "decl %gs:$0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @__preempt_count, ptr elementtype(i32) @__preempt_count) #18, !srcloc !44 ; 2 uses
  %i.ce = icmp ult i8 %i.cd, 2
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = trunc nuw i8 %i.cd to i1
  br i1 %i.cf, label %bb.y, label %dm_stat_for_entry.exit.peel.i, !prof !17

bb.y:                                             ; preds = %dm_stat_round.exit.i.peel.i
  %i.cg = tail call i64 @llvm.read_register.i64(metadata !2)
  %i.ch = tail call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.cg) #18, !srcloc !45
  tail call void @llvm.write_register.i64(metadata !2, i64 %i.ch)
  br label %dm_stat_for_entry.exit.peel.i

dm_stat_for_entry.exit.peel.i:                    ; preds = %bb.y, %dm_stat_round.exit.i.peel.i
  %.not57.not.peel.i = icmp ugt i64 %.1.i, %i.ax
  br i1 %.not57.not.peel.i, label %.split.peel.next.i, label %__dm_stat_bio.exit, !prof !17

.split.peel.next.i:                               ; preds = %dm_stat_for_entry.exit.peel.i
  %i.ci = sub nuw i64 %.1.i, %i.ax
  br label %.split.i

.split.us.i:                                      ; preds = %bb.n, %dm_stat_for_entry.exit.us.i
  %.047.us.i = phi i64 [ %i.fp, %dm_stat_for_entry.exit.us.i ], [ %i.aq, %bb.n ] ; 4 uses
  %.2.us.i = phi i64 [ %i.fo, %dm_stat_for_entry.exit.us.i ], [ %.1.i, %bb.n ] ; 2 uses
  %.044.us.i = phi i64 [ 0, %dm_stat_for_entry.exit.us.i ], [ %i.ap, %bb.n ]
  %i.cj = load i64, ptr %i.ar, align 8
  %.not56.us.i = icmp ult i64 %.047.us.i, %i.cj
  br i1 %.not56.us.i, label %.critedge.us.i, label %.split59.us.i, !prof !16

.critedge.us.i:                                   ; preds = %.split.us.i
  %i.ck = load i64, ptr %i.an, align 8
  %i.cl = sub i64 %i.ck, %.044.us.i
  %spec.select.us.i = tail call i64 @llvm.umin.i64(i64 %.2.us.i, i64 %i.cl) ; 2 uses
  %i.cm = getelementptr [120 x i8], ptr %i.as, i64 %.047.us.i ; 4 uses
  tail call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @__preempt_count, ptr elementtype(i32) @__preempt_count) #18, !srcloc !39
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !40
  %i.cn = tail call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #21, !srcloc !41
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr [8 x i8], ptr %i.at, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = getelementptr [104 x i8], ptr %i.cq, i64 %.047.us.i ; 10 uses
  %.val.i.us.i = load i32, ptr %i.ab, align 4
  %i.cs = and i32 %.val.i.us.i, 1
  %.not.i55.i.us.i = icmp eq i32 %i.cs, 0
  br i1 %.not.i55.i.us.i, label %bb.aa, label %bb.z, !prof !16

bb.z:                                             ; preds = %.critedge.us.i
  %i.ct = tail call i64 @ktime_get() #15
  br label %bb.ab

bb.aa:                                            ; preds = %.critedge.us.i
  %i.cu = load volatile i64, ptr @jiffies, align 64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0.i56.i.us.i = phi i64 [ %i.cu, %bb.aa ], [ %i.ct, %bb.z ] ; 3 uses
  %i.cv = getelementptr i8, ptr %i.cm, i64 8      ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8            ; 2 uses
  %i.cx = sub i64 %.0.i56.i.us.i, %i.cw           ; 4 uses
  %.not23.i57.i.us.i = icmp eq i64 %.0.i56.i.us.i, %i.cw
  br i1 %.not23.i57.i.us.i, label %dm_stat_round.exit61.i.us.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cy = load volatile i32, ptr %i.cm, align 8   ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cm, i64 4
  %i.da = load volatile i32, ptr %i.cz, align 4   ; 2 uses
  %.not24.i58.i.us.i = icmp eq i32 %i.cy, 0
  br i1 %.not24.i58.i.us.i, label %bb.ae, label %bb.ad
end_hunk_0
