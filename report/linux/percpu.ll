Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/percpu?download=true
inline.NumInlined: 403
inline.NumDeleted: 186
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@pcpu_setup_first_chunk:bb.a
  %i.gi = load i32, ptr %i.gh, align 4
  store i32 %i.gi, ptr @pcpu_nr_empty_pop_pages, align 4
  %i.gj = getelementptr i8, ptr %i.gg, i64 16
  %i.gk = load i32, ptr %i.gj, align 16
  %i.gl = icmp slt i32 %i.gk, 4
  br i1 %i.gl, label %pcpu_chunk_slot.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gm = getelementptr i8, ptr %i.gg, i64 28
  %i.gn = load i32, ptr %i.gm, align 4            ; 2 uses
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %pcpu_chunk_slot.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gp = shl i32 %i.gn, 2                        ; 2 uses
  %i.gq = load i32, ptr @pcpu_unit_size, align 4
  %i.gr = icmp eq i32 %i.gp, %i.gq
  br i1 %i.gr, label %bb.ar, label %__pcpu_size_to_slot.exit.i.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.gs = load i32, ptr @pcpu_free_slot, align 4
  br label %pcpu_chunk_slot.exit.i

__pcpu_size_to_slot.exit.i.i.i:                   ; preds = %bb.aq
  %i.gt = tail call i32 asm "bsrl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.gp, i32 -1) #26, !srcloc !26
  %i.gu = add i32 %i.gt, -2
  %i.gv = tail call range(i32 1, -2147483648) i32 @llvm.smax.i32(i32 %i.gu, i32 1)
  br label %pcpu_chunk_slot.exit.i

pcpu_chunk_slot.exit.i:                           ; preds = %__pcpu_size_to_slot.exit.i.i.i, %bb.ar, %bb.ap, %bb.ao
  %.0.i.i137 = phi i32 [ 0, %bb.ao ], [ 0, %bb.ap ], [ %i.gs, %bb.ar ], [ %i.gv, %__pcpu_size_to_slot.exit.i.i.i ] ; 3 uses
  %i.gw = getelementptr i8, ptr %i.gg, i64 97
  %i.gx = load i8, ptr %i.gw, align 1, !range !27, !noundef !28
  %i.gy = trunc nuw i8 %i.gx to i1
  %.not.i138 = icmp eq i32 %.0.i.i137, -1
  %or.cond.i = select i1 %i.gy, i1 true, i1 %.not.i138
  %i.gz = load ptr, ptr @pcpu_reserved_chunk, align 8
  %.not.i.i = icmp eq ptr %i.gg, %i.gz
  %or.cond8.i = select i1 %or.cond.i, i1 true, i1 %.not.i.i
  br i1 %or.cond8.i, label %pcpu_chunk_relocate.exit, label %bb.as

bb.as:                                            ; preds = %pcpu_chunk_slot.exit.i
  %i.ha = icmp sgt i32 %.0.i.i137, -1
  %i.hb = load ptr, ptr @pcpu_chunk_lists, align 8
  %i.hc = sext i32 %.0.i.i137 to i64
  %i.hd = getelementptr [16 x i8], ptr %i.hb, i64 %i.hc ; 5 uses
  %i.he = getelementptr i8, ptr %i.gg, i64 8      ; 3 uses
  %i.hf = load ptr, ptr %i.he, align 8            ; 2 uses
  %i.hg = load ptr, ptr %i.gg, align 16           ; 2 uses
  %i.hh = getelementptr i8, ptr %i.hg, i64 8
  store ptr %i.hf, ptr %i.hh, align 8
  store volatile ptr %i.hg, ptr %i.hf, align 8
  br i1 %i.ha, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.hi = load ptr, ptr %i.hd, align 8            ; 2 uses
  %i.hj = getelementptr i8, ptr %i.hi, i64 8
  store ptr %i.gg, ptr %i.hj, align 8
  store ptr %i.hi, ptr %i.gg, align 16
  store ptr %i.hd, ptr %i.he, align 8
  store volatile ptr %i.gg, ptr %i.hd, align 8
  br label %pcpu_chunk_relocate.exit

bb.au:                                            ; preds = %bb.as
  %i.hk = getelementptr i8, ptr %i.hd, i64 8      ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8            ; 2 uses
  store ptr %i.gg, ptr %i.hk, align 8
  store ptr %i.hd, ptr %i.gg, align 16
  store ptr %i.hl, ptr %i.he, align 8
  store volatile ptr %i.gg, ptr %i.hl, align 8
  br label %pcpu_chunk_relocate.exit

pcpu_chunk_relocate.exit:                         ; preds = %pcpu_chunk_slot.exit.i, %bb.at, %bb.au
  %i.hm = lshr i64 %i.g, 12
  %i.hn = load i64, ptr @pcpu_nr_populated, align 8
  %i.ho = add i64 %i.hn, %i.hm
  store i64 %i.ho, ptr @pcpu_nr_populated, align 8
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_percpu_create_chunk, i64 8), i1 false) #24
          to label %trace_percpu_create_chunk.exit [label %arch_test_bit.exit.i.i], !srcloc !31

arch_test_bit.exit.i.i:                           ; preds = %pcpu_chunk_relocate.exit
  %i.hp = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #24, !srcloc !41
  %i.hq = zext i32 %i.hp to i64
  %i.hr = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 -2147483648, 4294967296) %i.hq) #24, !srcloc !32 ; 2 uses
  %i.hs = icmp ult i8 %i.hr, 2
  tail call void @llvm.assume(i1 %i.hs)
  %i.ht = trunc nuw i8 %i.hr to i1
  br i1 %i.ht, label %bb.av, label %trace_percpu_create_chunk.exit

bb.av:                                            ; preds = %arch_test_bit.exit.i.i
  %i.hu = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.hu, ptr elementtype(i64) %i.hu) #24, !srcloc !33
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !34
  %i.hv = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_percpu_create_chunk, i64 56), align 8 ; 2 uses
  %.not.i.i139 = icmp eq ptr %i.hv, null
  br i1 %.not.i.i139, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hw = getelementptr i8, ptr %i.hv, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8
  %i.hy = tail call i32 @__SCT__tp_func_percpu_create_chunk(ptr noundef %i.hx, ptr noundef nonnull %1) #23 ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !35
  %i.hz = getelementptr i8, ptr %i.hu, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.hz, ptr elementtype(i64) %i.hz) #24, !srcloc !36
  br label %trace_percpu_create_chunk.exit

