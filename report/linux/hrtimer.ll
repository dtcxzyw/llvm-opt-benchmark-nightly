Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/hrtimer?download=true
inline.NumInlined: 224
inline.NumDeleted: 105
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@hrtimer_start_range_ns_user:bb.a
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.g, i64 noundef %i.d) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !31
  br label %bb.b

lock_hrtimer_base.exit:                           ; preds = %bb.c
  %i.h = tail call fastcc i32 @hrtimer_start_range_ns_common(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %i.b) #18, !srcloc !81
  switch i32 %i.h, label %hrtimer_force_reprogram.exit [
    i32 1, label %bb.f
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %lock_hrtimer_base.exit
  %i.i = tail call fastcc zeroext i1 @hrtimer_check_user_timer(ptr noundef %0) #18, !srcloc !82
  br i1 %i.i, label %bb.g, label %hrtimer_force_reprogram.exit

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @hrtimer_reprogram(ptr noundef %0) #18
  br label %hrtimer_force_reprogram.exit

bb.h:                                             ; preds = %lock_hrtimer_base.exit
  %i.j = tail call fastcc zeroext i1 @hrtimer_check_user_timer(ptr noundef %0) #18, !srcloc !83 ; 4 uses
  %i.k = load ptr, ptr %i.a, align 8
  %i.l = load ptr, ptr %i.k, align 64             ; 4 uses
  %i.m = tail call fastcc i64 @hrtimer_update_next_event(ptr noundef %i.l) #18, !srcloc !32 ; 4 uses
  %i.n = getelementptr i8, ptr %i.l, i64 40       ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp eq i64 %i.m, %i.o
  br i1 %i.p, label %hrtimer_force_reprogram.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 %i.m, ptr %i.n, align 8
  %i.q = getelementptr i8, ptr %i.l, i64 16
  %.val.i.i = load i8, ptr %i.q, align 16, !range !15, !noundef !16
  %.not.i.i = icmp eq i8 %.val.i.i, 0
  br i1 %.not.i.i, label %hrtimer_force_reprogram.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr i8, ptr %i.l, i64 19
  %i.s = load i8, ptr %i.r, align 1, !range !15, !noundef !16
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %hrtimer_force_reprogram.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_hrtimer_rearm, i64 8), i1 false) #19
          to label %hrtimer_rearm_event.exit.i.i [label %_test_bit.exit.i.i.i.i.i], !srcloc !17

_test_bit.exit.i.i.i.i.i:                         ; preds = %bb.k
  %i.u = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #19, !srcloc !18
  %i.v = zext i32 %i.u to i64
  %i.w = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.v) #19, !srcloc !19 ; 2 uses
  %i.x = icmp ult i8 %i.w, 2
  tail call void @llvm.assume(i1 %i.x)
  %i.y = trunc nuw i8 %i.w to i1
  br i1 %i.y, label %bb.l, label %hrtimer_rearm_event.exit.i.i

bb.l:                                             ; preds = %_test_bit.exit.i.i.i.i.i
  %i.z = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.z, ptr elementtype(i64) %i.z) #19, !srcloc !20
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !21
  %i.aa = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_hrtimer_rearm, i64 56), align 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call i32 @__SCT__tp_func_hrtimer_rearm(ptr noundef %i.ac, i64 noundef %i.m, i1 noundef zeroext false) #17 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !22
  %i.ae = getelementptr i8, ptr %i.z, i64 8       ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ae, ptr elementtype(i64) %i.ae) #19, !srcloc !23
  br label %hrtimer_rearm_event.exit.i.i

hrtimer_rearm_event.exit.i.i:                     ; preds = %bb.n, %_test_bit.exit.i.i.i.i.i, %bb.k
  %i.af = tail call i32 @tick_program_event(i64 noundef %i.m, i32 noundef 1) #17 ; 0 uses
  br label %hrtimer_force_reprogram.exit

