inline.NumInlined: 147
inline.NumDeleted: 96
begin_hunk_0_@pfn_range_intersects_zones:bb.a
  %i.i = getelementptr i8, ptr %.01018, i64 152
  %.val9.i = load i64, ptr %i.i, align 8          ; 2 uses
  %i.j = icmp eq i64 %.val9.i, 0
  br i1 %i.j, label %zone_intersects.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %.01018, i64 136
  %.val.i = load i64, ptr %i.k, align 8           ; 2 uses
  %i.l = add i64 %.val.i, %.val9.i
  %.not.i = icmp ult i64 %1, %i.l
  %.not7.i = icmp ugt i64 %i.b, %.val.i
  %or.cond = and i1 %.not7.i, %.not.i
  br i1 %or.cond, label %bb.f, label %zone_intersects.exit.thread

bb.f:                                             ; preds = %bb.e
  %.not15 = icmp eq ptr %.019, null
  br i1 %.not15, label %zone_intersects.exit.thread, label %._crit_edge

zone_intersects.exit.thread:                      ; preds = %bb.d, %bb.e, %bb.f, %.lr.ph.split
  %.1 = phi ptr [ %.019, %.lr.ph.split ], [ %.019, %bb.d ], [ %.01018, %bb.f ], [ %.019, %bb.e ]
  %i.m = tail call ptr @next_zone(ptr noundef nonnull %.01018) #20 ; 2 uses
  %.not.not = icmp eq ptr %i.m, null
  br i1 %.not.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !38

._crit_edge:                                      ; preds = %bb.f, %zone_intersects.exit.thread, %bb.c, %zone_intersects.exit.thread.us, %bb.a
  %.not.lcssa = phi i1 [ false, %bb.a ], [ false, %zone_intersects.exit.thread.us ], [ true, %bb.c ], [ false, %zone_intersects.exit.thread ], [ true, %bb.f ]
  ret i1 %.not.lcssa
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @first_online_pgdat() local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @next_zone(ptr noundef) local_unnamed_addr #7

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local void @page_alloc_init_late() local_unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  tail call fastcc void @mem_init_print_info() #22, !srcloc !39
  tail call void @buffer_init() #20
  tail call void @memblock_discard() #20
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @node_states, i64 24), align 8 ; 3 uses
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %._crit_edge, label %find_first_bit.exit

find_first_bit.exit:                              ; preds = %bb.a
  %i.b = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.a) #18, !srcloc !11 ; 2 uses
  %i.c = icmp ult i64 %i.b, 64
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %find_first_bit.exit, %find_next_bit.exit
  %.0.in9 = phi i64 [ %i.h, %find_next_bit.exit ], [ %i.b, %find_first_bit.exit ] ; 2 uses
  %i.d = icmp eq i64 %.0.in9, 63
  br i1 %i.d, label %._crit_edge, label %bb.b, !prof !12

bb.b:                                             ; preds = %.lr.ph
  %i.e = shl nsw i64 -2, %.0.in9
  %i.f = and i64 %i.e, %i.a                       ; 2 uses
  %.not.i7 = icmp eq i64 %i.f, 0
  br i1 %.not.i7, label %._crit_edge, label %find_next_bit.exit

find_next_bit.exit:                               ; preds = %bb.b
  %i.g = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.f) #18, !srcloc !11 ; 2 uses
  %i.h = tail call i64 @llvm.umin.i64(i64 %i.g, i64 64)
  %i.i = icmp ult i64 %i.g, 64
  br i1 %i.i, label %.lr.ph, label %._crit_edge, !llvm.loop !40

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %find_next_bit.exit, %bb.a, %find_first_bit.exit
  %i.j = tail call ptr @first_online_pgdat() #20  ; 2 uses
  %.not10 = icmp eq ptr %i.j, null
  br i1 %.not10, label %._crit_edge14, label %.lr.ph13

.lr.ph13:                                         ; preds = %._crit_edge, %bb.d
  %.0611 = phi ptr [ %i.l, %bb.d ], [ %i.j, %._crit_edge ] ; 3 uses
  %i.k = getelementptr i8, ptr %.0611, i64 160
  %.06.val = load i64, ptr %i.k, align 32
  %.not8 = icmp eq i64 %.06.val, 0
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph13
  tail call void @set_zone_contiguous(ptr noundef nonnull %.0611) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph13
  %i.l = tail call ptr @next_zone(ptr noundef nonnull %.0611) #20 ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %._crit_edge14, label %.lr.ph13, !llvm.loop !41

._crit_edge14:                                    ; preds = %bb.d, %._crit_edge
  tail call void @page_alloc_sysctl_init() #20
  ret void
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc void @mem_init_print_info() unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @node_states, i64 8), align 8 ; 3 uses
  %.not.i.i = icmp eq i64 %i.a, 0
  br i1 %.not.i.i, label %get_num_physpages.exit, label %find_first_bit.exit.i

find_first_bit.exit.i:                            ; preds = %bb.a
  %i.b = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.a) #18, !srcloc !11 ; 2 uses
  %i.c = icmp ult i64 %i.b, 64
  br i1 %i.c, label %.lr.ph.i, label %get_num_physpages.exit

.lr.ph.i:                                         ; preds = %find_first_bit.exit.i, %find_next_bit.exit.i
  %.08.i = phi i64 [ %i.h, %find_next_bit.exit.i ], [ 0, %find_first_bit.exit.i ]
  %.05.in7.i = phi i64 [ %i.m, %find_next_bit.exit.i ], [ %i.b, %find_first_bit.exit.i ] ; 3 uses
  %i.d = getelementptr [8 x i8], ptr @node_data, i64 %.05.in7.i
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 13616
  %i.g = load i64, ptr %i.f, align 16
  %i.h = add i64 %i.g, %.08.i                     ; 4 uses
  %i.i = icmp eq i64 %.05.in7.i, 63
  br i1 %i.i, label %get_num_physpages.exit, label %bb.b, !prof !12

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = shl nsw i64 -2, %.05.in7.i
  %i.k = and i64 %i.j, %i.a                       ; 2 uses
  %.not.i6.i = icmp eq i64 %i.k, 0
  br i1 %.not.i6.i, label %get_num_physpages.exit, label %find_next_bit.exit.i

find_next_bit.exit.i:                             ; preds = %bb.b
  %i.l = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.k) #18, !srcloc !11 ; 2 uses
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.l, i64 64)
  %i.n = icmp ult i64 %i.l, 64
  br i1 %i.n, label %.lr.ph.i, label %get_num_physpages.exit, !llvm.loop !42

