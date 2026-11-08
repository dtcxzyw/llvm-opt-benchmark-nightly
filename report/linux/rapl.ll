Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/rapl?download=true
inline.NumInlined: 47
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@rapl_pmu_event_stop:bb.a
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "626: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 626b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 626) #13, !srcloc !37
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.54, ptr @.str.56, i32 318, i32 2307, i64 16) #13, !srcloc !38
  tail call void asm sideeffect "627: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 627b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 627) #13, !srcloc !39
  %.pre = load i32, ptr %i.g, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = phi i32 [ %.pre, %bb.c ], [ %i.h, %bb.b ]
  %i.k = add i32 %i.j, -1                         ; 2 uses
  store i32 %i.k, ptr %i.g, align 4
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.b, i64 48
  %i.n = tail call i32 @hrtimer_cancel(ptr noundef %i.m) #12 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = getelementptr i8, ptr %0, i64 112        ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 120        ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 8
  store ptr %i.q, ptr %i.s, align 8
  store volatile ptr %i.r, ptr %i.q, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %i.o, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.p, align 8
  %i.t = load i32, ptr %i.d, align 8              ; 2 uses
  %i.u = and i32 %i.t, 1
  %.not22 = icmp eq i32 %i.u, 0
  br i1 %.not22, label %bb.h, label %bb.g, !prof !15

bb.g:                                             ; preds = %bb.f
  tail call void asm sideeffect "628: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 628b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 628) #13, !srcloc !40
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.54, ptr @.str.56, i32 325, i32 2307, i64 16) #13, !srcloc !41
  tail call void asm sideeffect "629: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 629b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 629) #13, !srcloc !42
  %.pre25 = load i32, ptr %i.d, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = phi i32 [ %.pre25, %bb.g ], [ %i.t, %bb.f ]
  %i.w = or i32 %i.v, 1                           ; 2 uses
  store i32 %i.w, ptr %i.d, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a
  %i.x = phi i32 [ %i.w, %bb.h ], [ %i.e, %bb.a ]
  %i.y = and i32 %1, 4
  %.not23 = icmp ne i32 %i.y, 0
  %i.z = and i32 %i.x, 2
  %.not24 = icmp eq i32 %i.z, 0
  %or.cond = select i1 %.not23, i1 %.not24, i1 false
  br i1 %or.cond, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr i8, ptr %0, i64 512       ; 3 uses
  %i.ab = load volatile i64, ptr %i.aa, align 8
  %i.ac = getelementptr i8, ptr %0, i64 408
  br label %bb.k

bb.k:                                             ; preds = %local64_try_cmpxchg.exit.i, %bb.j
  %.0.i = phi i64 [ %i.ab, %bb.j ], [ %i.ao, %local64_try_cmpxchg.exit.i ] ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = trunc i64 %i.ad to i32                  ; 2 uses
  %i.af = tail call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %i.ae) #13, !srcloc !13 ; 2 uses
  %i.ag = extractvalue { i64, i64 } %i.af, 0      ; 2 uses
  %i.ah = extractvalue { i64, i64 } %i.af, 1
  %i.ai = shl i64 %i.ah, 32
  %i.aj = or i64 %i.ai, %i.ag                     ; 2 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_read_msr, i64 8), i1 false) #13
          to label %native_read_msr.exit.i [label %bb.l], !srcloc !11

bb.l:                                             ; preds = %bb.k
  tail call void @do_trace_read_msr(i32 noundef %i.ae, i64 noundef %i.aj, i32 noundef 0) #12
  br label %native_read_msr.exit.i

native_read_msr.exit.i:                           ; preds = %bb.l, %bb.k
  %i.ak = tail call { i8, i64 } asm sideeffect "cmpxchgq $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.aa, i64 %i.aj, ptr elementtype(i64) %i.aa, i64 %.0.i) #13, !srcloc !16 ; 2 uses
  %i.al = extractvalue { i8, i64 } %i.ak, 0       ; 2 uses
  %i.am = icmp ult i8 %i.al, 2
  tail call void @llvm.assume(i1 %i.am)
  %i.an = trunc nuw i8 %i.al to i1
  br i1 %i.an, label %rapl_event_update.exit, label %local64_try_cmpxchg.exit.i, !prof !15

