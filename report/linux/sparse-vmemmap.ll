Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/sparse-vmemmap?download=true
inline.NumInlined: 151
inline.NumDeleted: 96
begin_hunk_0_@vmemmap_populate_compound_pages:bb.a

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @vmemmap_populate(i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local void @sparse_vmemmap_init_nid_early(i32 noundef %0) local_unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  tail call void @hugetlb_vmemmap_init_early(i32 noundef %0) #9
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @hugetlb_vmemmap_init_early(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local void @sparse_vmemmap_init_nid_late(i32 noundef %0) local_unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  tail call void @hugetlb_vmemmap_init_late(i32 noundef %0) #9
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @hugetlb_vmemmap_init_late(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local void @sparse_init_subsection_map(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = add i64 %1, %0
  %i.b = lshr i64 %0, 15                          ; 2 uses
  %i.c = shl i64 %i.a, 17
  %i.d = add i64 %i.c, -131072
  %i.e = ashr i64 %i.d, 32                        ; 2 uses
  %.not23 = icmp ugt i64 %i.b, %i.e
  br i1 %.not23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %__nr_to_section.exit
  %.026 = phi i64 [ %i.v, %__nr_to_section.exit ], [ %0, %bb.a ] ; 3 uses
  %.02125 = phi i64 [ %i.ac, %__nr_to_section.exit ], [ %1, %bb.a ] ; 2 uses
  %.02224 = phi i64 [ %i.ad, %__nr_to_section.exit ], [ %i.b, %bb.a ] ; 3 uses
  %i.f = and i64 %.026, 32767
  %i.g = sub nuw nsw i64 32768, %i.f
  %i.h = tail call i64 @llvm.umin.i64(i64 %.02125, i64 %i.g) ; 2 uses
  %i.i = lshr i64 %.02224, 8                      ; 2 uses
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #15
          to label %bb.b [label %bb.b, label %_static_cpu_has.exit.i], !srcloc !14

bb.b:                                             ; preds = %.lr.ph, %.lr.ph
  br label %_static_cpu_has.exit.i

_static_cpu_has.exit.i:                           ; preds = %bb.b, %.lr.ph
  %i.j = phi i64 [ 131072, %bb.b ], [ 2048, %.lr.ph ]
  %.not.i = icmp samesign ult i64 %i.i, %i.j
  br i1 %.not.i, label %bb.c, label %__nr_to_section.exit, !prof !11

bb.c:                                             ; preds = %_static_cpu_has.exit.i
  %i.k = load ptr, ptr @mem_section, align 8      ; 2 uses
  %.not8.i = icmp eq ptr %i.k, null
  br i1 %.not8.i, label %__nr_to_section.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.i
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not9.i = icmp eq ptr %i.m, null
  br i1 %.not9.i, label %__nr_to_section.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = and i64 %.02224, 255
  %i.o = getelementptr [16 x i8], ptr %i.m, i64 %i.n
  br label %__nr_to_section.exit

__nr_to_section.exit:                             ; preds = %_static_cpu_has.exit.i, %bb.c, %bb.d, %bb.e
  %.0.i = phi ptr [ null, %_static_cpu_has.exit.i ], [ %i.o, %bb.e ], [ null, %bb.d ], [ null, %bb.c ]
  %i.p = getelementptr i8, ptr %.0.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 16
  %i.s = trunc i64 %.026 to i32
  %i.t = lshr i32 %i.s, 9
  %i.u = and i32 %i.t, 63                         ; 2 uses
  %i.v = add i64 %i.h, %.026                      ; 2 uses
  %i.w = trunc i64 %i.v to i32
  %i.x = add i32 %i.w, 32767
  %i.y = lshr i32 %i.x, 9
  %i.z = and i32 %i.y, 63
  %i.aa = sub nsw i32 %i.z, %i.u
  %i.ab = add nsw i32 %i.aa, 1
  tail call void @__bitmap_set(ptr noundef %i.r, i32 noundef range(i32 0, 64) %i.u, i32 noundef range(i32 -62, 65) %i.ab) #9
  %i.ac = sub i64 %.02125, %i.h
  %i.ad = add i64 %.02224, 1                      ; 2 uses
  %.not = icmp ugt i64 %i.ad, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !52

._crit_edge:                                      ; preds = %__nr_to_section.exit, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__alloc_pages_noprof(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @memmap_alloc(i64 noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc noundef ptr @vmemmap_pmd_populate(i64 %.0.val, i64 noundef %0, i32 noundef %1) unnamed_addr #0 section ".init.text" align 16 {
bb.a:
  %.sroa.0.i.i = alloca i64, align 8              ; 4 uses
  %i.a = and i64 %.0.val, 128
  %.not.i.i.i = icmp eq i64 %i.a, 0
  %..i.i.i = select i1 %.not.i.i.i, i64 4503599627366400, i64 4503598553628672
  %i.b = and i64 %..i.i.i, %.0.val
  %i.c = load i64, ptr @page_offset_base, align 8
  %i.d = add i64 %i.c, %i.b
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = lshr i64 %0, 21
  %i.g = and i64 %i.f, 511
  %i.h = getelementptr [8 x i8], ptr %i.e, i64 %i.g ; 4 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, -97
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @vmemmap_alloc_block(i64 noundef 4096, i32 noundef %1) #13 ; 4 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4096) %i.k, i8 0, i64 4096, i1 false)
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = add i64 %i.l, 2147483648
  %i.n = icmp ugt ptr %i.k, inttoptr (i64 -2147483649 to ptr)
  %i.o = load i64, ptr @phys_base, align 8
  %i.p = load i64, ptr @page_offset_base, align 8
  %i.q = sub i64 -2147483648, %i.p
  %i.r = select i1 %i.n, i64 %i.o, i64 %i.q
  %i.s = add i64 %i.m, %i.r
  %i.t = or i64 %i.s, 103
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  store i64 %i.t, ptr %.sroa.0.i.i, align 8
  %.sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i = load volatile i64, ptr %.sroa.0.i.i, align 8
  store volatile i64 %.sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.a, %bb.c
  %.1 = phi ptr [ %i.h, %bb.a ], [ %i.h, %bb.c ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc noundef ptr @vmemmap_pte_populate(ptr nofree noundef nonnull readonly captures(none) %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef captures(address_is_null) %3, i64 noundef range(i64 -144115188075855872, 144115188075855872) %4, i64 noundef range(i64 0, 2) %5) unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %.sroa.0.i.i = alloca i64, align 8              ; 4 uses
  %.sroa.0.i = alloca i64, align 8                ; 3 uses
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = and i64 %.val, 128
  %.not.i.i.i = icmp eq i64 %i.a, 0
  %..i.i.i = select i1 %.not.i.i.i, i64 4503599627366400, i64 4503599625273344
  %i.b = and i64 %..i.i.i, %.val
  %i.c = load i64, ptr @page_offset_base, align 8
  %i.d = add i64 %i.b, %i.c
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = lshr i64 %1, 12
  %i.g = and i64 %i.f, 511
  %i.h = getelementptr [8 x i8], ptr %i.e, i64 %i.g ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %.sroa.0.0.copyload.i = load volatile i64, ptr %i.h, align 8 ; 2 uses
  store volatile i64 %.sroa.0.0.copyload.i, ptr %.sroa.0.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.i = and i64 %.sroa.0.0.copyload.i, -97
  %.not.i.not = icmp eq i64 %i.i, 0
  br i1 %.not.i.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %4, -1
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @vmemmap_alloc_block_buf(i64 noundef 4096, i32 noundef %2, ptr noundef %3) #13 ; 3 uses
  %.not22 = icmp eq ptr %i.k, null
  br i1 %.not22, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = add i64 %i.l, 2147483648
  %i.n = icmp ugt ptr %i.k, inttoptr (i64 -2147483649 to ptr)
  %i.o = load i64, ptr @phys_base, align 8
  %i.p = load i64, ptr @page_offset_base, align 8
  %i.q = sub i64 -2147483648, %i.p
  %i.r = select i1 %i.n, i64 %i.o, i64 %i.q
  %i.s = add i64 %i.m, %i.r
  %i.t = lshr i64 %i.s, 12
  br label %.critedge

bb.e:                                             ; preds = %bb.b
  %.not21 = icmp eq i64 %5, 0
  br i1 %.not21, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load i64, ptr @vmemmap_base, align 8
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr [64 x i8], ptr %i.v, i64 %4 ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %i.y = load volatile i64, ptr %i.x, align 8     ; 2 uses
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = and i64 %i.y, 1
  %i.ab = add nsw i64 %i.aa, -1
  %i.ac = or i64 %i.ab, %i.y
  %i.ad = and i64 %i.ac, %i.z
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 48
  %i.ag = load i32, ptr %i.af, align 16
  %.mask.i.i = and i32 %i.ag, -16777216
  switch i32 %.mask.i.i, label %.critedge12.i [
    i32 -184549376, label %bb.g
    i32 -134217728, label %bb.h
  ], !prof !53

bb.g:                                             ; preds = %bb.f
  tail call void asm sideeffect "448: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 448b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 448) #15, !srcloc !54
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.2, ptr nonnull @.str.6, i32 2092, i32 2307, i64 16) #15, !srcloc !55
  tail call void asm sideeffect "449: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 449b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 449) #15, !srcloc !56
  br label %.critedge

bb.h:                                             ; preds = %bb.f
  tail call void asm sideeffect "450: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 450b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 450) #15, !srcloc !57
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.2, ptr nonnull @.str.6, i32 2094, i32 2307, i64 16) #15, !srcloc !58
  tail call void asm sideeffect "451: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 451b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 451) #15, !srcloc !59
  br label %.critedge

.critedge12.i:                                    ; preds = %bb.f
  %i.ah = getelementptr i8, ptr %i.ae, i64 52     ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ah, ptr elementtype(i32) %i.ah) #15, !srcloc !60
  br label %.critedge

.critedge:                                        ; preds = %.critedge12.i, %bb.h, %bb.g, %bb.e, %bb.d
  %.018 = phi i64 [ %i.t, %bb.d ], [ %4, %bb.e ], [ %4, %bb.g ], [ %4, %bb.h ], [ %4, %.critedge12.i ]
  %i.ai = load i64, ptr @__default_kernel_pte_mask, align 8 ; 3 uses
  %i.aj = and i64 %i.ai, -9223372036854775453     ; 2 uses
  %i.ak = and i64 %i.ai, 66
  %i.al = icmp eq i64 %i.ak, 64
  br i1 %i.al, label %bb.i, label %pfn_pte.exit, !prof !15

bb.i:                                             ; preds = %.critedge
  tail call void asm sideeffect "219: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 219b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 219) #15, !srcloc !61
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.2, ptr nonnull @.str.7, i32 735, i32 2307, i64 16) #15, !srcloc !62
  tail call void asm sideeffect "220: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 220b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 220) #15, !srcloc !63
  br label %pfn_pte.exit

pfn_pte.exit:                                     ; preds = %.critedge, %bb.i
  %i.am = shl i64 %.018, 12
  %.not.i.i.i23 = icmp ne i64 %i.aj, 0
  %i.an = and i64 %i.ai, 1
  %.not2.i.i.i = icmp eq i64 %i.an, 0             ; 2 uses
  %i.ao = and i1 %.not.i.i.i23, %.not2.i.i.i
  %i.ap = sext i1 %i.ao to i64
  %i.aq = xor i64 %i.am, %i.ap
  %i.ar = and i64 %i.aq, 4503599627366400
  %i.as = load i64, ptr @__supported_pte_mask, align 8
  %i.at = select i1 %.not2.i.i.i, i64 -9223372036854775453, i64 %i.as
  %.0.i.i.i = and i64 %i.at, %i.aj
  %i.au = or disjoint i64 %.0.i.i.i, %i.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  store i64 %i.au, ptr %.sroa.0.i.i, align 8
  %.sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i = load volatile i64, ptr %.sroa.0.i.i, align 8
  store volatile i64 %.sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %pfn_pte.exit, %bb.c
  %.1 = phi ptr [ null, %bb.c ], [ %i.h, %pfn_pte.exit ], [ %i.h, %bb.a ]
  ret ptr %.1
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @arch_sync_kernel_mappings(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @__pti_set_user_pgtbl(ptr noundef, i64) local_unnamed_addr #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc ptr @compound_section_tail_page(i64 noundef %0) unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = add i64 %0, -4096                        ; 5 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @init_mm, i64 120), align 8
  %i.c = load i32, ptr @pgdir_shift, align 4
  %i.d = zext nneg i32 %i.c to i64
  %i.e = lshr i64 %i.a, %i.d
  %i.f = and i64 %i.e, 511
  %i.g = getelementptr [8 x i8], ptr %i.b, i64 %i.f ; 2 uses
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #15
          to label %bb.b [label %bb.b, label %.p4d_offset.exit_crit_edge.i], !srcloc !14

.p4d_offset.exit_crit_edge.i:                     ; preds = %bb.a
  %.pre.i = load i64, ptr @page_offset_base, align 8
  br label %pmd_off_k.exit

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 4503599627366400
  %i.j = load i64, ptr @page_offset_base, align 8 ; 2 uses
  %i.k = add i64 %i.j, %i.i
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = lshr i64 %i.a, 39
  %i.n = load i32, ptr @ptrs_per_p4d, align 4
  %i.o = add i32 %i.n, -1
  %i.p = zext i32 %i.o to i64
  %i.q = and i64 %i.m, %i.p
  %i.r = getelementptr [8 x i8], ptr %i.l, i64 %i.q
  br label %pmd_off_k.exit

pmd_off_k.exit:                                   ; preds = %.p4d_offset.exit_crit_edge.i, %bb.b
  %i.s = phi i64 [ %i.j, %bb.b ], [ %.pre.i, %.p4d_offset.exit_crit_edge.i ] ; 3 uses
  %.0.i.i = phi ptr [ %i.r, %bb.b ], [ %i.g, %.p4d_offset.exit_crit_edge.i ]
  %.val.i = load i64, ptr %.0.i.i, align 8
  %i.t = and i64 %.val.i, 4503599627366400
  %i.u = add i64 %i.t, %i.s
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = lshr i64 %i.a, 30
  %i.x = and i64 %i.w, 511
  %i.y = getelementptr [8 x i8], ptr %i.v, i64 %i.x
  %.val4.i = load i64, ptr %i.y, align 8          ; 2 uses
  %i.z = and i64 %.val4.i, 128
  %.not.i.i.i.i = icmp eq i64 %i.z, 0
  %..i.i.i.i = select i1 %.not.i.i.i.i, i64 4503599627366400, i64 4503598553628672
  %i.aa = and i64 %..i.i.i.i, %.val4.i
  %i.ab = add i64 %i.aa, %i.s
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = lshr i64 %i.a, 21
  %i.ae = and i64 %i.ad, 511
  %i.af = getelementptr [8 x i8], ptr %i.ac, i64 %i.ae
  %.val = load i64, ptr %i.af, align 8            ; 2 uses
  %i.ag = and i64 %.val, 128
  %.not.i.i.i = icmp eq i64 %i.ag, 0
  %..i.i.i = select i1 %.not.i.i.i, i64 4503599627366400, i64 4503599625273344
  %i.ah = and i64 %..i.i.i, %.val
  %i.ai = add i64 %i.ah, %i.s
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = lshr i64 %i.a, 12
  %i.al = and i64 %i.ak, 511
  %i.am = getelementptr [8 x i8], ptr %i.aj, i64 %i.al
  ret ptr %i.am
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #8

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { noredzone nounwind "no-builtin-wcslen" }
attributes #10 = { nounwind memory(none) }
attributes #11 = { nounwind memory(read) }
attributes #12 = { noredzone "no-builtin-wcslen" }
attributes #13 = { cold noredzone "no-builtin-wcslen" }
attributes #14 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #15 = { nounwind }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !{!0, !12}
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
!11 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{i64 7582}
!14 = !{i64 2150170923, i64 2150170952, i64 2150170958, i64 2150171154, i64 2150171160, i64 2150171176, i64 2150171192, i64 2150171219, i64 2150171331, i64 2150171340, i64 2150171414, i64 2150171462, i64 2150171510, i64 2150171565, i64 2150171619, i64 2150171674, i64 2150171690, i64 2150171737, i64 2150171848, i64 2150171879, i64 2150171885, i64 2150171907, i64 2150171923, i64 2150170972, i64 2150170974, i64 2150170990, i64 2150171017, i64 2150171117, i64 2150171987, i64 2150172101, i64 2150172149, i64 2150172197, i64 2150172261, i64 2150172318, i64 2150172370, i64 2150172499, i64 2150172714, i64 2150172585, i64 2150172616, i64 2150172622, i64 2150172638, i64 2150172654, i64 2455824, i64 2455864, i64 2150173173, i64 2455902, i64 2455939, i64 2455960, i64 2455980}
!15 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!16 = !{i64 1862246}
!17 = !{i64 2152504533}
!18 = !{i64 2308}
!19 = !{i64 2685}
!20 = !{i64 1857900}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = !{i64 2153033308, i64 2153033347, i64 2153033368, i64 2153033405, i64 2153033428, i64 2153033437}
!24 = !{!"branch_weights", i32 1999, i32 1}
!25 = !{!"branch_weights", i32 1, i32 0}
!26 = distinct !{!26, !12}
!27 = !{i64 9786}
!28 = !{i64 9923}
!29 = !{i64 2157734993, i64 2157734868}
!30 = !{i64 2157735516, i64 2157736584, i64 2157736617, i64 2157736652, i64 2157736668, i64 2157737595, i64 2157737653, i64 2157737702, i64 2157737512, i64 2157736727, i64 2157736759, i64 2157736842}
!31 = !{i64 2157738001, i64 2157737877}
!32 = !{i64 2157740020, i64 2157739895}
!33 = !{i64 2157740543, i64 2157741604, i64 2157741637, i64 2157741672, i64 2157741688, i64 2157742615, i64 2157742673, i64 2157742722, i64 2157742532, i64 2157741747, i64 2157741779, i64 2157741862}
!34 = !{i64 2157743021, i64 2157742897}
!35 = !{i64 6849}
!36 = !{i64 6916}
!37 = !{i64 7132}
!38 = !{i64 2157747334, i64 2157747209}
!39 = !{i64 2157751918, i64 2157753004, i64 2157753037, i64 2157753072, i64 2157753088, i64 2157754015, i64 2157754073, i64 2157754122, i64 2157753932, i64 2157753147, i64 2157753179, i64 2157753262}
!40 = !{i64 2157754421, i64 2157754297}
!41 = distinct !{!41, !12}
!42 = !{i64 10902}
!43 = !{i64 10976}
!44 = !{i64 2157763797, i64 2157763672}
!45 = !{i64 2157764320, i64 2157765443, i64 2157765476, i64 2157765511, i64 2157765527, i64 2157766454, i64 2157766512, i64 2157766561, i64 2157766371, i64 2157765586, i64 2157765618, i64 2157765701}
!46 = !{i64 2157766860, i64 2157766736}
!47 = !{i64 14805}
!48 = distinct !{!48, !12}
!49 = !{i64 13246}
!50 = !{i64 13769}
!51 = !{i64 13932}
!52 = distinct !{!52, !12}
!53 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!54 = !{i64 2155096883, i64 2155096758}
!55 = !{i64 2155097406, i64 2155098466, i64 2155098499, i64 2155098534, i64 2155098550, i64 2155099477, i64 2155099535, i64 2155099584, i64 2155099394, i64 2155098609, i64 2155098641, i64 2155098724}
!56 = !{i64 2155099883, i64 2155099759}
!57 = !{i64 2155101251, i64 2155101126}
!58 = !{i64 2155101774, i64 2155102843, i64 2155102876, i64 2155102911, i64 2155102927, i64 2155103854, i64 2155103912, i64 2155103961, i64 2155103771, i64 2155102986, i64 2155103018, i64 2155103101}
!59 = !{i64 2155104260, i64 2155104136}
!60 = !{i64 2148768096, i64 2148768135, i64 2148768156, i64 2148768193, i64 2148768216, i64 2148768087}
!61 = !{i64 2152940185, i64 2152940060}
!62 = !{i64 2152940708, i64 2152941808, i64 2152941841, i64 2152941876, i64 2152941892, i64 2152942819, i64 2152942877, i64 2152942926, i64 2152942736, i64 2152941951, i64 2152941983, i64 2152942066}
!63 = !{i64 2152943236, i64 2152943112}
end_hunk_0