hrtimer_force_reprogram.exit:                     ; preds = %hrtimer_rearm_event.exit.i.i, %bb.j, %bb.i, %bb.h, %bb.f, %bb.g, %lock_hrtimer_base.exit
  %.0.shrunk = phi i1 [ true, %lock_hrtimer_base.exit ], [ true, %bb.g ], [ false, %bb.f ], [ %i.j, %bb.h ], [ %i.j, %bb.i ], [ %i.j, %bb.j ], [ %i.j, %hrtimer_rearm_event.exit.i.i ]
  %.val = load ptr, ptr %i.a, align 8
  %.val.val = load ptr, ptr %.val, align 64
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %.val.val, i64 noundef %i.d) #17
  ret i1 %.0.shrunk
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noundef zeroext i1 @hrtimer_check_user_timer(ptr noundef %0) unnamed_addr #6 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %i.b, align 64
  %i.d = getelementptr i8, ptr %0, i64 64
  %.val = load i64, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %i.b, i64 56
  %i.f = load i64, ptr %i.e, align 8
  %i.g = sub i64 %.val, %i.f                      ; 2 uses
  %i.h = getelementptr i8, ptr %i.c, i64 40
  %i.i = load i64, ptr %i.h, align 8
  %.not = icmp slt i64 %i.g, %i.i
  br i1 %.not, label %bb.b, label %trace_hrtimer_start_expired.exit

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i64 @ktime_get() #17
  %i.k = icmp sgt i64 %i.g, %i.j
  br i1 %i.k, label %trace_hrtimer_start_expired.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.m = load ptr, ptr %i.l, align 64
  %i.n = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !range !15, !noundef !16
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.d, label %__remove_hrtimer.exit

bb.d:                                             ; preds = %bb.c
  store volatile i8 0, ptr %i.n, align 8
  %i.q = getelementptr i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %.not.i = icmp eq ptr %i.r, null
  %i.s = getelementptr i8, ptr %i.l, i64 40
  %i.t = tail call zeroext i1 @rb_erase_linked(ptr noundef %0, ptr noundef %i.s) #17
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr i8, ptr %i.l, i64 8
  %i.v = load i32, ptr %i.u, align 8
  %i.w = shl nuw i32 1, %i.v
  %i.x = xor i32 %i.w, -1
  %i.y = getelementptr i8, ptr %i.m, i64 8        ; 2 uses
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = and i32 %i.z, %i.x
  store i32 %i.aa, ptr %i.y, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %.not.i, label %bb.g, label %__remove_hrtimer.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr i8, ptr %i.l, i64 48
  %i.ac = load ptr, ptr %i.ab, align 16           ; 2 uses
  %.not.i18.i = icmp eq ptr %i.ac, null
  br i1 %.not.i18.i, label %base_update_next_timer.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr i8, ptr %i.ac, i64 40
  %i.ae = load i64, ptr %i.ad, align 8
  br label %base_update_next_timer.exit.i

base_update_next_timer.exit.i:                    ; preds = %bb.h, %bb.g
  %i.af = phi i64 [ %i.ae, %bb.h ], [ 9223372036854775807, %bb.g ]
  %i.ag = getelementptr i8, ptr %i.l, i64 24
  store i64 %i.af, ptr %i.ag, align 8
  br label %__remove_hrtimer.exit

__remove_hrtimer.exit:                            ; preds = %bb.c, %bb.f, %base_update_next_timer.exit.i
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_hrtimer_start_expired, i64 8), i1 false) #19
          to label %trace_hrtimer_start_expired.exit [label %_test_bit.exit.i.i], !srcloc !17

_test_bit.exit.i.i:                               ; preds = %__remove_hrtimer.exit
  %i.ah = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #19, !srcloc !84
  %i.ai = zext i32 %i.ah to i64
  %i.aj = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.ai) #19, !srcloc !19 ; 2 uses
  %i.ak = icmp ult i8 %i.aj, 2
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = trunc nuw i8 %i.aj to i1
  br i1 %i.al, label %bb.i, label %trace_hrtimer_start_expired.exit

bb.i:                                             ; preds = %_test_bit.exit.i.i
  %i.am = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.am, ptr elementtype(i64) %i.am) #19, !srcloc !20
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !21
  %i.an = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_hrtimer_start_expired, i64 56), align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call i32 @__SCT__tp_func_hrtimer_start_expired(ptr noundef %i.ap, ptr noundef %0) #17 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !22
  %i.ar = getelementptr i8, ptr %i.am, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ar, ptr elementtype(i64) %i.ar) #19, !srcloc !23
  br label %trace_hrtimer_start_expired.exit

