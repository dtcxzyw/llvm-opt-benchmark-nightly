Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/memory-tiers?download=true
inline.NumInlined: 88
inline.NumDeleted: 42
begin_hunk_0_@set_node_memory_tier:.split44
  store volatile i32 1, ptr %i.u, align 8
  %i.v = icmp ugt ptr %i.q, inttoptr (i64 -4096 to ptr)
  br i1 %i.v, label %mt_find_alloc_memory_type.exit, label %bb.f

bb.f:                                             ; preds = %alloc_memory_type.exit.i
  %i.w = getelementptr i8, ptr %i.q, i64 16       ; 3 uses
  %i.x = load ptr, ptr @default_memory_types, align 8 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  store ptr %i.w, ptr %i.y, align 8
  store ptr %i.x, ptr %i.w, align 8
  %i.z = getelementptr i8, ptr %i.q, i64 24
  store ptr @default_memory_types, ptr %i.z, align 8
  store volatile ptr %i.w, ptr @default_memory_types, align 8
  br label %mt_find_alloc_memory_type.exit

alloc_memory_type.exit.thread.loopexit.i:         ; preds = %bb.d
  %.017.le.i = getelementptr i8, ptr %.pn.i, i64 -16
  br label %mt_find_alloc_memory_type.exit

mt_find_alloc_memory_type.exit:                   ; preds = %alloc_memory_type.exit.i, %bb.f, %alloc_memory_type.exit.thread.loopexit.i
  %.0.i = phi ptr [ %i.q, %bb.f ], [ %.017.le.i, %alloc_memory_type.exit.thread.loopexit.i ], [ %i.q, %alloc_memory_type.exit.i ] ; 2 uses
  %i.aa = icmp ugt ptr %.0.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.aa, label %mt_find_alloc_memory_type.exit.thread, label %bb.g

mt_find_alloc_memory_type.exit.thread:            ; preds = %bb.e, %mt_find_alloc_memory_type.exit
  %i.ab = load ptr, ptr @default_dram_type, align 8
  %i.ac = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #17 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %mt_find_alloc_memory_type.exit, %mt_find_alloc_memory_type.exit.thread
  %.016.ph = phi ptr [ %.0.i, %mt_find_alloc_memory_type.exit ], [ %i.ab, %mt_find_alloc_memory_type.exit.thread ] ; 3 uses
  %.pr = load ptr, ptr %i.j, align 16             ; 2 uses
  %.not.i19 = icmp eq ptr %.pr, null
  br i1 %.not.i19, label %.thread.i, label %.thread

.thread.i:                                        ; preds = %bb.g
  store ptr %.016.ph, ptr %i.j, align 16
  br label %bb.h

.thread:                                          ; preds = %bb.a, %bb.g
  %.01625.a = phi ptr [ %.016.ph, %bb.g ], [ %i.b, %bb.a ] ; 2 uses
  %i.ad = phi ptr [ %.pr, %bb.g ], [ %i.k, %bb.a ]
  %i.ae = icmp eq ptr %i.ad, %.01625.a
  br i1 %i.ae, label %bb.h, label %__init_node_memory_type.exit

bb.h:                                             ; preds = %.thread, %.thread.i
  %.01626 = phi ptr [ %.01625.a, %.thread ], [ %.016.ph, %.thread.i ]
  %i.af = getelementptr i8, ptr %i.j, i64 8       ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8            ; 2 uses
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.af, align 8
  %.not6.i = icmp eq i32 %i.ag, 0
  br i1 %.not6.i, label %bb.i, label %__init_node_memory_type.exit

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr i8, ptr %.01626, i64 48   ; 3 uses
  %i.aj = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ai, i32 1, ptr elementtype(i32) %i.ai) #13, !srcloc !12 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %bb.j, !prof !13

bb.j:                                             ; preds = %bb.i
  %i.ak = add i32 %i.aj, 1
  %i.al = or i32 %i.ak, %i.aj
  %.not10.i.i.i.i.i = icmp sgt i32 %i.al, -1
  br i1 %.not10.i.i.i.i.i, label %__init_node_memory_type.exit, label %.sink.split.i.i.i.i.i, !prof !15

.sink.split.i.i.i.i.i:                            ; preds = %bb.j, %bb.i
  %.sink.i.i.i.i.i = phi i32 [ 2, %bb.i ], [ 1, %bb.j ]
  call void @refcount_warn_saturate(ptr noundef %i.ai, i32 noundef %.sink.i.i.i.i.i) #12
  br label %__init_node_memory_type.exit