trace_percpu_create_chunk.exit:                   ; preds = %pcpu_chunk_relocate.exit, %arch_test_bit.exit.i.i, %bb.ax
  store ptr %1, ptr @pcpu_base_addr, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @pcpu_dump_alloc_info(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [9 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.a, ptr noundef nonnull align 1 dereferenceable(9) @__const.pcpu_dump_alloc_info.empty_str, i64 9, i1 false)
  %i.b = getelementptr i8, ptr %1, i64 56         ; 3 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %.068.off79 = add i32 %i.c, 9
  %.not80 = icmp ult i32 %.068.off79, 19
  br i1 %.not80, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.082 = phi i32 [ %i.e, %.lr.ph ], [ 1, %bb.a ]
  %.06881 = phi i32 [ %i.d, %.lr.ph ], [ %i.c, %bb.a ]
  %i.d = sdiv i32 %.06881, 10                     ; 2 uses
  %i.e = add i32 %.082, 1                         ; 2 uses
  %.068.off = add nsw i32 %i.d, 9
  %.not = icmp ult i32 %.068.off, 19
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !153

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 1, %bb.a ], [ %i.e, %.lr.ph ] ; 2 uses
  %i.f = load i32, ptr @__num_possible_cpus, align 4 ; 2 uses
  %.169.off83 = add i32 %i.f, 9
  %.not7584 = icmp ult i32 %.169.off83, 19
  br i1 %.not7584, label %._crit_edge89, label %.lr.ph88

.lr.ph88:                                         ; preds = %._crit_edge, %.lr.ph88
  %.06186 = phi i32 [ %i.h, %.lr.ph88 ], [ 1, %._crit_edge ]
  %.16985 = phi i32 [ %i.g, %.lr.ph88 ], [ %i.f, %._crit_edge ]
  %i.g = sdiv i32 %.16985, 10                     ; 2 uses
  %i.h = add i32 %.06186, 1                       ; 2 uses
  %.169.off = add nsw i32 %i.g, 9
  %.not75 = icmp ult i32 %.169.off, 19
  br i1 %.not75, label %._crit_edge89, label %.lr.ph88, !llvm.loop !154

._crit_edge89:                                    ; preds = %.lr.ph88, %._crit_edge
  %.061.lcssa = phi i32 [ 1, %._crit_edge ], [ %i.h, %.lr.ph88 ] ; 3 uses
  %i.i = tail call i32 @llvm.smin.i32(i32 %.061.lcssa, i32 8)
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr i8, ptr %i.a, i64 %i.j
  store i8 0, ptr %i.k, align 1
  %i.l = getelementptr i8, ptr %1, i64 40
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr i8, ptr %1, i64 24
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = udiv i64 %i.m, %i.o
  %i.q = trunc i64 %i.p to i32                    ; 4 uses
  %i.r = add i32 %.0.lcssa, 3
  %i.s = add i32 %.061.lcssa, 1
  %i.t = mul i32 %i.s, %i.q
  %i.u = add i32 %i.r, %i.t
  %i.v = sdiv i32 60, %i.u
  %i.w = tail call i32 @llvm.smax.i32(i32 %i.v, i32 1)
  %i.x = zext nneg i32 %i.w to i64
  %i.y = tail call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -60, 61) %i.x, i32 -1) #26, !srcloc !158
  %i.z = load i64, ptr %1, align 8
  %i.aa = getelementptr i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr i8, ptr %1, i64 16
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr i8, ptr %1, i64 32
  %i.af = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.ag = udiv i64 %i.m, %i.af
  %i.ah = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef %0, i64 noundef %i.z, i64 noundef %i.ab, i64 noundef %i.ad, i64 noundef %i.o, i64 noundef %i.ag, i64 noundef %i.af) #28 ; 0 uses
  %i.ai = load i32, ptr %i.b, align 8             ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph106, label %._crit_edge107

.lr.ph106:                                        ; preds = %._crit_edge89
  %i.ak = zext nneg i32 %i.y to i64
  %i.al = shl nuw i64 1, %i.ak
  %i.am = trunc i64 %i.al to i32
  %i.an = getelementptr i8, ptr %1, i64 64
  %i.ao = add i32 %i.am, -1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph106, %._crit_edge101
  %i.ap = phi i32 [ %i.ai, %.lr.ph106 ], [ %i.bo, %._crit_edge101 ]
  %indvars.iv112 = phi i64 [ 0, %.lr.ph106 ], [ %indvars.iv.next113, %._crit_edge101 ] ; 3 uses
  %.062105 = phi i32 [ 0, %.lr.ph106 ], [ %.1.lcssa, %._crit_edge101 ] ; 3 uses
  %.063104 = phi i32 [ 0, %.lr.ph106 ], [ %i.au, %._crit_edge101 ]
  %i.aq = getelementptr [24 x i8], ptr %i.an, i64 %indvars.iv112 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8            ; 2 uses
  %i.as = srem i32 %i.ar, %i.q
  %i.at = sdiv exact i32 %i.ar, %i.q
  %.not76 = icmp eq i32 %i.as, 0
  br i1 %.not76, label %bb.d, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b
  call void asm sideeffect "808: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 808b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 808) #24, !srcloc !159
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.51, ptr nonnull @.str.47, i32 2490, i32 0, i64 16) #24, !srcloc !160
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.au = add i32 %i.at, %.063104                 ; 4 uses
  %i.av = icmp slt i32 %.062105, %i.au
  br i1 %i.av, label %.lr.ph100, label %._crit_edge101

.lr.ph100:                                        ; preds = %bb.d
  %i.aw = getelementptr i8, ptr %i.aq, i64 16
  %i.ax = trunc nuw nsw i64 %indvars.iv112 to i32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph100, %._crit_edge94
  %.198 = phi i32 [ %.062105, %.lr.ph100 ], [ %i.bn, %._crit_edge94 ] ; 2 uses
  %.06597 = phi i32 [ 0, %.lr.ph100 ], [ %i.bc, %._crit_edge94 ]
  %.06696 = phi i32 [ 0, %.lr.ph100 ], [ %.167.lcssa, %._crit_edge94 ] ; 3 uses
  %i.ay = and i32 %.198, %i.ao
  %.not77 = icmp eq i32 %i.ay, 0
  br i1 %.not77, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.az = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151) #28 ; 0 uses
  %i.ba = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef %0) #28 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.bb = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, i32 noundef %.0.lcssa, i32 noundef %i.ax) #28 ; 0 uses
  %i.bc = add i32 %.06597, %i.q                   ; 3 uses
  %i.bd = icmp slt i32 %.06696, %i.bc
  br i1 %i.bd, label %.lr.ph93.preheader, label %._crit_edge94

.lr.ph93.preheader:                               ; preds = %bb.g
  %i.be = sext i32 %.06696 to i64
  %i.bf = sext i32 %i.bc to i64
  br label %.lr.ph93

