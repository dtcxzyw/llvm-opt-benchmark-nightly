Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/vmalloc?download=true
inline.NumInlined: 671
inline.NumDeleted: 273
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@memalloc_apply_gfp_scope:bb.a
  %i.a = and i32 %0, 82944
  %or.cond = icmp eq i32 %i.a, 1024
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #27, !srcloc !160
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.c = trunc i32 %0 to i8
  %trunc = and i8 %i.c, -64
  switch i8 %trunc, label %bb.f [
    i8 64, label %bb.d
    i8 0, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #27, !srcloc !160
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.e = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #27, !srcloc !160
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.e, %bb.d
  %.sink = phi i64 [ %i.d, %bb.d ], [ %i.e, %bb.e ], [ %i.b, %bb.b ]
  %.sink11 = phi i32 [ 262144, %bb.d ], [ 524288, %bb.e ], [ 2048, %bb.b ] ; 2 uses
  %i.f = inttoptr i64 %.sink to ptr
  %i.g = getelementptr i8, ptr %i.f, i64 44       ; 2 uses
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = xor i32 %i.h, -1
  %i.j = and i32 %.sink11, %i.i
  %i.k = or i32 %i.h, %.sink11
  store i32 %i.k, ptr %i.g, align 4
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ %i.j, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none)
define dso_local void @memalloc_restore_scope(i32 noundef %0) local_unnamed_addr #9 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = xor i32 %0, -1
  %i.b = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #27, !srcloc !160
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr i8, ptr %i.c, i64 44       ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, %i.a
  store i32 %i.f, ptr %i.d, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define dso_local noalias ptr @__vmalloc_node_range_noprof(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, i64 %5, i64 noundef %6, i32 noundef %7, ptr noundef %8) local_unnamed_addr #10 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %bb.b, label %.critedge, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "908: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 908b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 908) #24, !srcloc !246
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.1, i32 4015, i32 2307, i64 16) #24, !srcloc !247
  tail call void asm sideeffect "909: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 909b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 909) #24, !srcloc !248
  br label %.loopexit

.critedge:                                        ; preds = %bb.a
  %i.c = lshr i64 %0, 12
  %i.d = load volatile i64, ptr @_totalram_pages, align 8
  %i.e = icmp ugt i64 %i.c, %i.d
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  tail call void (i32, ptr, ptr, ...) @warn_alloc(i32 noundef %4, ptr noundef null, ptr noundef nonnull @.str.7, i64 noundef %0) #23
  br label %.loopexit

bb.d:                                             ; preds = %.critedge
  %.b = load i1, ptr @vmap_allow_huge, align 1
  %i.f = and i64 %6, 1024
  %.not81 = icmp eq i64 %i.f, 0
  %or.cond = or i1 %.not81, %.b
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = icmp ugt i64 %0, 2097151
  %spec.select = select i1 %i.g, i32 21, i32 12   ; 2 uses
  %i.h = zext nneg i32 %spec.select to i64
  %i.i = shl nuw nsw i64 1, %i.h
  %i.j = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.i)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.178 = phi i32 [ %spec.select, %bb.e ], [ 12, %bb.d ]
  %.069 = phi i64 [ %i.j, %bb.e ], [ %1, %bb.d ]
  %i.k = or i64 %6, 34
  %i.l = and i32 %4, 781536
  %i.m = or disjoint i32 %i.l, 256                ; 2 uses
  %i.n = and i32 %4, 33792
  %spec.select.i = icmp eq i32 %i.n, 33792
  %i.o = and i32 %4, 5
  %.not.i = icmp eq i32 %i.o, 0
  %i.p = or i32 %4, 2
  %.059.i = select i1 %.not.i, i32 %i.p, i32 %4   ; 6 uses
  %i.q = or i32 %.059.i, 8192                     ; 2 uses
  %i.r = and i32 %i.q, -32769
  %i.s = icmp eq i32 %7, -1                       ; 3 uses
  %i.t = sext i32 %7 to i64                       ; 2 uses
  %i.u = and i32 %.059.i, 82944
  %or.cond.i88 = icmp eq i32 %i.u, 1024
  %i.v = trunc i32 %.059.i to i8
  %trunc.i = and i8 %i.v, -64
  %i.w = and i32 %4, 32768
  %.not83 = icmp eq i32 %i.w, 0                   ; 2 uses
  %i.x = select i1 %.not83, ptr @.str.3, ptr @.str.9
  br label %.backedge.outer

.backedge.outer:                                  ; preds = %.thread, %bb.f
  %.279.ph = phi i32 [ 12, %.thread ], [ %.178, %bb.f ] ; 5 uses
  %.1.ph = phi i64 [ %1, %.thread ], [ %.069, %bb.f ]
  %i.y = zext nneg i32 %.279.ph to i64
  br label %.backedge

.backedge:                                        ; preds = %.backedge.outer, %bb.h
  %i.z = call ptr @__get_vm_area_node(i64 noundef %0, i64 noundef %.1.ph, i64 noundef %i.y, i64 noundef %i.k, i64 noundef %2, i64 noundef %3, i32 noundef %7, i32 noundef %4, ptr noundef %8) #26 ; 14 uses
  %.not82 = icmp eq ptr %i.z, null
  br i1 %.not82, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.backedge
  call void (i32, ptr, ptr, ...) @warn_alloc(i32 noundef %4, ptr noundef null, ptr noundef nonnull @.str.8, i64 noundef %0, ptr noundef nonnull %i.x) #23
  br i1 %.not83, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = call i64 @schedule_timeout_uninterruptible(i64 noundef 1) #23 ; 0 uses
  br label %.backedge