__init_node_memory_type.exit:                     ; preds = %.thread, %bb.h, %bb.j, %.sink.split.i.i.i.i.i
  %i.am = load ptr, ptr %i.j, align 16            ; 8 uses
  %i.an = getelementptr i8, ptr %i.am, i64 40
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.an, i64 range(i64 -2147483648, 2147483648) %i.c) #13, !srcloc !18
  %i.ao = getelementptr i8, ptr %i.am, i64 32
  %i.ap = load i32, ptr %i.ao, align 8            ; 2 uses
  %i.aq = and i32 %i.ap, -128                     ; 4 uses
  %i.ar = load volatile ptr, ptr %i.am, align 8
  %.not.i20 = icmp eq ptr %i.ar, %i.am
  br i1 %.not.i20, label %.preheader.i, label %.preheader67.i

.preheader67.i:                                   ; preds = %__init_node_memory_type.exit, %bb.k
  %.057.in.i = phi ptr [ %.057.i, %bb.k ], [ @memory_tiers, %__init_node_memory_type.exit ]
  %.057.i = load ptr, ptr %.057.in.i, align 8     ; 4 uses
  %.not66.i = icmp eq ptr %.057.i, @memory_tiers
  br i1 %.not66.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.preheader67.i
  %i.as = getelementptr i8, ptr %.057.i, i64 32
  %i.at = load i32, ptr %i.as, align 8
  %i.au = icmp eq i32 %i.aq, %i.at
  br i1 %i.au, label %find_create_memory_tier.exit, label %.preheader67.i, !llvm.loop !28

bb.l:                                             ; preds = %.preheader67.i
  call void asm sideeffect "636: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 636b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 636) #13, !srcloc !31
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.5, ptr nonnull @.str.8, i32 217, i32 2305, i64 16) #13, !srcloc !32
  call void asm sideeffect "637: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 637b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 637) #13, !srcloc !33
  br label %find_create_memory_tier.exit.thread

.preheader.i:                                     ; preds = %__init_node_memory_type.exit, %bb.n
  %.1.in.i = phi ptr [ %.1.i, %bb.n ], [ @memory_tiers, %__init_node_memory_type.exit ]
  %.1.i = load ptr, ptr %.1.in.i, align 8         ; 6 uses
  %.not65.i = icmp eq ptr %.1.i, @memory_tiers    ; 2 uses
  br i1 %.not65.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.preheader.i
  %i.av = getelementptr i8, ptr %.1.i, i64 32
  %i.aw = load i32, ptr %i.av, align 8            ; 2 uses
  %i.ax = icmp eq i32 %i.aq, %i.aw
  br i1 %i.ax, label %.loopexit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = icmp slt i32 %i.aq, %i.aw
  br i1 %i.ay, label %bb.o, label %.preheader.i, !llvm.loop !29

bb.o:                                             ; preds = %bb.n, %.preheader.i
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 80), align 16
  %i.ba = call noalias align 8 dereferenceable_or_null(808) ptr @__kmalloc_cache_noprof(ptr noundef %i.az, i32 noundef 3520, i64 noundef range(i64 0, 3470333574361) 808) #14 ; 20 uses
  %.not63.i = icmp eq ptr %i.ba, null
  br i1 %.not63.i, label %find_create_memory_tier.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr i8, ptr %i.ba, i64 32
  store i32 %i.aq, ptr %i.bb, align 8
  store volatile ptr %i.ba, ptr %i.ba, align 8
  %i.bc = getelementptr i8, ptr %i.ba, i64 8      ; 4 uses
  store volatile ptr %i.ba, ptr %i.bc, align 8
  %i.bd = getelementptr i8, ptr %i.ba, i64 16     ; 3 uses
  store volatile ptr %i.bd, ptr %i.bd, align 8
  %i.be = getelementptr i8, ptr %i.ba, i64 24
  store volatile ptr %i.bd, ptr %i.be, align 8
  br i1 %.not65.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr i8, ptr %.1.i, i64 8      ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8
  store ptr %i.ba, ptr %i.bf, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_tiers, i64 8), align 8
  store ptr %i.ba, ptr getelementptr inbounds nuw (i8, ptr @memory_tiers, i64 8), align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink83.i = phi ptr [ %i.bh, %bb.r ], [ %i.bg, %bb.q ] ; 2 uses
  store ptr %.1.i, ptr %i.ba, align 8
  store ptr %.sink83.i, ptr %i.bc, align 8
  store volatile ptr %i.ba, ptr %.sink83.i, align 8
  %i.bi = ashr i32 %i.ap, 7
  %i.bj = getelementptr i8, ptr %i.ba, i64 40     ; 2 uses
  %i.bk = getelementptr i8, ptr %i.ba, i64 712
  store i32 %i.bi, ptr %i.bk, align 8
  %i.bl = getelementptr i8, ptr %i.ba, i64 136
  store ptr @memory_tier_subsys, ptr %i.bl, align 8
  %i.bm = getelementptr i8, ptr %i.ba, i64 752
  store ptr @memory_tier_device_release, ptr %i.bm, align 8
  %i.bn = getelementptr i8, ptr %i.ba, i64 744
  store ptr @memtier_dev_groups, ptr %i.bn, align 8
  %i.bo = call i32 @device_register(ptr noundef %i.bj) #12 ; 2 uses
  %.not64.i = icmp eq i32 %i.bo, 0
  br i1 %.not64.i, label %.loopexit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bp = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.bq = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  store ptr %i.bp, ptr %i.br, align 8
  store volatile ptr %i.bq, ptr %i.bp, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %i.ba, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.bc, align 8
  call void @put_device(ptr noundef %i.bj) #12
  %i.bs = sext i32 %i.bo to i64
  %i.bt = inttoptr i64 %i.bs to ptr
  br label %find_create_memory_tier.exit

