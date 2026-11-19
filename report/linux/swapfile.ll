Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/swapfile?download=true
inline.NumInlined: 712
inline.NumDeleted: 274
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@free_cluster:bb.a
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  store ptr %i.aj, ptr %i.al, align 8
  store volatile ptr %i.ak, ptr %i.aj, align 8
  %i.am = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  store ptr %i.ae, ptr %i.am, align 8
  store ptr %i.z, ptr %i.ae, align 8
  store ptr %i.an, ptr %i.ai, align 8
  br label %__free_cluster.exit

__free_cluster.exit:                              ; preds = %bb.g, %bb.h
  %.sink.i.i5 = phi ptr [ %i.an, %bb.h ], [ %i.ag, %bb.g ]
  store volatile ptr %i.ae, ptr %.sink.i.i5, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i.aa) #19
  store i8 1, ptr %i.ab, align 2
  %i.ao = getelementptr i8, ptr %1, i64 7
  store i8 0, ptr %i.ao, align 1
  br label %bb.i

bb.i:                                             ; preds = %__free_cluster.exit, %swap_cluster_schedule_discard.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none)
define dso_local range(i32 -22, 16) i32 @__swap_count(i64 %0) local_unnamed_addr #8 align 16 prefalign(16) {
bb.a:
  %i.a = lshr i64 %0, 58
  %i.b = getelementptr [8 x i8], ptr @swap_info, i64 %i.a
  %i.c = load volatile ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 80
  %.val.i = load ptr, ptr %i.d, align 8
  %i.e = lshr i64 %0, 8
  %i.f = and i64 %i.e, 1125899906842623
  %i.g = getelementptr [40 x i8], ptr %.val.i, i64 %i.f
  %i.h = and i64 %0, 255
  %i.i = getelementptr i8, ptr %i.g, i64 8
  %i.j = load volatile ptr, ptr %i.i, align 8
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %i.h
  %i.l = load volatile i64, ptr %i.k, align 8     ; 4 uses
  %i.m = trunc i64 %i.l to i1
  %i.n = and i64 %i.l, 3
  %i.o = icmp eq i64 %i.n, 2
  %or.cond.i.i = or i1 %i.o, %i.m
  %.not.i.i.i = icmp eq i64 %i.l, 0
  %spec.select.i.i = or i1 %.not.i.i.i, %or.cond.i.i
  %i.p = lshr i64 %i.l, 60
  %i.q = trunc nuw nsw i64 %i.p to i32
  %.0.i = select i1 %spec.select.i.i, i32 %i.q, i32 -22
  ret i32 %.0.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local zeroext i1 @swap_entry_swapped(ptr nofree noundef readonly captures(none) %0, i64 %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 80
  %.val = load ptr, ptr %i.a, align 8
  %i.b = lshr i64 %1, 8
  %i.c = and i64 %i.b, 1125899906842623
  %i.d = getelementptr [40 x i8], ptr %.val, i64 %i.c ; 3 uses
  tail call void @_raw_spin_lock(ptr noundef %i.d) #19
  tail call void @__rcu_read_lock() #19
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %i.f = load volatile ptr, ptr %i.e, align 8     ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %swap_table_get.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = and i64 %1, 255
  %i.h = getelementptr [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load volatile i64, ptr %i.h, align 8
  br label %swap_table_get.exit

swap_table_get.exit:                              ; preds = %bb.a, %bb.b
  %i.j = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  tail call void @__rcu_read_unlock() #19
  tail call void @_raw_spin_unlock(ptr noundef %i.d) #19
  %i.k = trunc i64 %i.j to i1
  %i.l = and i64 %i.j, 3
  %i.m = icmp eq i64 %i.l, 2
  %or.cond.i.i = or i1 %i.m, %i.k
  %i.n = icmp ugt i64 %i.j, 1152921504606846975
  %i.o = and i1 %i.n, %or.cond.i.i
  ret i1 %i.o
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, -2147483648) i32 @swp_swapcount(i64 %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @get_swap_device(i64 %0) #18 ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 80
  %.val = load ptr, ptr %i.b, align 8
  %i.c = lshr i64 %0, 8
  %i.d = and i64 %i.c, 1125899906842623
  %i.e = getelementptr [40 x i8], ptr %.val, i64 %i.d ; 4 uses
  tail call void @_raw_spin_lock(ptr noundef %i.e) #19
  %i.f = and i64 %0, 255                          ; 2 uses
  %i.g = getelementptr i8, ptr %i.e, i64 8
  %i.h = load volatile ptr, ptr %i.g, align 8
  %i.i = getelementptr [8 x i8], ptr %i.h, i64 %i.f
  %i.j = load volatile i64, ptr %i.i, align 8     ; 4 uses
  %i.k = trunc i64 %i.j to i1
  %i.l = and i64 %i.j, 3
  %i.m = icmp eq i64 %i.l, 2
  %or.cond.i.i = or i1 %i.m, %i.k
  %.not.i.i.i = icmp eq i64 %i.j, 0
  %spec.select.i.i = or i1 %.not.i.i.i, %or.cond.i.i
  %i.n = lshr i64 %i.j, 60
  %i.o = trunc nuw nsw i64 %i.n to i32
  %.0.i = select i1 %spec.select.i.i, i32 %i.o, i32 -22 ; 2 uses
  %i.p = icmp eq i32 %.0.i, 15
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr i8, ptr %i.e, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr [4 x i8], ptr %i.r, i64 %i.f
  %i.t = load i32, ptr %i.s, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.022 = phi i32 [ %i.t, %bb.c ], [ %.0.i, %bb.b ]
  tail call void @_raw_spin_unlock(ptr noundef %i.e) #19
  tail call void @__rcu_read_lock() #19
  %i.u = load volatile i64, ptr %i.a, align 8     ; 2 uses
  %i.v = and i64 %i.u, 3
  %.not.i.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %__ref_is_percpu.exit.i.i.i, !prof !25

bb.e:                                             ; preds = %bb.d
  %i.w = inttoptr i64 %i.u to ptr                 ; 2 uses
  tail call void asm sideeffect "decq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.w, ptr elementtype(i64) %i.w) #17, !srcloc !26
  br label %put_swap_device.exit

__ref_is_percpu.exit.i.i.i:                       ; preds = %bb.d
  %i.x = getelementptr i8, ptr %i.a, i64 8        ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock subq $2, $0", "=*m,={@cce},er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.y, i64 1, ptr elementtype(i64) %i.y) #17, !srcloc !27 ; 2 uses
  %i.aa = icmp ult i8 %i.z, 2
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = trunc nuw i8 %i.z to i1
  br i1 %i.ab, label %bb.f, label %put_swap_device.exit, !prof !28

bb.f:                                             ; preds = %__ref_is_percpu.exit.i.i.i
  %i.ac = load ptr, ptr %i.x, align 8
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull %i.a) #19, !inline_history !1
  br label %put_swap_device.exit

