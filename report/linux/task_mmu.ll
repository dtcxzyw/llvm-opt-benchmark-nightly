Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/task_mmu?download=true
inline.NumInlined: 597
inline.NumDeleted: 257
begin_hunk_0_@show_map_vma:bb.a
  %i.ac = and i32 %i.ab, 16777216
  %.not.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i, label %bb.h, label %bb.g, !prof !14

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call ptr @backing_file_user_path(ptr noundef nonnull %i.z) #14
  br label %get_vma_name.exit

bb.h:                                             ; preds = %bb.f
  %i.ae = getelementptr i8, ptr %i.z, i64 64
  br label %get_vma_name.exit

bb.i:                                             ; preds = %bb.e
  %i.af = getelementptr i8, ptr %1, i64 72
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not35.i = icmp eq ptr %i.ag, null
  br i1 %.not35.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr i8, ptr %i.ag, i64 104
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not36.i = icmp eq ptr %i.ai, null
  br i1 %.not36.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call ptr %i.ai(ptr noundef %1) #14, !inline_history !53 ; 2 uses
  %.not37.i = icmp eq ptr %i.aj, null
  br i1 %.not37.i, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.ak = tail call ptr @arch_vma_name(ptr noundef %1) #14 ; 2 uses
  %.not38.i = icmp eq ptr %i.ak, null
  br i1 %.not38.i, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.al = load ptr, ptr %i.y, align 16            ; 4 uses
  %.not39.i = icmp eq ptr %i.al, null
  br i1 %.not39.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = load i64, ptr %1, align 64              ; 2 uses
  %i.an = getelementptr i8, ptr %i.al, i64 760
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = icmp ult i64 %i.am, %i.ao
  br i1 %i.ap, label %vma_is_initial_heap.exit.i, label %vma_is_initial_heap.exit.thread.i

vma_is_initial_heap.exit.i:                       ; preds = %bb.n
  %i.aq = load i64, ptr %i.w, align 8
  %i.ar = getelementptr i8, ptr %i.al, i64 752
  %i.as = load i64, ptr %i.ar, align 16
  %i.at = icmp ugt i64 %i.aq, %i.as
  br i1 %i.at, label %bb.p, label %vma_is_initial_heap.exit.thread.i

vma_is_initial_heap.exit.thread.i:                ; preds = %vma_is_initial_heap.exit.i, %bb.n
  %i.au = getelementptr i8, ptr %i.al, i64 768
  %i.av = load i64, ptr %i.au, align 64           ; 2 uses
  %.not.i40.i = icmp ugt i64 %i.am, %i.av
  br i1 %.not.i40.i, label %seq_puts.exit, label %vma_is_initial_stack.exit.i

vma_is_initial_stack.exit.i:                      ; preds = %vma_is_initial_heap.exit.thread.i
  %i.aw = load i64, ptr %i.w, align 8
  %.not.i29 = icmp ult i64 %i.aw, %i.av
  br i1 %.not.i29, label %seq_puts.exit, label %bb.p

get_vma_name.exit:                                ; preds = %bb.g, %bb.h
  %.037 = phi ptr [ %i.ae, %bb.h ], [ %i.ad, %bb.g ] ; 2 uses
  %.not25 = icmp eq ptr %.037, null
  br i1 %.not25, label %seq_puts.exit, label %bb.o

bb.o:                                             ; preds = %get_vma_name.exit
  tail call void @seq_pad(ptr noundef %0, i8 noundef zeroext 32) #14
  %i.ax = tail call i32 @seq_path(ptr noundef %0, ptr noundef nonnull %.037, ptr noundef @.str.29) #14 ; 0 uses
  br label %seq_puts.exit

bb.p:                                             ; preds = %vma_is_initial_stack.exit.i, %vma_is_initial_heap.exit.i, %bb.k, %bb.l, %bb.m
  %.036.ph.ph = phi ptr [ @.str.21, %bb.m ], [ @.str.22, %vma_is_initial_heap.exit.i ], [ %i.ak, %bb.l ], [ %i.aj, %bb.k ], [ @.str.23, %vma_is_initial_stack.exit.i ]
  tail call void @seq_pad(ptr noundef %0, i8 noundef zeroext 32) #14
  tail call void @__seq_puts(ptr noundef %0, ptr noundef %.036.ph.ph) #14
  br label %seq_puts.exit

