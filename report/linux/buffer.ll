Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/buffer?download=true
inline.NumInlined: 782
inline.NumDeleted: 152
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@remove_assoc_queue:bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !81

._crit_edge:                                      ; preds = %bb.g, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @bh_submit(ptr noundef %0, i32 noundef %1, ptr noundef %2) #2 align 16 prefalign(16) {
bb.a:
  tail call fastcc void @__bh_submit(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 0, ptr noundef %2) #16
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @__bh_submit(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #2 align 16 {
buffer_locked.exit:
  %i.a = and i32 %1, 255
  %i.b = load volatile i64, ptr %0, align 8
  %i.c = and i64 %i.b, 4
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.a, label %buffer_mapped.exit, !prof !21

bb.a:                                             ; preds = %buffer_locked.exit
  tail call void asm sideeffect "939: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 939b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 939) #13, !srcloc !82
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 1188, i32 0, i64 16) #13, !srcloc !83
  unreachable

buffer_mapped.exit:                               ; preds = %buffer_locked.exit
  %i.d = load volatile i64, ptr %0, align 8
  %i.e = and i64 %i.d, 16
  %.not36 = icmp eq i64 %i.e, 0
  br i1 %.not36, label %bb.b, label %buffer_delay.exit, !prof !21

bb.b:                                             ; preds = %buffer_mapped.exit
  tail call void asm sideeffect "940: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 940b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 940) #13, !srcloc !84
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 1189, i32 0, i64 16) #13, !srcloc !85
  unreachable

buffer_delay.exit:                                ; preds = %buffer_mapped.exit
  %i.f = load volatile i64, ptr %0, align 8
  %i.g = and i64 %i.f, 256
  %.not37 = icmp eq i64 %i.g, 0
  br i1 %.not37, label %buffer_unwritten.exit, label %bb.c, !prof !27

bb.c:                                             ; preds = %buffer_delay.exit
  tail call void asm sideeffect "941: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 941b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 941) #13, !srcloc !86
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 1190, i32 0, i64 16) #13, !srcloc !87
  unreachable

buffer_unwritten.exit:                            ; preds = %buffer_delay.exit
  %i.h = load volatile i64, ptr %0, align 8
  %i.i = and i64 %i.h, 2048
  %.not38 = icmp eq i64 %i.i, 0
  br i1 %.not38, label %bb.e, label %bb.d, !prof !27

bb.d:                                             ; preds = %buffer_unwritten.exit
  tail call void asm sideeffect "942: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 942b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 942) #13, !srcloc !88
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 1191, i32 0, i64 16) #13, !srcloc !89
  unreachable

bb.e:                                             ; preds = %buffer_unwritten.exit
  %i.j = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 3, ptr elementtype(i64) %0) #13, !srcloc !18 ; 2 uses
  %i.k = icmp ult i8 %i.j, 2
  tail call void @llvm.assume(i1 %i.k)
  %i.l = trunc nuw i8 %i.j to i1
  %i.m = icmp eq i32 %i.a, 1
  %or.cond = and i1 %i.m, %i.l
  br i1 %or.cond, label %bb.f, label %buffer_meta.exit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %0, i64 1          ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.n, i32 -5, ptr elementtype(i8) %i.n) #13, !srcloc !20
  br label %buffer_meta.exit

buffer_meta.exit:                                 ; preds = %bb.e, %bb.f
  %i.o = load volatile i64, ptr %0, align 8
  %i.p = trunc i64 %i.o to i32
  %i.q = lshr i32 %i.p, 1
  %i.r = and i32 %i.q, 4096
  %i.s = load volatile i64, ptr %0, align 8
  %.pre = trunc i64 %i.s to i32
  %.pre57 = lshr i32 %.pre, 1
  %i.t = and i32 %.pre57, 8192
  %i.u = or disjoint i32 %i.r, %i.t
  %.1 = or i32 %i.u, %1
  %i.v = getelementptr i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call ptr @bio_alloc_bioset(ptr noundef %i.w, i16 noundef zeroext 1, i32 noundef %.1, i32 noundef 3072, ptr noundef nonnull @fs_bio_set) #14 ; 7 uses
  %i.y = getelementptr i8, ptr %0, i64 24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = lshr i64 %i.ab, 9
  %i.ad = mul i64 %i.ac, %i.z
  %i.ae = getelementptr i8, ptr %i.x, i64 40
  store i64 %i.ad, ptr %i.ae, align 8
  %i.af = getelementptr i8, ptr %i.x, i64 24
  store i8 %2, ptr %i.af, align 8
  %i.ag = getelementptr i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = load i64, ptr %i.aa, align 8
  %i.aj = getelementptr i8, ptr %0, i64 40
  %.val56 = load ptr, ptr %i.aj, align 8
  %i.ak = load volatile i64, ptr %i.ah, align 8
  %i.al = and i64 %i.ak, 64
  %.not.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i, label %bh_offset.exit, label %bb.g