.lr.ph93:                                         ; preds = %.lr.ph93.preheader, %bb.j
  %indvars.iv = phi i64 [ %i.be, %.lr.ph93.preheader ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.bg = load ptr, ptr %i.aw, align 8
  %i.bh = getelementptr [4 x i8], ptr %i.bg, i64 %indvars.iv
  %i.bi = load i32, ptr %i.bh, align 4            ; 2 uses
  %.not78 = icmp eq i32 %i.bi, 64
  br i1 %.not78, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph93
  %i.bj = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, i32 noundef %.061.lcssa, i32 noundef %i.bi) #28 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph93
  %i.bk = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, ptr noundef nonnull %i.a) #28 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.bl = icmp slt i64 %indvars.iv.next, %i.bf
  br i1 %i.bl, label %.lr.ph93, label %._crit_edge94.loopexit, !llvm.loop !155

._crit_edge94.loopexit:                           ; preds = %bb.j
  %i.bm = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge94

._crit_edge94:                                    ; preds = %._crit_edge94.loopexit, %bb.g
  %.167.lcssa = phi i32 [ %.06696, %bb.g ], [ %i.bm, %._crit_edge94.loopexit ]
  %i.bn = add nsw i32 %.198, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.bn, %i.au
  br i1 %exitcond.not, label %._crit_edge101.loopexit, label %bb.e, !llvm.loop !156

._crit_edge101.loopexit:                          ; preds = %._crit_edge94
  %.pre = load i32, ptr %i.b, align 8
  br label %._crit_edge101

._crit_edge101:                                   ; preds = %._crit_edge101.loopexit, %bb.d
  %i.bo = phi i32 [ %i.ap, %bb.d ], [ %.pre, %._crit_edge101.loopexit ] ; 2 uses
  %.1.lcssa = phi i32 [ %.062105, %bb.d ], [ %i.au, %._crit_edge101.loopexit ]
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %i.bp = sext i32 %i.bo to i64
  %i.bq = icmp slt i64 %indvars.iv.next113, %i.bp
  br i1 %i.bq, label %bb.b, label %._crit_edge107, !llvm.loop !157

._crit_edge107:                                   ; preds = %._crit_edge101, %._crit_edge89
  %i.br = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__memblock_alloc_or_panic(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc noundef ptr @pcpu_alloc_first_chunk(i64 noundef %0, i32 noundef %1) unnamed_addr #10 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = and i64 %0, -4096
  %i.b = trunc i64 %0 to i32
  %i.c = and i32 %i.b, 4095                       ; 2 uses
  %i.d = add i32 %i.c, %1                         ; 3 uses
  %i.e = add i32 %i.d, 4095                       ; 2 uses
  %i.f = and i32 %i.e, -4096
  %i.g = ashr i32 %i.e, 12                        ; 3 uses
  %narrow = add nsw i32 %i.g, 63
  %i.h = sext i32 %narrow to i64
  %i.i = lshr i64 %i.h, 3
  %i.j = and i64 %i.i, 2305843009213693944
  %i.k = add nuw nsw i64 %i.j, 128
  %i.l = tail call ptr @__memblock_alloc_or_panic(i64 noundef %i.k, i64 noundef 64, ptr noundef nonnull @__func__.pcpu_alloc_first_chunk) #23 ; 25 uses
  store volatile ptr %i.l, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 8
  store volatile ptr %i.l, ptr %i.m, align 8
  %i.n = inttoptr i64 %i.a to ptr
  %i.o = getelementptr i8, ptr %i.l, i64 64
  store ptr %i.n, ptr %i.o, align 64
  %i.p = getelementptr i8, ptr %i.l, i64 100      ; 2 uses
  store i32 %i.c, ptr %i.p, align 4
  %i.q = sub i32 %i.f, %i.d
  %i.r = getelementptr i8, ptr %i.l, i64 104      ; 2 uses
  store i32 %i.q, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %i.l, i64 108      ; 6 uses
  store i32 %i.g, ptr %i.s, align 4
  %i.t = shl nsw i32 %i.g, 10                     ; 2 uses
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %i.v = lshr exact i64 %i.u, 3
  %i.w = tail call ptr @__memblock_alloc_or_panic(i64 noundef %i.v, i64 noundef 64, ptr noundef nonnull @__func__.pcpu_alloc_first_chunk) #23
  %i.x = getelementptr i8, ptr %i.l, i64 72       ; 3 uses
  store ptr %i.w, ptr %i.x, align 8
  %i.y = or disjoint i32 %i.t, 64
  %i.z = sext i32 %i.y to i64
  %i.aa = lshr exact i64 %i.z, 3
  %i.ab = tail call ptr @__memblock_alloc_or_panic(i64 noundef %i.aa, i64 noundef 64, ptr noundef nonnull @__func__.pcpu_alloc_first_chunk) #23
  %i.ac = getelementptr i8, ptr %i.l, i64 56      ; 5 uses
  store ptr %i.ab, ptr %i.ac, align 8
  %.val = load i32, ptr %i.s, align 4
  %i.ad = sext i32 %.val to i64
  %i.ae = shl nsw i64 %i.ad, 5
  %i.af = tail call ptr @__memblock_alloc_or_panic(i64 noundef %i.ae, i64 noundef 64, ptr noundef nonnull @__func__.pcpu_alloc_first_chunk) #23 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.l, i64 80      ; 2 uses
  store ptr %i.af, ptr %i.ag, align 16
  %i.ah = getelementptr i8, ptr %i.l, i64 20
  %.val8.i = load i32, ptr %i.s, align 4          ; 2 uses
  %i.ai = shl i32 %.val8.i, 10                    ; 4 uses
  store i32 0, ptr %i.ah, align 4
  %i.aj = getelementptr i8, ptr %i.l, i64 28
  store i32 %i.ai, ptr %i.aj, align 4
  %i.ak = getelementptr i8, ptr %i.l, i64 36
  store i32 %i.ai, ptr %i.ak, align 4
  %i.al = getelementptr i8, ptr %i.l, i64 40
  store i32 %i.ai, ptr %i.al, align 8
  %i.am = getelementptr i8, ptr %i.l, i64 44      ; 2 uses
  store i32 0, ptr %i.am, align 4
  %i.an = getelementptr i8, ptr %i.l, i64 48
  store i32 %i.ai, ptr %i.an, align 16
  %.not10.i = icmp eq i32 %.val8.i, 0
  br i1 %.not10.i, label %pcpu_init_md_blocks.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.011.i = phi ptr [ %i.at, %.lr.ph.i ], [ %i.af, %bb.a ] ; 7 uses
  store i32 0, ptr %.011.i, align 4
  %i.ao = getelementptr i8, ptr %.011.i, i64 8
  store i32 1024, ptr %i.ao, align 4
  %i.ap = getelementptr i8, ptr %.011.i, i64 16
  store i32 1024, ptr %i.ap, align 4
  %i.aq = getelementptr i8, ptr %.011.i, i64 20
  store i32 1024, ptr %i.aq, align 4
  %i.ar = getelementptr i8, ptr %.011.i, i64 24
  store i32 0, ptr %i.ar, align 4
  %i.as = getelementptr i8, ptr %.011.i, i64 28
  store i32 1024, ptr %i.as, align 4
  %i.at = getelementptr i8, ptr %.011.i, i64 32   ; 2 uses
  %i.au = load ptr, ptr %i.ag, align 16
  %.val.i = load i32, ptr %i.s, align 4           ; 2 uses
  %i.av = sext i32 %.val.i to i64
  %i.aw = getelementptr [32 x i8], ptr %i.au, i64 %i.av
  %.not.i80 = icmp eq ptr %i.at, %i.aw
  br i1 %.not.i80, label %pcpu_init_md_blocks.exit, label %.lr.ph.i, !llvm.loop !0

pcpu_init_md_blocks.exit:                         ; preds = %.lr.ph.i, %bb.a
  %i.ax = phi i32 [ 0, %bb.a ], [ %.val.i, %.lr.ph.i ] ; 3 uses
  %i.ay = getelementptr i8, ptr %i.l, i64 96
  store i8 1, ptr %i.ay, align 32
  %i.az = getelementptr i8, ptr %i.l, i64 120
  %i.ba = add i32 %i.ax, 63
  %i.bb = lshr i32 %i.ba, 3
  %i.bc = and i32 %i.bb, 536870904
  %i.bd = zext nneg i32 %i.bc to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.az, i8 -1, i64 %i.bd, i1 false)
  %i.be = getelementptr i8, ptr %i.l, i64 112
  store i32 %i.ax, ptr %i.be, align 16
  %i.bf = getelementptr i8, ptr %i.l, i64 116
  store i32 %i.ax, ptr %i.bf, align 4
  %i.bg = getelementptr i8, ptr %i.l, i64 16
  store i32 %1, ptr %i.bg, align 16
  %i.bh = load i32, ptr %i.p, align 4             ; 2 uses
  %.not = icmp eq i32 %i.bh, 0
  br i1 %.not, label %bb.b, label %bitmap_set.exit74

