Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/vmscan?download=true
inline.NumInlined: 1147
inline.NumDeleted: 343
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 13
begin_hunk_0_@shrink_active_list:bb.a
  %i.l = ashr exact i64 %sext, 32
  call void @mod_node_page_state(ptr noundef %i.g, i32 noundef 58, i64 noundef %i.l) #14
  call void @_raw_spin_unlock_irq(ptr noundef %i.h) #14
  call void @__rcu_read_unlock() #14
  %i.m = load volatile ptr, ptr %4, align 8
  %.not51 = icmp eq ptr %i.m, %4
  br i1 %.not51, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %.052 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.n ]  ; 3 uses
  %i.o = call i32 @__SCT__cond_resched() #14      ; 0 uses
  %.val = load ptr, ptr %i.c, align 8             ; 12 uses
  %i.p = getelementptr i8, ptr %.val, i64 -8      ; 11 uses
  %i.q = getelementptr i8, ptr %.val, i64 8       ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = load ptr, ptr %.val, align 8             ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 8
  store ptr %i.r, ptr %i.t, align 8
  store volatile ptr %i.s, ptr %i.r, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %.val, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.q, align 8
  call void @__rcu_read_lock() #14
  %i.u = call ptr @folio_mapping(ptr noundef %i.p) #14 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %folio_evictable.exit, label %.split.i

.split.i:                                         ; preds = %bb.b
  %i.v = getelementptr i8, ptr %i.u, i64 104
  %i.w = load volatile i64, ptr %i.v, align 8
  %i.x = and i64 %i.w, 8
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %folio_evictable.exit, label %folio_evictable.exit.thread, !prof !88

folio_evictable.exit.thread:                      ; preds = %.split.i
  call void @__rcu_read_unlock() #14
  br label %bb.c

folio_evictable.exit:                             ; preds = %bb.b, %.split.i
  %i.y = load volatile i64, ptr %i.p, align 8
  %i.z = and i64 %i.y, 1048576
  %.not3.i = icmp eq i64 %i.z, 0
  call void @__rcu_read_unlock() #14
  br i1 %.not3.i, label %bb.d, label %bb.c, !prof !89

bb.c:                                             ; preds = %folio_evictable.exit.thread, %folio_evictable.exit
  call void @folio_putback_lru(ptr noundef %i.p) #18
  br label %bb.n, !llvm.loop !182

bb.d:                                             ; preds = %folio_evictable.exit
  %i.aa = load i32, ptr @buffer_heads_over_limit, align 4
  %.not44 = icmp eq i32 %i.aa, 0
  br i1 %.not44, label %bb.h, label %bb.e, !prof !33

bb.e:                                             ; preds = %bb.d
  %i.ab = call fastcc zeroext i1 @folio_needs_release(ptr noundef %i.p) #18, !srcloc !183
  br i1 %i.ab, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ac = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.p, i64 range(i64 0, 2) 0, ptr elementtype(i64) %i.p) #15, !srcloc !87 ; 2 uses
  %i.ad = icmp ult i8 %i.ac, 2
  call void @llvm.assume(i1 %i.ad)
  %i.ae = trunc nuw i8 %i.ac to i1
  br i1 %i.ae, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = call zeroext i1 @filemap_release_folio(ptr noundef %i.p, i32 noundef 0) #14 ; 0 uses
  call void @folio_unlock(ptr noundef %i.p) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.d
  %i.ag = load ptr, ptr %i.n, align 8
  %i.ah = call i32 @folio_referenced(ptr noundef %i.p, i32 noundef 0, ptr noundef %i.ag, ptr noundef nonnull %i.b) #14
  %.not45 = icmp eq i32 %i.ah, 0
  br i1 %.not45, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load i64, ptr %i.b, align 8
  %i.aj = and i64 %i.ai, 4
  %.not46 = icmp eq i64 %i.aj, 0
  br i1 %.not46, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = load volatile i64, ptr %i.p, align 8
  %i.al = and i64 %i.ak, 131072
  %.not.i48.not = icmp eq i64 %i.al, 0
  br i1 %.not.i48.not, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.am = load volatile i64, ptr %i.p, align 8
  %i.an = and i64 %i.am, 64
  %.not.i49 = icmp eq i64 %i.an, 0
  br i1 %.not.i49, label %folio_nr_pages.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr i8, ptr %.val, i64 56
  %.val.i = load i64, ptr %i.ao, align 16
  %i.ap = and i64 %.val.i, 255
  %i.aq = shl nuw i64 1, %i.ap
  %i.ar = trunc i64 %i.aq to i32
  br label %folio_nr_pages.exit

