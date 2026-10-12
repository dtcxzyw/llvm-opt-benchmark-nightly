Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/io_apic?download=true
inline.NumInlined: 223
inline.NumDeleted: 75
loop-unroll.NumUnrolled: 1
begin_hunk_0_@__acpi_get_override_irq:bb.a

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr i8, ptr %i.q, i64 6
  %i.v = load i8, ptr %i.u, align 2               ; 2 uses
  %i.w = load i8, ptr %i.p, align 1
  %i.x = icmp eq i8 %i.w, %i.v
  %i.y = icmp eq i8 %i.v, -1
  %or.cond.i = or i1 %i.y, %i.x
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr i8, ptr %i.q, i64 7
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i32
  %i.ac = icmp eq i32 %i.l, %i.ab
  br i1 %i.ac, label %find_irq_entry.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %indvars.iv.next.i19 = add nuw nsw i64 %indvars.iv.i18, 1 ; 2 uses
  %exitcond.not.i20 = icmp eq i64 %indvars.iv.next.i19, %wide.trip.count.i17
  br i1 %exitcond.not.i20, label %mp_find_ioapic.exit.thread, label %bb.f, !llvm.loop !5

find_irq_entry.exit:                              ; preds = %bb.h
  %i.ad = getelementptr i8, ptr %i.q, i64 4       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.q, i64 2       ; 2 uses
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = and i16 %i.af, 12
  switch i16 %i.ag, label %.unreachabledefault.i [
    i16 0, label %arch_test_bit.exit.i
    i16 4, label %irq_is_level.exit
    i16 8, label %bb.j
    i16 12, label %bb.k
  ]

arch_test_bit.exit.i:                             ; preds = %find_irq_entry.exit
  %i.ah = load i8, ptr %i.ad, align 4
  %i.ai = zext i8 %i.ah to i64
  %i.aj = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @mp_bus_not_pci, i64 range(i64 -2147483648, 2147483648) %i.ai) #26, !srcloc !26 ; 2 uses
  %i.ak = icmp ult i8 %i.aj, 2
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = xor i8 %i.aj, 1
  br label %irq_is_level.exit

bb.j:                                             ; preds = %find_irq_entry.exit
  %i.am = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #22 ; 0 uses
  br label %bb.k

.unreachabledefault.i:                            ; preds = %find_irq_entry.exit
  unreachable

bb.k:                                             ; preds = %bb.j, %find_irq_entry.exit
  br label %irq_is_level.exit

irq_is_level.exit:                                ; preds = %find_irq_entry.exit, %arch_test_bit.exit.i, %bb.k
  %.0.i21 = phi i8 [ %i.al, %arch_test_bit.exit.i ], [ 1, %bb.k ], [ 0, %find_irq_entry.exit ]
  store i8 %.0.i21, ptr %1, align 1
  %i.an = load i16, ptr %i.ae, align 2
  %i.ao = and i16 %i.an, 3
  switch i16 %i.ao, label %default.unreachable [
    i16 0, label %arch_test_bit.exit.i23
    i16 1, label %irq_active_low.exit
    i16 2, label %bb.l
    i16 3, label %bb.m
  ]

arch_test_bit.exit.i23:                           ; preds = %irq_is_level.exit
  %i.ap = load i8, ptr %i.ad, align 4
  %i.aq = zext i8 %i.ap to i64
  %i.ar = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @mp_bus_not_pci, i64 range(i64 -2147483648, 2147483648) %i.aq) #26, !srcloc !26 ; 2 uses
  %i.as = icmp ult i8 %i.ar, 2
  tail call void @llvm.assume(i1 %i.as)
  %i.at = xor i8 %i.ar, 1
  br label %irq_active_low.exit

bb.l:                                             ; preds = %irq_is_level.exit
  %i.au = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #22 ; 0 uses
  br label %bb.m

default.unreachable:                              ; preds = %irq_is_level.exit
  unreachable

bb.m:                                             ; preds = %bb.l, %irq_is_level.exit
  br label %irq_active_low.exit

irq_active_low.exit:                              ; preds = %irq_is_level.exit, %arch_test_bit.exit.i23, %bb.m
  %.0.i22 = phi i8 [ %i.at, %arch_test_bit.exit.i23 ], [ 1, %bb.m ], [ 0, %irq_is_level.exit ]
  store i8 %.0.i22, ptr %2, align 1
  br label %mp_find_ioapic.exit.thread