.loopexit.i:                                      ; preds = %bb.m, %bb.s
  %.2.i = phi ptr [ %i.ba, %bb.s ], [ %.1.i, %bb.m ] ; 2 uses
  %i.bu = getelementptr i8, ptr %.2.i, i64 16     ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8            ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 8
  store ptr %i.am, ptr %i.bw, align 8
  store ptr %i.bv, ptr %i.am, align 8
  %i.bx = getelementptr i8, ptr %i.am, i64 8
  store ptr %i.bu, ptr %i.bx, align 8
  store volatile ptr %i.am, ptr %i.bu, align 8
  br label %find_create_memory_tier.exit

find_create_memory_tier.exit:                     ; preds = %bb.k, %bb.t, %.loopexit.i
  %.0.i21 = phi ptr [ %.2.i, %.loopexit.i ], [ %i.bt, %bb.t ], [ %.057.i, %bb.k ] ; 4 uses
  %i.by = icmp ugt ptr %.0.i21, inttoptr (i64 -4096 to ptr)
  br i1 %i.by, label %find_create_memory_tier.exit.thread, label %bb.u

bb.u:                                             ; preds = %find_create_memory_tier.exit
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !34
  %i.bz = getelementptr i8, ptr %i.e, i64 14664
  store volatile ptr %.0.i21, ptr %i.bz, align 8
  br label %find_create_memory_tier.exit.thread

find_create_memory_tier.exit.thread:              ; preds = %.split44, %bb.l, %bb.o, %find_create_memory_tier.exit, %bb.u
  %.0 = phi ptr [ %.0.i21, %find_create_memory_tier.exit ], [ %.0.i21, %bb.u ], [ inttoptr (i64 -22 to ptr), %.split44 ], [ inttoptr (i64 -22 to ptr), %bb.l ], [ inttoptr (i64 -12 to ptr), %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @establish_demotion_targets() unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %0 = alloca %struct.nodemask_t, align 8         ; 6 uses
  %1 = alloca %struct.nodemask_t, align 8         ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.a = load ptr, ptr @node_demotion, align 8    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %dump_demotion_targets.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8, !annotation !40
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @node_states, i64 24), align 8 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i, label %disable_all_demotion_targets.exit, label %__first_node.exit.i

__first_node.exit.i:                              ; preds = %bb.b
  %i.c = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.b) #15, !srcloc !17 ; 2 uses
  %i.d = icmp ult i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %disable_all_demotion_targets.exit

.lr.ph.i:                                         ; preds = %__first_node.exit.i, %find_next_bit.exit.i
  %.0.in11.i = phi i64 [ %i.p, %find_next_bit.exit.i ], [ %i.c, %__first_node.exit.i ] ; 4 uses
  %i.e = getelementptr [8 x i8], ptr %i.a, i64 %.0.in11.i
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr [8 x i8], ptr @node_data, i64 %.0.in11.i
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i7.i = icmp eq ptr %i.g, null
  br i1 %.not.i7.i, label %__node_get_memory_tier.exit.thread.i, label %__node_get_memory_tier.exit.i

__node_get_memory_tier.exit.i:                    ; preds = %.lr.ph.i
  %i.h = getelementptr i8, ptr %i.g, i64 14664
  %i.i = load volatile ptr, ptr %i.h, align 8     ; 2 uses
  %.not.i56 = icmp eq ptr %i.i, null
  br i1 %.not.i56, label %__node_get_memory_tier.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %__node_get_memory_tier.exit.i
  %i.j = getelementptr i8, ptr %i.i, i64 800
  store i64 0, ptr %i.j, align 8
  br label %__node_get_memory_tier.exit.thread.i

