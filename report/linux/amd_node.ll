Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/amd_node?download=true
inline.NumInlined: 11
inline.NumDeleted: 6
begin_hunk_0_@amd_node_get_func:bb.a

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @pci_get_domain_bus_and_slot(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @amd_smn_read(i16 noundef zeroext %0, i32 noundef %1, ptr noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc i32 @__amd_smn_rw(i8 noundef zeroext 96, i8 noundef zeroext 100, i16 noundef zeroext %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext false) #9, !srcloc !10
  %i.b = load i32, ptr %2, align 4
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %2, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -19, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -2147483648, 1) i32 @__amd_smn_rw(i8 noundef zeroext range(i8 96, -59) %0, i8 noundef zeroext range(i8 100, -55) %1, i16 noundef zeroext %2, i32 noundef %3, ptr noundef %4, i1 noundef zeroext %5) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr @__amd_nodes_per_pkg, align 4
  %i.b = load i32, ptr @__max_logical_packages, align 4
  %i.c = mul i32 %i.b, %i.a
  %i.d = trunc i32 %i.c to i16
  %.not = icmp ult i16 %2, %i.d
  br i1 %.not, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @amd_roots, align 8
  %i.f = zext i16 %2 to i64
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  %.not22 = icmp eq ptr %i.h, null
  br i1 %.not22, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.b = load i1, ptr @smn_exclusive, align 1
  br i1 %.b, label %bb.d, label %bb.q

bb.d:                                             ; preds = %bb.c
  tail call void @mutex_lock(ptr noundef nonnull @smn_mutex) #8
  %i.i = zext i8 %0 to i32
  %i.j = tail call i32 @pci_write_config_dword(ptr noundef nonnull %i.h, i32 noundef %i.i, i32 noundef %3) #8 ; 2 uses
  %.not23 = icmp eq i32 %i.j, 0
  br i1 %.not23, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %3) #10 ; 0 uses
  %i.l = tail call fastcc i32 @pcibios_err_to_errno(i32 noundef %i.j) #9, !srcloc !14
  br label %pcibios_err_to_errno.exit

bb.f:                                             ; preds = %bb.d
  %i.m = zext i8 %1 to i32                        ; 2 uses
  br i1 %5, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = load i32, ptr %4, align 4
  %i.o = tail call i32 @pci_write_config_dword(ptr noundef nonnull %i.h, i32 noundef %i.m, i32 noundef %i.n) #8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.p = tail call i32 @pci_read_config_dword(ptr noundef nonnull %i.h, i32 noundef %i.m, ptr noundef %4) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = phi i32 [ %i.o, %bb.g ], [ %i.p, %bb.h ] ; 3 uses
  %i.r = icmp slt i32 %i.q, 1
  br i1 %i.r, label %pcibios_err_to_errno.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  switch i32 %i.q, label %bb.p [
    i32 129, label %pcibios_err_to_errno.exit
    i32 131, label %bb.k
    i32 134, label %bb.l
    i32 135, label %bb.m
    i32 136, label %bb.n
    i32 137, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j
  br label %pcibios_err_to_errno.exit

bb.l:                                             ; preds = %bb.j
  br label %pcibios_err_to_errno.exit

bb.m:                                             ; preds = %bb.j
  br label %pcibios_err_to_errno.exit

bb.n:                                             ; preds = %bb.j
  br label %pcibios_err_to_errno.exit

bb.o:                                             ; preds = %bb.j
  br label %pcibios_err_to_errno.exit

bb.p:                                             ; preds = %bb.j
  br label %pcibios_err_to_errno.exit

pcibios_err_to_errno.exit:                        ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.e
  %.0 = phi i32 [ %i.l, %bb.e ], [ -28, %bb.o ], [ -34, %bb.p ], [ %i.q, %bb.i ], [ -25, %bb.k ], [ -19, %bb.l ], [ -14, %bb.m ], [ -5, %bb.n ], [ -2, %bb.j ]
  tail call void @mutex_unlock(ptr noundef nonnull @smn_mutex) #8
  br label %bb.q

bb.q:                                             ; preds = %bb.c, %bb.b, %bb.a, %pcibios_err_to_errno.exit
  %.1 = phi i32 [ -19, %bb.a ], [ %.0, %pcibios_err_to_errno.exit ], [ -19, %bb.b ], [ -19, %bb.c ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @amd_smn_write(i16 noundef zeroext %0, i32 noundef %1, i32 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %2, ptr %i.a, align 4
  %i.b = call fastcc i32 @__amd_smn_rw(i8 noundef zeroext 96, i8 noundef zeroext 100, i16 noundef zeroext %0, i32 noundef %1, ptr noundef nonnull %i.a, i1 noundef zeroext true) #9, !srcloc !11
  ret i32 %i.b
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @amd_smn_hsmp_rdwr(i16 noundef zeroext %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc i32 @__amd_smn_rw(i8 noundef zeroext -60, i8 noundef zeroext -56, i16 noundef zeroext %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) #9, !srcloc !15
  ret i32 %i.a
}

; Function Attrs: cold fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid optsize sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none)
define internal noundef i32 @amd_smn_enable_dfs(ptr nofree readnone captures(none) %0) #3 section ".init.text" align 16 prefalign(16) {
bb.a:
  store i1 true, ptr @enable_dfs, align 1
  ret i32 1
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal range(i32 -19, 1) i32 @amd_smn_init() #4 section ".init.text" align 16 prefalign(16) {
bb.a:
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 252, i32 16, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 79)) #11
          to label %bb.b [label %bb.b, label %_static_cpu_has.exit], !srcloc !18