bitmap_set.exit74:                                ; preds = %pcpu_init_md_blocks.exit
end_hunk_0
begin_hunk_1_@pcpu_embed_first_chunk:bb.a
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = sext i32 %i.bi to i64
  %i.bk = mul i64 %i.bf, %i.bj
  %i.bl = add i64 %i.bk, %i.bd                    ; 2 uses
  %i.bm = load i64, ptr @vmalloc_base, align 8
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #24
          to label %bb.h [label %bb.h, label %_static_cpu_has.exit130], !srcloc !42

bb.h:                                             ; preds = %._crit_edge157, %._crit_edge157
  br label %_static_cpu_has.exit130

_static_cpu_has.exit130:                          ; preds = %._crit_edge157, %bb.h
  %i.bn = phi i64 [ 14073748835532800, %bb.h ], [ 35184372088832, %._crit_edge157 ]
  %i.bo = add i64 %i.bn, %i.bm
  %i.bp = load i64, ptr @vmalloc_base, align 8    ; 2 uses
  %i.bq = xor i64 %i.bp, -1
  %i.br = add i64 %i.bo, %i.bq
  %i.bs = mul i64 %i.br, 3
  %i.bt = lshr i64 %i.bs, 2
  %i.bu = icmp ugt i64 %i.bl, %i.bt
  br i1 %i.bu, label %bb.i, label %.preheader142

.preheader142:                                    ; preds = %_static_cpu_has.exit130
  %i.bv = load i32, ptr %i.l, align 8             ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %.lr.ph166, label %._crit_edge169

bb.i:                                             ; preds = %_static_cpu_has.exit130
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #24
          to label %bb.j [label %bb.j, label %_static_cpu_has.exit], !srcloc !42

bb.j:                                             ; preds = %bb.i, %bb.i
  br label %_static_cpu_has.exit

_static_cpu_has.exit:                             ; preds = %bb.i, %bb.j
  %i.bx = phi i64 [ 14073748835532800, %bb.j ], [ 35184372088832, %bb.i ]
  %i.by = add i64 %i.bx, %i.bp
  %i.bz = load i64, ptr @vmalloc_base, align 8
  %i.ca = xor i64 %i.bz, -1
  %i.cb = add i64 %i.by, %i.ca
  %i.cc = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, i64 noundef %i.bl, i64 noundef %i.cb) #28 ; 0 uses
  br label %.loopexit144

.preheader:                                       ; preds = %._crit_edge164
  %i.cd = icmp sgt i32 %i.cz, 0
  br i1 %i.cd, label %.lr.ph168, label %._crit_edge169

.lr.ph166:                                        ; preds = %.preheader142, %._crit_edge164
  %i.ce = phi i32 [ %i.cz, %._crit_edge164 ], [ %i.bv, %.preheader142 ]
  %indvars.iv182 = phi i64 [ %indvars.iv.next183, %._crit_edge164 ], [ 0, %.preheader142 ] ; 3 uses
  %i.cf = getelementptr [24 x i8], ptr %i.bg, i64 %indvars.iv182 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 8
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %.lr.ph163, label %._crit_edge164

.lr.ph163:                                        ; preds = %.lr.ph166
  %i.ci = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv182
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = getelementptr i8, ptr %i.cf, i64 16
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph163, %bb.n
  %indvars.iv179 = phi i64 [ 0, %.lr.ph163 ], [ %indvars.iv.next180, %bb.n ] ; 2 uses
  %.0107161 = phi ptr [ %i.cj, %.lr.ph163 ], [ %i.cv, %bb.n ] ; 4 uses
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = getelementptr [4 x i8], ptr %i.cl, i64 %indvars.iv179
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = icmp eq i32 %i.cn, 64
  br i1 %i.co, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cp = load i64, ptr %i.be, align 8
  tail call void @memblock_free(ptr noundef %.0107161, i64 noundef %i.cp) #23
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.cq = load i64, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0107161, ptr nonnull align 1 @__per_cpu_start, i64 %i.cq, i1 false)
  %i.cr = getelementptr i8, ptr %.0107161, i64 %i.k
  %i.cs = load i64, ptr %i.be, align 8
  %i.ct = sub i64 %i.cs, %i.k
  tail call void @memblock_free(ptr noundef %i.cr, i64 noundef %i.ct) #23
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %i.cu = load i64, ptr %i.be, align 8
  %i.cv = getelementptr i8, ptr %.0107161, i64 %i.cu
  %i.cw = load i32, ptr %i.cf, align 8
  %i.cx = sext i32 %i.cw to i64
  %i.cy = icmp slt i64 %indvars.iv.next180, %i.cx
  br i1 %i.cy, label %bb.k, label %._crit_edge164.loopexit, !llvm.loop !166