get_num_physpages.exit:                           ; preds = %.lr.ph.i, %bb.b, %find_next_bit.exit.i, %bb.a, %find_first_bit.exit.i
  %.0.lcssa.i = phi i64 [ 0, %find_first_bit.exit.i ], [ 0, %bb.a ], [ %i.h, %find_next_bit.exit.i ], [ %i.h, %bb.b ], [ %i.h, %.lr.ph.i ] ; 2 uses
  %i.o = icmp ule ptr @__init_begin, @_sinittext
  %i.p = icmp ult ptr @_sinittext, @__init_end
  %or.cond = and i1 %i.o, %i.p
  %i.q = icmp ugt i64 sub (i64 ptrtoint (ptr @__init_end to i64), i64 ptrtoint (ptr @__init_begin to i64)), sub (i64 ptrtoint (ptr @_einittext to i64), i64 ptrtoint (ptr @_sinittext to i64))
  %or.cond35 = and i1 %i.q, %or.cond
  %.0 = select i1 %or.cond35, i64 sub (i64 sub (i64 ptrtoint (ptr @__init_end to i64), i64 ptrtoint (ptr @__init_begin to i64)), i64 sub (i64 ptrtoint (ptr @_einittext to i64), i64 ptrtoint (ptr @_sinittext to i64))), i64 sub (i64 ptrtoint (ptr @__init_end to i64), i64 ptrtoint (ptr @__init_begin to i64)) ; 3 uses
  %i.r = icmp ule ptr @_stext, @_sinittext
  %i.s = icmp ult ptr @_sinittext, @_etext
  %or.cond1 = and i1 %i.r, %i.s
  %i.t = icmp ugt i64 sub (i64 ptrtoint (ptr @_etext to i64), i64 ptrtoint (ptr @_stext to i64)), sub (i64 ptrtoint (ptr @_einittext to i64), i64 ptrtoint (ptr @_sinittext to i64))
  %or.cond36 = and i1 %i.t, %or.cond1
  %.033 = select i1 %or.cond36, i64 sub (i64 sub (i64 ptrtoint (ptr @_etext to i64), i64 ptrtoint (ptr @_stext to i64)), i64 sub (i64 ptrtoint (ptr @_einittext to i64), i64 ptrtoint (ptr @_sinittext to i64))), i64 sub (i64 ptrtoint (ptr @_etext to i64), i64 ptrtoint (ptr @_stext to i64)) ; 3 uses
  %i.u = icmp ule ptr @_sdata, @__init_begin
  %i.v = icmp ult ptr @__init_begin, @_edata
  %or.cond2 = and i1 %i.u, %i.v
  %i.w = icmp ult i64 %.0, sub (i64 ptrtoint (ptr @_edata to i64), i64 ptrtoint (ptr @_sdata to i64))
  %or.cond37 = and i1 %or.cond2, %i.w
  %i.x = sub nuw i64 sub (i64 ptrtoint (ptr @_edata to i64), i64 ptrtoint (ptr @_sdata to i64)), %.0
  %.032 = select i1 %or.cond37, i64 %i.x, i64 sub (i64 ptrtoint (ptr @_edata to i64), i64 ptrtoint (ptr @_sdata to i64)) ; 3 uses
  %i.y = icmp ule ptr @_stext, @__start_rodata
  %i.z = icmp ult ptr @__start_rodata, @_etext
  %or.cond3 = and i1 %i.y, %i.z
  %i.aa = icmp ugt i64 %.033, sub (i64 ptrtoint (ptr @__end_rodata to i64), i64 ptrtoint (ptr @__start_rodata to i64))
  %or.cond38 = and i1 %or.cond3, %i.aa
  %i.ab = sub nuw i64 %.033, sub (i64 ptrtoint (ptr @__end_rodata to i64), i64 ptrtoint (ptr @__start_rodata to i64))
  %.134 = select i1 %or.cond38, i64 %i.ab, i64 %.033
  %i.ac = icmp ule ptr @_sdata, @__start_rodata
  %i.ad = icmp ult ptr @__start_rodata, @_edata
  %or.cond4 = and i1 %i.ac, %i.ad
  %i.ae = icmp ugt i64 %.032, sub (i64 ptrtoint (ptr @__end_rodata to i64), i64 ptrtoint (ptr @__start_rodata to i64))
  %or.cond39 = select i1 %or.cond4, i1 %i.ae, i1 false
  %i.af = sub nuw i64 %.032, sub (i64 ptrtoint (ptr @__end_rodata to i64), i64 ptrtoint (ptr @__start_rodata to i64))
  %.1 = select i1 %or.cond39, i64 %i.af, i64 %.032
  %i.ag = load volatile i64, ptr @vm_zone_stat, align 16
  %spec.store.select.i = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.ag, i64 0)
  %i.ah = shl i64 %spec.store.select.i, 2
  %i.ai = shl i64 %.0.lcssa.i, 2
  %i.aj = lshr i64 %.134, 10
  %i.ak = lshr i64 %.1, 10
  %i.al = lshr i64 sub (i64 ptrtoint (ptr @__end_rodata to i64), i64 ptrtoint (ptr @__start_rodata to i64)), 10
  %i.am = add i64 %.0, sub (i64 ptrtoint (ptr @_einittext to i64), i64 ptrtoint (ptr @_sinittext to i64))
  %i.an = lshr i64 %i.am, 10
  %i.ao = lshr i64 sub (i64 ptrtoint (ptr @__bss_stop to i64), i64 ptrtoint (ptr @__bss_start to i64)), 10
  %i.ap = load volatile i64, ptr @_totalram_pages, align 8
  %i.aq = load i64, ptr @totalcma_pages, align 8  ; 2 uses
  %i.ar = add i64 %i.ap, %i.aq
  %i.as = sub i64 %.0.lcssa.i, %i.ar
  %i.at = shl i64 %i.as, 2
  %i.au = shl i64 %i.aq, 2
  %i.av = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i64 noundef %i.ah, i64 noundef %i.ai, i64 noundef %i.aj, i64 noundef %i.ak, i64 noundef %i.al, i64 noundef %i.an, i64 noundef %i.ao, i64 noundef %i.at, i64 noundef %i.au) #19 ; 0 uses
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @buffer_init() local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @memblock_discard() local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @page_alloc_sysctl_init() local_unnamed_addr #7

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local nonnull ptr @alloc_large_system_hash(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6, i64 noundef %7, i64 noundef %8) local_unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.b, label %__roundup_pow_of_two.exit

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr @nr_kernel_pages, align 8
  %i.b = add i64 %i.a, 255
  %9 = and i64 %i.b, -256                         ; 4 uses
  %.not107 = icmp eq i64 %8, 0
  %i.c = icmp ugt i64 %9, 16777216
  %or.cond150 = select i1 %.not107, i1 %i.c, i1 false
  br i1 %or.cond150, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.084149 = phi i32 [ %i.d, %.lr.ph ], [ %3, %bb.b ]
  %.091148 = phi i64 [ %i.e, %.lr.ph ], [ 16777216, %bb.b ]
  %i.d = add i32 %.084149, 1                      ; 2 uses
  %i.e = shl i64 %.091148, 2                      ; 2 uses
  %i.f = icmp ult i64 %i.e, %9
  br i1 %i.f, label %.lr.ph, label %.loopexit, !llvm.loop !43

