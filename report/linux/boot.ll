inline.NumInlined: 38
inline.NumDeleted: 14
begin_hunk_0_@topology_register_apic

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal range(i32 -22, 1) i32 @acpi_parse_ioapic(ptr noundef %0, i64 noundef %1) #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.ioapic_domain_cfg, align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @__const.acpi_parse_ioapic.cfg, i64 24, i1 false)
  %.not = icmp eq ptr %0, null
  %i.a = ptrtoint ptr %0 to i64
  %i.b = add i64 %i.a, 12
  %i.c = icmp ugt i64 %i.b, %1
  %or.cond = or i1 %.not, %i.c
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1
  %i.f = icmp ult i8 %i.e, 12
  br i1 %i.f, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @acpi_table_print_madt_entry(ptr noundef nonnull %0) #17
  %i.g = getelementptr i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 1              ; 2 uses
  %i.i = load ptr, ptr @legacy_pic, align 8
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp ult i32 %i.h, %i.j
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %2, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr i8, ptr %0, i64 2
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i32
  %i.o = getelementptr i8, ptr %0, i64 4
  %i.p = load i32, ptr %i.o, align 1
  %i.q = call i32 @mp_register_ioapic(i32 noundef %i.n, i32 noundef %i.p, i32 noundef %i.h, ptr noundef nonnull %2) #17 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ -22, %bb.b ], [ -22, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret i32 %.0
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal range(i32 -22, 1) i32 @acpi_parse_int_src_ovr(ptr noundef %0, i64 noundef %1) #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %0, null
  %i.a = ptrtoint ptr %0 to i64
  %i.b = add i64 %i.a, 10
  %i.c = icmp ugt i64 %i.b, %1
  %or.cond28 = or i1 %.not, %i.c
  br i1 %or.cond28, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1
  %i.f = icmp ult i8 %i.e, 10
  br i1 %i.f, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @acpi_table_print_madt_entry(ptr noundef nonnull %0) #17
  %i.g = getelementptr i8, ptr %0, i64 3          ; 3 uses
  %i.h = load i8, ptr %i.g, align 1               ; 3 uses
  %i.i = icmp ult i8 %i.h, 16
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = zext nneg i8 %i.h to i64
  %i.k = getelementptr i8, ptr @acpi_int_src_ovr, i64 %i.j
  store i8 1, ptr %i.k, align 1
  %.pr = load i8, ptr %i.g, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = phi i8 [ %.pr, %bb.d ], [ %i.h, %bb.c ]  ; 4 uses
  %i.m = load i16, ptr getelementptr inbounds nuw (i8, ptr @acpi_gbl_FADT, i64 46), align 1
  %i.n = zext i8 %i.l to i16
  %i.o = icmp eq i16 %i.m, %i.n
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %0, i64 8
  %i.q = load i16, ptr %i.p, align 1              ; 2 uses
  %i.r = and i16 %i.q, 3
  %i.s = lshr i16 %i.q, 2
  %i.t = and i16 %i.s, 3
  %i.u = getelementptr i8, ptr %0, i64 4
  %i.v = load i32, ptr %i.u, align 1
  tail call fastcc void @acpi_sci_ioapic_setup(i8 noundef zeroext %i.l, i16 noundef zeroext %i.r, i16 noundef zeroext %i.t, i32 noundef %i.v) #20, !srcloc !31
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.w = icmp eq i8 %i.l, 0
  br i1 %i.w, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.x = load i32, ptr @acpi_skip_timer_override, align 4
  %.not24 = icmp eq i32 %i.x, 0
  br i1 %.not24, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #19 ; 0 uses
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr i8, ptr %0, i64 4
  %i.aa = load i32, ptr %i.z, align 1
  %i.ab = icmp eq i32 %i.aa, 2
  %i.ac = load i32, ptr @acpi_fix_pin2_polarity, align 4
  %i.ad = icmp ne i32 %i.ac, 0
  %or.cond = select i1 %i.ab, i1 %i.ad, i1 false
  br i1 %or.cond, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.af = load i16, ptr %i.ae, align 1            ; 2 uses
  %i.ag = and i16 %i.af, 3
  %.not25 = icmp eq i16 %i.ag, 0
  br i1 %.not25, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = and i16 %i.af, -4
  store i16 %i.ah, ptr %i.ae, align 1
  %i.ai = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #19 ; 0 uses
  %.pre = load i8, ptr %i.g, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.g
  %i.aj = phi i8 [ 0, %bb.j ], [ 0, %bb.k ], [ %.pre, %bb.l ], [ %i.l, %bb.g ]
  %i.ak = getelementptr i8, ptr %0, i64 8
  %i.al = load i16, ptr %i.ak, align 1
  %i.am = trunc i16 %i.al to i8                   ; 2 uses
  %i.an = and i8 %i.am, 3
  %i.ao = lshr i8 %i.am, 2
  %i.ap = and i8 %i.ao, 3
  %i.aq = getelementptr i8, ptr %0, i64 4
  %i.ar = load i32, ptr %i.aq, align 1
  tail call fastcc void @mp_override_legacy_irq(i8 noundef zeroext %i.aj, i8 noundef zeroext %i.an, i8 noundef zeroext %i.ap, i32 noundef %i.ar) #20, !srcloc !32
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.b, %bb.m, %bb.i, %bb.f
  %.0 = phi i32 [ 0, %bb.m ], [ 0, %bb.f ], [ 0, %bb.i ], [ -22, %bb.b ], [ -22, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noredzone nounwind null_pointer_is_valid willreturn memory(read)
declare dso_local i32 @irq_get_nr_irqs() local_unnamed_addr #14

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc void @acpi_sci_ioapic_setup(i8 noundef zeroext %0, i16 noundef zeroext range(i16 0, 4) %1, i16 noundef zeroext range(i16 0, 4) %2, i32 noundef %3) unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = icmp eq i16 %2, 0
  %spec.store.select = select i1 %i.a, i16 3, i16 %2
  %i.b = icmp eq i16 %1, 0
  %spec.store.select1 = select i1 %i.b, i16 3, i16 %1
  %i.c = load i8, ptr @acpi_sci_flags, align 1    ; 2 uses
  %i.d = and i8 %i.c, 12                          ; 2 uses
  %.not = icmp eq i8 %i.d, 0
  %i.e = lshr exact i8 %i.d, 2
  %i.f = zext nneg i8 %i.e to i16
  %.016 = select i1 %.not, i16 %spec.store.select, i16 %i.f ; 2 uses
  %i.g = and i8 %i.c, 3                           ; 2 uses
  %.not19 = icmp eq i8 %i.g, 0
  %i.h = zext nneg i8 %i.g to i16
  %.0 = select i1 %.not19, i16 %spec.store.select1, i16 %i.h ; 2 uses
  %i.i = icmp ult i8 %0, 16
  %i.j = trunc nuw nsw i16 %.0 to i8              ; 2 uses
  %i.k = trunc nuw nsw i16 %.016 to i8            ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @mp_override_legacy_irq(i8 noundef zeroext %0, i8 noundef zeroext %i.j, i8 noundef zeroext %i.k, i32 noundef %3) #20, !srcloc !33
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = tail call fastcc i32 @mp_register_ioapic_irq(i8 noundef zeroext %0, i8 noundef zeroext %i.j, i8 noundef zeroext %i.k, i32 noundef %3) #20, !srcloc !34 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = zext i8 %0 to i32
  %i.n = zext nneg i16 %.016 to i32
  %i.o = zext nneg i16 %.0 to i32
  tail call void @acpi_penalize_sci_irq(i32 noundef %i.m, i32 noundef %i.n, i32 noundef %i.o) #17
  store i32 %3, ptr @acpi_sci_override_gsi, align 4
  ret void
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc void @mp_config_acpi_legacy_irqs() unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %0 = alloca %struct.mpc_intsrc, align 8         ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #18
  store i64 0, ptr %0, align 8, !annotation !12
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) @mp_bus_not_pci, i32 1, ptr nonnull elementtype(i8) @mp_bus_not_pci) #18, !srcloc !35
  %i.a = load ptr, ptr @legacy_pic, align 8
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph39, label %._crit_edge

