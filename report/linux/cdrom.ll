Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/cdrom?download=true
inline.NumInlined: 230
inline.NumDeleted: 93
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@register_cdrom:bb.a
  %i.x = load i8, ptr @lockdoor, align 1, !range !17, !noundef !18
  %i.y = zext nneg i8 %i.x to i32
  store i32 %i.y, ptr getelementptr inbounds nuw (i8, ptr @cdrom_sysctl_settings, i64 1012), align 4
  %i.z = load i8, ptr @check_media_type, align 1, !range !17, !noundef !18
  %i.aa = zext nneg i8 %i.z to i32
  store i32 %i.aa, ptr getelementptr inbounds nuw (i8, ptr @cdrom_sysctl_settings, i64 1016), align 4
  br label %cdrom_sysctl_register.exit

cdrom_sysctl_register.exit:                       ; preds = %arch_atomic_try_cmpxchg.exit.i, %bb.e, %bb.d, %bb.c
  %i.ab = getelementptr i8, ptr %1, i64 24
  store ptr %0, ptr %i.ab, align 8
  %i.ac = getelementptr i8, ptr %0, i64 504
  store ptr %1, ptr %i.ac, align 8
  %i.ad = getelementptr i8, ptr %i.a, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.f, label %bb.h

bb.f:                                             ; preds = %cdrom_sysctl_register.exit
  %i.ag = getelementptr i8, ptr %i.a, i64 104
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = and i32 %i.ah, 2048
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %bb.h, label %bb.g, !prof !15

bb.g:                                             ; preds = %bb.f
  tail call void asm sideeffect "563: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 563b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 563) #18, !srcloc !22
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 604, i32 2307, i64 16) #18, !srcloc !23
  tail call void asm sideeffect "564: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 564b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 564) #18, !srcloc !24
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %cdrom_sysctl_register.exit
  %i.aj = getelementptr i8, ptr %i.a, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr i8, ptr %i.a, i64 104
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = and i32 %i.an, 144
  %.not74 = icmp eq i32 %i.ao, 0
  br i1 %.not74, label %bb.k, label %bb.j, !prof !15

bb.j:                                             ; preds = %bb.i
  tail call void asm sideeffect "565: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 565b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 565) #18, !srcloc !25
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 606, i32 2307, i64 16) #18, !srcloc !26
  tail call void asm sideeffect "566: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 566b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 566) #18, !srcloc !27
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %i.ap = getelementptr i8, ptr %i.a, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr i8, ptr %i.a, i64 104
  %i.at = load i32, ptr %i.as, align 8
  %i.au = and i32 %i.at, 3
  %.not75 = icmp eq i32 %i.au, 0
  br i1 %.not75, label %bb.n, label %bb.m, !prof !15

bb.m:                                             ; preds = %bb.l
  tail call void asm sideeffect "567: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 567b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 567) #18, !srcloc !28
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 607, i32 2307, i64 16) #18, !srcloc !29
  tail call void asm sideeffect "568: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 568b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 568) #18, !srcloc !30
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %i.av = getelementptr i8, ptr %i.a, i64 40
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr i8, ptr %i.a, i64 104
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = and i32 %i.az, 4
  %.not76 = icmp eq i32 %i.ba, 0
  br i1 %.not76, label %bb.q, label %bb.p, !prof !15

bb.p:                                             ; preds = %bb.o
  tail call void asm sideeffect "569: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 569b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 569) #18, !srcloc !31
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 608, i32 2307, i64 16) #18, !srcloc !32
  tail call void asm sideeffect "570: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 570b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 570) #18, !srcloc !33
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %i.bb = getelementptr i8, ptr %i.a, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr i8, ptr %i.a, i64 104
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = and i32 %i.bf, 8
  %.not77 = icmp eq i32 %i.bg, 0
  br i1 %.not77, label %bb.t, label %bb.s, !prof !15

bb.s:                                             ; preds = %bb.r
  tail call void asm sideeffect "571: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 571b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 571) #18, !srcloc !34
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 609, i32 2307, i64 16) #18, !srcloc !35
  tail call void asm sideeffect "572: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 572b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 572) #18, !srcloc !36
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q
  %i.bh = getelementptr i8, ptr %i.a, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bk = getelementptr i8, ptr %i.a, i64 104
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = and i32 %i.bl, 32
  %.not78 = icmp eq i32 %i.bm, 0
  br i1 %.not78, label %bb.w, label %bb.v, !prof !15

bb.v:                                             ; preds = %bb.u
  tail call void asm sideeffect "573: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 573b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 573) #18, !srcloc !37
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 610, i32 2307, i64 16) #18, !srcloc !38
  tail call void asm sideeffect "574: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 574b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 574) #18, !srcloc !39
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.t
  %i.bn = getelementptr i8, ptr %i.a, i64 64
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.bq = getelementptr i8, ptr %i.a, i64 104
  %i.br = load i32, ptr %i.bq, align 8
  %i.bs = and i32 %i.br, 64
  %.not79 = icmp eq i32 %i.bs, 0
  br i1 %.not79, label %bb.z, label %bb.y, !prof !15

bb.y:                                             ; preds = %bb.x
  tail call void asm sideeffect "575: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 575b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 575) #18, !srcloc !40
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 611, i32 2307, i64 16) #18, !srcloc !41
  tail call void asm sideeffect "576: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 576b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 576) #18, !srcloc !42
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.w
  %i.bt = getelementptr i8, ptr %i.a, i64 72
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.bw = getelementptr i8, ptr %i.a, i64 104
  %i.bx = load i32, ptr %i.bw, align 8
  %i.by = and i32 %i.bx, 512
  %.not80 = icmp eq i32 %i.by, 0
  br i1 %.not80, label %bb.ac, label %bb.ab, !prof !15

bb.ab:                                            ; preds = %bb.aa
  tail call void asm sideeffect "577: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 577b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 577) #18, !srcloc !43
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 612, i32 2307, i64 16) #18, !srcloc !44
  tail call void asm sideeffect "578: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 578b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 578) #18, !srcloc !45
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.z
  %i.bz = getelementptr i8, ptr %i.a, i64 88      ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.cc = getelementptr i8, ptr %i.a, i64 104
  %i.cd = load i32, ptr %i.cc, align 8
  %i.ce = and i32 %i.cd, 4096
  %.not81 = icmp eq i32 %i.ce, 0
  br i1 %.not81, label %bb.af, label %bb.ae, !prof !15

bb.ae:                                            ; preds = %bb.ad
  tail call void asm sideeffect "579: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 579b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 579) #18, !srcloc !46
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 613, i32 2307, i64 16) #18, !srcloc !47
  tail call void asm sideeffect "580: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 580b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 580) #18, !srcloc !48
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.ac
  %i.cf = getelementptr i8, ptr %1, i64 52        ; 9 uses
  store i32 4, ptr %i.cf, align 4
  %i.cg = tail call i64 @ktime_get() #19
  %i.ch = sdiv i64 %i.cg, 1000000
  %i.ci = getelementptr i8, ptr %1, i64 112
  store i64 %i.ch, ptr %i.ci, align 8
  %i.cj = load i8, ptr @autoclose, align 1, !range !17, !noundef !18
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.cl = load ptr, ptr %1, align 8
  %i.cm = getelementptr i8, ptr %i.cl, i64 104
  %i.cn = load i32, ptr %i.cm, align 8
  %i.co = getelementptr i8, ptr %1, i64 40
  %i.cp = load i32, ptr %i.co, align 8
  %2 = xor i32 %i.cp, -1
  %i.cq = and i32 %i.cn, 1
  %3 = and i32 %i.cq, %2
  %.not82 = icmp eq i32 %3, 0
  br i1 %.not82, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cr = load i32, ptr %i.cf, align 4
  %i.cs = or i32 %i.cr, 1
  store i32 %i.cs, ptr %i.cf, align 4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %i.ct = load i8, ptr @autoeject, align 1, !range !17, !noundef !18
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.cv = load ptr, ptr %1, align 8
  %i.cw = getelementptr i8, ptr %i.cv, i64 104
  %i.cx = load i32, ptr %i.cw, align 8
  %i.cy = getelementptr i8, ptr %1, i64 40
  %i.cz = load i32, ptr %i.cy, align 8
  %i.da = xor i32 %i.cz, -1
  %i.db = and i32 %i.cx, 2
  %i.dc = and i32 %i.db, %i.da
  %.not83 = icmp eq i32 %i.dc, 0
  br i1 %.not83, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dd = load i32, ptr %i.cf, align 4
  %i.de = or i32 %i.dd, 2
  store i32 %i.de, ptr %i.cf, align 4
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %i.df = load i8, ptr @lockdoor, align 1, !range !17, !noundef !18
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dh = load i32, ptr %i.cf, align 4
  %i.di = or i32 %i.dh, 8
  store i32 %i.di, ptr %i.cf, align 4
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.dj = load i8, ptr @check_media_type, align 1, !range !17, !noundef !18
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dl = load i32, ptr %i.cf, align 4
  %i.dm = or i32 %i.dl, 16
  store i32 %i.dm, ptr %i.cf, align 4
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.dn = load ptr, ptr %1, align 8               ; 2 uses
  %i.do = getelementptr i8, ptr %i.dn, i64 96
  %i.dp = load ptr, ptr %i.do, align 8
  %.not84 = icmp eq ptr %i.dp, null
  %spec.select = select i1 %.not84, i32 0, i32 2
  %i.dq = getelementptr i8, ptr %1, i64 92
  store i32 %spec.select, ptr %i.dq, align 4
  %i.dr = load ptr, ptr %i.bz, align 8
  %.not85 = icmp eq ptr %i.dr, null
  br i1 %.not85, label %bb.aq, label %bb.ar, !prof !49

bb.aq:                                            ; preds = %bb.ap
  tail call void asm sideeffect "581: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 581b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 581) #18, !srcloc !50
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 632, i32 2305, i64 16) #18, !srcloc !51
  tail call void asm sideeffect "582: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 582b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 582) #18, !srcloc !52
  %.pre = load ptr, ptr %1, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.ds = phi ptr [ %.pre, %bb.aq ], [ %i.dn, %bb.ap ]
  %i.dt = getelementptr i8, ptr %i.ds, i64 104
  %i.du = load i32, ptr %i.dt, align 8
  %i.dv = getelementptr i8, ptr %1, i64 40
  %i.dw = load i32, ptr %i.dv, align 8
  %i.dx = xor i32 %i.dw, -1
  %i.dy = and i32 %i.du, 3293184
  %i.dz = and i32 %i.dy, %i.dx
  %.not86 = icmp eq i32 %i.dz, 0
  tail call void @set_disk_ro(ptr noundef %0, i1 noundef zeroext %.not86) #19
  tail call void @mutex_lock(ptr noundef nonnull @cdrom_mutex) #19
  %i.ea = getelementptr i8, ptr %1, i64 8         ; 3 uses
  %i.eb = load ptr, ptr @cdrom_list, align 8      ; 2 uses
  %i.ec = getelementptr i8, ptr %i.eb, i64 8
  store ptr %i.ea, ptr %i.ec, align 8
  store ptr %i.eb, ptr %i.ea, align 8
  %i.ed = getelementptr i8, ptr %1, i64 16
  store ptr @cdrom_list, ptr %i.ed, align 8
  store volatile ptr %i.ea, ptr @cdrom_list, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @cdrom_mutex) #19
  br label %bb.as

bb.as:                                            ; preds = %bb.a, %bb.b, %bb.ar
  %.0 = phi i32 [ 0, %bb.ar ], [ -22, %bb.b ], [ -22, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @set_disk_ro(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @unregister_cdrom(ptr nofree noundef captures(none) %0) #1 align 16 prefalign(16) {
bb.a:
  tail call void @mutex_lock(ptr noundef nonnull @cdrom_mutex) #19
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 8
  store ptr %i.c, ptr %i.e, align 8
  store volatile ptr %i.d, ptr %i.c, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %i.a, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.b, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @cdrom_mutex) #19
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 2) i32 @cdrom_get_media_event(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) #1 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.packet_command, align 8     ; 13 uses
  %i.a = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %2, i8 0, i64 64, i1 false)
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 8, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 7000, ptr %i.e, align 8
  store i8 74, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 1, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 16, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 8, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 1, ptr %i.i, align 4
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 88
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = call i32 %i.l(ptr noundef %0, ptr noundef nonnull %2) #19
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.n = load i16, ptr %i.a, align 8
  %i.o = call i16 @llvm.bswap.i16(i16 %i.n)
  %i.p = icmp ult i16 %i.o, 4
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.r = load i8, ptr %i.q, align 2
  %i.s = and i8 %i.r, -121
  %or.cond = icmp eq i8 %i.s, 4
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.u = load i32, ptr %i.t, align 4
  store i32 %i.u, ptr %1, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ 1, %bb.a ], [ 1, %bb.b ], [ 1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

end_hunk_0
begin_hunk_1_@cdrom_probe_write_features:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 7000, ptr %i.g, align 8
  store i8 70, ptr %3, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 3
  store i8 40, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 16, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 1, ptr %i.j, align 4
  %i.k = load ptr, ptr %0, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 88
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = call i32 %i.m(ptr noundef %0, ptr noundef nonnull %3) #19, !inline_history !53
  %.not.i = icmp eq i32 %i.n, 0
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.p = load i16, ptr %i.o, align 8
  %.not12.i = icmp eq i16 %i.p, 10240
  %or.cond = select i1 %.not.i, i1 %.not12.i, i1 false
  br i1 %or.cond, label %bb.b, label %cdrom_is_mrw.exit

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.r = load i8, ptr %i.q, align 4
  %i.s = and i8 %i.r, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.t, i8 0, i64 56, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.b, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store i32 16, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 1000, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 1, ptr %i.y, align 4
  %i.z = load ptr, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %2, i8 0, i64 12, i1 false)
  store i8 90, ptr %2, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  store i8 3, ptr %i.aa, align 2
  store i8 16, ptr %i.t, align 8
  store i8 2, ptr %i.w, align 8
  %i.ab = getelementptr i8, ptr %i.z, i64 88
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call i32 %i.ac(ptr noundef %0, ptr noundef nonnull %2) #19, !inline_history !54
  %.not.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i, label %cdrom_mrw_probe_pc.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.af = load ptr, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %2, i8 0, i64 12, i1 false)
  store i8 90, ptr %2, align 8
  store i8 44, ptr %i.aa, align 2
  %i.ag = load i32, ptr %i.v, align 8             ; 2 uses
  %i.ah = lshr i32 %i.ag, 8
  %i.ai = trunc i32 %i.ah to i8
  store i8 %i.ai, ptr %i.ae, align 1
  %i.aj = trunc i32 %i.ag to i8
  store i8 %i.aj, ptr %i.t, align 8
  store i8 2, ptr %i.w, align 8
  %i.ak = getelementptr i8, ptr %i.af, i64 88
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call i32 %i.al(ptr noundef %0, ptr noundef nonnull %2) #19, !inline_history !54
  %.not4.i.i = icmp eq i32 %i.am, 0
  br i1 %.not4.i.i, label %cdrom_mrw_probe_pc.exit.thread.i, label %bb.d