bb.i:                                             ; preds = %.backedge
  %i.ab = getelementptr i8, ptr %i.z, i64 8       ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = ptrtoint ptr %i.ac to i64               ; 3 uses
  %i.ae = getelementptr i8, ptr %i.z, i64 24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = and i64 %i.af, 64
  %.not.i96 = icmp eq i64 %i.ag, 0
  %i.ah = getelementptr i8, ptr %i.z, i64 16
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.aj = add i64 %i.ai, -4096
  %.0.i97 = select i1 %.not.i96, i64 %i.aj, i64 %i.ai ; 2 uses
  %i.ak = lshr i64 %.0.i97, 12                    ; 2 uses
  %i.al = trunc i64 %i.ak to i32                  ; 11 uses
  %i.am = and i64 %i.ak, 4294967295               ; 4 uses
  %i.an = shl nuw nsw i64 %i.am, 3                ; 3 uses
  %i.ao = icmp samesign ugt i64 %i.am, 512
  br i1 %i.ao, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr i8, ptr %i.z, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = load i64, ptr @vmalloc_base, align 8    ; 2 uses
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #24
          to label %bb.k [label %bb.k, label %__vmalloc_node_noprof.exit], !inline_history !249, !srcloc !26

bb.k:                                             ; preds = %bb.j, %bb.j
  br label %__vmalloc_node_noprof.exit

__vmalloc_node_noprof.exit:                       ; preds = %bb.j, %bb.k
  %i.as = phi i64 [ 14073748835532800, %bb.k ], [ 35184372088832, %bb.j ]
  %i.at = add i64 %i.ar, -1
  %i.au = add i64 %i.at, %i.as
  %i.av = load i64, ptr @__default_kernel_pte_mask, align 8
  %i.aw = and i64 %i.av, -9223372036854775453
  %i.ax = call noalias ptr @__vmalloc_node_range_noprof(i64 noundef %i.an, i64 noundef 1, i64 noundef %i.ar, i64 noundef %i.au, i32 noundef %i.m, i64 %i.aw, i64 noundef 0, i32 noundef %7, ptr noundef %i.aq) #30, !inline_history !249
  br label %_kmalloc_node_noprof.exit.i

bb.l:                                             ; preds = %bb.i
  %i.ay = call noalias align 8 ptr @__kmalloc_node_noprof(i64 noundef range(i64 0, 4097) %i.an, i32 noundef range(i32 256, 781824) %i.m, i32 noundef %7) #31, !inline_history !250
  br label %_kmalloc_node_noprof.exit.i

_kmalloc_node_noprof.exit.i:                      ; preds = %bb.l, %__vmalloc_node_noprof.exit
  %.1.i.i.sink = phi ptr [ %i.ax, %__vmalloc_node_noprof.exit ], [ %i.ay, %bb.l ] ; 16 uses
  %i.az = getelementptr i8, ptr %i.z, i64 32
  store ptr %.1.i.i.sink, ptr %i.az, align 8
  %i.ba = getelementptr i8, ptr %i.z, i64 32      ; 2 uses
  %.not61.i = icmp eq ptr %.1.i.i.sink, null
  br i1 %.not61.i, label %bb.m, label %__ilog2_u32.exit133.i

bb.m:                                             ; preds = %_kmalloc_node_noprof.exit.i
  %i.bb = shl nuw nsw i64 %i.am, 12
  call void (i32, ptr, ptr, ...) @warn_alloc(i32 noundef %.059.i, ptr noundef null, ptr noundef nonnull @.str.47, i64 noundef %i.bb, i64 noundef %i.an) #23, !inline_history !250
  br label %bb.ap

__ilog2_u32.exit133.i:                            ; preds = %_kmalloc_node_noprof.exit.i
  %i.bc = add nsw i32 %.279.ph, -12               ; 12 uses
  %i.bd = getelementptr i8, ptr %i.z, i64 40
  store i32 %i.bc, ptr %i.bd, align 8
  %.not104 = icmp eq i32 %i.bc, 0                 ; 3 uses
  %spec.select.i94 = select i1 %.not104, i32 %i.q, i32 %i.r ; 9 uses
  %i.be = call i32 asm "bsrl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.al, i32 -1) #27, !srcloc !251 ; 2 uses
  %.not142.i = icmp eq i32 %i.be, 0
  %.v.i = select i1 %.not142.i, i32 -1025, i32 -33793
  %i.bf = and i32 %.v.i, %spec.select.i94         ; 3 uses
  %i.bg = call i32 @llvm.umin.i32(i32 %i.be, i32 10) ; 2 uses
  %i.bh = icmp ugt i32 %i.bg, %i.bc
  %i.bi = icmp ne i32 %i.al, 0
  %i.bj = and i1 %i.bi, %i.bh
  br i1 %i.bj, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %__ilog2_u32.exit133.i
  %i.bk = and i32 %spec.select.i94, 2105344
  %.not.i.i.i.i = icmp eq i32 %i.bk, 2105344
  br label %bb.n

bb.n:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.0109147.i = phi i32 [ 0, %.lr.ph.i ], [ %.0109.be.i, %.backedge.i ] ; 7 uses
  %.0110146.i = phi i32 [ %i.al, %.lr.ph.i ], [ %.0110.be.i, %.backedge.i ]
  %.0111145.i = phi i32 [ 10, %.lr.ph.i ], [ %.0111.be.i, %.backedge.i ] ; 2 uses
  %.0118144.i = phi i32 [ %i.bg, %.lr.ph.i ], [ %.0118.be.i, %.backedge.i ] ; 7 uses
  br i1 %i.s, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bl = call ptr @alloc_pages_noprof(i32 noundef %i.bf, i32 noundef %.0118144.i) #23
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.bf, ptr %i.b, align 4
  br i1 %.not.i.i.i.i, label %.split4.i.i.i.i, label %alloc_pages_node_noprof.exit.i