mp_find_ioapic.exit.thread:                       ; preds = %bb.i, %bb.e, %bb.b, %._crit_edge.i, %mp_find_ioapic_pin.exit, %bb.a, %irq_active_low.exit
  %.0 = phi i32 [ 0, %irq_active_low.exit ], [ -1, %bb.a ], [ -1, %._crit_edge.i ], [ -1, %mp_find_ioapic_pin.exit ], [ -1, %bb.e ], [ -1, %bb.b ], [ -1, %bb.i ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ioapic_set_alloc_attr(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  tail call void @init_irq_alloc_info(ptr noundef %0, ptr noundef null) #27
  store i32 1, ptr %0, align 8
  %i.a = getelementptr i8, ptr %0, i64 52
  store i32 %1, ptr %i.a, align 4
  %i.b = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.c = trunc i32 %2 to i8
  %i.d = load i8, ptr %i.b, align 8
  %i.e = and i8 %i.c, 1
  %i.f = and i8 %i.d, -8
  %i.g = trunc i32 %3 to i8
  %i.h = shl i8 %i.g, 1
  %i.i = and i8 %i.h, 2
  %i.j = or disjoint i8 %i.e, %i.i
  %i.k = or disjoint i8 %i.j, %i.f
  %i.l = or disjoint i8 %i.k, 4
  store i8 %i.l, ptr %i.b, align 8
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @init_irq_alloc_info(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @mp_map_gsi_to_irq(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr @nr_ioapics, align 4       ; 3 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %mp_find_ioapic.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.c = icmp sgt i32 %i.a, 0
  br i1 %i.c, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.a to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.d = getelementptr [72 x i8], ptr @ioapics, i64 %indvars.iv.i ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 24
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %.not.i = icmp ult i32 %0, %i.f
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr i8, ptr %i.d, i64 28
  %i.h = load i32, ptr %i.g, align 4
  %.not13.i = icmp ugt i32 %0, %i.h
  br i1 %.not13.i, label %bb.c, label %mp_find_ioapic_pin.exit

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !4

._crit_edge.i:                                    ; preds = %bb.c, %.preheader.i
  %i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %0) #22 ; 0 uses
  br label %mp_find_ioapic.exit.thread

mp_find_ioapic_pin.exit:                          ; preds = %bb.b
  %i.j = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.k = sub i32 %0, %i.f                         ; 2 uses
  %.pre = load i32, ptr @mp_irq_entries, align 4  ; 2 uses
  %i.l = icmp sgt i32 %.pre, 0
  br i1 %i.l, label %.lr.ph.i17, label %find_irq_entry.exit

.lr.ph.i17:                                       ; preds = %mp_find_ioapic_pin.exit
  %i.m = getelementptr i8, ptr %i.d, i64 17
  %wide.trip.count.i18 = zext nneg i32 %.pre to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.lr.ph.i17
  %indvars.iv.i19 = phi i64 [ 0, %.lr.ph.i17 ], [ %indvars.iv.next.i20, %bb.g ] ; 3 uses
  %i.n = getelementptr [8 x i8], ptr @mp_irqs, i64 %indvars.iv.i19 ; 3 uses
  %i.o = getelementptr i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %i.n, i64 6
  %i.s = load i8, ptr %i.r, align 2               ; 2 uses
  %i.t = load i8, ptr %i.m, align 1
  %i.u = icmp eq i8 %i.t, %i.s
  %i.v = icmp eq i8 %i.s, -1
  %or.cond.i = or i1 %i.v, %i.u
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr i8, ptr %i.n, i64 7
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i32
  %i.z = icmp eq i32 %i.k, %i.y
  br i1 %i.z, label %._crit_edge.loopexit.split.loop.exit16.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %indvars.iv.next.i20 = add nuw nsw i64 %indvars.iv.i19, 1 ; 2 uses
  %exitcond.not.i21 = icmp eq i64 %indvars.iv.next.i20, %wide.trip.count.i18
  br i1 %exitcond.not.i21, label %find_irq_entry.exit, label %bb.d, !llvm.loop !5

._crit_edge.loopexit.split.loop.exit16.i:         ; preds = %bb.f
  %i.aa = trunc nuw nsw i64 %indvars.iv.i19 to i32
  br label %bb.h

find_irq_entry.exit:                              ; preds = %bb.g, %mp_find_ioapic_pin.exit
  %i.ab = and i32 %1, 2
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.h, label %mp_find_ioapic.exit.thread

bb.h:                                             ; preds = %._crit_edge.loopexit.split.loop.exit16.i, %find_irq_entry.exit
  %.011.i25 = phi i32 [ %i.aa, %._crit_edge.loopexit.split.loop.exit16.i ], [ -1, %find_irq_entry.exit ]
  %i.ac = tail call fastcc i32 @mp_map_pin_to_irq(i32 noundef %0, i32 noundef %.011.i25, i32 noundef %i.j, i32 noundef %i.k, i32 noundef %1, ptr noundef %2) #24, !srcloc !45
  br label %mp_find_ioapic.exit.thread

mp_find_ioapic.exit.thread:                       ; preds = %bb.a, %._crit_edge.i, %find_irq_entry.exit, %bb.h
  %.0 = phi i32 [ %i.ac, %bb.h ], [ -19, %bb.a ], [ -19, %find_irq_entry.exit ], [ -19, %._crit_edge.i ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 2147483647) i32 @mp_find_ioapic(i32 noundef %0) local_unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr @nr_ioapics, align 4       ; 3 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = icmp sgt i32 %i.a, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.d = getelementptr [72 x i8], ptr @ioapics, i64 %indvars.iv ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 24
  %i.f = load i32, ptr %i.e, align 8
  %.not = icmp ult i32 %0, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr i8, ptr %i.d, i64 28
  %i.h = load i32, ptr %i.g, align 4
  %.not13 = icmp ugt i32 %0, %i.h
  br i1 %.not13, label %bb.c, label %.loopexit.loopexit

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !4

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %0) #22 ; 0 uses
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.b
  %i.j = trunc nuw nsw i64 %indvars.iv to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a, %._crit_edge
  %.2 = phi i32 [ -1, %._crit_edge ], [ -1, %bb.a ], [ %i.j, %.loopexit.loopexit ]
  ret i32 %.2
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @mp_find_ioapic_pin(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.b, label %.critedge, !prof !46

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "660: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 660b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 660) #26, !srcloc !47
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.15, ptr nonnull @.str.16, i32 2627, i32 2305, i64 16) #26, !srcloc !48
  tail call void asm sideeffect "661: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 661b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 661) #26, !srcloc !49
  br label %bb.d

.critedge:                                        ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr [72 x i8], ptr @ioapics, i64 %i.b ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 28
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp ugt i32 %1, %i.e
  br i1 %i.f, label %bb.c, label %.critedge17, !prof !46

bb.c:                                             ; preds = %.critedge
  tail call void asm sideeffect "662: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 662b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 662) #26, !srcloc !50
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.15, ptr nonnull @.str.16, i32 2631, i32 2305, i64 16) #26, !srcloc !51
  tail call void asm sideeffect "663: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 663b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 663) #26, !srcloc !52
  br label %bb.d

.critedge17:                                      ; preds = %.critedge
  %i.g = getelementptr i8, ptr %i.c, i64 24
  %i.h = load i32, ptr %i.g, align 8
  %i.i = sub i32 %1, %i.h
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.critedge17
  %.0 = phi i32 [ %i.i, %.critedge17 ], [ -1, %bb.b ], [ -1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, argmem: none, inaccessiblemem: none, target_mem: none)
define internal fastcc range(i32 -2147483648, 2147483647) i32 @find_irq_entry(i32 noundef %0, i32 noundef %1) unnamed_addr #10 align 16 {
bb.a:
  %i.a = load i32, ptr @mp_irq_entries, align 4   ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = sext i32 %0 to i64
  %i.d = getelementptr [72 x i8], ptr @ioapics, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 17
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.f = getelementptr [8 x i8], ptr @mp_irqs, i64 %indvars.iv ; 3 uses
  %i.g = getelementptr i8, ptr %i.f, i64 1
  %i.h = load i8, ptr %i.g, align 1
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.f, i64 6
  %i.k = load i8, ptr %i.j, align 2               ; 2 uses
  %i.l = load i8, ptr %i.e, align 1
  %i.m = icmp eq i8 %i.l, %i.k
  %i.n = icmp eq i8 %i.k, -1
  %or.cond = or i1 %i.n, %i.m
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %i.f, i64 7
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i32
  %i.r = icmp eq i32 %1, %i.q
  br i1 %i.r, label %._crit_edge.loopexit.split.loop.exit16, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !5

._crit_edge.loopexit.split.loop.exit16:           ; preds = %bb.d
  %i.s = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %._crit_edge.loopexit.split.loop.exit16, %bb.a
  %.011 = phi i32 [ -1, %bb.a ], [ %i.s, %._crit_edge.loopexit.split.loop.exit16 ], [ -1, %bb.e ]
  ret i32 %.011
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @mp_map_pin_to_irq(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %6 = alloca %struct.irq_alloc_info, align 8     ; 14 uses
  %i.e = sext i32 %2 to i64
  %i.f = getelementptr [72 x i8], ptr @ioapics, i64 %i.e ; 3 uses
  %i.g = getelementptr i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %6, i8 0, i64 72, i1 false), !annotation !27
  %i.i = icmp sgt i32 %1, -1
  br i1 %i.i, label %arch_test_bit.exit, label %bb.d

arch_test_bit.exit:                               ; preds = %bb.b
  %i.j = zext nneg i32 %1 to i64
  %i.k = getelementptr [8 x i8], ptr @mp_irqs, i64 %i.j ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %i.m = load i8, ptr %i.l, align 4
  %i.n = zext i8 %i.m to i64
  %i.o = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @mp_bus_not_pci, i64 range(i64 -2147483648, 2147483648) %i.n) #26, !srcloc !26 ; 2 uses
  %i.p = icmp ult i8 %i.o, 2
  tail call void @llvm.assume(i1 %i.p)
  %i.q = trunc nuw i8 %i.o to i1
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %arch_test_bit.exit
  %i.r = getelementptr i8, ptr %i.k, i64 5
  %i.s = load i8, ptr %i.r, align 1               ; 2 uses
  %i.t = zext i8 %i.s to i32                      ; 2 uses
  %i.u = load ptr, ptr @legacy_pic, align 8
  %i.v = load i32, ptr %i.u, align 8
  %i.w = icmp sgt i32 %i.v, %i.t                  ; 2 uses
  %i.x = icmp eq i8 %i.s, 2
  %or.cond = and i1 %i.x, %i.w
  br i1 %or.cond, label %bb.y, label %bb.d