local64_try_cmpxchg.exit.i:                       ; preds = %native_read_msr.exit.i
  %i.ao = extractvalue { i8, i64 } %i.ak, 1
  br label %bb.k

rapl_event_update.exit:                           ; preds = %native_read_msr.exit.i
  %i.ap = sub i64 %i.ag, %.0.i
  %i.aq = shl i64 %i.ap, 32
  %i.ar = ashr exact i64 %i.aq, 32
  %i.as = getelementptr i8, ptr %0, i64 152
  %.val.i = load ptr, ptr %i.as, align 8
  %i.at = getelementptr i8, ptr %0, i64 368
  %.val14.i = load i64, ptr %i.at, align 8
  %i.au = getelementptr i8, ptr %.val.i, i64 96
  %.val.val.i = load i32, ptr %i.au, align 8
  %i.av = getelementptr [4 x i8], ptr @rapl_pkg_hw_unit, i64 %.val14.i
  %i.aw = getelementptr i8, ptr %i.av, i64 -4
  %i.ax = icmp eq i32 %.val.val.i, 1
  %spec.select.i.i = select i1 %i.ax, ptr @rapl_core_hw_unit, ptr %i.aw
  %.0.i.i = load i32, ptr %spec.select.i.i, align 4
  %i.ay = sub i32 32, %.0.i.i
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = shl i64 %i.ar, %i.az
  %i.bb = getelementptr i8, ptr %0, i64 176       ; 2 uses
  tail call void asm sideeffect " addq $1,$0", "=*m,ir,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bb, i64 %i.ba, ptr elementtype(i64) %i.bb) #13, !srcloc !17
  %i.bc = load i32, ptr %i.d, align 8
  %i.bd = or i32 %i.bc, 2
  store i32 %i.bd, ptr %i.d, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %rapl_event_update.exit
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.b, i64 noundef %i.c) #12
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rapl_pmu_event_read(ptr noundef %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 512        ; 3 uses
  %i.b = load volatile i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 408
  br label %bb.b

bb.b:                                             ; preds = %local64_try_cmpxchg.exit.i, %bb.a
  %.0.i = phi i64 [ %i.b, %bb.a ], [ %i.o, %local64_try_cmpxchg.exit.i ] ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = tail call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %i.e) #13, !srcloc !13 ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.f, 1
  %i.i = shl i64 %i.h, 32
  %i.j = or i64 %i.i, %i.g                        ; 2 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_read_msr, i64 8), i1 false) #13
          to label %native_read_msr.exit.i [label %bb.c], !srcloc !11

bb.c:                                             ; preds = %bb.b
  tail call void @do_trace_read_msr(i32 noundef %i.e, i64 noundef %i.j, i32 noundef 0) #12
  br label %native_read_msr.exit.i

native_read_msr.exit.i:                           ; preds = %bb.c, %bb.b
  %i.k = tail call { i8, i64 } asm sideeffect "cmpxchgq $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.a, i64 %i.j, ptr elementtype(i64) %i.a, i64 %.0.i) #13, !srcloc !16 ; 2 uses
  %i.l = extractvalue { i8, i64 } %i.k, 0         ; 2 uses
  %i.m = icmp ult i8 %i.l, 2
  tail call void @llvm.assume(i1 %i.m)
  %i.n = trunc nuw i8 %i.l to i1
  br i1 %i.n, label %rapl_event_update.exit, label %local64_try_cmpxchg.exit.i, !prof !15

local64_try_cmpxchg.exit.i:                       ; preds = %native_read_msr.exit.i
  %i.o = extractvalue { i8, i64 } %i.k, 1
  br label %bb.b