bb.g:                                             ; preds = %buffer_meta.exit
  %i.am = getelementptr i8, ptr %i.ah, i64 64
  %.val.i.i.i = load i64, ptr %i.am, align 16
  %i.an = and i64 %.val.i.i.i, 255
  br label %bh_offset.exit

bh_offset.exit:                                   ; preds = %buffer_meta.exit, %bb.g
  %.0.i.i.i = phi i64 [ %i.an, %bb.g ], [ 0, %buffer_meta.exit ]
  %i.ao = ptrtoint ptr %.val56 to i64
  %i.ap = shl i64 4096, %.0.i.i.i
  %i.aq = add i64 %i.ap, -1
  %i.ar = and i64 %i.aq, %i.ao
  tail call void @bio_add_folio_nofail(ptr noundef %i.x, ptr noundef %i.ah, i64 noundef %i.ai, i64 noundef %i.ar) #14
  %i.as = getelementptr i8, ptr %i.x, i64 64
  store ptr %3, ptr %i.as, align 8
  %i.at = getelementptr i8, ptr %i.x, i64 72
  store ptr %0, ptr %i.at, align 8
  tail call void @guard_bio_eod(ptr noundef %i.x) #14
  tail call void @submit_bio(ptr noundef %i.x) #14
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @__find_get_block(ptr noundef %0, i64 noundef %1, i32 noundef %2) #2 align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc ptr @find_get_block_common(ptr noundef %0, i64 noundef %1, i32 noundef %2, i1 noundef zeroext true) #16, !srcloc !90
  ret ptr %i.a
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc ptr @find_get_block_common(ptr noundef %0, i64 noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !91
  %i.b = and i64 %i.a, 512
  %.not.i.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.not.i.i, label %bb.b, label %check_irqs_on.exit.i, !prof !21

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "944: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 944b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 944) #13, !srcloc !92
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 1292, i32 0, i64 16) #13, !srcloc !93
  unreachable

check_irqs_on.exit.i:                             ; preds = %bb.a
  tail call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !94
  %i.c = tail call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #18, !srcloc !95
  %i.d = tail call zeroext i1 @housekeeping_test_cpu(i32 noundef %i.c, i32 noundef 1) #14
  br i1 %i.d, label %.preheader48.i, label %lookup_bh_lru.exit.thread

.preheader48.i:                                   ; preds = %check_irqs_on.exit.i
  %i.e = zext i32 %2 to i64                       ; 16 uses
  %i.f = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) @bh_lrus) #18, !srcloc !96 ; 2 uses
  %i.g = inttoptr i64 %i.f to ptr                 ; 4 uses
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.g, label %bb.c

lookup_bh_lru.exit.thread:                        ; preds = %check_irqs_on.exit.i
  tail call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !97
  br label %bb.bo

bb.c:                                             ; preds = %.preheader48.i
  %i.h = getelementptr i8, ptr %i.g, i64 24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp eq i64 %i.i, %1
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.g, i64 48
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp eq ptr %i.l, %0
  br i1 %i.m, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %i.g, i64 32
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp eq i64 %i.o, %i.e
  br i1 %i.p, label %lookup_bh_lru.exit, label %bb.g