bb.d:                                             ; preds = %bb.c, %arch_test_bit.exit, %bb.b
  %.035 = phi i1 [ %i.w, %bb.c ], [ false, %bb.b ], [ false, %arch_test_bit.exit ] ; 2 uses
  %.0 = phi i32 [ %i.t, %bb.c ], [ 0, %bb.b ], [ 0, %arch_test_bit.exit ] ; 2 uses
  tail call void @mutex_lock(ptr noundef nonnull @ioapic_mutex) #27
  %i.y = and i32 %4, 1
  %.not40 = icmp eq i32 %i.y, 0
  br i1 %.not40, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  br i1 %.035, label %alloc_irq_from_domain.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = sext i32 %3 to i64
end_hunk_0
begin_hunk_1_@mp_register_ioapic:bb.a
  br i1 %.not80, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dg = getelementptr i8, ptr %i.db, i64 28
  %i.dh = load i32, ptr %i.dg, align 4            ; 2 uses
  %.not81 = icmp ugt i32 %i.cy, %i.dh
  br i1 %.not81, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.o
  %i.di = phi i32 [ %i.df, %bb.m ], [ %i.dh, %bb.o ]
  %i.dj = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %2, i32 noundef %i.cy, i32 noundef %i.dd, i32 noundef %i.di) #22 ; 0 uses
  call void @native_set_fixmap(i32 noundef %i.aa, i64 noundef 0, i64 0) #27
  br label %bb.z