folio_nr_pages.exit:                              ; preds = %bb.k, %bb.l
  %.0.i = phi i32 [ %i.ar, %bb.l ], [ 1, %bb.k ]
  %i.as = add i32 %.0.i, %.052
  %i.at = load ptr, ptr %5, align 8               ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 8
  store ptr %.val, ptr %i.au, align 8
  store ptr %i.at, ptr %.val, align 8
  store ptr %5, ptr %i.q, align 8
  store volatile ptr %.val, ptr %5, align 8
  br label %bb.n, !llvm.loop !182

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.h
  %i.av = getelementptr i8, ptr %.val, i64 -7     ; 4 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.av, i32 -2, ptr elementtype(i8) %i.av) #15, !srcloc !85
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.av, i32 2, ptr elementtype(i8) %i.av) #15, !srcloc !92
  %i.aw = load ptr, ptr %6, align 8               ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  store ptr %.val, ptr %i.ax, align 8
  store ptr %i.aw, ptr %.val, align 8
  store ptr %6, ptr %i.q, align 8
  store volatile ptr %.val, ptr %6, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %folio_nr_pages.exit, %bb.c
  %.1 = phi i32 [ %.052, %bb.c ], [ %i.as, %folio_nr_pages.exit ], [ %.052, %bb.m ] ; 2 uses
  %i.ay = load volatile ptr, ptr %4, align 8
  %.not = icmp eq ptr %i.ay, %4
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.n, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.n ] ; 2 uses
  %i.az = zext i1 %i.f to i32
  %i.ba = call fastcc i32 @move_folios_to_lru(ptr noundef nonnull %5) #18, !srcloc !184
  %i.bb = call fastcc i32 @move_folios_to_lru(ptr noundef nonnull %6) #18, !srcloc !185
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  call void asm sideeffect "addq $1, %gs:$0", "=*m,re,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) getelementptr inbounds nuw (i8, ptr @vm_event_states, i64 144), i64 range(i64 -2147483648, 4294967296) %i.bc, ptr nonnull elementtype(i64) getelementptr inbounds nuw (i8, ptr @vm_event_states, i64 144)) #15, !srcloc !100
  %i.bd = sub i64 0, %i.i
  call void @mod_node_page_state(ptr noundef %i.g, i32 noundef %i.j, i64 noundef %i.bd) #14
  call void @__rcu_read_lock() #14
  call void @_raw_spin_lock_irq(ptr noundef %i.h) #14
  call void @lru_note_cost_unlock_irq(ptr noundef %1, i1 noundef zeroext %i.f, i32 noundef 0, i32 noundef %.0.lcssa) #14
  %i.be = getelementptr i8, ptr %1, i64 -320
  %i.bf = load i32, ptr %i.be, align 64
  %i.bg = zext i32 %i.ba to i64
  %i.bh = zext i32 %.0.lcssa to i64
  %i.bi = getelementptr i8, ptr %2, i64 52
  %i.bj = load i8, ptr %i.bi, align 4
  %i.bk = sext i8 %i.bj to i32
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mm_vmscan_lru_shrink_active, i64 8), i1 false) #15
          to label %trace_mm_vmscan_lru_shrink_active.exit [label %cpumask_test_cpu.exit.i.i], !srcloc !70

cpumask_test_cpu.exit.i.i:                        ; preds = %._crit_edge
  %i.bl = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #15, !srcloc !186
  %i.bm = zext i32 %i.bl to i64
  %i.bn = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 -2147483648, 4294967296) %i.bm) #15, !srcloc !72 ; 2 uses
  %i.bo = icmp ult i8 %i.bn, 2
  call void @llvm.assume(i1 %i.bo)
  %i.bp = trunc nuw i8 %i.bn to i1
  br i1 %i.bp, label %bb.o, label %trace_mm_vmscan_lru_shrink_active.exit

bb.o:                                             ; preds = %cpumask_test_cpu.exit.i.i
  %i.bq = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bq, ptr elementtype(i64) %i.bq) #15, !srcloc !73
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !74
  %i.br = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_mm_vmscan_lru_shrink_active, i64 56), align 8 ; 2 uses
  %.not.i.i50 = icmp eq ptr %i.br, null
  br i1 %.not.i.i50, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call i32 @__SCT__tp_func_mm_vmscan_lru_shrink_active(ptr noundef %i.bt, i32 noundef %i.bf, i64 noundef %i.i, i64 noundef range(i64 0, 4294967296) %i.bg, i64 noundef range(i64 0, 4294967296) %i.bc, i64 noundef range(i64 0, 4294967296) %i.bh, i32 noundef range(i32 -128, 128) %i.bk, i32 noundef range(i32 0, 2) %i.az) #14 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !75
  %i.bv = getelementptr i8, ptr %i.bq, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bv, ptr elementtype(i64) %i.bv) #15, !srcloc !76
  br label %trace_mm_vmscan_lru_shrink_active.exit

trace_mm_vmscan_lru_shrink_active.exit:           ; preds = %._crit_edge, %cpumask_test_cpu.exit.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @lru_add_drain() local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i64 @isolate_lru_folios(i64 noundef range(i64 1, 0) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef range(i32 0, 4) %5) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 9 uses
  %i.b = alloca [4 x i64], align 16               ; 9 uses
  %6 = alloca %struct.list_head, align 8          ; 11 uses
  %i.c = zext nneg i32 %5 to i64
  %i.d = getelementptr [16 x i8], ptr %1, i64 %i.c ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store ptr %6, ptr %6, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %6, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %i.g = getelementptr i8, ptr %4, i64 53         ; 2 uses
  %i.h = getelementptr i8, ptr %4, i64 48
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %folio_put.exit
  %.05585 = phi i64 [ 0, %bb.a ], [ %.1, %folio_put.exit ] ; 9 uses
  %.05684 = phi i64 [ 0, %bb.a ], [ %.157, %folio_put.exit ] ; 2 uses
  %.05883 = phi i64 [ 0, %bb.a ], [ %i.s, %folio_put.exit ] ; 2 uses
  %.06182 = phi i64 [ 0, %bb.a ], [ %.162, %folio_put.exit ] ; 9 uses
  %i.i = load volatile ptr, ptr %i.d, align 8
  %.not = icmp eq ptr %i.i, %i.d
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val68 = load ptr, ptr %i.f, align 8           ; 10 uses
  %i.j = getelementptr i8, ptr %.val68, i64 -8    ; 7 uses
  %i.k = getelementptr i8, ptr %.val68, i64 8     ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not66 = icmp eq ptr %i.l, %i.d
  br i1 %.not66, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.l, i64 -8
  call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09prefetcht0 $1\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 6*32+ 8)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09prefetchw $1\0A775:\0A.popsection\0A", "i,*m,~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i8) %i.m) #15, !srcloc !187
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = load volatile i64, ptr %i.j, align 8     ; 2 uses
  %i.o = and i64 %i.n, 64
  %.not.i72 = icmp eq i64 %i.o, 0
  br i1 %.not.i72, label %folio_nr_pages.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %.val68, i64 56
  %.val.i = load i64, ptr %i.p, align 16
  %i.q = and i64 %.val.i, 255
  %i.r = shl nuw i64 1, %i.q
  br label %folio_nr_pages.exit