rapl_event_update.exit:                           ; preds = %native_read_msr.exit.i
  %i.p = sub i64 %i.g, %.0.i
  %i.q = shl i64 %i.p, 32
  %i.r = ashr exact i64 %i.q, 32
  %i.s = getelementptr i8, ptr %0, i64 152
  %.val.i = load ptr, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %0, i64 368
  %.val14.i = load i64, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %.val.i, i64 96
  %.val.val.i = load i32, ptr %i.u, align 8
  %i.v = getelementptr [4 x i8], ptr @rapl_pkg_hw_unit, i64 %.val14.i
  %i.w = getelementptr i8, ptr %i.v, i64 -4
  %i.x = icmp eq i32 %.val.val.i, 1
  %spec.select.i.i = select i1 %i.x, ptr @rapl_core_hw_unit, ptr %i.w
  %.0.i.i = load i32, ptr %spec.select.i.i, align 4
  %i.y = sub i32 32, %.0.i.i
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = shl i64 %i.r, %i.z
  %i.ab = getelementptr i8, ptr %0, i64 176       ; 2 uses
  tail call void asm sideeffect " addq $1,$0", "=*m,ir,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ab, i64 %i.aa, ptr elementtype(i64) %i.ab) #13, !srcloc !17
  ret void
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc range(i32 -12, 1) i32 @init_rapl_pmu(ptr noundef nonnull %0) unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 320        ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not29 = icmp eq i32 %i.b, 0
  br i1 %.not29, label %.loopexit, label %_kzalloc_noprof.exit.lr.ph

_kzalloc_noprof.exit.lr.ph:                       ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 328
  br label %_kzalloc_noprof.exit

_kzalloc_noprof.exit:                             ; preds = %_kzalloc_noprof.exit.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %_kzalloc_noprof.exit.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.02327 = phi i32 [ 0, %_kzalloc_noprof.exit.lr.ph ], [ %i.p, %bb.b ] ; 3 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 56), align 8
  %i.e = tail call noalias align 8 dereferenceable_or_null(128) ptr @__kmalloc_cache_noprof(ptr noundef %i.d, i32 noundef 3520, i64 noundef range(i64 -17179869184, 17179869505) 128) #19 ; 8 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %_kzalloc_noprof.exit
  %i.f = icmp sgt i32 %.02327, 0
  br i1 %i.f, label %.lr.ph, label %.loopexit

bb.b:                                             ; preds = %_kzalloc_noprof.exit
  store i32 0, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.e, i64 16       ; 3 uses
  store volatile ptr %i.g, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %i.e, i64 24
  store volatile ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %i.e, i64 32
  store ptr %0, ptr %i.i, align 8
  %i.j = load i64, ptr @rapl_timer_ms, align 8
  %i.k = mul i64 %i.j, 1000000
  %i.l = getelementptr i8, ptr %i.e, i64 40
  store i64 %i.k, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.e, i64 48
  tail call void @hrtimer_setup(ptr noundef %i.m, ptr noundef @rapl_hrtimer_handle, i32 noundef 1, i32 noundef 1) #12
  %i.n = sext i32 %.02327 to i64
  %i.o = getelementptr [8 x i8], ptr %i.c, i64 %i.n
  store ptr %i.e, ptr %i.o, align 8
  %i.p = add nuw i32 %.02327, 1                   ; 2 uses
  %i.q = load i32, ptr %i.a, align 8
  %i.r = icmp ult i32 %i.p, %i.q
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.r, label %_kzalloc_noprof.exit, label %.loopexit, !llvm.loop !43

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %.lr.ph ], [ %indvars.iv, %.preheader ] ; 3 uses
  %i.s = getelementptr [8 x i8], ptr %0, i64 %indvars.iv33
  %i.t = getelementptr i8, ptr %i.s, i64 320
  %i.u = load ptr, ptr %i.t, align 8
  tail call void @kfree(ptr noundef %i.u) #12
  %indvars.iv.next34 = add nsw i64 %indvars.iv33, -1
  %1 = icmp sgt i64 %indvars.iv33, 1
  br i1 %1, label %.lr.ph, label %.loopexit, !llvm.loop !44