cdrom_mrw_probe_pc.exit.thread.i:                 ; preds = %bb.c, %bb.b
  %.sink.i.i = phi i32 [ 3, %bb.b ], [ 44, %bb.c ]
  %i.an = getelementptr i8, ptr %0, i64 100
  store i32 %.sink.i.i, ptr %i.an, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.ao = icmp eq i8 %i.s, 0
  %i.ap = select i1 %i.ao, i32 1048576, i32 0
  br label %cdrom_is_mrw.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %cdrom_is_mrw.exit

cdrom_is_mrw.exit:                                ; preds = %bb.a, %cdrom_mrw_probe_pc.exit.thread.i, %bb.d
  %.017 = phi i32 [ %i.ap, %cdrom_mrw_probe_pc.exit.thread.i ], [ 1048576, %bb.d ], [ 1048576, %bb.a ]
  %.0.i = phi i32 [ 0, %cdrom_mrw_probe_pc.exit.thread.i ], [ 524288, %bb.d ], [ 524288, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.aq = load ptr, ptr %0, align 8               ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 104
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = getelementptr i8, ptr %0, i64 40        ; 3 uses
  %i.au = load i32, ptr %i.at, align 8
  %i.av = xor i32 %i.au, -1
  %i.aw = and i32 %i.as, 262144
  %i.ax = and i32 %i.aw, %i.av
  %.not10 = icmp eq i32 %i.ax, 0
  br i1 %.not10, label %bb.e, label %cdrom_is_random_writable.exit

bb.e:                                             ; preds = %cdrom_is_mrw.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %1, i8 0, i64 64, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.a, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 24, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 2, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 7000, ptr %i.bb, align 8
  store i8 70, ptr %1, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 32, ptr %i.bc, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 24, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 1, ptr %i.be, align 4
  %i.bf = getelementptr i8, ptr %i.aq, i64 88
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = call i32 %i.bg(ptr noundef %0, ptr noundef nonnull %1) #19, !inline_history !55
  %.not.i.i15 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i15, label %bb.f, label %cdrom_get_random_writable.exit.i

cdrom_get_random_writable.exit.i:                 ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %cdrom_is_random_writable.exit

bb.f:                                             ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.0.0.copyload.i = load i16, ptr %i.bi, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %.not = icmp eq i16 %.sroa.0.0.copyload.i, 8192
  %i.bj = select i1 %.not, i32 0, i32 2097152
  br label %cdrom_is_random_writable.exit

cdrom_is_random_writable.exit:                    ; preds = %bb.f, %cdrom_get_random_writable.exit.i, %cdrom_is_mrw.exit
  %.0 = phi i32 [ 0, %cdrom_is_mrw.exit ], [ 2097152, %cdrom_get_random_writable.exit.i ], [ %i.bj, %bb.f ]
  %i.bk = load i32, ptr %i.at, align 8
  %i.bl = and i32 %i.bk, -3670017
  %storemerge = or disjoint i32 %i.bl, %.0.i
  %storemerge12 = or disjoint i32 %.0, %.017
  %storemerge14 = or disjoint i32 %storemerge12, %storemerge
  store i32 %storemerge14, ptr %i.at, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @cdrom_open(ptr noundef %0, i32 noundef %1) #1 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.packet_command, align 8     ; 19 uses
  %i.a = alloca [255 x i8], align 16              ; 5 uses
  %3 = alloca %struct.packet_command, align 8     ; 13 uses
  %i.b = alloca [24 x i8], align 16               ; 7 uses
  %4 = alloca %struct.packet_command, align 8     ; 12 uses
  %i.c = alloca [16 x i8], align 16               ; 5 uses
  %5 = alloca %struct.packet_command, align 8     ; 12 uses
  %6 = alloca %struct.disc_information, align 4   ; 6 uses
  %7 = alloca %struct.packet_command, align 8     ; 11 uses
  %i.d = alloca [32 x i8], align 16               ; 6 uses
  %8 = alloca %struct.cdrom_tochdr, align 2       ; 8 uses
  %9 = alloca %struct.cdrom_tocentry, align 4     ; 9 uses
  %i.e = getelementptr i8, ptr %0, i64 64         ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = and i32 %1, 8
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 52
  %i.j = load i32, ptr %i.i, align 4
  %i.k = and i32 %i.j, 4
  %.not29 = icmp eq i32 %i.k, 0
  br i1 %.not29, label %bb.c, label %bb.ap

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = load ptr, ptr %0, align 8                ; 6 uses
  %i.m = getelementptr i8, ptr %i.l, i64 16       ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call i32 %i.n(ptr noundef %0, i32 noundef 2147483647) #19, !inline_history !56
  %i.p = icmp eq i32 %i.o, 2
  br i1 %i.p, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %0, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 104
  %i.s = load i32, ptr %i.r, align 8
  %i.t = getelementptr i8, ptr %0, i64 40
  %i.u = load i32, ptr %i.t, align 8
  %10 = xor i32 %i.u, -1
  %i.v = and i32 %i.s, 1
  %11 = and i32 %i.v, %10
  %.not39.i = icmp eq i32 %11, 0
  br i1 %.not39.i, label %bb.x, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr i8, ptr %0, i64 52
  %i.x = load i32, ptr %i.w, align 4
  %i.y = and i32 %i.x, 1
  %.not40.i = icmp eq i32 %i.y, 0
  br i1 %.not40.i, label %bb.x, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr i8, ptr %i.l, i64 32
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call i32 %i.aa(ptr noundef %0, i32 noundef 0) #19, !inline_history !56
  %.not41.i = icmp eq i32 %i.ab, 0
  br i1 %.not41.i, label %bb.h, label %bb.x

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.m, align 8
  %i.ad = tail call i32 %i.ac(ptr noundef %0, i32 noundef 2147483647) #19, !inline_history !56
  %i.ae = add i32 %i.ad, -1
  %or.cond.i = icmp ult i32 %i.ae, 2
  br i1 %or.cond.i, label %bb.x, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d
  %i.af = load ptr, ptr %i.m, align 8
  %i.ag = tail call i32 %i.af(ptr noundef %0, i32 noundef 2147483647) #19, !inline_history !56
  %.not42.i = icmp eq i32 %i.ag, 4
  br i1 %.not42.i, label %._crit_edge.i, label %bb.x

._crit_edge.i:                                    ; preds = %bb.i
  %.pre.i = load ptr, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.i, %bb.c
  %i.ah = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.l, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, i8 0, i64 12, i1 false), !annotation !19
  %i.ai = getelementptr i8, ptr %i.ah, i64 104
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = getelementptr i8, ptr %0, i64 40        ; 6 uses
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = xor i32 %i.al, -1
  %i.an = and i32 %i.aj, 256
  %i.ao = and i32 %i.an, %i.am
  %.not.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i, label %.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i16 0, ptr %8, align 2, !annotation !19
  %i.ap = getelementptr i8, ptr %i.ah, i64 80
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call i32 %i.aq(ptr noundef %0, i32 noundef 21253, ptr noundef nonnull %8) #19, !inline_history !57
  switch i32 %i.ar, label %.thread.i [
    i32 0, label %bb.l
    i32 -123, label %bb.r
  ]

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 2 ; 2 uses
  store i8 2, ptr %i.as, align 2
  %i.at = load i8, ptr %8, align 2                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 1 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1
  %.not2629.i.i = icmp ugt i8 %i.at, %i.av
  br i1 %.not2629.i.i, label %.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l
  %i.aw = zext i8 %i.at to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 1
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %.lr.ph.i.i
  %.sroa.0.1.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.sroa.0.2.i, %bb.q ] ; 5 uses
  %.030.i.i = phi i32 [ %i.aw, %.lr.ph.i.i ], [ %i.bh, %bb.q ] ; 3 uses
  %i.ay = trunc nuw i32 %.030.i.i to i8
  store i8 %i.ay, ptr %9, align 4
  %i.az = load ptr, ptr %0, align 8
  %i.ba = getelementptr i8, ptr %i.az, i64 80
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call i32 %i.bb(ptr noundef %0, i32 noundef 21254, ptr noundef nonnull %9) #19, !inline_history !57
  %.not27.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not27.i.i, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.bd = load i8, ptr %i.ax, align 1
  %i.be = and i8 %i.bd, 64
  %.not28.i.i = icmp eq i8 %i.be, 0
  br i1 %.not28.i.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = load i8, ptr %i.as, align 2
  switch i8 %i.bf, label %bb.p [
    i8 16, label %bb.q
    i8 32, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.bg = add i32 %.sroa.0.1.i, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.o, %bb.n
  %.sroa.0.2.i = phi i32 [ %.sroa.0.1.i, %bb.o ], [ %i.bg, %bb.p ], [ %.sroa.0.1.i, %bb.o ], [ %.sroa.0.1.i, %bb.n ] ; 2 uses
  %i.bh = add nuw nsw i32 %.030.i.i, 1
  %i.bi = load i8, ptr %i.au, align 1
  %i.bj = zext i8 %i.bi to i32
  %.not26.not.i.i = icmp samesign ult i32 %.030.i.i, %i.bj
  br i1 %.not26.not.i.i, label %bb.m, label %bb.s, !llvm.loop !0

bb.r:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.x

.thread.i:                                        ; preds = %bb.l, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.t

bb.s:                                             ; preds = %bb.q, %bb.m
  %.sroa.0.3.ph.i = phi i32 [ %.sroa.0.1.i, %bb.m ], [ %.sroa.0.2.i, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.bk = icmp eq i32 %.sroa.0.3.ph.i, 0
  br i1 %i.bk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %.thread.i
  %i.bl = getelementptr i8, ptr %0, i64 52
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = and i32 %i.bm, 16
  %.not43.i = icmp eq i32 %i.bn, 0
  br i1 %.not43.i, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bo = load ptr, ptr %i.l, align 8
  %i.bp = call i32 %i.bo(ptr noundef %0, i32 noundef 0) #19, !inline_history !56 ; 2 uses
  %.not44.i = icmp eq i32 %i.bp, 0
  br i1 %.not44.i, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bq = load ptr, ptr %0, align 8               ; 3 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 104
  %i.bs = load i32, ptr %i.br, align 8            ; 3 uses
  %i.bt = load i32, ptr %i.ak, align 8
  %i.bu = xor i32 %i.bt, -1                       ; 3 uses
  %i.bv = and i32 %i.bs, 4
  %i.bw = and i32 %i.bv, %i.bu
  %.not45.i = icmp eq i32 %i.bw, 0
  br i1 %.not45.i, label %open_for_data.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bx = getelementptr i8, ptr %0, i64 52
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = and i32 %i.by, 8
  %.not46.i = icmp eq i32 %i.bz, 0
  br i1 %.not46.i, label %open_for_data.exit.thread, label %open_for_data.exit.thread50

open_for_data.exit.thread50:                      ; preds = %bb.w
  %i.ca = getelementptr i8, ptr %i.l, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = call i32 %i.cb(ptr noundef %0, i32 noundef 1) #19, !inline_history !56 ; 0 uses
  %.pre = load ptr, ptr %0, align 8               ; 2 uses
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 104
  %.pre64 = load i32, ptr %.phi.trans.insert, align 8
  %.pre65 = load i32, ptr %i.ak, align 8
  %.pre67 = xor i32 %.pre65, -1
  br label %open_for_data.exit.thread

bb.x:                                             ; preds = %bb.u, %bb.t, %bb.r, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.036.i = phi i32 [ -123, %bb.f ], [ -123, %bb.g ], [ %i.bp, %bb.u ], [ -123, %bb.r ], [ -123, %bb.h ], [ -123, %bb.i ], [ -123, %bb.e ], [ -124, %bb.t ] ; 3 uses
  %i.cd = load ptr, ptr %0, align 8
  %i.ce = getelementptr i8, ptr %i.cd, i64 104
  %i.cf = load i32, ptr %i.ce, align 8
  %i.cg = getelementptr i8, ptr %0, i64 40
  %i.ch = load i32, ptr %i.cg, align 8
  %i.ci = xor i32 %i.ch, -1
  %i.cj = and i32 %i.cf, 4
  %i.ck = and i32 %i.cj, %i.ci
  %.not47.i = icmp eq i32 %i.ck, 0
  br i1 %.not47.i, label %open_for_data.exit.thread47, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cl = getelementptr i8, ptr %0, i64 52
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = and i32 %i.cm, 8
  %.not48.i = icmp eq i32 %i.cn, 0
  br i1 %.not48.i, label %open_for_data.exit.thread47, label %open_for_data.exit

open_for_data.exit:                               ; preds = %bb.y
  %i.co = getelementptr i8, ptr %i.l, i64 40
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = call i32 %i.cp(ptr noundef %0, i32 noundef 0) #19, !inline_history !56 ; 0 uses
  br label %open_for_data.exit.thread47

open_for_data.exit.thread:                        ; preds = %bb.w, %bb.v, %open_for_data.exit.thread50
  %.pre-phi = phi i32 [ %i.bu, %bb.w ], [ %i.bu, %bb.v ], [ %.pre67, %open_for_data.exit.thread50 ]
  %i.cr = phi i32 [ %i.bs, %bb.w ], [ %i.bs, %bb.v ], [ %.pre64, %open_for_data.exit.thread50 ]
  %i.cs = phi ptr [ %i.bq, %bb.w ], [ %i.bq, %bb.v ], [ %.pre, %open_for_data.exit.thread50 ]
  %i.ct = and i32 %i.cr, 4096
  %i.cu = and i32 %i.ct, %.pre-phi
end_hunk_1
begin_hunk_2_@cdrom_get_last_written:bb.a
  br label %sanitize_format.exit

sanitize_format.exit:                             ; preds = %.sanitize_format.exit_crit_edge, %bb.r
  %i.eb = phi i32 [ %.pre, %.sanitize_format.exit_crit_edge ], [ %i.ea, %bb.r ]
  %i.ec = sext i32 %i.eb to i64
  br label %.sink.split

.sink.split:                                      ; preds = %sanitize_format.exit, %bb.n, %bb.l
  %.sink = phi i64 [ %i.cl, %bb.l ], [ %i.cz, %bb.n ], [ %i.ec, %sanitize_format.exit ]
  store i64 %.sink, ptr %1, align 8
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %bb.p, %bb.o, %bb.m
  %.023 = phi i32 [ -38, %bb.o ], [ 0, %bb.m ], [ %i.dk, %bb.p ], [ 0, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret i32 %.023
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @cdrom_ioctl(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #1 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.packet_command, align 8     ; 11 uses
  %5 = alloca %struct.cdrom_tochdr, align 2       ; 8 uses
  %6 = alloca %struct.cdrom_tocentry, align 4     ; 9 uses
  %7 = alloca %struct.packet_command, align 8     ; 12 uses
  %8 = alloca %struct.cdrom_mcn, align 1          ; 5 uses
  %9 = alloca %struct.packet_command, align 8     ; 12 uses
  %10 = alloca %struct.packet_command, align 8    ; 9 uses
  %11 = alloca %struct.cdrom_timed_media_change_info, align 8 ; 8 uses
  %12 = alloca %struct.packet_command, align 8    ; 12 uses
  %13 = alloca %struct.cdrom_multisession, align 8 ; 15 uses
  %i.a = inttoptr i64 %3 to ptr                   ; 22 uses
  switch i32 %2, label %bb.cs [
    i32 21264, label %bb.b
    i32 21257, label %bb.k
    i32 21273, label %bb.q
    i32 21263, label %bb.s
    i32 21285, label %bb.v
    i32 21398, label %bb.af
    i32 21280, label %bb.ai
    i32 21281, label %bb.an
    i32 21282, label %bb.ao
    i32 21283, label %bb.aq
    i32 21266, label %bb.bf
    i32 21289, label %bb.bi
    i32 21296, label %bb.bm
    i32 21297, label %bb.bo
    i32 21265, label %bb.bp
    i32 21286, label %bb.br
    i32 21287, label %bb.ca
    i32 21288, label %bb.cr
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  store i64 0, ptr %13, align 8, !annotation !19
  %i.b = call i64 @_copy_from_user(ptr noundef nonnull %13, ptr noundef %i.a, i64 noundef 8) #19
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.c, label %cdrom_ioctl_multisession.exit

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %0, align 8                ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 104
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 32
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %cdrom_ioctl_multisession.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %13, i64 5 ; 4 uses
  %i.h = load i8, ptr %i.g, align 1               ; 4 uses
  %i.i = add i8 %i.h, -3
  %or.cond.i.i = icmp ult i8 %i.i, -2
  br i1 %or.cond.i.i, label %cdrom_ioctl_multisession.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.g, align 1
  %i.j = getelementptr i8, ptr %i.c, i64 56
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call i32 %i.k(ptr noundef %0, ptr noundef nonnull %13) #19, !inline_history !71 ; 2 uses
  %.not15.i.i = icmp eq i32 %i.l, 0
  br i1 %.not15.i.i, label %bb.f, label %cdrom_ioctl_multisession.exit

bb.f:                                             ; preds = %bb.e
  %i.m = load i8, ptr %i.g, align 1
  %i.n = icmp eq i8 %i.m, %i.h
  br i1 %i.n, label %copy_to_user.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = icmp eq i8 %i.h, 1
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 2
  %i.q = load i8, ptr %i.p, align 2
  %i.r = zext i8 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 1
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i32
  %i.v = add nsw i32 %i.u, -2
  %i.w = load i8, ptr %13, align 8
  %i.x = zext i8 %i.w to i32
  %i.y = mul nuw nsw i32 %i.x, 60
  %i.z = add nsw i32 %i.v, %i.y
  %i.aa = mul nsw i32 %i.z, 75
  %i.ab = add nsw i32 %i.aa, %i.r
  store i32 %i.ab, ptr %13, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ac = load i32, ptr %13, align 8              ; 2 uses
  %i.ad = srem i32 %i.ac, 75
  %i.ae = trunc nsw i32 %i.ad to i8
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 2
  store i8 %i.ae, ptr %i.af, align 2
  %i.ag = sdiv i32 %i.ac, 75
  %i.ah = add nsw i32 %i.ag, 2                    ; 2 uses
  %i.ai = srem i32 %i.ah, 60
  %i.aj = trunc nsw i32 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 1
  store i8 %i.aj, ptr %i.ak, align 1
  %i.al = sdiv i32 %i.ah, 60
  %i.am = trunc i32 %i.al to i8
  store i8 %i.am, ptr %13, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i8 %i.h, ptr %i.g, align 1
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %bb.j, %bb.f
  %i.an = call i64 @_copy_to_user(ptr noundef %i.a, ptr noundef nonnull %13, i64 noundef 8) #19
  %.not8.i = icmp eq i64 %i.an, 0
  %spec.select.i = select i1 %.not8.i, i32 0, i32 -14
  br label %cdrom_ioctl_multisession.exit

cdrom_ioctl_multisession.exit:                    ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %copy_to_user.exit.i
  %.0.i = phi i32 [ %spec.select.i, %copy_to_user.exit.i ], [ -14, %bb.b ], [ -38, %bb.c ], [ %i.l, %bb.e ], [ -22, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %cdrom_ioctl_eject.exit

bb.k:                                             ; preds = %bb.a
  %i.ao = load ptr, ptr %0, align 8               ; 3 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 104
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = getelementptr i8, ptr %0, i64 40
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = xor i32 %i.as, -1
  %i.au = and i32 %i.aq, %i.at                    ; 2 uses
  %i.av = and i32 %i.au, 2
  %.not.i61 = icmp eq i32 %i.av, 0
  br i1 %.not.i61, label %cdrom_ioctl_eject.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr i8, ptr %0, i64 64
  %i.ax = load i32, ptr %i.aw, align 8
  %.not14.i = icmp eq i32 %i.ax, 1
  br i1 %.not14.i, label %bb.m, label %cdrom_ioctl_eject.exit

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr i8, ptr %0, i64 88
  %i.az = load i8, ptr %i.ay, align 8
  %i.ba = and i8 %i.az, 4
  %.not15.i = icmp eq i8 %i.ba, 0
  br i1 %.not15.i, label %bb.n, label %cdrom_ioctl_eject.exit

bb.n:                                             ; preds = %bb.m
  %i.bb = and i32 %i.au, 4
  %.not16.i = icmp eq i32 %i.bb, 0
  br i1 %.not16.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr i8, ptr %i.ao, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call i32 %i.bd(ptr noundef %0, i32 noundef 0) #19, !inline_history !72 ; 2 uses
  %.not17.not.i = icmp eq i32 %i.be, 0
  br i1 %.not17.not.i, label %._crit_edge.i, label %cdrom_ioctl_eject.exit

._crit_edge.i:                                    ; preds = %bb.o
  %.pre.i = load ptr, ptr %0, align 8
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge.i, %bb.n
  %i.bf = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ao, %bb.n ]
  %i.bg = getelementptr i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = tail call i32 %i.bh(ptr noundef %0, i32 noundef 1) #19, !inline_history !72
  br label %cdrom_ioctl_eject.exit

bb.q:                                             ; preds = %bb.a
  %i.bj = load ptr, ptr %0, align 8               ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 104
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = getelementptr i8, ptr %0, i64 40
  %i.bn = load i32, ptr %i.bm, align 8
  %14 = xor i32 %i.bn, -1
  %i.bo = and i32 %i.bl, 1
  %15 = and i32 %i.bo, %14
  %.not.i62 = icmp eq i32 %15, 0
  br i1 %.not.i62, label %cdrom_ioctl_eject.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr i8, ptr %i.bj, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = tail call i32 %i.bq(ptr noundef %0, i32 noundef 0) #19, !inline_history !73
  br label %cdrom_ioctl_eject.exit

bb.s:                                             ; preds = %bb.a
  %i.bs = load ptr, ptr %0, align 8
  %i.bt = getelementptr i8, ptr %i.bs, i64 104
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = getelementptr i8, ptr %0, i64 40
  %i.bw = load i32, ptr %i.bv, align 8
  %i.bx = xor i32 %i.bw, -1
  %i.by = and i32 %i.bu, 2
  %i.bz = and i32 %i.by, %i.bx
  %.not.i64 = icmp eq i32 %i.bz, 0
  br i1 %.not.i64, label %cdrom_ioctl_eject.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ca = getelementptr i8, ptr %0, i64 88
  %i.cb = load i8, ptr %i.ca, align 8
  %i.cc = and i8 %i.cb, 4
  %.not6.i = icmp eq i8 %i.cc, 0
  br i1 %.not6.i, label %bb.u, label %cdrom_ioctl_eject.exit

bb.u:                                             ; preds = %bb.t
  %i.cd = getelementptr i8, ptr %0, i64 52        ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = and i32 %i.ce, -4
  %.not7.i = icmp eq i64 %3, 0
  %masksel.i = select i1 %.not7.i, i32 0, i32 3
  %spec.select.i66 = or disjoint i32 %i.cf, %masksel.i
  store i32 %spec.select.i66, ptr %i.cd, align 4
  br label %cdrom_ioctl_eject.exit

bb.v:                                             ; preds = %bb.a
  %i.cg = load ptr, ptr %0, align 8               ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 104
  %i.ci = load i32, ptr %i.ch, align 8
  %i.cj = getelementptr i8, ptr %0, i64 40
  %i.ck = load i32, ptr %i.cj, align 8
  %i.cl = xor i32 %i.ck, -1
  %i.cm = and i32 %i.ci, %i.cl                    ; 2 uses
  %i.cn = and i32 %i.cm, 128
  %.not.i67 = icmp eq i32 %i.cn, 0
  br i1 %.not.i67, label %cdrom_ioctl_eject.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.co = and i32 %i.cm, 16
  %i.cp = icmp eq i32 %i.co, 0
  %i.cq = icmp eq i64 %3, 2147483647
  %or.cond.i = or i1 %i.cq, %i.cp
  br i1 %or.cond.i, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.cr = getelementptr i8, ptr %0, i64 52        ; 5 uses
  %i.cs = load i32, ptr %i.cr, align 4
  %.lobit.i.i = lshr i32 %i.cs, 31
  %i.ct = getelementptr i8, ptr %i.cg, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = tail call i32 %i.cu(ptr noundef %0, i32 noundef 1, i32 noundef 2147483647) #19, !inline_history !74 ; 2 uses
  %i.cw = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 8
  %i.cy = or i32 %i.cx, %i.cv
  store i32 %i.cy, ptr %i.cw, align 8
  %i.cz = getelementptr i8, ptr %0, i64 60        ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = or i32 %i.da, %i.cv
  %i.dc = and i32 %i.db, 1
  %.not18.i.i = icmp eq i32 %i.dc, 0
  store i32 0, ptr %i.cz, align 4
  br i1 %.not18.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dd = load i32, ptr %i.cr, align 4
  %i.de = or i32 %i.dd, -1073741824
  store i32 %i.de, ptr %i.cr, align 4
  %i.df = tail call i64 @ktime_get() #19
  %i.dg = sdiv i64 %i.df, 1000000
  %i.dh = getelementptr i8, ptr %0, i64 112
  store i64 %i.dg, ptr %i.dh, align 8
  %i.di = getelementptr i8, ptr %0, i64 97
  store i8 0, ptr %i.di, align 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0.i.i = phi i32 [ 1, %bb.y ], [ %.lobit.i.i, %bb.x ]
  %i.dj = load i32, ptr %i.cr, align 4
  %i.dk = and i32 %i.dj, 2147483647
  store i32 %i.dk, ptr %i.cr, align 4
  br label %cdrom_ioctl_eject.exit

bb.aa:                                            ; preds = %bb.w
  %i.dl = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 8
  %i.dn = sext i32 %i.dm to i64                   ; 2 uses
  %.not39.i = icmp ult i64 %3, %i.dn
  br i1 %.not39.i, label %bb.ab, label %cdrom_ioctl_eject.exit

bb.ab:                                            ; preds = %bb.aa
  %i.do = tail call i64 asm sideeffect "cmp $1,$2; sbb $0,$0", "=r,ir,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.dn, i64 %3) #18, !srcloc !87
  %i.dp = and i64 %i.do, %3
  %i.dq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 88), align 8
  %i.dr = tail call noalias align 8 dereferenceable_or_null(1032) ptr @__kmalloc_cache_noprof(ptr noundef %i.dq, i32 noundef 3264, i64 noundef 1032) #21 ; 11 uses
  %.not40.i = icmp eq ptr %i.dr, null
  br i1 %.not40.i, label %cdrom_ioctl_eject.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.ds = getelementptr i8, ptr %0, i64 88
  %i.dt = load i8, ptr %i.ds, align 8
  %i.du = and i8 %i.dt, 3                         ; 3 uses
  %.not.i42.i = icmp eq i8 %i.du, 0
  br i1 %.not.i42.i, label %cdrom_read_mech_status.exit.i, label %cdrom_read_mech_status.exit.thread.i

cdrom_read_mech_status.exit.thread.i:             ; preds = %bb.ac
  %i.dv = getelementptr i8, ptr %i.dr, i64 5
  store i8 3, ptr %i.dv, align 1
  %i.dw = icmp eq i8 %i.du, 3
  %narrow.i.i = select i1 %i.dw, i8 0, i8 %i.du
  %spec.select.i.i = zext nneg i8 %narrow.i.i to i16
  %i.dx = load i16, ptr %i.dr, align 8
  %i.dy = and i16 %i.dx, -32
  %i.dz = or disjoint i16 %i.dy, %spec.select.i.i
  store i16 %i.dz, ptr %i.dr, align 8
  %i.ea = getelementptr i8, ptr %i.dr, i64 8      ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 8
  %i.ec = and i8 %i.eb, 126
  %i.ed = or disjoint i8 %i.ec, -128
  store i8 %i.ed, ptr %i.ea, align 8
  %i.ee = getelementptr i8, ptr %i.dr, i64 12     ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 4
  %i.eg = and i8 %i.ef, 126
  %i.eh = or disjoint i8 %i.eg, -128
  store i8 %i.eh, ptr %i.ee, align 4
  %i.ei = getelementptr i8, ptr %i.dr, i64 16     ; 2 uses
  %i.ej = load i8, ptr %i.ei, align 8
  %i.ek = and i8 %i.ej, 126
  %i.el = or disjoint i8 %i.ek, -128
  store i8 %i.el, ptr %i.ei, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.ad

cdrom_read_mech_status.exit.i:                    ; preds = %bb.ac
  %i.em = load ptr, ptr %0, align 8
  %i.en = load i32, ptr %i.dl, align 8
  %i.eo = shl i32 %i.en, 2
  %i.ep = add i32 %i.eo, 8                        ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %12, i8 0, i64 64, i1 false)
  %i.eq = sext i32 %i.ep to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dr, i8 0, i64 %i.eq, i1 false)
  %i.er = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.dr, ptr %i.er, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 %i.ep, ptr %i.es, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i8 2, ptr %i.et, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %12, i64 48
  store i32 7000, ptr %i.eu, align 8
  store i8 -67, ptr %12, align 8
  %i.ev = lshr i32 %i.ep, 8
  %i.ew = trunc i32 %i.ev to i8
  %i.ex = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i8 %i.ew, ptr %i.ex, align 8
  %i.ey = trunc i32 %i.ep to i8
  %i.ez = getelementptr inbounds nuw i8, ptr %12, i64 9
  store i8 %i.ey, ptr %i.ez, align 1
  %i.fa = getelementptr i8, ptr %i.em, i64 88
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = call i32 %i.fb(ptr noundef %0, ptr noundef nonnull %12) #19, !inline_history !75 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %.not41.i = icmp eq i32 %i.fc, 0
  br i1 %.not41.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %cdrom_read_mech_status.exit.i, %cdrom_read_mech_status.exit.thread.i
  %i.fd = getelementptr i8, ptr %i.dr, i64 8
  %i.fe = getelementptr [4 x i8], ptr %i.fd, i64 %i.dp
  %i.ff = load i8, ptr %i.fe, align 4
  %i.fg = and i8 %i.ff, 1
  %i.fh = zext nneg i8 %i.fg to i32
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %cdrom_read_mech_status.exit.i
  %.035.i = phi i32 [ %i.fc, %cdrom_read_mech_status.exit.i ], [ %i.fh, %bb.ad ]
  call void @kfree(ptr noundef nonnull %i.dr) #19
  br label %cdrom_ioctl_eject.exit

bb.af:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false), !annotation !19
  %i.fi = load ptr, ptr %0, align 8               ; 2 uses
  %i.fj = getelementptr i8, ptr %i.fi, i64 104
  %i.fk = load i32, ptr %i.fj, align 8
  %i.fl = getelementptr i8, ptr %0, i64 40
  %i.fm = load i32, ptr %i.fl, align 8
  %i.fn = xor i32 %i.fm, -1
  %i.fo = and i32 %i.fk, 128
  %i.fp = and i32 %i.fo, %i.fn
end_hunk_2
begin_hunk_3_@mmc_ioctl_cdrom_next_writable:bb.a
bb.f:                                             ; preds = %cdrom_get_track_info.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 5
  %i.ba = load i16, ptr %i.az, align 1
  %i.bb = and i16 %i.ba, 16384
  %.not34.i = icmp eq i16 %i.bb, 0
  br i1 %.not34.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = icmp eq i16 %i.af, 1
  br i1 %i.bc, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = add i16 %i.af, -1                       ; 2 uses
  %i.be = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %2, i8 0, i64 64, i1 false)
  store i64 0, ptr %6, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %6, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store i32 8, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 2, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 7000, ptr %i.bi, align 8
  store i8 82, ptr %2, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 1, ptr %i.bj, align 1
  %i.bk = lshr i16 %i.bd, 8
  %i.bl = trunc nuw i16 %i.bk to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %i.bl, ptr %i.bm, align 4
  %i.bn = trunc i16 %i.bd to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %i.bn, ptr %i.bo, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i8 8, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 1, ptr %i.bq, align 4
  %i.br = getelementptr i8, ptr %i.be, i64 88     ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = call i32 %i.bs(ptr noundef %0, ptr noundef nonnull %2) #19, !inline_history !132 ; 2 uses
  %.not.i41.i = icmp eq i32 %i.bt, 0
  br i1 %.not.i41.i, label %bb.i, label %cdrom_get_track_info.exit47.i

