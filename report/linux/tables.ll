Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/tables?download=true
inline.NumInlined: 11
inline.NumDeleted: 6
begin_hunk_0_@acpi_table_parse:bb.a
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8
  %i.b = load i32, ptr @acpi_disabled, align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne ptr %0, null
  %i.d = icmp ne ptr %1, null
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef dereferenceable(5) @.str.8, i64 noundef 4) #13
  %i.f = icmp eq i32 %i.e, 0
  %i.g = load i32, ptr @acpi_apic_instance, align 4
  %.sink = select i1 %i.f, i32 %i.g, i32 0
  %i.h = call i32 @acpi_get_table(ptr noundef nonnull %0, i32 noundef %.sink, ptr noundef nonnull %i.a) #13 ; 0 uses
  %i.i = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not10 = icmp eq ptr %i.i, null
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call i32 %1(ptr noundef nonnull %i.i) #13 ; 0 uses
  %i.k = load ptr, ptr %i.a, align 8
  call void @acpi_put_table(ptr noundef %i.k) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ -19, %bb.a ], [ 0, %bb.d ], [ -22, %bb.b ], [ -19, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local void @acpi_table_upgrade() local_unnamed_addr #3 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 9 uses
  %0 = alloca %struct.cpio_data, align 8          ; 8 uses
  %1 = alloca %struct.cpio_data, align 8          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef align 16 dereferenceable(32) @__const.acpi_table_upgrade.cpio_path, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #12
  %i.c = load i64, ptr @initrd_start, align 8     ; 3 uses
  %i.d = load i64, ptr @initrd_end, align 8
  %i.e = sub i64 %i.d, %i.c                       ; 2 uses
  %i.f = icmp eq i64 %i.c, 0
  %i.g = icmp eq i64 %i.e, 0
  %or.cond = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false), !annotation !19
  %i.h = inttoptr i64 %i.c to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.l
  %.05883 = phi ptr [ %i.h, %bb.b ], [ %i.m, %bb.l ] ; 2 uses
  %.05982 = phi i64 [ %i.e, %bb.b ], [ %i.n, %bb.l ] ; 2 uses
  %.06181 = phi i32 [ 0, %bb.b ], [ %i.ar, %bb.l ]
  %.06280 = phi i32 [ 0, %bb.b ], [ %.163, %bb.l ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @find_cpio_data(ptr dead_on_unwind nonnull writable sret(%struct.cpio_data) align 8 %1, ptr noundef nonnull %i.b, ptr noundef %.05883, i64 noundef %.05982, ptr noundef nonnull %i.a) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %i.k = load ptr, ptr %0, align 8                ; 7 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr %i.a, align 8              ; 2 uses
  %i.m = getelementptr i8, ptr %.05883, i64 %i.l
  %i.n = sub i64 %.05982, %i.l
  %i.o = load i64, ptr %i.i, align 8              ; 3 uses
  %i.p = icmp ult i64 %i.o, 36
  br i1 %i.p, label %bb.e, label %.preheader

bb.e:                                             ; preds = %bb.d
  %i.q = call i32 (ptr, ...) @_printk(ptr noundef @.str.10, ptr noundef nonnull %i.b, ptr noundef nonnull %i.j) #11 ; 0 uses
  br label %bb.l

bb.f:                                             ; preds = %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 47
  br i1 %exitcond.not, label %bb.g, label %.preheader, !llvm.loop !14

.preheader:                                       ; preds = %bb.d, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %bb.d ] ; 2 uses
  %i.r = getelementptr [4 x i8], ptr @table_sigs, i64 %indvars.iv
  %i.s = load i32, ptr %i.k, align 1
  %i.t = load i32, ptr %i.r, align 1
  %i.u = icmp ne i32 %i.s, %i.t
  %i.v = zext i1 %i.u to i32
  %.not74 = icmp eq i32 %i.v, 0
  br i1 %.not74, label %bb.h, label %bb.f

