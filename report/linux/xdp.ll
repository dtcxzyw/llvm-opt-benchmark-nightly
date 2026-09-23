Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/xdp?download=true
inline.NumInlined: 227
inline.NumDeleted: 109
begin_hunk_0_@xdp_build_skb_from_zc:bb.a
  %i.aq = load i8, ptr %i.ap, align 2
  %i.ar = or i8 %i.aq, -128
  store i8 %i.ar, ptr %i.ap, align 2
  %i.as = load ptr, ptr %i.f, align 8
  %i.at = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw                    ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = getelementptr i8, ptr %i.ao, i64 208    ; 4 uses
  %i.ba = load ptr, ptr %i.az, align 8
  %sext = shl i64 %i.ax, 32
  %i.bb = ashr exact i64 %sext, 32
  %i.bc = getelementptr i8, ptr %i.ba, i64 %i.bb
  store ptr %i.bc, ptr %i.az, align 8
  %i.bd = getelementptr i8, ptr %i.ao, i64 188    ; 3 uses
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = add i32 %i.be, %i.ay                    ; 3 uses
  store i32 %i.bf, ptr %i.bd, align 4
  %i.bg = getelementptr i8, ptr %i.ao, i64 116    ; 2 uses
  %.val7.i = load i32, ptr %i.bg, align 4
  %.not.i = icmp eq i32 %.val7.i, 0
  br i1 %.not.i, label %__skb_put.exit, label %bb.i, !prof !12

bb.i:                                             ; preds = %bb.h
  call void asm sideeffect "649: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 649b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 649) #20, !srcloc !31
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.8, ptr nonnull @.str.13, i32 2772, i32 0, i64 16) #20, !srcloc !32
  unreachable

__skb_put.exit:                                   ; preds = %bb.h
  %i.bh = getelementptr i8, ptr %i.ao, i64 200    ; 2 uses
  %.val6.i = load ptr, ptr %i.bh, align 8
  %i.bi = zext i32 %i.bf to i64
  %i.bj = getelementptr i8, ptr %.val6.i, i64 %i.bi
  %i.bk = add i32 %i.bf, %i.k
  store i32 %i.bk, ptr %i.bd, align 4
  %i.bl = getelementptr i8, ptr %i.ao, i64 112    ; 4 uses
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = add i32 %i.bm, %i.k
  store i32 %i.bn, ptr %i.bl, align 8
  %i.bo = load ptr, ptr %i.f, align 8
  %i.bp = add i64 %i.j, 15
  %i.bq = and i64 %i.bp, 4294967280
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr align 1 %i.bo, i64 %i.bq, i1 false)
  %i.br = load ptr, ptr %0, align 8
  %i.bs = load ptr, ptr %i.f, align 8
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 3 uses
  %i.bw = trunc i64 %i.bv to i32                  ; 2 uses
  %i.bx = icmp sgt i32 %i.bw, 0
  br i1 %i.bx, label %bb.j, label %bb.l

bb.j:                                             ; preds = %__skb_put.exit
  %i.by = trunc i64 %i.bv to i8
  %i.bz = getelementptr i8, ptr %i.ao, i64 192
  %.val = load i32, ptr %i.bz, align 8
  %.val54 = load ptr, ptr %i.bh, align 8
  %i.ca = zext i32 %.val to i64
  %i.cb = getelementptr i8, ptr %.val54, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 1
  store i8 %i.by, ptr %i.cc, align 1
  %i.cd = load i32, ptr %i.bl, align 8
  %i.ce = sub i32 %i.cd, %i.bw                    ; 2 uses
  store i32 %i.ce, ptr %i.bl, align 8
  %i.cf = load i32, ptr %i.bg, align 4
  %i.cg = icmp ult i32 %i.ce, %i.cf
  br i1 %i.cg, label %bb.k, label %__skb_pull.exit, !prof !17

