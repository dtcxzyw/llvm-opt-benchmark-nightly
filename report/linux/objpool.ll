Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/objpool?download=true
inline.NumInlined: 32
inline.NumDeleted: 18
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@objpool_init:bb.a
  %i.dw = add nuw i32 %.05.i, 1                   ; 2 uses
  %i.dx = load i32, ptr @nr_cpu_ids, align 4
  %i.dy = icmp ult i32 %i.dw, %i.dx
  br i1 %i.dy, label %.lr.ph.i62, label %._crit_edge.loopexit.i, !llvm.loop !0

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i62
  %.pre.i63 = load ptr, ptr %i.x, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %i.dz = phi ptr [ %.pre.i63, %._crit_edge.loopexit.i ], [ %i.dq, %.preheader.i ]
  tail call void @kfree(ptr noundef %i.dz) #10
  br label %objpool_fini_percpu_slots.exit

.loopexit:                                        ; preds = %select.unfold.i, %bb.b
  %i.ea = getelementptr i8, ptr %0, i64 20
  %i.eb = getelementptr i8, ptr %0, i64 4
  %i.ec = load i32, ptr %i.eb, align 4
  %i.ed = add i32 %i.ec, 1
  store volatile i32 %i.ed, ptr %i.ea, align 4
  br label %objpool_fini_percpu_slots.exit