bb.b:                                             ; preds = %bb.a, %bb.a
  tail call void @mutex_lock(ptr noundef nonnull @smn_mutex) #8
  %i.a = load ptr, ptr @amd_roots, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.preheader, label %._crit_edge.thread

.preheader:                                       ; preds = %bb.b
  %i.b = tail call fastcc ptr @get_next_root(ptr noundef null) #9, !srcloc !19 ; 2 uses
  %.not2940 = icmp eq ptr %i.b, null
  br i1 %.not2940, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %i.c = phi ptr [ %i.h, %bb.d ], [ %i.b, %.preheader ] ; 3 uses
  %.02341 = phi i16 [ %i.g, %bb.d ], [ 0, %.preheader ]
  %i.d = getelementptr i8, ptr %i.c, i64 1672
  %i.e = tail call ptr @__request_region(ptr noundef %i.d, i64 noundef 0, i64 noundef 256, ptr noundef null, i32 noundef 134217728) #8
  %.not34 = icmp eq ptr %i.e, null
  br i1 %.not34, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.f = getelementptr i8, ptr %i.c, i64 200
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.f, ptr noundef nonnull @.str.1) #10
  br label %._crit_edge.thread

bb.d:                                             ; preds = %.lr.ph
  %i.g = add i16 %.02341, 1                       ; 3 uses
  %i.h = tail call fastcc ptr @get_next_root(ptr noundef nonnull %i.c) #9, !srcloc !19 ; 2 uses
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.d
  %.not30 = icmp eq i16 %i.g, 0
  br i1 %.not30, label %._crit_edge.thread, label %_kzalloc_noprof.exit

_kzalloc_noprof.exit:                             ; preds = %._crit_edge
  %i.i = load i32, ptr @__amd_nodes_per_pkg, align 4
  %i.j = load i32, ptr @__max_logical_packages, align 4
  %i.k = mul i32 %i.j, %i.i                       ; 3 uses
  %.mask = shl i32 %i.k, 3
  %i.l = and i32 %.mask, 524280
  %i.m = zext nneg i32 %i.l to i64
  %i.n = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 524281) %i.m, i32 noundef 3520) #12 ; 2 uses
  store ptr %i.n, ptr @amd_roots, align 8
  %.not31 = icmp eq ptr %i.n, null
  br i1 %.not31, label %._crit_edge.thread, label %bb.e

