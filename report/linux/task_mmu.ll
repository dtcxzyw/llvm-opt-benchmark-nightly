Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/task_mmu?download=true
inline.NumInlined: 597
inline.NumDeleted: 257
begin_hunk_0_@smap_gather_stats:bb.a
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
  %i.aa = tail call i32 @walk_page_range(ptr noundef %i.y, i64 noundef %3, i64 noundef %i.z, ptr noundef nonnull %.1, ptr noundef %2) #14 ; 0 uses
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
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.43, i64 noundef %i.b, i32 noundef 8) #14
  %i.c = getelementptr i8, ptr %1, i64 120
  %i.d = load i64, ptr %i.c, align 8
  %i.e = lshr i64 %i.d, 22
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.44, i64 noundef %i.e, i32 noundef 8) #14
  %i.f = getelementptr i8, ptr %1, i64 152
  %i.g = load i64, ptr %i.f, align 8
  %i.h = lshr i64 %i.g, 22
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.45, i64 noundef %i.h, i32 noundef 8) #14
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %1, i64 128
  %i.j = load i64, ptr %i.i, align 8
  %i.k = lshr i64 %i.j, 22
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.46, i64 noundef %i.k, i32 noundef 8) #14
  %i.l = getelementptr i8, ptr %1, i64 136
  %i.m = load i64, ptr %i.l, align 8
  %i.n = lshr i64 %i.m, 22
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.47, i64 noundef %i.n, i32 noundef 8) #14
  %i.o = getelementptr i8, ptr %1, i64 144
  %i.p = load i64, ptr %i.o, align 8
  %i.q = lshr i64 %i.p, 22
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.48, i64 noundef %i.q, i32 noundef 8) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = getelementptr i8, ptr %1, i64 8
  %i.s = load i64, ptr %i.r, align 8
  %i.t = lshr i64 %i.s, 10
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.49, i64 noundef %i.t, i32 noundef 8) #14
  %i.u = getelementptr i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8
  %i.w = lshr i64 %i.v, 10
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.50, i64 noundef %i.w, i32 noundef 8) #14
  %i.x = getelementptr i8, ptr %1, i64 24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = lshr i64 %i.y, 10
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.51, i64 noundef %i.z, i32 noundef 8) #14
  %i.aa = getelementptr i8, ptr %1, i64 32
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = lshr i64 %i.ab, 10
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.52, i64 noundef %i.ac, i32 noundef 8) #14
  %i.ad = getelementptr i8, ptr %1, i64 40
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = lshr i64 %i.ae, 10
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.53, i64 noundef %i.af, i32 noundef 8) #14
  %i.ag = getelementptr i8, ptr %1, i64 48
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = lshr i64 %i.ah, 10
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.54, i64 noundef %i.ai, i32 noundef 8) #14
  %i.aj = getelementptr i8, ptr %1, i64 112
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = lshr i64 %i.ak, 10
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.55, i64 noundef %i.al, i32 noundef 8) #14
  %i.am = getelementptr i8, ptr %1, i64 56
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = lshr i64 %i.an, 10
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.56, i64 noundef %i.ao, i32 noundef 8) #14
  %i.ap = getelementptr i8, ptr %1, i64 64
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = lshr i64 %i.aq, 10
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.57, i64 noundef %i.ar, i32 noundef 8) #14
  %i.as = getelementptr i8, ptr %1, i64 72
  %i.at = load i64, ptr %i.as, align 8
  %i.au = lshr i64 %i.at, 10
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.58, i64 noundef %i.au, i32 noundef 8) #14
  %i.av = getelementptr i8, ptr %1, i64 80
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = lshr i64 %i.aw, 10
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.59, i64 noundef %i.ax, i32 noundef 8) #14
  %i.ay = getelementptr i8, ptr %1, i64 96
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = lshr i64 %i.az, 10
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.60, i64 noundef %i.ba, i32 noundef 8) #14
  %i.bb = getelementptr i8, ptr %1, i64 104
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = lshr i64 %i.bc, 10
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.61, i64 noundef %i.bd, i32 noundef 7) #14
  %i.be = getelementptr i8, ptr %1, i64 88
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = lshr i64 %i.bf, 10
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.62, i64 noundef %i.bg, i32 noundef 8) #14
  %i.bh = getelementptr i8, ptr %1, i64 168
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = lshr i64 %i.bi, 22
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.63, i64 noundef %i.bj, i32 noundef 8) #14
  %i.bk = getelementptr i8, ptr %1, i64 160
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = lshr i64 %i.bl, 22
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.64, i64 noundef %i.bm, i32 noundef 8) #14
  %i.bn = tail call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.15, i64 noundef 4) #14 ; 0 uses
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @shmem_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @shmem_swap_usage(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @walk_page_vma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @walk_page_range(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @smaps_pte_range(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3) #0 align 16 prefalign(16) {
bb.a:
  %.sroa.0.i.i = alloca i64, align 8              ; 3 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr i8, ptr %3, i64 24         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 16
  %i.f = call ptr @pte_offset_map_lock(ptr noundef %i.e, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.a) #14 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not2122 = icmp eq i64 %1, %2
  br i1 %.not2122, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr i8, ptr %3, i64 40
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %3, i64 32
  store i32 2, ptr %i.h, align 8
  br label %bb.am

bb.c:                                             ; preds = %.lr.ph, %smaps_pte_entry.exit
  %.01926 = phi ptr [ %i.f, %.lr.ph ], [ %i.el, %smaps_pte_entry.exit ] ; 2 uses
  %.02023 = phi i64 [ %1, %.lr.ph ], [ %i.em, %smaps_pte_entry.exit ] ; 4 uses
  %i.i = load ptr, ptr %i.g, align 8              ; 15 uses
  %i.j = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.k = getelementptr i8, ptr %i.j, i64 32
  %i.l = load i64, ptr %i.k, align 32
  %i.m = and i64 %i.l, 8192
  %.not55.i = icmp eq i64 %i.m, 0                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %.sroa.0.0.copyload.i.i = load volatile i64, ptr %.01926, align 8 ; 9 uses
  store volatile i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.0.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.n = trunc i64 %.sroa.0.0.copyload.i.i to i32 ; 2 uses
  %i.o = and i32 %i.n, 257
  %.not.i = icmp ne i32 %i.o, 0                   ; 4 uses
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = call ptr @vm_normal_page(ptr noundef %i.j, i64 noundef %.02023, i64 %.sroa.0.0.copyload.i.i) #14
  %i.q = and i32 %i.n, 32
  %i.r = icmp ne i32 %i.q, 0
  %i.s = and i64 %.sroa.0.0.copyload.i.i, 288230376151711808
  %i.t = icmp ne i64 %i.s, 0
  br label %smaps_pte_hole_lookup.exit.i

bb.e:                                             ; preds = %bb.c
  %i.u = and i64 %.sroa.0.0.copyload.i.i, -97
  %.not.i.not.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.not.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %3, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 40
  %i.x = load ptr, ptr %i.w, align 8
  %.not.i42.i = icmp eq ptr %i.x, null
  br i1 %.not.i42.i, label %smaps_pte_entry.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = add i64 %.02023, 4096
  %i.z = getelementptr i8, ptr %i.j, i64 88
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %.val8.i.i.i = load i64, ptr %i.j, align 64     ; 2 uses
  %i.ad = getelementptr i8, ptr %i.j, i64 80
  %.val9.i.i.i = load i64, ptr %i.ad, align 16    ; 2 uses
  %i.ae = sub i64 %.02023, %.val8.i.i.i
  %i.af = lshr i64 %i.ae, 12
  %i.ag = add i64 %i.af, %.val9.i.i.i
  %i.ah = sub i64 %i.y, %.val8.i.i.i
  %i.ai = lshr i64 %i.ah, 12
  %i.aj = add i64 %i.ai, %.val9.i.i.i
  %i.ak = call i64 @shmem_partial_swap_usage(ptr noundef %i.ac, i64 noundef %i.ag, i64 noundef %i.aj) #14
  br label %smaps_pte_hole_lookup.exit.thread.sink.split.i

bb.h:                                             ; preds = %bb.e
  %i.al = and i64 %.sroa.0.0.copyload.i.i, 257
  %.not.i43.i = icmp ne i64 %i.al, 0
  %i.am = and i64 %.sroa.0.0.copyload.i.i, -354
  %.not.i.not.i.i = icmp eq i64 %i.am, 0
  %or.cond.i.i = or i1 %.not.i43.i, %.not.i.not.i.i
  br i1 %or.cond.i.i, label %softleaf_from_pte.exit.thread.i, label %softleaf_from_pte.exit.i

softleaf_from_pte.exit.i:                         ; preds = %bb.h
  %i.an = xor i64 %.sroa.0.0.copyload.i.i, -1
  %i.ao = lshr i64 %i.an, 9
  %i.ap = and i64 %i.ao, 1125899906842623
  %i.aq = lshr exact i64 %.sroa.0.0.copyload.i.i, 1
  %i.ar = and i64 %i.aq, 8935141660703064064
  %i.as = or disjoint i64 %i.ar, %i.ap            ; 3 uses
  %i.at = add nsw i64 %i.as, -1
  %i.au = icmp ult i64 %i.at, 8070450532247928831
  br i1 %i.au, label %bb.i, label %softleaf_from_pte.exit.thread.i

bb.i:                                             ; preds = %softleaf_from_pte.exit.i
  %i.av = getelementptr i8, ptr %i.i, i64 88      ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = add i64 %i.aw, 4096
  store i64 %i.ax, ptr %i.av, align 8
  %i.ay = call i32 @swp_swapcount(i64 %i.as) #14  ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 1
  br i1 %i.az, label %bb.j, label %smaps_pte_hole_lookup.exit.thread.sink.split.i

bb.j:                                             ; preds = %bb.i
  %i.ba = udiv i32 16777216, %i.ay
  %i.bb = zext nneg i32 %i.ba to i64
  br label %smaps_pte_hole_lookup.exit.thread.sink.split.i

softleaf_from_pte.exit.thread.i:                  ; preds = %softleaf_from_pte.exit.i, %bb.h
  %.sroa.08.0.i49.i = phi i64 [ %i.as, %softleaf_from_pte.exit.i ], [ 0, %bb.h ] ; 3 uses
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #15
          to label %softleaf_has_pfn.exit.i [label %softleaf_has_pfn.exit.i, label %softleaf_has_pfn.exit.i], !srcloc !28

softleaf_has_pfn.exit.i:                          ; preds = %softleaf_from_pte.exit.thread.i, %softleaf_from_pte.exit.thread.i, %softleaf_from_pte.exit.thread.i
  %i.bc = icmp samesign ugt i64 %.sroa.08.0.i49.i, 8070450532247928831
  %.mask.i.i.i = and i64 %.sroa.08.0.i49.i, 8935141660703064064
  %i.bd = icmp ne i64 %.mask.i.i.i, 8935141660703064064
  %switch.i.i.i = and i1 %i.bc, %i.bd
  br i1 %switch.i.i.i, label %bb.k, label %smaps_pte_entry.exit

bb.k:                                             ; preds = %softleaf_has_pfn.exit.i
  %i.be = load i64, ptr @vmemmap_base, align 8
  %i.bf = inttoptr i64 %i.be to ptr
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #15
          to label %bb.l [label %bb.l, label %softleaf_to_page.exit.i], !srcloc !28

bb.l:                                             ; preds = %bb.k, %bb.k
  br label %softleaf_to_page.exit.i

softleaf_to_page.exit.i:                          ; preds = %bb.l, %bb.k
  %i.bg = phi i64 [ 1099511627775, %bb.l ], [ 17179869183, %bb.k ]
  %i.bh = and i64 %i.bg, %.sroa.08.0.i49.i
  %i.bi = getelementptr [64 x i8], ptr %i.bf, i64 %i.bh ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 8
  %i.bk = load volatile i64, ptr %i.bj, align 8   ; 0 uses
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !29
  br label %smaps_pte_hole_lookup.exit.i

smaps_pte_hole_lookup.exit.i:                     ; preds = %softleaf_to_page.exit.i, %bb.d
  %.036.i = phi i1 [ %i.r, %bb.d ], [ false, %softleaf_to_page.exit.i ]
  %.035.i = phi i1 [ %i.t, %bb.d ], [ false, %softleaf_to_page.exit.i ] ; 3 uses
  %.1.i = phi ptr [ %i.p, %bb.d ], [ %i.bi, %softleaf_to_page.exit.i ] ; 4 uses
  %.not41.i = icmp eq ptr %.1.i, null
  br i1 %.not41.i, label %smaps_pte_entry.exit, label %bb.m

bb.m:                                             ; preds = %smaps_pte_hole_lookup.exit.i
  %i.bl = getelementptr i8, ptr %.1.i, i64 8
  %i.bm = load volatile i64, ptr %i.bl, align 8   ; 2 uses
  %i.bn = ptrtoint ptr %.1.i to i64
  %i.bo = and i64 %i.bm, 1
  %i.bp = add nsw i64 %i.bo, -1
  %i.bq = or i64 %i.bp, %i.bm
  %i.br = and i64 %i.bq, %i.bn
  %i.bs = inttoptr i64 %i.br to ptr               ; 11 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 24     ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = trunc i64 %i.bv to i1
  br i1 %i.bw, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bx = getelementptr i8, ptr %i.i, i64 48      ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = add i64 %i.by, 4096
  store i64 %i.bz, ptr %i.bx, align 8
  %i.ca = load volatile i64, ptr %i.bs, align 8
  %i.cb = and i64 %i.ca, 131072
  %i.cc = icmp ne i64 %i.cb, 0
  %or.cond.i46.i = or i1 %.035.i, %i.cc
  br i1 %or.cond.i46.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cd = load volatile i64, ptr %i.bs, align 8
  %i.ce = and i64 %i.cd, 16
  %.not.i47.i = icmp eq i64 %i.ce, 0
  br i1 %.not.i47.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cf = getelementptr i8, ptr %i.i, i64 56      ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = add i64 %i.cg, 4096
  store i64 %i.ch, ptr %i.cf, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %i.ci = load i64, ptr %i.i, align 8
  %i.cj = add i64 %i.ci, 4096
  store i64 %i.cj, ptr %i.i, align 8
  br i1 %.036.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ck = load volatile i64, ptr %i.bs, align 8
  %i.cl = and i64 %i.ck, 4
  %.not61.i.i = icmp eq i64 %i.cl, 0
  br i1 %.not61.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cm = getelementptr i8, ptr %i.i, i64 40      ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8
  %i.co = add i64 %i.cn, 4096
  store i64 %i.co, ptr %i.cm, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cp = getelementptr i8, ptr %i.bs, i64 52
  %i.cq = load volatile i32, ptr %i.cp, align 4
  %i.cr = icmp ne i32 %i.cq, 1
  %or.cond3.i.i = and i1 %.not.i, %i.cr
  br i1 %or.cond3.i.i, label %5, label %bb.u

bb.u:                                             ; preds = %bb.t
  %4 = getelementptr i8, ptr %i.i, i64 120        ; 2 uses
  %i.cs = load i64, ptr %4, align 8
  %i.ct = add i64 %i.cs, 16777216
  store i64 %i.ct, ptr %4, align 8
  %i.cu = load ptr, ptr %i.bt, align 8
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = trunc i64 %i.cv to i1
  br i1 %i.cw, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cx = load volatile i64, ptr %i.bs, align 8
  %i.cy = and i64 %i.cx, 131072
  %.not.i.i.i = icmp eq i64 %i.cy, 0
  %..i.i.i = select i1 %.not.i.i.i, i64 136, i64 144
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sink29.i.i.i = phi i64 [ %..i.i.i, %bb.v ], [ 128, %bb.u ]
  %i.cz = getelementptr i8, ptr %i.i, i64 %.sink29.i.i.i ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = add i64 %i.da, 16777216
  store i64 %i.db, ptr %i.cz, align 8
  br i1 %.not55.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dc = getelementptr i8, ptr %i.i, i64 160     ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8
  %i.de = add i64 %i.dd, 16777216
  store i64 %i.de, ptr %i.dc, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  br i1 %.035.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.df = load volatile i64, ptr %i.bs, align 8
  %i.dg = and i64 %i.df, 16
  %.not26.i.i.i = icmp eq i64 %i.dg, 0
  br i1 %.not26.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dh = getelementptr i8, ptr %i.i, i64 152     ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = add i64 %i.di, 16777216
  store i64 %i.dj, ptr %i.dh, align 8
  %.33.i.i.i = select i1 %.not.i, i64 32, i64 16
  br label %smaps_pte_hole_lookup.exit.thread.sink.split.i

bb.ab:                                            ; preds = %bb.z
  %.34.i.i.i = select i1 %.not.i, i64 24, i64 8
  br label %smaps_pte_hole_lookup.exit.thread.sink.split.i

5:                                                ; preds = %bb.t
  %6 = getelementptr i8, ptr %.1.i, i64 48
  %7 = load volatile i32, ptr %6, align 8         ; 2 uses
  %8 = add i32 %7, 1
  %9 = icmp slt i32 %7, -16777216
  %spec.select.i.i.i = select i1 %9, i32 0, i32 %8 ; 2 uses
  %10 = load volatile i64, ptr %i.bs, align 8
  %11 = and i64 %10, 64
  %.not.i52.i.i = icmp eq i64 %11, 0
  br i1 %.not.i52.i.i, label %folio_precise_page_mapcount.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %5
  %i.dk = getelementptr i8, ptr %i.bs, i64 88
  %i.dl = load volatile i32, ptr %i.dk, align 8
  %i.dm = add i32 %spec.select.i.i.i, 1
  %i.dn = add i32 %i.dm, %i.dl
  br label %folio_precise_page_mapcount.exit.i.i

folio_precise_page_mapcount.exit.i.i:             ; preds = %bb.ac, %5
  %.1.i.i.i = phi i32 [ %i.dn, %bb.ac ], [ %spec.select.i.i.i, %5 ] ; 3 uses
  %i.do = icmp slt i32 %.1.i.i.i, 2               ; 2 uses
  %i.dp = icmp sgt i32 %.1.i.i.i, 1
  br i1 %i.dp, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %folio_precise_page_mapcount.exit.i.i
  %i.dq = udiv i32 16777216, %.1.i.i.i
  %i.dr = zext nneg i32 %i.dq to i64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %folio_precise_page_mapcount.exit.i.i
  %.0.i.i = phi i64 [ %i.dr, %bb.ad ], [ 16777216, %folio_precise_page_mapcount.exit.i.i ] ; 4 uses
  %12 = getelementptr i8, ptr %i.i, i64 120       ; 2 uses
  %i.ds = load i64, ptr %12, align 8
  %i.dt = add i64 %i.ds, %.0.i.i
  store i64 %i.dt, ptr %12, align 8
  %i.du = load ptr, ptr %i.bt, align 8
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = trunc i64 %i.dv to i1
  br i1 %i.dw, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dx = load volatile i64, ptr %i.bs, align 8
  %i.dy = and i64 %i.dx, 131072
  %.not.i53.i.i = icmp eq i64 %i.dy, 0
  %..i54.i.i = select i1 %.not.i53.i.i, i64 136, i64 144
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.sink29.i55.i.i = phi i64 [ %..i54.i.i, %bb.af ], [ 128, %bb.ae ]
  %i.dz = getelementptr i8, ptr %i.i, i64 %.sink29.i55.i.i ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8
  %i.eb = add i64 %i.ea, %.0.i.i
  store i64 %i.eb, ptr %i.dz, align 8
  br i1 %.not55.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %13 = getelementptr i8, ptr %i.i, i64 160       ; 2 uses
  %i.ec = load i64, ptr %13, align 8
  %i.ed = add i64 %i.ec, %.0.i.i
  store i64 %i.ed, ptr %13, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  br i1 %.035.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ee = load volatile i64, ptr %i.bs, align 8
  %i.ef = and i64 %i.ee, 16
  %.not26.i56.i.i = icmp eq i64 %i.ef, 0
  br i1 %.not26.i56.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %14 = getelementptr i8, ptr %i.i, i64 152       ; 2 uses
  %i.eg = load i64, ptr %14, align 8
  %i.eh = add i64 %i.eg, %.0.i.i
  store i64 %i.eh, ptr %14, align 8
  %.33.i57.i.i = select i1 %i.do, i64 32, i64 16
  br label %smaps_pte_hole_lookup.exit.thread.sink.split.i

bb.al:                                            ; preds = %bb.aj
  %.34.i59.i.i = select i1 %i.do, i64 24, i64 8
  br label %smaps_pte_hole_lookup.exit.thread.sink.split.i

smaps_pte_hole_lookup.exit.thread.sink.split.i:   ; preds = %bb.al, %bb.ak, %bb.ab, %bb.aa, %bb.j, %bb.i, %bb.g
  %.sink59.i = phi i64 [ 88, %bb.g ], [ 168, %bb.i ], [ 168, %bb.j ], [ %.33.i.i.i, %bb.aa ], [ %.34.i.i.i, %bb.ab ], [ %.34.i59.i.i, %bb.al ], [ %.33.i57.i.i, %bb.ak ]
  %.sink58.i = phi i64 [ %i.ak, %bb.g ], [ 16777216, %bb.i ], [ %i.bb, %bb.j ], [ 4096, %bb.aa ], [ 4096, %bb.ab ], [ 4096, %bb.al ], [ 4096, %bb.ak ]
  %i.ei = getelementptr i8, ptr %i.i, i64 %.sink59.i ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8
  %i.ek = add i64 %i.ej, %.sink58.i
  store i64 %i.ek, ptr %i.ei, align 8
  br label %smaps_pte_entry.exit

smaps_pte_entry.exit:                             ; preds = %bb.f, %softleaf_has_pfn.exit.i, %smaps_pte_hole_lookup.exit.i, %smaps_pte_hole_lookup.exit.thread.sink.split.i
  %i.el = getelementptr i8, ptr %.01926, i64 8
  %i.em = add i64 %.02023, 4096                   ; 2 uses
  %.not21 = icmp eq i64 %i.em, %2
  br i1 %.not21, label %._crit_edge, label %bb.c, !llvm.loop !58

._crit_edge:                                      ; preds = %smaps_pte_entry.exit, %.preheader
  %i.en = load ptr, ptr %i.a, align 8
  call void @_raw_spin_unlock(ptr noundef %i.en) #14
  call void @__rcu_read_unlock() #14
  %i.eo = call i32 @__SCT__cond_resched() #14     ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @smaps_hugetlb_range(ptr noundef %0, i64 %1, i64 %2, i64 %3, ptr nofree noundef readonly captures(none) %4) #0 align 16 prefalign(16) {
bb.a:
  %.sroa.0.i.i = alloca i64, align 8              ; 3 uses
  %i.a = getelementptr i8, ptr %4, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %4, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 88       ; 2 uses
  %.val24 = load ptr, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %.val24, i64 32
  %.val24.val = load ptr, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %.val24.val, i64 40
  %.val24.val.val = load ptr, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %.val24.val.val, i64 864
  %.val24.val.val.val = load ptr, ptr %i.h, align 32
  %i.i = getelementptr i8, ptr %.val24.val.val.val, i64 24
  %.val24.val.val.val.val = load ptr, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %.val24.val.val.val.val, i64 32
  %.val27 = load i32, ptr %i.j, align 8
  %i.k = zext nneg i32 %.val27 to i64
  %i.l = shl i64 4096, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.l, 1073741823
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %4, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 460
  br label %huge_pte_lock.exit

bb.c:                                             ; preds = %bb.a
  %i.q = icmp samesign ugt i64 %i.l, 2097151
  %i.r = load i64, ptr @vmemmap_base, align 8
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  %i.t = ptrtoint ptr %0 to i64                   ; 2 uses
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = and i64 %i.t, -4096
  %i.v = add i64 %i.u, 2147483648
  %i.w = icmp ugt ptr %0, inttoptr (i64 -2147483649 to ptr)
  %i.x = load i64, ptr @phys_base, align 8
  %i.y = load i64, ptr @page_offset_base, align 8
  %i.z = sub i64 -2147483648, %i.y
  %i.aa = select i1 %i.w, i64 %i.x, i64 %i.z
  %i.ab = add i64 %i.v, %i.aa
  %i.ac = lshr i64 %i.ab, 12
  %i.ad = getelementptr [64 x i8], ptr %i.s, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 40
  br label %huge_pte_lock.exit

bb.e:                                             ; preds = %bb.c
  %i.af = add i64 %i.t, 2147483648
  %i.ag = icmp ugt ptr %0, inttoptr (i64 -2147483649 to ptr)
  %i.ah = load i64, ptr @phys_base, align 8
  %i.ai = load i64, ptr @page_offset_base, align 8
  %i.aj = sub i64 -2147483648, %i.ai
  %i.ak = select i1 %i.ag, i64 %i.ah, i64 %i.aj
  %i.al = add i64 %i.af, %i.ak
  %i.am = lshr i64 %i.al, 12
  %i.an = getelementptr [64 x i8], ptr %i.s, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 40
  br label %huge_pte_lock.exit

huge_pte_lock.exit:                               ; preds = %bb.b, %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.p, %bb.b ], [ %i.ae, %bb.d ], [ %i.ao, %bb.e ] ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %.0.i.i) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %.sroa.0.0.copyload.i.i = load volatile i64, ptr %0, align 8 ; 7 uses
  store volatile i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.0.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.ap = and i64 %.sroa.0.0.copyload.i.i, 257
  %.not.not = icmp eq i64 %i.ap, 0
  br i1 %.not.not, label %bb.f, label %.thread34

