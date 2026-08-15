inline.NumInlined: 85
inline.NumDeleted: 52
begin_hunk_0_@acpi_os_get_root_pointer:bb.a
  tail call void %i.e(i64 noundef %i.d) #21, !inline_history !11
  %i.f = load i64, ptr @acpi_rsdp, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @x86_init, i64 256), align 8
  %i.h = tail call i64 %i.g() #21, !inline_history !12 ; 3 uses
  store i64 %i.h, ptr %i.a, align 8
  %.not5 = icmp eq i64 %i.h, 0
  br i1 %.not5, label %efi_enabled.exit, label %bb.i

efi_enabled.exit:                                 ; preds = %bb.d
  %i.i = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @efi, i64 272), align 8
  %.in.in.i = and i64 %i.i, 4
  %.in.i.not = icmp eq i64 %.in.in.i, 0
  br i1 %.in.i.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %efi_enabled.exit
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @efi, i64 24), align 8 ; 2 uses
  %.not6 = icmp eq i64 %i.j, -1
  br i1 %.not6, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @efi, i64 16), align 8 ; 2 uses
  %.not7 = icmp eq i64 %i.k, -1
  br i1 %.not7, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.l = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #23 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %efi_enabled.exit
  %i.m = call i32 @acpi_find_root_pointer(ptr noundef nonnull %i.a) #23 ; 0 uses
  %.pre = load i64, ptr %i.a, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f, %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %i.f, %bb.c ], [ %i.h, %bb.d ], [ %i.j, %bb.e ], [ %i.k, %bb.f ], [ %.pre, %bb.h ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i64 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @security_locked_down(i32 noundef) local_unnamed_addr #7

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @acpi_find_root_pointer(ptr noundef) local_unnamed_addr #6 section ".init.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @acpi_os_get_iomem(i64 noundef %0, i32 noundef %1) #1 align 16 prefalign(16) {
bb.a:
  tail call void @mutex_lock(ptr noundef nonnull @acpi_ioremap_lock) #21
  %i.a = zext i32 %1 to i64
  %i.b = load volatile ptr, ptr @acpi_ioremaps, align 8 ; 2 uses
  %i.c = add i64 %0, %i.a
  %.not20.i = icmp eq ptr %i.b, @acpi_ioremaps
  br i1 %.not20.i, label %acpi_map_lookup.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.01521.i = phi ptr [ %i.i, %bb.c ], [ %i.b, %bb.a ] ; 6 uses
  %i.d = getelementptr i8, ptr %.01521.i, i64 24
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %.not18.i = icmp ugt i64 %i.e, %0
  br i1 %.not18.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = getelementptr i8, ptr %.01521.i, i64 32
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, %i.e
  %.not19.i = icmp ugt i64 %i.c, %i.h
  br i1 %.not19.i, label %bb.c, label %acpi_map_lookup.exit

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.i = load volatile ptr, ptr %.01521.i, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.i, @acpi_ioremaps
  br i1 %.not.i, label %acpi_map_lookup.exit.thread, label %.lr.ph.i, !llvm.loop !13

acpi_map_lookup.exit:                             ; preds = %bb.b
  %.not = icmp eq ptr %.01521.i, null
  br i1 %.not, label %acpi_map_lookup.exit.thread, label %bb.d

bb.d:                                             ; preds = %acpi_map_lookup.exit
  %i.j = getelementptr i8, ptr %.01521.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = sub i64 %0, %i.e
  %i.m = getelementptr i8, ptr %i.k, i64 %i.l
  %i.n = getelementptr i8, ptr %.01521.i, i64 40  ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.n, align 8
  br label %acpi_map_lookup.exit.thread

acpi_map_lookup.exit.thread:                      ; preds = %bb.c, %bb.a, %bb.d, %acpi_map_lookup.exit
  %.0 = phi ptr [ %i.m, %bb.d ], [ null, %acpi_map_lookup.exit ], [ null, %bb.a ], [ null, %bb.c ]
  tail call void @mutex_unlock(ptr noundef nonnull @acpi_ioremap_lock) #21
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #7

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @acpi_os_map_iomem(i64 noundef %0, i64 noundef %1) #8 section ".ref.text" align 16 prefalign(16) {
bb.a:
  %i.a = load i8, ptr @acpi_permanent_mmap, align 1, !range !15, !noundef !16
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__acpi_map_table(i64 noundef %0, i64 noundef %1) #21
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  tail call void @mutex_lock(ptr noundef nonnull @acpi_ioremap_lock) #21
  %i.d = load volatile ptr, ptr @acpi_ioremaps, align 8 ; 2 uses
  %i.e = add i64 %1, %0                           ; 2 uses
  %.not20.i = icmp eq ptr %i.d, @acpi_ioremaps
  br i1 %.not20.i, label %acpi_map_lookup.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.e
  %.01521.i = phi ptr [ %i.k, %bb.e ], [ %i.d, %bb.c ] ; 6 uses
  %i.f = getelementptr i8, ptr %.01521.i, i64 24
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %.not18.i = icmp ugt i64 %i.g, %0
  br i1 %.not18.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr i8, ptr %.01521.i, i64 32
  %i.i = load i64, ptr %i.h, align 8
  %i.j = add i64 %i.i, %i.g
  %.not19.i = icmp ugt i64 %i.e, %i.j
  br i1 %.not19.i, label %bb.e, label %acpi_map_lookup.exit

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %i.k = load volatile ptr, ptr %.01521.i, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.k, @acpi_ioremaps
  br i1 %.not.i, label %acpi_map_lookup.exit.thread, label %.lr.ph.i, !llvm.loop !13

acpi_map_lookup.exit:                             ; preds = %bb.d
  %.not = icmp eq ptr %.01521.i, null
  br i1 %.not, label %acpi_map_lookup.exit.thread, label %bb.f

bb.f:                                             ; preds = %acpi_map_lookup.exit
  %i.l = getelementptr i8, ptr %.01521.i, i64 40  ; 2 uses
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.l, align 8
  br label %bb.m

acpi_map_lookup.exit.thread:                      ; preds = %bb.e, %bb.c, %acpi_map_lookup.exit
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 8), align 8
  %i.p = tail call noalias align 8 dereferenceable_or_null(96) ptr @__kmalloc_cache_noprof(ptr noundef %i.o, i32 noundef range(i32 2304, 3584) 3520, i64 noundef range(i64 16, 97) 96) #24 ; 14 uses
  %.not39 = icmp eq ptr %i.p, null
  br i1 %.not39, label %bb.g, label %bb.h