seq_puts.exit:                                    ; preds = %get_vma_name.exit, %bb.p, %vma_is_initial_stack.exit.i, %vma_is_initial_heap.exit.thread.i, %bb.o
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #14
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @show_vma_header_prefix(ptr noundef initializes((32, 40)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef range(i64 0, -4095) %4, i32 noundef %5, i64 noundef %6) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8
  %i.c = add i64 %i.b, 72
  %i.d = getelementptr i8, ptr %0, i64 32
  store i64 %i.c, ptr %i.d, align 8
  tail call void @seq_put_hex_ll(ptr noundef %0, ptr noundef null, i64 noundef %1, i32 noundef 8) #14
  tail call void @seq_put_hex_ll(ptr noundef %0, ptr noundef @.str.30, i64 noundef %2, i32 noundef 8) #14
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 32) #14
  %i.e = and i64 %3, 1
  %.not = icmp eq i64 %i.e, 0
  %i.f = select i1 %.not, i8 45, i8 114
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %i.f) #14
  %i.g = and i64 %3, 2
  %.not22 = icmp eq i64 %i.g, 0
  %i.h = select i1 %.not22, i8 45, i8 119
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %i.h) #14
  %i.i = and i64 %3, 4
  %.not23 = icmp eq i64 %i.i, 0
  %i.j = select i1 %.not23, i8 45, i8 120
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %i.j) #14
  %i.k = and i64 %3, 128
  %.not24 = icmp eq i64 %i.k, 0
  %i.l = select i1 %.not24, i8 112, i8 115
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %i.l) #14
  tail call void @seq_put_hex_ll(ptr noundef %0, ptr noundef @.str.31, i64 noundef %4, i32 noundef 8) #14
  %i.m = lshr i32 %5, 20
  %i.n = zext nneg i32 %i.m to i64
  tail call void @seq_put_hex_ll(ptr noundef %0, ptr noundef @.str.31, i64 noundef %i.n, i32 noundef 2) #14
  %i.o = and i32 %5, 1048575
  %i.p = zext nneg i32 %i.o to i64
  tail call void @seq_put_hex_ll(ptr noundef %0, ptr noundef @.str.32, i64 noundef %i.p, i32 noundef 2) #14
  tail call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef @.str.31, i64 noundef %6) #14
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 32) #14
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @seq_pad(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @seq_path(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @seq_put_hex_ll(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @seq_put_decimal_ull(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__mmdrop(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @show_smap(ptr noundef initializes((32, 40)) %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.mem_size_stats, align 8     ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %2, i8 0, i64 176, i1 false)
  call fastcc void @smap_gather_stats(ptr noundef %i.b, ptr noundef %1, ptr noundef nonnull %2, i64 noundef 0) #16, !srcloc !55
  call fastcc void @show_map_vma(ptr noundef %0, ptr noundef %1) #16, !srcloc !56
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = load i64, ptr %1, align 64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr i64 %i.f, 10
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef @.str.33, i64 noundef %i.g, i32 noundef 8) #14
  %i.h = getelementptr i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %vma_kernel_pagesize.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.i, i64 72
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not5.i = icmp eq ptr %i.k, null
  br i1 %.not5.i, label %vma_kernel_pagesize.exit, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.l = call i64 %i.k(ptr noundef %1) #14, !inline_history !0
  %i.m = lshr i64 %i.l, 10
  br label %vma_kernel_pagesize.exit

vma_kernel_pagesize.exit:                         ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ %i.m, %bb.c ], [ 4, %bb.a ], [ 4, %bb.b ]
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef @.str.34, i64 noundef %.0.i, i32 noundef 8) #14
  %i.n = call i64 @vma_mmu_pagesize(ptr noundef %1) #14
  %i.o = lshr i64 %i.n, 10
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef @.str.35, i64 noundef %i.o, i32 noundef 8) #14
  %i.p = call i32 @seq_write(ptr noundef %0, ptr noundef @.str.15, i64 noundef 4) #14 ; 0 uses
  call fastcc void @__show_smap(ptr noundef %0, ptr noundef nonnull %2, i1 noundef zeroext false) #16, !srcloc !57
  %i.q = getelementptr i8, ptr %1, i64 32         ; 2 uses
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef @.str.36, i32 noundef 0) #14
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 516, i32 16, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 112)) #15
          to label %bb.d [label %bb.d, label %arch_pkeys_enabled.exit], !srcloc !28