bb.q:                                             ; preds = %bb.n, %bb.o
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %exitcond105.not = icmp eq i64 %indvars.iv.next102, %wide.trip.count104
  br i1 %exitcond105.not, label %._crit_edge, label %.lr.ph94, !llvm.loop !108

._crit_edge:                                      ; preds = %bb.q, %io_apic_unique_id.exit
  %i.dk = getelementptr i8, ptr %.lcssa126, i64 24 ; 2 uses
  store i32 %2, ptr %i.dk, align 8
  %i.dl = getelementptr i8, ptr %.lcssa126, i64 28 ; 2 uses
  store i32 %i.cy, ptr %i.dl, align 4
  %i.dm = getelementptr i8, ptr %.lcssa126, i64 56
  store ptr null, ptr %i.dm, align 8
  %i.dn = getelementptr i8, ptr %.lcssa126, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %i.dn, ptr noundef align 8 dereferenceable(24) %3, i64 24, i1 false)
  br i1 %.b, label %bb.r, label %bb.u

bb.r:                                             ; preds = %._crit_edge
  %i.do = call fastcc i32 @mp_irqdomain_create(i32 noundef %i.w) #24, !srcloc !112
  %.not75 = icmp eq i32 %i.do, 0
  br i1 %.not75, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @native_set_fixmap(i32 noundef %i.aa, i64 noundef 0, i64 0) #27
  br label %bb.z

