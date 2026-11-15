Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/rethook?download=true
inline.NumInlined: 25
inline.NumDeleted: 12
begin_hunk_0_@rethook_recycle:bb.a
bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = add i32 %.0.i.i, 1                       ; 2 uses
  %i.t = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.l, i32 %i.s, ptr elementtype(i32) %i.l, i32 %.0.i.i) #10, !srcloc !21 ; 2 uses
  %i.u = extractvalue { i8, i32 } %i.t, 0         ; 2 uses
  %i.v = icmp ult i8 %i.u, 2
  tail call void @llvm.assume(i1 %i.v)
  %i.w = trunc nuw i8 %i.u to i1
  br i1 %i.w, label %__objpool_try_add_slot.exit.i, label %bb.f, !prof !22

bb.f:                                             ; preds = %bb.e
  %i.x = extractvalue { i8, i32 } %i.t, 1
  br label %bb.c, !llvm.loop !0

__objpool_try_add_slot.exit.i:                    ; preds = %bb.e
  %i.y = getelementptr i8, ptr %i.k, i64 16
  %i.z = getelementptr i8, ptr %i.k, i64 12
  %i.aa = load i32, ptr %i.z, align 1
  %i.ab = and i32 %i.aa, %.0.i.i
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr [8 x i8], ptr %i.y, i64 %i.ac
  store volatile ptr %0, ptr %i.ad, align 1
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !24
  %i.ae = getelementptr i8, ptr %i.k, i64 8
  store volatile i32 %i.s, ptr %i.ae, align 1
  %i.af = and i64 %i.e, 512
  %.not.i7.not.i = icmp eq i64 %i.af, 0
  br i1 %.not.i7.not.i, label %objpool_push.exit, label %bb.g

bb.g:                                             ; preds = %__objpool_try_add_slot.exit.i
  tail call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !25
  br label %objpool_push.exit

bb.h:                                             ; preds = %bb.a
  tail call void @call_rcu(ptr noundef %0, ptr noundef @free_rethook_node_rcu) #11
  br label %objpool_push.exit