.loopexit:                                        ; preds = %.lr.ph, %bb.b
  %.185 = phi i32 [ %3, %bb.b ], [ %i.d, %.lr.ph ] ; 3 uses
  %i.g = icmp sgt i32 %.185, 12
  %i.h = add nsw i32 %.185, -12
  %i.i = zext nneg i32 %i.h to i64
  %i.j = lshr i64 %9, %i.i
  %i.k = sub i32 12, %.185
  %i.l = zext nneg i32 %i.k to i64
  %i.m = shl i64 %9, %i.l
  %.0 = select i1 %i.g, i64 %i.j, i64 %i.m        ; 2 uses
  %i.n = mul i64 %.0, %1
  %i.o = icmp ult i64 %i.n, 4096
  br i1 %i.o, label %bb.c, label %__roundup_pow_of_two.exit, !prof !12

bb.c:                                             ; preds = %.loopexit
  %i.p = udiv i64 4096, %1
  br label %__roundup_pow_of_two.exit

__roundup_pow_of_two.exit:                        ; preds = %.loopexit, %bb.c, %bb.a
  %.1 = phi i64 [ %2, %bb.a ], [ %i.p, %bb.c ], [ %.0, %.loopexit ]
  %i.q = add i64 %.1, -1
  %i.r = tail call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.q, i32 -1) #18, !srcloc !44
  %i.s = add i32 %i.r, 1
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw i64 1, %i.t
  %i.v = icmp eq i64 %8, 0
  br i1 %i.v, label %bb.d, label %fls64.exit128

bb.d:                                             ; preds = %__roundup_pow_of_two.exit
  %i.w = load i64, ptr @nr_all_pages, align 8
  %i.x = shl i64 %i.w, 8
  %i.y = and i64 %i.x, 1152921504606846720
  %i.z = udiv i64 %i.y, %1
  br label %fls64.exit128

fls64.exit128:                                    ; preds = %bb.d, %__roundup_pow_of_two.exit
  %.086 = phi i64 [ %i.z, %bb.d ], [ %8, %__roundup_pow_of_two.exit ]
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %7)
  %i.aa = tail call i64 @llvm.umin.i64(i64 %.086, i64 %spec.select)
  %.3 = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 2147483648)
  %i.ab = tail call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.3, i32 -1) #18, !srcloc !44
  %i.ac = sext i32 %i.ab to i64
  %i.ad = and i32 %4, 2
  %.not108 = icmp eq i32 %i.ad, 0                 ; 2 uses
  %i.ae = select i1 %.not108, i32 2080, i32 2336  ; 2 uses
  %i.af = and i32 %4, 1
  %.not109 = icmp eq i32 %i.af, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.m, %fls64.exit128
  %.088 = phi i64 [ %i.ac, %fls64.exit128 ], [ %i.ay, %bb.m ] ; 5 uses
  %i.ag = shl i64 %1, %.088                       ; 8 uses
  br i1 %.not109, label %get_order.exit117, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.not108, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = tail call ptr @memblock_alloc_try_nid(i64 noundef %i.ag, i64 noundef 64, i64 noundef 0, i64 noundef 0, i32 noundef -1) #20
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ai = tail call ptr @memblock_alloc_try_nid_raw(i64 noundef %i.ag, i64 noundef 64, i64 noundef 0, i64 noundef 0, i32 noundef -1) #20
  br label %bb.l

get_order.exit117:                                ; preds = %bb.e
  %i.aj = add i64 %i.ag, -1
  %i.ak = lshr i64 %i.aj, 12
  %i.al = tail call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ak, i32 -1) #18, !srcloc !44
  %i.am = add i32 %i.al, 1
  %i.an = icmp sgt i32 %i.am, 10
  %i.ao = load i8, ptr @hashdist, align 1, !range !25
  %i.ap = trunc nuw i8 %i.ao to i1
  %or.cond = select i1 %i.an, i1 true, i1 %i.ap
  br i1 %or.cond, label %get_order.exit117.thread, label %bb.k

get_order.exit117.thread:                         ; preds = %get_order.exit117
  %i.aq = tail call noalias ptr @vmalloc_huge_node_noprof(i64 noundef %i.ag, i32 noundef range(i32 2080, 2337) %i.ae, i32 noundef -1) #24 ; 4 uses
  %.not110 = icmp eq ptr %i.aq, null
  br i1 %.not110, label %bb.l, label %bb.i

bb.i:                                             ; preds = %get_order.exit117.thread
  %i.ar = tail call ptr @find_vm_area(ptr noundef nonnull %i.aq) #20 ; 2 uses
  %.not.i129 = icmp eq ptr %i.ar, null
  br i1 %.not.i129, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr i8, ptr %i.ar, i64 40
  %i.at = load i32, ptr %i.as, align 8
  %.not143 = icmp eq i32 %i.at, 0
  %i.au = select i1 %.not143, ptr @.str.16, ptr @.str.15
  br label %.thread

bb.k:                                             ; preds = %get_order.exit117
  %i.av = tail call noalias ptr @alloc_pages_exact_noprof(i64 noundef %i.ag, i32 noundef %i.ae) #24
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.g, %get_order.exit117.thread, %bb.k
  %.094 = phi i1 [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.k ], [ true, %get_order.exit117.thread ]
  %.090 = phi ptr [ %i.ah, %bb.g ], [ %i.ai, %bb.h ], [ %i.av, %bb.k ], [ null, %get_order.exit117.thread ] ; 2 uses
  %i.aw = icmp eq ptr %.090, null                 ; 2 uses
  %i.ax = icmp ugt i64 %i.ag, 4096
  %or.cond3 = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %or.cond3, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.ay = add i64 %.088, -1                       ; 2 uses
  %.not111 = icmp eq i64 %i.ay, 0
  br i1 %.not111, label %.critedge.thread, label %bb.e, !llvm.loop !45

.critedge:                                        ; preds = %bb.l
  br i1 %i.aw, label %.critedge.thread, label %.thread

.critedge.thread:                                 ; preds = %bb.m, %.critedge
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.13, ptr noundef %0) #25
  unreachable