bb.i:                                             ; preds = %bb.h
  %i.bu = load i16, ptr %6, align 8
  %i.bv = call i16 @llvm.bswap.i16(i16 %i.bu)
  %i.bw = call i16 @llvm.umin.i16(i16 %i.bv, i16 30)
  %narrow.i43.i = add nuw nsw i16 %i.bw, 2        ; 2 uses
  %spec.store.select.i44.i = zext nneg i16 %narrow.i43.i to i32 ; 2 uses
  store i32 %spec.store.select.i44.i, ptr %i.bg, align 8
  %i.bx = trunc nuw nsw i16 %narrow.i43.i to i8
  store i8 %i.bx, ptr %i.bp, align 8
  %i.by = load ptr, ptr %i.br, align 8
  %i.bz = call i32 %i.by(ptr noundef %0, ptr noundef nonnull %2) #19, !inline_history !132 ; 2 uses
  %.not19.i45.i = icmp eq i32 %i.bz, 0
  br i1 %.not19.i45.i, label %cdrom_get_track_info.exit47.thread.i, label %cdrom_get_track_info.exit47.i

cdrom_get_track_info.exit47.thread.i:             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.j

cdrom_get_track_info.exit47.i:                    ; preds = %bb.i, %bb.h
  %.0.i42.i = phi i32 [ %i.bt, %bb.h ], [ %i.bz, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.ca = icmp slt i32 %.0.i42.i, 0
  br i1 %i.ca, label %bb.l, label %bb.j

bb.j:                                             ; preds = %cdrom_get_track_info.exit47.i, %cdrom_get_track_info.exit47.thread.i, %bb.f
  %.0.i6 = phi i32 [ %.0.i42.i, %cdrom_get_track_info.exit47.i ], [ %.0.i37.i, %bb.f ], [ %spec.store.select.i44.i, %cdrom_get_track_info.exit47.thread.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 7
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = trunc i8 %i.cc to i1
  %i.ce = icmp samesign ugt i32 %.0.i6, 15
  %or.cond8.i = and i1 %i.ce, %i.cd
  br i1 %or.cond8.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = call i32 @llvm.bswap.i32(i32 %i.cg)
  %i.ci = zext i32 %i.ch to i64
  br label %copy_to_user.exit

bb.l:                                             ; preds = %bb.j, %cdrom_get_track_info.exit47.i, %bb.g, %cdrom_get_track_info.exit.i, %cdrom_get_disc_info.exit.i, %bb.a
  %i.cj = call i32 @cdrom_get_last_written(ptr noundef %0, ptr noundef nonnull %i.a) #20 ; 2 uses
  %.not35.i = icmp eq i32 %i.cj, 0
  br i1 %.not35.i, label %bb.m, label %cdrom_get_next_writable.exit

bb.m:                                             ; preds = %bb.l
  %i.ck = load i64, ptr %i.a, align 8
  %i.cl = add i64 %i.ck, 7
  br label %copy_to_user.exit

cdrom_get_next_writable.exit:                     ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.n

copy_to_user.exit:                                ; preds = %bb.m, %bb.k
  %.sink.i.ph = phi i64 [ %i.ci, %bb.k ], [ %i.cl, %bb.m ]
  store i64 %.sink.i.ph, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.cm = call i64 @_copy_to_user(ptr noundef %1, ptr noundef nonnull %i.a, i64 noundef 8) #19
  %.fr = freeze i64 %i.cm
  %.not5 = icmp eq i64 %.fr, 0
  %spec.select = select i1 %.not5, i32 0, i32 -14
  br label %bb.n

bb.n:                                             ; preds = %copy_to_user.exit, %cdrom_get_next_writable.exit
  %.0 = phi i32 [ %i.cj, %cdrom_get_next_writable.exit ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @mmc_ioctl_cdrom_last_written(ptr noundef %0, ptr noundef %1) unnamed_addr #12 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 0, ptr %i.a, align 8
  %i.b = call i32 @cdrom_get_last_written(ptr noundef %0, ptr noundef nonnull %i.a) #20 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #23, !srcloc !21
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 2
  %.not.i.i.not = icmp eq i32 %i.g, 0
  %i.h = load i64, ptr %i.a, align 8              ; 2 uses
  br i1 %.not.i.i.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = trunc i64 %i.h to i32
  %i.j = tail call i64 @llvm.read_register.i64(metadata !2)
  %i.k = tail call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %1, i32 %i.i, i64 4, i64 %i.j) #18, !srcloc !133
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.l = tail call i64 @llvm.read_register.i64(metadata !2)
  %i.m = tail call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %1, i64 %i.h, i64 8, i64 %i.l) #18, !srcloc !134
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.d
  %.sink = phi { ptr, i64 } [ %i.m, %bb.d ], [ %i.k, %bb.c ] ; 2 uses
  %i.n = extractvalue { ptr, i64 } %.sink, 0
  %i.o = extractvalue { ptr, i64 } %.sink, 1
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = trunc i64 %i.p to i32
  tail call void @llvm.write_register.i64(metadata !2, i64 %i.o)
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ %i.b, %bb.a ], [ %i.q, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(1)
declare dso_local ptr @memdup_user(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #14

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #15

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -124, 2) i32 @check_for_audio_disc(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.cdrom_tochdr, align 2       ; 8 uses
  %3 = alloca %struct.cdrom_tocentry, align 4     ; 9 uses
  %i.a = getelementptr i8, ptr %0, i64 52         ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 16
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not21 = icmp eq ptr %i.e, null
  br i1 %.not21, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 %i.e(ptr noundef %0, i32 noundef 2147483647) #19
  %i.g = icmp eq i32 %i.f, 2
  br i1 %i.g, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 104
  %i.j = load i32, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %0, i64 40
  %i.l = load i32, ptr %i.k, align 8
  %4 = xor i32 %i.l, -1
  %i.m = and i32 %i.j, 1
  %5 = and i32 %i.m, %4
  %.not22 = icmp eq i32 %5, 0
  br i1 %.not22, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load i32, ptr %i.a, align 4
  %i.o = and i32 %i.n, 1
  %.not23 = icmp eq i32 %i.o, 0
  br i1 %.not23, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %1, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call i32 %i.q(ptr noundef %0, i32 noundef 0) #19
  %.not24 = icmp eq i32 %i.r, 0
  br i1 %.not24, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.d, align 8
  %i.t = tail call i32 %i.s(ptr noundef %0, i32 noundef 2147483647) #19 ; 2 uses
  %i.u = add i32 %i.t, -1
  %or.cond = icmp ult i32 %i.u, 2
  br i1 %or.cond, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not25 = icmp eq i32 %i.t, 4
  br i1 %.not25, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h, %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i64 12, i1 false), !annotation !19
  %i.v = load ptr, ptr %0, align 8                ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 104
  %i.x = load i32, ptr %i.w, align 8
  %i.y = getelementptr i8, ptr %0, i64 40
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = xor i32 %i.z, -1
  %i.ab = and i32 %i.x, 256
  %i.ac = and i32 %i.ab, %i.aa
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i16 0, ptr %2, align 2, !annotation !19
  %i.ad = getelementptr i8, ptr %i.v, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call i32 %i.ae(ptr noundef %0, i32 noundef 21253, ptr noundef nonnull %2) #19, !inline_history !135
  switch i32 %i.af, label %.thread [
    i32 0, label %bb.k
    i32 -123, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 2, ptr %i.ag, align 2
  %i.ah = load i8, ptr %2, align 2                ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1
  %.not2629.i = icmp ugt i8 %i.ah, %i.aj
  br i1 %.not2629.i, label %.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.ak = zext i8 %i.ah to i32
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 1
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i
  %.sroa.6.1 = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.6.2, %bb.m ] ; 2 uses
  %.030.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.au, %bb.m ] ; 3 uses
  %i.am = trunc nuw i32 %.030.i to i8
  store i8 %i.am, ptr %3, align 4
  %i.an = load ptr, ptr %0, align 8
  %i.ao = getelementptr i8, ptr %i.an, i64 80
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call i32 %i.ap(ptr noundef %0, i32 noundef 21254, ptr noundef nonnull %3) #19, !inline_history !135
  %.not27.i = icmp eq i32 %i.aq, 0
  br i1 %.not27.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ar = load i8, ptr %i.al, align 1
  %i.as = and i8 %i.ar, 64
  %.not28.i = icmp eq i8 %i.as, 0
  %i.at = zext i1 %.not28.i to i32
  %.sroa.6.2 = add i32 %.sroa.6.1, %i.at          ; 2 uses
  %i.au = add nuw nsw i32 %.030.i, 1
  %i.av = load i8, ptr %i.ai, align 1
  %i.aw = zext i8 %i.av to i32
  %.not26.not.i = icmp samesign ult i32 %.030.i, %i.aw
  br i1 %.not26.not.i, label %bb.l, label %bb.o, !llvm.loop !0

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.q

