Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/gup?download=true
inline.NumInlined: 615
inline.NumDeleted: 265
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@check_vma_flags:bb.a
  %.not42 = icmp eq i64 %i.t, 0
  br i1 %.not42, label %bb.k, label %arch_vma_access_permitted.exit

bb.k:                                             ; preds = %bb.j
  %i.u = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #12, !srcloc !24
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr i8, ptr %i.v, i64 1400
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %arch_vma_access_permitted.exit, label %vma_is_foreign.exit.i

vma_is_foreign.exit.i:                            ; preds = %bb.k
  %i.y = getelementptr i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 16
  %.not2.i.not.i = icmp eq ptr %i.x, %i.z
  br i1 %.not2.i.not.i, label %bb.l, label %arch_vma_access_permitted.exit

bb.l:                                             ; preds = %vma_is_foreign.exit.i
  %.val.i = load i64, ptr %i.a, align 32
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 516, i32 16, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 112)) #9
          to label %bb.m [label %bb.m, label %read_pkru.exit.i.i], !srcloc !25

bb.m:                                             ; preds = %bb.l, %bb.l
  %i.aa = tail call { i32, i32 } asm sideeffect "rdpkru", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0) #9, !srcloc !26
  %i.ab = extractvalue { i32, i32 } %i.aa, 0
  br label %read_pkru.exit.i.i