objpool_fini_percpu_slots.exit:                   ; preds = %._crit_edge.i, %objpool_init_percpu_slots.exit, %.loopexit, %.thread, %__roundup_pow_of_two.exit, %bb.a
  %.0 = phi i32 [ -22, %bb.a ], [ -12, %.thread ], [ -22, %__roundup_pow_of_two.exit ], [ 0, %.loopexit ], [ %.2.i, %objpool_init_percpu_slots.exit ], [ %.2.i, %._crit_edge.i ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @objpool_free(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.c = load i32, ptr @nr_cpu_ids, align 4
  %.not6.i = icmp eq i32 %i.c, 0
  br i1 %.not6.i, label %objpool_fini_percpu_slots.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.05.i = phi i32 [ %i.h, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = sext i32 %.05.i to i64
  %i.f = getelementptr [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @kvfree(ptr noundef %i.g) #10
  %i.h = add nuw i32 %.05.i, 1                    ; 2 uses
  %i.i = load i32, ptr @nr_cpu_ids, align 4
  %i.j = icmp ult i32 %i.h, %i.i
  br i1 %i.j, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !0

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.a, align 8
  br label %objpool_fini_percpu_slots.exit

objpool_fini_percpu_slots.exit:                   ; preds = %.preheader.i, %._crit_edge.loopexit.i
  %i.k = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.b, %.preheader.i ]
  tail call void @kfree(ptr noundef %i.k) #10
  %i.l = getelementptr i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not6 = icmp eq ptr %i.m, null
  br i1 %.not6, label %bb.c, label %bb.b

bb.b:                                             ; preds = %objpool_fini_percpu_slots.exit
  %i.n = getelementptr i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call i32 %i.m(ptr noundef %0, ptr noundef %i.o) #10 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b, %objpool_fini_percpu_slots.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @objpool_drop(ptr nofree noundef readnone captures(address_is_null) %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %objpool_free.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 20         ; 3 uses
  %i.d = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.c, i32 -1, ptr elementtype(i32) %i.c) #9, !srcloc !12 ; 2 uses
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp slt i32 %i.d, 1
  br i1 %i.f, label %bb.d, label %objpool_free.exit, !prof !13

bb.d:                                             ; preds = %bb.c
  tail call void @refcount_warn_saturate(ptr noundef %i.c, i32 noundef 3) #10
  br label %objpool_free.exit

bb.e:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !14
  %i.g = getelementptr i8, ptr %1, i64 32         ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %objpool_free.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.e
  %i.i = load i32, ptr @nr_cpu_ids, align 4
  %.not6.i.i = icmp eq i32 %i.i, 0
  br i1 %.not6.i.i, label %objpool_fini_percpu_slots.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %.05.i.i = phi i32 [ %i.n, %.lr.ph.i.i ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8
  %i.k = sext i32 %.05.i.i to i64
  %i.l = getelementptr [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8
  tail call void @kvfree(ptr noundef %i.m) #10
  %i.n = add nuw i32 %.05.i.i, 1                  ; 2 uses
  %i.o = load i32, ptr @nr_cpu_ids, align 4
  %i.p = icmp ult i32 %i.n, %i.o
  br i1 %i.p, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !0

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.g, align 8
  br label %objpool_fini_percpu_slots.exit.i

objpool_fini_percpu_slots.exit.i:                 ; preds = %._crit_edge.loopexit.i.i, %.preheader.i.i
  %i.q = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.h, %.preheader.i.i ]
  tail call void @kfree(ptr noundef %i.q) #10
  %i.r = getelementptr i8, ptr %1, i64 40
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not6.i = icmp eq ptr %i.s, null
  br i1 %.not6.i, label %objpool_free.exit, label %bb.f

bb.f:                                             ; preds = %objpool_fini_percpu_slots.exit.i
  %i.t = getelementptr i8, ptr %1, i64 48
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call i32 %i.s(ptr noundef nonnull %1, ptr noundef %i.u) #10, !inline_history !15 ; 0 uses
  br label %objpool_free.exit

objpool_free.exit:                                ; preds = %bb.d, %bb.c, %bb.f, %objpool_fini_percpu_slots.exit.i, %bb.e, %bb.a
  %.0 = phi i32 [ 0, %bb.f ], [ -22, %bb.a ], [ 0, %bb.e ], [ 0, %objpool_fini_percpu_slots.exit.i ], [ -11, %bb.c ], [ -11, %bb.d ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @objpool_fini(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %objpool_pop.exit, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ %i.bc, %objpool_pop.exit ] ; 4 uses
  %i.c = tail call i64 asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !24
  tail call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !25
  %i.d = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #9, !srcloc !26 ; 3 uses
  %i.e = sext i32 %i.d to i64                     ; 6 uses
  %.not.i21.i = icmp ult i32 %i.d, 64
  br i1 %.not.i21.i, label %bb.c, label %find_next_bit.exit24.i, !prof !27

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr @__cpu_possible_mask, align 8
  %i.g = shl nsw i64 -1, %i.e
  %i.h = and i64 %i.f, %i.g                       ; 2 uses
  %.not23.i23.i = icmp eq i64 %i.h, 0
  br i1 %.not23.i23.i, label %find_next_bit.exit24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.h) #7, !srcloc !28
  br label %find_next_bit.exit24.i

find_next_bit.exit24.i:                           ; preds = %bb.d, %bb.c, %bb.b
  %.1.i22.i = phi i64 [ 64, %bb.c ], [ 64, %bb.b ], [ %i.i, %bb.d ] ; 2 uses
  %i.j = icmp ult i64 %.1.i22.i, 64
  %i.k = icmp eq i32 %i.d, 0
  %or.cond.i.i = or i1 %i.k, %i.j
  br i1 %or.cond.i.i, label %find_next_bit_wrap.exit.i, label %find_first_bit.exit.i

find_first_bit.exit.i:                            ; preds = %find_next_bit.exit24.i
  %i.l = tail call i64 @_find_first_bit(ptr noundef @__cpu_possible_mask, i64 noundef range(i64 -2147483648, 2147483648) %i.e) #10 ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.e
  %i.n = select i1 %i.m, i64 %i.l, i64 64
  br label %find_next_bit_wrap.exit.i

find_next_bit_wrap.exit.i:                        ; preds = %find_first_bit.exit.i, %find_next_bit.exit24.i
  %.0.i.i = phi i64 [ %i.n, %find_first_bit.exit.i ], [ %.1.i22.i, %find_next_bit.exit24.i ] ; 2 uses
  %i.o = and i64 %.0.i.i, 4294967232
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %find_next_bit_wrap.exit.i, %__for_each_wrap.exit.i
  %.012.in37.i = phi i64 [ %.015.i.i, %__for_each_wrap.exit.i ], [ %.0.i.i, %find_next_bit_wrap.exit.i ] ; 2 uses
  %i.q = load ptr, ptr %i.a, align 8
  %i.r = and i64 %.012.in37.i, 63
  %i.s = getelementptr [8 x i8], ptr %i.q, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8              ; 7 uses
  %i.u = load volatile i32, ptr %i.t, align 1     ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !29
  %i.v = getelementptr i8, ptr %i.t, i64 8        ; 3 uses
  %i.w = load volatile i32, ptr %i.v, align 1
  %.not47.i.i = icmp eq i32 %i.u, %i.w
  br i1 %.not47.i.i, label %__objpool_try_get_slot.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i
  %1 = getelementptr i8, ptr %i.t, i64 16
  %2 = getelementptr i8, ptr %i.t, i64 12
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph.i.i
  %.03748.i.i = phi i32 [ %i.u, %.lr.ph.i.i ], [ %.239.i.i, %bb.i ] ; 4 uses
  %i.x = load volatile i32, ptr %i.v, align 1
  %i.y = xor i32 %.03748.i.i, -1
  %i.z = add i32 %i.x, %i.y
  %i.aa = load i32, ptr %i.b, align 4
  %.not34.i.i = icmp ult i32 %i.z, %i.aa
  br i1 %.not34.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load volatile i32, ptr %i.t, align 1
  br label %bb.i, !llvm.loop !21

bb.g:                                             ; preds = %bb.e
  %i.ac = load i32, ptr %2, align 1
  %i.ad = and i32 %i.ac, %.03748.i.i
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr [8 x i8], ptr %1, i64 %i.ae
  %i.ag = load volatile ptr, ptr %i.af, align 1
  %i.ah = add i32 %.03748.i.i, 1
  %i.ai = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.t, i32 %i.ah, ptr elementtype(i32) %i.t, i32 %.03748.i.i) #9, !srcloc !30 ; 2 uses
  %i.aj = extractvalue { i8, i32 } %i.ai, 0       ; 2 uses
  %i.ak = icmp ult i8 %i.aj, 2
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = trunc nuw i8 %i.aj to i1
  br i1 %i.al, label %__objpool_try_get_slot.exit.i, label %bb.h, !prof !27

bb.h:                                             ; preds = %bb.g
  %i.am = extractvalue { i8, i32 } %i.ai, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.239.i.i = phi i32 [ %i.am, %bb.h ], [ %i.ab, %bb.f ] ; 2 uses
  %i.an = load volatile i32, ptr %i.v, align 1
  %.not.i29.i = icmp eq i32 %.239.i.i, %i.an
  br i1 %.not.i29.i, label %__objpool_try_get_slot.exit.thread.i, label %bb.e

__objpool_try_get_slot.exit.i:                    ; preds = %bb.g
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %__objpool_try_get_slot.exit.thread.i, label %._crit_edge.i

__objpool_try_get_slot.exit.thread.i:             ; preds = %bb.i, %__objpool_try_get_slot.exit.i, %.lr.ph.i
  %i.ao = add nuw nsw i64 %.012.in37.i, 1
  %i.ap = and i64 %i.ao, 127                      ; 4 uses
  %i.aq = icmp ugt i64 %i.ap, %i.e
  br i1 %i.aq, label %bb.j, label %find_next_bit.exit.thread.i

bb.j:                                             ; preds = %__objpool_try_get_slot.exit.thread.i
  %.not.i16.i = icmp samesign ult i64 %i.ap, 64
  br i1 %.not.i16.i, label %bb.k, label %find_next_bit.exit.thread.i, !prof !27

bb.k:                                             ; preds = %bb.j
  %i.ar = load i64, ptr @__cpu_possible_mask, align 8
  %i.as = shl nsw i64 -1, %i.ap
  %i.at = and i64 %i.ar, %i.as                    ; 2 uses
  %.not23.i.i = icmp eq i64 %i.at, 0
  br i1 %.not23.i.i, label %find_next_bit.exit.thread.i, label %find_next_bit.exit.i

find_next_bit.exit.i:                             ; preds = %bb.k
  %i.au = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.at) #7, !srcloc !28 ; 2 uses
  %i.av = icmp ult i64 %i.au, 64
  br i1 %i.av, label %__for_each_wrap.exit.i, label %find_next_bit.exit.thread.i

find_next_bit.exit.thread.i:                      ; preds = %__objpool_try_get_slot.exit.thread.i, %bb.j, %bb.k, %find_next_bit.exit.i
  %.0.i15.i = phi i64 [ %i.ap, %__objpool_try_get_slot.exit.thread.i ], [ 0, %find_next_bit.exit.i ], [ 0, %bb.k ], [ 0, %bb.j ]
  %i.aw = tail call i64 @_find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef range(i64 -2147483648, 2147483648) %i.e, i64 noundef range(i64 -2147483648, 2147483648) %.0.i15.i) #10 ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.e
  %i.ay = select i1 %i.ax, i64 %i.aw, i64 64
  br label %__for_each_wrap.exit.i