._crit_edge164.loopexit:                          ; preds = %bb.n
  %.pre191 = load i32, ptr %i.l, align 8
  br label %._crit_edge164

._crit_edge164:                                   ; preds = %._crit_edge164.loopexit, %.lr.ph166
  %i.cz = phi i32 [ %.pre191, %._crit_edge164.loopexit ], [ %i.ce, %.lr.ph166 ] ; 3 uses
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1 ; 2 uses
  %i.da = sext i32 %i.cz to i64
  %i.db = icmp slt i64 %indvars.iv.next183, %i.da
  br i1 %i.db, label %.lr.ph166, label %.preheader, !llvm.loop !167

.lr.ph168:                                        ; preds = %.preheader, %.lr.ph168
  %indvars.iv185 = phi i64 [ %indvars.iv.next186, %.lr.ph168 ], [ 0, %.preheader ] ; 3 uses
  %i.dc = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv185
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = sub i64 %i.de, %i.bc
  %i.dg = getelementptr [24 x i8], ptr %i.bg, i64 %indvars.iv185
  %i.dh = getelementptr i8, ptr %i.dg, i64 8
  store i64 %i.df, ptr %i.dh, align 8
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1 ; 2 uses
  %i.di = load i32, ptr %i.l, align 8
  %i.dj = sext i32 %i.di to i64
  %i.dk = icmp slt i64 %indvars.iv.next186, %i.dj
  br i1 %i.dk, label %.lr.ph168, label %._crit_edge169, !llvm.loop !168

._crit_edge169:                                   ; preds = %.lr.ph168, %.preheader142, %.preheader
  %i.dl = lshr i64 %i.k, 12
  %i.dm = load i64, ptr %i.a, align 8
  %i.dn = load i64, ptr %i.f, align 8
  %i.do = load i64, ptr %i.i, align 8
  %i.dp = load i64, ptr %i.be, align 8
  %i.dq = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, i64 noundef %i.dl, i64 noundef %i.dm, i64 noundef %i.dn, i64 noundef %i.do, i64 noundef %i.dp) #28 ; 0 uses
  tail call void @pcpu_setup_first_chunk(ptr noundef %i.a, ptr noundef %.0108.lcssa) #30
  br label %.loopexit

.loopexit144:                                     ; preds = %bb.f, %_static_cpu_has.exit
  %.2 = phi i32 [ -22, %_static_cpu_has.exit ], [ -12, %bb.f ] ; 2 uses
  %i.dr = load i32, ptr %i.l, align 8             ; 2 uses
  %i.ds = icmp sgt i32 %i.dr, 0
  br i1 %i.ds, label %.lr.ph172, label %.loopexit

.lr.ph172:                                        ; preds = %.loopexit144
  %i.dt = getelementptr i8, ptr %i.a, i64 64
  %i.du = getelementptr i8, ptr %i.a, i64 24
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph172, %bb.q
  %i.dv = phi i32 [ %i.dr, %.lr.ph172 ], [ %i.ed, %bb.q ]
  %indvars.iv188 = phi i64 [ 0, %.lr.ph172 ], [ %indvars.iv.next189, %bb.q ] ; 3 uses
  %i.dw = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv188
  %i.dx = load ptr, ptr %i.dw, align 8            ; 2 uses
  %.not128 = icmp eq ptr %i.dx, null
  br i1 %.not128, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dy = getelementptr [24 x i8], ptr %i.dt, i64 %indvars.iv188
  %i.dz = load i32, ptr %i.dy, align 8
  %i.ea = sext i32 %i.dz to i64
  %i.eb = load i64, ptr %i.du, align 8
  %i.ec = mul i64 %i.eb, %i.ea
  tail call void @memblock_free(ptr noundef nonnull %i.dx, i64 noundef %i.ec) #23
  %.pre192 = load i32, ptr %i.l, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.ed = phi i32 [ %i.dv, %bb.o ], [ %.pre192, %bb.p ] ; 2 uses
  %indvars.iv.next189 = add nuw nsw i64 %indvars.iv188, 1 ; 2 uses
  %i.ee = sext i32 %i.ed to i64
  %i.ef = icmp slt i64 %indvars.iv.next189, %i.ee
  br i1 %i.ef, label %bb.o, label %.loopexit, !llvm.loop !169

.loopexit:                                        ; preds = %bb.q, %.loopexit144, %._crit_edge169
  %.3 = phi i32 [ 0, %._crit_edge169 ], [ %.2, %.loopexit144 ], [ %.2, %bb.q ]
  %i.eg = getelementptr i8, ptr %i.a, i64 48
  %i.eh = load i64, ptr %i.eg, align 8
  tail call void @memblock_free(ptr noundef %i.a, i64 noundef %i.eh) #23
  tail call void @memblock_free(ptr noundef nonnull %i.r, i64 noundef %i.q) #23
  br label %bb.r