trace_hrtimer_start_expired.exit:                 ; preds = %bb.k, %_test_bit.exit.i.i, %__remove_hrtimer.exit, %bb.b, %bb.a
  %.0 = phi i1 [ true, %bb.b ], [ true, %bb.a ], [ false, %__remove_hrtimer.exit ], [ false, %bb.k ], [ false, %_test_bit.exit.i.i ]
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -1, 2) i32 @hrtimer_try_to_cancel(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56         ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 48         ; 5 uses
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.backedge, %bb.a
  %i.c = load volatile ptr, ptr %i.b, align 8     ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 16       ; 3 uses
  %i.e = load volatile i32, ptr %i.d, align 4     ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !35
  %i.f = and i32 %i.e, 1
  %.not17.i = icmp eq i32 %i.f, 0
  br i1 %.not17.i, label %._crit_edge.i, label %.lr.ph.i, !prof !36

.lr.ph.i:                                         ; preds = %.critedge.i, %.lr.ph.i
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !31
  %i.g = load volatile i32, ptr %i.d, align 4     ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !35
  %i.h = and i32 %i.g, 1
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !prof !37, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.critedge.i
  %.lcssa.i = phi i32 [ %i.e, %.critedge.i ], [ %i.g, %.lr.ph.i ]
  %i.i = load i8, ptr %i.a, align 8, !range !15, !noundef !16
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %.preheader, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i
  %i.k = getelementptr i8, ptr %i.c, i64 32
  %i.l = load ptr, ptr %i.k, align 32
  %i.m = icmp eq ptr %i.l, %0
  br i1 %i.m, label %.preheader, label %bb.c

.preheader:                                       ; preds = %._crit_edge.i, %bb.b
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !38
  %i.n = load volatile i32, ptr %i.d, align 16
  %.not15.i = icmp eq i32 %i.n, %.lcssa.i
  br i1 %.not15.i, label %bb.d, label %.critedge.i.backedge

bb.d:                                             ; preds = %bb.c
  %i.o = load volatile ptr, ptr %i.b, align 8
  %.not14.i = icmp eq ptr %i.c, %i.o
  br i1 %.not14.i, label %hrtimer_active.exit, label %.critedge.i.backedge

.critedge.i.backedge:                             ; preds = %bb.d, %bb.c
  br label %.critedge.i, !llvm.loop !1

bb.e:                                             ; preds = %.preheader, %bb.h
  %i.p = load volatile ptr, ptr %i.b, align 8     ; 9 uses
  %.not.i11 = icmp eq ptr %i.p, getelementptr inbounds nuw (i8, ptr @migration_cpu_base, i64 128)
  br i1 %.not.i11, label %bb.h, label %bb.f, !prof !29

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.p, align 64
  %i.r = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.q) #17 ; 2 uses
  %i.s = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.t = icmp eq ptr %i.p, %i.s
  br i1 %i.t, label %lock_hrtimer_base.exit, label %bb.g, !prof !30

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.p, align 64
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.u, i64 noundef %i.r) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !31
  br label %bb.e

lock_hrtimer_base.exit:                           ; preds = %bb.f
  %i.v = getelementptr i8, ptr %i.s, i64 32
  %i.w = load ptr, ptr %i.v, align 32
  %.not = icmp eq ptr %i.w, %0
  br i1 %.not, label %trace_hrtimer_cancel.exit, label %bb.i

bb.i:                                             ; preds = %lock_hrtimer_base.exit
  %i.x = load i8, ptr %i.a, align 8, !range !15, !noundef !16
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.j, label %trace_hrtimer_cancel.exit

bb.j:                                             ; preds = %bb.i
  %i.z = load ptr, ptr %i.p, align 64             ; 6 uses
  %i.aa = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off) #16, !srcloc !39
  %i.ab = getelementptr i8, ptr @hrtimer_bases, i64 %i.aa
  %i.ac = icmp eq ptr %i.z, %i.ab
  store volatile i8 0, ptr %i.a, align 8
  %i.ad = getelementptr i8, ptr %0, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not.i.i = icmp eq ptr %i.ae, null
  %i.af = getelementptr i8, ptr %i.p, i64 40
  %i.ag = tail call zeroext i1 @rb_erase_linked(ptr noundef %0, ptr noundef %i.af) #17
  br i1 %i.ag, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr i8, ptr %i.p, i64 8
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = shl nuw i32 1, %i.ai
  %i.ak = xor i32 %i.aj, -1
  %i.al = getelementptr i8, ptr %i.z, i64 8       ; 2 uses
  %i.am = load i32, ptr %i.al, align 8
  %i.an = and i32 %i.am, %i.ak
  store i32 %i.an, ptr %i.al, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  br i1 %.not.i.i, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr i8, ptr %i.p, i64 48
  %i.ap = load ptr, ptr %i.ao, align 16           ; 2 uses
  %.not.i18.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i18.i.i, label %base_update_next_timer.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr i8, ptr %i.ap, i64 40
  %i.ar = load i64, ptr %i.aq, align 8
  br label %base_update_next_timer.exit.i.i

