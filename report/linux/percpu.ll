Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/percpu?download=true
inline.NumInlined: 403
inline.NumDeleted: 186
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@pcpu_setup_first_chunk:bb.a
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
  %i.gt = tail call i32 asm "bsrl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.gp, i32 -1) #26, !srcloc !36
  %i.gu = add i32 %i.gt, -2
  %i.gv = tail call range(i32 1, -2147483648) i32 @llvm.smax.i32(i32 %i.gu, i32 1)
  br label %pcpu_chunk_slot.exit.i

pcpu_chunk_slot.exit.i:                           ; preds = %__pcpu_size_to_slot.exit.i.i.i, %bb.ar, %bb.ap, %bb.ao
  %.0.i.i137 = phi i32 [ 0, %bb.ao ], [ 0, %bb.ap ], [ %i.gs, %bb.ar ], [ %i.gv, %__pcpu_size_to_slot.exit.i.i.i ] ; 3 uses
  %i.gw = getelementptr i8, ptr %i.gg, i64 97
  %i.gx = load i8, ptr %i.gw, align 1, !range !40, !noundef !41
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
          to label %trace_percpu_create_chunk.exit [label %arch_test_bit.exit.i.i], !srcloc !53

arch_test_bit.exit.i.i:                           ; preds = %pcpu_chunk_relocate.exit
  %i.hp = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #24, !srcloc !75
  %i.hq = zext i32 %i.hp to i64
  %i.hr = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 -2147483648, 4294967296) %i.hq) #24, !srcloc !55 ; 2 uses
  %i.hs = icmp ult i8 %i.hr, 2
  tail call void @llvm.assume(i1 %i.hs)
  %i.ht = trunc nuw i8 %i.hr to i1
  br i1 %i.ht, label %bb.av, label %trace_percpu_create_chunk.exit

bb.av:                                            ; preds = %arch_test_bit.exit.i.i
  %i.hu = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.hu, ptr elementtype(i64) %i.hu) #24, !srcloc !56
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !57
  %i.hv = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_percpu_create_chunk, i64 56), align 8 ; 2 uses
  %.not.i.i139 = icmp eq ptr %i.hv, null
  br i1 %.not.i.i139, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hw = getelementptr i8, ptr %i.hv, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8
  %i.hy = tail call i32 @__SCT__tp_func_percpu_create_chunk(ptr noundef %i.hx, ptr noundef nonnull %1) #23 ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !58
  %i.hz = getelementptr i8, ptr %i.hu, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.hz, ptr elementtype(i64) %i.hz) #24, !srcloc !59
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
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !151

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
  br i1 %.not75, label %._crit_edge89, label %.lr.ph88, !llvm.loop !152

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
  %i.y = tail call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -60, 61) %i.x, i32 -1) #26, !srcloc !153
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
  %i.at = sdiv i32 %i.ar, %i.q
  %.not76 = icmp eq i32 %i.as, 0
  br i1 %.not76, label %bb.d, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b
  call void asm sideeffect "808: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 808b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 808) #24, !srcloc !154
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.51, ptr nonnull @.str.47, i32 2490, i32 0, i64 16) #24, !srcloc !155
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
  br i1 %i.bl, label %.lr.ph93, label %._crit_edge94.loopexit, !llvm.loop !156

._crit_edge94.loopexit:                           ; preds = %bb.j
  %i.bm = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge94

._crit_edge94:                                    ; preds = %._crit_edge94.loopexit, %bb.g
  %.167.lcssa = phi i32 [ %.06696, %bb.g ], [ %i.bm, %._crit_edge94.loopexit ]
  %i.bn = add nsw i32 %.198, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.bn, %i.au
  br i1 %exitcond.not, label %._crit_edge101.loopexit, label %bb.e, !llvm.loop !157

._crit_edge101.loopexit:                          ; preds = %._crit_edge94
  %.pre = load i32, ptr %i.b, align 8
  br label %._crit_edge101