objpool_push.exit:                                ; preds = %bb.g, %__objpool_try_add_slot.exit.i, %bb.h
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #1

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #2

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite, inaccessiblemem: readwrite)
define dso_local void @rethook_stop(ptr nofree noundef captures(address) %0) local_unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  store volatile ptr null, ptr %i.a, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @rethook_free(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  store volatile ptr null, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 72
  tail call void @call_rcu(ptr noundef %i.b, ptr noundef @rethook_free_rcu) #11
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rethook_free_rcu(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -56
  tail call void @objpool_fini(ptr noundef %i.a) #11
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef ptr @rethook_alloc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp slt i32 %3, 1
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp ult i32 %2, 48
  %or.cond4 = or i1 %i.c, %or.cond
  br i1 %or.cond4, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 8), align 8
  %i.e = tail call noalias noundef align 8 dereferenceable_or_null(88) ptr @__kmalloc_cache_noprof(ptr noundef %i.d, i32 noundef 3520, i64 noundef 88) #12 ; 7 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr %i.e, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !32
  %i.f = getelementptr i8, ptr %i.e, i64 8
  store volatile ptr %1, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %i.e, i64 16
  %i.h = tail call i32 @objpool_init(ptr noundef %i.g, i32 noundef %3, i32 noundef %2, i32 noundef 3264, ptr noundef nonnull %i.e, ptr noundef @rethook_init_node, ptr noundef @rethook_fini_pool) #11
  %.not28 = icmp eq i32 %i.h, 0
  br i1 %.not28, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @kfree(ptr noundef nonnull %i.e) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %.0 = phi ptr [ %i.e, %bb.c ], [ inttoptr (i64 -12 to ptr), %bb.d ], [ inttoptr (i64 -22 to ptr), %bb.a ], [ inttoptr (i64 -12 to ptr), %bb.b ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @objpool_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write)
define internal noundef i32 @rethook_init_node(ptr nofree noundef writeonly captures(none) initializes((24, 32)) %0, ptr noundef %1) #5 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  store ptr %1, ptr %i.a, align 8
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @rethook_fini_pool(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  tail call void @kfree(ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_rethook_node_rcu(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = tail call i32 @objpool_drop(ptr noundef %0, ptr noundef %i.c) #11 ; 0 uses
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @rethook_try_get(ptr nofree noundef captures(address) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load volatile ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %objpool_pop.exit, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !15
  tail call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !16
  %i.d = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #10, !srcloc !35 ; 3 uses
  %i.e = sext i32 %i.d to i64                     ; 6 uses
  %.not.i22.i = icmp ult i32 %i.d, 64
  br i1 %.not.i22.i, label %bb.c, label %find_next_bit.exit25.i, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr @__cpu_possible_mask, align 8
  %i.g = shl nsw i64 -1, %i.e
  %i.h = and i64 %i.f, %i.g                       ; 2 uses
  %.not23.i24.i = icmp eq i64 %i.h, 0
  br i1 %.not23.i24.i, label %find_next_bit.exit25.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.h) #13, !srcloc !36
  br label %find_next_bit.exit25.i

find_next_bit.exit25.i:                           ; preds = %bb.d, %bb.c, %bb.b
  %.1.i23.i = phi i64 [ 64, %bb.c ], [ 64, %bb.b ], [ %i.i, %bb.d ] ; 2 uses
  %i.j = icmp ult i64 %.1.i23.i, 64
  %i.k = icmp eq i32 %i.d, 0
  %or.cond.i.i = or i1 %i.k, %i.j
  br i1 %or.cond.i.i, label %find_next_bit_wrap.exit.i, label %find_first_bit.exit.i

find_first_bit.exit.i:                            ; preds = %find_next_bit.exit25.i
  %i.l = tail call i64 @_find_first_bit(ptr noundef @__cpu_possible_mask, i64 noundef range(i64 -2147483648, 2147483648) %i.e) #11 ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.e
  %i.n = select i1 %i.m, i64 %i.l, i64 64
  br label %find_next_bit_wrap.exit.i

find_next_bit_wrap.exit.i:                        ; preds = %find_first_bit.exit.i, %find_next_bit.exit25.i
  %.0.i.i = phi i64 [ %i.n, %find_first_bit.exit.i ], [ %.1.i23.i, %find_next_bit.exit25.i ] ; 2 uses
  %i.o = and i64 %.0.i.i, 4294967232
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %find_next_bit_wrap.exit.i
  %i.q = getelementptr i8, ptr %0, i64 48
  %i.r = getelementptr i8, ptr %0, i64 20
  br label %bb.e

bb.e:                                             ; preds = %__for_each_wrap.exit.i, %.lr.ph.i
  %.012.in37.i = phi i64 [ %.0.i.i, %.lr.ph.i ], [ %.015.i.i, %__for_each_wrap.exit.i ] ; 2 uses
  %i.s = load ptr, ptr %i.q, align 8
  %i.t = and i64 %.012.in37.i, 63
  %i.u = getelementptr [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8              ; 7 uses
  %i.w = load volatile i32, ptr %i.v, align 1     ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !37
  %i.x = getelementptr i8, ptr %i.v, i64 8        ; 3 uses
  %i.y = load volatile i32, ptr %i.x, align 1
  %.not47.i.i = icmp eq i32 %i.w, %i.y
  br i1 %.not47.i.i, label %__objpool_try_get_slot.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %1 = getelementptr i8, ptr %i.v, i64 16
  %2 = getelementptr i8, ptr %i.v, i64 12
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %.lr.ph.i.i
  %.03748.i.i = phi i32 [ %i.w, %.lr.ph.i.i ], [ %.239.i.i, %bb.j ] ; 4 uses
  %i.z = load volatile i32, ptr %i.x, align 1
  %i.aa = xor i32 %.03748.i.i, -1
  %i.ab = add i32 %i.z, %i.aa
  %i.ac = load i32, ptr %i.r, align 4
  %.not34.i.i = icmp ult i32 %i.ab, %i.ac
  br i1 %.not34.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load volatile i32, ptr %i.v, align 1
  br label %bb.j, !llvm.loop !33

bb.h:                                             ; preds = %bb.f
  %i.ae = load i32, ptr %2, align 1
  %i.af = and i32 %i.ae, %.03748.i.i
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr [8 x i8], ptr %1, i64 %i.ag
  %i.ai = load volatile ptr, ptr %i.ah, align 1   ; 2 uses
  %i.aj = add i32 %.03748.i.i, 1
  %i.ak = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.v, i32 %i.aj, ptr elementtype(i32) %i.v, i32 %.03748.i.i) #10, !srcloc !38 ; 2 uses
  %i.al = extractvalue { i8, i32 } %i.ak, 0       ; 2 uses
  %i.am = icmp ult i8 %i.al, 2
  tail call void @llvm.assume(i1 %i.am)
  %i.an = trunc nuw i8 %i.al to i1
  br i1 %i.an, label %__objpool_try_get_slot.exit.i, label %bb.i, !prof !22

bb.i:                                             ; preds = %bb.h
  %i.ao = extractvalue { i8, i32 } %i.ak, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.239.i.i = phi i32 [ %i.ao, %bb.i ], [ %i.ad, %bb.g ] ; 2 uses
  %i.ap = load volatile i32, ptr %i.x, align 1
  %.not.i29.i = icmp eq i32 %.239.i.i, %i.ap
  br i1 %.not.i29.i, label %__objpool_try_get_slot.exit.thread.i, label %bb.f

__objpool_try_get_slot.exit.i:                    ; preds = %bb.h
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %__objpool_try_get_slot.exit.thread.i, label %._crit_edge.i

__objpool_try_get_slot.exit.thread.i:             ; preds = %bb.j, %__objpool_try_get_slot.exit.i, %bb.e
  %i.aq = add nuw nsw i64 %.012.in37.i, 1
  %i.ar = and i64 %i.aq, 127                      ; 4 uses
  %i.as = icmp ugt i64 %i.ar, %i.e
  br i1 %i.as, label %bb.k, label %find_next_bit.exit.thread.i

bb.k:                                             ; preds = %__objpool_try_get_slot.exit.thread.i
  %.not.i17.i = icmp samesign ult i64 %i.ar, 64
  br i1 %.not.i17.i, label %bb.l, label %find_next_bit.exit.thread.i, !prof !22

bb.l:                                             ; preds = %bb.k
  %i.at = load i64, ptr @__cpu_possible_mask, align 8
  %i.au = shl nsw i64 -1, %i.ar
  %i.av = and i64 %i.at, %i.au                    ; 2 uses
  %.not23.i.i = icmp eq i64 %i.av, 0
  br i1 %.not23.i.i, label %find_next_bit.exit.thread.i, label %find_next_bit.exit.i

find_next_bit.exit.i:                             ; preds = %bb.l
  %i.aw = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.av) #13, !srcloc !36 ; 2 uses
  %i.ax = icmp ult i64 %i.aw, 64
  br i1 %i.ax, label %__for_each_wrap.exit.i, label %find_next_bit.exit.thread.i

find_next_bit.exit.thread.i:                      ; preds = %__objpool_try_get_slot.exit.thread.i, %bb.k, %bb.l, %find_next_bit.exit.i
  %.0.i16.i = phi i64 [ %i.ar, %__objpool_try_get_slot.exit.thread.i ], [ 0, %find_next_bit.exit.i ], [ 0, %bb.l ], [ 0, %bb.k ]
  %i.ay = tail call i64 @_find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef range(i64 -2147483648, 2147483648) %i.e, i64 noundef range(i64 -2147483648, 2147483648) %.0.i16.i) #11 ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.e
  %i.ba = select i1 %i.az, i64 %i.ay, i64 64
  br label %__for_each_wrap.exit.i

__for_each_wrap.exit.i:                           ; preds = %find_next_bit.exit.thread.i, %find_next_bit.exit.i
  %.015.i.i = phi i64 [ %i.ba, %find_next_bit.exit.thread.i ], [ %i.aw, %find_next_bit.exit.i ] ; 2 uses
  %i.bb = and i64 %.015.i.i, 4294967232
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.e, label %._crit_edge.i, !llvm.loop !34

._crit_edge.i:                                    ; preds = %__for_each_wrap.exit.i, %__objpool_try_get_slot.exit.i, %find_next_bit_wrap.exit.i
  %.1.i = phi ptr [ null, %find_next_bit_wrap.exit.i ], [ %i.ai, %__objpool_try_get_slot.exit.i ], [ null, %__for_each_wrap.exit.i ] ; 2 uses
  %i.bd = and i64 %i.c, 512
  %.not.i15.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i15.not.i, label %objpool_pop.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i
  tail call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !25
  br label %objpool_pop.exit

objpool_pop.exit:                                 ; preds = %bb.m, %._crit_edge.i, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %.1.i, %._crit_edge.i ], [ %.1.i, %bb.m ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @rethook_hook(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #0 align 16 prefalign(16) {
bb.a:
  tail call void @arch_rethook_prepare(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #11
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #13, !srcloc !27
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr i8, ptr %i.c, i64 3048     ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  store ptr %i.e, ptr %i.a, align 8
  store ptr %i.a, ptr %i.d, align 8
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @arch_rethook_prepare(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define internal i64 @__rethook_find_ret_addr(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #6 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  %i.b = getelementptr i8, ptr %0, i64 3048
  %.013.in = select i1 %.not, ptr %i.b, ptr %i.a
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.1.in = phi ptr [ %.013.in, %bb.a ], [ %.1, %bb.c ]
  %.1 = load ptr, ptr %.1.in, align 8             ; 5 uses
  %.not15 = icmp eq ptr %.1, null
  br i1 %.not15, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %.1, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %.not16 = icmp eq i64 %i.d, ptrtoint (ptr @arch_rethook_trampoline to i64)
  br i1 %.not16, label %bb.b, label %bb.d, !llvm.loop !1

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %.1, i64 16
  store ptr %.1, ptr %1, align 8
  %i.f = load i64, ptr %i.e, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.d
  %.0 = phi i64 [ %i.f, %bb.d ], [ 0, %bb.b ]
  ret i64 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @rethook_find_ret_addr(ptr nofree noundef captures(address) %0, i64 noundef %1, ptr nofree noundef captures(address_is_null) %2) #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %.critedge, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "516: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 516b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 516) #10, !srcloc !40
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 250, i32 2307, i64 16) #10, !srcloc !41
  tail call void asm sideeffect "517: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 517b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 517) #10, !srcloc !42
  br label %__rethook_find_ret_addr.exit.thread

.critedge:                                        ; preds = %bb.a
  %i.a = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #13, !srcloc !27
  %i.b = inttoptr i64 %i.a to ptr
  %.not18 = icmp eq ptr %0, %i.b
  br i1 %.not18, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = load volatile i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %__rethook_find_ret_addr.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %.critedge
  %i.f = getelementptr i8, ptr %0, i64 3048
  %.promoted = load ptr, ptr %2, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.1.i.lcssa2425 = phi ptr [ %.1.i, %bb.h ], [ %.promoted, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.1.i.lcssa2425, null
  %.013.in.i = select i1 %.not.i, ptr %i.f, ptr %.1.i.lcssa2425
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.1.in.i = phi ptr [ %.013.in.i, %bb.e ], [ %.1.i, %bb.g ]
  %.1.i = load ptr, ptr %.1.in.i, align 8         ; 7 uses
  %.not15.i = icmp eq ptr %.1.i, null
  br i1 %.not15.i, label %__rethook_find_ret_addr.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr i8, ptr %.1.i, i64 16
  %i.h = load i64, ptr %i.g, align 8
  %.not16.i = icmp eq i64 %i.h, ptrtoint (ptr @arch_rethook_trampoline to i64)
  br i1 %.not16.i, label %bb.f, label %__rethook_find_ret_addr.exit, !llvm.loop !1

__rethook_find_ret_addr.exit:                     ; preds = %bb.g
  %i.i = getelementptr i8, ptr %.1.i, i64 16
  store ptr %.1.i, ptr %2, align 8
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %.not19 = icmp eq i64 %i.j, 0
  br i1 %.not19, label %__rethook_find_ret_addr.exit.thread, label %bb.h

bb.h:                                             ; preds = %__rethook_find_ret_addr.exit
  %i.k = getelementptr i8, ptr %.1.i, i64 24
  %i.l = load i64, ptr %i.k, align 8
  %.not20 = icmp eq i64 %i.l, %1
  br i1 %.not20, label %__rethook_find_ret_addr.exit.thread, label %bb.e, !llvm.loop !39

__rethook_find_ret_addr.exit.thread:              ; preds = %bb.h, %__rethook_find_ret_addr.exit, %bb.f, %bb.b, %bb.c
  %.0 = phi i64 [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.f ], [ %i.j, %bb.h ], [ 0, %__rethook_find_ret_addr.exit ]
end_hunk_0