base_update_next_timer.exit.i.i:                  ; preds = %bb.n, %bb.m
  %i.as = phi i64 [ %i.ar, %bb.n ], [ 9223372036854775807, %bb.m ]
  %i.at = getelementptr i8, ptr %i.p, i64 24
  store i64 %i.as, ptr %i.at, align 8
  br i1 %i.ac, label %bb.o, label %bb.t

bb.o:                                             ; preds = %base_update_next_timer.exit.i.i
  %i.au = getelementptr i8, ptr %i.z, i64 48
  %i.av = load ptr, ptr %i.au, align 16
  %.not17.i.i = icmp eq ptr %0, %i.av
  br i1 %.not17.i.i, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr i8, ptr %0, i64 60
  %i.ax = load i8, ptr %i.aw, align 4, !range !15, !noundef !16
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr i8, ptr %i.z, i64 17
  %i.ba = load i8, ptr %i.az, align 1, !range !15, !noundef !16
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr i8, ptr %i.z, i64 18
  store i8 1, ptr %i.bc, align 2
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  tail call fastcc void @hrtimer_force_reprogram(ptr noundef %i.z, i1 noundef zeroext true) #18, !srcloc !40
  br label %bb.t

bb.t:                                             ; preds = %bb.l, %base_update_next_timer.exit.i.i, %bb.o, %bb.p, %bb.r, %bb.s
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_hrtimer_cancel, i64 8), i1 false) #19
          to label %trace_hrtimer_cancel.exit [label %_test_bit.exit.i.i], !srcloc !17

_test_bit.exit.i.i:                               ; preds = %bb.t
  %i.bd = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #19, !srcloc !85
  %i.be = zext i32 %i.bd to i64
  %i.bf = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.be) #19, !srcloc !19 ; 2 uses
  %i.bg = icmp ult i8 %i.bf, 2
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = trunc nuw i8 %i.bf to i1
  br i1 %i.bh, label %bb.u, label %trace_hrtimer_cancel.exit

bb.u:                                             ; preds = %_test_bit.exit.i.i
  %i.bi = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bi, ptr elementtype(i64) %i.bi) #19, !srcloc !20
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !21
  %i.bj = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_hrtimer_cancel, i64 56), align 8 ; 2 uses
  %.not.i.i12 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i12, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call i32 @__SCT__tp_func_hrtimer_cancel(ptr noundef %i.bl, ptr noundef %0) #17 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !22
  %i.bn = getelementptr i8, ptr %i.bi, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bn, ptr elementtype(i64) %i.bn) #19, !srcloc !23
  br label %trace_hrtimer_cancel.exit

trace_hrtimer_cancel.exit:                        ; preds = %bb.i, %bb.w, %_test_bit.exit.i.i, %bb.t, %lock_hrtimer_base.exit
  %.0 = phi i32 [ -1, %lock_hrtimer_base.exit ], [ 1, %bb.w ], [ 1, %bb.t ], [ 0, %bb.i ], [ 1, %_test_bit.exit.i.i ]
  %.val = load ptr, ptr %i.b, align 8
  %.val.val = load ptr, ptr %.val, align 64
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %.val.val, i64 noundef %i.r) #17
  br label %hrtimer_active.exit