bb.t:                                             ; preds = %bb.r
  call fastcc void @alloc_ioapic_saved_registers(i32 noundef %i.w) #24, !srcloc !113
  %.pre = load i32, ptr %i.dl, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge
  %i.dp = phi i32 [ %.pre, %bb.t ], [ %i.cy, %._crit_edge ] ; 3 uses
  %i.dq = load i32, ptr @gsi_top, align 4
  %.not76 = icmp ult i32 %i.dp, %i.dq
  br i1 %.not76, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dr = add i32 %i.dp, 1
  store i32 %i.dr, ptr @gsi_top, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ds = load i32, ptr @nr_ioapics, align 4
  %.not77 = icmp sgt i32 %i.ds, %i.w
  br i1 %.not77, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dt = add nuw nsw i32 %i.w, 1
  store i32 %i.dt, ptr @nr_ioapics, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  store i32 %i.cx, ptr %.lcssa126, align 8
  %i.du = load i8, ptr %i.cm, align 1
  %i.dv = zext i8 %i.du to i32
  %i.dw = load i8, ptr %i.cr, align 2
  %i.dx = zext i8 %i.dw to i32
  %i.dy = load i32, ptr %i.z, align 4
  %i.dz = load i32, ptr %i.dk, align 8
  %i.ea = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %i.w, i32 noundef %i.dv, i32 noundef %i.dx, i32 noundef %i.dy, i32 noundef %i.dz, i32 noundef %i.dp) #22 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.s, %bb.p, %bb.f, %find_free_ioapic_entry.exit.thread, %bb.c, %bb.b
  %.0 = phi i32 [ -17, %bb.c ], [ -28, %find_free_ioapic_entry.exit.thread ], [ -19, %bb.f ], [ -28, %bb.p ], [ -12, %bb.s ], [ 0, %bb.y ], [ -22, %bb.b ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -19, 1) i32 @mp_unregister_ioapic(i32 noundef %0) local_unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load i32, ptr @nr_ioapics, align 4       ; 2 uses
  %.not63 = icmp sgt i32 %i.b, 0
  br i1 %.not63, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.c = getelementptr [72 x i8], ptr @ioapics, i64 %indvars.iv ; 10 uses
  %i.d = getelementptr i8, ptr %i.c, i64 24
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp eq i32 %i.e, %0
  br i1 %i.f, label %.preheader, label %bb.b

.preheader:                                       ; preds = %.lr.ph
  %i.g = getelementptr i8, ptr %i.c, i64 24
  %i.h = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.i = load i32, ptr %i.c, align 8
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph67, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !114

.critedge:                                        ; preds = %bb.b, %bb.a
  %i.k = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %0) #22 ; 0 uses
  br label %bb.t