.loopexit:                                        ; preds = %bb.b, %.lr.ph, %bb.a, %.preheader
  %.0 = phi i32 [ -12, %.preheader ], [ 0, %bb.a ], [ -12, %.lr.ph ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #5

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc_noprof(i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @hrtimer_setup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, 2) i32 @rapl_hrtimer_handle(ptr noundef %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -48        ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 -44
  %i.c = load i32, ptr %i.b, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.a) #12
  %i.e = getelementptr i8, ptr %0, i64 -32        ; 3 uses
  %.pn21 = load ptr, ptr %i.e, align 8            ; 2 uses
  %.not2022 = icmp eq ptr %.pn21, %i.e
  br i1 %.not2022, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %rapl_event_update.exit
  %.pn23 = phi ptr [ %.pn, %rapl_event_update.exit ], [ %.pn21, %bb.b ] ; 6 uses
  %i.f = getelementptr i8, ptr %.pn23, i64 400    ; 3 uses
  %i.g = load volatile i64, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %.pn23, i64 296
  br label %bb.c

bb.c:                                             ; preds = %local64_try_cmpxchg.exit.i, %.lr.ph
  %.0.i = phi i64 [ %i.g, %.lr.ph ], [ %i.t, %local64_try_cmpxchg.exit.i ] ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  %i.k = tail call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %i.j) #13, !srcloc !13 ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.k, 1
  %i.n = shl i64 %i.m, 32
  %i.o = or i64 %i.n, %i.l                        ; 2 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_read_msr, i64 8), i1 false) #13
          to label %native_read_msr.exit.i [label %bb.d], !srcloc !11

bb.d:                                             ; preds = %bb.c
  tail call void @do_trace_read_msr(i32 noundef %i.j, i64 noundef %i.o, i32 noundef 0) #12
  br label %native_read_msr.exit.i

native_read_msr.exit.i:                           ; preds = %bb.d, %bb.c
  %i.p = tail call { i8, i64 } asm sideeffect "cmpxchgq $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.f, i64 %i.o, ptr elementtype(i64) %i.f, i64 %.0.i) #13, !srcloc !16 ; 2 uses
  %i.q = extractvalue { i8, i64 } %i.p, 0         ; 2 uses
  %i.r = icmp ult i8 %i.q, 2
  tail call void @llvm.assume(i1 %i.r)
  %i.s = trunc nuw i8 %i.q to i1
  br i1 %i.s, label %rapl_event_update.exit, label %local64_try_cmpxchg.exit.i, !prof !15

local64_try_cmpxchg.exit.i:                       ; preds = %native_read_msr.exit.i
  %i.t = extractvalue { i8, i64 } %i.p, 1
  br label %bb.c

rapl_event_update.exit:                           ; preds = %native_read_msr.exit.i
  %i.u = sub i64 %i.l, %.0.i
  %i.v = shl i64 %i.u, 32
  %i.w = ashr exact i64 %i.v, 32
  %i.x = getelementptr i8, ptr %.pn23, i64 40
  %.val.i = load ptr, ptr %i.x, align 8
  %i.y = getelementptr i8, ptr %.pn23, i64 256
  %.val14.i = load i64, ptr %i.y, align 8
  %i.z = getelementptr i8, ptr %.val.i, i64 96
  %.val.val.i = load i32, ptr %i.z, align 8
  %i.aa = getelementptr [4 x i8], ptr @rapl_pkg_hw_unit, i64 %.val14.i
  %i.ab = getelementptr i8, ptr %i.aa, i64 -4
  %i.ac = icmp eq i32 %.val.val.i, 1
  %spec.select.i.i = select i1 %i.ac, ptr @rapl_core_hw_unit, ptr %i.ab
  %.0.i.i = load i32, ptr %spec.select.i.i, align 4
  %i.ad = sub i32 32, %.0.i.i
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = shl i64 %i.w, %i.ae
  %i.ag = getelementptr i8, ptr %.pn23, i64 64    ; 2 uses
  tail call void asm sideeffect " addq $1,$0", "=*m,ir,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ag, i64 %i.af, ptr elementtype(i64) %i.ag) #13, !srcloc !17
  %.pn = load ptr, ptr %.pn23, align 8            ; 2 uses
  %.not20 = icmp eq ptr %.pn, %i.e
  br i1 %.not20, label %._crit_edge, label %.lr.ph, !llvm.loop !45