__node_get_memory_tier.exit.thread.i:             ; preds = %bb.c, %__node_get_memory_tier.exit.i, %.lr.ph.i
  %i.k = icmp eq i64 %.0.in11.i, 63
  br i1 %i.k, label %disable_all_demotion_targets.exit, label %bb.d, !prof !13

bb.d:                                             ; preds = %__node_get_memory_tier.exit.thread.i
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @node_states, i64 24), align 8
  %i.m = shl nsw i64 -2, %.0.in11.i
  %i.n = and i64 %i.l, %i.m                       ; 2 uses
  %.not.i.i57 = icmp eq i64 %i.n, 0
  br i1 %.not.i.i57, label %disable_all_demotion_targets.exit, label %find_next_bit.exit.i

find_next_bit.exit.i:                             ; preds = %bb.d
  %i.o = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.n) #15, !srcloc !17 ; 2 uses
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.o, i64 64)
  %i.q = icmp ult i64 %i.o, 64
  br i1 %i.q, label %.lr.ph.i, label %disable_all_demotion_targets.exit, !llvm.loop !35

disable_all_demotion_targets.exit:                ; preds = %__node_get_memory_tier.exit.thread.i, %bb.d, %find_next_bit.exit.i, %bb.b, %__first_node.exit.i
  tail call void @synchronize_rcu() #12
  %i.r = load i64, ptr getelementptr inbounds nuw (i8, ptr @node_states, i64 24), align 8 ; 2 uses
  %.not.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i, label %.preheader, label %__first_node.exit

__first_node.exit:                                ; preds = %disable_all_demotion_targets.exit
  %i.s = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.r) #15, !srcloc !17 ; 2 uses
  %i.t = icmp ult i64 %i.s, 64
  br i1 %i.t, label %.lr.ph97, label %.preheader

.preheader:                                       ; preds = %bb.g, %__node_get_memory_tier.exit.thread, %find_next_bit.exit, %disable_all_demotion_targets.exit, %__first_node.exit
  %.0104 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_tiers, i64 8), align 8 ; 2 uses
  %.not79105 = icmp eq ptr %.0104, @memory_tiers
  br i1 %.not79105, label %.loopexit, label %.lr.ph107.a

.lr.ph107.a:                                      ; preds = %.preheader
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @node_states, i64 32), align 16
  br label %bb.h

.lr.ph97:                                         ; preds = %__first_node.exit, %find_next_bit.exit
  %.038.in95 = phi i64 [ %i.aw, %find_next_bit.exit ], [ %i.s, %__first_node.exit ] ; 5 uses
  %.03896 = trunc nuw nsw i64 %.038.in95 to i32   ; 3 uses
  %i.v = load ptr, ptr @node_demotion, align 8
  %i.w = getelementptr [8 x i8], ptr %i.v, i64 %.038.in95
  %i.x = getelementptr [8 x i8], ptr @node_data, i64 %.038.in95
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not.i58 = icmp eq ptr %i.y, null
  br i1 %.not.i58, label %__node_get_memory_tier.exit.thread, label %__node_get_memory_tier.exit

__node_get_memory_tier.exit:                      ; preds = %.lr.ph97
  %i.z = getelementptr i8, ptr %i.y, i64 14664
  %i.aa = load volatile ptr, ptr %i.z, align 8    ; 2 uses
  %.not44 = icmp eq ptr %i.aa, null
  br i1 %.not44, label %__node_get_memory_tier.exit.thread, label %bb.e

bb.e:                                             ; preds = %__node_get_memory_tier.exit
  %.val = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not84 = icmp eq ptr %.val, @memory_tiers
  br i1 %.not84, label %__node_get_memory_tier.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr i8, ptr %.val, i64 16     ; 3 uses
  %.0.i5187 = load ptr, ptr %i.ab, align 8        ; 2 uses
  %.not8588 = icmp eq ptr %.0.i5187, %i.ab
  br i1 %.not8588, label %get_memtier_nodemask.exit53, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.0.i5190 = phi ptr [ %.0.i51, %.lr.ph ], [ %.0.i5187, %bb.f ] ; 2 uses
  %.sroa.075.089 = phi i64 [ %i.ae, %.lr.ph ], [ 0, %bb.f ]
  %i.ac = getelementptr i8, ptr %.0.i5190, i64 40
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = or i64 %i.ad, %.sroa.075.089            ; 2 uses
  %.0.i51 = load ptr, ptr %.0.i5190, align 8      ; 2 uses
  %.not85 = icmp eq ptr %.0.i51, %i.ab
  br i1 %.not85, label %get_memtier_nodemask.exit53.loopexit, label %.lr.ph, !llvm.loop !1