read_pkru.exit.i.i:                               ; preds = %bb.m, %bb.l
  %.0.i.i.i = phi i32 [ %i.ab, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %sh.diff.i = lshr i64 %.val.i, 31
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %i.ac = and i32 %tr.sh.diff.i, 30               ; 2 uses
  %i.ad = shl nuw nsw i32 1, %i.ac
  %i.ae = and i32 %.0.i.i.i, %i.ad
  %.not.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i, label %bb.n, label %arch_vma_access_permitted.exit

bb.n:                                             ; preds = %read_pkru.exit.i.i
  br i1 %i.j, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.af = shl nuw i32 3, %i.ac
  %i.ag = and i32 %.0.i.i.i, %i.af
  %.not.i5.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i5.i.i, label %bb.p, label %arch_vma_access_permitted.exit

bb.p:                                             ; preds = %bb.o, %bb.n
  br label %arch_vma_access_permitted.exit

arch_vma_access_permitted.exit:                   ; preds = %read_pkru.exit.i.i, %bb.o, %vma_is_foreign.exit.i, %bb.j, %bb.p, %bb.k, %bb.i, %bb.g, %writable_file_mapping_allowed.exit, %bb.d, %is_vm_hugetlb_page.exit, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.k ], [ -14, %bb.a ], [ -14, %bb.b ], [ -95, %is_vm_hugetlb_page.exit ], [ -14, %bb.i ], [ -14, %bb.d ], [ -14, %bb.g ], [ -14, %writable_file_mapping_allowed.exit ], [ -14, %bb.o ], [ -14, %read_pkru.exit.i.i ], [ 0, %vma_is_foreign.exit.i ], [ 0, %bb.j ], [ 0, %bb.p ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @in_gate_area(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @mtree_load(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @vma_is_secretmem(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @vma_needs_dirty_tracking(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @get_gate_vma(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @vm_normal_page(ptr noundef, i64 noundef, i64) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__pte_offset_map(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_unlock() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__cond_resched() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @vma_pgtable_walk_begin(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noundef ptr @no_page_table(ptr noundef %0, i32 noundef %1, i64 noundef %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = and i32 %1, 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %is_vm_hugetlb_page.exit

is_vm_hugetlb_page.exit:                          ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 32
  %i.c = load volatile i64, ptr %i.b, align 8
  %.in.i.in.i.i = and i64 %i.c, 4194304
  %.in.i.i.i.not = icmp eq i64 %.in.i.in.i.i, 0
  br i1 %.in.i.i.i.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %is_vm_hugetlb_page.exit
  %i.d = getelementptr i8, ptr %0, i64 88
  %.val11 = load ptr, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %.val11, i64 32
  %.val11.val = load ptr, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %.val11.val, i64 40
  %.val11.val.val = load ptr, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %.val11.val.val, i64 864
  %.val11.val.val.val = load ptr, ptr %i.g, align 32
  %i.h = getelementptr i8, ptr %.val11.val.val.val, i64 24
  %.val11.val.val.val.val = load ptr, ptr %i.h, align 8
  %i.i = tail call zeroext i1 @hugetlbfs_pagecache_present(ptr noundef %.val11.val.val.val.val, ptr noundef %0, i64 noundef %2) #10
  br i1 %i.i, label %bb.e, label %bb.f

bb.c:                                             ; preds = %is_vm_hugetlb_page.exit
  %i.j = getelementptr i8, ptr %0, i64 72
  %.val = load ptr, ptr %i.j, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %.val, i64 48
  %i.l = load ptr, ptr %i.k, align 8
  %.not10 = icmp eq ptr %i.l, null
  br i1 %.not10, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a, %bb.e
  %.1 = phi ptr [ null, %bb.e ], [ inttoptr (i64 -14 to ptr), %bb.b ], [ null, %bb.a ], [ inttoptr (i64 -14 to ptr), %bb.d ], [ inttoptr (i64 -14 to ptr), %bb.c ]
  ret ptr %.1
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @vma_pgtable_walk_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @hugetlbfs_pagecache_present(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc ptr @follow_page_pte(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %.sroa.0.i = alloca i64, align 8                ; 3 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8, !annotation !41
  %i.d = call ptr @pte_offset_map_lock(ptr noundef %i.c, ptr noundef %2, i64 noundef %1, ptr noundef nonnull %i.a) #10 ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %3, 4
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %no_page_table.exit, label %is_vm_hugetlb_page.exit.i

is_vm_hugetlb_page.exit.i:                        ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 32
  %i.g = load volatile i64, ptr %i.f, align 16
  %.in.i.in.i.i.i = and i64 %i.g, 4194304
  %.in.i.i.i.not.i = icmp eq i64 %.in.i.in.i.i.i, 0
  br i1 %.in.i.i.i.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %is_vm_hugetlb_page.exit.i
  %i.h = getelementptr i8, ptr %0, i64 88
  %.val11.i = load ptr, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %.val11.i, i64 32
  %.val11.val.i = load ptr, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %.val11.val.i, i64 40
  %.val11.val.val.i = load ptr, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %.val11.val.val.i, i64 864
  %.val11.val.val.val.i = load ptr, ptr %i.k, align 32
  %i.l = getelementptr i8, ptr %.val11.val.val.val.i, i64 24
  %.val11.val.val.val.val.i = load ptr, ptr %i.l, align 8
  %i.m = call zeroext i1 @hugetlbfs_pagecache_present(ptr noundef %.val11.val.val.val.val.i, ptr noundef %0, i64 noundef %1) #10
  br i1 %i.m, label %bb.an, label %no_page_table.exit

bb.d:                                             ; preds = %is_vm_hugetlb_page.exit.i
  %i.n = getelementptr i8, ptr %0, i64 72
  %.val.i = load ptr, ptr %i.n, align 8           ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %no_page_table.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %.val.i, i64 48
  %i.p = load ptr, ptr %i.o, align 8
  %.not10.i = icmp eq ptr %i.p, null
  br i1 %.not10.i, label %no_page_table.exit, label %bb.an

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %.sroa.0.0.copyload.i = load volatile i64, ptr %i.d, align 8 ; 10 uses
  store volatile i64 %.sroa.0.0.copyload.i, ptr %.sroa.0.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.q = trunc i64 %.sroa.0.0.copyload.i to i32   ; 2 uses
  %i.r = and i32 %i.q, 257
  %.not61 = icmp eq i32 %i.r, 0
  br i1 %.not61, label %bb.aj, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = call ptr @vm_normal_page(ptr noundef %0, i64 noundef %1, i64 %.sroa.0.0.copyload.i) #10 ; 9 uses
  %i.t = and i32 %3, 1
  %.not63 = icmp eq i32 %i.t, 0                   ; 2 uses
  %i.u = and i64 %.sroa.0.0.copyload.i, 2         ; 2 uses
  %.not.i.i71 = icmp ne i64 %i.u, 0
  %or.cond.not = select i1 %.not63, i1 true, i1 %.not.i.i71
  br i1 %or.cond.not, label %can_follow_write_pte.exit.thread100, label %bb.h

bb.h:                                             ; preds = %bb.g
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 519, i32 128, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 112)) #9
          to label %pte_write.exit.i [label %pte_write.exit.i, label %pte_write.exit.thread.i], !srcloc !25

pte_write.exit.i:                                 ; preds = %bb.h, %bb.h
  %i.v = and i64 %.sroa.0.0.copyload.i, 64
  %.not.i72 = icmp eq i64 %i.v, 0
  br i1 %.not.i72, label %pte_write.exit.thread.i, label %can_follow_write_pte.exit.thread100

pte_write.exit.thread.i:                          ; preds = %pte_write.exit.i, %bb.h
  %i.w = and i32 %3, 8
  %.not.i7.i = icmp eq i32 %i.w, 0
  br i1 %.not.i7.i, label %can_follow_write_pte.exit.thread, label %bb.i

bb.i:                                             ; preds = %pte_write.exit.thread.i
  %i.x = getelementptr i8, ptr %0, i64 32
  %i.y = load i64, ptr %i.x, align 32
  %i.z = and i64 %i.y, 170
  %or.cond12.i.i = icmp ne i64 %i.z, 32
  %.not11.i.i = icmp eq ptr %i.s, null
  %or.cond13.i.i = or i1 %.not11.i.i, %or.cond12.i.i
  br i1 %or.cond13.i.i, label %can_follow_write_pte.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr i8, ptr %i.s, i64 8       ; 3 uses
  %i.ab = load volatile i64, ptr %i.aa, align 8   ; 2 uses
  %i.ac = ptrtoint ptr %i.s to i64                ; 3 uses
  %i.ad = and i64 %i.ab, 1
  %i.ae = add nsw i64 %i.ad, -1
  %i.af = or i64 %i.ae, %i.ab
  %i.ag = and i64 %i.af, %i.ac
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = trunc i64 %i.ak to i1
  br i1 %i.al, label %bb.k, label %can_follow_write_pte.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.am = load volatile i64, ptr %i.aa, align 8   ; 2 uses
  %i.an = and i64 %i.am, 1
  %i.ao = add nsw i64 %i.an, -1
  %i.ap = or i64 %i.ao, %i.am
  %i.aq = and i64 %i.ap, %i.ac
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr i8, ptr %i.ar, i64 48
  %i.at = load i32, ptr %i.as, align 16
  %.mask.i.i.i.i = and i32 %i.at, -16777216
  %i.au = icmp eq i32 %.mask.i.i.i.i, -201326592
  br i1 %i.au, label %bb.l, label %can_follow_write_pte.exit

bb.l:                                             ; preds = %bb.k
  %i.av = load volatile i64, ptr %i.aa, align 8   ; 2 uses
  %i.aw = and i64 %i.av, 1
  %i.ax = add nsw i64 %i.aw, -1
  %i.ay = or i64 %i.ax, %i.av
  %i.az = and i64 %i.ay, %i.ac
  %i.ba = inttoptr i64 %i.az to ptr
  br label %can_follow_write_pte.exit

can_follow_write_pte.exit:                        ; preds = %bb.k, %bb.l
  %.0.i.i.i = phi ptr [ %i.ba, %bb.l ], [ %i.s, %bb.k ]
  %i.bb = load volatile i64, ptr %.0.i.i.i, align 8
  %.in.i.in.i.i = and i64 %i.bb, 2048
  %.in.i.i.i.not = icmp eq i64 %.in.i.in.i.i, 0
  br i1 %.in.i.i.i.not, label %can_follow_write_pte.exit.thread, label %.thread.thread

.thread.thread:                                   ; preds = %can_follow_write_pte.exit
  %i.bc = getelementptr i8, ptr %i.s, i64 8       ; 2 uses
  %i.bd = load volatile i64, ptr %i.bc, align 8   ; 2 uses
  %i.be = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.bf = and i64 %i.bd, 1
  %i.bg = add nsw i64 %i.bf, -1
  %i.bh = or i64 %i.bg, %i.bd
  %i.bi = and i64 %i.bh, %i.be                    ; 2 uses
  %i.bj = inttoptr i64 %i.bi to ptr
  br label %bb.q

can_follow_write_pte.exit.thread100:              ; preds = %pte_write.exit.i, %bb.g
  %.not64 = icmp eq ptr %i.s, null
  br i1 %.not64, label %bb.m, label %.thread, !prof !145

bb.m:                                             ; preds = %can_follow_write_pte.exit.thread100
  %i.bk = and i32 %3, 4
  %.not65 = icmp eq i32 %i.bk, 0
  br i1 %.not65, label %bb.n, label %can_follow_write_pte.exit.thread

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i = icmp ne i64 %.sroa.0.0.copyload.i, 0
  %i.bl = and i64 %.sroa.0.0.copyload.i, 1
  %.not2.i.i.i = icmp eq i64 %i.bl, 0
  %4 = and i1 %.not.i.i.i, %.not2.i.i.i
  %5 = sext i1 %4 to i64
  %i.bm = xor i64 %.sroa.0.0.copyload.i, %5
  %i.bn = lshr i64 %i.bm, 12
  %i.bo = and i64 %i.bn, 1099511627775            ; 2 uses
  %i.bp = load i64, ptr @zero_page_pfn, align 8
  %.not117 = icmp eq i64 %i.bo, %i.bp
  br i1 %.not117, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bq = load i64, ptr @vmemmap_base, align 8
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = getelementptr [64 x i8], ptr %i.br, i64 %i.bo
  br label %.thread

bb.p:                                             ; preds = %bb.n
  call fastcc void @follow_pfn_pte(ptr noundef %i.d, i32 noundef %3) #11
  br label %can_follow_write_pte.exit.thread

.thread:                                          ; preds = %bb.o, %can_follow_write_pte.exit.thread100
  %.057 = phi ptr [ %i.bs, %bb.o ], [ %i.s, %can_follow_write_pte.exit.thread100 ] ; 4 uses
  %i.bt = getelementptr i8, ptr %.057, i64 8      ; 2 uses
  %i.bu = load volatile i64, ptr %i.bt, align 8   ; 2 uses
  %i.bv = ptrtoint ptr %.057 to i64               ; 2 uses
  %i.bw = and i64 %i.bu, 1
  %i.bx = add nsw i64 %i.bw, -1
  %i.by = or i64 %i.bx, %i.bu
  %i.bz = and i64 %i.by, %i.bv                    ; 3 uses
  %i.ca = inttoptr i64 %i.bz to ptr               ; 2 uses
  %.not.i75 = icmp eq i64 %i.u, 0
  br i1 %.not.i75, label %bb.q, label %pte_write.exit.thread104

bb.q:                                             ; preds = %.thread.thread, %.thread
  %i.cb = phi ptr [ %i.bj, %.thread.thread ], [ %i.ca, %.thread ] ; 5 uses
  %i.cc = phi i64 [ %i.bi, %.thread.thread ], [ %i.bz, %.thread ] ; 5 uses
  %i.cd = phi i64 [ %i.be, %.thread.thread ], [ %i.bv, %.thread ] ; 3 uses
  %i.ce = phi ptr [ %i.bc, %.thread.thread ], [ %i.bt, %.thread ] ; 3 uses
  %.057128 = phi ptr [ %i.s, %.thread.thread ], [ %.057, %.thread ] ; 6 uses
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 519, i32 128, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 112)) #9
          to label %pte_write.exit [label %pte_write.exit, label %pte_write.exit.thread], !srcloc !25

pte_write.exit:                                   ; preds = %bb.q, %bb.q
  %i.cf = and i32 %i.q, 64
  %.not67 = icmp eq i32 %i.cf, 0
  %i.cg = and i32 %3, 524289
  %.not.i76 = icmp eq i32 %i.cg, 524288
  %or.cond111 = and i1 %.not.i76, %.not67
  br i1 %or.cond111, label %bb.r, label %pte_write.exit.thread104

pte_write.exit.thread:                            ; preds = %bb.q
  %.old = and i32 %3, 524289
  %.not.i76.old = icmp eq i32 %.old, 524288
  br i1 %.not.i76.old, label %bb.r, label %pte_write.exit.thread104

bb.r:                                             ; preds = %pte_write.exit, %pte_write.exit.thread
  %i.ch = load volatile i64, ptr %i.ce, align 8   ; 2 uses
  %i.ci = and i64 %i.ch, 1
  %i.cj = add nsw i64 %i.ci, -1
  %i.ck = or i64 %i.cj, %i.ch
  %i.cl = and i64 %i.ck, %i.cd
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = getelementptr i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = trunc i64 %i.cp to i1
  br i1 %i.cq, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cr = and i32 %3, 256
  %.not7.i = icmp eq i32 %i.cr, 0
  br i1 %.not7.i, label %pte_write.exit.thread104, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not8.i = icmp eq ptr %0, null
  br i1 %.not8.i, label %can_follow_write_pte.exit.thread, label %.split

.split:                                           ; preds = %bb.t
  %i.cs = getelementptr i8, ptr %0, i64 32
  %i.ct = load i64, ptr %i.cs, align 32
  %i.cu = and i64 %i.ct, 40
  %i.cv = icmp eq i64 %i.cu, 32
  br i1 %i.cv, label %can_follow_write_pte.exit.thread, label %pte_write.exit.thread104

bb.u:                                             ; preds = %bb.r
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !29
  %i.cw = load volatile i64, ptr %i.ce, align 8   ; 2 uses
  %i.cx = and i64 %i.cw, 1
  %i.cy = add nsw i64 %i.cx, -1
  %i.cz = or i64 %i.cy, %i.cw
  %i.da = and i64 %i.cz, %i.cd
  %i.db = inttoptr i64 %i.da to ptr
  %i.dc = getelementptr i8, ptr %i.db, i64 48
  %i.dd = load i32, ptr %i.dc, align 16
  %.mask.i.i.i = and i32 %i.dd, -16777216
  %i.de = icmp eq i32 %.mask.i.i.i, -201326592
  br i1 %i.de, label %bb.v, label %gup_must_unshare.exit

bb.v:                                             ; preds = %bb.u
  %i.df = load volatile i64, ptr %i.ce, align 8   ; 2 uses
  %i.dg = and i64 %i.df, 1
  %i.dh = add nsw i64 %i.dg, -1
  %i.di = or i64 %i.dh, %i.df
  %i.dj = and i64 %i.di, %i.cd
  %i.dk = inttoptr i64 %i.dj to ptr
  br label %gup_must_unshare.exit

gup_must_unshare.exit:                            ; preds = %bb.u, %bb.v
  %.0.i.i = phi ptr [ %i.dk, %bb.v ], [ %.057128, %bb.u ]
  %i.dl = load volatile i64, ptr %.0.i.i, align 8
  %i.dm = and i64 %i.dl, 2048
  %.not9.i = icmp eq i64 %i.dm, 0
  br i1 %.not9.i, label %can_follow_write_pte.exit.thread, label %pte_write.exit.thread104

pte_write.exit.thread104:                         ; preds = %bb.s, %pte_write.exit.thread, %.thread, %.split, %gup_must_unshare.exit, %pte_write.exit
  %i.dn = phi ptr [ %i.cb, %bb.s ], [ %i.cb, %pte_write.exit.thread ], [ %i.ca, %.thread ], [ %i.cb, %.split ], [ %i.cb, %gup_must_unshare.exit ], [ %i.cb, %pte_write.exit ] ; 7 uses
  %i.do = phi i64 [ %i.cc, %bb.s ], [ %i.cc, %pte_write.exit.thread ], [ %i.bz, %.thread ], [ %i.cc, %.split ], [ %i.cc, %gup_must_unshare.exit ], [ %i.cc, %pte_write.exit ]
  %.057129 = phi ptr [ %.057128, %bb.s ], [ %.057128, %pte_write.exit.thread ], [ %.057, %.thread ], [ %.057128, %.split ], [ %.057128, %gup_must_unshare.exit ], [ %.057128, %pte_write.exit ] ; 2 uses
  %i.dp = getelementptr i8, ptr %i.dn, i64 52     ; 7 uses
  %i.dq = load volatile i32, ptr %i.dp, align 4
  %i.dr = icmp slt i32 %i.dq, 1
  br i1 %i.dr, label %bb.ad, label %.critedge.i, !prof !12

.critedge.i:                                      ; preds = %pte_write.exit.thread104
  %i.ds = and i32 %3, 2
  %.not21.i = icmp eq i32 %i.ds, 0
  br i1 %.not21.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.critedge.i
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock addl $1, $0", "=*m,ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dp, i32 1, ptr elementtype(i32) %i.dp) #9, !srcloc !16
  br label %bb.ae

bb.x:                                             ; preds = %.critedge.i
  %i.dt = and i32 %3, 524288
  %.not22.i = icmp eq i32 %i.dt, 0
  br i1 %.not22.i, label %bb.ae, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.du = load i64, ptr @vmemmap_base, align 8
  %i.dv = sub i64 %i.do, %i.du
  %i.dw = ashr exact i64 %i.dv, 6
  %i.dx = load i64, ptr @zero_page_pfn, align 8
  %i.dy = icmp eq i64 %i.dw, %i.dx
  br i1 %i.dy, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dz = load volatile i64, ptr %i.dn, align 8
  %i.ea = and i64 %i.dz, 64
  %.not.i79 = icmp eq i64 %i.ea, 0
  br i1 %.not.i79, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock addl $1, $0", "=*m,ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dp, i32 1, ptr elementtype(i32) %i.dp) #9, !srcloc !16
  %i.eb = getelementptr i8, ptr %i.dn, i64 92     ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock addl $1, $0", "=*m,ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.eb, i32 1, ptr elementtype(i32) %i.eb) #9, !srcloc !16
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock addl $1, $0", "=*m,ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dp, i32 1024, ptr elementtype(i32) %i.dp) #9, !srcloc !16
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.val.i80 = load i64, ptr %i.dn, align 16
  %i.ec = lshr i64 %.val.i80, 58
  %i.ed = getelementptr [8 x i8], ptr @node_data, i64 %i.ec
  %i.ee = load ptr, ptr %i.ed, align 8
  call void @mod_node_page_state(ptr noundef %i.ee, i32 noundef 34, i64 noundef 1) #10
  br label %bb.ae

bb.ad:                                            ; preds = %pte_write.exit.thread104
  call void asm sideeffect "691: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 691b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 691) #9, !srcloc !13
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 143, i32 2307, i64 16) #9, !srcloc !14
  call void asm sideeffect "692: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 692b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 692) #9, !srcloc !15
  br label %can_follow_write_pte.exit.thread

bb.ae:                                            ; preds = %bb.w, %bb.ac, %bb.x, %bb.y
  %i.ef = and i32 %3, 65536
  %.not70 = icmp eq i32 %i.ef, 0
  br i1 %.not70, label %can_follow_write_pte.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eg = and i64 %.sroa.0.0.copyload.i, 288230376151711808
  %i.eh = icmp ne i64 %i.eg, 0
  %or.cond114 = select i1 %.not63, i1 true, i1 %i.eh
  br i1 %or.cond114, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ei = load volatile i64, ptr %i.dn, align 8
  %i.ej = and i64 %i.ei, 16
  %.not118 = icmp eq i64 %i.ej, 0
  br i1 %.not118, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ek = call zeroext i1 @folio_mark_dirty(ptr noundef %i.dn) #10 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  call void @folio_mark_accessed(ptr noundef %i.dn) #10
  br label %can_follow_write_pte.exit.thread

can_follow_write_pte.exit.thread:                 ; preds = %bb.t, %bb.j, %pte_write.exit.thread.i, %bb.i, %gup_must_unshare.exit, %.split, %bb.m, %can_follow_write_pte.exit, %bb.p, %bb.ad, %bb.ai, %bb.ae
  %.1 = phi ptr [ inttoptr (i64 -31 to ptr), %gup_must_unshare.exit ], [ inttoptr (i64 -12 to ptr), %bb.ad ], [ inttoptr (i64 -17 to ptr), %bb.p ], [ %.057129, %bb.ai ], [ %.057129, %bb.ae ], [ inttoptr (i64 -14 to ptr), %bb.m ], [ null, %can_follow_write_pte.exit ], [ inttoptr (i64 -31 to ptr), %.split ], [ null, %bb.j ], [ null, %bb.i ], [ null, %pte_write.exit.thread.i ], [ inttoptr (i64 -31 to ptr), %bb.t ]
  %i.el = load ptr, ptr %i.a, align 8
  call void @_raw_spin_unlock(ptr noundef %i.el) #10
end_hunk_0