bb.g:                                             ; preds = %acpi_map_lookup.exit.thread
  tail call void @mutex_unlock(ptr noundef nonnull @acpi_ioremap_lock) #21
  br label %bb.n

bb.h:                                             ; preds = %acpi_map_lookup.exit.thread
  %i.q = lshr i64 %0, 12                          ; 2 uses
  %i.r = tail call i32 @page_is_ram(i64 noundef %i.q) #21
  %.not.i41 = icmp eq i32 %i.r, 0
  br i1 %.not.i41, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = icmp ugt i64 %1, 4096
  br i1 %i.s, label %acpi_map.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load i64, ptr @vmemmap_base, align 8
  %i.u = tail call i32 @__SCT__might_resched() #21 ; 0 uses
  %i.v = load i64, ptr @vmemmap_base, align 8
  %.idx.i = shl nuw nsw i64 %i.q, 6
  %i.w = add i64 %i.t, %.idx.i
  %i.x = sub i64 %i.w, %i.v
  %i.y = shl i64 %i.x, 6
  %i.z = load i64, ptr @page_offset_base, align 8
  %i.aa = add i64 %i.y, %i.z
  %i.ab = inttoptr i64 %i.aa to ptr
  br label %acpi_map.exit

bb.k:                                             ; preds = %bb.h
  %i.ac = tail call ptr @ioremap_cache(i64 noundef %0, i64 noundef %1) #21
  br label %acpi_map.exit

acpi_map.exit:                                    ; preds = %bb.j, %bb.k
  %.0.i42 = phi ptr [ %i.ac, %bb.k ], [ %i.ab, %bb.j ] ; 2 uses
  %.not40 = icmp eq ptr %.0.i42, null
  br i1 %.not40, label %acpi_map.exit.thread, label %bb.l

acpi_map.exit.thread:                             ; preds = %bb.i, %acpi_map.exit
  tail call void @mutex_unlock(ptr noundef nonnull @acpi_ioremap_lock) #21
  tail call void @kfree(ptr noundef nonnull %i.p) #21
  br label %bb.n