bb.e:                                             ; preds = %_kzalloc_noprof.exit
  %i.o = trunc i32 %i.k to i16
  %i.p = udiv i16 %i.g, %i.o
  %.mask52 = and i32 %i.k, 65535                  ; 2 uses
  %wide.trip.count = zext nneg i32 %.mask52 to i64
  %exitcond.not65 = icmp eq i32 %.mask52, 0
  br i1 %exitcond.not65, label %.critedge.split, label %.outer.split.preheader

.outer.split.preheader:                           ; preds = %bb.e, %.outer
  %.021.ph68 = phi i16 [ %i.r, %.outer ], [ 0, %bb.e ]
  %.126.ph67 = phi ptr [ %i.q, %.outer ], [ null, %bb.e ]
  %indvars.iv66 = phi i64 [ %indvars.iv.next, %.outer ], [ 0, %bb.e ] ; 2 uses
  br label %.outer.split

.outer.split:                                     ; preds = %.outer.split.preheader, %bb.f
  %.126 = phi ptr [ %i.q, %bb.f ], [ %.126.ph67, %.outer.split.preheader ]
  %.021 = phi i16 [ %i.r, %bb.f ], [ %.021.ph68, %.outer.split.preheader ] ; 2 uses
  %i.q = tail call fastcc ptr @get_next_root(ptr noundef %.126) #9, !srcloc !20 ; 4 uses
  %.not32 = icmp eq ptr %i.q, null
  br i1 %.not32, label %.critedge.split, label %bb.f

bb.f:                                             ; preds = %.outer.split
  %i.r = add i16 %.021, 1                         ; 2 uses
  %i.s = urem i16 %.021, %i.p
  %.not33 = icmp eq i16 %i.s, 0
  br i1 %.not33, label %.outer, label %.outer.split, !llvm.loop !17

.outer:                                           ; preds = %bb.f
  %i.t = load ptr, ptr @amd_roots, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %i.t, i64 %indvars.iv66
  store ptr %i.q, ptr %i.u, align 8
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.split, label %.outer.split.preheader, !llvm.loop !17

.critedge.split:                                  ; preds = %.outer, %.outer.split, %bb.e
  %.b = load i1, ptr @enable_dfs, align 1
  br i1 %.b, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.critedge.split
  %i.v = load ptr, ptr @arch_debugfs_dir, align 8
  %i.w = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.2, ptr noundef %i.v) #8 ; 2 uses
  store ptr %i.w, ptr @debugfs_dir, align 8
  %i.x = tail call ptr @debugfs_create_file_full(ptr noundef nonnull @.str.3, i16 noundef zeroext 384, ptr noundef %i.w, ptr noundef null, ptr noundef null, ptr noundef nonnull @smn_node_fops) #8 ; 0 uses
  %i.y = load ptr, ptr @debugfs_dir, align 8
  %i.z = tail call ptr @debugfs_create_file_full(ptr noundef nonnull @.str.4, i16 noundef zeroext 384, ptr noundef %i.y, ptr noundef null, ptr noundef null, ptr noundef nonnull @smn_address_fops) #8 ; 0 uses
  %i.aa = load ptr, ptr @debugfs_dir, align 8
  %i.ab = tail call ptr @debugfs_create_file_full(ptr noundef nonnull @.str.5, i16 noundef zeroext 384, ptr noundef %i.aa, ptr noundef null, ptr noundef null, ptr noundef nonnull @smn_value_fops) #8 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.critedge.split
  store i1 true, ptr @smn_exclusive, align 1
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader, %_kzalloc_noprof.exit, %._crit_edge, %bb.b, %bb.h, %bb.c
  %.0 = phi i32 [ 0, %bb.b ], [ -17, %bb.c ], [ 0, %bb.h ], [ -19, %._crit_edge ], [ -12, %_kzalloc_noprof.exit ], [ -19, %.preheader ]
  tail call void @mutex_unlock(ptr noundef nonnull @smn_mutex) #8
  br label %_static_cpu_has.exit