bb.f:                                             ; preds = %huge_pte_lock.exit
  %i.aq = and i64 %.sroa.0.0.copyload.i.i, -354
  %.not.i.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i.not.i, label %softleaf_from_pte.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = xor i64 %.sroa.0.0.copyload.i.i, -1
  %i.as = lshr i64 %i.ar, 9
  %i.at = and i64 %i.as, 1125899906842623
  %i.au = lshr exact i64 %.sroa.0.0.copyload.i.i, 1
  %i.av = and i64 %i.au, 8935141660703064064
  %i.aw = or disjoint i64 %i.av, %i.at
  br label %softleaf_from_pte.exit

softleaf_from_pte.exit:                           ; preds = %bb.f, %bb.g
  %.sroa.08.0.i = phi i64 [ %i.aw, %bb.g ], [ 0, %bb.f ] ; 3 uses
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #15
          to label %softleaf_has_pfn.exit [label %softleaf_has_pfn.exit, label %softleaf_has_pfn.exit], !srcloc !28

softleaf_has_pfn.exit:                            ; preds = %softleaf_from_pte.exit, %softleaf_from_pte.exit, %softleaf_from_pte.exit
  %i.ax = icmp samesign ugt i64 %.sroa.08.0.i, 8070450532247928831
  %.mask.i.i = and i64 %.sroa.08.0.i, 8935141660703064064
  %i.ay = icmp ne i64 %.mask.i.i, 8935141660703064064
  %switch.i.i = and i1 %i.ax, %i.ay
  br i1 %switch.i.i, label %bb.h, label %.thread