hrtimer_active.exit:                              ; preds = %bb.d, %trace_hrtimer_cancel.exit
  %.09 = phi i32 [ %.0, %trace_hrtimer_cancel.exit ], [ 0, %bb.d ]
  ret i32 %.09
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef zeroext i1 @hrtimer_active(ptr nofree noundef captures(address) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %i.b = getelementptr i8, ptr %0, i64 48         ; 2 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %bb.a
  %i.c = load volatile ptr, ptr %i.b, align 8     ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 16       ; 3 uses
  %i.e = load volatile i32, ptr %i.d, align 4     ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !35
  %i.f = and i32 %i.e, 1
  %.not17 = icmp eq i32 %i.f, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph, !prof !36

.lr.ph:                                           ; preds = %.critedge, %.lr.ph
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !31
  %i.g = load volatile i32, ptr %i.d, align 4     ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !35
  %i.h = and i32 %i.g, 1
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !prof !37, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph, %.critedge
  %.lcssa = phi i32 [ %i.e, %.critedge ], [ %i.g, %.lr.ph ]
  %i.i = load i8, ptr %i.a, align 8, !range !15, !noundef !16
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.e, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.k = getelementptr i8, ptr %i.c, i64 32
  %i.l = load ptr, ptr %i.k, align 32
  %i.m = icmp eq ptr %i.l, %0
  br i1 %i.m, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !38
  %i.n = load volatile i32, ptr %i.d, align 16
  %.not15 = icmp eq i32 %i.n, %.lcssa
  br i1 %.not15, label %bb.d, label %.critedge.backedge

bb.d:                                             ; preds = %bb.c
  %i.o = load volatile ptr, ptr %i.b, align 8
  %.not14 = icmp eq ptr %i.c, %i.o
  br i1 %.not14, label %bb.e, label %.critedge.backedge

.critedge.backedge:                               ; preds = %bb.d, %bb.c
  br label %.critedge, !llvm.loop !1

bb.e:                                             ; preds = %bb.d, %._crit_edge, %bb.b
  %.0 = phi i1 [ true, %._crit_edge ], [ true, %bb.b ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noundef zeroext i1 @remove_hrtimer(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #6 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !15, !noundef !16
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  br i1 %i.c, label %bb.b, label %__remove_hrtimer.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 64               ; 6 uses
  %i.e = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off) #16, !srcloc !39
  %i.f = getelementptr i8, ptr @hrtimer_bases, i64 %i.e
  %i.g = icmp eq ptr %i.d, %i.f
  %i.h = zext i1 %2 to i8
  store volatile i8 %i.h, ptr %i.a, align 8
  %i.i = getelementptr i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %.not.i = icmp eq ptr %i.j, null
  %i.k = getelementptr i8, ptr %1, i64 40
  %i.l = tail call zeroext i1 @rb_erase_linked(ptr noundef %0, ptr noundef %i.k) #17
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %1, i64 8
  %i.n = load i32, ptr %i.m, align 8
  %i.o = shl nuw i32 1, %i.n
  %i.p = xor i32 %i.o, -1
  %i.q = getelementptr i8, ptr %i.d, i64 8        ; 2 uses
  %i.r = load i32, ptr %i.q, align 8
  %i.s = and i32 %i.r, %i.p
  store i32 %i.s, ptr %i.q, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  br i1 %.not.i, label %bb.e, label %__remove_hrtimer.exit

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr i8, ptr %1, i64 48
  %i.u = load ptr, ptr %i.t, align 16             ; 2 uses
  %.not.i18.i = icmp eq ptr %i.u, null
  br i1 %.not.i18.i, label %base_update_next_timer.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %i.u, i64 40
  %i.w = load i64, ptr %i.v, align 8
  br label %base_update_next_timer.exit.i

base_update_next_timer.exit.i:                    ; preds = %bb.f, %bb.e
  %i.x = phi i64 [ %i.w, %bb.f ], [ 9223372036854775807, %bb.e ]
  %i.y = getelementptr i8, ptr %1, i64 24
  store i64 %i.x, ptr %i.y, align 8
  br i1 %i.g, label %bb.g, label %__remove_hrtimer.exit

bb.g:                                             ; preds = %base_update_next_timer.exit.i
  %i.z = getelementptr i8, ptr %i.d, i64 48
  %i.aa = load ptr, ptr %i.z, align 16
  %.not17.i = icmp eq ptr %0, %i.aa
  br i1 %.not17.i, label %bb.h, label %__remove_hrtimer.exit

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr i8, ptr %0, i64 60
  %i.ac = load i8, ptr %i.ab, align 4, !range !15, !noundef !16
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %__remove_hrtimer.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr i8, ptr %i.d, i64 17
  %i.af = load i8, ptr %i.ae, align 1, !range !15, !noundef !16
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr i8, ptr %i.d, i64 18
  store i8 1, ptr %i.ah, align 2
  br label %__remove_hrtimer.exit

bb.k:                                             ; preds = %bb.i
  tail call fastcc void @hrtimer_force_reprogram(ptr noundef %i.d, i1 noundef zeroext true) #18, !srcloc !40
  br label %__remove_hrtimer.exit

__remove_hrtimer.exit:                            ; preds = %bb.k, %bb.j, %bb.h, %bb.g, %base_update_next_timer.exit.i, %bb.d, %bb.a
  ret i1 %i.c
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 2) i32 @hrtimer_cancel(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @hrtimer_try_to_cancel(ptr noundef %0) #18 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !31
  %i.c = tail call i32 @hrtimer_try_to_cancel(ptr noundef %0) #18 ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %.critedge, !llvm.loop !2

.critedge:                                        ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.c, %.lr.ph ]
  ret i32 %.lcssa
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @__hrtimer_get_remaining(ptr nofree noundef captures(address) %0, i1 zeroext %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48         ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.b = load volatile ptr, ptr %i.a, align 8     ; 4 uses
  %.not.i = icmp eq ptr %i.b, getelementptr inbounds nuw (i8, ptr @migration_cpu_base, i64 128)
  br i1 %.not.i, label %bb.e, label %bb.c, !prof !29

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %i.b, align 64
  %i.d = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.c) #17 ; 2 uses
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.b, %i.e
  br i1 %i.f, label %lock_hrtimer_base.exit, label %bb.d, !prof !30

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 64
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.g, i64 noundef %i.d) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !31
  br label %bb.b