.split4.i.i.i.i:                                  ; preds = %bb.p
  %i.bm = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) getelementptr inbounds nuw (i8, ptr @node_states, i64 8), i64 range(i64 -2147483648, 4294967296) %i.t) #24, !srcloc !85 ; 2 uses
  %i.bn = icmp ult i8 %i.bm, 2
  call void @llvm.assume(i1 %i.bn)
  %i.bo = trunc nuw i8 %i.bm to i1
  br i1 %i.bo, label %alloc_pages_node_noprof.exit.i, label %bb.q

bb.q:                                             ; preds = %.split4.i.i.i.i
  %i.bp = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull %i.b, i32 noundef range(i32 0, -1) %7) #29 ; 0 uses
  call void @dump_stack() #29
  br label %alloc_pages_node_noprof.exit.i

alloc_pages_node_noprof.exit.i:                   ; preds = %bb.q, %.split4.i.i.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bq = call ptr @__alloc_pages_noprof(i32 noundef %i.bf, i32 noundef %.0118144.i, i32 noundef range(i32 0, -1) %7, ptr noundef null) #23
  br label %bb.r

bb.r:                                             ; preds = %alloc_pages_node_noprof.exit.i, %bb.o
  %.0114.i = phi ptr [ %i.bl, %bb.o ], [ %i.bq, %alloc_pages_node_noprof.exit.i ] ; 8 uses
  %.not131.i = icmp eq ptr %.0114.i, null
  br i1 %.not131.i, label %bb.s, label %bb.t, !prof !18

bb.s:                                             ; preds = %bb.r
  %i.br = add nsw i32 %.0118144.i, -1             ; 2 uses
  br label %.backedge.i

.backedge.i:                                      ; preds = %__ilog2_u32.exit.i, %bb.s
  %.0118.be.i = phi i32 [ %i.br, %bb.s ], [ %i.ct, %__ilog2_u32.exit.i ] ; 2 uses
  %.0111.be.i = phi i32 [ %i.br, %bb.s ], [ %.0111145.i, %__ilog2_u32.exit.i ]
  %.0110.be.i = phi i32 [ %.0110146.i, %bb.s ], [ %i.cr, %__ilog2_u32.exit.i ] ; 2 uses
  %.0109.be.i = phi i32 [ %.0109147.i, %bb.s ], [ %i.cq, %__ilog2_u32.exit.i ] ; 2 uses
  %i.bs = icmp ugt i32 %.0118.be.i, %i.bc
  %i.bt = icmp ne i32 %.0110.be.i, 0
  %i.bu = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %i.bu, label %bb.n, label %._crit_edge.i, !llvm.loop !252

bb.t:                                             ; preds = %bb.r
  %i.bv = shl nuw nsw i32 1, %.0118144.i          ; 4 uses
  %.0114.val.i = load i64, ptr %.0114.i, align 16
  %i.bw = lshr i64 %.0114.val.i, 58
  %i.bx = getelementptr [8 x i8], ptr @node_data, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = zext nneg i32 %i.bv to i64
  call void @mod_node_page_state(ptr noundef %i.by, i32 noundef 36, i64 noundef %i.bz) #23
  call void @split_page(ptr noundef nonnull %.0114.i, i32 noundef %.0118144.i) #23
  %i.ca = icmp ult i32 %.0118144.i, 2
  br i1 %i.ca, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.t
  %unroll_iter = and i32 %i.bv, 2147483644
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.new
  %.0116143.i = phi i32 [ 0, %.new ], [ %20, %bb.u ] ; 6 uses
  %niter = phi i32 [ 0, %.new ], [ %niter.next.3, %bb.u ]
  %9 = sext i32 %.0116143.i to i64
  %10 = getelementptr [64 x i8], ptr %.0114.i, i64 %9
  %i.cb = add i32 %.0116143.i, %.0109147.i
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr [8 x i8], ptr %.1.i.i.sink, i64 %i.cc
  store ptr %10, ptr %i.cd, align 8
  %11 = or disjoint i32 %.0116143.i, 1            ; 2 uses
  %12 = sext i32 %11 to i64
  %13 = getelementptr [64 x i8], ptr %.0114.i, i64 %12
  %i.ce = add i32 %11, %.0109147.i
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr [8 x i8], ptr %.1.i.i.sink, i64 %i.cf
  store ptr %13, ptr %i.cg, align 8
  %14 = or disjoint i32 %.0116143.i, 2            ; 2 uses
  %15 = sext i32 %14 to i64
  %16 = getelementptr [64 x i8], ptr %.0114.i, i64 %15
  %i.ch = add i32 %14, %.0109147.i
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr [8 x i8], ptr %.1.i.i.sink, i64 %i.ci
  store ptr %16, ptr %i.cj, align 8
  %17 = or disjoint i32 %.0116143.i, 3            ; 2 uses
  %18 = sext i32 %17 to i64
  %19 = getelementptr [64 x i8], ptr %.0114.i, i64 %18
  %i.ck = add i32 %17, %.0109147.i
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr [8 x i8], ptr %.1.i.i.sink, i64 %i.cl
  store ptr %19, ptr %i.cm, align 8
  %20 = add nuw i32 %.0116143.i, 4
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %__ilog2_u32.exit.i, label %bb.u, !llvm.loop !253

