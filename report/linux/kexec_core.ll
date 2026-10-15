Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/kexec_core?download=true
inline.NumInlined: 121
inline.NumDeleted: 63
begin_hunk_0_@kimage_load_segment:bb.a
  br i1 %.not82.i, label %bb.w, label %kimage_load_normal_segment.exit

bb.w:                                             ; preds = %bb.v
  %i.ft = add i64 %i.ez, %.057101.i
  %i.fu = sub nuw i64 %.06099.i, %i.ez            ; 2 uses
  %i.fv = tail call i32 @__SCT__cond_resched() #17 ; 0 uses
  %.not77.i = icmp eq i64 %i.fu, 0
  br i1 %.not77.i, label %kimage_load_normal_segment.exit, label %.lr.ph.i

kimage_load_normal_segment.exit:                  ; preds = %.thread75.i.i, %check_copy_size.exit.i.i, %.thread.i, %check_copy_size.exit.i, %bb.l, %.preheader.i, %bb.w, %bb.v, %.lr.ph.i, %bb.o, %kimage_set_destination.exit.i, %bb.h, %bb.c
  %.0 = phi i32 [ 0, %bb.o ], [ -12, %bb.h ], [ 0, %kimage_set_destination.exit.i ], [ 0, %bb.c ], [ -12, %.lr.ph.i ], [ -12, %bb.l ], [ 0, %bb.w ], [ -14, %bb.v ], [ -14, %check_copy_size.exit.i ], [ -12, %.preheader.i ], [ 0, %.thread.i ], [ 0, %.thread75.i.i ], [ -14, %check_copy_size.exit.i.i ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @kimage_map_segment(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 576
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = getelementptr [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %_kmalloc_noprof.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr @vmemmap_base, align 8
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.f, %i.e
  %i.h = shl i64 %i.g, 6
  %i.i = load i64, ptr @page_offset_base, align 8
  %i.j = add i64 %i.h, %i.i
  %i.k = inttoptr i64 %i.j to ptr
  br label %bb.k

_kmalloc_noprof.exit:                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %0, i64 64
  %i.m = getelementptr [32 x i8], ptr %i.l, i64 %i.b ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 16
  %i.o = load i64, ptr %i.n, align 8              ; 3 uses
  %i.p = getelementptr i8, ptr %i.m, i64 24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = add i64 %i.q, %i.o                       ; 2 uses
  %i.s = add i64 %i.r, 4095
  %i.t = lshr i64 %i.s, 12
  %i.u = lshr i64 %i.o, 12
  %i.v = sub nsw i64 %i.t, %i.u                   ; 2 uses
  %i.w = trunc i64 %i.v to i32                    ; 3 uses
  %i.x = shl nsw i64 %i.v, 3
  %i.y = and i64 %i.x, 34359738360
  %i.z = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 3779571219601) %i.y, i32 noundef 3264) #20 ; 4 uses
  %.not59 = icmp eq ptr %i.z, null
  br i1 %.not59, label %bb.c, label %.preheader

.preheader:                                       ; preds = %_kmalloc_noprof.exit
  %i.aa = load i64, ptr %0, align 8               ; 3 uses
  %.not6072 = icmp ne i64 %i.aa, 0
  %i.ab = and i64 %i.aa, 4
  %.not6173 = icmp eq i64 %i.ab, 0
  %or.cond74 = and i1 %.not6072, %.not6173
  br i1 %or.cond74, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.ac = load i64, ptr @vmemmap_base, align 8
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load i64, ptr @page_offset_base, align 8 ; 3 uses
  %i.af = load i64, ptr @phys_base, align 8
  %i.ag = sub i64 -2147483648, %i.ae
  br label %bb.d

bb.c:                                             ; preds = %_kmalloc_noprof.exit
  %i.ah = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #21 ; 0 uses
  br label %bb.k

bb.d:                                             ; preds = %.lr.ph, %._crit_edge
  %i.ai = phi i64 [ %i.aa, %.lr.ph ], [ %i.bg, %._crit_edge ] ; 5 uses
  %.05077 = phi i64 [ 0, %.lr.ph ], [ %.1, %._crit_edge ] ; 4 uses
  %.05176 = phi ptr [ %0, %.lr.ph ], [ %i.bf, %._crit_edge ]
  %.05375 = phi i32 [ 0, %.lr.ph ], [ %.154, %._crit_edge ] ; 4 uses
  %i.aj = and i64 %i.ai, 1
  %.not62 = icmp eq i64 %i.aj, 0
  br i1 %.not62, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = and i64 %i.ai, -4096                    ; 2 uses
  br label %._crit_edge

bb.f:                                             ; preds = %bb.d
  %i.al = and i64 %i.ai, 8
  %.not63 = icmp ne i64 %i.al, 0
  %.not64 = icmp uge i64 %.05077, %i.o
  %i.am = icmp ult i64 %.05077, %i.r
  %i.an = and i1 %.not64, %i.am
  %or.cond68 = select i1 %.not63, i1 %i.an, i1 false
  %i.ao = and i64 %i.ai, -4096                    ; 3 uses
  br i1 %or.cond68, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.ap = add i64 %i.ae, %i.ao                    ; 2 uses
  %i.aq = add i64 %i.ap, 2147483648
  %i.ar = icmp ugt i64 %i.ap, -2147483649
  %i.as = select i1 %i.ar, i64 %i.af, i64 %i.ag
  %i.at = add i64 %i.aq, %i.as
  %i.au = lshr i64 %i.at, 12
  %i.av = getelementptr [64 x i8], ptr %i.ad, i64 %i.au
  %i.aw = add i32 %.05375, 1                      ; 2 uses
  %i.ax = sext i32 %.05375 to i64
  %i.ay = getelementptr [8 x i8], ptr %i.z, i64 %i.ax
  store ptr %i.av, ptr %i.ay, align 8
  %i.az = icmp eq i32 %i.aw, %i.w
  br i1 %i.az, label %.critedge.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = add i64 %.05077, 4096
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %bb.e, %bb.h
  %.pre-phi = phi i64 [ %i.ao, %bb.h ], [ %i.ak, %bb.e ], [ %i.ao, %bb.f ]
  %.154 = phi i32 [ %i.aw, %bb.h ], [ %.05375, %bb.e ], [ %.05375, %bb.f ] ; 2 uses
  %.1 = phi i64 [ %i.ba, %bb.h ], [ %i.ak, %bb.e ], [ %.05077, %bb.f ]
  %i.bb = and i64 %i.ai, 2
  %.not66 = icmp eq i64 %i.bb, 0
  %i.bc = add i64 %i.ae, %.pre-phi
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr i8, ptr %.05176, i64 8
  %i.bf = select i1 %.not66, ptr %i.be, ptr %i.bd ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8            ; 3 uses
  %.not60 = icmp ne i64 %i.bg, 0
  %i.bh = and i64 %i.bg, 4
  %.not61 = icmp eq i64 %i.bh, 0
  %or.cond = and i1 %.not60, %.not61
  br i1 %or.cond, label %bb.d, label %.critedge, !llvm.loop !34

.critedge:                                        ; preds = %._crit_edge, %.preheader
  %.2 = phi i32 [ 0, %.preheader ], [ %.154, %._crit_edge ]
  %i.bi = icmp ult i32 %.2, %i.w
  br i1 %i.bi, label %bb.i, label %.critedge.thread, !prof !35

bb.i:                                             ; preds = %.critedge
  tail call void asm sideeffect "698: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 698b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 698) #15, !srcloc !36
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 1000, i32 2305, i64 16) #15, !srcloc !37
  tail call void asm sideeffect "699: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 699b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 699) #15, !srcloc !38
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.g, %bb.i, %.critedge
  %i.bj = load i64, ptr @__default_kernel_pte_mask, align 8
  %i.bk = and i64 %i.bj, -9223372036854775453
  %i.bl = tail call ptr @vmap(ptr noundef nonnull %i.z, i32 noundef %i.w, i64 noundef 4, i64 %i.bk) #17 ; 2 uses
  tail call void @kfree(ptr noundef nonnull %i.z) #17
  %.not65 = icmp eq ptr %i.bl, null
  br i1 %.not65, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge.thread
  %i.bm = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #21 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %.critedge.thread, %bb.j, %bb.c, %bb.b
  %.0 = phi ptr [ %i.k, %bb.b ], [ null, %bb.c ], [ null, %bb.j ], [ %i.bl, %.critedge.thread ]
  ret ptr %.0
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @vmap(ptr noundef, i32 noundef, i64 noundef, i64) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @kimage_unmap_segment(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %0) #17
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @vunmap(ptr noundef %0) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal noundef i32 @kexec_core_sysctl_init() #6 section ".init.text" align 16 prefalign(16) {
bb.a:
  tail call void @__register_sysctl_init(ptr noundef nonnull @.str.8, ptr noundef nonnull @kexec_core_sysctls, ptr noundef nonnull @.str.9, i64 noundef 3) #17
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef zeroext i1 @kexec_load_permitted(i32 noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call zeroext i1 @capable(i32 noundef 22) #17
  %i.b = load i32, ptr @kexec_load_disabled, align 4
  %i.c = icmp eq i32 %i.b, 0
  %or.cond.not = select i1 %i.a, i1 %i.c, i1 false
  br i1 %or.cond.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %0, 1
  %i.e = select i1 %i.d, ptr @load_limit_panic, ptr @load_limit_reboot ; 3 uses
  tail call void @mutex_lock(ptr noundef nonnull %i.e) #17
  %1 = getelementptr i8, ptr %i.e, i64 24         ; 2 uses
  %i.f = load i32, ptr %1, align 8                ; 2 uses
  switch i32 %i.f, label %bb.c [
    i32 0, label %.sink.split
    i32 -1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = add i32 %i.f, -1
  store i32 %i.g, ptr %1, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.d
  %.0.ph = phi i1 [ true, %bb.d ], [ false, %bb.b ]
  tail call void @mutex_unlock(ptr noundef nonnull %i.e) #17
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %.0.ph, %.sink.split ]
  ret i1 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @kernel_kexec() local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__kexec_lock, i32 1, ptr nonnull elementtype(i32) @__kexec_lock, i32 0) #15, !srcloc !39
  %i.b = extractvalue { i8, i32 } %i.a, 0         ; 2 uses
  %i.c = icmp ult i8 %i.b, 2
  tail call void @llvm.assume(i1 %i.c)
  %i.d = trunc nuw i8 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @kexec_image, align 8
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr @kexec_in_progress, align 1
  tail call void @kernel_restart_prepare(ptr noundef nonnull @.str.4) #17
  tail call void @migrate_to_reboot_cpu() #17
  tail call void @syscore_shutdown() #17
  tail call void @cpu_hotplug_enable() #17
  %i.f = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #21 ; 0 uses
  tail call void @machine_shutdown() #17
  tail call void @kmsg_dump_desc(i32 noundef 4, ptr noundef null) #17
  %i.g = load ptr, ptr @kexec_image, align 8
  tail call void @machine_kexec(ptr noundef %i.g) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ 0, %bb.c ], [ -22, %bb.b ]
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !40
  store volatile i32 0, ptr @__kexec_lock, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i32 [ %.1, %bb.d ], [ -16, %bb.a ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kernel_restart_prepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @migrate_to_reboot_cpu() local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @syscore_shutdown() local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @cpu_hotplug_enable() local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @machine_shutdown() local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @machine_kexec(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @init_kexec_sysctl() #6 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr @kernel_kobj, align 8
  %i.b = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.16, ptr noundef %i.a) #17 ; 3 uses
  store ptr %i.b, ptr @kexec_kobj, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #21 ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @sysfs_create_groups(ptr noundef nonnull %i.b, ptr noundef nonnull @kexec_groups) #17 ; 2 uses
  %.not15 = icmp eq i32 %i.d, 0
  br i1 %.not15, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.c, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %i.e = load ptr, ptr @kernel_kobj, align 8
  %i.f = load ptr, ptr @kexec_kobj, align 8
  %i.g = getelementptr [16 x i8], ptr @kexec_links, i64 %indvars.iv ; 2 uses
  %i.h = load ptr, ptr %i.g, align 16
  %i.i = getelementptr i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = tail call i32 @compat_only_sysfs_link_entry_to_kobj(ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.h, ptr noundef %i.j) #17 ; 2 uses
  %.not16 = icmp eq i32 %i.k, 0
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.l = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %i.j, i32 noundef %i.k) #21 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !41