bb.l:                                             ; preds = %acpi_map.exit
  %i.ad = add i64 %i.e, -1
  %2 = or i64 %i.ad, 4095
  %i.ae = and i64 %0, -4096                       ; 2 uses
  %reass.sub = sub i64 %2, %i.ae
  %3 = add i64 %reass.sub, 1
  store volatile ptr %i.p, ptr %i.p, align 8
  %i.af = getelementptr i8, ptr %i.p, i64 8       ; 2 uses
  store volatile ptr %i.p, ptr %i.af, align 8
  %i.ag = ptrtoint ptr %.0.i42 to i64
  %i.ah = and i64 %i.ag, -4096
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = getelementptr i8, ptr %i.p, i64 16
  store ptr %i.ai, ptr %i.aj, align 8
  %i.ak = getelementptr i8, ptr %i.p, i64 24
  store i64 %i.ae, ptr %i.ak, align 8
  %i.al = getelementptr i8, ptr %i.p, i64 32
  store i64 %3, ptr %i.al, align 8
  %i.am = getelementptr i8, ptr %i.p, i64 40
  store i64 1, ptr %i.am, align 8
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @acpi_ioremaps, i64 8), align 8 ; 2 uses
  store ptr @acpi_ioremaps, ptr %i.p, align 8
  store ptr %i.an, ptr %i.af, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !17
  store volatile ptr %i.p, ptr %i.an, align 8
  store ptr %i.p, ptr getelementptr inbounds nuw (i8, ptr @acpi_ioremaps, i64 8), align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.f
  %.035 = phi ptr [ %.01521.i, %bb.f ], [ %i.p, %bb.l ] ; 2 uses
  tail call void @mutex_unlock(ptr noundef nonnull @acpi_ioremap_lock) #21
  %i.ao = getelementptr i8, ptr %.035, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr i8, ptr %.035, i64 24
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = sub i64 %0, %i.ar
  %i.at = getelementptr i8, ptr %i.ap, i64 %i.as
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %acpi_map.exit.thread, %bb.g, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.at, %bb.m ], [ null, %acpi_map.exit.thread ], [ null, %bb.g ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__acpi_map_table(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #7

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @acpi_os_map_memory(i64 noundef %0, i64 noundef %1) #8 section ".ref.text" align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @acpi_os_map_iomem(i64 noundef %0, i64 noundef %1) #25
  ret ptr %i.a
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @acpi_os_unmap_iomem(ptr noundef %0, i64 noundef %1) #8 section ".ref.text" align 16 prefalign(16) {
bb.a:
  %i.a = load i8, ptr @acpi_permanent_mmap, align 1, !range !15, !noundef !16
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__acpi_unmap_table(ptr noundef %0, i64 noundef %1) #21
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  tail call void @mutex_lock(ptr noundef nonnull @acpi_ioremap_lock) #21
  %i.c = load volatile ptr, ptr @acpi_ioremaps, align 8 ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 %1
  %.not20.i = icmp eq ptr %i.c, @acpi_ioremaps
  br i1 %.not20.i, label %acpi_map_lookup_virt.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.e
  %.01521.i = phi ptr [ %i.j, %bb.e ], [ %i.c, %bb.c ] ; 10 uses
  %i.e = getelementptr i8, ptr %.01521.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not18.i = icmp ugt ptr %i.f, %0
  br i1 %.not18.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr i8, ptr %.01521.i, i64 32
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.f, i64 %i.h
  %.not19.i = icmp ugt ptr %i.d, %i.i
  br i1 %.not19.i, label %bb.e, label %acpi_map_lookup_virt.exit

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %i.j = load volatile ptr, ptr %.01521.i, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.j, @acpi_ioremaps
  br i1 %.not.i, label %acpi_map_lookup_virt.exit.thread, label %.lr.ph.i, !llvm.loop !18

acpi_map_lookup_virt.exit:                        ; preds = %bb.d
  %.not = icmp eq ptr %.01521.i, null
  br i1 %.not, label %acpi_map_lookup_virt.exit.thread, label %bb.f

acpi_map_lookup_virt.exit.thread:                 ; preds = %bb.e, %bb.c, %acpi_map_lookup_virt.exit
  tail call void @mutex_unlock(ptr noundef nonnull @acpi_ioremap_lock) #21
  %i.k = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.4, ptr nonnull @.str.5, i32 438, i32 2321, i64 16) #22, !srcloc !19
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.k, ptr noundef nonnull @__func__.acpi_os_unmap_iomem, ptr noundef %0) #21
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !20
  br label %bb.h