bb.k:                                             ; preds = %bb.j
  call void asm sideeffect "650: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 650b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 650) #20, !srcloc !65
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.8, ptr nonnull @.str.13, i32 2847, i32 0, i64 16) #20, !srcloc !66
  unreachable

__skb_pull.exit:                                  ; preds = %bb.j
  %i.ch = load ptr, ptr %i.az, align 8
  %i.ci = and i64 %i.bv, 2147483647
  %i.cj = getelementptr i8, ptr %i.ch, i64 %i.ci
  store ptr %i.cj, ptr %i.az, align 8
  br label %bb.l

bb.l:                                             ; preds = %__skb_pull.exit, %__skb_put.exit
  %i.ck = getelementptr i8, ptr %i.c, i64 8
  %i.cl = load i32, ptr %i.ck, align 8
  %i.cm = trunc i32 %i.cl to i16
  %i.cn = add i16 %i.cm, 1
  %i.co = getelementptr i8, ptr %i.ao, i64 124
  store i16 %i.cn, ptr %i.co, align 4
  %i.cp = getelementptr i8, ptr %0, i64 52
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = trunc i32 %i.cq to i1
  br i1 %i.cr, label %bb.m, label %bb.o, !prof !17

bb.m:                                             ; preds = %bb.l
  %.val55 = load ptr, ptr %i.at, align 8
  %.val56 = load i32, ptr %i.l, align 8
  %i.cs = call fastcc zeroext i1 @xdp_copy_frags_from_zc(ptr noundef nonnull %i.ao, ptr %.val55, i32 %.val56, ptr noundef %i.p) #21
  br i1 %i.cs, label %bb.o, label %bb.n, !prof !12

bb.n:                                             ; preds = %bb.m
  call void @napi_consume_skb(ptr noundef nonnull %i.ao, i32 noundef 1) #19
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.ct = load ptr, ptr %i.c, align 64
  %i.cu = call zeroext i16 @eth_type_trans(ptr noundef nonnull %i.ao, ptr noundef %i.ct) #19
  %i.cv = getelementptr i8, ptr %i.ao, i64 180
  store i16 %i.cu, ptr %i.cv, align 4
  br label %bb.p

bb.p:                                             ; preds = %page_pool_dev_alloc_va.exit.thread, %bb.g, %bb.n, %bb.o, %page_pool_dev_alloc_va.exit
  %.0 = phi ptr [ null, %page_pool_dev_alloc_va.exit ], [ null, %bb.g ], [ null, %bb.n ], [ %i.ao, %bb.o ], [ null, %page_pool_dev_alloc_va.exit.thread ]
  %i.cw = call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @this_cpu_off) #24, !srcloc !67 ; 0 uses
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @page_pool_free_va(ptr noundef %0, ptr noundef %1) unnamed_addr #8 align 16 {
bb.a:
  %i.a = load i64, ptr @vmemmap_base, align 8
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = ptrtoint ptr %1 to i64
  %i.d = add i64 %i.c, 2147483648
  %i.e = icmp ugt ptr %1, inttoptr (i64 -2147483649 to ptr)
  %i.f = load i64, ptr @phys_base, align 8
  %i.g = load i64, ptr @page_offset_base, align 8
  %i.h = sub i64 -2147483648, %i.g
  %i.i = select i1 %i.e, i64 %i.f, i64 %i.h
  %i.j = add i64 %i.d, %i.i
  %i.k = lshr i64 %i.j, 12
  %i.l = getelementptr [64 x i8], ptr %i.b, i64 %i.k ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = load volatile i64, ptr %i.m, align 8     ; 2 uses
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = and i64 %i.n, 1
  %i.q = add nsw i64 %i.p, -1
  %i.r = or i64 %i.q, %i.n
  %i.s = and i64 %i.r, %i.o                       ; 2 uses
  %i.t = and i64 %i.s, -2
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr i8, ptr %i.u, i64 40       ; 4 uses
  %i.w = load volatile i64, ptr %i.v, align 8
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = tail call i64 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddq ${0:q}, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.v, i64 -1, ptr elementtype(i64) %i.v) #20, !srcloc !25
  %i.z = add i64 %i.y, -1                         ; 2 uses
  %i.aa = icmp slt i64 %i.z, 0
  br i1 %i.aa, label %.thread.i.i.i.i, label %bb.c, !prof !17