.thread:                                          ; preds = %bb.k, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.l
  %.sroa.6.3.ph = phi i32 [ %.sroa.6.1, %bb.l ], [ %.sroa.6.2, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %.sroa.6.3.ph.fr = freeze i32 %.sroa.6.3.ph
  %i.ax = icmp eq i32 %.sroa.6.3.ph.fr, 0
  br i1 %i.ax, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.thread, %bb.o
  br label %bb.q

bb.q:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.p, %bb.o, %bb.e, %bb.d, %bb.a, %bb.n
  %.0 = phi i32 [ 0, %bb.o ], [ -123, %bb.f ], [ -123, %bb.g ], [ 1, %bb.n ], [ -123, %bb.e ], [ 0, %bb.a ], [ -123, %bb.d ], [ -124, %bb.p ], [ -5, %bb.h ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @register_sysctl_sz(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cdrom_sysctl_info(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 align 16 prefalign(16) {
bb.a:
  %i.a = load i64, ptr %3, align 8
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %4, align 8
  %i.c = icmp eq i64 %i.b, 0
  %i.d = icmp ne i32 %1, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i64 0, ptr %3, align 8
  br label %bb.at

bb.d:                                             ; preds = %bb.b
  tail call void @mutex_lock(ptr noundef nonnull @cdrom_mutex) #19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(49) @cdrom_sysctl_settings, ptr noundef nonnull align 1 dereferenceable(49) @.str.31, i64 49, i1 false)
  %i.e = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @cdrom_sysctl_settings, i64 48), i64 noundef 952, ptr noundef nonnull @.str.32) #19 ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %cdrom_print_info.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = add i32 %i.e, 48                         ; 2 uses
  %.pn2.i = load ptr, ptr @cdrom_list, align 8    ; 2 uses
  %.not14.i = icmp eq ptr %.pn2.i, @cdrom_list
  br i1 %.not14.i, label %.loopexit472, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.e, %bb.f
  %.0339 = phi i32 [ %i.m, %bb.f ], [ %i.f, %bb.e ] ; 3 uses
  %.pn6.us.i = phi ptr [ %.pn.us.i, %bb.f ], [ %.pn2.i, %bb.e ] ; 2 uses
  %i.g = sext i32 %.0339 to i64
  %i.h = getelementptr i8, ptr @cdrom_sysctl_settings, i64 %i.g
  %i.i = sub i32 1000, %.0339
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr i8, ptr %.pn6.us.i, i64 60
  %i.l = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.h, i64 noundef %i.j, ptr noundef nonnull @.str.54, ptr noundef %i.k) #19 ; 2 uses
  %.not40.us.i = icmp eq i32 %i.l, 0
  br i1 %.not40.us.i, label %cdrom_print_info.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us.i
  %i.m = add i32 %i.l, %.0339                     ; 2 uses
  %.pn.us.i = load ptr, ptr %.pn6.us.i, align 8   ; 2 uses
  %.not1.us.i = icmp eq ptr %.pn.us.i, @cdrom_list
  br i1 %.not1.us.i, label %.loopexit472, label %.lr.ph.split.us.i, !llvm.loop !136

.loopexit472:                                     ; preds = %bb.f, %bb.e
  %.1.ph = phi i32 [ %i.f, %bb.e ], [ %i.m, %bb.f ] ; 3 uses
  %i.n = sext i32 %.1.ph to i64
  %i.o = getelementptr i8, ptr @cdrom_sysctl_settings, i64 %i.n
  %i.p = sub i32 1000, %.1.ph
  %i.q = sext i32 %i.p to i64
  %i.r = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.o, i64 noundef %i.q, ptr noundef nonnull @.str.33) #19 ; 2 uses
  %.not.i53 = icmp eq i32 %i.r, 0
  br i1 %.not.i53, label %cdrom_print_info.exit, label %bb.g

bb.g:                                             ; preds = %.loopexit472
  %i.s = add i32 %i.r, %.1.ph                     ; 2 uses
  %.pn2.i54 = load ptr, ptr @cdrom_list, align 8  ; 2 uses
  %.not14.i55 = icmp eq ptr %.pn2.i54, @cdrom_list
  br i1 %.not14.i55, label %.loopexit470, label %.lr.ph.split.us11.i

.lr.ph.split.us11.i:                              ; preds = %bb.g, %bb.h
  %.2 = phi i32 [ %i.aa, %bb.h ], [ %i.s, %bb.g ] ; 3 uses
  %.pn6.us13.i = phi ptr [ %.pn.us17.i, %bb.h ], [ %.pn2.i54, %bb.g ] ; 2 uses
  %i.t = sext i32 %.2 to i64
  %i.u = getelementptr i8, ptr @cdrom_sysctl_settings, i64 %i.t
  %i.v = sub i32 1000, %.2
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr i8, ptr %.pn6.us13.i, i64 36
  %i.y = load i32, ptr %i.x, align 4
  %i.z = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.u, i64 noundef %i.w, ptr noundef nonnull @.str.55, i32 noundef %i.y) #19 ; 2 uses
  %.not40.us16.i = icmp eq i32 %i.z, 0
  br i1 %.not40.us16.i, label %cdrom_print_info.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.us11.i
  %i.aa = add i32 %i.z, %.2                       ; 2 uses
  %.pn.us17.i = load ptr, ptr %.pn6.us13.i, align 8 ; 2 uses
  %.not1.us19.i = icmp eq ptr %.pn.us17.i, @cdrom_list
  br i1 %.not1.us19.i, label %.loopexit470, label %.lr.ph.split.us11.i, !llvm.loop !136