.epil.preheader:                                  ; preds = %bb.t
  %lcmp.mod155 = icmp ult i32 %.0118144.i, 2
  call void @llvm.assume(i1 %lcmp.mod155)
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.epil.preheader
  %.0116143.i.epil = phi i32 [ 0, %.epil.preheader ], [ %23, %bb.v ] ; 3 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.v ]
  %21 = sext i32 %.0116143.i.epil to i64
  %22 = getelementptr [64 x i8], ptr %.0114.i, i64 %21
  %i.cn = add i32 %.0116143.i.epil, %.0109147.i
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr [8 x i8], ptr %.1.i.i.sink, i64 %i.co
  store ptr %22, ptr %i.cp, align 8
  %23 = add nuw i32 %.0116143.i.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %i.bv
  br i1 %epil.iter.cmp.not, label %__ilog2_u32.exit.i, label %bb.v, !llvm.loop !254

__ilog2_u32.exit.i:                               ; preds = %bb.v, %bb.u
  %i.cq = add i32 %i.bv, %.0109147.i              ; 2 uses
  %i.cr = sub i32 %i.al, %i.cq                    ; 2 uses
  %i.cs = call i32 asm "bsrl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.cr, i32 -1) #27, !srcloc !251
  %i.ct = call i32 @llvm.umin.i32(i32 %.0111145.i, i32 %i.cs)
  br label %.backedge.i

._crit_edge.i:                                    ; preds = %.backedge.i, %__ilog2_u32.exit133.i
  %.0109.lcssa.i = phi i32 [ 0, %__ilog2_u32.exit133.i ], [ %.0109.be.i, %.backedge.i ] ; 3 uses
  br i1 %.not104, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %._crit_edge.i
  br i1 %i.s, label %.preheader.split.us.i, label %.preheader.split.i

.preheader.split.us.i:                            ; preds = %.preheader.i, %._crit_edge151.us.i
  %.1.us.i = phi i32 [ %i.db, %._crit_edge151.us.i ], [ %.0109.lcssa.i, %.preheader.i ] ; 7 uses
  %i.cu = icmp ult i32 %.1.us.i, %i.al
  br i1 %i.cu, label %bb.w, label %.loopexit.i

bb.w:                                             ; preds = %.preheader.split.us.i
  %i.cv = sub nuw i32 %i.al, %.1.us.i
  %i.cw = call i32 @llvm.umin.i32(i32 %i.cv, i32 100) ; 2 uses
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = zext i32 %.1.us.i to i64
  %i.cz = getelementptr [8 x i8], ptr %.1.i.i.sink, i64 %i.cy
  %i.da = call i64 @alloc_pages_bulk_mempolicy_noprof(i32 noundef %spec.select.i94, i64 noundef %i.cx, ptr noundef %i.cz) #23
  %.0113.us.i = trunc i64 %i.da to i32            ; 2 uses
  %i.db = add i32 %.1.us.i, %.0113.us.i           ; 4 uses
  %i.dc = icmp ult i32 %.1.us.i, %i.db
  br i1 %i.dc, label %.lr.ph150.us.i, label %._crit_edge151.us.i

.lr.ph150.us.i:                                   ; preds = %bb.w, %.lr.ph150.us.i
  %.0112148.us.i = phi i32 [ %i.dj, %.lr.ph150.us.i ], [ %.1.us.i, %bb.w ] ; 2 uses
  %i.dd = sext i32 %.0112148.us.i to i64
  %i.de = getelementptr [8 x i8], ptr %.1.i.i.sink, i64 %i.dd
  %i.df = load ptr, ptr %i.de, align 8
  %.val.us.i = load i64, ptr %i.df, align 16
  %i.dg = lshr i64 %.val.us.i, 58
  %i.dh = getelementptr [8 x i8], ptr @node_data, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8
  call void @mod_node_page_state(ptr noundef %i.di, i32 noundef 36, i64 noundef 1) #23
  %i.dj = add i32 %.0112148.us.i, 1               ; 2 uses
  %exitcond165.not.i.a = icmp eq i32 %i.dj, %i.db
  br i1 %exitcond165.not.i.a, label %._crit_edge151.us.i, label %.lr.ph150.us.i, !llvm.loop !255

._crit_edge151.us.i:                              ; preds = %.lr.ph150.us.i, %bb.w
  %.not127.us.i = icmp eq i32 %i.cw, %.0113.us.i
  br i1 %.not127.us.i, label %.preheader.split.us.i, label %.loopexit.i

.preheader.split.i:                               ; preds = %.preheader.i, %._crit_edge151.i
  %.1.i = phi i32 [ %i.dq, %._crit_edge151.i ], [ %.0109.lcssa.i, %.preheader.i ] ; 7 uses
  %i.dk = icmp ult i32 %.1.i, %i.al
  br i1 %i.dk, label %bb.x, label %.loopexit.i

bb.x:                                             ; preds = %.preheader.split.i
  %i.dl = sub nuw i32 %i.al, %.1.i
  %i.dm = call i32 @llvm.umin.i32(i32 %i.dl, i32 100) ; 2 uses
  %i.dn = zext i32 %.1.i to i64
  %i.do = getelementptr [8 x i8], ptr %.1.i.i.sink, i64 %i.dn
  %i.dp = call i64 @alloc_pages_bulk_noprof(i32 noundef %spec.select.i94, i32 noundef range(i32 0, -1) %7, ptr noundef null, i32 noundef %i.dm, ptr noundef %i.do) #23
  %.0113.i = trunc i64 %i.dp to i32               ; 2 uses
  %i.dq = add i32 %.1.i, %.0113.i                 ; 4 uses
  %i.dr = icmp ult i32 %.1.i, %i.dq
  br i1 %i.dr, label %.lr.ph150.i, label %._crit_edge151.i