.thread:                                          ; preds = %bb.i, %bb.j, %.critedge
  %.094136141 = phi i1 [ %.094, %.critedge ], [ true, %bb.j ], [ true, %bb.i ]
  %.193137140 = phi ptr [ @.str.16, %.critedge ], [ %i.au, %bb.j ], [ @.str.16, %bb.i ]
  %.090138139 = phi ptr [ %.090, %.critedge ], [ %i.aq, %bb.j ], [ %i.aq, %bb.i ]
  %i.az = shl nuw i64 1, %.088
  %i.ba = add i64 %i.ag, -1
  %i.bb = lshr i64 %i.ba, 12
  %i.bc = tail call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.bb, i32 -1) #18, !srcloc !44
  %i.bd = add i32 %i.bc, 1
  %i.be = select i1 %.094136141, ptr %.193137140, ptr @.str.17
  %i.bf = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %0, i64 noundef %i.az, i32 noundef %i.bd, i64 noundef %i.ag, ptr noundef nonnull %i.be) #19 ; 0 uses
  %.not113 = icmp eq ptr %5, null
  br i1 %.not113, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.thread
  %i.bg = trunc i64 %.088 to i32
  store i32 %i.bg, ptr %5, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread
  %.not114 = icmp eq ptr %6, null
  br i1 %.not114, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = trunc i64 %.088 to i32
  %notmask = shl nsw i32 -1, %i.bh
  %i.bi = xor i32 %notmask, -1
  store i32 %i.bi, ptr %6, align 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  ret ptr %.090138139
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @alloc_pages_exact_noprof(i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: cold noredzone noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local void @memblock_free_pages(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = load i64, ptr @vmemmap_base, align 8
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr [64 x i8], ptr %i.b, i64 %0
  tail call void @__free_pages_core(ptr noundef %i.c, i32 noundef %1, i32 noundef 0) #20
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__free_pages_core(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @early_init_on_alloc(ptr noundef %0) #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @kstrtobool(ptr noundef %0, ptr noundef nonnull @_init_on_alloc_enabled_early) #20
  ret i32 %i.a
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @early_init_on_free(ptr noundef %0) #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @kstrtobool(ptr noundef %0, ptr noundef nonnull @_init_on_free_enabled_early) #20
  ret i32 %i.a
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @early_check_pages(ptr noundef %0) #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @kstrtobool(ptr noundef %0, ptr noundef nonnull @check_pages_enabled_early) #20
  ret i32 %i.a
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define weak dso_local void @arch_setup_zero_pages() local_unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = load i64, ptr @vmemmap_base, align 8
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = icmp ugt i64 ptrtoint (ptr @empty_zero_page to i64), sub (i64 ptrtoint (ptr @empty_zero_page to i64), i64 -2147483648)
  %i.d = load i64, ptr @phys_base, align 8
  %i.e = load i64, ptr @page_offset_base, align 8
  %i.f = sub i64 -2147483648, %i.e
  %i.g = select i1 %i.c, i64 %i.d, i64 %i.f
  %i.h = add i64 %i.g, sub (i64 ptrtoint (ptr @empty_zero_page to i64), i64 -2147483648)
  %i.i = lshr i64 %i.h, 12
  %i.j = getelementptr [64 x i8], ptr %i.b, i64 %i.i
  store ptr %i.j, ptr @__zero_page, align 8
  ret void
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
end_hunk_0
begin_hunk_1_@cmdline_parse_core:bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ -22, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @simple_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @memparse(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #7 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @memblock_search_pfn_nid(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #7 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__cond_resched() local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @memblock_alloc_try_nid(i64 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc_huge_node_noprof(i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @find_vm_area(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @arch_zone_limits_init(ptr noundef) local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sparse_init() local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @memblock_start_of_DRAM() local_unnamed_addr #7

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc void @find_zone_movable_pfns_for_nodes() unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
__nodes_weight.exit:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %.sroa.0.0.copyload = load i64, ptr getelementptr inbounds nuw (i8, ptr @node_states, i64 24), align 8
  %i.f = tail call fastcc i64 @early_calculate_totalpages() #22, !srcloc !64 ; 5 uses
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @node_states, i64 24), align 8
  %i.h = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.i = tail call { i64, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight64\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntq $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.g, i64 %i.h) #18, !srcloc !18 ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 1
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.j)
  %i.k = extractvalue { i64, i64 } %i.i, 0
  %i.l = trunc i64 %i.k to i32
  br label %bb.a

bb.a:                                             ; preds = %bb.c, %__nodes_weight.exit
  %indvars.iv.i = phi i64 [ 3, %__nodes_weight.exit ], [ %indvars.iv.next.i, %bb.c ] ; 6 uses
  %i.m = icmp eq i64 %indvars.iv.i, 3
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr [8 x i8], ptr @arch_zone_highest_possible_pfn, i64 %indvars.iv.i
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr [8 x i8], ptr @arch_zone_lowest_possible_pfn, i64 %indvars.iv.i
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp ugt i64 %i.o, %i.q
  br i1 %i.r, label %.split.loop.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %.not.i162 = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not.i162, label %find_usable_zone_for_movable.exit, label %bb.a, !llvm.loop !65

.split.loop.exit.i:                               ; preds = %bb.b
  %i.s = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %find_usable_zone_for_movable.exit

find_usable_zone_for_movable.exit:                ; preds = %bb.c, %.split.loop.exit.i
  %.0.lcssa.i = phi i32 [ %i.s, %.split.loop.exit.i ], [ -1, %bb.c ] ; 2 uses
  store i32 0, ptr %i.a, align 4, !annotation !21
  store i32 %.0.lcssa.i, ptr @movable_zone, align 4
  %i.t = load i8, ptr @mirrored_kernelcore, align 1, !range !25, !noundef !26
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.d, label %bb.j

bb.d:                                             ; preds = %find_usable_zone_for_movable.exit
  %i.v = tail call zeroext i1 @memblock_has_mirror() #20
  br i1 %i.v, label %bb.e, label %.loopexit.sink.split

bb.e:                                             ; preds = %bb.d
  %i.w = load i64, ptr @elfcorehdr_addr, align 8
  %.not171 = icmp eq i64 %i.w, -1
  br i1 %.not171, label %bb.f, label %.loopexit.sink.split

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memblock, i64 40), align 8 ; 3 uses
  %i.y = load i64, ptr getelementptr inbounds nuw (i8, ptr @memblock, i64 16), align 8
  %i.z = getelementptr [24 x i8], ptr %i.x, i64 %i.y ; 3 uses
  %i.aa = icmp ult ptr %i.x, %i.z
  br i1 %i.aa, label %.lr.ph185.outer, label %.thread

.lr.ph185.outer:                                  ; preds = %bb.f, %.thread211
  %.1119183.ph = phi ptr [ %i.ao, %.thread211 ], [ %i.x, %bb.f ]
  %.0120182.ph = phi i1 [ true, %.thread211 ], [ false, %bb.f ]
  br label %.lr.ph185

.lr.ph185:                                        ; preds = %.lr.ph185.outer, %bb.i
  %.1119183 = phi ptr [ %i.am, %bb.i ], [ %.1119183.ph, %.lr.ph185.outer ] ; 5 uses
  %i.ab = getelementptr i8, ptr %.1119183, i64 16
  %.1119.val160 = load i32, ptr %i.ab, align 8
  %i.ac = and i32 %.1119.val160, 2
  %.not172 = icmp eq i32 %i.ac, 0
  br i1 %.not172, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph185
  %.1119.val = load i64, ptr %.1119183, align 8
  %i.ad = add i64 %.1119.val, 4095                ; 2 uses
  %i.ae = icmp ult i64 %i.ad, 4294967296
  br i1 %i.ae, label %.thread211, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = lshr i64 %i.ad, 12                      ; 2 uses
  %i.ag = getelementptr i8, ptr %.1119183, i64 20
  %.1119.val161 = load i32, ptr %i.ag, align 4
  %i.ah = sext i32 %.1119.val161 to i64
  %i.ai = getelementptr [8 x i8], ptr @zone_movable_pfn, i64 %i.ah ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %.not150 = icmp eq i64 %i.aj, 0
  %i.ak = tail call i64 @llvm.umin.i64(i64 %i.af, i64 %i.aj)
  %i.al = select i1 %.not150, i64 %i.af, i64 %i.ak
  store i64 %i.al, ptr %i.ai, align 8
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph185, %bb.h
  %i.am = getelementptr i8, ptr %.1119183, i64 24 ; 2 uses
  %i.an = icmp ult ptr %i.am, %i.z
  br i1 %i.an, label %.lr.ph185, label %._crit_edge186, !llvm.loop !66

.thread211:                                       ; preds = %bb.g
  %i.ao = getelementptr i8, ptr %.1119183, i64 24 ; 2 uses
  %i.ap = icmp ult ptr %i.ao, %i.z
  br i1 %i.ap, label %.lr.ph185.outer, label %._crit_edge186.thread, !llvm.loop !66

._crit_edge186:                                   ; preds = %bb.i
  br i1 %.0120182.ph, label %._crit_edge186.thread, label %.thread

._crit_edge186.thread:                            ; preds = %.thread211, %._crit_edge186
  %i.aq = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #19 ; 0 uses
  br label %.thread

bb.j:                                             ; preds = %find_usable_zone_for_movable.exit
  %i.ar = load i64, ptr @required_kernelcore_percent, align 8 ; 2 uses
  %.not = icmp eq i64 %i.ar, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = mul i64 %i.f, 100
  %i.at = mul i64 %i.as, %i.ar
  %i.au = udiv i64 %i.at, 10000
  store i64 %i.au, ptr @required_kernelcore, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.av = load i64, ptr @required_movablecore_percent, align 8 ; 2 uses
  %.not142 = icmp eq i64 %i.av, 0
  br i1 %.not142, label %thread-pre-split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = mul i64 %i.f, 100
  %i.ax = mul i64 %i.aw, %i.av
  %i.ay = udiv i64 %i.ax, 10000                   ; 2 uses
  store i64 %i.ay, ptr @required_movablecore, align 8
  br label %bb.n

thread-pre-split:                                 ; preds = %bb.l
  %.pr = load i64, ptr @required_movablecore, align 8
  br label %bb.n

bb.n:                                             ; preds = %thread-pre-split, %bb.m
  %i.az = phi i64 [ %.pr, %thread-pre-split ], [ %i.ay, %bb.m ] ; 2 uses
  %.not143 = icmp eq i64 %i.az, 0
  %.pre = load i64, ptr @required_kernelcore, align 8 ; 2 uses
  br i1 %.not143, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = add i64 %i.az, 1023
  %0 = and i64 %i.ba, -1024
  %i.bb = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %0) ; 2 uses
  store i64 %i.bb, ptr @required_movablecore, align 8
  %i.bc = sub i64 %i.f, %i.bb
  %i.bd = tail call i64 @llvm.umax.i64(i64 %.pre, i64 %i.bc) ; 2 uses
  store i64 %i.bd, ptr @required_kernelcore, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.be = phi i64 [ %i.bd, %bb.o ], [ %.pre, %bb.n ] ; 3 uses
  %.not144 = icmp ne i64 %i.be, 0
  %.not145 = icmp ult i64 %i.be, %i.f
  %or.cond = select i1 %.not144, i1 %.not145, i1 false
  br i1 %or.cond, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.bf = sext i32 %.0.lcssa.i to i64
  %i.bg = getelementptr [8 x i8], ptr @arch_zone_lowest_possible_pfn, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8            ; 5 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.ab, %bb.q
  %i.bi = phi i64 [ %i.be, %bb.q ], [ %i.ct, %bb.ab ]
  %.0117 = phi i32 [ %i.l, %bb.q ], [ %i.cs, %bb.ab ] ; 2 uses
  %i.bj = sext i32 %.0117 to i64                  ; 2 uses
  %i.bk = load i64, ptr getelementptr inbounds nuw (i8, ptr @node_states, i64 24), align 8 ; 2 uses
  %.not.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i, label %._crit_edge181, label %find_first_bit.exit