._crit_edge101:                                   ; preds = %._crit_edge101.loopexit, %bb.d
  %i.bo = phi i32 [ %i.ap, %bb.d ], [ %.pre, %._crit_edge101.loopexit ] ; 2 uses
  %.1.lcssa = phi i32 [ %.062105, %bb.d ], [ %i.au, %._crit_edge101.loopexit ]
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %i.bp = sext i32 %i.bo to i64
  %i.bq = icmp slt i64 %indvars.iv.next113, %i.bp
  br i1 %i.bq, label %bb.b, label %._crit_edge107, !llvm.loop !158

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
  br i1 %.not.i80, label %pcpu_init_md_blocks.exit, label %.lr.ph.i, !llvm.loop !74

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
  %i.bi = sdiv i32 %i.bh, 4                       ; 4 uses
  %i.bj = load ptr, ptr %i.x, align 8
  tail call void @__bitmap_set(ptr noundef %i.bj, i32 noundef 0, i32 noundef %i.bi) #23
  %i.bk = load ptr, ptr %i.ac, align 8            ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.bk, i32 1, ptr elementtype(i8) %i.bk) #24, !srcloc !159
  %i.bl = load ptr, ptr %i.ac, align 8
  %i.bm = sext i32 %i.bi to i64
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bl, i64 range(i64 -2147483648, 2147483648) %i.bm) #24, !srcloc !67
  store i32 %i.bi, ptr %i.am, align 4
  tail call fastcc void @pcpu_block_update_hint_alloc(ptr noundef %i.l, i32 noundef 0, i32 noundef %i.bi) #27, !srcloc !160
  br label %bb.b

bb.b:                                             ; preds = %bitmap_set.exit74, %pcpu_init_md_blocks.exit
  %i.bn = load i32, ptr %i.r, align 8             ; 2 uses
  %.not65 = icmp eq i32 %i.bn, 0
  br i1 %.not65, label %bb.c, label %bitmap_set.exit

bitmap_set.exit:                                  ; preds = %bb.b
  %i.bo = sdiv i32 %i.bn, 4                       ; 4 uses
  %i.bp = load ptr, ptr %i.x, align 8
  %.val78 = load i32, ptr %i.s, align 4
  %i.bq = shl i32 %.val78, 10
  %i.br = sub i32 %i.bq, %i.bo
  tail call void @__bitmap_set(ptr noundef %i.bp, i32 noundef %i.br, i32 noundef %i.bo) #23
  %i.bs = load ptr, ptr %i.ac, align 8
  %i.bt = sdiv i32 %i.d, 4
  %i.bu = sext i32 %i.bt to i64
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bs, i64 range(i64 -2147483648, 2147483648) %i.bu) #24, !srcloc !67
  %i.bv = load ptr, ptr %i.ac, align 8
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bv, i64 range(i64 -2147483648, 2147483648) %i.u) #24, !srcloc !67
  %.val77 = load i32, ptr %i.s, align 4
  %i.bw = shl i32 %.val77, 10
  %i.bx = sub i32 %i.bw, %i.bo
  tail call fastcc void @pcpu_block_update_hint_alloc(ptr noundef %i.l, i32 noundef %i.bx, i32 noundef %i.bo) #27, !srcloc !161
  br label %bb.c

bb.c:                                             ; preds = %bitmap_set.exit, %bb.b
  ret ptr %i.l
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal range(i32 -22, 1) i32 @percpu_alloc_setup(ptr noundef %0) #10 section ".init.text" align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.76) #23
  %.not5 = icmp eq i32 %i.a, 0
  br i1 %.not5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr @pcpu_chosen_fc, align 4
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.77) #23
  %.not6 = icmp eq i32 %i.b, 0
  br i1 %.not6, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 2, ptr @pcpu_chosen_fc, align 4
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.c = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, ptr noundef nonnull %0) #28 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.a
  %.0 = phi i32 [ -22, %bb.a ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local i32 @pcpu_embed_first_chunk(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #10 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc ptr @pcpu_build_alloc_info(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) #30, !srcloc !162 ; 19 uses
  %i.b = icmp ugt ptr %i.a, inttoptr (i64 -4096 to ptr)
  br i1 %i.b, label %bb.b, label %bb.c

end_hunk_0