.thread.i.i.i.i:                                  ; preds = %bb.b
  tail call void asm sideeffect "876: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 876b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 876) #20, !srcloc !26
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.8, ptr nonnull @.str.11, i32 297, i32 2305, i64 16) #20, !srcloc !27
  tail call void asm sideeffect "877: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 877b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 877) #20, !srcloc !28
  br label %page_pool_put_page.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %page_pool_put_page.exit, !prof !29

bb.d:                                             ; preds = %bb.c
  store volatile i64 1, ptr %i.v, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  tail call void @page_pool_put_unrefed_netmem(ptr noundef %0, i64 noundef %i.s, i32 noundef -1, i1 noundef zeroext true) #19
  br label %page_pool_put_page.exit

page_pool_put_page.exit:                          ; preds = %.thread.i.i.i.i, %bb.c, %bb.e
  ret void
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noundef zeroext i1 @xdp_copy_frags_from_zc(ptr nofree noundef captures(none) %0, ptr nofree readonly captures(none) %.24.val, i32 %.48.val, ptr noundef %1) unnamed_addr #9 align 16 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = getelementptr i8, ptr %0, i64 192        ; 2 uses
  %.val43 = load i32, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %0, i64 200        ; 2 uses
  %.val44 = load ptr, ptr %i.c, align 8           ; 2 uses
  %i.d = zext i32 %.val43 to i64                  ; 2 uses
  %i.e = getelementptr i8, ptr %.val44, i64 %i.d  ; 2 uses
  %i.f = zext i32 %.48.val to i64
  %i.g = getelementptr i8, ptr %.24.val, i64 %i.f ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -318
  %i.i = load i8, ptr %i.h, align 2               ; 3 uses
  %.not29 = icmp eq i8 %i.i, 0
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.g, i64 -272
  %i.k = getelementptr i8, ptr %1, i64 80         ; 2 uses
  %i.l = getelementptr i8, ptr %i.e, i64 48
  %wide.trip.count = zext i8 %i.i to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 4 uses
  %.03331 = phi i8 [ 0, %.lr.ph ], [ %spec.select, %bb.i ]
  %.03530 = phi i32 [ 0, %.lr.ph ], [ %i.bb, %bb.i ]
  %i.m = getelementptr [16 x i8], ptr %i.j, i64 %indvars.iv ; 3 uses
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %.val45 = load i32, ptr %i.n, align 8           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 0, ptr %i.a, align 4, !annotation !24
  %i.o = load i32, ptr %1, align 64
  %i.p = zext nneg i32 %i.o to i64
  %i.q = shl i64 4096, %i.p
  %i.r = trunc i64 %i.q to i32                    ; 5 uses
  %i.s = shl i32 %.val45, 1
  %i.t = icmp ugt i32 %i.s, %i.r
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = call i64 @page_pool_alloc_netmems(ptr noundef %1, i32 noundef 10272) #19
  br label %page_pool_alloc_netmem.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.v = call i64 @page_pool_alloc_frag_netmem(ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef %.val45, i32 noundef 10272) #19 ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i, label %page_pool_dev_alloc.exit.thread9, label %bb.e, !prof !17

bb.e:                                             ; preds = %bb.d
  %i.w = load i32, ptr %i.k, align 16
  %i.x = add i32 %i.w, %.val45
  %i.y = icmp ugt i32 %i.x, %i.r
  br i1 %i.y, label %bb.f, label %page_pool_alloc_netmem.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.z = load i32, ptr %i.a, align 4
  %i.aa = sub i32 %i.r, %i.z
  store i32 %i.r, ptr %i.k, align 16
  br label %page_pool_alloc_netmem.exit.i.i