bb.g:                                             ; preds = %bb.f
  %i.w = call i32 (ptr, ...) @_printk(ptr noundef @.str.11, ptr noundef nonnull %i.b, ptr noundef nonnull %i.j) #11 ; 0 uses
  br label %bb.l

bb.h:                                             ; preds = %.preheader
  %i.x = getelementptr i8, ptr %i.k, i64 4        ; 2 uses
  %i.y = load i32, ptr %i.x, align 1              ; 2 uses
  %i.z = zext i32 %i.y to i64
  %.not75 = icmp eq i64 %i.o, %i.z
  br i1 %.not75, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = call i32 (ptr, ...) @_printk(ptr noundef @.str.12, ptr noundef nonnull %i.b, ptr noundef nonnull %i.j) #11 ; 0 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ab = getelementptr i8, ptr %i.k, i64 %i.o    ; 2 uses
  %i.ac = icmp ult ptr %i.k, %i.ab
  br i1 %i.ac, label %.lr.ph.i, label %acpi_table_checksum.exit.thread

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.08.i = phi i8 [ %i.af, %.lr.ph.i ], [ 0, %bb.j ]
  %.067.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.k, %bb.j ] ; 2 uses
  %i.ad = getelementptr i8, ptr %.067.i, i64 1    ; 2 uses
  %i.ae = load i8, ptr %.067.i, align 1
  %i.af = add i8 %i.ae, %.08.i                    ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.ad, %i.ab
  br i1 %exitcond.not.i, label %acpi_table_checksum.exit, label %.lr.ph.i, !llvm.loop !15

acpi_table_checksum.exit:                         ; preds = %.lr.ph.i
  %.not76 = icmp eq i8 %i.af, 0
  br i1 %.not76, label %acpi_table_checksum.exit.thread, label %bb.k

bb.k:                                             ; preds = %acpi_table_checksum.exit
  %i.ag = call i32 (ptr, ...) @_printk(ptr noundef @.str.13, ptr noundef nonnull %i.b, ptr noundef nonnull %i.j) #11 ; 0 uses
  br label %bb.l

acpi_table_checksum.exit.thread:                  ; preds = %bb.j, %acpi_table_checksum.exit
  %i.ah = call i32 (ptr, ...) @_printk(ptr noundef @.str.14, ptr noundef nonnull %i.k, ptr noundef nonnull %i.b, ptr noundef nonnull %i.j, i32 noundef %i.y) #11 ; 0 uses
  %i.ai = load i32, ptr %i.x, align 1
  %i.aj = load i32, ptr @all_tables_size, align 4
  %i.ak = add i32 %i.aj, %i.ai
  store i32 %i.ak, ptr @all_tables_size, align 4
  %i.al = load ptr, ptr %0, align 8
  %i.am = sext i32 %.06280 to i64
  %i.an = getelementptr [40 x i8], ptr @acpi_initrd_files, i64 %i.am ; 2 uses
  store ptr %i.al, ptr %i.an, align 8
  %i.ao = load i64, ptr %i.i, align 8
  %i.ap = getelementptr i8, ptr %i.an, i64 8
  store i64 %i.ao, ptr %i.ap, align 8
  %i.aq = add i32 %.06280, 1
  br label %bb.l

bb.l:                                             ; preds = %acpi_table_checksum.exit.thread, %bb.k, %bb.i, %bb.g, %bb.e
  %.163 = phi i32 [ %.06280, %bb.e ], [ %.06280, %bb.g ], [ %.06280, %bb.i ], [ %.06280, %bb.k ], [ %i.aq, %acpi_table_checksum.exit.thread ] ; 2 uses
  %i.ar = add nuw nsw i32 %.06181, 1              ; 2 uses
  %exitcond93.not = icmp eq i32 %i.ar, 64
  br i1 %exitcond93.not, label %bb.m, label %bb.c, !llvm.loop !16