.lr.ph39:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 7
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph39, %acpi_isa_irq_to_gsi.exit.thread
  %indvars.iv41 = phi i64 [ 0, %.lr.ph39 ], [ %indvars.iv.next42, %acpi_isa_irq_to_gsi.exit.thread ] ; 4 uses
  %i.j = getelementptr [4 x i8], ptr @isa_irq_to_gsi, i64 %indvars.iv41
  %i.k = load i32, ptr %i.j, align 4              ; 3 uses
  %.not.i = icmp eq i32 %i.k, -1
  br i1 %.not.i, label %acpi_isa_irq_to_gsi.exit.thread, label %acpi_isa_irq_to_gsi.exit

acpi_isa_irq_to_gsi.exit:                         ; preds = %bb.b
  %i.l = call i32 @mp_find_ioapic(i32 noundef %i.k) #17 ; 3 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %acpi_isa_irq_to_gsi.exit.thread, label %bb.c

bb.c:                                             ; preds = %acpi_isa_irq_to_gsi.exit
  %i.n = call i32 @mp_find_ioapic_pin(i32 noundef %i.l, i32 noundef %i.k) #17 ; 2 uses
  %i.o = call i32 @mpc_ioapic_id(i32 noundef %i.l) #17 ; 2 uses
  %i.p = load i32, ptr @mp_irq_entries, align 4   ; 3 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.p to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.r = getelementptr [8 x i8], ptr @mp_irqs, i64 %indvars.iv ; 4 uses
  %i.s = getelementptr i8, ptr %i.r, i64 4
  %i.t = load i8, ptr %i.s, align 4
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.v = getelementptr i8, ptr %i.r, i64 5
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i64
  %i.y = icmp eq i64 %indvars.iv41, %i.x
  br i1 %i.y, label %.thread.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.z = getelementptr i8, ptr %i.r, i64 6
  %i.aa = load i8, ptr %i.z, align 2
  %i.ab = zext i8 %i.aa to i32
  %i.ac = icmp eq i32 %i.o, %i.ab
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr i8, ptr %i.r, i64 7
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i32
  %i.ag = icmp eq i32 %i.n, %i.af
  br i1 %i.ag, label %.thread.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread.thread, label %.lr.ph, !llvm.loop !36