.lr.ph67:                                         ; preds = %.preheader, %mp_map_gsi_to_irq.exit.thread
  %.02865 = phi i32 [ %i.bp, %mp_map_gsi_to_irq.exit.thread ], [ 0, %.preheader ] ; 3 uses
  %i.l = load i32, ptr %i.g, align 8
  %i.m = add i32 %i.l, %.02865                    ; 4 uses
  %i.n = load i32, ptr @nr_ioapics, align 4       ; 3 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %mp_map_gsi_to_irq.exit.thread, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph67
  %i.p = icmp sgt i32 %i.n, 0
  br i1 %i.p, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.n to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.d ] ; 2 uses
  %i.q = getelementptr [72 x i8], ptr @ioapics, i64 %indvars.iv.i.i ; 4 uses
  %i.r = getelementptr i8, ptr %i.q, i64 24
  %i.s = load i32, ptr %i.r, align 8              ; 2 uses
  %.not.i.i = icmp ult i32 %i.m, %i.s
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.t = getelementptr i8, ptr %i.q, i64 28
  %i.u = load i32, ptr %i.t, align 4
  %.not13.i.i = icmp ugt i32 %i.m, %i.u
  br i1 %.not13.i.i, label %bb.d, label %mp_find_ioapic_pin.exit.i

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !4

._crit_edge.i.i:                                  ; preds = %bb.d, %.preheader.i.i
  %i.v = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %i.m) #22 ; 0 uses
  br label %mp_map_gsi_to_irq.exit.thread

mp_find_ioapic_pin.exit.i:                        ; preds = %bb.c
  %i.w = sub nuw i32 %i.m, %i.s                   ; 2 uses
  %.pre.i = load i32, ptr @mp_irq_entries, align 4 ; 2 uses
  %i.x = icmp sgt i32 %.pre.i, 0
  br i1 %i.x, label %.lr.ph.i17.i, label %find_irq_entry.exit.i

.lr.ph.i17.i:                                     ; preds = %mp_find_ioapic_pin.exit.i
  %i.y = getelementptr i8, ptr %i.q, i64 17
  %wide.trip.count.i18.i = zext nneg i32 %.pre.i to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i17.i
  %indvars.iv.i19.i = phi i64 [ 0, %.lr.ph.i17.i ], [ %indvars.iv.next.i20.i, %bb.h ] ; 3 uses
  %i.z = getelementptr [8 x i8], ptr @mp_irqs, i64 %indvars.iv.i19.i ; 3 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 1
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr i8, ptr %i.z, i64 6
  %i.ae = load i8, ptr %i.ad, align 2             ; 2 uses
  %i.af = load i8, ptr %i.y, align 1
  %i.ag = icmp eq i8 %i.af, %i.ae
  %i.ah = icmp eq i8 %i.ae, -1
  %or.cond.i.i = or i1 %i.ah, %i.ag
  br i1 %or.cond.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr i8, ptr %i.z, i64 7
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = zext i8 %i.aj to i32
  %i.al = icmp eq i32 %i.w, %i.ak
  br i1 %i.al, label %._crit_edge.loopexit.split.loop.exit16.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %indvars.iv.next.i20.i = add nuw nsw i64 %indvars.iv.i19.i, 1 ; 2 uses
  %exitcond.not.i21.i = icmp eq i64 %indvars.iv.next.i20.i, %wide.trip.count.i18.i
  br i1 %exitcond.not.i21.i, label %find_irq_entry.exit.i, label %bb.e, !llvm.loop !5

._crit_edge.loopexit.split.loop.exit16.i.i:       ; preds = %bb.g
  %i.am = trunc nuw nsw i64 %indvars.iv.i19.i to i32
  br label %find_irq_entry.exit.i

find_irq_entry.exit.i:                            ; preds = %bb.h, %mp_find_ioapic_pin.exit.i, %._crit_edge.loopexit.split.loop.exit16.i.i
  %.011.i.i = phi i32 [ %i.am, %._crit_edge.loopexit.split.loop.exit16.i.i ], [ -1, %mp_find_ioapic_pin.exit.i ], [ -1, %bb.h ] ; 2 uses
  %i.an = getelementptr i8, ptr %i.q, i64 56
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %.not.i39 = icmp eq ptr %i.ao, null
  br i1 %.not.i39, label %mp_map_gsi_to_irq.exit.thread, label %bb.i

bb.i:                                             ; preds = %find_irq_entry.exit.i
  %i.ap = icmp sgt i32 %.011.i.i, -1
  br i1 %i.ap, label %arch_test_bit.exit.i, label %.thread