.preheader.preheader.i:                           ; preds = %bb.bn, %bb.bj, %bb.bf, %bb.bb, %bb.ax, %bb.at, %bb.ap, %bb.al, %bb.ah, %bb.ad, %bb.z, %bb.v, %bb.r, %bb.n, %bb.j
  %.03851.lcssa.wide.ph.i = phi i64 [ 15, %bb.bn ], [ 14, %bb.bj ], [ 13, %bb.bf ], [ 12, %bb.bb ], [ 11, %bb.ax ], [ 10, %bb.at ], [ 9, %bb.ap ], [ 8, %bb.al ], [ 7, %bb.ah ], [ 6, %bb.ad ], [ 5, %bb.z ], [ 4, %bb.v ], [ 3, %bb.r ], [ 2, %bb.n ], [ 1, %bb.j ]
  %.lcssa54.ph.i = phi i64 [ %i.fs, %bb.bn ], [ %i.fh, %bb.bj ], [ %i.ew, %bb.bf ], [ %i.el, %bb.bb ], [ %i.ea, %bb.ax ], [ %i.dp, %bb.at ], [ %i.de, %bb.ap ], [ %i.ct, %bb.al ], [ %i.ci, %bb.ah ], [ %i.bx, %bb.ad ], [ %i.bm, %bb.z ], [ %i.bb, %bb.v ], [ %i.aq, %bb.r ], [ %i.af, %bb.n ], [ %i.u, %bb.j ]
  %.lcssa.ph.i = phi ptr [ %i.ft, %bb.bn ], [ %i.fi, %bb.bj ], [ %i.ex, %bb.bf ], [ %i.em, %bb.bb ], [ %i.eb, %bb.ax ], [ %i.dq, %bb.at ], [ %i.df, %bb.ap ], [ %i.cu, %bb.al ], [ %i.cj, %bb.ah ], [ %i.by, %bb.ad ], [ %i.bn, %bb.z ], [ %i.bc, %bb.v ], [ %i.ar, %bb.r ], [ %i.ag, %bb.n ], [ %i.v, %bb.j ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ %.03851.lcssa.wide.ph.i, %.preheader.preheader.i ], [ %indvars.iv.next.i, %.preheader.i ] ; 2 uses
  %i.q = getelementptr [8 x i8], ptr @bh_lrus, i64 %indvars.iv.i ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 -8
  %i.s = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) %i.r) #18, !srcloc !98
  tail call void asm "movq $1, %gs:$0", "=*m,re,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) %i.q, i64 %i.s) #13, !srcloc !99
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.t = icmp eq i64 %indvars.iv.next.i, 0
  br i1 %i.t, label %bb.f, label %.preheader.i, !llvm.loop !100