__for_each_wrap.exit.i:                           ; preds = %find_next_bit.exit.thread.i, %find_next_bit.exit.i
  %.015.i.i = phi i64 [ %i.ay, %find_next_bit.exit.thread.i ], [ %i.au, %find_next_bit.exit.i ] ; 2 uses
  %i.az = and i64 %.015.i.i, 4294967232
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !22

._crit_edge.i:                                    ; preds = %__for_each_wrap.exit.i, %__objpool_try_get_slot.exit.i, %find_next_bit_wrap.exit.i
  %.1.i = phi i1 [ true, %find_next_bit_wrap.exit.i ], [ false, %__objpool_try_get_slot.exit.i ], [ true, %__for_each_wrap.exit.i ]
  %i.bb = and i64 %i.c, 512
  %.not.i28.not.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i28.not.i, label %objpool_pop.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i
  tail call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !31
  br label %objpool_pop.exit

objpool_pop.exit:                                 ; preds = %._crit_edge.i, %bb.l
  %i.bc = add i32 %.0, 1
  br i1 %.1.i, label %bb.m, label %bb.b, !llvm.loop !23

bb.m:                                             ; preds = %objpool_pop.exit
  %i.bd = getelementptr i8, ptr %0, i64 20        ; 3 uses
  %i.be = sub i32 0, %.0
  %i.bf = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bd, i32 %i.be, ptr elementtype(i32) %i.bd) #9, !srcloc !12 ; 4 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  %i.bh = icmp eq i32 %i.bf, %.0
  %or.cond.i.i4 = and i1 %i.bg, %i.bh
  br i1 %or.cond.i.i4, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = icmp slt i32 %i.bf, 1
  %i.bj = sub i32 %i.bf, %.0
  %i.bk = icmp slt i32 %i.bj, 0
  %i.bl = or i1 %i.bi, %i.bk
  br i1 %i.bl, label %bb.o, label %objpool_free.exit, !prof !13