bb.r:                                             ; preds = %.thread140, %.loopexit, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ %.3, %.loopexit ], [ -12, %.thread140 ]
  ret i32 %.0
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc ptr @pcpu_build_alloc_info(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #10 section ".init.text" align 16 prefalign(16) {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) @pcpu_build_alloc_info.group_map, i8 0, i64 256, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) @pcpu_build_alloc_info.group_cnt, i8 0, i64 256, i1 false)
  %i.a = tail call i64 @llvm.umax.i64(i64 %1, i64 20480)
  %i.b = add i64 %0, add (i64 sub (i64 ptrtoint (ptr @__per_cpu_end to i64), i64 ptrtoint (ptr @__per_cpu_start to i64)), i64 4095)
  %i.c = add i64 %i.b, %i.a
  %i.d = and i64 %i.c, -4096                      ; 2 uses
  %i.e = tail call i64 @llvm.umax.i64(i64 %i.d, i64 32768) ; 2 uses
  %i.f = add i64 %2, -1
  %i.g = add i64 %i.f, %i.e                       ; 2 uses
  %i.h = urem i64 %i.g, %2
  %i.i = sub nuw i64 %i.g, %i.h                   ; 7 uses
  %i.j = udiv i64 %i.i, %i.e
  %i.k = trunc i64 %i.j to i32
  br label %bb.b

bb.b:                                             ; preds = %.critedge, %bb.a
  %.0150 = phi i32 [ %i.k, %bb.a ], [ %i.p, %.critedge ] ; 4 uses
  %i.l = sext i32 %.0150 to i64                   ; 2 uses
  %i.m = urem i64 %i.i, %i.l
  %i.n = udiv exact i64 %i.i, %i.l
  %.not = icmp eq i64 %i.m, 0
  %i.o = and i64 %i.n, 4095
  %.not167 = icmp eq i64 %i.o, 0
  %or.cond = select i1 %.not, i1 %.not167, i1 false
  br i1 %or.cond, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b
  %i.p = add i32 %.0150, -1
  br label %bb.b, !llvm.loop !174

bb.c:                                             ; preds = %bb.b
  %i.q = add i64 %0, sub (i64 ptrtoint (ptr @__per_cpu_end to i64), i64 ptrtoint (ptr @__per_cpu_start to i64))
  %i.r = sub i64 %i.d, %i.q
  %i.s = load i64, ptr @__cpu_possible_mask, align 8 ; 3 uses
  store i64 %i.s, ptr @pcpu_build_alloc_info.mask, align 8
  %.not.i184199 = icmp eq i64 %i.s, 0
  br i1 %.not.i184199, label %.preheader198, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %.not176 = icmp eq ptr %3, null
  br label %find_first_bit.exit

.preheader198:                                    ; preds = %find_next_bit.exit180.thread, %bb.c
  %.0155.lcssa = phi i32 [ 0, %bb.c ], [ %i.aw, %find_next_bit.exit180.thread ] ; 8 uses
  %.not168207 = icmp eq i32 %.0150, 0
  br i1 %.not168207, label %._crit_edge212.thread, label %.lr.ph211

.lr.ph211:                                        ; preds = %.preheader198
  %i.t = icmp sgt i32 %.0155.lcssa, 0
  %i.u = load i32, ptr @__num_possible_cpus, align 4
  %i.v = udiv i32 %i.u, 3
  %wide.trip.count = zext nneg i32 %.0155.lcssa to i64
  br label %bb.i

find_first_bit.exit:                              ; preds = %find_next_bit.exit180.thread, %.lr.ph
  %.0155200 = phi i32 [ 0, %.lr.ph ], [ %i.aw, %find_next_bit.exit180.thread ] ; 4 uses
  %i.w = phi i64 [ %i.s, %.lr.ph ], [ %.pr, %find_next_bit.exit180.thread ]
  %i.x = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.w) #26, !srcloc !29 ; 2 uses
  %i.y = trunc i64 %i.x to i32                    ; 2 uses
  %i.z = and i64 %i.x, 4294967295                 ; 2 uses
  %i.aa = getelementptr [4 x i8], ptr @pcpu_build_alloc_info.group_map, i64 %i.z
  store i32 %.0155200, ptr %i.aa, align 4
  %i.ab = sext i32 %.0155200 to i64
  %i.ac = getelementptr [4 x i8], ptr @pcpu_build_alloc_info.group_cnt, i64 %i.ab ; 4 uses
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @pcpu_build_alloc_info.mask, i64 range(i64 0, 4294967296) %i.z) #24, !srcloc !183
  br label %bb.d

bb.d:                                             ; preds = %find_first_bit.exit, %arch_clear_bit.exit
  %i.af = phi i64 [ 0, %find_first_bit.exit ], [ %i.av, %arch_clear_bit.exit ]
  %i.ag = load i64, ptr @pcpu_build_alloc_info.mask, align 8 ; 3 uses
  %i.ah = shl nsw i64 -1, %i.af
  %i.ai = and i64 %i.ag, %i.ah                    ; 2 uses
  %.not23.i179 = icmp eq i64 %i.ai, 0
  br i1 %.not23.i179, label %find_next_bit.exit180.thread, label %find_next_bit.exit180

find_next_bit.exit180:                            ; preds = %bb.d
  %i.aj = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.ai) #26, !srcloc !29 ; 3 uses
  %i.ak = trunc i64 %i.aj to i32                  ; 3 uses
  %i.al = icmp ult i32 %i.ak, 64
  br i1 %i.al, label %bb.e, label %find_next_bit.exit180.thread

bb.e:                                             ; preds = %find_next_bit.exit180
  br i1 %.not176, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = tail call i32 %3(i32 noundef %i.y, i32 noundef %i.ak) #31
  %i.an = icmp eq i32 %i.am, 10
  br i1 %i.an, label %bb.g, label %arch_clear_bit.exit

bb.g:                                             ; preds = %bb.f
  %i.ao = tail call i32 %3(i32 noundef %i.ak, i32 noundef %i.y) #31
  %i.ap = icmp eq i32 %i.ao, 10
  br i1 %i.ap, label %bb.h, label %arch_clear_bit.exit

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.aq = and i64 %i.aj, 63                       ; 2 uses
  %i.ar = getelementptr [4 x i8], ptr @pcpu_build_alloc_info.group_map, i64 %i.aq
  store i32 %.0155200, ptr %i.ar, align 4
  %i.as = load i32, ptr %i.ac, align 4
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.ac, align 4
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @pcpu_build_alloc_info.mask, i64 range(i64 0, 4294967296) %i.aq) #24, !srcloc !183
  br label %arch_clear_bit.exit

arch_clear_bit.exit:                              ; preds = %bb.h, %bb.f, %bb.g
  %i.au = add nuw nsw i64 %i.aj, 1
  %i.av = and i64 %i.au, 127                      ; 2 uses
  %.not.i177 = icmp samesign ult i64 %i.av, 64
  br i1 %.not.i177, label %bb.d, label %arch_clear_bit.exit.find_next_bit.exit180.thread_crit_edge, !prof !30, !llvm.loop !175

arch_clear_bit.exit.find_next_bit.exit180.thread_crit_edge: ; preds = %arch_clear_bit.exit
  %.pr.pre = load i64, ptr @pcpu_build_alloc_info.mask, align 8
  br label %find_next_bit.exit180.thread, !llvm.loop !175

find_next_bit.exit180.thread:                     ; preds = %bb.d, %find_next_bit.exit180, %arch_clear_bit.exit.find_next_bit.exit180.thread_crit_edge
  %.pr = phi i64 [ %.pr.pre, %arch_clear_bit.exit.find_next_bit.exit180.thread_crit_edge ], [ %i.ag, %find_next_bit.exit180 ], [ %i.ag, %bb.d ] ; 2 uses
  %i.aw = add i32 %.0155200, 1                    ; 2 uses
  %.not.i184 = icmp eq i64 %.pr, 0
  br i1 %.not.i184, label %.preheader198, label %find_first_bit.exit, !llvm.loop !176