folio_nr_pages.exit:                              ; preds = %bb.e, %bb.f
  %.0.i73 = phi i64 [ %i.r, %bb.f ], [ 1, %bb.e ] ; 5 uses
  %i.s = add i64 %.0.i73, %.05883                 ; 2 uses
  %i.t = icmp ult i64 %.05585, 32768
  br i1 %i.t, label %bb.g, label %bb.i

bb.g:                                             ; preds = %folio_nr_pages.exit
  %i.u = lshr i64 %i.n, 56                        ; 2 uses
  %i.v = trunc nuw nsw i64 %i.u to i32
  %i.w = and i32 %i.v, 3
  %i.x = load i8, ptr %i.g, align 1
  %i.y = sext i8 %i.x to i32
  %i.z = icmp ugt i32 %i.w, %i.y
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %7 = shl nuw nsw i64 %i.u, 3
  %i.aa = and i64 %7, 24                          ; 2 uses
  %.0..0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aa
  %i.ab = load i64, ptr %.0..0..sroa_idx, align 8
  %i.ac = add i64 %i.ab, %.0.i73
  %.0..0..sroa_idx118 = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aa
  store i64 %i.ac, ptr %.0..0..sroa_idx118, align 8
  %i.ad = add nuw nsw i64 %.05585, 1
  br label %folio_put.exit

bb.i:                                             ; preds = %bb.g, %folio_nr_pages.exit
  %i.ae = add i64 %.0.i73, %.05684                ; 7 uses
  %i.af = load volatile i64, ptr %i.j, align 8
  %i.ag = and i64 %i.af, 32
  %.not81 = icmp eq i64 %i.ag, 0
  br i1 %.not81, label %folio_put.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = load i16, ptr %i.h, align 8
  %i.ai = and i16 %i.ah, 32
  %.not67 = icmp eq i16 %i.ai, 0
  br i1 %.not67, label %bb.k, label %folio_mapped.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.aj = load volatile i64, ptr %i.j, align 8
  %i.ak = and i64 %i.aj, 64
  %.not.i.i74 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i74, label %bb.l, label %bb.m, !prof !33

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr i8, ptr %.val68, i64 40
  %i.am = load volatile i32, ptr %i.al, align 8   ; 2 uses
  %i.an = icmp slt i32 %i.am, -16777216
  br i1 %i.an, label %folio_mapped.exit.thread, label %folio_mapped.exit

bb.m:                                             ; preds = %bb.k
  %i.ao = getelementptr i8, ptr %.val68, i64 72
  %i.ap = load volatile i32, ptr %i.ao, align 8
  br label %folio_mapped.exit

folio_mapped.exit:                                ; preds = %bb.l, %bb.m
  %.05.i.i.in = phi i32 [ %i.am, %bb.l ], [ %i.ap, %bb.m ]
  %i.aq = icmp ult i32 %.05.i.i.in, 2147483647
  br i1 %i.aq, label %folio_put.exit, label %folio_mapped.exit.thread

folio_mapped.exit.thread:                         ; preds = %bb.l, %folio_mapped.exit, %bb.j
  %i.ar = getelementptr i8, ptr %.val68, i64 44   ; 5 uses
  %i.as = load volatile i32, ptr %i.ar, align 4   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.i, label %folio_put.exit, label %.lr.ph.i.i.i, !prof !188

.lr.ph.i.i.i:                                     ; preds = %folio_mapped.exit.thread, %arch_atomic_try_cmpxchg.exit.i.i.i
  %.05.i.i.i = phi i32 [ %i.ay, %arch_atomic_try_cmpxchg.exit.i.i.i ], [ %i.as, %folio_mapped.exit.thread ] ; 2 uses
  %i.at = add i32 %.05.i.i.i, 1
  %i.au = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ar, i32 range(i32 2, 1) %i.at, ptr elementtype(i32) %i.ar, i32 %.05.i.i.i) #15, !srcloc !189 ; 2 uses
  %i.av = extractvalue { i8, i32 } %i.au, 0       ; 2 uses
  %i.aw = icmp ult i8 %i.av, 2
  call void @llvm.assume(i1 %i.aw)
  %i.ax = trunc nuw i8 %i.av to i1
  br i1 %i.ax, label %folio_try_get.exit, label %arch_atomic_try_cmpxchg.exit.i.i.i, !prof !33

arch_atomic_try_cmpxchg.exit.i.i.i:               ; preds = %.lr.ph.i.i.i
  %i.ay = extractvalue { i8, i32 } %i.au, 1       ; 2 uses
  %.not8.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not8.i.i.i, label %folio_put.exit, label %.lr.ph.i.i.i, !prof !190