arch_test_bit.exit.i:                             ; preds = %bb.i
  %i.aq = zext nneg i32 %.011.i.i to i64
  %i.ar = getelementptr [8 x i8], ptr @mp_irqs, i64 %i.aq ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 4
  %i.at = load i8, ptr %i.as, align 4
  %i.au = zext i8 %i.at to i64
  %i.av = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @mp_bus_not_pci, i64 range(i64 -2147483648, 2147483648) %i.au) #26, !srcloc !26 ; 2 uses
  %i.aw = icmp ult i8 %i.av, 2
  call void @llvm.assume(i1 %i.aw)
  %i.ax = trunc nuw i8 %i.av to i1
  br i1 %i.ax, label %bb.j, label %.thread

bb.j:                                             ; preds = %arch_test_bit.exit.i
  %i.ay = getelementptr i8, ptr %i.ar, i64 5
  %i.az = load i8, ptr %i.ay, align 1             ; 2 uses
  %i.ba = zext i8 %i.az to i32                    ; 2 uses
  %i.bb = load ptr, ptr @legacy_pic, align 8
  %i.bc = load i32, ptr %i.bb, align 8
  %i.bd = icmp sgt i32 %i.bc, %i.ba               ; 2 uses
  %i.be = icmp eq i8 %i.az, 2
  %or.cond.i = and i1 %i.be, %i.bd
  br i1 %or.cond.i, label %mp_map_gsi_to_irq.exit.thread, label %bb.k

.thread:                                          ; preds = %arch_test_bit.exit.i, %bb.i
  call void @mutex_lock(ptr noundef nonnull @ioapic_mutex) #27
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @mutex_lock(ptr noundef nonnull @ioapic_mutex) #27
  br i1 %i.bd, label %mp_map_gsi_to_irq.exit.thread48, label %bb.l

mp_map_gsi_to_irq.exit.thread48:                  ; preds = %bb.k
  call void @mutex_unlock(ptr noundef nonnull @ioapic_mutex) #27
  br label %bb.m

bb.l:                                             ; preds = %.thread, %bb.k
  %i.bf = sext i32 %i.w to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !annotation !27
  %i.bg = call ptr @__irq_resolve_mapping(ptr noundef nonnull %i.ao, i64 noundef range(i64 -2147483648, 2147483648) %i.bf, ptr noundef nonnull %i.a) #27
  %.not.i.i41 = icmp ne ptr %i.bg, null
  %i.bh = load i32, ptr %i.a, align 4             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @mutex_unlock(ptr noundef nonnull @ioapic_mutex) #27
  %i.bi = icmp sgt i32 %i.bh, 0
  %or.cond = select i1 %.not.i.i41, i1 %i.bi, i1 false
  br i1 %or.cond, label %bb.m, label %mp_map_gsi_to_irq.exit.thread

bb.m:                                             ; preds = %bb.l, %mp_map_gsi_to_irq.exit.thread48
  %.2.i50 = phi i32 [ %i.ba, %mp_map_gsi_to_irq.exit.thread48 ], [ %i.bh, %bb.l ]
  %i.bj = call ptr @irq_get_irq_data(i32 noundef %.2.i50) #27 ; 2 uses
  %.not.i = icmp eq ptr %i.bj, null
  br i1 %.not.i, label %mp_map_gsi_to_irq.exit.thread, label %irq_get_chip_data.exit

irq_get_chip_data.exit:                           ; preds = %bb.m
  %i.bk = getelementptr i8, ptr %i.bj, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  %.not34 = icmp eq ptr %i.bl, null
  br i1 %.not34, label %mp_map_gsi_to_irq.exit.thread, label %bb.n

bb.n:                                             ; preds = %irq_get_chip_data.exit
  %i.bm = getelementptr i8, ptr %i.bl, i64 28
  %i.bn = load i32, ptr %i.bm, align 4
  %.not35 = icmp eq i32 %i.bn, 0
  br i1 %.not35, label %mp_map_gsi_to_irq.exit.thread, label %.critedge37

.critedge37:                                      ; preds = %bb.n
  %i.bo = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %.02865, i32 noundef %i.h) #22 ; 0 uses
  br label %bb.t