get_memtier_nodemask.exit53.loopexit:             ; preds = %.lr.ph
  %i.af = xor i64 %i.ae, -1
  br label %get_memtier_nodemask.exit53

get_memtier_nodemask.exit53:                      ; preds = %get_memtier_nodemask.exit53.loopexit, %bb.f
  %.sroa.075.0.lcssa = phi i64 [ -1, %bb.f ], [ %i.af, %get_memtier_nodemask.exit53.loopexit ]
  %i.ag = load i64, ptr getelementptr inbounds nuw (i8, ptr @node_states, i64 24), align 8
  %i.ah = and i64 %i.ag, %.sroa.075.0.lcssa
  store i64 %i.ah, ptr %1, align 8
  %i.ai = call i32 @find_next_best_node(i32 noundef %.03896, ptr noundef nonnull %1) #12 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, -1
  br i1 %i.aj, label %__node_get_memory_tier.exit.thread, label %.lr.ph92

.lr.ph92:                                         ; preds = %get_memtier_nodemask.exit53, %arch_set_bit.exit
  %i.ak = phi i32 [ %i.ap, %arch_set_bit.exit ], [ %i.ai, %get_memtier_nodemask.exit53 ] ; 2 uses
  %.03991 = phi i32 [ %i.al, %arch_set_bit.exit ], [ -1, %get_memtier_nodemask.exit53 ] ; 2 uses
  %i.al = call i32 @__node_distance(i32 noundef %.03896, i32 noundef %i.ak) #12 ; 2 uses
  %i.am = icmp eq i32 %i.al, %.03991
  %i.an = icmp eq i32 %.03991, -1
  %or.cond = or i1 %i.an, %i.am
  br i1 %or.cond, label %arch_set_bit.exit, label %__node_get_memory_tier.exit.thread

arch_set_bit.exit:                                ; preds = %.lr.ph92
  %i.ao = sext i32 %i.ak to i64
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.w, i64 range(i64 -2147483648, 2147483648) %i.ao) #13, !srcloc !18
  %i.ap = call i32 @find_next_best_node(i32 noundef %.03896, ptr noundef nonnull %1) #12 ; 2 uses
  %i.aq = icmp eq i32 %i.ap, -1
  br i1 %i.aq, label %__node_get_memory_tier.exit.thread, label %.lr.ph92

__node_get_memory_tier.exit.thread:               ; preds = %.lr.ph92, %arch_set_bit.exit, %get_memtier_nodemask.exit53, %.lr.ph97, %__node_get_memory_tier.exit, %bb.e
  %i.ar = icmp eq i64 %.038.in95, 63
  br i1 %i.ar, label %.preheader, label %bb.g, !prof !13

bb.g:                                             ; preds = %__node_get_memory_tier.exit.thread
  %i.as = load i64, ptr getelementptr inbounds nuw (i8, ptr @node_states, i64 24), align 8
  %i.at = shl nsw i64 -2, %.038.in95
  %i.au = and i64 %i.as, %i.at                    ; 2 uses
  %.not.i54 = icmp eq i64 %i.au, 0
  br i1 %.not.i54, label %.preheader, label %find_next_bit.exit

find_next_bit.exit:                               ; preds = %bb.g
  %i.av = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.au) #15, !srcloc !17 ; 2 uses
  %i.aw = call i64 @llvm.umin.i64(i64 %i.av, i64 64)
  %i.ax = icmp ult i64 %i.av, 64
  br i1 %i.ax, label %.lr.ph97, label %.preheader, !llvm.loop !36

bb.h:                                             ; preds = %.lr.ph107.a, %bb.j
  %.0106 = phi ptr [ %.0104, %.lr.ph107.a ], [ %.0, %bb.j ] ; 3 uses
  %i.ay = getelementptr i8, ptr %.0106, i64 16    ; 3 uses
  %.0.i4798 = load ptr, ptr %i.ay, align 8        ; 2 uses
  %.not8099 = icmp eq ptr %.0.i4798, %i.ay
  br i1 %.not8099, label %get_memtier_nodemask.exit49.thread, label %.lr.ph102.a

get_memtier_nodemask.exit49.thread:               ; preds = %bb.h
  store i64 0, ptr %1, align 8
  br label %bb.j