page_pool_alloc_netmem.exit.i.i:                  ; preds = %bb.f, %bb.e, %bb.c
  %.0 = phi i32 [ %i.r, %bb.c ], [ %i.aa, %bb.f ], [ %.val45, %bb.e ]
  %.0.i.i.i = phi i64 [ %i.u, %bb.c ], [ %i.v, %bb.f ], [ %i.v, %bb.e ] ; 5 uses
  %i.ab = trunc i64 %.0.i.i.i to i1
  br i1 %i.ab, label %page_pool_dev_alloc.exit.thread, label %page_pool_dev_alloc.exit, !prof !33

page_pool_dev_alloc.exit.thread:                  ; preds = %page_pool_alloc_netmem.exit.i.i
  call void asm sideeffect "625: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 625b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 625) #20, !srcloc !34
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.8, ptr nonnull @.str.10, i32 165, i32 2307, i64 16) #20, !srcloc !35
  call void asm sideeffect "626: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 626b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 626) #20, !srcloc !36
  br label %page_pool_dev_alloc.exit.thread9

page_pool_dev_alloc.exit:                         ; preds = %page_pool_alloc_netmem.exit.i.i
  %i.ac = inttoptr i64 %.0.i.i.i to ptr
  %.not.not = icmp eq i64 %.0.i.i.i, 0
  br i1 %.not.not, label %page_pool_dev_alloc.exit.thread9, label %bb.g, !prof !37

bb.g:                                             ; preds = %page_pool_dev_alloc.exit
  %i.ad = load i64, ptr @vmemmap_base, align 8    ; 2 uses
  %i.ae = sub i64 %.0.i.i.i, %i.ad
  %i.af = shl i64 %i.ae, 6
  %i.ag = load i64, ptr @page_offset_base, align 8 ; 2 uses
  %i.ah = add i64 %i.af, %i.ag
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load i32, ptr %i.a, align 4
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr i8, ptr %i.ai, i64 %i.ak
  %.val4.i = load i64, ptr %i.m, align 8          ; 3 uses
  %i.am = trunc i64 %.val4.i to i1
  %.not7.i = icmp eq i64 %.val4.i, 0
  %.not.i = or i1 %.not7.i, %i.am
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = sub i64 %.val4.i, %i.ad
  %i.ao = shl i64 %i.an, 6
  %i.ap = add i64 %i.ao, %i.ag
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr i8, ptr %i.m, i64 12
  %.val5.i = load i32, ptr %i.ar, align 4
  %i.as = zext i32 %.val5.i to i64
  %i.at = getelementptr i8, ptr %i.aq, i64 %i.as
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0.i = phi ptr [ %i.at, %bb.h ], [ null, %bb.g ]
  %i.au = add i32 %.val45, 15
  %i.av = and i32 %i.au, -16
  %i.aw = zext i32 %i.av to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr align 1 %.0.i, i64 %i.aw, i1 false)
  %i.ax = load i32, ptr %i.a, align 4
  %i.ay = getelementptr [16 x i8], ptr %i.l, i64 %indvars.iv ; 3 uses
  store i64 %.0.i.i.i, ptr %i.ay, align 8
  %i.az = getelementptr i8, ptr %i.ay, i64 12
  store i32 %i.ax, ptr %i.az, align 4
  %i.ba = getelementptr i8, ptr %i.ay, i64 8
  store i32 %.val45, ptr %i.ba, align 8
  %i.bb = add i32 %.0, %.03530                    ; 2 uses
  %i.bc = getelementptr i8, ptr %i.ac, i64 8
  %.val46 = load ptr, ptr %i.bc, align 8
  %i.bd = ptrtoint ptr %.val46 to i64
  %2 = trunc i64 %i.bd to i8
  %3 = and i8 %2, 2
  %spec.select = or i8 %3, %.03331                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !68