mp_map_gsi_to_irq.exit.thread:                    ; preds = %bb.l, %bb.j, %find_irq_entry.exit.i, %bb.m, %._crit_edge.i.i, %.lr.ph67, %irq_get_chip_data.exit, %bb.n
  %i.bp = add nuw nsw i32 %.02865, 1              ; 2 uses
  %i.bq = load i32, ptr %i.c, align 8
  %i.br = icmp slt i32 %i.bp, %i.bq
  br i1 %i.br, label %.lr.ph67, label %._crit_edge, !llvm.loop !115

._crit_edge:                                      ; preds = %mp_map_gsi_to_irq.exit.thread, %.preheader
  store i32 0, ptr %i.c, align 8
  %i.bs = getelementptr i8, ptr %i.c, i64 56      ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8            ; 3 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 80
  %i.bv = load ptr, ptr %i.bu, align 8
  %.not.i38 = icmp eq ptr %i.bt, null
  br i1 %.not.i38, label %ioapic_destroy_irqdomain.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  call void @irq_domain_remove(ptr noundef nonnull %i.bt) #27
  %i.bw = getelementptr i8, ptr %i.c, i64 48
  %i.bx = load ptr, ptr %i.bw, align 8
  %.not6.i = icmp eq ptr %i.bx, null
  br i1 %.not6.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @irq_domain_free_fwnode(ptr noundef %i.bv) #27
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store ptr null, ptr %i.bs, align 8
  br label %ioapic_destroy_irqdomain.exit

ioapic_destroy_irqdomain.exit:                    ; preds = %._crit_edge, %bb.q
  %i.by = getelementptr i8, ptr %i.c, i64 8       ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8
  call void @kfree(ptr noundef %i.bz) #27
  store ptr null, ptr %i.by, align 8
  %i.ca = getelementptr i8, ptr %i.c, i64 64
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  %.not33 = icmp eq ptr %i.cb, null
  br i1 %.not33, label %bb.s, label %bb.r

bb.r:                                             ; preds = %ioapic_destroy_irqdomain.exit
  %i.cc = call i32 @release_resource(ptr noundef nonnull %i.cb) #27 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %ioapic_destroy_irqdomain.exit
  %i.cd = add nuw i32 %i.h, 516
  call void @native_set_fixmap(i32 noundef %i.cd, i64 noundef 0, i64 0) #27
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(72) %i.c, i8 0, i64 72, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %.critedge37, %bb.s, %.critedge
  %.2 = phi i32 [ -16, %.critedge37 ], [ 0, %bb.s ], [ -19, %.critedge ]
  ret i32 %.2
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @release_resource(ptr noundef) local_unnamed_addr #9

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, argmem: none, inaccessiblemem: none, target_mem: none)
define dso_local range(i32 0, 2) i32 @mp_ioapic_registered(i32 noundef %0) local_unnamed_addr #10 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr @nr_ioapics, align 4       ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !116

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.c = getelementptr [72 x i8], ptr @ioapics, i64 %indvars.iv
  %i.d = getelementptr i8, ptr %i.c, i64 24
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp eq i32 %i.e, %0
  br i1 %i.f, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.05 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %.lr.ph ]
  ret i32 %.05
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @mp_irqdomain_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #3 align 16 prefalign(16) {
bb.a:
  %i.a = icmp eq ptr %3, null
  %i.b = icmp ugt i32 %2, 1
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @irq_domain_get_irq_data(ptr noundef %0, i32 noundef %1) #27 ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.v, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = trunc i64 %i.f to i32                    ; 4 uses
  %i.h = getelementptr i8, ptr %3, i64 48         ; 2 uses
  %i.i = load i32, ptr %i.h, align 8              ; 6 uses
  %i.j = sext i32 %i.i to i64
  %i.k = tail call ptr @__irq_resolve_mapping(ptr noundef %0, i64 noundef range(i64 -2147483648, 2147483648) %i.j, ptr noundef null) #27
  %.not62 = icmp eq ptr %i.k, null
  br i1 %.not62, label %bb.d, label %bb.v

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 40), align 8
  %i.m = tail call noalias align 8 dereferenceable_or_null(32) ptr @__kmalloc_cache_noprof(ptr noundef %i.l, i32 noundef 3520, i64 noundef range(i64 -17179869184, 17179869177) 32) #30 ; 16 uses
  %.not63 = icmp eq ptr %i.m, null
  br i1 %.not63, label %bb.v, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = tail call i32 @irq_domain_alloc_irqs_parent(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %3) #27 ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
end_hunk_1