bb.i:                                             ; preds = %.lr.ph211, %bb.k
  %.1210 = phi i32 [ %.0150, %.lr.ph211 ], [ %i.bm, %bb.k ] ; 6 uses
  %.0151209 = phi i32 [ 0, %.lr.ph211 ], [ %.1152.ph, %bb.k ] ; 3 uses
  %.0153208 = phi i32 [ 2147483647, %.lr.ph211 ], [ %.1154.ph, %bb.k ] ; 3 uses
  %i.ax = sext i32 %.1210 to i64                  ; 2 uses
  %i.ay = urem i64 %i.i, %i.ax
  %i.az = udiv exact i64 %i.i, %i.ax
  %.not169 = icmp eq i64 %i.ay, 0
  %i.ba = and i64 %i.az, 4095
  %.not170 = icmp eq i64 %i.ba, 0
  %or.cond300 = select i1 %.not169, i1 %.not170, i1 false
  br i1 %or.cond300, label %.preheader197, label %bb.k

.preheader197:                                    ; preds = %bb.i
  br i1 %i.t, label %.lr.ph204, label %._crit_edge.thread

.lr.ph204:                                        ; preds = %.preheader197
  %i.bb = add i32 %.1210, -1
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph204, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph204 ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %.0148203 = phi i32 [ 0, %.lr.ph204 ], [ %i.bj, %bb.j ]
  %.0149202 = phi i32 [ 0, %.lr.ph204 ], [ %i.bg, %bb.j ]
  %i.bc = getelementptr [4 x i8], ptr @pcpu_build_alloc_info.group_cnt, i64 %indvars.iv
  %i.bd = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.be = add i32 %i.bb, %i.bd
  %i.bf = sdiv i32 %i.be, %.1210                  ; 2 uses
  %i.bg = add i32 %i.bf, %.0149202                ; 2 uses
  %i.bh = mul i32 %i.bf, %.1210
  %i.bi = sub i32 %.0148203, %i.bd
  %i.bj = add i32 %i.bi, %i.bh                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.j, !llvm.loop !177

._crit_edge:                                      ; preds = %bb.j
  %i.bk = icmp ugt i32 %i.bj, %i.v
  br i1 %i.bk, label %bb.k, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader197, %._crit_edge
  %.0149.lcssa273 = phi i32 [ %i.bg, %._crit_edge ], [ 0, %.preheader197 ] ; 2 uses
  %i.bl = icmp sgt i32 %.0149.lcssa273, %.0153208
  br i1 %i.bl, label %._crit_edge212, label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.i, %._crit_edge.thread
  %.1154.ph = phi i32 [ %.0153208, %._crit_edge ], [ %.0149.lcssa273, %._crit_edge.thread ], [ %.0153208, %bb.i ]
  %.1152.ph = phi i32 [ %.0151209, %._crit_edge ], [ %.1210, %._crit_edge.thread ], [ %.0151209, %bb.i ] ; 2 uses
  %i.bm = add i32 %.1210, -1                      ; 2 uses
  %.not168 = icmp eq i32 %i.bm, 0
  br i1 %.not168, label %._crit_edge212, label %bb.i, !llvm.loop !178

._crit_edge212:                                   ; preds = %bb.k, %._crit_edge.thread
  %.0151.lcssa = phi i32 [ %.0151209, %._crit_edge.thread ], [ %.1152.ph, %bb.k ] ; 8 uses
  %.not171 = icmp eq i32 %.0151.lcssa, 0
  br i1 %.not171, label %._crit_edge212.thread, label %.preheader, !prof !43

.preheader:                                       ; preds = %._crit_edge212
  %i.bn = icmp sgt i32 %.0155.lcssa, 0            ; 3 uses
  br i1 %i.bn, label %.lr.ph218, label %._crit_edge219

.lr.ph218:                                        ; preds = %.preheader
  %i.bo = add i32 %.0151.lcssa, -1
  %wide.trip.count242 = zext nneg i32 %.0155.lcssa to i64
  br label %bb.l

._crit_edge212.thread:                            ; preds = %.preheader198, %._crit_edge212
  tail call void asm sideeffect "830: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 830b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 830) #24, !srcloc !184
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.51, ptr nonnull @.str.47, i32 2902, i32 0, i64 16) #24, !srcloc !185
  unreachable

bb.l:                                             ; preds = %.lr.ph218, %bb.l
  %indvars.iv239 = phi i64 [ 0, %.lr.ph218 ], [ %indvars.iv.next240, %bb.l ] ; 2 uses
  %.0146217 = phi i32 [ 0, %.lr.ph218 ], [ %i.bu, %bb.l ]
  %i.bp = getelementptr [4 x i8], ptr @pcpu_build_alloc_info.group_cnt, i64 %indvars.iv239
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = add i32 %i.bo, %i.bq
  %.fr175 = freeze i32 %i.br                      ; 2 uses
  %i.bs = srem i32 %.fr175, %.0151.lcssa
  %i.bt = sub i32 %.0146217, %i.bs
  %i.bu = add i32 %i.bt, %.fr175                  ; 2 uses
  %indvars.iv.next240 = add nuw nsw i64 %indvars.iv239, 1 ; 2 uses
  %exitcond243.not = icmp eq i64 %indvars.iv.next240, %wide.trip.count242
  br i1 %exitcond243.not, label %._crit_edge219, label %bb.l, !llvm.loop !179

._crit_edge219:                                   ; preds = %bb.l, %.preheader
  %.0146.lcssa = phi i32 [ 0, %.preheader ], [ %i.bu, %bb.l ] ; 4 uses
  %i.bv = sext i32 %.0155.lcssa to i64
  %i.bw = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 -2147483648, 288230376151711744) %i.bv, i64 24) ; 2 uses
  %i.bx = extractvalue { i64, i1 } %i.bw, 1       ; 2 uses
  %i.by = extractvalue { i64, i1 } %i.bw, 0
  %i.bz = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 range(i64 -51539607552, 6917529027641081833) %i.by, i64 64) ; 2 uses
  %i.ca = extractvalue { i64, i1 } %i.bz, 1
  %i.cb = select i1 %i.bx, i1 true, i1 %i.ca
  %i.cc = extractvalue { i64, i1 } %i.bz, 0
  %i.cd = select i1 %i.bx, i64 66, i64 %i.cc
  %i.ce = select i1 %i.cb, i64 2, i64 %i.cd       ; 2 uses
  %i.cf = sext i32 %.0146.lcssa to i64
  %i.cg = shl nsw i64 %i.cf, 2
  %i.ch = add nsw i64 %i.ce, 4092
  %i.ci = add nsw i64 %i.ch, %i.cg
  %i.cj = and i64 %i.ci, -4096                    ; 2 uses
  %i.ck = tail call ptr @memblock_alloc_try_nid(i64 noundef range(i64 0, -4095) %i.cj, i64 noundef 4096, i64 noundef 0, i64 noundef 0, i32 noundef -1) #23 ; 13 uses
  %.not.i181 = icmp eq ptr %i.ck, null
  br i1 %.not.i181, label %pcpu_alloc_alloc_info.exit.thread, label %bb.m