bb.h:                                             ; preds = %softleaf_has_pfn.exit
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #15
          to label %bb.i [label %bb.i, label %bb.j], !srcloc !28

bb.i:                                             ; preds = %bb.h, %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.az = phi i64 [ 1099511627775, %bb.i ], [ 17179869183, %bb.h ]
  %i.ba = and i64 %i.az, %.sroa.08.0.i
  %i.bb = load i64, ptr @vmemmap_base, align 8
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = getelementptr [64 x i8], ptr %i.bc, i64 %i.ba ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  %i.bf = load volatile i64, ptr %i.be, align 8   ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !29
  %i.bg = and i64 %i.bf, 1
  %i.bh = add nsw i64 %i.bg, -1
  %i.bi = or i64 %i.bh, %i.bf
  %i.bj = ptrtoint ptr %i.bd to i64
  %i.bk = and i64 %i.bi, %i.bj
  %.not22 = icmp eq i64 %i.bk, 0
  br i1 %.not22, label %.thread, label %.thread.sink.split

.thread34:                                        ; preds = %huge_pte_lock.exit
  %i.bl = load i64, ptr @vmemmap_base, align 8
  %i.bm = inttoptr i64 %i.bl to ptr               ; 2 uses
  %i.bn = and i64 %.sroa.0.0.copyload.i.i, 1
  %sext = add nuw nsw i64 %i.bn, 4503599627370495
  %i.bo = xor i64 %.sroa.0.0.copyload.i.i, %sext
  %i.bp = lshr i64 %i.bo, 12
  %i.bq = and i64 %i.bp, 1099511627775
  %i.br = getelementptr [64 x i8], ptr %i.bm, i64 %i.bq ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 8
  %i.bt = load volatile i64, ptr %i.bs, align 8   ; 2 uses
  %i.bu = ptrtoint ptr %i.br to i64
  %i.bv = and i64 %i.bt, 1
  %i.bw = add nsw i64 %i.bv, -1
  %i.bx = or i64 %i.bw, %i.bt
  %i.by = and i64 %i.bx, %i.bu                    ; 2 uses
  %i.bz = inttoptr i64 %i.by to ptr               ; 5 uses
  %.not2236 = icmp eq i64 %i.by, 0
  br i1 %.not2236, label %.thread, label %.thread38

.thread38:                                        ; preds = %.thread34
  %i.ca = load volatile i64, ptr %i.bz, align 8
  %i.cb = and i64 %i.ca, 64
  %.not.i.i = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i, label %bb.k, label %bb.l, !prof !14

bb.k:                                             ; preds = %.thread38
  %i.cc = getelementptr i8, ptr %i.bz, i64 48
  %i.cd = load volatile i32, ptr %i.cc, align 8   ; 2 uses
  %i.ce = add i32 %i.cd, 1
  %i.cf = icmp slt i32 %i.cd, -16777216
  %spec.select.i.i = select i1 %i.cf, i32 0, i32 %i.ce
  br label %folio_mapcount.exit.i

bb.l:                                             ; preds = %.thread38
  %i.cg = getelementptr i8, ptr %i.bz, i64 80
  %i.ch = load volatile i32, ptr %i.cg, align 8
  %i.ci = add i32 %i.ch, 1
  br label %folio_mapcount.exit.i

end_hunk_0