.lr.ph150.i:                                      ; preds = %bb.x, %.lr.ph150.i
  %.0112148.i = phi i32 [ %i.dy, %.lr.ph150.i ], [ %.1.i, %bb.x ] ; 2 uses
  %i.ds = sext i32 %.0112148.i to i64
  %i.dt = getelementptr [8 x i8], ptr %.1.i.i.sink, i64 %i.ds
  %i.du = load ptr, ptr %i.dt, align 8
  %.val.i93 = load i64, ptr %i.du, align 16
  %i.dv = lshr i64 %.val.i93, 58
  %i.dw = getelementptr [8 x i8], ptr @node_data, i64 %i.dv
  %i.dx = load ptr, ptr %i.dw, align 8
  call void @mod_node_page_state(ptr noundef %i.dx, i32 noundef 36, i64 noundef 1) #23
  %i.dy = add i32 %.0112148.i, 1                  ; 2 uses
  %exitcond164.not.i = icmp eq i32 %i.dy, %i.dq
  br i1 %exitcond164.not.i, label %._crit_edge151.i, label %.lr.ph150.i, !llvm.loop !255

._crit_edge151.i:                                 ; preds = %.lr.ph150.i, %bb.x
  %.not127.i = icmp eq i32 %i.dm, %.0113.i
  br i1 %.not127.i, label %.preheader.split.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %._crit_edge151.i, %.preheader.split.i, %._crit_edge151.us.i, %.preheader.split.us.i, %._crit_edge.i
  %.2.i = phi i32 [ %.0109.lcssa.i, %._crit_edge.i ], [ %i.db, %._crit_edge151.us.i ], [ %.1.us.i, %.preheader.split.us.i ], [ %i.dq, %._crit_edge151.i ], [ %.1.i, %.preheader.split.i ] ; 3 uses
  %i.dz = icmp ult i32 %.2.i, %i.al
  br i1 %i.dz, label %.lr.ph156.i, label %vm_area_alloc_pages.exit

.lr.ph156.i:                                      ; preds = %.loopexit.i
  %i.ea = and i32 %spec.select.i94, 32768
  %.not128.i = icmp eq i32 %i.ea, 0
  %i.eb = and i32 %spec.select.i94, 2105344
  %.not.i.i.i134.i = icmp eq i32 %i.eb, 2105344
  %i.ec = shl nuw nsw i32 1, %i.bc                ; 4 uses
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = icmp ult i32 %i.bc, 2
  %unroll_iter161 = and i32 %i.ec, 2147483644
  %lcmp.mod160 = icmp ult i32 %i.bc, 2
  br label %bb.y

bb.y:                                             ; preds = %.unr-lcssa.a, %.lr.ph156.i
  %.3154.i = phi i32 [ %.2.i, %.lr.ph156.i ], [ %i.fj, %.unr-lcssa.a ] ; 8 uses
  br i1 %.not128.i, label %task_sigpending.exit.i.i, label %fatal_signal_pending.exit.thread.i

task_sigpending.exit.i.i:                         ; preds = %bb.y
  %i.ef = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #27, !srcloc !160
  %i.eg = inttoptr i64 %i.ef to ptr               ; 2 uses
  %i.eh = load volatile i64, ptr %i.eg, align 8
  %i.ei = and i64 %i.eh, 2
  %.not.i.i = icmp eq i64 %i.ei, 0
  br i1 %.not.i.i, label %fatal_signal_pending.exit.thread.i, label %fatal_signal_pending.exit.i

fatal_signal_pending.exit.i:                      ; preds = %task_sigpending.exit.i.i
  %i.ej = getelementptr i8, ptr %i.eg, i64 2152
  %.val.i.i = load i64, ptr %i.ej, align 8
  %i.ek = and i64 %.val.i.i, 256
  %.not129.i = icmp eq i64 %i.ek, 0
  br i1 %.not129.i, label %fatal_signal_pending.exit.thread.i, label %vm_area_alloc_pages.exit

fatal_signal_pending.exit.thread.i:               ; preds = %fatal_signal_pending.exit.i, %task_sigpending.exit.i.i, %bb.y
  br i1 %i.s, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %fatal_signal_pending.exit.thread.i
  %i.el = call ptr @alloc_pages_noprof(i32 noundef %spec.select.i94, i32 noundef %i.bc) #23
  br label %bb.ac

bb.aa:                                            ; preds = %fatal_signal_pending.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %spec.select.i94, ptr %i.a, align 4
  br i1 %.not.i.i.i134.i, label %.split4.i.i.i135.i, label %alloc_pages_node_noprof.exit140.i

.split4.i.i.i135.i:                               ; preds = %bb.aa
  %i.em = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) getelementptr inbounds nuw (i8, ptr @node_states, i64 8), i64 range(i64 -2147483648, 4294967296) %i.t) #24, !srcloc !85 ; 2 uses
  %i.en = icmp ult i8 %i.em, 2
  call void @llvm.assume(i1 %i.en)
  %i.eo = trunc nuw i8 %i.em to i1
  br i1 %i.eo, label %alloc_pages_node_noprof.exit140.i, label %bb.ab

bb.ab:                                            ; preds = %.split4.i.i.i135.i
  %i.ep = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull %i.a, i32 noundef range(i32 0, -1) %7) #29 ; 0 uses
  call void @dump_stack() #29
  br label %alloc_pages_node_noprof.exit140.i

alloc_pages_node_noprof.exit140.i:                ; preds = %bb.ab, %.split4.i.i.i135.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.eq = call ptr @__alloc_pages_noprof(i32 noundef %spec.select.i94, i32 noundef %i.bc, i32 noundef range(i32 0, -1) %7, ptr noundef null) #23
  br label %bb.ac

bb.ac:                                            ; preds = %alloc_pages_node_noprof.exit140.i, %bb.z
  %.1115.i = phi ptr [ %i.el, %bb.z ], [ %i.eq, %alloc_pages_node_noprof.exit140.i ] ; 8 uses
  %.not130.i = icmp eq ptr %.1115.i, null
  br i1 %.not130.i, label %vm_area_alloc_pages.exit, label %bb.ad, !prof !18