page_pool_dev_alloc.exit.thread9:                 ; preds = %bb.d, %page_pool_dev_alloc.exit, %page_pool_dev_alloc.exit.thread
  %i.be = trunc i64 %indvars.iv to i8
  %i.bf = getelementptr i8, ptr %i.e, i64 2
  store i8 %i.be, ptr %i.bf, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.j

._crit_edge.loopexit:                             ; preds = %bb.i
  %.val.i.pre = load i32, ptr %i.b, align 8
  %.val13.i.pre = load ptr, ptr %i.c, align 8
  %.pre = zext i32 %.val.i.pre to i64
  %i.bg = shl nuw nsw i8 %spec.select, 5
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.d, %bb.a ]
  %.val13.i = phi ptr [ %.val13.i.pre, %._crit_edge.loopexit ], [ %.val44, %bb.a ]
  %.035.lcssa = phi i32 [ %i.bb, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %.033.lcssa = phi i8 [ %i.bg, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.bh = getelementptr i8, ptr %i.g, i64 -280
  %i.bi = load i32, ptr %i.bh, align 8            ; 2 uses
  %i.bj = getelementptr i8, ptr %.val13.i, i64 %.pre-phi ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 2
  store i8 %i.i, ptr %i.bk, align 2
  %i.bl = getelementptr i8, ptr %i.bj, i64 40
  store ptr null, ptr %i.bl, align 8
  %i.bm = getelementptr i8, ptr %0, i64 112       ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8
  %i.bo = add i32 %i.bn, %i.bi
  store i32 %i.bo, ptr %i.bm, align 8
  %i.bp = getelementptr i8, ptr %0, i64 116       ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = add i32 %i.bq, %i.bi
  store i32 %i.br, ptr %i.bp, align 4
  %i.bs = getelementptr i8, ptr %0, i64 216       ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8
  %i.bu = add i32 %i.bt, %.035.lcssa
  store i32 %i.bu, ptr %i.bs, align 8
  %i.bv = getelementptr i8, ptr %0, i64 126       ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 2
  %i.bx = or i8 %i.bw, %.033.lcssa
  store i8 %i.bx, ptr %i.bv, align 2
  br label %bb.j

bb.j:                                             ; preds = %page_pool_dev_alloc.exit.thread9, %._crit_edge
  %.not20 = phi i1 [ false, %page_pool_dev_alloc.exit.thread9 ], [ true, %._crit_edge ]
  ret i1 %.not20
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @napi_consume_skb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @__xdp_build_skb_from_frame(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = zext i32 %i.c to i64
  %i.e = sub nsw i64 0, %i.d
  %i.f = getelementptr i8, ptr %i.a, i64 %i.e
  %i.g = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr i8, ptr %i.f, i64 %i.i     ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 36         ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = trunc i32 %i.l to i1
  br i1 %i.m, label %bb.b, label %bb.c, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %i.j, i64 -358
  %i.o = load i8, ptr %i.n, align 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i8 [ %i.o, %bb.b ], [ 0, %bb.a ]      ; 2 uses
  %i.p = add i32 %i.c, 40                         ; 3 uses
  %i.q = zext i32 %i.p to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr i8, ptr %i.a, i64 %i.r
  %i.t = tail call ptr @build_skb_around(ptr noundef %1, ptr noundef %i.s, i32 noundef %i.h) #19 ; 12 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.l, label %bb.d, !prof !17

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr i8, ptr %i.t, i64 208      ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = sext i32 %i.p to i64
  %i.x = getelementptr i8, ptr %i.v, i64 %i.w
  store ptr %i.x, ptr %i.u, align 8
  %i.y = getelementptr i8, ptr %i.t, i64 188      ; 3 uses
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = add i32 %i.z, %i.p                      ; 2 uses
  store i32 %i.aa, ptr %i.y, align 4
  %i.ab = getelementptr i8, ptr %i.t, i64 116
  %.val7.i = load i32, ptr %i.ab, align 4
  %.not.i = icmp eq i32 %.val7.i, 0
  br i1 %.not.i, label %__skb_put.exit, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "649: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 649b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 649) #20, !srcloc !31
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.8, ptr nonnull @.str.13, i32 2772, i32 0, i64 16) #20, !srcloc !32
  unreachable

__skb_put.exit:                                   ; preds = %bb.d
  %i.ac = getelementptr i8, ptr %0, i64 8
  %i.ad = load i32, ptr %i.ac, align 8            ; 2 uses
  %i.ae = getelementptr i8, ptr %i.t, i64 200
  %.val6.i = load ptr, ptr %i.ae, align 8
  %i.af = add i32 %i.ad, %i.aa
  store i32 %i.af, ptr %i.y, align 4
  %i.ag = getelementptr i8, ptr %i.t, i64 112     ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = add i32 %i.ah, %i.ad
  store i32 %i.ai, ptr %i.ag, align 8
  %i.aj = getelementptr i8, ptr %0, i64 16
  %i.ak = load i32, ptr %i.aj, align 8            ; 2 uses
  %.not34 = icmp eq i32 %i.ak, 0
  br i1 %.not34, label %bb.g, label %bb.f

bb.f:                                             ; preds = %__skb_put.exit
  %i.al = trunc i32 %i.ak to i8
  %i.am = getelementptr i8, ptr %i.t, i64 192
  %.val = load i32, ptr %i.am, align 8
  %i.an = zext i32 %.val to i64
  %i.ao = getelementptr i8, ptr %.val6.i, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 1
  store i8 %i.al, ptr %i.ap, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %__skb_put.exit
  %i.aq = load i32, ptr %i.k, align 4             ; 2 uses
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %bb.h, label %bb.i, !prof !17

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr i8, ptr %i.j, i64 -320
  %i.at = load i32, ptr %i.as, align 8
  %i.au = zext i8 %.0 to i32
  %i.av = load i32, ptr %i.g, align 8
  %i.aw = mul i32 %i.av, %i.au
  tail call fastcc void @xdp_update_skb_frags_info(ptr noundef nonnull %i.t, i8 noundef zeroext %.0, i32 noundef %i.at, i32 noundef %i.aw, i32 noundef %i.aq) #21, !srcloc !69
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ax = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %i.t, ptr noundef %2) #19
  %i.ay = getelementptr i8, ptr %i.t, i64 180
  store i16 %i.ax, ptr %i.ay, align 4
  %i.az = getelementptr i8, ptr %0, i64 20
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = icmp eq i32 %i.ba, 2
  br i1 %i.bb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr i8, ptr %i.t, i64 126     ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 2
  %i.be = or i8 %i.bd, -128
  store i8 %i.be, ptr %i.bc, align 2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store ptr null, ptr %0, align 8
  %i.bf = getelementptr i8, ptr %0, i64 24
  store ptr null, ptr %i.bf, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %bb.k
  ret ptr %i.t
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @build_skb_around(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @xdp_build_skb_from_frame(ptr nofree noundef captures(none) %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @net_hotdata, i64 336), align 8
  %i.b = tail call noalias align 8 ptr @kmem_cache_alloc_noprof(ptr noundef %i.a, i32 noundef 2080) #19 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(188) %i.b, i8 0, i64 188, i1 false)
  %i.c = tail call ptr @__xdp_build_skb_from_frame(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef %1) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc_noprof(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef ptr @xdpf_clone(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4
  %i.c = add i32 %i.b, 40                         ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8
  %i.f = add i32 %i.c, %i.e                       ; 2 uses
  %i.g = zext nneg i32 %i.f to i64
  %i.h = icmp ugt i32 %i.f, 4096
  br i1 %i.h, label %bb.d, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @numa_node) #24, !srcloc !30
  %i.j = tail call ptr @__alloc_pages_noprof(i32 noundef 403488, i32 noundef 0, i32 noundef %i.i, ptr noundef null) #19 ; 2 uses
  %.not = icmp eq ptr %i.j, null
end_hunk_0