find_first_bit.exit:                              ; preds = %bb.r
  %i.bl = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.bk) #18, !srcloc !11 ; 2 uses
  %i.bm = icmp ult i64 %i.bl, 64
  br i1 %i.bm, label %.lr.ph180.preheader, label %._crit_edge181

.lr.ph180.preheader:                              ; preds = %find_first_bit.exit
  %i.bn = udiv i64 %i.bi, %i.bj
  br label %.lr.ph180

.lr.ph180:                                        ; preds = %.lr.ph180.preheader, %find_next_bit.exit
  %.0.in178 = phi i64 [ %i.cq, %find_next_bit.exit ], [ %i.bl, %.lr.ph180.preheader ] ; 4 uses
  %.0113177 = phi i64 [ %.1114, %find_next_bit.exit ], [ %i.bn, %.lr.ph180.preheader ] ; 2 uses
  %.0179 = trunc nuw nsw i64 %.0.in178 to i32     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 0, ptr %i.b, align 8, !annotation !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i64 0, ptr %i.c, align 8, !annotation !21
  %i.bo = load i64, ptr @required_kernelcore, align 8 ; 2 uses
  %i.bp = icmp ult i64 %i.bo, %.0113177
  br i1 %i.bp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph180
  %i.bq = udiv i64 %i.bo, %i.bj
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph180
  %.1114 = phi i64 [ %i.bq, %bb.s ], [ %.0113177, %.lr.ph180 ] ; 2 uses
  store i32 -1, ptr %i.a, align 4
  call void @__next_mem_pfn_range(ptr noundef nonnull %i.a, i32 noundef %.0179, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null) #20
  %i.br = load i32, ptr %i.a, align 4
  %i.bs = icmp sgt i32 %i.br, -1
  br i1 %i.bs, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.t
  %i.bt = getelementptr [8 x i8], ptr @zone_movable_pfn, i64 %.0.in178 ; 3 uses
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph, %bb.z
  %.0115174 = phi i64 [ %.1114, %.lr.ph ], [ %.2.ph, %bb.z ] ; 3 uses
  %i.bu = load i64, ptr %i.b, align 8
  %i.bv = load i64, ptr %i.bt, align 8
  %i.bw = call i64 @llvm.umax.i64(i64 %i.bu, i64 %i.bv) ; 5 uses
  store i64 %i.bw, ptr %i.b, align 8
  %i.bx = load i64, ptr %i.c, align 8             ; 5 uses
  %.not147 = icmp ult i64 %i.bw, %i.bx
  br i1 %.not147, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.by = icmp ult i64 %i.bw, %i.bh
  %.pre190 = load i64, ptr @required_kernelcore, align 8 ; 2 uses
  br i1 %i.by, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.bz = call i64 @llvm.umin.i64(i64 %i.bx, i64 %i.bh)
  %i.ca = sub i64 %i.bz, %i.bw                    ; 2 uses
  %i.cb = call i64 @llvm.usub.sat.i64(i64 %.0115174, i64 %i.ca) ; 2 uses
  %i.cc = call i64 @llvm.usub.sat.i64(i64 %.pre190, i64 %i.ca) ; 2 uses
  store i64 %i.cc, ptr @required_kernelcore, align 8
  %.not148 = icmp ugt i64 %i.bx, %i.bh
  br i1 %.not148, label %.thread164, label %bb.x