.loopexit470:                                     ; preds = %bb.h, %bb.g
  %.3.ph = phi i32 [ %i.s, %bb.g ], [ %i.aa, %bb.h ] ; 3 uses
  %i.ab = sext i32 %.3.ph to i64
  %i.ac = getelementptr i8, ptr @cdrom_sysctl_settings, i64 %i.ab
  %i.ad = sub i32 1000, %.3.ph
  %i.ae = sext i32 %i.ad to i64
  %i.af = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.ac, i64 noundef %i.ae, ptr noundef nonnull @.str.34) #19 ; 2 uses
  %.not.i59 = icmp eq i32 %i.af, 0
  br i1 %.not.i59, label %cdrom_print_info.exit, label %bb.i

bb.i:                                             ; preds = %.loopexit470
  %i.ag = add i32 %i.af, %.3.ph                   ; 2 uses
  %.pn2.i60 = load ptr, ptr @cdrom_list, align 8  ; 2 uses
  %.not14.i61 = icmp eq ptr %.pn2.i60, @cdrom_list
  br i1 %.not14.i61, label %.loopexit468, label %.lr.ph.split.us24.i

.lr.ph.split.us24.i:                              ; preds = %bb.i, %bb.j
  %.4 = phi i32 [ %i.ao, %bb.j ], [ %i.ag, %bb.i ] ; 3 uses
  %.pn6.us26.i = phi ptr [ %.pn.us30.i, %bb.j ], [ %.pn2.i60, %bb.i ] ; 2 uses
  %i.ah = sext i32 %.4 to i64
  %i.ai = getelementptr i8, ptr @cdrom_sysctl_settings, i64 %i.ah
  %i.aj = sub i32 1000, %.4
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr i8, ptr %.pn6.us26.i, i64 40
  %i.am = load i32, ptr %i.al, align 8
  %i.an = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.ai, i64 noundef %i.ak, ptr noundef nonnull @.str.55, i32 noundef %i.am) #19 ; 2 uses
  %.not40.us29.i = icmp eq i32 %i.an, 0
  br i1 %.not40.us29.i, label %cdrom_print_info.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.us24.i
  %i.ao = add i32 %i.an, %.4                      ; 2 uses
  %.pn.us30.i = load ptr, ptr %.pn6.us26.i, align 8 ; 2 uses
  %.not1.us32.i = icmp eq ptr %.pn.us30.i, @cdrom_list
  br i1 %.not1.us32.i, label %.loopexit468, label %.lr.ph.split.us24.i, !llvm.loop !136

.loopexit468:                                     ; preds = %bb.j, %bb.i
  %.5.ph = phi i32 [ %i.ag, %bb.i ], [ %i.ao, %bb.j ] ; 3 uses
  %i.ap = sext i32 %.5.ph to i64
  %i.aq = getelementptr i8, ptr @cdrom_sysctl_settings, i64 %i.ap
  %i.ar = sub i32 1000, %.5.ph
  %i.as = sext i32 %i.ar to i64
  %i.at = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.aq, i64 noundef %i.as, ptr noundef nonnull @.str.35) #19 ; 2 uses
  %.not.i65 = icmp eq i32 %i.at, 0
  br i1 %.not.i65, label %cdrom_print_info.exit, label %bb.k

bb.k:                                             ; preds = %.loopexit468
  %i.au = add i32 %i.at, %.5.ph                   ; 2 uses
  %.pn2.i66 = load ptr, ptr @cdrom_list, align 8  ; 2 uses
  %.not14.i67 = icmp eq ptr %.pn2.i66, @cdrom_list
  br i1 %.not14.i67, label %.loopexit466, label %.lr.ph.split.us37.i

.lr.ph.split.us37.i:                              ; preds = %bb.k, %bb.l
  %.6 = phi i32 [ %i.bg, %bb.l ], [ %i.au, %bb.k ] ; 3 uses
  %.pn6.us39.i = phi ptr [ %.pn.us43.i, %bb.l ], [ %.pn2.i66, %bb.k ] ; 3 uses
  %.0367.us38.i = getelementptr i8, ptr %.pn6.us39.i, i64 -8
  %i.av = sext i32 %.6 to i64
  %i.aw = getelementptr i8, ptr @cdrom_sysctl_settings, i64 %i.av
  %i.ax = sub i32 1000, %.6
  %i.ay = sext i32 %i.ax to i64
  %i.az = load ptr, ptr %.0367.us38.i, align 8
  %i.ba = getelementptr i8, ptr %i.az, i64 104
  %i.bb = load i32, ptr %i.ba, align 8
  %i.bc = getelementptr i8, ptr %.pn6.us39.i, i64 32
  %i.bd = load i32, ptr %i.bc, align 8
  %5 = xor i32 %i.bd, -1
  %i.be = and i32 %i.bb, 1
  %6 = and i32 %i.be, %5
  %i.bf = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.aw, i64 noundef %i.ay, ptr noundef nonnull @.str.55, i32 noundef %6) #19 ; 2 uses
  %.not40.us42.i = icmp eq i32 %i.bf, 0
  br i1 %.not40.us42.i, label %cdrom_print_info.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.us37.i
  %i.bg = add i32 %i.bf, %.6                      ; 2 uses
  %.pn.us43.i = load ptr, ptr %.pn6.us39.i, align 8 ; 2 uses
  %.not1.us45.i = icmp eq ptr %.pn.us43.i, @cdrom_list
  br i1 %.not1.us45.i, label %.loopexit466, label %.lr.ph.split.us37.i, !llvm.loop !136

.loopexit466:                                     ; preds = %bb.l, %bb.k
  %.7.ph = phi i32 [ %i.au, %bb.k ], [ %i.bg, %bb.l ] ; 3 uses
  %i.bh = sext i32 %.7.ph to i64
  %i.bi = getelementptr i8, ptr @cdrom_sysctl_settings, i64 %i.bh
  %i.bj = sub i32 1000, %.7.ph
  %i.bk = sext i32 %i.bj to i64
  %i.bl = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.bi, i64 noundef %i.bk, ptr noundef nonnull @.str.36) #19 ; 2 uses
  %.not.i71 = icmp eq i32 %i.bl, 0
  br i1 %.not.i71, label %cdrom_print_info.exit, label %bb.m