folio_try_get.exit:                               ; preds = %.lr.ph.i.i.i
  %i.az = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btrq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.j, i64 5, ptr elementtype(i64) %i.j) #15, !srcloc !93 ; 2 uses
  %i.ba = icmp ult i8 %i.az, 2
  call void @llvm.assume(i1 %i.ba)
  %i.bb = trunc nuw i8 %i.az to i1
  br i1 %i.bb, label %bb.p, label %bb.n

bb.n:                                             ; preds = %folio_try_get.exit
  %i.bc = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ar, ptr elementtype(i32) %i.ar) #15, !srcloc !84 ; 2 uses
  %i.bd = icmp ult i8 %i.bc, 2
  call void @llvm.assume(i1 %i.bd)
  %.not.i75 = icmp eq i8 %i.bc, 0
  br i1 %.not.i75, label %folio_put.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @__folio_put(ptr noundef %i.j) #14
  br label %folio_put.exit

bb.p:                                             ; preds = %folio_try_get.exit
  %i.be = add i64 %.0.i73, %.06182
  %.val69 = load i64, ptr %i.j, align 16
  %i.bf = lshr i64 %.val69, 53
  %i.bg = and i64 %i.bf, 24                       ; 2 uses
  %.0..0..sroa_idx121 = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bg
  %i.bh = load i64, ptr %.0..0..sroa_idx121, align 8
  %i.bi = add i64 %i.bh, %.0.i73
  %.0..0..sroa_idx124 = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bg
  store i64 %i.bi, ptr %.0..0..sroa_idx124, align 8
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i, %folio_mapped.exit.thread, %bb.o, %bb.n, %folio_mapped.exit, %bb.i, %bb.p, %bb.h
  %.162 = phi i64 [ %.06182, %bb.h ], [ %.06182, %bb.o ], [ %i.be, %bb.p ], [ %.06182, %bb.i ], [ %.06182, %folio_mapped.exit ], [ %.06182, %bb.n ], [ %.06182, %folio_mapped.exit.thread ], [ %.06182, %arch_atomic_try_cmpxchg.exit.i.i.i ] ; 2 uses
  %.157 = phi i64 [ %.05684, %bb.h ], [ %i.ae, %bb.o ], [ %i.ae, %bb.p ], [ %i.ae, %bb.i ], [ %i.ae, %folio_mapped.exit ], [ %i.ae, %bb.n ], [ %i.ae, %folio_mapped.exit.thread ], [ %i.ae, %arch_atomic_try_cmpxchg.exit.i.i.i ] ; 2 uses
  %.1 = phi i64 [ %i.ad, %bb.h ], [ %.05585, %bb.o ], [ %.05585, %bb.p ], [ %.05585, %bb.i ], [ %.05585, %folio_mapped.exit ], [ %.05585, %bb.n ], [ %.05585, %folio_mapped.exit.thread ], [ %.05585, %arch_atomic_try_cmpxchg.exit.i.i.i ]
  %.054 = phi ptr [ %6, %bb.h ], [ %i.d, %bb.o ], [ %2, %bb.p ], [ %i.d, %bb.i ], [ %i.d, %folio_mapped.exit ], [ %i.d, %bb.n ], [ %i.d, %folio_mapped.exit.thread ], [ %i.d, %arch_atomic_try_cmpxchg.exit.i.i.i ] ; 3 uses
  %i.bj = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.bk = load ptr, ptr %.val68, align 8          ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  store ptr %i.bj, ptr %i.bl, align 8
  store volatile ptr %i.bk, ptr %i.bj, align 8
  %i.bm = load ptr, ptr %.054, align 8            ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 8
  store ptr %.val68, ptr %i.bn, align 8
  store ptr %i.bm, ptr %.val68, align 8
  store ptr %.054, ptr %i.k, align 8
  store volatile ptr %.val68, ptr %.054, align 8
  %i.bo = icmp ult i64 %.157, %0
  br i1 %i.bo, label %bb.b, label %.critedge, !llvm.loop !191

.critedge:                                        ; preds = %folio_put.exit, %bb.b
  %.061.lcssa = phi i64 [ %.162, %folio_put.exit ], [ %.06182, %bb.b ] ; 2 uses
  %.058.lcssa = phi i64 [ %i.s, %folio_put.exit ], [ %.05883, %bb.b ] ; 2 uses
  %i.bp = load volatile ptr, ptr %6, align 8
  %.not80 = icmp eq ptr %i.bp, %6
  br i1 %.not80, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %.critedge
  %i.bq = load volatile ptr, ptr %6, align 8      ; 3 uses
  %.not.i76 = icmp eq ptr %i.bq, %6
  br i1 %.not.i76, label %list_splice.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = load ptr, ptr %i.d, align 8             ; 2 uses
  %.val4.i = load ptr, ptr %i.e, align 8          ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bq, i64 8
  store ptr %i.d, ptr %i.bs, align 8
  store ptr %i.bq, ptr %i.d, align 8
  store ptr %i.br, ptr %.val4.i, align 8
  %i.bt = getelementptr i8, ptr %i.br, i64 8
  store ptr %.val4.i, ptr %i.bt, align 8
  br label %list_splice.exit

list_splice.exit:                                 ; preds = %bb.q, %bb.r
  %i.bu = load i64, ptr %i.b, align 16            ; 4 uses
  %.not65 = icmp eq i64 %i.bu, 0
  br i1 %.not65, label %__count_vm_events.exit, label %bb.s