bb.m:                                             ; preds = %bb.c, %bb.l
  %.062.lcssa = phi i32 [ %.06280, %bb.c ], [ %.163, %bb.l ] ; 3 uses
  %i.as = icmp eq i32 %.062.lcssa, 0
  br i1 %i.as, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = call i32 @security_locked_down(i32 noundef 9) #13
  %.not71 = icmp eq i32 %i.at, 0
  br i1 %.not71, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = call i32 (ptr, ...) @_printk(ptr noundef @.str.15) #11 ; 0 uses
  br label %.loopexit

bb.p:                                             ; preds = %bb.n
  %i.av = load i32, ptr @all_tables_size, align 4
  %i.aw = sext i32 %i.av to i64
  %i.ax = load i64, ptr @max_low_pfn_mapped, align 8
  %i.ay = shl i64 %i.ax, 12
  %i.az = call i64 @memblock_phys_alloc_range(i64 noundef %i.aw, i64 noundef 4096, i64 noundef 0, i64 noundef %i.ay) #13 ; 3 uses
  store i64 %i.az, ptr @acpi_tables_addr, align 8
  %.not72 = icmp eq i64 %i.az, 0
  br i1 %.not72, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void asm sideeffect "615: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 615b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 615) #12, !srcloc !20
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.16, ptr @.str.17, i32 498, i32 2305, i64 16) #12, !srcloc !21
  call void asm sideeffect "616: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 616b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 616) #12, !srcloc !22
  br label %.loopexit

bb.r:                                             ; preds = %bb.p
  %i.ba = load i32, ptr @all_tables_size, align 4
  %i.bb = sext i32 %i.ba to i64
  call void @arch_reserve_mem_area(i64 noundef %i.az, i64 noundef %i.bb) #13
  %i.bc = icmp sgt i32 %.062.lcssa, 0
  br i1 %i.bc, label %.lr.ph91.preheader, label %.loopexit

.lr.ph91.preheader:                               ; preds = %bb.r
  %wide.trip.count = zext nneg i32 %.062.lcssa to i64
  %.pre98 = load i64, ptr @acpi_tables_addr, align 8
  br label %.lr.ph91

.lr.ph91:                                         ; preds = %.lr.ph91.preheader, %._crit_edge
  %2 = phi i64 [ %.pre98, %.lr.ph91.preheader ], [ %3, %._crit_edge ] ; 2 uses
  %indvars.iv94 = phi i64 [ 0, %.lr.ph91.preheader ], [ %indvars.iv.next95, %._crit_edge ] ; 2 uses
  %.06488 = phi i64 [ 0, %.lr.ph91.preheader ], [ %i.bh, %._crit_edge ]
  %i.bd = getelementptr [40 x i8], ptr @acpi_initrd_files, i64 %indvars.iv94 ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  %i.bf = load i64, ptr %i.be, align 8            ; 3 uses
  %sext = shl i64 %.06488, 32
  %i.bg = ashr exact i64 %sext, 32                ; 2 uses
  %i.bh = add i64 %i.bf, %i.bg
  %.not7384 = icmp eq i64 %i.bf, 0
  br i1 %.not7384, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph91
  %i.bi = add i64 %2, %i.bg
  %i.bj = load ptr, ptr %i.bd, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.05587 = phi i64 [ %i.br, %.lr.ph ], [ %i.bi, %.lr.ph.preheader ] ; 3 uses
  %.05686 = phi i64 [ %i.bs, %.lr.ph ], [ %i.bf, %.lr.ph.preheader ] ; 2 uses
  %.05785 = phi ptr [ %i.bq, %.lr.ph ], [ %i.bj, %.lr.ph.preheader ] ; 2 uses
  %i.bk = and i64 %.05587, 4095                   ; 3 uses
  %i.bl = sub nuw nsw i64 262144, %i.bk
  %spec.select = call i64 @llvm.umin.i64(i64 %.05686, i64 %i.bl) ; 5 uses
  %i.bm = and i64 %.05587, -4096
  %i.bn = add nuw nsw i64 %spec.select, %i.bk     ; 2 uses
  %i.bo = call ptr @early_memremap(i64 noundef %i.bm, i64 noundef %i.bn) #13 ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 %i.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.bp, ptr noundef align 1 %.05785, i64 %spec.select, i1 false)
  call void @early_memunmap(ptr noundef %i.bo, i64 noundef %i.bn) #13
  %i.bq = getelementptr i8, ptr %.05785, i64 %spec.select
  %i.br = add i64 %spec.select, %.05587
  %i.bs = sub nuw i64 %.05686, %spec.select       ; 2 uses
  %.not73 = icmp eq i64 %i.bs, 0
  br i1 %.not73, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !17

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i64, ptr @acpi_tables_addr, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph91
  %3 = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %2, %.lr.ph91 ]
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %exitcond97.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count
  br i1 %exitcond97.not, label %.loopexit, label %.lr.ph91, !llvm.loop !18