bb.m:                                             ; preds = %._crit_edge219
  %i.cl = and i64 %i.ce, -8
  %i.cm = getelementptr i8, ptr %i.ck, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.ck, i64 80     ; 3 uses
  store ptr %i.cm, ptr %i.cn, align 8
  %i.co = icmp sgt i32 %.0146.lcssa, 0
  br i1 %i.co, label %.lr.ph223.preheader, label %pcpu_alloc_alloc_info.exit

.lr.ph223.preheader:                              ; preds = %bb.m
  %wide.trip.count247 = zext nneg i32 %.0146.lcssa to i64
  br label %.lr.ph223

.lr.ph223:                                        ; preds = %.lr.ph223.preheader, %.lr.ph223
  %indvars.iv244 = phi i64 [ 0, %.lr.ph223.preheader ], [ %indvars.iv.next245, %.lr.ph223 ] ; 2 uses
  %i.cp = load ptr, ptr %i.cn, align 8
  %i.cq = getelementptr [4 x i8], ptr %i.cp, i64 %indvars.iv244
  store i32 64, ptr %i.cq, align 4
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1 ; 2 uses
  %exitcond248.not = icmp eq i64 %indvars.iv.next245, %wide.trip.count247
  br i1 %exitcond248.not, label %pcpu_alloc_alloc_info.exit, label %.lr.ph223, !llvm.loop !4

pcpu_alloc_alloc_info.exit:                       ; preds = %.lr.ph223, %bb.m
  %i.cr = getelementptr i8, ptr %i.ck, i64 56
  store i32 %.0155.lcssa, ptr %i.cr, align 8
  %i.cs = getelementptr i8, ptr %i.ck, i64 48
  store i64 %i.cj, ptr %i.cs, align 8
  %i.ct = getelementptr i8, ptr %i.ck, i64 64     ; 2 uses
  br i1 %i.bn, label %.lr.ph226, label %._crit_edge227

.lr.ph226:                                        ; preds = %pcpu_alloc_alloc_info.exit
  %i.cu = load ptr, ptr %i.cn, align 8
  %i.cv = add i32 %.0151.lcssa, -1
  %wide.trip.count252 = zext nneg i32 %.0155.lcssa to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph226, %bb.n
  %indvars.iv249 = phi i64 [ 0, %.lr.ph226 ], [ %indvars.iv.next250, %bb.n ] ; 3 uses
  %.0160224 = phi ptr [ %i.cu, %.lr.ph226 ], [ %i.de, %bb.n ] ; 2 uses
  %i.cw = getelementptr [24 x i8], ptr %i.ct, i64 %indvars.iv249
  %i.cx = getelementptr i8, ptr %i.cw, i64 16
  store ptr %.0160224, ptr %i.cx, align 8
  %i.cy = getelementptr [4 x i8], ptr @pcpu_build_alloc_info.group_cnt, i64 %indvars.iv249
  %i.cz = load i32, ptr %i.cy, align 4
  %i.da = add i32 %i.cv, %i.cz
  %.fr174 = freeze i32 %i.da                      ; 2 uses
  %i.db = srem i32 %.fr174, %.0151.lcssa
  %i.dc = sub nsw i32 %.fr174, %i.db
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr [4 x i8], ptr %.0160224, i64 %i.dd
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 1 ; 2 uses
  %exitcond253.not = icmp eq i64 %indvars.iv.next250, %wide.trip.count252
  br i1 %exitcond253.not, label %._crit_edge227, label %bb.n, !llvm.loop !180

._crit_edge227:                                   ; preds = %bb.n, %pcpu_alloc_alloc_info.exit
  store i64 sub (i64 ptrtoint (ptr @__per_cpu_end to i64), i64 ptrtoint (ptr @__per_cpu_start to i64)), ptr %i.ck, align 8
  %i.df = getelementptr i8, ptr %i.ck, i64 8
  store i64 %0, ptr %i.df, align 8
  %i.dg = getelementptr i8, ptr %i.ck, i64 16
  store i64 %i.r, ptr %i.dg, align 8
  %i.dh = sext i32 %.0151.lcssa to i64
  %i.di = udiv i64 %i.i, %i.dh
  %i.dj = getelementptr i8, ptr %i.ck, i64 24     ; 2 uses
  store i64 %i.di, ptr %i.dj, align 8
  %i.dk = getelementptr i8, ptr %i.ck, i64 32
  store i64 %2, ptr %i.dk, align 8
  %i.dl = getelementptr i8, ptr %i.ck, i64 40
  store i64 %i.i, ptr %i.dl, align 8
  br i1 %i.bn, label %.lr.ph231, label %._crit_edge232

.lr.ph231:                                        ; preds = %._crit_edge227
  %i.dm = add i32 %.0151.lcssa, -1
  %wide.trip.count257 = zext nneg i32 %.0155.lcssa to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph231, %find_next_bit.exit.thread
  %indvars.iv254 = phi i64 [ 0, %.lr.ph231 ], [ %indvars.iv.next255, %find_next_bit.exit.thread ] ; 3 uses
  %.0158228 = phi i32 [ 0, %.lr.ph231 ], [ %i.er, %find_next_bit.exit.thread ] ; 2 uses
  %i.dn = getelementptr [24 x i8], ptr %i.ct, i64 %indvars.iv254 ; 6 uses
  %i.do = sext i32 %.0158228 to i64
  %i.dp = load i64, ptr %i.dj, align 8
  %i.dq = mul i64 %i.dp, %i.do
  %i.dr = getelementptr i8, ptr %i.dn, i64 8
  store i64 %i.dq, ptr %i.dr, align 8
  %i.ds = getelementptr i8, ptr %i.dn, i64 16
  %.pre260 = load i64, ptr @__cpu_possible_mask, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.s
  %i.dt = phi i64 [ %.pre260, %bb.o ], [ %i.ek, %bb.s ] ; 2 uses
  %i.du = phi i64 [ 0, %bb.o ], [ %i.em, %bb.s ]
  %i.dv = shl nsw i64 -1, %i.du
  %i.dw = and i64 %i.dt, %i.dv                    ; 2 uses
  %.not23.i = icmp eq i64 %i.dw, 0
  br i1 %.not23.i, label %find_next_bit.exit.thread, label %find_next_bit.exit

find_next_bit.exit:                               ; preds = %bb.p
  %i.dx = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.dw) #26, !srcloc !29 ; 3 uses
  %i.dy = trunc i64 %i.dx to i32                  ; 2 uses
  %i.dz = icmp ult i32 %i.dy, 64
  br i1 %i.dz, label %bb.q, label %find_next_bit.exit.thread

bb.q:                                             ; preds = %find_next_bit.exit
  %i.ea = and i64 %i.dx, 63
  %i.eb = getelementptr [4 x i8], ptr @pcpu_build_alloc_info.group_map, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4
end_hunk_1