bb.ad:                                            ; preds = %bb.ac
  %.1115.val.i = load i64, ptr %.1115.i, align 16
  %i.er = lshr i64 %.1115.val.i, 58
  %i.es = getelementptr [8 x i8], ptr @node_data, i64 %i.er
  %i.et = load ptr, ptr %i.es, align 8
  call void @mod_node_page_state(ptr noundef %i.et, i32 noundef 36, i64 noundef %i.ed) #23
  br i1 %.not104, label %.preheader, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @split_page(ptr noundef nonnull %.1115.i, i32 noundef %i.bc) #23
  br label %.preheader

.preheader:                                       ; preds = %bb.ae, %bb.ad
  br i1 %i.ee, label %.epil.preheader156, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %.1117153.i = phi i32 [ %35, %.preheader.new ], [ 0, %.preheader ] ; 6 uses
  %niter162 = phi i32 [ %niter162.next.3, %.preheader.new ], [ 0, %.preheader ]
  %24 = sext i32 %.1117153.i to i64
  %25 = getelementptr [64 x i8], ptr %.1115.i, i64 %24
  %i.eu = add i32 %.1117153.i, %.3154.i
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr [8 x i8], ptr %.1.i.i.sink, i64 %i.ev
  store ptr %25, ptr %i.ew, align 8
  %26 = or disjoint i32 %.1117153.i, 1            ; 2 uses
  %27 = sext i32 %26 to i64
  %28 = getelementptr [64 x i8], ptr %.1115.i, i64 %27
  %i.ex = add i32 %26, %.3154.i
  %i.ey = zext i32 %i.ex to i64
  %i.ez = getelementptr [8 x i8], ptr %.1.i.i.sink, i64 %i.ey
  store ptr %28, ptr %i.ez, align 8
  %29 = or disjoint i32 %.1117153.i, 2            ; 2 uses
  %30 = sext i32 %29 to i64
  %31 = getelementptr [64 x i8], ptr %.1115.i, i64 %30
  %i.fa = add i32 %29, %.3154.i
  %i.fb = zext i32 %i.fa to i64
  %i.fc = getelementptr [8 x i8], ptr %.1.i.i.sink, i64 %i.fb
  store ptr %31, ptr %i.fc, align 8
  %32 = or disjoint i32 %.1117153.i, 3            ; 2 uses
  %33 = sext i32 %32 to i64
  %34 = getelementptr [64 x i8], ptr %.1115.i, i64 %33
  %i.fd = add i32 %32, %.3154.i
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr [8 x i8], ptr %.1.i.i.sink, i64 %i.fe
  store ptr %34, ptr %i.ff, align 8
  %35 = add nuw i32 %.1117153.i, 4
  %niter162.next.3 = add i32 %niter162, 4         ; 2 uses
  %niter162.ncmp.3 = icmp eq i32 %niter162.next.3, %unroll_iter161
  br i1 %niter162.ncmp.3, label %.unr-lcssa.a, label %.preheader.new, !llvm.loop !256

.epil.preheader156:                               ; preds = %.preheader
  call void @llvm.assume(i1 %lcmp.mod160)
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.epil.preheader156
  %.1117153.i.epil = phi i32 [ %38, %bb.af ], [ 0, %.epil.preheader156 ] ; 3 uses
  %epil.iter158 = phi i32 [ %epil.iter158.next, %bb.af ], [ 0, %.epil.preheader156 ]
  %36 = sext i32 %.1117153.i.epil to i64
  %37 = getelementptr [64 x i8], ptr %.1115.i, i64 %36
  %i.fg = add i32 %.1117153.i.epil, %.3154.i
  %i.fh = zext i32 %i.fg to i64
  %i.fi = getelementptr [8 x i8], ptr %.1.i.i.sink, i64 %i.fh
  store ptr %37, ptr %i.fi, align 8
  %38 = add nuw i32 %.1117153.i.epil, 1
  %epil.iter158.next = add i32 %epil.iter158, 1   ; 2 uses
  %epil.iter158.cmp.not = icmp eq i32 %epil.iter158.next, %i.ec
  br i1 %epil.iter158.cmp.not, label %.unr-lcssa.a, label %bb.af, !llvm.loop !257

.unr-lcssa.a:                                     ; preds = %bb.af, %.preheader.new
  %i.fj = add i32 %.3154.i, %i.ec                 ; 3 uses
  %i.fk = icmp ult i32 %i.fj, %i.al
  br i1 %i.fk, label %bb.y, label %vm_area_alloc_pages.exit, !llvm.loop !258

vm_area_alloc_pages.exit:                         ; preds = %fatal_signal_pending.exit.i, %bb.ac, %.unr-lcssa.a, %.loopexit.i
  %.3.lcssa.i = phi i32 [ %.2.i, %.loopexit.i ], [ %i.fj, %.unr-lcssa.a ], [ %.3154.i, %fatal_signal_pending.exit.i ], [ %.3154.i, %bb.ac ] ; 2 uses
  %i.fl = getelementptr i8, ptr %i.z, i64 44      ; 2 uses
  store i32 %.3.lcssa.i, ptr %i.fl, align 4
  %.not62.i = icmp eq i32 %.3.lcssa.i, %i.al
  br i1 %.not62.i, label %bb.ai, label %task_sigpending.exit.i

task_sigpending.exit.i:                           ; preds = %vm_area_alloc_pages.exit
  %i.fm = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #27, !inline_history !250, !srcloc !160
  %i.fn = inttoptr i64 %i.fm to ptr               ; 2 uses
  %i.fo = load volatile i64, ptr %i.fn, align 8
  %i.fp = and i64 %i.fo, 2
  %.not.i90 = icmp eq i64 %i.fp, 0
  br i1 %.not.i90, label %fatal_signal_pending.exit, label %bb.ag