_static_cpu_has.exit:                             ; preds = %bb.a, %._crit_edge.thread
  %.1 = phi i32 [ %.0, %._crit_edge.thread ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern inlinehint mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal fastcc range(i32 -2147483648, 1) i32 @pcibios_err_to_errno(i32 noundef %0) unnamed_addr #6 align 16 prefalign(16) {
bb.a:
  %i.a = icmp slt i32 %0, 1
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %0, label %bb.h [
    i32 129, label %bb.i
    i32 131, label %bb.c
    i32 134, label %bb.d
    i32 135, label %bb.e
    i32 136, label %bb.f
    i32 137, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  br label %bb.i

bb.g:                                             ; preds = %bb.b
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.a, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0 = phi i32 [ -28, %bb.g ], [ -34, %bb.h ], [ %0, %bb.a ], [ -25, %bb.c ], [ -19, %bb.d ], [ -14, %bb.e ], [ -5, %bb.f ], [ -2, %bb.b ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc ptr @get_next_root(ptr noundef %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @pci_get_class(i32 noundef 393216, ptr noundef %0) #8 ; 2 uses
  %.not10 = icmp eq ptr %i.a, null
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.backedge
  %i.b = phi ptr [ %i.e, %.backedge ], [ %i.a, %bb.a ] ; 5 uses
  %i.c = getelementptr i8, ptr %i.b, i64 56
  %i.d = load i32, ptr %i.c, align 8
  %.not7 = icmp eq i32 %i.d, 0
  br i1 %.not7, label %bb.b, label %.backedge

.backedge:                                        ; preds = %.lr.ph, %bb.b
  %i.e = tail call ptr @pci_get_class(i32 noundef 393216, ptr noundef nonnull %i.b) #8 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !21

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr i8, ptr %i.b, i64 60
  %i.g = load i16, ptr %i.f, align 4
  switch i16 %i.g, label %.backedge [
    i16 4130, label %._crit_edge
    i16 7572, label %._crit_edge
  ]

._crit_edge:                                      ; preds = %.backedge, %bb.b, %bb.b, %bb.a
  %.lcssa = phi ptr [ null, %bb.a ], [ %i.b, %bb.b ], [ %i.b, %bb.b ], [ null, %.backedge ]
  ret ptr %.lcssa
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @debugfs_create_file_full(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @pci_get_class(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc_noprof(i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_read(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @smn_node_write(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr nofree readnone captures(none) %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i16, align 2                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i16 0, ptr %i.a, align 2, !annotation !13
  %i.b = call i32 @kstrtou16_from_user(ptr noundef %1, i64 noundef %2, i32 noundef 0, ptr noundef nonnull %i.a) #8 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %i.b to i64
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = load i16, ptr %i.a, align 2              ; 2 uses
  %i.e = load i32, ptr @__amd_nodes_per_pkg, align 4
  %i.f = load i32, ptr @__max_logical_packages, align 4
  %i.g = mul i32 %i.f, %i.e
  %i.h = trunc i32 %i.g to i16
  %.not6 = icmp ult i16 %i.d, %i.h
  br i1 %.not6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i16 %i.d, ptr @debug_node, align 2
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ %2, %bb.d ], [ -19, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i64 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @smn_node_open(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 536
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @smn_node_show, ptr noundef %i.b) #8
  ret i32 %i.c
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @kstrtou16_from_user(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @smn_node_show(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i16, ptr @debug_node, align 2
  %i.b = zext i16 %i.a to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %i.b) #8
  ret i32 0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1
end_hunk_0