bb.m:                                             ; preds = %.loopexit466
  %i.bm = add i32 %i.bl, %.7.ph                   ; 2 uses
  %.pn2.i72 = load ptr, ptr @cdrom_list, align 8  ; 2 uses
  %.not14.i73 = icmp eq ptr %.pn2.i72, @cdrom_list
  br i1 %.not14.i73, label %.loopexit464, label %.lr.ph.split.us37.i75

.lr.ph.split.us37.i75:                            ; preds = %bb.m, %bb.n
  %.8 = phi i32 [ %i.ca, %bb.n ], [ %i.bm, %bb.m ] ; 3 uses
  %.pn6.us39.i76 = phi ptr [ %.pn.us43.i80, %bb.n ], [ %.pn2.i72, %bb.m ] ; 3 uses
  %.0367.us38.i78 = getelementptr i8, ptr %.pn6.us39.i76, i64 -8
  %i.bn = sext i32 %.8 to i64
  %i.bo = getelementptr i8, ptr @cdrom_sysctl_settings, i64 %i.bn
  %i.bp = sub i32 1000, %.8
  %i.bq = sext i32 %i.bp to i64
  %i.br = load ptr, ptr %.0367.us38.i78, align 8
  %i.bs = getelementptr i8, ptr %i.br, i64 104
  %i.bt = load i32, ptr %i.bs, align 8
  %i.bu = getelementptr i8, ptr %.pn6.us39.i76, i64 32
  %i.bv = load i32, ptr %i.bu, align 8
  %i.bw = xor i32 %i.bv, -1
  %i.bx = and i32 %i.bt, 2
  %i.by = and i32 %i.bx, %i.bw
  %.lobit = lshr exact i32 %i.by, 1
  %i.bz = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.bo, i64 noundef %i.bq, ptr noundef nonnull @.str.55, i32 noundef %.lobit) #19 ; 2 uses
  %.not40.us42.i79 = icmp eq i32 %i.bz, 0
  br i1 %.not40.us42.i79, label %cdrom_print_info.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.us37.i75
  %i.ca = add i32 %i.bz, %.8                      ; 2 uses
  %.pn.us43.i80 = load ptr, ptr %.pn6.us39.i76, align 8 ; 2 uses
  %.not1.us45.i81 = icmp eq ptr %.pn.us43.i80, @cdrom_list
  br i1 %.not1.us45.i81, label %.loopexit464, label %.lr.ph.split.us37.i75, !llvm.loop !136

.loopexit464:                                     ; preds = %bb.n, %bb.m
  %.9.ph = phi i32 [ %i.bm, %bb.m ], [ %i.ca, %bb.n ] ; 3 uses
  %i.cb = sext i32 %.9.ph to i64
  %i.cc = getelementptr i8, ptr @cdrom_sysctl_settings, i64 %i.cb
  %i.cd = sub i32 1000, %.9.ph
  %i.ce = sext i32 %i.cd to i64
  %i.cf = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.cc, i64 noundef %i.ce, ptr noundef nonnull @.str.37) #19 ; 2 uses
  %.not.i84 = icmp eq i32 %i.cf, 0
  br i1 %.not.i84, label %cdrom_print_info.exit, label %bb.o

bb.o:                                             ; preds = %.loopexit464
  %i.cg = add i32 %i.cf, %.9.ph                   ; 2 uses
  %.pn2.i85 = load ptr, ptr @cdrom_list, align 8  ; 2 uses
  %.not14.i86 = icmp eq ptr %.pn2.i85, @cdrom_list
  br i1 %.not14.i86, label %.loopexit462, label %.lr.ph.split.us37.i88

.lr.ph.split.us37.i88:                            ; preds = %bb.o, %bb.p
  %.10 = phi i32 [ %i.cu, %bb.p ], [ %i.cg, %bb.o ] ; 3 uses
  %.pn6.us39.i89 = phi ptr [ %.pn.us43.i93, %bb.p ], [ %.pn2.i85, %bb.o ] ; 3 uses
  %.0367.us38.i91 = getelementptr i8, ptr %.pn6.us39.i89, i64 -8
  %i.ch = sext i32 %.10 to i64
  %i.ci = getelementptr i8, ptr @cdrom_sysctl_settings, i64 %i.ch
  %i.cj = sub i32 1000, %.10
  %i.ck = sext i32 %i.cj to i64
  %i.cl = load ptr, ptr %.0367.us38.i91, align 8
  %i.cm = getelementptr i8, ptr %i.cl, i64 104
  %i.cn = load i32, ptr %i.cm, align 8
  %i.co = getelementptr i8, ptr %.pn6.us39.i89, i64 32
  %i.cp = load i32, ptr %i.co, align 8
  %i.cq = xor i32 %i.cp, -1
  %i.cr = and i32 %i.cn, 4
  %i.cs = and i32 %i.cr, %i.cq
  %.lobit420 = lshr exact i32 %i.cs, 2
  %i.ct = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.ci, i64 noundef %i.ck, ptr noundef nonnull @.str.55, i32 noundef %.lobit420) #19 ; 2 uses
  %.not40.us42.i92 = icmp eq i32 %i.ct, 0
  br i1 %.not40.us42.i92, label %cdrom_print_info.exit, label %bb.p

bb.p:                                             ; preds = %.lr.ph.split.us37.i88
  %i.cu = add i32 %i.ct, %.10                     ; 2 uses
  %.pn.us43.i93 = load ptr, ptr %.pn6.us39.i89, align 8 ; 2 uses
  %.not1.us45.i94 = icmp eq ptr %.pn.us43.i93, @cdrom_list
  br i1 %.not1.us45.i94, label %.loopexit462, label %.lr.ph.split.us37.i88, !llvm.loop !136

.loopexit462:                                     ; preds = %bb.p, %bb.o
  %.11.ph = phi i32 [ %i.cg, %bb.o ], [ %i.cu, %bb.p ] ; 3 uses
  %i.cv = sext i32 %.11.ph to i64
  %i.cw = getelementptr i8, ptr @cdrom_sysctl_settings, i64 %i.cv
  %i.cx = sub i32 1000, %.11.ph
  %i.cy = sext i32 %i.cx to i64
  %i.cz = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.cw, i64 noundef %i.cy, ptr noundef nonnull @.str.38) #19 ; 2 uses
  %.not.i97 = icmp eq i32 %i.cz, 0
  br i1 %.not.i97, label %cdrom_print_info.exit, label %bb.q

bb.q:                                             ; preds = %.loopexit462
  %i.da = add i32 %i.cz, %.11.ph                  ; 2 uses
  %.pn2.i98 = load ptr, ptr @cdrom_list, align 8  ; 2 uses
  %.not14.i99 = icmp eq ptr %.pn2.i98, @cdrom_list
  br i1 %.not14.i99, label %.loopexit460, label %.lr.ph.split.us37.i101

.lr.ph.split.us37.i101:                           ; preds = %bb.q, %bb.r
  %.12 = phi i32 [ %i.do, %bb.r ], [ %i.da, %bb.q ] ; 3 uses
  %.pn6.us39.i102 = phi ptr [ %.pn.us43.i106, %bb.r ], [ %.pn2.i98, %bb.q ] ; 3 uses
  %.0367.us38.i104 = getelementptr i8, ptr %.pn6.us39.i102, i64 -8
  %i.db = sext i32 %.12 to i64
  %i.dc = getelementptr i8, ptr @cdrom_sysctl_settings, i64 %i.db
  %i.dd = sub i32 1000, %.12
  %i.de = sext i32 %i.dd to i64
  %i.df = load ptr, ptr %.0367.us38.i104, align 8
  %i.dg = getelementptr i8, ptr %i.df, i64 104
  %i.dh = load i32, ptr %i.dg, align 8
  %i.di = getelementptr i8, ptr %.pn6.us39.i102, i64 32
  %i.dj = load i32, ptr %i.di, align 8
  %i.dk = xor i32 %i.dj, -1
  %i.dl = and i32 %i.dh, 8
  %i.dm = and i32 %i.dl, %i.dk
  %.lobit421 = lshr exact i32 %i.dm, 3
  %i.dn = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.dc, i64 noundef %i.de, ptr noundef nonnull @.str.55, i32 noundef %.lobit421) #19 ; 2 uses
  %.not40.us42.i105 = icmp eq i32 %i.dn, 0
  br i1 %.not40.us42.i105, label %cdrom_print_info.exit, label %bb.r

bb.r:                                             ; preds = %.lr.ph.split.us37.i101
  %i.do = add i32 %i.dn, %.12                     ; 2 uses
  %.pn.us43.i106 = load ptr, ptr %.pn6.us39.i102, align 8 ; 2 uses
  %.not1.us45.i107 = icmp eq ptr %.pn.us43.i106, @cdrom_list
  br i1 %.not1.us45.i107, label %.loopexit460, label %.lr.ph.split.us37.i101, !llvm.loop !136

.loopexit460:                                     ; preds = %bb.r, %bb.q
  %.13.ph = phi i32 [ %i.da, %bb.q ], [ %i.do, %bb.r ] ; 3 uses
  %i.dp = sext i32 %.13.ph to i64
  %i.dq = getelementptr i8, ptr @cdrom_sysctl_settings, i64 %i.dp
  %i.dr = sub i32 1000, %.13.ph
  %i.ds = sext i32 %i.dr to i64
  %i.dt = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.dq, i64 noundef %i.ds, ptr noundef nonnull @.str.39) #19 ; 2 uses
  %.not.i110 = icmp eq i32 %i.dt, 0
  br i1 %.not.i110, label %cdrom_print_info.exit, label %bb.s

bb.s:                                             ; preds = %.loopexit460
  %i.du = add i32 %i.dt, %.13.ph                  ; 2 uses
  %.pn2.i111 = load ptr, ptr @cdrom_list, align 8 ; 2 uses
  %.not14.i112 = icmp eq ptr %.pn2.i111, @cdrom_list
  br i1 %.not14.i112, label %.loopexit458, label %.lr.ph.split.us37.i114

.lr.ph.split.us37.i114:                           ; preds = %bb.s, %bb.t
  %.14 = phi i32 [ %i.ei, %bb.t ], [ %i.du, %bb.s ] ; 3 uses
  %.pn6.us39.i115 = phi ptr [ %.pn.us43.i119, %bb.t ], [ %.pn2.i111, %bb.s ] ; 3 uses
  %.0367.us38.i117 = getelementptr i8, ptr %.pn6.us39.i115, i64 -8
  %i.dv = sext i32 %.14 to i64
  %i.dw = getelementptr i8, ptr @cdrom_sysctl_settings, i64 %i.dv
  %i.dx = sub i32 1000, %.14
  %i.dy = sext i32 %i.dx to i64
  %i.dz = load ptr, ptr %.0367.us38.i117, align 8
  %i.ea = getelementptr i8, ptr %i.dz, i64 104
  %i.eb = load i32, ptr %i.ea, align 8
  %i.ec = getelementptr i8, ptr %.pn6.us39.i115, i64 32
  %i.ed = load i32, ptr %i.ec, align 8
  %i.ee = xor i32 %i.ed, -1
  %i.ef = and i32 %i.eb, 16
  %i.eg = and i32 %i.ef, %i.ee
  %.lobit422 = lshr exact i32 %i.eg, 4
  %i.eh = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.dw, i64 noundef %i.dy, ptr noundef nonnull @.str.55, i32 noundef %.lobit422) #19 ; 2 uses
  %.not40.us42.i118 = icmp eq i32 %i.eh, 0
  br i1 %.not40.us42.i118, label %cdrom_print_info.exit, label %bb.t

bb.t:                                             ; preds = %.lr.ph.split.us37.i114
  %i.ei = add i32 %i.eh, %.14                     ; 2 uses
  %.pn.us43.i119 = load ptr, ptr %.pn6.us39.i115, align 8 ; 2 uses
  %.not1.us45.i120 = icmp eq ptr %.pn.us43.i119, @cdrom_list
  br i1 %.not1.us45.i120, label %.loopexit458, label %.lr.ph.split.us37.i114, !llvm.loop !136

.loopexit458:                                     ; preds = %bb.t, %bb.s
  %.15.ph = phi i32 [ %i.du, %bb.s ], [ %i.ei, %bb.t ] ; 3 uses
  %i.ej = sext i32 %.15.ph to i64
  %i.ek = getelementptr i8, ptr @cdrom_sysctl_settings, i64 %i.ej
  %i.el = sub i32 1000, %.15.ph
  %i.em = sext i32 %i.el to i64
  %i.en = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.ek, i64 noundef %i.em, ptr noundef nonnull @.str.40) #19 ; 2 uses
  %.not.i123 = icmp eq i32 %i.en, 0
  br i1 %.not.i123, label %cdrom_print_info.exit, label %bb.u

bb.u:                                             ; preds = %.loopexit458
  %i.eo = add i32 %i.en, %.15.ph                  ; 2 uses
  %.pn2.i124 = load ptr, ptr @cdrom_list, align 8 ; 2 uses
  %.not14.i125 = icmp eq ptr %.pn2.i124, @cdrom_list
  br i1 %.not14.i125, label %.loopexit456, label %.lr.ph.split.us37.i127

.lr.ph.split.us37.i127:                           ; preds = %bb.u, %bb.v
  %.16 = phi i32 [ %i.fc, %bb.v ], [ %i.eo, %bb.u ] ; 3 uses
end_hunk_3
begin_hunk_4_@cdrom_sysctl_info:bb.a