bb.s:                                             ; preds = %list_splice.exit
  call void asm "addq $1, %gs:$0", "=*m,re,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) getelementptr inbounds nuw (i8, ptr @vm_event_states, i64 96), i64 %i.bu, ptr nonnull elementtype(i64) getelementptr inbounds nuw (i8, ptr @vm_event_states, i64 96)) #15, !srcloc !168
  br label %__count_vm_events.exit

__count_vm_events.exit:                           ; preds = %bb.s, %list_splice.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bw = load i64, ptr %i.bv, align 8            ; 3 uses
  %.not65.1 = icmp eq i64 %i.bw, 0
  br i1 %.not65.1, label %bb.t, label %__count_vm_events.exit.1

__count_vm_events.exit.1:                         ; preds = %__count_vm_events.exit
  call void asm "addq $1, %gs:$0", "=*m,re,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) getelementptr inbounds nuw (i8, ptr @vm_event_states, i64 104), i64 %i.bw, ptr nonnull elementtype(i64) getelementptr inbounds nuw (i8, ptr @vm_event_states, i64 104)) #15, !srcloc !168
  %i.bx = add i64 %i.bw, %i.bu
  br label %bb.t

bb.t:                                             ; preds = %__count_vm_events.exit.1, %__count_vm_events.exit
  %.160.1 = phi i64 [ %i.bx, %__count_vm_events.exit.1 ], [ %i.bu, %__count_vm_events.exit ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bz = load i64, ptr %i.by, align 16           ; 3 uses
  %.not65.2 = icmp eq i64 %i.bz, 0
  br i1 %.not65.2, label %bb.u, label %__count_vm_events.exit.2

__count_vm_events.exit.2:                         ; preds = %bb.t
  call void asm "addq $1, %gs:$0", "=*m,re,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) getelementptr inbounds nuw (i8, ptr @vm_event_states, i64 112), i64 %i.bz, ptr nonnull elementtype(i64) getelementptr inbounds nuw (i8, ptr @vm_event_states, i64 112)) #15, !srcloc !168
  %i.ca = add i64 %i.bz, %.160.1
  br label %bb.u

bb.u:                                             ; preds = %__count_vm_events.exit.2, %bb.t
  %.160.2 = phi i64 [ %i.ca, %__count_vm_events.exit.2 ], [ %.160.1, %bb.t ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cc = load i64, ptr %i.cb, align 8            ; 3 uses
  %.not65.3 = icmp eq i64 %i.cc, 0
  br i1 %.not65.3, label %.loopexit, label %__count_vm_events.exit.3

__count_vm_events.exit.3:                         ; preds = %bb.u
  call void asm "addq $1, %gs:$0", "=*m,re,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) getelementptr inbounds nuw (i8, ptr @vm_event_states, i64 120), i64 %i.cc, ptr nonnull elementtype(i64) getelementptr inbounds nuw (i8, ptr @vm_event_states, i64 120)) #15, !srcloc !168
  %i.cd = add i64 %i.cc, %.160.2
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %__count_vm_events.exit.3, %.critedge
  %.2 = phi i64 [ 0, %.critedge ], [ %i.cd, %__count_vm_events.exit.3 ], [ %.160.2, %bb.u ]
  store i64 %.058.lcssa, ptr %3, align 8
  %i.ce = load i8, ptr %i.g, align 1
  %i.cf = sext i8 %i.ce to i32
  %i.cg = getelementptr i8, ptr %4, i64 51
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = sext i8 %i.ch to i32
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mm_vmscan_lru_isolate, i64 8), i1 false) #15
          to label %trace_mm_vmscan_lru_isolate.exit [label %cpumask_test_cpu.exit.i.i], !srcloc !70

cpumask_test_cpu.exit.i.i:                        ; preds = %.loopexit
  %i.cj = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #15, !srcloc !192
  %i.ck = zext i32 %i.cj to i64
  %i.cl = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 -2147483648, 4294967296) %i.ck) #15, !srcloc !72 ; 2 uses
  %i.cm = icmp ult i8 %i.cl, 2
  call void @llvm.assume(i1 %i.cm)
  %i.cn = trunc nuw i8 %i.cl to i1
  br i1 %i.cn, label %bb.v, label %trace_mm_vmscan_lru_isolate.exit

bb.v:                                             ; preds = %cpumask_test_cpu.exit.i.i
  %i.co = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.co, ptr elementtype(i64) %i.co) #15, !srcloc !73
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !74
  %i.cp = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_mm_vmscan_lru_isolate, i64 56), align 8 ; 2 uses
  %.not.i.i77 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i77, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cq = getelementptr i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = call i32 @__SCT__tp_func_mm_vmscan_lru_isolate(ptr noundef %i.cr, i32 noundef range(i32 -128, 128) %i.cf, i32 noundef range(i32 -128, 128) %i.ci, i64 noundef range(i64 1, 0) %0, i64 noundef %.058.lcssa, i64 noundef %.2, i64 noundef %.061.lcssa, i32 noundef range(i32 0, 4) %5) #14 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !75
  %i.ct = getelementptr i8, ptr %i.co, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ct, ptr elementtype(i64) %i.ct) #15, !srcloc !76
  br label %trace_mm_vmscan_lru_isolate.exit