.thread.loopexit:                                 ; preds = %bb.f, %bb.d
  %i.ah = trunc nuw nsw i64 %indvars.iv to i32
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.c
  %.021.lcssa = phi i32 [ 0, %bb.c ], [ %i.ah, %.thread.loopexit ]
  %.not23 = icmp eq i32 %.021.lcssa, %i.p
  br i1 %.not23, label %.thread.thread, label %acpi_isa_irq_to_gsi.exit.thread

.thread.thread:                                   ; preds = %bb.g, %.thread
  store i8 3, ptr %0, align 8
  store i16 0, ptr %i.d, align 2
  store i8 0, ptr %i.e, align 4
  %i.ai = trunc i32 %i.o to i8
  store i8 %i.ai, ptr %i.f, align 2
  store i8 0, ptr %i.g, align 1
  %i.aj = trunc i64 %indvars.iv41 to i8
  store i8 %i.aj, ptr %i.h, align 1
  %i.ak = trunc i32 %i.n to i8
  store i8 %i.ak, ptr %i.i, align 1
  call void @mp_save_irq(ptr noundef nonnull %0) #17
  br label %acpi_isa_irq_to_gsi.exit.thread

acpi_isa_irq_to_gsi.exit.thread:                  ; preds = %bb.b, %.thread, %acpi_isa_irq_to_gsi.exit, %.thread.thread
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %i.al = load ptr, ptr @legacy_pic, align 8
  %i.am = load i32, ptr %i.al, align 8
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp slt i64 %indvars.iv.next42, %i.an
  br i1 %i.ao, label %bb.b, label %._crit_edge, !llvm.loop !37