.lr.ph102.a:                                      ; preds = %bb.h, %.lr.ph102.a
  %.0.i47101 = phi ptr [ %.0.i47, %.lr.ph102.a ], [ %.0.i4798, %bb.h ] ; 2 uses
  %.sroa.073.0100 = phi i64 [ %i.bb, %.lr.ph102.a ], [ 0, %bb.h ]
  %i.az = getelementptr i8, ptr %.0.i47101, i64 40
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = or i64 %i.ba, %.sroa.073.0100           ; 2 uses
  %.0.i47 = load ptr, ptr %.0.i47101, align 8     ; 2 uses
  %.not80 = icmp eq ptr %.0.i47, %i.ay
  br i1 %.not80, label %get_memtier_nodemask.exit49, label %.lr.ph102.a, !llvm.loop !1

get_memtier_nodemask.exit49:                      ; preds = %.lr.ph102.a
  %i.bc = and i64 %i.u, %i.bb                     ; 2 uses
  store i64 %i.bc, ptr %1, align 8
  %.not81 = icmp eq i64 %i.bc, 0
  br i1 %.not81, label %bb.j, label %bb.i

bb.i:                                             ; preds = %get_memtier_nodemask.exit49
  %i.bd = getelementptr i8, ptr %.0106, i64 32
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = add i32 %i.be, 127
  store i32 %i.bf, ptr @top_tier_adistance, align 4
  br label %.loopexit

bb.j:                                             ; preds = %get_memtier_nodemask.exit49.thread, %get_memtier_nodemask.exit49
end_hunk_0
begin_hunk_1_@establish_demotion_targets:bb.a
  %.1117 = phi ptr [ %.1, %get_memtier_nodemask.exit ], [ %.1114, %.loopexit ] ; 3 uses
  %.sroa.0.0116 = phi i64 [ %i.bn, %get_memtier_nodemask.exit ], [ %i.bh, %.loopexit ]
  %i.bi = getelementptr i8, ptr %.1117, i64 16    ; 3 uses
  %.0.i108 = load ptr, ptr %i.bi, align 8         ; 2 uses
  %.not83109 = icmp eq ptr %.0.i108, %i.bi
  br i1 %.not83109, label %get_memtier_nodemask.exit, label %.lr.ph112

.lr.ph112:                                        ; preds = %.lr.ph118, %.lr.ph112
  %.0.i111 = phi ptr [ %.0.i, %.lr.ph112 ], [ %.0.i108, %.lr.ph118 ] ; 2 uses
  %.sroa.071.0110 = phi i64 [ %i.bl, %.lr.ph112 ], [ 0, %.lr.ph118 ]
  %i.bj = getelementptr i8, ptr %.0.i111, i64 40
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = or i64 %i.bk, %.sroa.071.0110           ; 2 uses
  %.0.i = load ptr, ptr %.0.i111, align 8         ; 2 uses
  %.not83 = icmp eq ptr %.0.i, %i.bi
  br i1 %.not83, label %get_memtier_nodemask.exit, label %.lr.ph112, !llvm.loop !1

get_memtier_nodemask.exit:                        ; preds = %.lr.ph112, %.lr.ph118
  %.sroa.071.0.lcssa = phi i64 [ 0, %.lr.ph118 ], [ %i.bl, %.lr.ph112 ] ; 2 uses
  store i64 %.sroa.071.0.lcssa, ptr %1, align 8
  %i.bm = xor i64 %.sroa.071.0.lcssa, -1
  %i.bn = and i64 %.sroa.0.0116, %i.bm            ; 2 uses
  %i.bo = getelementptr i8, ptr %.1117, i64 800
  store i64 %i.bn, ptr %i.bo, align 8
  %.1 = load ptr, ptr %.1117, align 8             ; 2 uses
  %.not82 = icmp eq ptr %.1, @memory_tiers
  br i1 %.not82, label %._crit_edge.loopexit, label %.lr.ph118, !llvm.loop !38

._crit_edge.loopexit:                             ; preds = %get_memtier_nodemask.exit
  %.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @node_states, i64 24), align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit
  %i.bp = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.bh, %.loopexit ] ; 2 uses
  %.not.i.i.i60 = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i.i60, label %dump_demotion_targets.exit, label %__first_node.exit.i61

__first_node.exit.i61:                            ; preds = %._crit_edge
  %i.bq = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.bp) #15, !srcloc !17 ; 2 uses
  %i.br = icmp ult i64 %i.bq, 64
  br i1 %i.br, label %.lr.ph.i62, label %dump_demotion_targets.exit