bb.f:                                             ; preds = %acpi_map_lookup_virt.exit
  %i.l = getelementptr i8, ptr %.01521.i, i64 40  ; 4 uses
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.m, -1                         ; 2 uses
  store i64 %i.n, ptr %i.l, align 8
  %.not.i13 = icmp eq i64 %i.n, 0
  br i1 %.not.i13, label %bb.g, label %acpi_os_drop_map_ref.exit

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr i8, ptr %.01521.i, i64 8   ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = load ptr, ptr %.01521.i, align 8         ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 8
  store ptr %i.p, ptr %i.r, align 8
  store volatile ptr %i.q, ptr %i.p, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.o, align 8
  store i64 4503599625273344, ptr %i.l, align 8
  %i.s = getelementptr i8, ptr %.01521.i, i64 48  ; 3 uses
  store volatile ptr %i.s, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %.01521.i, i64 56
  store volatile ptr %i.s, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %.01521.i, i64 64
  store ptr @acpi_os_map_remove, ptr %i.u, align 8
  %i.v = load ptr, ptr @system_percpu_wq, align 8
  %i.w = tail call zeroext i1 @queue_rcu_work(ptr noundef %i.v, ptr noundef %i.l) #21 ; 0 uses
  br label %acpi_os_drop_map_ref.exit

acpi_os_drop_map_ref.exit:                        ; preds = %bb.f, %bb.g
  tail call void @mutex_unlock(ptr noundef nonnull @acpi_ioremap_lock) #21
  br label %bb.h

bb.h:                                             ; preds = %acpi_os_drop_map_ref.exit, %acpi_map_lookup_virt.exit.thread, %bb.b
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__acpi_unmap_table(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__WARN_trap(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @acpi_os_unmap_memory(ptr noundef %0, i64 noundef %1) #8 section ".ref.text" align 16 prefalign(16) {
bb.a:
  tail call void @acpi_os_unmap_iomem(ptr noundef %0, i64 noundef %1) #25
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @acpi_os_map_generic_address(ptr nofree noundef readonly captures(none) %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 4
  %.0.copyload = load i64, ptr %i.b, align 1      ; 2 uses
  %.not7 = icmp eq i64 %.0.copyload, 0
  br i1 %.not7, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1               ; 2 uses
  %.not8 = icmp eq i8 %i.d, 0
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = lshr i8 %i.d, 3
  %i.f = zext nneg i8 %i.e to i64
  %i.g = tail call ptr @acpi_os_map_iomem(i64 noundef %.0.copyload, i64 noundef %i.f) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.a, %bb.d
  %.0 = phi ptr [ null, %bb.a ], [ %i.g, %bb.d ], [ null, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @acpi_os_unmap_generic_address(ptr nofree noundef readonly captures(none) %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 4
  %.0.copyload = load i64, ptr %i.b, align 1      ; 3 uses
  %.not7 = icmp eq i64 %.0.copyload, 0
  br i1 %.not7, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %0, i64 1          ; 2 uses
  %i.d = load i8, ptr %i.c, align 1
  %.not8 = icmp eq i8 %i.d, 0
  br i1 %.not8, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @mutex_lock(ptr noundef nonnull @acpi_ioremap_lock) #21
  %i.e = load i8, ptr %i.c, align 1
  %i.f = lshr i8 %i.e, 3
  %i.g = zext nneg i8 %i.f to i64
  %i.h = load volatile ptr, ptr @acpi_ioremaps, align 8 ; 2 uses
  %i.i = add i64 %.0.copyload, %i.g
  %.not20.i = icmp eq ptr %i.h, @acpi_ioremaps
  br i1 %.not20.i, label %.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.f
  %.01521.i = phi ptr [ %i.o, %bb.f ], [ %i.h, %bb.d ] ; 10 uses
  %i.j = getelementptr i8, ptr %.01521.i, i64 24
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %.not18.i = icmp ugt i64 %i.k, %.0.copyload
  br i1 %.not18.i, label %bb.f, label %bb.e
end_hunk_0