trace_mm_vmscan_lru_isolate.exit:                 ; preds = %.loopexit, %cpumask_test_cpu.exit.i.i, %bb.x
  %i.cu = getelementptr i8, ptr %1, i64 -13952    ; 5 uses
  %i.cv = add nuw nsw i32 %5, 2                   ; 4 uses
  %i.cw = load i64, ptr %i.a, align 16            ; 3 uses
  %.not.i = icmp eq i64 %i.cw, 0
  br i1 %.not.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %trace_mm_vmscan_lru_isolate.exit
  %i.cx = sub i64 0, %i.cw                        ; 2 uses
  %i.cy = add i64 %i.cw, 2147483647
  %.not.i.i = icmp ult i64 %i.cy, 4294967296
  br i1 %.not.i.i, label %__update_lru_size.exit.i, label %bb.z, !prof !33

bb.z:                                             ; preds = %bb.y
  call void asm sideeffect "631: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 631b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 631) #15, !srcloc !104
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.51, ptr nonnull @.str.202, i32 40, i32 2307, i64 16) #15, !srcloc !105
  call void asm sideeffect "632: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 632b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 632) #15, !srcloc !106
  br label %__update_lru_size.exit.i

__update_lru_size.exit.i:                         ; preds = %bb.z, %bb.y
  %sext = shl i64 %i.cx, 32
  %i.cz = ashr exact i64 %sext, 32
  call void @mod_node_page_state(ptr noundef %i.cu, i32 noundef range(i32 0, 4) %5, i64 noundef %i.cz) #14
  call void @__mod_zone_page_state(ptr noundef %i.cu, i32 noundef %i.cv, i64 noundef %i.cx) #14
  br label %bb.aa

bb.aa:                                            ; preds = %__update_lru_size.exit.i, %trace_mm_vmscan_lru_isolate.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.db = load i64, ptr %i.da, align 8            ; 3 uses
  %.not.i.1 = icmp eq i64 %i.db, 0
  br i1 %.not.i.1, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dc = sub i64 0, %i.db                        ; 2 uses
  %i.dd = add i64 %i.db, 2147483647
  %.not.i.i.1 = icmp ult i64 %i.dd, 4294967296
  br i1 %.not.i.i.1, label %__update_lru_size.exit.i.1, label %bb.ac, !prof !33

bb.ac:                                            ; preds = %bb.ab
  call void asm sideeffect "631: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 631b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 631) #15, !srcloc !104
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.51, ptr nonnull @.str.202, i32 40, i32 2307, i64 16) #15, !srcloc !105
  call void asm sideeffect "632: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 632b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 632) #15, !srcloc !106
  br label %__update_lru_size.exit.i.1

__update_lru_size.exit.i.1:                       ; preds = %bb.ac, %bb.ab
  %sext.1 = shl i64 %i.dc, 32
  %i.de = ashr exact i64 %sext.1, 32
  call void @mod_node_page_state(ptr noundef %i.cu, i32 noundef range(i32 0, 4) %5, i64 noundef %i.de) #14
  %i.df = getelementptr i8, ptr %1, i64 -12608
  call void @__mod_zone_page_state(ptr noundef %i.df, i32 noundef %i.cv, i64 noundef %i.dc) #14
  br label %bb.ad

bb.ad:                                            ; preds = %__update_lru_size.exit.i.1, %bb.aa
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dh = load i64, ptr %i.dg, align 16           ; 3 uses
  %.not.i.2 = icmp eq i64 %i.dh, 0
  br i1 %.not.i.2, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.di = sub i64 0, %i.dh                        ; 2 uses
  %i.dj = add i64 %i.dh, 2147483647
  %.not.i.i.2 = icmp ult i64 %i.dj, 4294967296
  br i1 %.not.i.i.2, label %__update_lru_size.exit.i.2, label %bb.af, !prof !33

bb.af:                                            ; preds = %bb.ae
  call void asm sideeffect "631: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 631b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 631) #15, !srcloc !104
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.51, ptr nonnull @.str.202, i32 40, i32 2307, i64 16) #15, !srcloc !105
  call void asm sideeffect "632: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 632b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 632) #15, !srcloc !106
  br label %__update_lru_size.exit.i.2

__update_lru_size.exit.i.2:                       ; preds = %bb.af, %bb.ae
  %sext.2 = shl i64 %i.di, 32
  %i.dk = ashr exact i64 %sext.2, 32
  call void @mod_node_page_state(ptr noundef %i.cu, i32 noundef range(i32 0, 4) %5, i64 noundef %i.dk) #14
  %i.dl = getelementptr i8, ptr %1, i64 -11264
  call void @__mod_zone_page_state(ptr noundef %i.dl, i32 noundef %i.cv, i64 noundef %i.di) #14
  br label %bb.ag

bb.ag:                                            ; preds = %__update_lru_size.exit.i.2, %bb.ad
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.dn = load i64, ptr %i.dm, align 8            ; 3 uses
  %.not.i.3 = icmp eq i64 %i.dn, 0
  br i1 %.not.i.3, label %update_lru_sizes.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.do = sub i64 0, %i.dn                        ; 2 uses
  %i.dp = add i64 %i.dn, 2147483647
  %.not.i.i.3 = icmp ult i64 %i.dp, 4294967296
  br i1 %.not.i.i.3, label %__update_lru_size.exit.i.3, label %bb.ai, !prof !33

bb.ai:                                            ; preds = %bb.ah
  call void asm sideeffect "631: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 631b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 631) #15, !srcloc !104
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.51, ptr nonnull @.str.202, i32 40, i32 2307, i64 16) #15, !srcloc !105
  call void asm sideeffect "632: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 632b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 632) #15, !srcloc !106
  br label %__update_lru_size.exit.i.3