bb.f:                                             ; preds = %bb.c
  %i.m = load ptr, ptr @kexec_kobj, align 8
  tail call void @kobject_put(ptr noundef %i.m) #17
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.f, %bb.b
  %.0 = phi i32 [ %i.d, %bb.f ], [ -12, %bb.b ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @arch_kexec_pre_free_pages(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @alloc_pages_noprof(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @arch_kexec_post_alloc_pages(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #9

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #10

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__cond_resched() local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc ptr @kimage_alloc_page(ptr noundef %0, i32 noundef range(i32 3264, 1051843) %1, i64 noundef %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 720        ; 5 uses
  %i.b = load i64, ptr @vmemmap_base, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.pn.in = phi ptr [ %i.a, %bb.a ], [ %.pn, %bb.c ]
  %.pn = load ptr, ptr %.pn.in, align 8           ; 6 uses
  %.not = icmp eq ptr %.pn, %i.a
  br i1 %.not, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.c = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #18, !srcloc !17
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 2152
  %i.f = and i32 %1, 2096895
  %i.g = and i32 %1, 256
  %.not31.i = icmp eq i32 %i.g, 0
  %i.h = getelementptr i8, ptr %0, i64 64
  %i.i = getelementptr i8, ptr %0, i64 56
  %i.j = getelementptr i8, ptr %0, i64 736        ; 3 uses
  br label %task_sigpending.exit.i.i

bb.c:                                             ; preds = %bb.b
  %.042 = getelementptr i8, ptr %.pn, i64 -8      ; 2 uses
  %i.k = ptrtoint ptr %.042 to i64
  %i.l = sub i64 %i.k, %i.b
  %i.m = shl i64 %i.l, 6
  %i.n = icmp eq i64 %i.m, %2
  br i1 %i.n, label %bb.d, label %bb.b, !llvm.loop !42

bb.d:                                             ; preds = %bb.c
end_hunk_0