lock_hrtimer_base.exit:                           ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 40
  %.val4 = load i64, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %i.e, i64 12
  %.val5.val = load i32, ptr %i.i, align 4
  %i.j = tail call fastcc i64 @__hrtimer_cb_get_time(i32 noundef %.val5.val) #18, !srcloc !41
  %i.k = sub i64 %.val4, %i.j
  %.val = load ptr, ptr %i.a, align 8
  %.val.val = load ptr, ptr %.val, align 64
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %.val.val, i64 noundef %i.d) #17
  ret i64 %i.k
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 0, -9223372036854775808) i64 @hrtimer_get_next_event() local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off) #16, !srcloc !86
  %i.b = add i64 %i.a, ptrtoint (ptr @hrtimer_bases to i64)
  %i.c = inttoptr i64 %i.b to ptr                 ; 9 uses
  %i.d = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.c) #17
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %.val = load i8, ptr %i.e, align 16, !range !15, !noundef !16
  %.not = icmp eq i8 %.val, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 20
  %i.g = load i8, ptr %i.f, align 4, !range !15, !noundef !16
  %i.h = trunc nuw i8 %i.g to i1
  %.phi.trans.insert = getelementptr i8, ptr %i.c, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8 ; 2 uses
  br i1 %i.h, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = and i32 %.pre, 240                       ; 3 uses
  %.not22.i = icmp eq i32 %i.i, 0
  br i1 %.not22.i, label %hrtimer_bases_first.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 1, 241) %i.i, i32 -1) #20, !srcloc !27 ; 2 uses
  %.not25.i.i = icmp eq i32 %i.j, -1
  br i1 %.not25.i.i, label %hrtimer_bases_first.exit.i, label %.preheader.lr.ph.i.i

.preheader.lr.ph.i.i:                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %i.c, i64 128
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.critedge.i.i, %.preheader.lr.ph.i.i
  %.345.i = phi ptr [ null, %.preheader.lr.ph.i.i ], [ %.446.i, %.critedge.i.i ]
  %.4.i = phi i64 [ 9223372036854775807, %.preheader.lr.ph.i.i ], [ %.5.i, %.critedge.i.i ]
  %i.l = phi i64 [ 9223372036854775807, %.preheader.lr.ph.i.i ], [ %i.z, %.critedge.i.i ] ; 2 uses
  %i.m = phi i32 [ %i.j, %.preheader.lr.ph.i.i ], [ %i.ab, %.critedge.i.i ] ; 2 uses
  %.02126.i.i = phi i32 [ %i.i, %.preheader.lr.ph.i.i ], [ %i.aa, %.critedge.i.i ]
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr [64 x i8], ptr %i.k, i64 %i.n ; 3 uses
  %i.p = getelementptr i8, ptr %i.o, i64 24
  %i.q = getelementptr i8, ptr %i.o, i64 56
  %i.r = shl nuw i32 1, %i.m
  %i.s = xor i32 %i.r, -1
  %i.t = load i64, ptr %i.p, align 8
end_hunk_0