__update_lru_size.exit.i.3:                       ; preds = %bb.ai, %bb.ah
  %sext.3 = shl i64 %i.do, 32
  %i.dq = ashr exact i64 %sext.3, 32
  call void @mod_node_page_state(ptr noundef %i.cu, i32 noundef range(i32 0, 4) %5, i64 noundef %i.dq) #14
  %i.dr = getelementptr i8, ptr %1, i64 -9920
  call void @__mod_zone_page_state(ptr noundef %i.dr, i32 noundef %i.cv, i64 noundef %i.do) #14
  br label %update_lru_sizes.exit

update_lru_sizes.exit:                            ; preds = %__update_lru_size.exit.i.3, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %.061.lcssa
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__mod_node_page_state(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @move_folios_to_lru(ptr nofree noundef captures(address) %0) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.folio_batch, align 8        ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %1, i8 0, i64 256, i1 false)
  %i.a = load volatile ptr, ptr %0, align 8
  %.not51 = icmp eq ptr %i.a, %0
  br i1 %.not51, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.r
  %.054 = phi ptr [ null, %.lr.ph ], [ %.2, %bb.r ] ; 4 uses
  %.02452 = phi i32 [ 0, %.lr.ph ], [ %.125, %bb.r ] ; 4 uses
  %.val = load ptr, ptr %i.b, align 8             ; 10 uses
  %i.d = getelementptr i8, ptr %.val, i64 -8      ; 20 uses
  %.not.i32 = icmp eq ptr %.054, null
  br i1 %.not.i32, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val8.i = load i64, ptr %i.d, align 16
  %i.e = getelementptr i8, ptr %.054, i64 -13952
  %i.f = lshr i64 %.val8.i, 58
  %i.g = getelementptr [8 x i8], ptr @node_data, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.e, %i.h
  br i1 %i.i, label %folio_lruvec_relock_irq.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %.054, i64 80
  call void @_raw_spin_unlock_irq(ptr noundef %i.j) #14
  call void @__rcu_read_unlock() #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.val.i = load i64, ptr %i.d, align 16
  %i.k = lshr i64 %.val.i, 58
  %i.l = getelementptr [8 x i8], ptr @node_data, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  call void @__rcu_read_lock() #14
  %i.n = getelementptr i8, ptr %i.m, i64 13952
  %i.o = getelementptr i8, ptr %i.m, i64 14032
  call void @_raw_spin_lock_irq(ptr noundef %i.o) #14
  br label %folio_lruvec_relock_irq.exit

folio_lruvec_relock_irq.exit:                     ; preds = %bb.c, %bb.e
  %.0.i = phi ptr [ %i.n, %bb.e ], [ %.054, %bb.c ] ; 8 uses
  %i.p = getelementptr i8, ptr %.val, i64 8       ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = load ptr, ptr %.val, align 8             ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 8
  store ptr %i.q, ptr %i.s, align 8
  store volatile ptr %i.r, ptr %i.q, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %.val, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.p, align 8
  call void @__rcu_read_lock() #14
  %i.t = call ptr @folio_mapping(ptr noundef %i.d) #14 ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %folio_evictable.exit, label %.split.i

.split.i:                                         ; preds = %folio_lruvec_relock_irq.exit
  %i.u = getelementptr i8, ptr %i.t, i64 104
  %i.v = load volatile i64, ptr %i.u, align 8
  %i.w = and i64 %i.v, 8
  %.not.i33 = icmp eq i64 %i.w, 0
  br i1 %.not.i33, label %folio_evictable.exit, label %folio_evictable.exit.thread, !prof !88

folio_evictable.exit.thread:                      ; preds = %.split.i
  call void @__rcu_read_unlock() #14
  br label %bb.f

folio_evictable.exit:                             ; preds = %folio_lruvec_relock_irq.exit, %.split.i
  %i.x = load volatile i64, ptr %i.d, align 8
  %i.y = and i64 %i.x, 1048576
  %.not3.i = icmp eq i64 %i.y, 0
  call void @__rcu_read_unlock() #14
  br i1 %.not3.i, label %bb.g, label %bb.f, !prof !89

bb.f:                                             ; preds = %folio_evictable.exit.thread, %folio_evictable.exit
  %i.z = getelementptr i8, ptr %.0.i, i64 80
  call void @_raw_spin_unlock_irq(ptr noundef %i.z) #14
  call void @__rcu_read_unlock() #14
  call void @folio_putback_lru(ptr noundef %i.d) #18
  br label %bb.r, !llvm.loop !193

bb.g:                                             ; preds = %folio_evictable.exit
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.d, i32 32, ptr elementtype(i8) %i.d) #15, !srcloc !92
  %i.aa = getelementptr i8, ptr %.val, i64 44     ; 2 uses
  %i.ab = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.aa, ptr elementtype(i32) %i.aa) #15, !srcloc !84 ; 2 uses
  %i.ac = icmp ult i8 %i.ab, 2
  call void @llvm.assume(i1 %i.ac)
  %.not28 = icmp eq i8 %i.ab, 0
  br i1 %.not28, label %bb.l, label %bb.h, !prof !33