put_swap_device.exit:                             ; preds = %bb.e, %__ref_is_percpu.exit.i.i.i, %bb.f
  tail call void @__rcu_read_unlock() #19
  %i.af = tail call i32 @llvm.smax.i32(i32 %.022, i32 0)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %put_swap_device.exit
  %.0 = phi i32 [ %i.af, %put_swap_device.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef zeroext i1 @folio_free_swap(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load volatile i64, ptr %0, align 8
  %i.b = and i64 %i.a, 131072
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %folio_swapcache_freeable.exit.thread, label %folio_test_swapcache.exit.i

folio_test_swapcache.exit.i:                      ; preds = %bb.a
  %i.c = load volatile i64, ptr %0, align 8
  %i.d = and i64 %i.c, 1024
  %.not3.i = icmp eq i64 %i.d, 0
  br i1 %.not3.i, label %folio_swapcache_freeable.exit.thread, label %bb.b

bb.b:                                             ; preds = %folio_test_swapcache.exit.i
  %i.e = load volatile i64, ptr %0, align 8
  %i.f = and i64 %i.e, 2
  %.not4.i = icmp eq i64 %i.f, 0
  br i1 %.not4.i, label %folio_swapcache_freeable.exit, label %folio_swapcache_freeable.exit.thread

folio_swapcache_freeable.exit:                    ; preds = %bb.b
  %i.g = load i32, ptr @gfp_allowed_mask, align 4
  %i.h = and i32 %i.g, 192
  %.not5.i = icmp eq i32 %i.h, 192
  br i1 %.not5.i, label %bb.c, label %folio_swapcache_freeable.exit.thread

bb.c:                                             ; preds = %folio_swapcache_freeable.exit
  %i.i = getelementptr i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i = load i64, ptr %i.i, align 8 ; 3 uses
  %i.j = lshr i64 %.sroa.0.0.copyload.i, 58
  %i.k = getelementptr [8 x i8], ptr @swap_info, i64 %i.j
  %i.l = load volatile ptr, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 80
  %.val.i.i = load ptr, ptr %i.m, align 8
  %i.n = lshr i64 %.sroa.0.0.copyload.i, 8
  %i.o = and i64 %i.n, 1125899906842623
  %i.p = getelementptr [40 x i8], ptr %.val.i.i, i64 %i.o
  %1 = trunc i64 %.sroa.0.0.copyload.i to i32
  %2 = and i32 %1, 255                            ; 2 uses
  %i.q = load volatile i64, ptr %0, align 8
  %i.r = and i64 %i.q, 64
  %.not.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i, label %folio_nr_pages.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %0, i64 64
  %.val.i11.i = load i64, ptr %i.s, align 16
  %i.t = and i64 %.val.i11.i, 255
  %i.u = shl nuw i64 1, %i.t
  %3 = trunc i64 %i.u to i32
  br label %folio_nr_pages.exit.i

folio_nr_pages.exit.i:                            ; preds = %bb.d, %bb.c
  %.0.i.i = phi i32 [ %3, %bb.d ], [ 1, %bb.c ]
  %4 = add i32 %.0.i.i, %2
  tail call void @__rcu_read_lock() #19
  %i.v = getelementptr i8, ptr %i.p, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %folio_nr_pages.exit.i
  %.08.i = phi i32 [ %2, %folio_nr_pages.exit.i ], [ %6, %bb.e ] ; 2 uses
  %i.w = load volatile ptr, ptr %i.v, align 8
  %5 = zext i32 %.08.i to i64
  %i.x = getelementptr [8 x i8], ptr %i.w, i64 %5
  %i.y = load volatile i64, ptr %i.x, align 8
  %.not.i5 = icmp ugt i64 %i.y, 1152921504606846975 ; 2 uses
  %6 = add nuw i32 %.08.i, 1                      ; 2 uses
  %i.z = icmp uge i32 %6, %4
  %or.cond.not.i = select i1 %.not.i5, i1 true, i1 %i.z
  br i1 %or.cond.not.i, label %folio_maybe_swapped.exit, label %bb.e, !llvm.loop !6

folio_maybe_swapped.exit:                         ; preds = %bb.e
  tail call void @__rcu_read_unlock() #19
  br i1 %.not.i5, label %folio_swapcache_freeable.exit.thread, label %bb.f

bb.f:                                             ; preds = %folio_maybe_swapped.exit
  tail call void @swap_cache_del_folio(ptr noundef %0) #19
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %0, i32 16, ptr elementtype(i8) %0) #17, !srcloc !41
  br label %folio_swapcache_freeable.exit.thread

folio_swapcache_freeable.exit.thread:             ; preds = %bb.a, %bb.b, %folio_test_swapcache.exit.i, %folio_maybe_swapped.exit, %folio_swapcache_freeable.exit, %bb.f
  %.0 = phi i1 [ false, %folio_swapcache_freeable.exit ], [ true, %bb.f ], [ false, %folio_maybe_swapped.exit ], [ false, %folio_test_swapcache.exit.i ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @swap_put_entries_direct(i64 %0, i32 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = and i64 %0, 288230376151711743           ; 2 uses
  %i.b = sext i32 %1 to i64
  %i.c = add nsw i64 %i.a, %i.b                   ; 3 uses
  %i.d = tail call ptr @get_swap_device(i64 %0) #18 ; 6 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %.critedge, !prof !28

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "879: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 879b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 879) #17, !srcloc !90
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, ptr @.str.2, i32 2124, i32 2307, i64 16) #17, !srcloc !91
  tail call void asm sideeffect "880: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 880b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 880) #17, !srcloc !92
  br label %bb.f

.critedge:                                        ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.d, i64 76
  %i.f = load i32, ptr %i.e, align 4
  %i.g = zext i32 %i.f to i64
  %i.h = icmp ugt i64 %i.c, %i.g
  br i1 %i.h, label %bb.c, label %.critedge31, !prof !28

bb.c:                                             ; preds = %.critedge
  tail call void asm sideeffect "881: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 881b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 881) #17, !srcloc !93
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, ptr @.str.2, i32 2126, i32 2307, i64 16) #17, !srcloc !94
  tail call void asm sideeffect "882: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 882b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 882) #17, !srcloc !95
  br label %.loopexit

.critedge31:                                      ; preds = %.critedge, %.critedge31
  %.0 = phi i64 [ %i.l, %.critedge31 ], [ %i.a, %.critedge ] ; 3 uses
  %i.i = or i64 %.0, 255
  %i.j = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.c
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.c) ; 2 uses
  %i.m = sub nsw i64 %i.l, %.0
  %i.n = trunc i64 %i.m to i32
  tail call fastcc void @swap_put_entries_cluster(ptr noundef nonnull %i.d, i64 noundef %.0, i32 noundef %i.n, i1 noundef zeroext true) #18, !srcloc !96
  br i1 %i.k, label %.critedge31, label %.loopexit, !llvm.loop !89