.lr.ph.i62:                                       ; preds = %__first_node.exit.i61, %find_next_bit.exit.i66
  %.0.in17.i = phi i64 [ %i.ci, %find_next_bit.exit.i66 ], [ %i.bq, %__first_node.exit.i61 ] ; 5 uses
  %.018.i = trunc nuw nsw i64 %.0.in17.i to i32   ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr @node_data, i64 %.0.in17.i
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  %.not.i12.i = icmp eq ptr %i.bt, null
  br i1 %.not.i12.i, label %__node_get_memory_tier.exit.thread.i68, label %__node_get_memory_tier.exit.i63

__node_get_memory_tier.exit.thread.i68:           ; preds = %.lr.ph.i62
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #13
  br label %bb.n

__node_get_memory_tier.exit.i63:                  ; preds = %.lr.ph.i62
  %i.bu = getelementptr i8, ptr %i.bt, i64 14664
  %i.bv = load volatile ptr, ptr %i.bu, align 8   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #13
  store i64 0, ptr %0, align 8, !annotation !40
  %i.bw = load ptr, ptr @node_demotion, align 8
  %i.bx = getelementptr [8 x i8], ptr %i.bw, i64 %.0.in17.i
  %i.by = load i64, ptr %i.bx, align 8            ; 2 uses
  store i64 %i.by, ptr %0, align 8
  %.not.i64 = icmp eq ptr %i.bv, null
  br i1 %.not.i64, label %bb.n, label %bb.k

bb.k:                                             ; preds = %__node_get_memory_tier.exit.i63
  %.not.i.i65 = icmp eq i64 %i.by, 0
  br i1 %.not.i.i65, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bz = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %.018.i) #17 ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ca = getelementptr i8, ptr %i.bv, i64 800    ; 2 uses
  %.not.i9.i = icmp eq ptr %i.ca, null
  %i.cb = select i1 %.not.i9.i, i32 0, i32 64
  %i.cc = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %.018.i, i32 noundef 64, ptr noundef nonnull %0, i32 noundef %i.cb, ptr noundef %i.ca) #17 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %__node_get_memory_tier.exit.i63, %__node_get_memory_tier.exit.thread.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #13
  %i.cd = icmp eq i64 %.0.in17.i, 63
  br i1 %i.cd, label %dump_demotion_targets.exit, label %bb.o, !prof !13

bb.o:                                             ; preds = %bb.n
  %i.ce = load i64, ptr getelementptr inbounds nuw (i8, ptr @node_states, i64 24), align 8
  %i.cf = shl nsw i64 -2, %.0.in17.i
  %i.cg = and i64 %i.ce, %i.cf                    ; 2 uses
  %.not.i11.i = icmp eq i64 %i.cg, 0
  br i1 %.not.i11.i, label %dump_demotion_targets.exit, label %find_next_bit.exit.i66

find_next_bit.exit.i66:                           ; preds = %bb.o
  %i.ch = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.cg) #15, !srcloc !17 ; 2 uses
  %i.ci = call i64 @llvm.umin.i64(i64 %i.ch, i64 64)
  %i.cj = icmp ult i64 %i.ch, 64
  br i1 %i.cj, label %.lr.ph.i62, label %dump_demotion_targets.exit, !llvm.loop !39