.loopexit:                                        ; preds = %._crit_edge, %bb.r, %bb.m, %bb.a, %bb.q, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @find_cpio_data(ptr dead_on_unwind writable sret(%struct.cpio_data) align 8, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @security_locked_down(i32 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @memblock_phys_alloc_range(i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @arch_reserve_mem_area(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @early_memremap(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @early_memunmap(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef i32 @acpi_os_physical_table_override(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  store i32 0, ptr %2, align 4
  store i64 0, ptr %1, align 8
  %i.a = load i64, ptr @acpi_tables_addr, align 8
  %.not.i = icmp eq i64 %i.a, 0
  %i.b = load i32, ptr @all_tables_size, align 4
  %.not3550.i = icmp ult i32 %i.b, 36
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not3550.i
  br i1 %or.cond.i, label %acpi_table_initrd_override.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 10         ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = getelementptr i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %.lr.ph.i
  %i.f = phi i64 [ 0, %.lr.ph.i ], [ %i.aw, %bb.j ] ; 2 uses
  %.03353.i = phi i32 [ 0, %.lr.ph.i ], [ %i.l, %bb.j ]
  %.03451.i = phi i32 [ 0, %.lr.ph.i ], [ %i.av, %bb.j ] ; 2 uses
  %i.g = load i64, ptr @acpi_tables_addr, align 8
  %i.h = add i64 %i.g, %i.f
  %i.i = tail call ptr @acpi_os_map_memory(i64 noundef %i.h, i64 noundef 36) #13 ; 9 uses
  %i.j = getelementptr i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 1              ; 2 uses
  %i.l = add i32 %i.k, %.03353.i                  ; 3 uses
  %i.m = load i32, ptr @all_tables_size, align 4
  %i.n = icmp ugt i32 %i.l, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @acpi_os_unmap_memory(ptr noundef %i.i, i64 noundef 36) #13
  tail call void asm sideeffect "617: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 617b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 617) #12, !srcloc !24
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.16, ptr @.str.17, i32 564, i32 2305, i64 16) #12, !srcloc !25
  tail call void asm sideeffect "618: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 618b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 618) #12, !srcloc !26
  br label %acpi_table_initrd_override.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i32, ptr %0, align 1
  %i.p = load i32, ptr %i.i, align 1
  %i.q = icmp ne i32 %i.o, %i.p
  %i.r = zext i1 %i.q to i32
  %.not36.i = icmp eq i32 %i.r, 0
  br i1 %.not36.i, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr i8, ptr %i.i, i64 10       ; 3 uses
  %i.t = load i32, ptr %i.s, align 1
  %i.u = load i32, ptr %i.c, align 1
  %i.v = xor i32 %i.t, %i.u
  %i.w = getelementptr i8, ptr %i.s, i64 4
  %i.x = getelementptr i8, ptr %i.c, i64 4
  %i.y = load i16, ptr %i.w, align 1
  %i.z = load i16, ptr %i.x, align 1
  %i.aa = zext i16 %i.y to i32
  %i.ab = zext i16 %i.z to i32
  %i.ac = xor i32 %i.aa, %i.ab
  %i.ad = or i32 %i.v, %i.ac
  %i.ae = icmp ne i32 %i.ad, 0
  %i.af = zext i1 %i.ae to i32
  %.not38.i = icmp eq i32 %i.af, 0
  br i1 %.not38.i, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr i8, ptr %i.i, i64 16      ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 1
  %i.ai = load i64, ptr %i.d, align 1
  %i.aj = icmp ne i64 %i.ah, %i.ai
  %i.ak = zext i1 %i.aj to i32
  %.not40.i = icmp eq i32 %i.ak, 0
  br i1 %.not40.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.al = sext i32 %.03451.i to i64
  %i.am = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @acpi_initrd_installed, i64 range(i64 -2147483648, 2147483648) %i.al, ptr elementtype(i64) @acpi_initrd_installed) #12, !srcloc !11 ; 2 uses
  %i.an = icmp ult i8 %i.am, 2
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = trunc nuw i8 %i.am to i1
  br i1 %i.ao, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load i32, ptr %i.e, align 1
  %i.aq = getelementptr i8, ptr %i.i, i64 24
  %i.ar = load i32, ptr %i.aq, align 1
  %.not41.i = icmp ult i32 %i.ap, %i.ar
  br i1 %.not41.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.k, ptr %2, align 4
  %i.as = load i64, ptr @acpi_tables_addr, align 8
  %i.at = add i64 %i.as, %i.f
  store i64 %i.at, ptr %1, align 8
  %i.au = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.28, ptr noundef %i.i, ptr noundef %i.s, ptr noundef %i.ag) #11 ; 0 uses
  tail call void @acpi_os_unmap_memory(ptr noundef %i.i, i64 noundef 36) #13
  br label %acpi_table_initrd_override.exit

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  tail call void @acpi_os_unmap_memory(ptr noundef %i.i, i64 noundef 36) #13
  %i.av = add i32 %.03451.i, 1
  %i.aw = sext i32 %i.l to i64                    ; 2 uses
  %i.ax = add nsw i64 %i.aw, 36
  %i.ay = load i32, ptr @all_tables_size, align 4
  %i.az = sext i32 %i.ay to i64
  %.not35.i = icmp ugt i64 %i.ax, %i.az
  br i1 %.not35.i, label %acpi_table_initrd_override.exit, label %bb.b, !llvm.loop !23

acpi_table_initrd_override.exit:                  ; preds = %bb.j, %bb.a, %bb.c, %bb.i
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write)
define dso_local range(i32 0, 4098) i32 @acpi_os_table_override(ptr nofree noundef readnone captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #7 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 4097, %bb.a ]
  ret i32 %.0
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local range(i32 -22, 1) i32 @acpi_locate_initial_tables() local_unnamed_addr #3 section ".init.text" align 16 prefalign(16) {
bb.a:
  %.b = load i1, ptr @acpi_verify_table_checksum, align 1 ; 2 uses
  %.str.18..str.19 = select i1 %.b, ptr @.str.18, ptr @.str.19
  %. = zext i1 %.b to i8
  %i.a = tail call i32 (ptr, ...) @_printk(ptr noundef %.str.18..str.19) #11 ; 0 uses
  store i8 %., ptr @acpi_gbl_enable_table_validation, align 1
  %i.b = tail call i32 @acpi_initialize_tables(ptr noundef @initial_tables, i32 noundef 128, i8 noundef zeroext 0) #11 ; 3 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @acpi_format_exception(i32 noundef %i.b) #13
  %i.d = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.20, i32 noundef %i.b, ptr noundef %i.c) #11 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ -22, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @acpi_initialize_tables(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2 section ".init.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @acpi_format_exception(i32 noundef) local_unnamed_addr #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local void @acpi_reserve_initial_tables() local_unnamed_addr #3 section ".init.text" align 16 prefalign(16) {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.a = getelementptr [32 x i8], ptr @initial_tables, i64 %indvars.iv ; 3 uses
end_hunk_0