.loopexit:                                        ; preds = %.critedge31, %bb.c
  tail call void @__rcu_read_lock() #19
  %i.o = load volatile i64, ptr %i.d, align 8     ; 2 uses
  %i.p = and i64 %i.o, 3
  %.not.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %__ref_is_percpu.exit.i.i.i, !prof !25

bb.d:                                             ; preds = %.loopexit
  %i.q = inttoptr i64 %i.o to ptr                 ; 2 uses
  tail call void asm sideeffect "decq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.q, ptr elementtype(i64) %i.q) #17, !srcloc !26
  br label %put_swap_device.exit

__ref_is_percpu.exit.i.i.i:                       ; preds = %.loopexit
  %i.r = getelementptr i8, ptr %i.d, i64 8        ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock subq $2, $0", "=*m,={@cce},er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.s, i64 1, ptr elementtype(i64) %i.s) #17, !srcloc !27 ; 2 uses
  %i.u = icmp ult i8 %i.t, 2
  tail call void @llvm.assume(i1 %i.u)
  %i.v = trunc nuw i8 %i.t to i1
  br i1 %i.v, label %bb.e, label %put_swap_device.exit, !prof !28

bb.e:                                             ; preds = %__ref_is_percpu.exit.i.i.i
  %i.w = load ptr, ptr %i.r, align 8
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull %i.d) #19, !inline_history !1
  br label %put_swap_device.exit