bb.f:                                             ; preds = %.preheader.i
  tail call void asm "movq $1, %gs:$0", "=*m,re,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) @bh_lrus, i64 %.lcssa54.ph.i) #13, !srcloc !101
  br label %lookup_bh_lru.exit

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %.preheader48.i
  %i.u = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) getelementptr inbounds nuw (i8, ptr @bh_lrus, i64 8)) #18, !srcloc !96 ; 3 uses
  %i.v = inttoptr i64 %i.u to ptr                 ; 4 uses
  %.not.1.i = icmp eq i64 %i.u, 0
  br i1 %.not.1.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr i8, ptr %i.v, i64 24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = icmp eq i64 %i.x, %1
  br i1 %i.y, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr i8, ptr %i.v, i64 48
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp eq ptr %i.aa, %0
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr i8, ptr %i.v, i64 32
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = icmp eq i64 %i.ad, %i.e
  br i1 %i.ae, label %.preheader.preheader.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %i.af = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) getelementptr inbounds nuw (i8, ptr @bh_lrus, i64 16)) #18, !srcloc !96 ; 3 uses
  %i.ag = inttoptr i64 %i.af to ptr               ; 4 uses
  %.not.2.i = icmp eq i64 %i.af, 0
  br i1 %.not.2.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr i8, ptr %i.ag, i64 24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = icmp eq i64 %i.ai, %1
  br i1 %i.aj, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr i8, ptr %i.ag, i64 48
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = icmp eq ptr %i.al, %0
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr i8, ptr %i.ag, i64 32
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = icmp eq i64 %i.ao, %i.e
  br i1 %i.ap, label %.preheader.preheader.i, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %i.aq = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) getelementptr inbounds nuw (i8, ptr @bh_lrus, i64 24)) #18, !srcloc !96 ; 3 uses
  %i.ar = inttoptr i64 %i.aq to ptr               ; 4 uses
  %.not.3.i = icmp eq i64 %i.aq, 0
  br i1 %.not.3.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr i8, ptr %i.ar, i64 24
  %i.at = load i64, ptr %i.as, align 8
  %i.au = icmp eq i64 %i.at, %1
  br i1 %i.au, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.av = getelementptr i8, ptr %i.ar, i64 48
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = icmp eq ptr %i.aw, %0
  br i1 %i.ax, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr i8, ptr %i.ar, i64 32
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = icmp eq i64 %i.az, %i.e
  br i1 %i.ba, label %.preheader.preheader.i, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %i.bb = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) getelementptr inbounds nuw (i8, ptr @bh_lrus, i64 32)) #18, !srcloc !96 ; 3 uses
  %i.bc = inttoptr i64 %i.bb to ptr               ; 4 uses
  %.not.4.i = icmp eq i64 %i.bb, 0
  br i1 %.not.4.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bd = getelementptr i8, ptr %i.bc, i64 24
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = icmp eq i64 %i.be, %1
  br i1 %i.bf, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bg = getelementptr i8, ptr %i.bc, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = icmp eq ptr %i.bh, %0
  br i1 %i.bi, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bj = getelementptr i8, ptr %i.bc, i64 32
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = icmp eq i64 %i.bk, %i.e
  br i1 %i.bl, label %.preheader.preheader.i, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %i.bm = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) getelementptr inbounds nuw (i8, ptr @bh_lrus, i64 40)) #18, !srcloc !96 ; 3 uses
  %i.bn = inttoptr i64 %i.bm to ptr               ; 4 uses
  %.not.5.i = icmp eq i64 %i.bm, 0
  br i1 %.not.5.i, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bo = getelementptr i8, ptr %i.bn, i64 24
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = icmp eq i64 %i.bp, %1
  br i1 %i.bq, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.br = getelementptr i8, ptr %i.bn, i64 48
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = icmp eq ptr %i.bs, %0
  br i1 %i.bt, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bu = getelementptr i8, ptr %i.bn, i64 32
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = icmp eq i64 %i.bv, %i.e
  br i1 %i.bw, label %.preheader.preheader.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.w
  %i.bx = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) getelementptr inbounds nuw (i8, ptr @bh_lrus, i64 48)) #18, !srcloc !96 ; 3 uses
  %i.by = inttoptr i64 %i.bx to ptr               ; 4 uses
  %.not.6.i = icmp eq i64 %i.bx, 0
  br i1 %.not.6.i, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bz = getelementptr i8, ptr %i.by, i64 24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = icmp eq i64 %i.ca, %1
  br i1 %i.cb, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.cc = getelementptr i8, ptr %i.by, i64 48
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = icmp eq ptr %i.cd, %0
  br i1 %i.ce, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cf = getelementptr i8, ptr %i.by, i64 32
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = icmp eq i64 %i.cg, %i.e
  br i1 %i.ch, label %.preheader.preheader.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %i.ci = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) getelementptr inbounds nuw (i8, ptr @bh_lrus, i64 56)) #18, !srcloc !96 ; 3 uses
  %i.cj = inttoptr i64 %i.ci to ptr               ; 4 uses
  %.not.7.i = icmp eq i64 %i.ci, 0
  br i1 %.not.7.i, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ck = getelementptr i8, ptr %i.cj, i64 24
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = icmp eq i64 %i.cl, %1
  br i1 %i.cm, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.cn = getelementptr i8, ptr %i.cj, i64 48
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = icmp eq ptr %i.co, %0
  br i1 %i.cp, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cq = getelementptr i8, ptr %i.cj, i64 32
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = icmp eq i64 %i.cr, %i.e
  br i1 %i.cs, label %.preheader.preheader.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae
  %i.ct = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) getelementptr inbounds nuw (i8, ptr @bh_lrus, i64 64)) #18, !srcloc !96 ; 3 uses
  %i.cu = inttoptr i64 %i.ct to ptr               ; 4 uses
  %.not.8.i = icmp eq i64 %i.ct, 0
  br i1 %.not.8.i, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cv = getelementptr i8, ptr %i.cu, i64 24
  %i.cw = load i64, ptr %i.cv, align 8
  %i.cx = icmp eq i64 %i.cw, %1
  br i1 %i.cx, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.cy = getelementptr i8, ptr %i.cu, i64 48
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = icmp eq ptr %i.cz, %0
  br i1 %i.da, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.db = getelementptr i8, ptr %i.cu, i64 32
  %i.dc = load i64, ptr %i.db, align 8
  %i.dd = icmp eq i64 %i.dc, %i.e
  br i1 %i.dd, label %.preheader.preheader.i, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai
  %i.de = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) getelementptr inbounds nuw (i8, ptr @bh_lrus, i64 72)) #18, !srcloc !96 ; 3 uses
end_hunk_0