.thread164:                                       ; preds = %bb.w
  store i64 %i.bh, ptr %i.b, align 8
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  store i64 %i.bx, ptr %i.bt, align 8
  br label %bb.z

bb.y:                                             ; preds = %.thread164, %bb.v
  %i.cd = phi i64 [ %i.cc, %.thread164 ], [ %.pre190, %bb.v ]
  %i.ce = phi i64 [ %i.bh, %.thread164 ], [ %i.bw, %bb.v ] ; 2 uses
  %.1116 = phi i64 [ %i.cb, %.thread164 ], [ %.0115174, %bb.v ] ; 2 uses
  %i.cf = sub i64 %i.bx, %i.ce
  %spec.select = call i64 @llvm.umin.i64(i64 %i.cf, i64 %.1116) ; 3 uses
  %i.cg = add i64 %spec.select, %i.ce
  store i64 %i.cg, ptr %i.bt, align 8
  %i.ch = call i64 @llvm.usub.sat.i64(i64 %i.cd, i64 %spec.select)
  store i64 %i.ch, ptr @required_kernelcore, align 8
  %i.ci = sub i64 %.1116, %spec.select            ; 2 uses
  %.not149 = icmp eq i64 %i.ci, 0
  br i1 %.not149, label %._crit_edge, label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.u
  %.2.ph = phi i64 [ %.0115174, %bb.u ], [ %i.ci, %bb.y ], [ %i.cb, %bb.x ]
  call void @__next_mem_pfn_range(ptr noundef nonnull %i.a, i32 noundef %.0179, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null) #20
  %i.cj = load i32, ptr %i.a, align 4
  %i.ck = icmp sgt i32 %i.cj, -1
  br i1 %i.ck, label %bb.u, label %._crit_edge, !llvm.loop !67

._crit_edge:                                      ; preds = %bb.z, %bb.y, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.cl = icmp eq i64 %.0.in178, 63
  br i1 %i.cl, label %._crit_edge181, label %bb.aa, !prof !12

bb.aa:                                            ; preds = %._crit_edge
  %i.cm = load i64, ptr getelementptr inbounds nuw (i8, ptr @node_states, i64 24), align 8
  %i.cn = shl nsw i64 -2, %.0.in178
  %i.co = and i64 %i.cm, %i.cn                    ; 2 uses
  %.not.i156 = icmp eq i64 %i.co, 0
  br i1 %.not.i156, label %._crit_edge181, label %find_next_bit.exit

find_next_bit.exit:                               ; preds = %bb.aa
  %i.cp = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.co) #18, !srcloc !11 ; 2 uses
  %i.cq = call i64 @llvm.umin.i64(i64 %i.cp, i64 64)
  %i.cr = icmp ult i64 %i.cp, 64
  br i1 %i.cr, label %.lr.ph180, label %._crit_edge181, !llvm.loop !68

._crit_edge181:                                   ; preds = %bb.aa, %._crit_edge, %find_next_bit.exit, %bb.r, %find_first_bit.exit
  %i.cs = add i32 %.0117, -1                      ; 3 uses
  %.not146 = icmp eq i32 %i.cs, 0
  br i1 %.not146, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge181
  %i.ct = load i64, ptr @required_kernelcore, align 8 ; 2 uses
  %i.cu = sext i32 %i.cs to i64
  %i.cv = icmp ugt i64 %i.ct, %i.cu
  br i1 %i.cv, label %bb.r, label %.thread

.thread:                                          ; preds = %._crit_edge181, %bb.ab, %bb.f, %._crit_edge186, %._crit_edge186.thread
  %i.cw = load i64, ptr getelementptr inbounds nuw (i8, ptr @node_states, i64 24), align 8 ; 2 uses
  %.not.i154 = icmp eq i64 %i.cw, 0
  br i1 %.not.i154, label %.loopexit, label %find_first_bit.exit155

find_first_bit.exit155:                           ; preds = %.thread
  %i.cx = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.cw) #18, !srcloc !11 ; 2 uses
  %i.cy = icmp ult i64 %i.cx, 64
  br i1 %i.cy, label %.lr.ph188, label %.loopexit

.lr.ph188:                                        ; preds = %find_first_bit.exit155, %find_next_bit.exit159
  %.1.in187 = phi i64 [ %i.dj, %find_next_bit.exit159 ], [ %i.cx, %find_first_bit.exit155 ] ; 4 uses
  %.1 = trunc nuw nsw i64 %.1.in187 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  %i.cz = getelementptr [8 x i8], ptr @zone_movable_pfn, i64 %.1.in187 ; 4 uses
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = add i64 %i.da, 1023
  %1 = and i64 %i.db, -1024
  store i64 %1, ptr %i.cz, align 8
  call void @get_pfn_range_for_nid(i32 noundef %.1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #23
  %i.dc = load i64, ptr %i.cz, align 8
  %i.dd = load i64, ptr %i.e, align 8
  %.not151 = icmp ult i64 %i.dc, %i.dd
  br i1 %.not151, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph188
  store i64 0, ptr %i.cz, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  %i.de = icmp eq i64 %.1.in187, 63
  br i1 %i.de, label %.loopexit, label %bb.ae, !prof !12

bb.ae:                                            ; preds = %bb.ad
  %i.df = load i64, ptr getelementptr inbounds nuw (i8, ptr @node_states, i64 24), align 8
  %i.dg = shl nsw i64 -2, %.1.in187
  %i.dh = and i64 %i.df, %i.dg                    ; 2 uses
  %.not.i157 = icmp eq i64 %i.dh, 0
  br i1 %.not.i157, label %.loopexit, label %find_next_bit.exit159

find_next_bit.exit159:                            ; preds = %bb.ae
  %i.di = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.dh) #18, !srcloc !11 ; 2 uses
  %i.dj = call i64 @llvm.umin.i64(i64 %i.di, i64 64)
  %i.dk = icmp ult i64 %i.di, 64
  br i1 %i.dk, label %.lr.ph188, label %.loopexit, !llvm.loop !69