._crit_edge:                                      ; preds = %acpi_isa_irq_to_gsi.exit.thread, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18
  ret void
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal range(i32 -22, 1) i32 @acpi_parse_nmi_src(ptr noundef %0, i64 noundef %1) #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %0, null
  %i.a = ptrtoint ptr %0 to i64
  %i.b = add i64 %i.a, 8
  %i.c = icmp ugt i64 %i.b, %1
  %or.cond = or i1 %.not, %i.c
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1
  %i.f = icmp ult i8 %i.e, 8
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @acpi_table_print_madt_entry(ptr noundef nonnull %0) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -22, %bb.b ], [ -22, %bb.a ]
  ret i32 %.0
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc void @mp_override_legacy_irq(i8 noundef zeroext %0, i8 noundef zeroext range(i8 0, 4) %1, i8 noundef zeroext range(i8 0, 4) %2, i32 noundef %3) unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = icmp ugt i8 %0, 15
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext i8 %0 to i32
  %i.c = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %i.b) #19 ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq i8 %0, 0
  %i.e = icmp eq i8 %2, 3
  %or.cond = and i1 %i.d, %i.e
  %spec.store.select = select i1 %or.cond, i8 1, i8 %2
  %i.f = tail call fastcc i32 @mp_register_ioapic_irq(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %spec.store.select, i32 noundef %3) #20, !srcloc !38
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @legacy_pic, align 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp ult i32 %3, %i.i
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = zext i32 %3 to i64
  %i.l = getelementptr [4 x i8], ptr @isa_irq_to_gsi, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp eq i32 %i.m, %3
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 -1, ptr %i.l, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.o = zext nneg i8 %0 to i64
  %i.p = getelementptr [4 x i8], ptr @isa_irq_to_gsi, i64 %i.o
  store i32 %3, ptr %i.p, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g, %bb.b
  ret void
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc range(i32 -2147483648, 1) i32 @mp_register_ioapic_irq(i8 noundef zeroext %0, i8 noundef zeroext range(i8 0, 4) %1, i8 noundef zeroext range(i8 0, 4) %2, i32 noundef %3) unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.mpc_intsrc, align 8         ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.a = tail call i32 @mp_find_ioapic(i32 noundef %3) #17 ; 4 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %3) #19 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 3, ptr %4, align 8, !annotation !12
  %i.d = tail call i32 @mp_find_ioapic_pin(i32 noundef %i.a, i32 noundef %3) #17
  %i.e = shl nuw nsw i8 %2, 2
  %i.f = or disjoint i8 %i.e, %1
  %i.g = zext nneg i8 %i.f to i16
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.g, ptr %i.h, align 2
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 5
  store i8 %0, ptr %i.i, align 1
  %i.j = tail call i32 @mpc_ioapic_id(i32 noundef %i.a) #17
  %i.k = trunc i32 %i.j to i8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i8 %i.k, ptr %i.l, align 2
  %i.m = trunc i32 %i.d to i8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 7
  store i8 %i.m, ptr %i.n, align 1
  call void @mp_save_irq(ptr noundef nonnull %4) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.a, %bb.b ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @mp_find_ioapic(i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @mp_find_ioapic_pin(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @mpc_ioapic_id(i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mp_save_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @acpi_penalize_sci_irq(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_register_gsi_ioapic(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #4 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.mpc_intsrc, align 8         ; 9 uses
  %5 = alloca %struct.irq_alloc_info, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %.not = icmp eq ptr %0, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 664
  %.val = load i32, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = phi i32 [ %.val, %bb.b ], [ -1, %bb.a ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %5, i8 0, i64 72, i1 false), !annotation !12
  %i.c = icmp ne i32 %2, 1                        ; 2 uses
  %i.d = zext i1 %i.c to i32
  %i.e = icmp ne i32 %3, 0                        ; 2 uses
  %i.f = zext i1 %i.e to i32
  call void @ioapic_set_alloc_attr(ptr noundef nonnull %5, i32 noundef %i.b, i32 noundef %i.d, i32 noundef %i.f) #17
  call void @mutex_lock(ptr noundef nonnull @acpi_ioapic_lock) #17
  %i.g = call i32 @mp_map_gsi_to_irq(i32 noundef %1, i32 noundef 1, ptr noundef nonnull %5) #17 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  %i.i = load i32, ptr @enable_update_mptable, align 4
  %i.j = icmp eq i32 %i.i, 0
  %or.cond.not22 = select i1 %i.h, i1 true, i1 %i.j
  %i.k = load i16, ptr getelementptr inbounds nuw (i8, ptr @acpi_gbl_FADT, i64 46), align 1
  %i.l = zext i16 %i.k to i32
  %.not17 = icmp eq i32 %1, %i.l
  %or.cond19 = select i1 %or.cond.not22, i1 true, i1 %.not17
  br i1 %or.cond19, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.m = load i32, ptr @acpi_ioapic, align 4
  %.not.i = icmp eq i32 %i.m, 0
  %or.cond.i = or i1 %.not, %.not.i
  br i1 %or.cond.i, label %mp_config_acpi_gsi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %0, i64 96
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %i.o, @pci_bus_type
  br i1 %i.p, label %bb.f, label %mp_config_acpi_gsi.exit

bb.f:                                             ; preds = %bb.e
  store i64 3, ptr %4, align 8, !annotation !12
  %i.q = getelementptr i8, ptr %0, i64 -184
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 216
  %i.t = load i8, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %0, i64 -144
  %i.v = load i32, ptr %i.u, align 8
  %i.w = getelementptr i8, ptr %0, i64 -93
  %i.x = load i8, ptr %i.w, align 1
  %i.y = select i1 %i.c, i16 4, i16 12
  %i.z = select i1 %i.e, i16 3, i16 1
  %i.aa = or disjoint i16 %i.z, %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.aa, ptr %i.ab, align 2
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 %i.t, ptr %i.ac, align 4
  %i.ad = add i8 %i.x, 3
  %i.ae = and i8 %i.ad, 3
  %i.af = trunc i32 %i.v to i8
  %i.ag = lshr i8 %i.af, 1
end_hunk_0