bb.ag:                                            ; preds = %task_sigpending.exit.i
  %i.fq = getelementptr i8, ptr %i.fn, i64 2152
  %.val.i91 = load i64, ptr %i.fq, align 8
  %i.fr = trunc i64 %.val.i91 to i32
  %i.fs = lshr i32 %i.fr, 8
  %i.ft = and i32 %i.fs, 1
  %i.fu = or i32 %i.ft, %i.bc
  br label %fatal_signal_pending.exit

fatal_signal_pending.exit:                        ; preds = %task_sigpending.exit.i, %bb.ag
  %i.fv = phi i32 [ %i.bc, %task_sigpending.exit.i ], [ %i.fu, %bb.ag ]
  %or.cond.i = icmp eq i32 %i.fv, 0
  br i1 %or.cond.i, label %bb.ah, label %bb.ap

bb.ah:                                            ; preds = %fatal_signal_pending.exit
  %i.fw = shl nuw nsw i64 %i.am, 12
  call void (i32, ptr, ptr, ...) @warn_alloc(i32 noundef %.059.i, ptr noundef null, ptr noundef nonnull @.str.48, i64 noundef %i.fw) #23, !inline_history !250
  br label %bb.ap

bb.ai:                                            ; preds = %vm_area_alloc_pages.exit
  br i1 %or.cond.i88, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fx = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #27, !srcloc !160
  br label %.sink.split.i

bb.ak:                                            ; preds = %bb.ai
  switch i8 %trunc.i, label %memalloc_apply_gfp_scope.exit [
    i8 64, label %bb.al
    i8 0, label %bb.am
  ]

bb.al:                                            ; preds = %bb.ak
  %i.fy = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #27, !srcloc !160
  br label %.sink.split.i

bb.am:                                            ; preds = %bb.ak
  %i.fz = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #27, !srcloc !160
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.am, %bb.al, %bb.aj
  %.sink.i = phi i64 [ %i.fy, %bb.al ], [ %i.fz, %bb.am ], [ %i.fx, %bb.aj ]
  %.sink11.i = phi i32 [ 262144, %bb.al ], [ 524288, %bb.am ], [ 2048, %bb.aj ] ; 2 uses
  %i.ga = inttoptr i64 %.sink.i to ptr
  %i.gb = getelementptr i8, ptr %i.ga, i64 44     ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4            ; 2 uses
  %i.gd = xor i32 %i.gc, -1
  %i.ge = and i32 %.sink11.i, %i.gd
  %i.gf = or i32 %i.gc, %.sink11.i
  store i32 %i.gf, ptr %i.gb, align 4
  br label %memalloc_apply_gfp_scope.exit

memalloc_apply_gfp_scope.exit:                    ; preds = %bb.ak, %.sink.split.i
  %.0.i89 = phi i32 [ 0, %bb.ak ], [ %i.ge, %.sink.split.i ] ; 2 uses
  %i.gg = add i64 %.0.i97, %i.ad                  ; 2 uses
  %i.gh = load ptr, ptr %i.ba, align 8
  %i.gi = call range(i32 -22, 1) i32 @__vmap_pages_range_noflush(i64 noundef %i.ad, i64 noundef %i.gg, i64 %5, ptr noundef readonly %i.gh, i32 noundef range(i32 12, 22) %.279.ph) #26
  %i.gj = icmp slt i32 %i.gi, 0                   ; 2 uses
  %or.cond3.i111 = select i1 %spec.select.i, i1 %i.gj, i1 false
  br i1 %or.cond3.i111, label %.lr.ph.split, label %.critedge.i

.lr.ph.split:                                     ; preds = %memalloc_apply_gfp_scope.exit, %.lr.ph.split
  %i.gk = call i64 @schedule_timeout_uninterruptible(i64 noundef 1) #23, !inline_history !250 ; 0 uses
  %i.gl = load ptr, ptr %i.ba, align 8
  %i.gm = call range(i32 -22, 1) i32 @__vmap_pages_range_noflush(i64 noundef %i.ad, i64 noundef %i.gg, i64 %5, ptr noundef readonly %i.gl, i32 noundef range(i32 12, 22) %.279.ph) #26
  %i.gn = icmp slt i32 %i.gm, 0
  br i1 %i.gn, label %.lr.ph.split, label %.critedge.i, !llvm.loop !259

.critedge.i:                                      ; preds = %.lr.ph.split, %memalloc_apply_gfp_scope.exit
  %.lcssa = phi i1 [ %i.gj, %memalloc_apply_gfp_scope.exit ], [ false, %.lr.ph.split ]
  %.not.i87 = icmp eq i32 %.0.i89, 0
  br i1 %.not.i87, label %memalloc_restore_scope.exit, label %bb.an

bb.an:                                            ; preds = %.critedge.i
  %i.go = xor i32 %.0.i89, -1
  %i.gp = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #27, !srcloc !160
  %i.gq = inttoptr i64 %i.gp to ptr
  %i.gr = getelementptr i8, ptr %i.gq, i64 44     ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4
  %i.gt = and i32 %i.gs, %i.go
  store i32 %i.gt, ptr %i.gr, align 4
  br label %memalloc_restore_scope.exit

memalloc_restore_scope.exit:                      ; preds = %.critedge.i, %bb.an
  br i1 %.lcssa, label %bb.ao, label %__vmalloc_area_node.exit