bb.am:                                            ; preds = %.loopexit440
  %i.lm = add i32 %i.ll, %.33.ph                  ; 2 uses
  %.pn2.i241 = load ptr, ptr @cdrom_list, align 8 ; 2 uses
  %.not14.i242 = icmp eq ptr %.pn2.i241, @cdrom_list
  br i1 %.not14.i242, label %.loopexit438, label %.lr.ph.split.us37.i244

.lr.ph.split.us37.i244:                           ; preds = %bb.am, %bb.an
  %.34 = phi i32 [ %i.ma, %bb.an ], [ %i.lm, %bb.am ] ; 3 uses
  %.pn6.us39.i245 = phi ptr [ %.pn.us43.i249, %bb.an ], [ %.pn2.i241, %bb.am ] ; 3 uses
  %.0367.us38.i247 = getelementptr i8, ptr %.pn6.us39.i245, i64 -8
  %i.ln = sext i32 %.34 to i64
  %i.lo = getelementptr i8, ptr @cdrom_sysctl_settings, i64 %i.ln
  %i.lp = sub i32 1000, %.34
  %i.lq = sext i32 %i.lp to i64
  %i.lr = load ptr, ptr %.0367.us38.i247, align 8
  %i.ls = getelementptr i8, ptr %i.lr, i64 104
  %i.lt = load i32, ptr %i.ls, align 8
  %i.lu = getelementptr i8, ptr %.pn6.us39.i245, i64 32
  %i.lv = load i32, ptr %i.lu, align 8
  %i.lw = xor i32 %i.lv, -1
  %i.lx = and i32 %i.lt, 524288
  %i.ly = and i32 %i.lx, %i.lw
  %.lobit432 = lshr exact i32 %i.ly, 19
  %i.lz = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.lo, i64 noundef %i.lq, ptr noundef nonnull @.str.55, i32 noundef %.lobit432) #19 ; 2 uses
  %.not40.us42.i248 = icmp eq i32 %i.lz, 0
  br i1 %.not40.us42.i248, label %cdrom_print_info.exit, label %bb.an

bb.an:                                            ; preds = %.lr.ph.split.us37.i244
  %i.ma = add i32 %i.lz, %.34                     ; 2 uses
  %.pn.us43.i249 = load ptr, ptr %.pn6.us39.i245, align 8 ; 2 uses
  %.not1.us45.i250 = icmp eq ptr %.pn.us43.i249, @cdrom_list
  br i1 %.not1.us45.i250, label %.loopexit438, label %.lr.ph.split.us37.i244, !llvm.loop !136

.loopexit438:                                     ; preds = %bb.an, %bb.am
  %.35.ph = phi i32 [ %i.lm, %bb.am ], [ %i.ma, %bb.an ] ; 3 uses
  %i.mb = sext i32 %.35.ph to i64
  %i.mc = getelementptr i8, ptr @cdrom_sysctl_settings, i64 %i.mb
  %i.md = sub i32 1000, %.35.ph
  %i.me = sext i32 %i.md to i64
  %i.mf = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.mc, i64 noundef %i.me, ptr noundef nonnull @.str.50) #19 ; 2 uses
  %.not.i253 = icmp eq i32 %i.mf, 0
  br i1 %.not.i253, label %cdrom_print_info.exit, label %bb.ao

bb.ao:                                            ; preds = %.loopexit438
  %i.mg = add i32 %i.mf, %.35.ph                  ; 2 uses
  %.pn2.i254 = load ptr, ptr @cdrom_list, align 8 ; 2 uses
  %.not14.i255 = icmp eq ptr %.pn2.i254, @cdrom_list
  br i1 %.not14.i255, label %.loopexit436, label %.lr.ph.split.us37.i257

.lr.ph.split.us37.i257:                           ; preds = %bb.ao, %bb.ap
  %.36 = phi i32 [ %i.mu, %bb.ap ], [ %i.mg, %bb.ao ] ; 3 uses
  %.pn6.us39.i258 = phi ptr [ %.pn.us43.i262, %bb.ap ], [ %.pn2.i254, %bb.ao ] ; 3 uses
  %.0367.us38.i260 = getelementptr i8, ptr %.pn6.us39.i258, i64 -8
  %i.mh = sext i32 %.36 to i64
  %i.mi = getelementptr i8, ptr @cdrom_sysctl_settings, i64 %i.mh
  %i.mj = sub i32 1000, %.36
  %i.mk = sext i32 %i.mj to i64
  %i.ml = load ptr, ptr %.0367.us38.i260, align 8
  %i.mm = getelementptr i8, ptr %i.ml, i64 104
  %i.mn = load i32, ptr %i.mm, align 8
  %i.mo = getelementptr i8, ptr %.pn6.us39.i258, i64 32
  %i.mp = load i32, ptr %i.mo, align 8
  %i.mq = xor i32 %i.mp, -1
  %i.mr = and i32 %i.mn, 1048576
  %i.ms = and i32 %i.mr, %i.mq
  %.lobit433 = lshr exact i32 %i.ms, 20
  %i.mt = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.mi, i64 noundef %i.mk, ptr noundef nonnull @.str.55, i32 noundef %.lobit433) #19 ; 2 uses
  %.not40.us42.i261 = icmp eq i32 %i.mt, 0
  br i1 %.not40.us42.i261, label %cdrom_print_info.exit, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.split.us37.i257
  %i.mu = add i32 %i.mt, %.36                     ; 2 uses
  %.pn.us43.i262 = load ptr, ptr %.pn6.us39.i258, align 8 ; 2 uses
  %.not1.us45.i263 = icmp eq ptr %.pn.us43.i262, @cdrom_list
  br i1 %.not1.us45.i263, label %.loopexit436, label %.lr.ph.split.us37.i257, !llvm.loop !136

.loopexit436:                                     ; preds = %bb.ap, %bb.ao
  %.37.ph = phi i32 [ %i.mg, %bb.ao ], [ %i.mu, %bb.ap ] ; 3 uses
  %i.mv = sext i32 %.37.ph to i64
  %i.mw = getelementptr i8, ptr @cdrom_sysctl_settings, i64 %i.mv
  %i.mx = sub i32 1000, %.37.ph
  %i.my = sext i32 %i.mx to i64
  %i.mz = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.mw, i64 noundef %i.my, ptr noundef nonnull @.str.51) #19 ; 2 uses
  %.not.i266 = icmp eq i32 %i.mz, 0
  br i1 %.not.i266, label %cdrom_print_info.exit, label %bb.aq

bb.aq:                                            ; preds = %.loopexit436
  %i.na = add i32 %i.mz, %.37.ph                  ; 2 uses
  %.pn2.i267 = load ptr, ptr @cdrom_list, align 8 ; 2 uses
  %.not14.i268 = icmp eq ptr %.pn2.i267, @cdrom_list
  br i1 %.not14.i268, label %.loopexit, label %.lr.ph.split.us37.i270

.lr.ph.split.us37.i270:                           ; preds = %bb.aq, %bb.ar
  %.38 = phi i32 [ %i.no, %bb.ar ], [ %i.na, %bb.aq ] ; 3 uses
  %.pn6.us39.i271 = phi ptr [ %.pn.us43.i275, %bb.ar ], [ %.pn2.i267, %bb.aq ] ; 3 uses
  %.0367.us38.i273 = getelementptr i8, ptr %.pn6.us39.i271, i64 -8
  %i.nb = sext i32 %.38 to i64
  %i.nc = getelementptr i8, ptr @cdrom_sysctl_settings, i64 %i.nb
  %i.nd = sub i32 1000, %.38
  %i.ne = sext i32 %i.nd to i64
  %i.nf = load ptr, ptr %.0367.us38.i273, align 8
  %i.ng = getelementptr i8, ptr %i.nf, i64 104
  %i.nh = load i32, ptr %i.ng, align 8
  %i.ni = getelementptr i8, ptr %.pn6.us39.i271, i64 32
  %i.nj = load i32, ptr %i.ni, align 8
  %i.nk = xor i32 %i.nj, -1
  %i.nl = and i32 %i.nh, 2097152
  %i.nm = and i32 %i.nl, %i.nk
  %.lobit434 = lshr exact i32 %i.nm, 21
  %i.nn = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.nc, i64 noundef %i.ne, ptr noundef nonnull @.str.55, i32 noundef %.lobit434) #19 ; 2 uses
  %.not40.us42.i274 = icmp eq i32 %i.nn, 0
  br i1 %.not40.us42.i274, label %cdrom_print_info.exit, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.split.us37.i270
  %i.no = add i32 %i.nn, %.38                     ; 2 uses
  %.pn.us43.i275 = load ptr, ptr %.pn6.us39.i271, align 8 ; 2 uses
  %.not1.us45.i276 = icmp eq ptr %.pn.us43.i275, @cdrom_list
  br i1 %.not1.us45.i276, label %.loopexit, label %.lr.ph.split.us37.i270, !llvm.loop !136

.loopexit:                                        ; preds = %bb.ar, %bb.aq
  %.39.ph = phi i32 [ %i.na, %bb.aq ], [ %i.no, %bb.ar ] ; 2 uses
  %i.np = sext i32 %.39.ph to i64
  %i.nq = getelementptr i8, ptr @cdrom_sysctl_settings, i64 %i.np
  %i.nr = sub i32 1000, %.39.ph
  %i.ns = sext i32 %i.nr to i64
  %i.nt = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.nq, i64 noundef %i.ns, ptr noundef nonnull @.str.52) #19
  %.not52 = icmp eq i32 %i.nt, 0
  br i1 %.not52, label %cdrom_print_info.exit, label %bb.as

bb.as:                                            ; preds = %.loopexit, %cdrom_print_info.exit
  tail call void @mutex_unlock(ptr noundef nonnull @cdrom_mutex) #19
  %i.nu = tail call i32 @proc_dostring(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #19
  br label %bb.at

cdrom_print_info.exit:                            ; preds = %.lr.ph.split.us.i, %.lr.ph.split.us11.i, %.lr.ph.split.us24.i, %.lr.ph.split.us37.i, %.lr.ph.split.us37.i75, %.lr.ph.split.us37.i88, %.lr.ph.split.us37.i101, %.lr.ph.split.us37.i114, %.lr.ph.split.us37.i127, %.lr.ph.split.us37.i140, %.lr.ph.split.us37.i153, %.lr.ph.split.us37.i166, %.lr.ph.split.us37.i179, %.lr.ph.split.us37.i192, %.lr.ph.split.us37.i205, %.lr.ph.split.us37.i218, %.lr.ph.split.us37.i231, %.lr.ph.split.us37.i244, %.lr.ph.split.us37.i257, %.lr.ph.split.us37.i270, %.loopexit436, %.loopexit438, %.loopexit440, %.loopexit442, %.loopexit444, %.loopexit446, %.loopexit448, %.loopexit450, %.loopexit452, %.loopexit454, %.loopexit456, %.loopexit458, %.loopexit460, %.loopexit462, %.loopexit464, %.loopexit466, %.loopexit468, %.loopexit470, %.loopexit472, %bb.d, %.loopexit
  %i.nv = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #17 ; 0 uses
  br label %bb.as

bb.at:                                            ; preds = %bb.as, %bb.c
  %.0 = phi i32 [ %i.nu, %bb.as ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cdrom_sysctl_handler(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @proc_dointvec(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #19
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdrom_sysctl_settings, i64 1000), align 4
  %i.c = icmp ne i32 %i.b, 0
  %i.d = zext i1 %i.c to i8
  store i8 %i.d, ptr @autoclose, align 1
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdrom_sysctl_settings, i64 1004), align 4
  %i.f = icmp ne i32 %i.e, 0
  %i.g = zext i1 %i.f to i8
  store i8 %i.g, ptr @autoeject, align 1
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdrom_sysctl_settings, i64 1008), align 4
  %i.i = icmp ne i32 %i.h, 0
  %i.j = zext i1 %i.i to i8
  store i8 %i.j, ptr @debug, align 1
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdrom_sysctl_settings, i64 1012), align 4
  %i.l = icmp ne i32 %i.k, 0
  %i.m = zext i1 %i.l to i8
  store i8 %i.m, ptr @lockdoor, align 1
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdrom_sysctl_settings, i64 1016), align 4
  %i.o = icmp ne i32 %i.n, 0
  %i.p = zext i1 %i.o to i8
  store i8 %i.p, ptr @check_media_type, align 1
  tail call void @mutex_lock(ptr noundef nonnull @cdrom_mutex) #19
  %.pn25.i = load ptr, ptr @cdrom_list, align 8   ; 8 uses
  %.026.i = getelementptr i8, ptr %.pn25.i, i64 -8 ; 4 uses
  %.not27.i = icmp eq ptr %.pn25.i, @cdrom_list
  br i1 %.not27.i, label %cdrom_update_settings.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.q = load i8, ptr @autoclose, align 1, !range !17, !noundef !18
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = load i8, ptr @autoeject, align 1, !range !17, !noundef !18
  %i.t = trunc nuw i8 %i.s to i1                  ; 2 uses
  %i.u = load i8, ptr @lockdoor, align 1, !range !17, !noundef !18
  %i.v = trunc nuw i8 %i.u to i1                  ; 3 uses
  %i.w = load i8, ptr @check_media_type, align 1, !range !17, !noundef !18
  %i.x = trunc nuw i8 %i.w to i1                  ; 4 uses
  br i1 %i.r, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  %masksel64.i = select i1 %i.x, i32 16, i32 0
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %.thread24.us.i
  %.029.us.i = phi ptr [ %.0.us.i, %.thread24.us.i ], [ %.026.i, %.lr.ph.split.us.i.preheader ] ; 3 uses
  %.pn28.us.i = phi ptr [ %.pn.us.i, %.thread24.us.i ], [ %.pn25.i, %.lr.ph.split.us.i.preheader ] ; 8 uses
  %i.y = load ptr, ptr %.029.us.i, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 104
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = getelementptr i8, ptr %.pn28.us.i, i64 32
  %i.ac = load i32, ptr %i.ab, align 8
  %5 = xor i32 %i.ac, -1                          ; 3 uses
  %i.ad = and i32 %i.aa, 1
  %6 = and i32 %i.ad, %5
  %.not20.us.i = icmp eq i32 %6, 0
  br i1 %.not20.us.i, label %.thread.us.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us.i
  %i.ae = getelementptr i8, ptr %.pn28.us.i, i64 44 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = or i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4
  br label %.thread.us.i