.loopexit.sink.split:                             ; preds = %bb.e, %bb.d
  %.str.29.sink = phi ptr [ @.str.29, %bb.d ], [ @.str.30, %bb.e ]
  %i.dl = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.29.sink) #19 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ae, %bb.ad, %find_next_bit.exit159, %.loopexit.sink.split, %.thread, %find_first_bit.exit155, %bb.p
  store i64 %.sroa.0.0.copyload, ptr getelementptr inbounds nuw (i8, ptr @node_states, i64 24), align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sparse_init_subsection_map(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @alloc_offline_node_data(i32 noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc void @free_area_init_node(i32 noundef %0) unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = sext i32 %0 to i64
  %i.d = getelementptr [8 x i8], ptr @node_data, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.f = getelementptr i8, ptr %i.e, i64 13600
  %i.g = load i32, ptr %i.f, align 32
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.e, i64 13812
  %i.i = load i32, ptr %i.h, align 4
  %.not21 = icmp eq i32 %i.i, 0
  br i1 %.not21, label %bb.c, label %.critedge, !prof !70

.critedge:                                        ; preds = %bb.a, %bb.b
  tail call void asm sideeffect "765: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 765b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 765) #21, !srcloc !71
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.10, ptr nonnull @.str.11, i32 1717, i32 2305, i64 16) #21, !srcloc !72
  tail call void asm sideeffect "766: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 766b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 766) #21, !srcloc !73
  br label %bb.c

bb.c:                                             ; preds = %.critedge, %bb.b
  call void @get_pfn_range_for_nid(i32 noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #22
  %i.j = getelementptr i8, ptr %i.e, i64 13632
  store i32 %0, ptr %i.j, align 64
  %i.k = load i64, ptr %i.a, align 8              ; 4 uses
  %i.l = getelementptr i8, ptr %i.e, i64 13608
  store i64 %i.k, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.e, i64 14144
  store ptr null, ptr %i.m, align 64
  %i.n = load i64, ptr %i.b, align 8              ; 4 uses
  %.not19 = icmp eq i64 %i.k, %i.n
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = shl i64 %i.k, 12
  %.not20 = icmp eq i64 %i.n, 0
  %i.p = shl i64 %i.n, 12
  %i.q = add i64 %i.p, -1
  %i.r = select i1 %.not20, i64 0, i64 %i.q
  %i.s = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %0, i64 noundef %i.o, i64 noundef %i.r) #19 ; 0 uses
  tail call fastcc void @calculate_node_totalpages(ptr noundef %i.e, i64 noundef %i.k, i64 noundef %i.n) #22, !srcloc !74
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.t = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %0) #19 ; 0 uses
  %i.u = getelementptr i8, ptr %i.e, i64 5376     ; 2 uses
  %i.v = icmp ult ptr %i.e, %i.u
  br i1 %i.v, label %.lr.ph.i, label %reset_memoryless_node_totalpages.exit

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.09.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.e, %bb.e ] ; 3 uses
  %i.w = getelementptr i8, ptr %.09.i, i64 136
  store i64 0, ptr %i.w, align 8
  %i.x = getelementptr i8, ptr %.09.i, i64 152
  %i.y = getelementptr i8, ptr %.09.i, i64 1344   ; 2 uses
  %i.z = icmp ult ptr %i.y, %i.u
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  br i1 %i.z, label %.lr.ph.i, label %reset_memoryless_node_totalpages.exit, !llvm.loop !75

reset_memoryless_node_totalpages.exit:            ; preds = %.lr.ph.i, %bb.e
  %i.aa = getelementptr i8, ptr %i.e, i64 13616
  tail call void @llvm.memset.p0.i64(ptr noundef align 16 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %reset_memoryless_node_totalpages.exit, %bb.d
  tail call fastcc void @free_area_init_core(ptr noundef %i.e) #22, !srcloc !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sparse_vmemmap_init_nid_late(i32 noundef) local_unnamed_addr #7

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc void @calc_nr_kernel_pages() unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 0, ptr %i.a, align 8, !annotation !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 0, ptr %i.b, align 8, !annotation !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i64 0, ptr %i.c, align 8
  call void @__next_mem_range(ptr noundef nonnull %i.c, i32 noundef -1, i32 noundef 0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @memblock, i64 16), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @memblock, i64 56), ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null) #20
  %i.d = load i64, ptr %i.c, align 8
  %.not7 = icmp eq i64 %i.d, -1
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.e = load i64, ptr %i.a, align 8
  %i.f = add i64 %i.e, 4095
  %i.g = lshr i64 %i.f, 12                        ; 2 uses
  %i.h = load i64, ptr %i.b, align 8
  %i.i = lshr i64 %i.h, 12                        ; 2 uses
  %i.j = icmp samesign ult i64 %i.g, %i.i
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.k = sub nuw nsw i64 %i.i, %i.g               ; 2 uses
  %i.l = load i64, ptr @nr_all_pages, align 8
  %i.m = add i64 %i.l, %i.k
  store i64 %i.m, ptr @nr_all_pages, align 8
  %i.n = load i64, ptr @nr_kernel_pages, align 8
  %i.o = add i64 %i.n, %i.k
  store i64 %i.o, ptr @nr_kernel_pages, align 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  call void @__next_mem_range(ptr noundef nonnull %i.c, i32 noundef -1, i32 noundef 0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @memblock, i64 16), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @memblock, i64 56), ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null) #20
  %i.p = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.p, -1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !77

._crit_edge:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc void @memmap_init() unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 0, ptr %i.a, align 8, !annotation !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 0, ptr %i.b, align 8, !annotation !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i64 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  store i32 0, ptr %i.e, align 4, !annotation !21
  store i32 -1, ptr %i.d, align 4
  call void @__next_mem_pfn_range(ptr noundef nonnull %i.d, i32 noundef 64, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e) #20
  %i.f = load i32, ptr %i.d, align 4
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.0813 = phi i32 [ %.2, %bb.e ], [ 0, %bb.a ]
  %i.h = load i32, ptr %i.e, align 4
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr [8 x i8], ptr @node_data, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.111 = phi i32 [ %.0813, %.lr.ph ], [ %.2, %bb.d ]
  %i.l = getelementptr [1344 x i8], ptr %i.k, i64 %indvars.iv ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 160
  %.val = load i64, ptr %i.m, align 32
  %.not = icmp eq i64 %.val, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.a, align 8
  %i.o = load i64, ptr %i.b, align 8
  call fastcc void @memmap_init_zone_range(ptr noundef %i.l, i64 noundef %i.n, i64 noundef %i.o, ptr noundef nonnull %i.c) #22
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.2 = phi i32 [ %i.p, %bb.c ], [ %.111, %bb.b ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !78

bb.e:                                             ; preds = %bb.d
  call void @__next_mem_pfn_range(ptr noundef nonnull %i.d, i32 noundef 64, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e) #20
  %i.q = load i32, ptr %i.d, align 4
  %i.r = icmp sgt i32 %i.q, -1
  br i1 %i.r, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !79

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre = load i64, ptr %i.c, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.s = phi i64 [ 0, %bb.a ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %.08.lcssa = phi i32 [ 0, %bb.a ], [ %.2, %._crit_edge.loopexit ]
  %i.t = load i64, ptr %i.b, align 8
  %i.u = add i64 %i.t, 32767
  %0 = and i64 %i.u, -32768                       ; 3 uses
  store i64 %0, ptr %i.b, align 8
  %i.v = icmp ult i64 %i.s, %0
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.w = load i32, ptr %i.e, align 4
  call fastcc void @init_unavailable_range(i64 noundef %i.s, i64 noundef %0, i32 noundef %.08.lcssa, i32 noundef %i.w) #22, !srcloc !80
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc i64 @early_calculate_totalpages() unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 0, ptr %i.a, align 8, !annotation !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 0, ptr %i.b, align 8, !annotation !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i32 0, ptr %i.d, align 4, !annotation !21
  store i32 -1, ptr %i.c, align 4
  call void @__next_mem_pfn_range(ptr noundef nonnull %i.c, i32 noundef 64, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d) #20
  %i.e = load i32, ptr %i.c, align 4
  %i.f = icmp sgt i32 %i.e, -1
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %arch_set_bit.exit
  %.04 = phi i64 [ %i.j, %arch_set_bit.exit ], [ 0, %bb.a ]
  %i.g = load i64, ptr %i.b, align 8              ; 2 uses
  %i.h = load i64, ptr %i.a, align 8              ; 2 uses
  %i.i = add i64 %i.g, %.04
  %i.j = sub i64 %i.i, %i.h                       ; 2 uses
  %.not = icmp eq i64 %i.g, %i.h
  br i1 %.not, label %arch_set_bit.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = load i32, ptr %i.d, align 4
  %i.l = sext i32 %i.k to i64
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) getelementptr inbounds nuw (i8, ptr @node_states, i64 24), i64 range(i64 -2147483648, 2147483648) %i.l) #21, !srcloc !52
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %bb.b, %.lr.ph
  call void @__next_mem_pfn_range(ptr noundef nonnull %i.c, i32 noundef 64, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d) #20
  %i.m = load i32, ptr %i.c, align 4
  %i.n = icmp sgt i32 %i.m, -1
  br i1 %i.n, label %.lr.ph, label %._crit_edge, !llvm.loop !81