put_swap_device.exit:                             ; preds = %bb.d, %__ref_is_percpu.exit.i.i.i, %bb.e
  tail call void @__rcu_read_unlock() #19
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %put_swap_device.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 0, -288230371856744448) i64 @swap_alloc_hibernation_slot(i32 noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %or.cond.i = icmp ugt i32 %0, 27
  br i1 %or.cond.i, label %swap_type_to_info.exit.thread, label %swap_type_to_info.exit

swap_type_to_info.exit:                           ; preds = %bb.a
  %i.a = zext nneg i32 %0 to i64
  %i.b = getelementptr [8 x i8], ptr @swap_info, i64 %i.a
  %i.c = load volatile ptr, ptr %i.b, align 8     ; 6 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %swap_type_to_info.exit.thread, label %bb.b

bb.b:                                             ; preds = %swap_type_to_info.exit
  tail call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @__preempt_count, ptr elementtype(i32) @__preempt_count) #17, !srcloc !34
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !97
  %i.d = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off) #22, !srcloc !98 ; 0 uses
  %i.e = tail call i64 asm sideeffect "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) @percpu_swap_cluster) #17, !srcloc !99
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = tail call i64 asm sideeffect "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) getelementptr inbounds nuw (i8, ptr @percpu_swap_cluster, i64 8)) #17, !srcloc !100 ; 3 uses
  %i.h = icmp eq ptr %i.c, %i.f
  %i.i = icmp ne i64 %i.g, 0
  %or.cond = select i1 %i.h, i1 %i.i, i1 false
  br i1 %or.cond, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.c, i64 80
  %.val = load ptr, ptr %i.j, align 8
  %i.k = lshr i64 %i.g, 8
  %i.l = getelementptr [40 x i8], ptr %.val, i64 %i.k ; 5 uses
  tail call void @_raw_spin_lock(ptr noundef %i.l) #19
  %i.m = getelementptr i8, ptr %i.l, i64 6
  %i.n = load i8, ptr %i.m, align 2
  %i.o = icmp ugt i8 %i.n, 3
  br i1 %i.o, label %bb.e, label %bb.d, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr i8, ptr %i.l, i64 8
  %.val.i = load ptr, ptr %i.p, align 8
  %.not8.i = icmp eq ptr %.val.i, null
  br i1 %.not8.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d
  tail call void @_raw_spin_unlock(ptr noundef %i.l) #19
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.q = tail call fastcc i32 @alloc_swap_scan_cluster(ptr noundef nonnull %i.c, ptr noundef %i.l, ptr noundef null, i64 noundef %i.g) #18, !srcloc !101 ; 2 uses
  %i.r = zext i32 %i.q to i64
  %.not44 = icmp eq i32 %i.q, 0
  br i1 %.not44, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.b, %bb.e, %bb.f
  %i.s = tail call fastcc i64 @cluster_alloc_swap_entry(ptr noundef nonnull %i.c, ptr noundef null) #18, !srcloc !102
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread
  %.1 = phi i64 [ %i.r, %bb.f ], [ %i.s, %.thread ] ; 2 uses
  %i.t = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off) #22, !srcloc !103 ; 0 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !104
  %i.u = tail call i8 asm sideeffect "decl %gs:$0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @__preempt_count, ptr elementtype(i32) @__preempt_count) #17, !srcloc !35 ; 2 uses
  %i.v = icmp ult i8 %i.u, 2
  tail call void @llvm.assume(i1 %i.v)
  %i.w = trunc nuw i8 %i.u to i1
  br i1 %i.w, label %bb.h, label %bb.i, !prof !28