.thread.us.i:                                     ; preds = %bb.c, %.lr.ph.split.us.i
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread.us.i
  %i.ah = getelementptr i8, ptr %.pn28.us.i, i64 44 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = and i32 %i.ai, -3
  store i32 %i.aj, ptr %i.ah, align 4
  br label %.thread23.us.i

bb.e:                                             ; preds = %.thread.us.i
  %i.ak = load ptr, ptr %.029.us.i, align 8
  %i.al = getelementptr i8, ptr %i.ak, i64 104
  %i.am = load i32, ptr %i.al, align 8
  %i.an = and i32 %5, 2
  %i.ao = and i32 %i.an, %i.am
  %.not21.us.i = icmp eq i32 %i.ao, 0
  br i1 %.not21.us.i, label %.thread23.us.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr i8, ptr %.pn28.us.i, i64 44 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = or i32 %i.aq, 2
  store i32 %i.ar, ptr %i.ap, align 4
  br label %.thread23.us.i

.thread23.us.i:                                   ; preds = %bb.f, %bb.e, %bb.d
  br i1 %i.v, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.thread23.us.i
  %i.as = getelementptr i8, ptr %.pn28.us.i, i64 44
  %i.at = load i32, ptr %i.as, align 4
  %i.au = and i32 %i.at, -9
  br label %.thread24.us.i

bb.h:                                             ; preds = %.thread23.us.i
  %i.av = load ptr, ptr %.029.us.i, align 8
  %i.aw = getelementptr i8, ptr %i.av, i64 104
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = and i32 %5, 4
  %i.az = and i32 %i.ay, %i.ax
  %.not22.us.i = icmp eq i32 %i.az, 0
  %.phi.trans.insert = getelementptr i8, ptr %.pn28.us.i, i64 44
  %.pre = load i32, ptr %.phi.trans.insert, align 4 ; 2 uses
  %i.ba = or i32 %.pre, 8
  %spec.select = select i1 %.not22.us.i, i32 %.pre, i32 %i.ba
  br label %.thread24.us.i

.thread24.us.i:                                   ; preds = %bb.h, %bb.g
  %i.bb = phi i32 [ %i.au, %bb.g ], [ %spec.select, %bb.h ]
  %i.bc = getelementptr i8, ptr %.pn28.us.i, i64 44
  %i.bd = and i32 %i.bb, -17
  %.sink.i = or disjoint i32 %i.bd, %masksel64.i
  store i32 %.sink.i, ptr %i.bc, align 4
  %.pn.us.i = load ptr, ptr %.pn28.us.i, align 8  ; 3 uses
  %.0.us.i = getelementptr i8, ptr %.pn.us.i, i64 -8
  %.not.us.i = icmp eq ptr %.pn.us.i, @cdrom_list
  br i1 %.not.us.i, label %cdrom_update_settings.exit, label %.lr.ph.split.us.i, !llvm.loop !137

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  br i1 %i.t, label %.thread.us30.i.preheader, label %.lr.ph.split.split.i

.thread.us30.i.preheader:                         ; preds = %.lr.ph.split.i
  %masksel.i = select i1 %i.x, i32 16, i32 0
  br label %.thread.us30.i

.thread.us30.i:                                   ; preds = %.thread.us30.i.preheader, %.thread24.us36.i
  %.029.us31.i = phi ptr [ %.0.us38.i, %.thread24.us36.i ], [ %.026.i, %.thread.us30.i.preheader ] ; 2 uses
  %.pn28.us32.i = phi ptr [ %.pn.us37.i, %.thread24.us36.i ], [ %.pn25.i, %.thread.us30.i.preheader ] ; 3 uses
  %i.be = getelementptr i8, ptr %.pn28.us32.i, i64 44 ; 4 uses
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = and i32 %i.bf, -2                       ; 3 uses
  store i32 %i.bg, ptr %i.be, align 4
  %i.bh = load ptr, ptr %.029.us31.i, align 8
  %i.bi = getelementptr i8, ptr %i.bh, i64 104
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = getelementptr i8, ptr %.pn28.us32.i, i64 32
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = xor i32 %i.bl, -1                       ; 2 uses
  %i.bn = and i32 %i.bj, 2
  %i.bo = and i32 %i.bn, %i.bm
  %.not21.us33.i = icmp eq i32 %i.bo, 0
  br i1 %.not21.us33.i, label %.thread23.us34.i, label %bb.i

bb.i:                                             ; preds = %.thread.us30.i
  %i.bp = or i32 %i.bg, 2                         ; 2 uses
  store i32 %i.bp, ptr %i.be, align 4
  br label %.thread23.us34.i

.thread23.us34.i:                                 ; preds = %bb.i, %.thread.us30.i
  %i.bq = phi i32 [ %i.bp, %bb.i ], [ %i.bg, %.thread.us30.i ] ; 3 uses
  br i1 %i.v, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.thread23.us34.i
  %i.br = and i32 %i.bq, -9
  br label %.thread24.us36.i

bb.k:                                             ; preds = %.thread23.us34.i
  %i.bs = load ptr, ptr %.029.us31.i, align 8
  %i.bt = getelementptr i8, ptr %i.bs, i64 104
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = and i32 %i.bm, 4
  %i.bw = and i32 %i.bv, %i.bu
  %.not22.us35.i = icmp eq i32 %i.bw, 0
  %i.bx = or i32 %i.bq, 8
  %spec.select.i = select i1 %.not22.us35.i, i32 %i.bq, i32 %i.bx
  br label %.thread24.us36.i

.thread24.us36.i:                                 ; preds = %bb.k, %bb.j
  %i.by = phi i32 [ %i.br, %bb.j ], [ %spec.select.i, %bb.k ]
  %i.bz = and i32 %i.by, -17
  %storemerge.i = or disjoint i32 %i.bz, %masksel.i
  store i32 %storemerge.i, ptr %i.be, align 4
  %.pn.us37.i = load ptr, ptr %.pn28.us32.i, align 8 ; 3 uses
  %.0.us38.i = getelementptr i8, ptr %.pn.us37.i, i64 -8
  %.not.us39.i = icmp eq ptr %.pn.us37.i, @cdrom_list
  br i1 %.not.us39.i, label %cdrom_update_settings.exit, label %.thread.us30.i, !llvm.loop !137

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i
  br i1 %i.v, label %.lr.ph.split.split.split.us.i, label %.lr.ph.split.split.split.i

.lr.ph.split.split.split.us.i:                    ; preds = %.lr.ph.split.split.i
  br i1 %i.x, label %.thread.us40.us.i, label %.thread.us40.i

.thread.us40.us.i:                                ; preds = %.lr.ph.split.split.split.us.i, %.thread.us40.us.i
  %.029.us41.us.i = phi ptr [ %.0.us46.us.i, %.thread.us40.us.i ], [ %.026.i, %.lr.ph.split.split.split.us.i ]
  %.pn28.us42.us.i = phi ptr [ %.pn.us45.us.i, %.thread.us40.us.i ], [ %.pn25.i, %.lr.ph.split.split.split.us.i ] ; 3 uses
  %i.ca = getelementptr i8, ptr %.pn28.us42.us.i, i64 44 ; 3 uses
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = and i32 %i.cb, -4                       ; 2 uses
  store i32 %i.cc, ptr %i.ca, align 4
  %i.cd = load ptr, ptr %.029.us41.us.i, align 8
  %i.ce = getelementptr i8, ptr %i.cd, i64 104
  %i.cf = load i32, ptr %i.ce, align 8
  %i.cg = getelementptr i8, ptr %.pn28.us42.us.i, i64 32
  %i.ch = load i32, ptr %i.cg, align 8
  %i.ci = xor i32 %i.ch, -1
  %i.cj = and i32 %i.cf, 4
  %i.ck = and i32 %i.cj, %i.ci
  %.not22.us43.us.i = icmp eq i32 %i.ck, 0
  %i.cl = select i1 %.not22.us43.us.i, i32 16, i32 24
  %i.cm = or i32 %i.cl, %i.cc
  store i32 %i.cm, ptr %i.ca, align 4
  %.pn.us45.us.i = load ptr, ptr %.pn28.us42.us.i, align 8 ; 3 uses
  %.0.us46.us.i = getelementptr i8, ptr %.pn.us45.us.i, i64 -8
  %.not.us47.us.i = icmp eq ptr %.pn.us45.us.i, @cdrom_list
  br i1 %.not.us47.us.i, label %cdrom_update_settings.exit, label %.thread.us40.us.i, !llvm.loop !137

.thread.us40.i:                                   ; preds = %.lr.ph.split.split.split.us.i, %.thread.us40.i
  %.029.us41.i = phi ptr [ %.0.us46.i, %.thread.us40.i ], [ %.026.i, %.lr.ph.split.split.split.us.i ]
  %.pn28.us42.i = phi ptr [ %.pn.us45.i, %.thread.us40.i ], [ %.pn25.i, %.lr.ph.split.split.split.us.i ] ; 3 uses
  %i.cn = getelementptr i8, ptr %.pn28.us42.i, i64 44 ; 3 uses
  %i.co = load i32, ptr %i.cn, align 4            ; 3 uses
  %i.cp = and i32 %i.co, -4
  store i32 %i.cp, ptr %i.cn, align 4
  %i.cq = load ptr, ptr %.029.us41.i, align 8
  %i.cr = getelementptr i8, ptr %i.cq, i64 104
  %i.cs = load i32, ptr %i.cr, align 8
  %i.ct = getelementptr i8, ptr %.pn28.us42.i, i64 32
  %i.cu = load i32, ptr %i.ct, align 8
  %i.cv = xor i32 %i.cu, -1
  %i.cw = and i32 %i.cs, 4
  %i.cx = and i32 %i.cw, %i.cv
  %.not22.us43.i = icmp eq i32 %i.cx, 0
  %i.cy = or i32 %i.co, 8
  %spec.select63.i = select i1 %.not22.us43.i, i32 %i.co, i32 %i.cy
  %i.cz = and i32 %spec.select63.i, -20
  store i32 %i.cz, ptr %i.cn, align 4
  %.pn.us45.i = load ptr, ptr %.pn28.us42.i, align 8 ; 3 uses
  %.0.us46.i = getelementptr i8, ptr %.pn.us45.i, i64 -8
  %.not.us47.i = icmp eq ptr %.pn.us45.i, @cdrom_list
  br i1 %.not.us47.i, label %cdrom_update_settings.exit, label %.thread.us40.i, !llvm.loop !137

.lr.ph.split.split.split.i:                       ; preds = %.lr.ph.split.split.i
  br i1 %i.x, label %.thread.us48.i, label %.thread.i

.thread.us48.i:                                   ; preds = %.lr.ph.split.split.split.i, %.thread.us48.i
  %.pn28.us49.i = phi ptr [ %.pn.us50.i, %.thread.us48.i ], [ %.pn25.i, %.lr.ph.split.split.split.i ] ; 2 uses
  %i.da = getelementptr i8, ptr %.pn28.us49.i, i64 44 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4
  %i.dc = and i32 %i.db, -28
  %i.dd = or disjoint i32 %i.dc, 16
  store i32 %i.dd, ptr %i.da, align 4
  %.pn.us50.i = load ptr, ptr %.pn28.us49.i, align 8 ; 2 uses
  %.not.us51.i = icmp eq ptr %.pn.us50.i, @cdrom_list
  br i1 %.not.us51.i, label %cdrom_update_settings.exit, label %.thread.us48.i, !llvm.loop !137

.thread.i:                                        ; preds = %.lr.ph.split.split.split.i, %.thread.i
  %.pn28.i = phi ptr [ %.pn.i, %.thread.i ], [ %.pn25.i, %.lr.ph.split.split.split.i ] ; 2 uses
  %i.de = getelementptr i8, ptr %.pn28.i, i64 44  ; 2 uses
  %i.df = load i32, ptr %i.de, align 4
  %i.dg = and i32 %i.df, -28
  store i32 %i.dg, ptr %i.de, align 4
  %.pn.i = load ptr, ptr %.pn28.i, align 8        ; 2 uses
  %.not.i = icmp eq ptr %.pn.i, @cdrom_list
  br i1 %.not.i, label %cdrom_update_settings.exit, label %.thread.i, !llvm.loop !137

cdrom_update_settings.exit:                       ; preds = %.thread.i, %.thread.us48.i, %.thread.us40.i, %.thread.us40.us.i, %.thread24.us36.i, %.thread24.us.i, %bb.b
  tail call void @mutex_unlock(ptr noundef nonnull @cdrom_mutex) #19
  br label %bb.l

bb.l:                                             ; preds = %cdrom_update_settings.exit, %bb.a
  ret i32 %i.a
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @proc_dostring(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @unregister_sysctl_table(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #9 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(1) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(read) }
end_hunk_4