bb.d:                                             ; preds = %vma_kernel_pagesize.exit, %vma_kernel_pagesize.exit
  %.val = load i64, ptr %i.q, align 32
  %i.r = lshr i64 %.val, 32
  %i.s = trunc nuw i64 %i.r to i32
  %i.t = and i32 %i.s, 15
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef @.str.37, i32 noundef %i.t) #14
  br label %arch_pkeys_enabled.exit

arch_pkeys_enabled.exit:                          ; preds = %vma_kernel_pagesize.exit, %bb.d
  %i.u = call i32 @seq_write(ptr noundef %0, ptr noundef @.str.65, i64 noundef 9) #14 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %arch_pkeys_enabled.exit
  %.09.i = phi i64 [ 0, %arch_pkeys_enabled.exit ], [ %i.z, %bb.h ] ; 3 uses
  %i.v = getelementptr [3 x i8], ptr @show_smap_vma_flags.mnemonics, i64 %.09.i ; 2 uses
  %3 = load i8, ptr %i.v, align 1
  %.not.i30 = icmp eq i8 %3, 0
  br i1 %.not.i30, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load i64, ptr %i.q, align 32
  %i.x = shl nuw i64 1, %.09.i
  %i.y = and i64 %i.w, %i.x
  %.not8.i = icmp eq i64 %i.y, 0
  br i1 %.not8.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef @.str.66, ptr noundef %i.v) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.z = add nuw nsw i64 %.09.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.z, 64
  br i1 %exitcond.not.i, label %show_smap_vma_flags.exit, label %bb.e, !llvm.loop !54