bb.h:                                             ; preds = %bb.g
  %i.x = tail call i64 @llvm.read_register.i64(metadata !11)
  %i.y = tail call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.x) #17, !srcloc !105
  tail call void @llvm.write_register.i64(metadata !11, i64 %i.y)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not45 = icmp eq i64 %.1, 0
  br i1 %.not45, label %swap_type_to_info.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr i8, ptr %i.c, i64 72
  %i.aa = load i8, ptr %i.z, align 8
  %i.ab = zext i8 %i.aa to i64
  %i.ac = shl i64 %i.ab, 58
  %i.ad = or disjoint i64 %i.ac, %.1
  br label %swap_type_to_info.exit.thread

swap_type_to_info.exit.thread:                    ; preds = %bb.a, %bb.i, %bb.j, %swap_type_to_info.exit
  %.sroa.041.0 = phi i64 [ %i.ad, %bb.j ], [ 0, %bb.i ], [ 0, %swap_type_to_info.exit ], [ 0, %bb.a ]
  ret i64 %.sroa.041.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @alloc_swap_scan_cluster(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = and i64 %3, -256                         ; 3 uses
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %folio_order.exit, label %bb.b, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.b = load volatile i64, ptr %2, align 8
  %i.c = and i64 %i.b, 64
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %folio_order.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %2, i64 64
  %.val.i = load i64, ptr %i.d, align 16
  %i.e = trunc i64 %.val.i to i32
  %i.f = and i32 %i.e, 255
end_hunk_0