._crit_edge:                                      ; preds = %arch_set_bit.exit, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.j, %arch_set_bit.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i64 %.0.lcssa
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @memblock_has_mirror() local_unnamed_addr #7

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc void @calculate_node_totalpages(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 13632      ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %.030 = phi i64 [ 0, %bb.a ], [ %i.p, %bb.b ]
  %.02629 = phi i64 [ 0, %bb.a ], [ %i.o, %bb.b ]
  %i.d = getelementptr [1344 x i8], ptr %0, i64 %indvars.iv ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 0, ptr %i.a, align 8, !annotation !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 0, ptr %i.b, align 8, !annotation !21
  %i.e = load i32, ptr %i.c, align 64
  %i.f = call fastcc i64 @zone_spanned_pages_in_node(i32 noundef %i.e, i64 noundef %indvars.iv, i64 noundef %1, i64 noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #22, !srcloc !82 ; 4 uses
  %i.g = load i32, ptr %i.c, align 64
  %i.h = load i64, ptr %i.a, align 8              ; 2 uses
  %i.i = load i64, ptr %i.b, align 8
  %i.j = tail call fastcc i64 @zone_absent_pages_in_node(i32 noundef %i.g, i64 noundef %indvars.iv, i64 noundef %i.h, i64 noundef %i.i) #22, !srcloc !83
  %i.k = sub i64 %i.f, %i.j                       ; 2 uses
  %.not = icmp eq i64 %i.f, 0
  %spec.select = select i1 %.not, i64 0, i64 %i.h
  %i.l = getelementptr i8, ptr %i.d, i64 136
  store i64 %spec.select, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.d, i64 152
  store i64 %i.f, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %i.d, i64 160
  store i64 %i.k, ptr %i.n, align 32
  %i.o = add i64 %i.f, %.02629                    ; 2 uses
  %i.p = add i64 %i.k, %.030                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !84

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr i8, ptr %0, i64 13624
  store i64 %i.o, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %0, i64 13616
  store i64 %i.p, ptr %i.r, align 16
  ret void
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc void @free_area_init_core(ptr noundef %0) unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 13632
  %i.b = load i32, ptr %i.a, align 64             ; 2 uses
  tail call fastcc void @pgdat_init_internals(ptr noundef %0) #22, !srcloc !85
  %i.c = getelementptr i8, ptr %0, i64 14144
  store ptr @boot_nodestats, ptr %i.c, align 64
  %i.d = sext i32 %i.b to i64
  %i.e = getelementptr [8 x i8], ptr @node_data, i64 %i.d
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.f = getelementptr [1344 x i8], ptr %0, i64 %indvars.iv ; 10 uses
  %i.g = getelementptr i8, ptr %i.f, i64 152
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr i8, ptr %i.f, i64 160
  %i.j = load i64, ptr %i.i, align 32
  %i.k = getelementptr i8, ptr %i.f, i64 144
  store volatile i64 %i.j, ptr %i.k, align 16
  %i.l = getelementptr i8, ptr %i.f, i64 88
  store i32 %i.b, ptr %i.l, align 8
  %i.m = getelementptr [8 x i8], ptr @zone_names, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %i.f, i64 168
  store ptr %i.n, ptr %i.o, align 8
  %i.p = load ptr, ptr %i.e, align 8
  %i.q = getelementptr i8, ptr %i.f, i64 96
  store ptr %i.p, ptr %i.q, align 32
  %i.r = getelementptr i8, ptr %i.f, i64 992
  store i32 0, ptr %i.r, align 32
  tail call void @zone_pcp_init(ptr noundef %i.f) #20
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr i8, ptr %i.f, i64 136
  %i.t = load i64, ptr %i.s, align 8
  tail call void @init_currently_empty_zone(ptr noundef %i.f, i64 noundef %i.t, i64 noundef %i.h) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !86

bb.e:                                             ; preds = %bb.d
  ret void
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc i64 @zone_spanned_pages_in_node(i32 noundef %0, i64 noundef range(i64 0, 4) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5) unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr [8 x i8], ptr @arch_zone_lowest_possible_pfn, i64 %1
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr [8 x i8], ptr @arch_zone_highest_possible_pfn, i64 %1
  %i.d = load i64, ptr %i.c, align 8              ; 4 uses
  %.not = icmp ult i64 %2, %i.d
  %i.e = tail call i64 @llvm.umax.i64(i64 %2, i64 %i.b)
  %i.f = select i1 %.not, i64 %i.e, i64 %i.d
  store i64 %i.f, ptr %4, align 8
  %.not68 = icmp ult i64 %3, %i.d
  %i.g = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.b)
  %i.h = select i1 %.not68, i64 %i.g, i64 %i.d
  store i64 %i.h, ptr %5, align 8
  tail call fastcc void @adjust_zone_range_for_zone_movable(i32 noundef %0, i64 noundef %1, i64 noundef %3, ptr noundef %4, ptr noundef %5) #22, !srcloc !87
  %i.i = load i64, ptr %5, align 8                ; 2 uses
  %i.j = icmp ult i64 %i.i, %2
  br i1 %i.j, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %4, align 8
  %i.l = icmp ugt i64 %i.k, %3
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %3)
  store i64 %i.m, ptr %5, align 8
  %i.n = load i64, ptr %4, align 8
  %i.o = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %2) ; 2 uses
  store i64 %i.o, ptr %4, align 8
  %i.p = load i64, ptr %5, align 8
  %i.q = sub i64 %i.p, %i.o
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i64 [ %i.q, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
end_hunk_1