._crit_edge:                                      ; preds = %rapl_event_update.exit, %bb.b
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.a, i64 noundef %i.d) #12
  %i.ah = getelementptr i8, ptr %0, i64 -8
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = tail call i64 @hrtimer_cb_get_time(ptr noundef %0) #12
  %i.ak = tail call i64 @hrtimer_forward(ptr noundef %0, i64 noundef %i.aj, i64 noundef %i.ai) #12 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %._crit_edge
  %.0 = phi i32 [ 1, %._crit_edge ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @hrtimer_cb_get_time(ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define internal noundef range(i64 -2147483648, 2147483648) i64 @event_show(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %2) #8 align 16 prefalign(16) {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(12) %2, ptr noundef align 1 dereferenceable(12) @.str.60, i64 12, i1 false)
  ret i64 11
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #9

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #11

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #10 = { nocallback nounwind }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { noredzone nounwind "no-builtin-wcslen" }
attributes #13 = { nounwind }
attributes #14 = { cold noredzone "no-builtin-wcslen" }
attributes #15 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #16 = { noredzone "no-builtin-wcslen" }
attributes #17 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }
attributes #18 = { nounwind memory(none) }
attributes #19 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }

!llvm.named.register.rsp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{!"rsp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 8, !"cf-protection-branch", i32 1}
!3 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5 = !{i32 1, !"Code Model", i32 2}
!6 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!7 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!8 = !{i32 1, !"override-stack-alignment", i32 8}
!9 = !{i32 4, !"SkipRaxSetup", i32 1}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!11 = !{i64 2148780133, i64 2148780173, i64 2148780290, i64 2148780311, i64 2148780354, i64 2148780369, i64 2148780402, i64 2148780436, i64 2148780460}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{i64 2405602, i64 2405623, i64 2150625039, i64 2150625134, i64 2150625157, i64 2150625190, i64 2150625221, i64 2150625260}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!15 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!16 = !{i64 2156309514}
!17 = !{i64 2156295328}
!18 = !{i64 2406679, i64 2406720, i64 2406724, i64 2150627252, i64 2150627277, i64 2150627312, i64 2150627560, i64 2150627613, i64 2150627644, i64 2150627675, i64 2150627753, i64 2150627787, i64 2150627825, i64 2150627868, i64 2150627891, i64 2150627929, i64 2150627951, i64 2150627982, i64 2150628067, i64 2150628101, i64 2150628139, i64 2150628182, i64 2150628205, i64 2150628243, i64 2150628265, i64 2150628299, i64 2150628361, i64 2150628384, i64 2150627378, i64 2150628458, i64 2150627489}
!19 = !{i64 26546}
!20 = !{i64 26945}
!21 = !{i64 27482}
!22 = !{i64 27544}
!23 = !{i64 27637}
!24 = !{i64 27828}
!25 = !{i64 27910}
!26 = distinct !{!26, !12}
!27 = !{i64 2148576712}
!28 = !{i64 21887}
!29 = distinct !{!29, !12}
!30 = !{i64 2148581380, i64 2148581409, i64 2148581415, i64 2148581431, i64 2148581447, i64 2148581474, i64 2148581574, i64 2148581653, i64 2148581767, i64 2148581815, i64 2148581863, i64 2148581927, i64 2148581984, i64 2148582036, i64 2148582162, i64 2148582399, i64 2148582248, i64 2148582279, i64 2148582285, i64 2148582301, i64 2148582317}
!31 = !{i64 2158439681}
end_hunk_0