bb.h:                                             ; preds = %bb.g
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.d, i64 5) #15, !srcloc !194
  %i.ad = load volatile i64, ptr %i.d, align 8
  %i.ae = and i64 %i.ad, 256
  %.not45 = icmp eq i64 %i.ae, 0
  br i1 %.not45, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = load volatile i64, ptr %i.d, align 8
  %i.ag = and i64 %i.af, 262144
  %.not46 = icmp eq i64 %i.ag, 0
  br i1 %.not46, label %bb.j, label %__folio_clear_lru_flags.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.d, i64 8) #15, !srcloc !194
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.d, i64 18) #15, !srcloc !194
  br label %__folio_clear_lru_flags.exit

__folio_clear_lru_flags.exit:                     ; preds = %bb.i, %bb.j
  %i.ah = load volatile i64, ptr %i.d, align 8    ; 0 uses
  %i.ai = load i8, ptr %1, align 8                ; 2 uses
  %i.aj = add i8 %i.ai, 1                         ; 2 uses
  store i8 %i.aj, ptr %1, align 8
  %i.ak = zext i8 %i.ai to i64
  %i.al = getelementptr [8 x i8], ptr %i.c, i64 %i.ak
  store ptr %i.d, ptr %i.al, align 8
  %i.am = icmp eq i8 %i.aj, 31
  br i1 %i.am, label %bb.k, label %bb.r, !llvm.loop !193

bb.k:                                             ; preds = %__folio_clear_lru_flags.exit
  %i.an = getelementptr i8, ptr %.0.i, i64 80
  call void @_raw_spin_unlock_irq(ptr noundef %i.an) #14
  call void @__rcu_read_unlock() #14
  call void @free_unref_folios(ptr noundef nonnull %1) #14
  br label %bb.r, !llvm.loop !193

bb.l:                                             ; preds = %bb.g
  %i.ao = load volatile i64, ptr %i.d, align 8    ; 2 uses
  %i.ap = and i64 %i.ao, 262144
  %.not47 = icmp eq i64 %i.ap, 0
  br i1 %.not47, label %bb.m, label %folio_lru_list.exit

bb.m:                                             ; preds = %bb.l
  %i.aq = load volatile i64, ptr %i.d, align 8
  %i.ar = and i64 %i.aq, 131072
  %.not.i34.not = icmp eq i64 %i.ar, 0
  %i.as = select i1 %.not.i34.not, i32 2, i32 0
  %i.at = load volatile i64, ptr %i.d, align 8
  %i.au = trunc i64 %i.at to i32
  %i.av = lshr i32 %i.au, 8
  %i.aw = and i32 %i.av, 1
  %spec.select.i = or disjoint i32 %i.aw, %i.as
  br label %folio_lru_list.exit

folio_lru_list.exit:                              ; preds = %bb.l, %bb.m
  %.05.i = phi i32 [ %spec.select.i, %bb.m ], [ 4, %bb.l ] ; 4 uses
  %i.ax = lshr i64 %i.ao, 56
  %i.ay = and i64 %i.ax, 3
  %i.az = load volatile i64, ptr %i.d, align 8
  %i.ba = and i64 %i.az, 64
  %.not.i35 = icmp eq i64 %i.ba, 0
  br i1 %.not.i35, label %__update_lru_size.exit, label %folio_nr_pages.exit

folio_nr_pages.exit:                              ; preds = %folio_lru_list.exit
  %i.bb = getelementptr i8, ptr %.val, i64 56
  %.val.i36 = load i64, ptr %i.bb, align 16
  %i.bc = and i64 %.val.i36, 255                  ; 2 uses
  %i.bd = shl nuw i64 1, %i.bc                    ; 2 uses
  %.not.i30 = icmp samesign ult i64 %i.bc, 31
  br i1 %.not.i30, label %__update_lru_size.exit, label %bb.n, !prof !103

bb.n:                                             ; preds = %folio_nr_pages.exit
  call void asm sideeffect "631: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 631b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 631) #15, !srcloc !104
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.51, ptr nonnull @.str.202, i32 40, i32 2307, i64 16) #15, !srcloc !105
  call void asm sideeffect "632: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 632b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 632) #15, !srcloc !106
  br label %__update_lru_size.exit

__update_lru_size.exit:                           ; preds = %folio_lru_list.exit, %folio_nr_pages.exit, %bb.n
  %.0.i3744 = phi i64 [ %i.bd, %bb.n ], [ %i.bd, %folio_nr_pages.exit ], [ 1, %folio_lru_list.exit ] ; 2 uses
  %i.be = getelementptr i8, ptr %.0.i, i64 -13952 ; 2 uses
  %sext49 = shl i64 %.0.i3744, 32
  %i.bf = ashr exact i64 %sext49, 32
  call void @mod_node_page_state(ptr noundef %i.be, i32 noundef range(i32 0, 5) %.05.i, i64 noundef %i.bf) #14
  %i.bg = getelementptr [1344 x i8], ptr %i.be, i64 %i.ay
  %i.bh = add nuw nsw i32 %.05.i, 2
  call void @__mod_zone_page_state(ptr noundef %i.bg, i32 noundef %i.bh, i64 noundef %.0.i3744) #14
  %.not.i = icmp eq i32 %.05.i, 4
  br i1 %.not.i, label %lruvec_add_folio.exit, label %bb.o

bb.o:                                             ; preds = %__update_lru_size.exit
  %i.bi = zext nneg i32 %.05.i to i64
  %i.bj = getelementptr [16 x i8], ptr %.0.i, i64 %i.bi ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  store ptr %.val, ptr %i.bl, align 8
  store ptr %i.bk, ptr %.val, align 8
end_hunk_0