dump_demotion_targets.exit:                       ; preds = %find_next_bit.exit.i66, %bb.o, %bb.n, %__first_node.exit.i61, %._crit_edge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @memory_tier_device_release(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -40
  tail call void @kfree(ptr noundef %i.a) #12
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -2147483648, 2147483648) i64 @nodelist_show(ptr nofree noundef readonly captures(address) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.nodemask_t, align 8         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  tail call void @mutex_lock(ptr noundef nonnull @memory_tier_lock) #12
  %i.a = getelementptr i8, ptr %0, i64 -24        ; 3 uses
  %.0.i4 = load ptr, ptr %i.a, align 8            ; 2 uses
  %.not5 = icmp eq ptr %.0.i4, %i.a
  br i1 %.not5, label %get_memtier_nodemask.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i7 = phi ptr [ %.0.i, %.lr.ph ], [ %.0.i4, %bb.a ] ; 2 uses
  %.sroa.0.06 = phi i64 [ %i.d, %.lr.ph ], [ 0, %bb.a ]
  %i.b = getelementptr i8, ptr %.0.i7, i64 40
  %i.c = load i64, ptr %i.b, align 8
  %i.d = or i64 %i.c, %.sroa.0.06                 ; 2 uses
  %.0.i = load ptr, ptr %.0.i7, align 8           ; 2 uses
  %.not = icmp eq ptr %.0.i, %i.a
  br i1 %.not, label %get_memtier_nodemask.exit, label %.lr.ph, !llvm.loop !1

get_memtier_nodemask.exit:                        ; preds = %.lr.ph, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.d, %.lr.ph ]
  store i64 %.sroa.0.0.lcssa, ptr %3, align 8
  %i.e = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef 64, ptr noundef nonnull %3) #12
  call void @mutex_unlock(ptr noundef nonnull @memory_tier_lock) #12
  %i.f = sext i32 %i.e to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i64 %i.f
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__node_distance(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @subsys_virtual_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noredzone noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -2147483648, 2147483648) i64 @demotion_enabled_show(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i8, ptr @numa_demotion_enabled, align 1, !range !19, !noundef !20
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = select i1 %i.b, ptr @.str.26, ptr @.str.27
  %i.d = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.25, ptr noundef nonnull %i.c) #12
  %i.e = sext i32 %i.d to i64
  ret i64 %i.e
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @demotion_enabled_store(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i64 noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i8, ptr @numa_demotion_enabled, align 1, !range !19, !noundef !20
  %i.b = tail call i32 @kstrtobool(ptr noundef %2, ptr noundef nonnull @numa_demotion_enabled) #12 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %i.b to i64
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %4 = icmp eq i8 %i.a, 0
  %i.d = load i8, ptr @numa_demotion_enabled, align 1, !range !19
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %4, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @first_online_pgdat() #12  ; 2 uses
  %.not1012 = icmp eq ptr %i.f, null
  br i1 %.not1012, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.013 = phi ptr [ %i.g, %.lr.ph ], [ %i.f, %bb.d ] ; 2 uses
  tail call void @kswapd_clear_hopeless(ptr noundef nonnull %.013, i32 noundef 0) #12
  %i.g = tail call ptr @next_online_pgdat(ptr noundef nonnull %.013) #12 ; 2 uses
  %.not10 = icmp eq ptr %i.g, null
  br i1 %.not10, label %.loopexit, label %.lr.ph, !llvm.loop !41

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.c, %bb.b
  %.08 = phi i64 [ %i.c, %bb.b ], [ %3, %bb.c ], [ %3, %bb.d ], [ %3, %.lr.ph ]
  ret i64 %.08
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @first_online_pgdat() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kswapd_clear_hopeless(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @next_online_pgdat(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { cold noredzone noreturn null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { noredzone nounwind "no-builtin-wcslen" }
attributes #13 = { nounwind }
attributes #14 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }
attributes #15 = { nounwind memory(none) }
attributes #16 = { noredzone "no-builtin-wcslen" }
attributes #17 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #18 = { cold noredzone noreturn nounwind "no-builtin-wcslen" }
attributes #19 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !{!0, !16}
!1 = distinct !{!1, !16}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 8, !"cf-protection-branch", i32 1}
!4 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6 = !{i32 1, !"Code Model", i32 2}
!7 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!8 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!9 = !{i32 1, !"override-stack-alignment", i32 8}
!10 = !{i32 4, !"SkipRaxSetup", i32 1}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!12 = !{i64 2148670868, i64 2148670907, i64 2148670928, i64 2148670965, i64 2148670988, i64 2148670997}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!14 = !{i64 2150793273}
!15 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{i64 1749206}
!18 = !{i64 2149238307, i64 2149238346, i64 2149238367, i64 2149238404, i64 2149238427, i64 2149238298}
!19 = !{i8 0, i8 2}
!20 = !{}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !16}
!23 = !{i64 19243}
!24 = !{i64 19311}
!25 = !{i64 2157575942, i64 2157575817}
!26 = !{i64 2157576465, i64 2157577517, i64 2157577550, i64 2157577585, i64 2157577601, i64 2157578528, i64 2157578586, i64 2157578635, i64 2157578445, i64 2157577660, i64 2157577692, i64 2157577775}
!27 = !{i64 2157578932, i64 2157578808}
!28 = distinct !{!28, !16}
!29 = distinct !{!29, !16}
!30 = !{i64 2149255315}
!31 = !{i64 2157431079, i64 2157430954}
!32 = !{i64 2157431602, i64 2157432641, i64 2157432674, i64 2157432709, i64 2157432725, i64 2157433652, i64 2157433710, i64 2157433759, i64 2157433569, i64 2157432784, i64 2157432816, i64 2157432899}
!33 = !{i64 2157434056, i64 2157433932}
!34 = !{i64 2157474145}
!35 = distinct !{!35, !16}
!36 = distinct !{!36, !16}
!37 = distinct !{!37, !16}
!38 = distinct !{!38, !16}
!39 = distinct !{!39, !16}
!40 = !{!"auto-init"}
!41 = distinct !{!41, !16}
end_hunk_1