bb.ao:                                            ; preds = %memalloc_restore_scope.exit
  %i.gu = load i32, ptr %i.fl, align 4
  %i.gv = zext i32 %i.gu to i64
  %i.gw = shl nuw nsw i64 %i.gv, 12
  call void (i32, ptr, ptr, ...) @warn_alloc(i32 noundef %.059.i, ptr noundef null, ptr noundef nonnull @.str.49, i64 noundef %i.gw) #23, !inline_history !250
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.ah, %fatal_signal_pending.exit, %bb.m
  %i.gx = load volatile ptr, ptr @pending_vm_area_cleanup, align 8 ; 3 uses
  store ptr %i.gx, ptr %i.z, align 8
  %i.gy = call { i8, ptr } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgq $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @pending_vm_area_cleanup, ptr nonnull %i.z, ptr nonnull elementtype(i64) @pending_vm_area_cleanup, ptr %i.gx) #24, !srcloc !213 ; 2 uses
  %i.gz = extractvalue { i8, ptr } %i.gy, 0       ; 2 uses
  %i.ha = icmp ult i8 %i.gz, 2
  call void @llvm.assume(i1 %i.ha)
  %i.hb = trunc nuw i8 %i.gz to i1
  br i1 %i.hb, label %llist_add.exit.i, label %.lr.ph.i.i.i, !prof !214

.lr.ph.i.i.i:                                     ; preds = %bb.ap, %.lr.ph.i.i.i
  %i.hc = phi { i8, ptr } [ %i.he, %.lr.ph.i.i.i ], [ %i.gy, %bb.ap ]
  %i.hd = extractvalue { i8, ptr } %i.hc, 1       ; 3 uses
  store ptr %i.hd, ptr %i.z, align 8
  %i.he = call { i8, ptr } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgq $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @pending_vm_area_cleanup, ptr nonnull %i.z, ptr nonnull elementtype(i64) @pending_vm_area_cleanup, ptr %i.hd) #24, !srcloc !213 ; 2 uses
  %i.hf = extractvalue { i8, ptr } %i.he, 0       ; 2 uses
  %i.hg = icmp ult i8 %i.hf, 2
  call void @llvm.assume(i1 %i.hg)
  %i.hh = trunc nuw i8 %i.hf to i1
  br i1 %i.hh, label %llist_add.exit.i, label %.lr.ph.i.i.i, !prof !215, !llvm.loop !216

llist_add.exit.i:                                 ; preds = %.lr.ph.i.i.i, %bb.ap
  %.0.lcssa.i.i.i = phi ptr [ %i.gx, %bb.ap ], [ %i.hd, %.lr.ph.i.i.i ]
  %.not.i.i.i = icmp eq ptr %.0.lcssa.i.i.i, null
  br i1 %.not.i.i.i, label %bb.aq, label %.thread

bb.aq:                                            ; preds = %llist_add.exit.i
  %i.hi = load ptr, ptr @system_percpu_wq, align 8
  %i.hj = call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %i.hi, ptr noundef nonnull @cleanup_vm_area) #23 ; 0 uses
  br label %.thread

__vmalloc_area_node.exit:                         ; preds = %memalloc_restore_scope.exit
  %i.hk = load ptr, ptr %i.ab, align 8
  %.not84 = icmp eq ptr %i.hk, null
  br i1 %.not84, label %.thread, label %bb.ar

bb.ar:                                            ; preds = %__vmalloc_area_node.exit
  %i.hl = getelementptr i8, ptr %i.z, i64 24      ; 2 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @init_on_free, i1 false) #24
          to label %want_init_on_free.exit [label %want_init_on_free.exit.thread], !srcloc !176

want_init_on_free.exit:                           ; preds = %bb.ar
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @init_on_alloc, i1 false) #24
          to label %want_init_on_free.exit.thread [label %want_init_on_free.exit.thread], !srcloc !176

want_init_on_free.exit.thread:                    ; preds = %want_init_on_free.exit, %want_init_on_free.exit, %bb.ar
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !202
  %i.hm = load i64, ptr %i.hl, align 8
  %i.hn = and i64 %i.hm, -33
  store i64 %i.hn, ptr %i.hl, align 8
  %i.ho = load ptr, ptr %i.ab, align 8
  br label %.loopexit

.thread:                                          ; preds = %bb.g, %bb.aq, %llist_add.exit.i, %__vmalloc_area_node.exit
  %i.hp = icmp ugt i32 %.279.ph, 12
  br i1 %i.hp, label %.backedge.outer, label %.loopexit

.loopexit:                                        ; preds = %.thread, %bb.b, %want_init_on_free.exit.thread, %bb.c
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.ho, %want_init_on_free.exit.thread ], [ null, %.thread ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @warn_alloc(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @schedule_timeout_uninterruptible(i64 noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define dso_local noalias ptr @__vmalloc_node_noprof(i64 noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #10 align 16 prefalign(16) {
bb.a:
  %i.a = load i64, ptr @vmalloc_base, align 8     ; 2 uses
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #24
          to label %bb.b [label %bb.b, label %_static_cpu_has.exit], !srcloc !26

bb.b:                                             ; preds = %bb.a, %bb.a
  br label %_static_cpu_has.exit

_static_cpu_has.exit:                             ; preds = %bb.a, %bb.b
  %i.b = phi i64 [ 14073748835532800, %bb.b ], [ 35184372088832, %bb.a ]
  %i.c = add i64 %i.a, -1
  %i.d = add i64 %i.c, %i.b
  %i.e = load i64, ptr @__default_kernel_pte_mask, align 8
  %i.f = and i64 %i.e, -9223372036854775453
  %i.g = tail call noalias ptr @__vmalloc_node_range_noprof(i64 noundef %0, i64 noundef %1, i64 noundef %i.a, i64 noundef %i.d, i32 noundef %2, i64 %i.f, i64 noundef 0, i32 noundef %3, ptr noundef %4) #30
  ret ptr %i.g
}

end_hunk_0