bb.o:                                             ; preds = %bb.n
  tail call void @refcount_warn_saturate(ptr noundef %i.bd, i32 noundef 3) #10
  br label %objpool_free.exit

bb.p:                                             ; preds = %bb.m
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !14
  %i.bm = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not.i5 = icmp eq ptr %i.bm, null
  br i1 %.not.i5, label %objpool_free.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.p
  %i.bn = load i32, ptr @nr_cpu_ids, align 4
  %.not6.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not6.i.i, label %objpool_fini_percpu_slots.exit.i, label %.lr.ph.i.i6

.lr.ph.i.i6:                                      ; preds = %.preheader.i.i, %.lr.ph.i.i6
  %.05.i.i = phi i32 [ %i.bs, %.lr.ph.i.i6 ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.bo = load ptr, ptr %i.a, align 8
  %i.bp = sext i32 %.05.i.i to i64
  %i.bq = getelementptr [8 x i8], ptr %i.bo, i64 %i.bp
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void @kvfree(ptr noundef %i.br) #10
  %i.bs = add nuw i32 %.05.i.i, 1                 ; 2 uses
  %i.bt = load i32, ptr @nr_cpu_ids, align 4
  %i.bu = icmp ult i32 %i.bs, %i.bt
  br i1 %i.bu, label %.lr.ph.i.i6, label %._crit_edge.loopexit.i.i, !llvm.loop !0

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i6
  %.pre.i.i = load ptr, ptr %i.a, align 8
  br label %objpool_fini_percpu_slots.exit.i

objpool_fini_percpu_slots.exit.i:                 ; preds = %._crit_edge.loopexit.i.i, %.preheader.i.i
  %i.bv = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.bm, %.preheader.i.i ]
  tail call void @kfree(ptr noundef %i.bv) #10
  %i.bw = getelementptr i8, ptr %0, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8            ; 2 uses
  %.not6.i = icmp eq ptr %i.bx, null
  br i1 %.not6.i, label %objpool_free.exit, label %bb.q

bb.q:                                             ; preds = %objpool_fini_percpu_slots.exit.i
  %i.by = getelementptr i8, ptr %0, i64 48
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = tail call i32 %i.bx(ptr noundef %0, ptr noundef %i.bz) #10, !inline_history !15 ; 0 uses
  br label %objpool_free.exit

objpool_free.exit:                                ; preds = %bb.o, %bb.n, %bb.q, %objpool_fini_percpu_slots.exit.i, %bb.p
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc_noprof(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc_node_noprof(i64 noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress.p0(i32 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #5

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc_node_noprof(i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_find_first_bit(ptr noundef, i64 noundef) local_unnamed_addr #6

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nounwind memory(none) }
attributes #8 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }
attributes #9 = { nounwind }
attributes #10 = { noredzone nounwind "no-builtin-wcslen" }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}
end_hunk_0