show_smap_vma_flags.exit:                         ; preds = %bb.h
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @smap_gather_stats(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 120        ; 4 uses
  %.val34 = load i8, ptr %i.a, align 8, !range !26, !noundef !27
  %i.b = trunc nuw i8 %.val34 to i1
  %smaps_walk_ops.smaps_walk_vma_lock_ops.i = select i1 %i.b, ptr @smaps_walk_ops, ptr @smaps_walk_vma_lock_ops ; 3 uses
  %i.c = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp ult i64 %3, %i.d
  br i1 %.not, label %bb.b, label %reacquire_rcu.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 112
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call ptr @get_gate_vma(ptr noundef %i.f) #14
  %i.h = icmp eq ptr %1, %i.g
  br i1 %i.h, label %reacquire_rcu.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val = load i8, ptr %i.a, align 8, !range !26, !noundef !27
  %i.i = trunc nuw i8 %.val to i1
  br i1 %i.i, label %drop_rcu.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__rcu_read_unlock() #14
  br label %drop_rcu.exit

drop_rcu.exit:                                    ; preds = %bb.c, %bb.d
  %i.j = getelementptr i8, ptr %1, i64 88
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not28 = icmp eq ptr %i.k, null
  br i1 %.not28, label %bb.j, label %bb.e

bb.e:                                             ; preds = %drop_rcu.exit
  %i.l = getelementptr i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call zeroext i1 @shmem_mapping(ptr noundef %i.m) #14
  br i1 %i.n, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.o = tail call i64 @shmem_swap_usage(ptr noundef %1) #14 ; 2 uses
  %.not29 = icmp eq i64 %3, 0
  br i1 %.not29, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %.not30 = icmp eq i64 %i.o, 0
  br i1 %.not30, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr i8, ptr %1, i64 32
  %i.q = load i64, ptr %i.p, align 32
  %i.r = and i64 %i.q, 10
  %or.cond.not = icmp eq i64 %i.r, 2
  br i1 %or.cond.not, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.g, %bb.h
  %i.s = getelementptr i8, ptr %2, i64 88         ; 2 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = add i64 %i.t, %i.o
  store i64 %i.u, ptr %i.s, align 8
  br label %bb.k

bb.i:                                             ; preds = %bb.h, %bb.f
  %.val35 = load i8, ptr %i.a, align 8, !range !26, !noundef !27
  %i.v = trunc nuw i8 %.val35 to i1
  %smaps_shmem_walk_ops.smaps_shmem_walk_vma_lock_ops.i = select i1 %i.v, ptr @smaps_shmem_walk_ops, ptr @smaps_shmem_walk_vma_lock_ops
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e, %drop_rcu.exit
  %.1 = phi ptr [ %smaps_walk_ops.smaps_walk_vma_lock_ops.i, %drop_rcu.exit ], [ %smaps_walk_ops.smaps_walk_vma_lock_ops.i, %bb.e ], [ %smaps_shmem_walk_ops.smaps_shmem_walk_vma_lock_ops.i, %bb.i ] ; 2 uses
  %.not33 = icmp eq i64 %3, 0
  br i1 %.not33, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread, %bb.j
  %.138 = phi ptr [ %smaps_walk_ops.smaps_walk_vma_lock_ops.i, %.thread ], [ %.1, %bb.j ]
  %i.w = tail call i32 @walk_page_vma(ptr noundef %1, ptr noundef %.138, ptr noundef %2) #14 ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.x = getelementptr i8, ptr %1, i64 16
  %i.y = load ptr, ptr %i.x, align 16
  %i.z = load i64, ptr %i.c, align 8
  %i.aa = tail call i32 @walk_page_range(ptr noundef %i.y, i64 noundef %3, i64 noundef %i.z, ptr noundef %.1, ptr noundef %2) #14 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ab = load i8, ptr %i.a, align 8, !range !26, !noundef !27
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %reacquire_rcu.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @__rcu_read_lock() #14
  %i.ad = getelementptr i8, ptr %0, i64 128
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr i8, ptr %0, i64 88
  store i32 1, ptr %i.ah, align 8
  %i.ai = getelementptr i8, ptr %0, i64 40
  store ptr null, ptr %i.ai, align 8
  %i.aj = getelementptr i8, ptr %0, i64 24
  store i64 %i.ag, ptr %i.aj, align 8
  %i.ak = getelementptr i8, ptr %0, i64 32
  store i64 %i.ag, ptr %i.ak, align 8
  br label %reacquire_rcu.exit

reacquire_rcu.exit:                               ; preds = %bb.n, %bb.m, %bb.b, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @vma_mmu_pagesize(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @__show_smap(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i1 noundef zeroext %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = lshr i64 %i.a, 10
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef @.str.43, i64 noundef %i.b, i32 noundef 8) #14
  %i.c = getelementptr i8, ptr %1, i64 120
  %i.d = load i64, ptr %i.c, align 8
  %i.e = lshr i64 %i.d, 22
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef @.str.44, i64 noundef %i.e, i32 noundef 8) #14
  %i.f = getelementptr i8, ptr %1, i64 152
  %i.g = load i64, ptr %i.f, align 8
  %i.h = lshr i64 %i.g, 22
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef @.str.45, i64 noundef %i.h, i32 noundef 8) #14
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %1, i64 128
  %i.j = load i64, ptr %i.i, align 8
  %i.k = lshr i64 %i.j, 22
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef @.str.46, i64 noundef %i.k, i32 noundef 8) #14
  %i.l = getelementptr i8, ptr %1, i64 136
  %i.m = load i64, ptr %i.l, align 8
  %i.n = lshr i64 %i.m, 22
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef @.str.47, i64 noundef %i.n, i32 noundef 8) #14
  %i.o = getelementptr i8, ptr %1, i64 144
  %i.p = load i64, ptr %i.o, align 8
  %i.q = lshr i64 %i.p, 22
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef @.str.48, i64 noundef %i.q, i32 noundef 8) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = getelementptr i8, ptr %1, i64 8
  %i.s = load i64, ptr %i.r, align 8
  %i.t = lshr i64 %i.s, 10
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef @.str.49, i64 noundef %i.t, i32 noundef 8) #14
  %i.u = getelementptr i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8
  %i.w = lshr i64 %i.v, 10
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef @.str.50, i64 noundef %i.w, i32 noundef 8) #14
  %i.x = getelementptr i8, ptr %1, i64 24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = lshr i64 %i.y, 10
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef @.str.51, i64 noundef %i.z, i32 noundef 8) #14
  %i.aa = getelementptr i8, ptr %1, i64 32
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = lshr i64 %i.ab, 10
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef @.str.52, i64 noundef %i.ac, i32 noundef 8) #14
  %i.ad = getelementptr i8, ptr %1, i64 40
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = lshr i64 %i.ae, 10
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef @.str.53, i64 noundef %i.af, i32 noundef 8) #14
  %i.ag = getelementptr i8, ptr %1, i64 48
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = lshr i64 %i.ah, 10
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef @.str.54, i64 noundef %i.ai, i32 noundef 8) #14
  %i.aj = getelementptr i8, ptr %1, i64 112
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = lshr i64 %i.ak, 10
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef @.str.55, i64 noundef %i.al, i32 noundef 8) #14
  %i.am = getelementptr i8, ptr %1, i64 56
  %i.an = load i64, ptr %i.am, align 8
end_hunk_0
