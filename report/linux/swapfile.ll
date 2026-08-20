inline.NumInlined: 712
inline.NumDeleted: 274
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@folio_alloc_swap:bb.a
  %i.dj = and i64 %i.di, 131072
  %.not47 = icmp eq i64 %i.dj, 0
  br i1 %.not47, label %folio_test_swapcache.exit.thread, label %folio_test_swapcache.exit

folio_test_swapcache.exit:                        ; preds = %bb.w
  %i.dk = load volatile i64, ptr %0, align 8
  %.fr48 = freeze i64 %i.dk
  %i.dl = and i64 %.fr48, 1024
  %.not49 = icmp eq i64 %i.dl, 0
  %spec.select = select i1 %.not49, i32 -12, i32 0, !prof !41
  br label %folio_test_swapcache.exit.thread

folio_test_swapcache.exit.thread:                 ; preds = %folio_test_swapcache.exit, %bb.w, %folio_order.exit
  %.0 = phi i32 [ -11, %folio_order.exit ], [ -12, %bb.w ], [ %spec.select, %folio_test_swapcache.exit ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #2

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noundef zeroext i1 @swap_sync_discard() unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void @_raw_spin_lock(ptr noundef nonnull @swap_lock) #19
  br label %bb.b

.loopexit26:                                      ; preds = %bb.k
  br label %bb.b, !llvm.loop !43

bb.b:                                             ; preds = %.loopexit26, %bb.a
  %i.a = load ptr, ptr @swap_active_head, align 8 ; 2 uses
  %.pn.pre = load ptr, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.k, %bb.b
  %.pn = phi ptr [ %.pn.pre, %bb.b ], [ %i.ad, %bb.k ] ; 3 uses
  %.pn20 = phi ptr [ %i.a, %bb.b ], [ %.pn, %bb.k ] ; 5 uses
  %.017 = getelementptr i8, ptr %.pn20, i64 -56   ; 4 uses
  %.not29.not.not.not.not = icmp ne ptr %.pn20, @swap_active_head ; 2 uses
  tail call void @_raw_spin_unlock(ptr noundef nonnull @swap_lock) #19
  br i1 %.not29.not.not.not.not, label %bb.d, label %.loopexit25

bb.d:                                             ; preds = %bb.c
  tail call void @__rcu_read_lock() #19
  %i.b = load volatile i64, ptr %.017, align 8    ; 3 uses
  %i.c = and i64 %i.b, 3
  %.not.i.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %__ref_is_percpu.exit.i.i.i, !prof !15

bb.e:                                             ; preds = %bb.d
  %i.d = inttoptr i64 %i.b to ptr                 ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.d, ptr elementtype(i64) %i.d) #17, !srcloc !20
  br label %.loopexit

__ref_is_percpu.exit.i.i.i:                       ; preds = %bb.d
  %i.e = and i64 %i.b, 2
  %.not.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i, label %bb.f, label %get_swap_device_info.exit

bb.f:                                             ; preds = %__ref_is_percpu.exit.i.i.i
  %i.f = getelementptr i8, ptr %.pn20, i64 -48
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = load volatile i64, ptr %i.g, align 8     ; 2 uses
  %.not16.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not16.i.i.i, label %get_swap_device_info.exit, label %.lr.ph.i.i.i, !prof !21

.lr.ph.i.i.i:                                     ; preds = %bb.f, %arch_atomic64_try_cmpxchg.exit.i.i.i
  %.0913.i.i.i = phi i64 [ %i.n, %arch_atomic64_try_cmpxchg.exit.i.i.i ], [ %i.h, %bb.f ] ; 2 uses
  %i.i = add i64 %.0913.i.i.i, 1
  %i.j = tail call { i8, i64 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgq $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.g, i64 range(i64 2, 1) %i.i, ptr elementtype(i64) %i.g, i64 %.0913.i.i.i) #17, !srcloc !22 ; 2 uses
  %i.k = extractvalue { i8, i64 } %i.j, 0         ; 2 uses
  %i.l = icmp ult i8 %i.k, 2
  tail call void @llvm.assume(i1 %i.l)
  %i.m = trunc nuw i8 %i.k to i1
  br i1 %i.m, label %.loopexit, label %arch_atomic64_try_cmpxchg.exit.i.i.i, !prof !15

arch_atomic64_try_cmpxchg.exit.i.i.i:             ; preds = %.lr.ph.i.i.i
  %i.n = extractvalue { i8, i64 } %i.j, 1         ; 2 uses
  %.not17.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not17.i.i.i, label %get_swap_device_info.exit, label %.lr.ph.i.i.i, !prof !23

get_swap_device_info.exit:                        ; preds = %arch_atomic64_try_cmpxchg.exit.i.i.i, %__ref_is_percpu.exit.i.i.i, %bb.f
  tail call void @__rcu_read_unlock() #19
  br label %bb.k

.loopexit:                                        ; preds = %.lr.ph.i.i.i, %bb.e
  tail call void @__rcu_read_unlock() #19
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !24
  %i.o = getelementptr i8, ptr %.pn20, i64 -40
  %i.p = load i64, ptr %i.o, align 8
  %i.q = and i64 %i.p, 1024
  %.not19 = icmp eq i64 %i.q, 0
  br i1 %.not19, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.r = tail call fastcc zeroext i1 @swap_do_scheduled_discard(ptr noundef %.017) #18, !srcloc !44
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit
  %.2 = phi i1 [ %i.r, %bb.g ], [ false, %.loopexit ]
  tail call void @__rcu_read_lock() #19
  %i.s = load volatile i64, ptr %.017, align 8    ; 2 uses
  %i.t = and i64 %i.s, 3
  %.not.i.i.i.i22 = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i.i22, label %bb.i, label %__ref_is_percpu.exit.i.i.i23, !prof !15

bb.i:                                             ; preds = %bb.h
  %i.u = inttoptr i64 %i.s to ptr                 ; 2 uses
  tail call void asm sideeffect "decq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.u, ptr elementtype(i64) %i.u) #17, !srcloc !16
  br label %put_swap_device.exit

__ref_is_percpu.exit.i.i.i23:                     ; preds = %bb.h
  %i.v = getelementptr i8, ptr %.pn20, i64 -48    ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock subq $2, $0", "=*m,={@cce},er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.w, i64 1, ptr elementtype(i64) %i.w) #17, !srcloc !17 ; 2 uses
  %i.y = icmp ult i8 %i.x, 2
  tail call void @llvm.assume(i1 %i.y)
  %i.z = trunc nuw i8 %i.x to i1
  br i1 %i.z, label %bb.j, label %put_swap_device.exit, !prof !18

bb.j:                                             ; preds = %__ref_is_percpu.exit.i.i.i23
  %i.aa = load ptr, ptr %i.v, align 8
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef %.017) #19, !inline_history !19
  br label %put_swap_device.exit

put_swap_device.exit:                             ; preds = %bb.i, %__ref_is_percpu.exit.i.i.i23, %bb.j
  tail call void @__rcu_read_unlock() #19
  br i1 %.2, label %.loopexit25, label %bb.k

bb.k:                                             ; preds = %get_swap_device_info.exit, %put_swap_device.exit
  tail call void @_raw_spin_lock(ptr noundef nonnull @swap_lock) #19
  %i.ad = load volatile ptr, ptr %.pn, align 8    ; 2 uses
  %.not = icmp eq ptr %i.ad, %.pn
  br i1 %.not, label %.loopexit26, label %bb.c, !llvm.loop !43

.loopexit25:                                      ; preds = %put_swap_device.exit, %bb.c
  ret i1 %.not29.not.not.not.not
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @swap_cache_del_folio(ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @folio_dup_swap(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8
  %i.b = load volatile i64, ptr %0, align 8
  %i.c = and i64 %i.b, 64
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %folio_nr_pages.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 64
  %.val.i = load i64, ptr %i.d, align 16
  %i.e = and i64 %.val.i, 255
  %i.f = shl nuw i64 1, %i.e
  %i.g = trunc i64 %i.f to i32
  br label %folio_nr_pages.exit

folio_nr_pages.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.g, %bb.b ], [ 1, %bb.a ]
  %.not = icmp eq ptr %1, null                    ; 2 uses
  %i.h = ptrtoint ptr %1 to i64
  %i.i = ptrtoint ptr %0 to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 6
  %i.l = select i1 %.not, i64 0, i64 %i.k
  %.sroa.0.0 = add i64 %.sroa.0.0.copyload, %i.l  ; 3 uses
  %or.cond.i.i = icmp ugt i64 %.sroa.0.0, 8070450532247928831
  br i1 %or.cond.i.i, label %swap_entry_to_info.exit, label %bb.c

bb.c:                                             ; preds = %folio_nr_pages.exit
  %i.m = lshr i64 %.sroa.0.0, 58
  %i.n = getelementptr [8 x i8], ptr @swap_info, i64 %i.m
  %i.o = load volatile ptr, ptr %i.n, align 8
  br label %swap_entry_to_info.exit

swap_entry_to_info.exit:                          ; preds = %folio_nr_pages.exit, %bb.c
  %.0.i.i = phi ptr [ %i.o, %bb.c ], [ null, %folio_nr_pages.exit ]
  %i.p = and i64 %.sroa.0.0, 288230376151711743
  %i.q = select i1 %.not, i32 %.0.i, i32 1
  %i.r = getelementptr i8, ptr %.0.i.i, i64 80
  %.val = load ptr, ptr %i.r, align 8
  %i.s = tail call fastcc i32 @swap_dup_entries_cluster(ptr %.val, i64 noundef %i.p, i32 noundef %i.q) #18
  ret i32 %i.s
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -22, 1) i32 @swap_dup_entries_cluster(ptr %.80.val, i64 noundef range(i64 0, 288230376151711744) %0, i32 noundef %1) unnamed_addr #0 align 16 {
bb.a:
  %i.a = trunc i64 %0 to i32
  %i.b = and i32 %i.a, 255                        ; 3 uses
  %i.c = add i32 %i.b, %1
  %i.d = lshr i64 %0, 8
  %i.e = getelementptr [40 x i8], ptr %.80.val, i64 %i.d ; 8 uses
  tail call void @_raw_spin_lock(ptr noundef %i.e) #19
  %i.f = getelementptr i8, ptr %i.e, i64 8        ; 4 uses
  %i.g = getelementptr i8, ptr %i.e, i64 16       ; 4 uses
  br label %.outer

.outer:                                           ; preds = %bb.a, %bb.j
  %.1.ph = phi i32 [ %i.b, %bb.a ], [ %3, %bb.j ] ; 4 uses
  %2 = zext i32 %.1.ph to i64                     ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %.outer, %__swap_cluster_dup_entry.exit
  %i.h = load volatile ptr, ptr %i.f, align 8     ; 3 uses
  %i.i = getelementptr [8 x i8], ptr %i.h, i64 %2
  %i.j = load volatile i64, ptr %i.i, align 8     ; 7 uses
  %i.k = icmp eq i64 %i.j, -8
  br i1 %i.k, label %bb.c, label %.critedge.i, !prof !18

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "852: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 852b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 852) #17, !srcloc !45
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 1648, i32 2307, i64 16) #17, !srcloc !46
  tail call void asm sideeffect "853: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 853b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 853) #17, !srcloc !47
  br label %__swap_cluster_dup_entry.exit.thread3

.critedge.i:                                      ; preds = %bb.b
  %i.l = lshr i64 %i.j, 60                        ; 2 uses
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.d, label %.critedge81.i

bb.d:                                             ; preds = %.critedge.i
  %i.m = getelementptr [8 x i8], ptr %i.h, i64 %2
  %i.n = and i64 %i.j, 3
  %.not83.i = icmp eq i64 %i.n, 2
  br i1 %.not83.i, label %.critedge81.thread.i, label %bb.e, !prof !15

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "854: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 854b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 854) #17, !srcloc !48
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 1652, i32 2307, i64 16) #17, !srcloc !49
  tail call void asm sideeffect "855: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 855b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 855) #17, !srcloc !50
  br label %__swap_cluster_dup_entry.exit.thread3

.critedge81.i:                                    ; preds = %.critedge.i
  %i.o = icmp ult i64 %i.j, -2305843009213693952
  br i1 %i.o, label %.critedge81.thread.i.loopexit, label %bb.f, !prof !51

.critedge81.thread.i.loopexit:                    ; preds = %.critedge81.i
  %i.p = getelementptr [8 x i8], ptr %i.h, i64 %2
  br label %.critedge81.thread.i

.critedge81.thread.i:                             ; preds = %.critedge81.thread.i.loopexit, %bb.d
  %i.q = phi ptr [ %i.p, %.critedge81.thread.i.loopexit ], [ %i.m, %bb.d ]
  %i.r = and i64 %i.j, 1152921504606846975
  %narrow.i = and i64 %i.j, -1152921504606846976
  %i.s = add i64 %narrow.i, 1152921504606846976
  %i.t = or disjoint i64 %i.s, %i.r
  store volatile i64 %i.t, ptr %i.q, align 8
  br label %bb.j

bb.f:                                             ; preds = %.critedge81.i
  %i.u = icmp eq i64 %i.l, 14
  %i.v = load ptr, ptr %i.g, align 8              ; 3 uses
  br i1 %i.u, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %.not79.i = icmp eq ptr %i.v, null
  br i1 %.not79.i, label %__swap_cluster_dup_entry.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr [4 x i8], ptr %i.v, i64 %2
  store i32 15, ptr %i.w, align 4
  %i.x = or i64 %i.j, -1152921504606846976
  %i.y = load ptr, ptr %i.f, align 8
  %i.z = getelementptr [8 x i8], ptr %i.y, i64 %2
  store volatile i64 %i.x, ptr %i.z, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.aa = getelementptr [4 x i8], ptr %i.v, i64 %2 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 4
  br label %bb.j

__swap_cluster_dup_entry.exit:                    ; preds = %bb.g
  tail call void @_raw_spin_unlock(ptr noundef %i.e) #19
  %i.ad = tail call fastcc i32 @swap_extend_table_alloc(ptr noundef %i.e, i32 noundef %.1.ph, i32 noundef 2080) #18 ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.e) #19
  %.not31 = icmp eq i32 %i.ad, 0
  br i1 %.not31, label %bb.b, label %__swap_cluster_dup_entry.exit.thread3

bb.j:                                             ; preds = %bb.h, %bb.i, %.critedge81.thread.i
  %3 = add i32 %.1.ph, 1                          ; 2 uses
  %4 = icmp ult i32 %3, %i.c
  br i1 %4, label %.outer, label %.loopexit, !llvm.loop !52

__swap_cluster_dup_entry.exit.thread3:            ; preds = %__swap_cluster_dup_entry.exit, %bb.c, %bb.e
  %.026 = phi i32 [ -2, %bb.e ], [ -22, %bb.c ], [ %i.ad, %__swap_cluster_dup_entry.exit ]
  %i.ae = icmp ugt i32 %.1.ph, %i.b
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %__swap_cluster_dup_entry.exit.thread3
  %i.af = and i64 %0, 255
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %__swap_cluster_put_entry.exit
  %indvars.iv = phi i64 [ %2, %.lr.ph ], [ %i.ag, %__swap_cluster_put_entry.exit ]
  %i.ag = add nsw i64 %indvars.iv, -1             ; 5 uses
  %i.ah = load volatile ptr, ptr %i.f, align 8
  %i.ai = getelementptr [8 x i8], ptr %i.ah, i64 %i.ag ; 2 uses
  %i.aj = load volatile i64, ptr %i.ai, align 8   ; 3 uses
  %i.ak = lshr i64 %i.aj, 60                      ; 2 uses
  %i.al = icmp eq i64 %i.ak, 15
  br i1 %i.al, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.am = load ptr, ptr %i.g, align 8
  %i.an = getelementptr [4 x i8], ptr %i.am, i64 %i.ag ; 3 uses
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = add i32 %i.ao, -1                       ; 3 uses
  %i.aq = icmp eq i32 %i.ap, 14
  br i1 %i.aq, label %.thread.i, label %bb.m

.thread.i:                                        ; preds = %bb.l
  store i32 0, ptr %i.an, align 4
  %i.ar = and i64 %i.aj, -1152921504606846977
  %i.as = load ptr, ptr %i.f, align 8
  %i.at = getelementptr [8 x i8], ptr %i.as, i64 %i.ag
  store volatile i64 %i.ar, ptr %i.at, align 8
  br label %bb.p

bb.m:                                             ; preds = %bb.l
  store i32 %i.ap, ptr %i.an, align 4
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.au = trunc nuw nsw i64 %i.ak to i32
  %i.av = add nsw i32 %i.au, -1                   ; 2 uses
  %i.aw = and i64 %i.aj, 1152921504606846975
  %i.ax = zext i32 %i.av to i64
  %i.ay = shl i64 %i.ax, 60
  %i.az = or disjoint i64 %i.ay, %i.aw
  store volatile i64 %i.az, ptr %i.ai, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0.i32 = phi i32 [ %i.av, %bb.n ], [ %i.ap, %bb.m ]
  %i.ba = icmp eq i32 %.0.i32, 13
  br i1 %i.ba, label %bb.p, label %__swap_cluster_put_entry.exit, !prof !53

bb.p:                                             ; preds = %bb.o, %.thread.i
  %i.bb = load ptr, ptr %i.g, align 8             ; 6 uses
  %.not.i33 = icmp eq ptr %i.bb, null
  br i1 %.not.i33, label %__swap_cluster_put_entry.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.p, %.preheader.i
  %.010.i = phi i1 [ %spec.select.i.3, %.preheader.i ], [ true, %bb.p ]
  %.079.i = phi i64 [ %i.bq, %.preheader.i ], [ 0, %bb.p ] ; 5 uses
  %i.bc = getelementptr [4 x i8], ptr %i.bb, i64 %.079.i
  %i.bd = load i32, ptr %i.bc, align 4
  %.not8.i = icmp eq i32 %i.bd, 0
  %i.be = getelementptr [4 x i8], ptr %i.bb, i64 %.079.i
  %i.bf = getelementptr i8, ptr %i.be, i64 4
  %i.bg = load i32, ptr %i.bf, align 4
  %.not8.i.1 = icmp eq i32 %i.bg, 0
  %i.bh = getelementptr [4 x i8], ptr %i.bb, i64 %.079.i
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  %i.bj = load i32, ptr %i.bi, align 4
  %.not8.i.2 = icmp eq i32 %i.bj, 0
  %i.bk = getelementptr [4 x i8], ptr %i.bb, i64 %.079.i
  %i.bl = getelementptr i8, ptr %i.bk, i64 12
  %i.bm = load i32, ptr %i.bl, align 4
  %.not8.i.3 = icmp eq i32 %i.bm, 0
  %i.bn = select i1 %.not8.i.3, i1 %.not8.i.2, i1 false
  %i.bo = select i1 %i.bn, i1 %.not8.i.1, i1 false
  %i.bp = select i1 %i.bo, i1 %.not8.i, i1 false
  %spec.select.i.3 = select i1 %i.bp, i1 %.010.i, i1 false ; 2 uses
  %i.bq = add nuw nsw i64 %.079.i, 4              ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.bq, 256
  br i1 %exitcond.not.i.3, label %bb.q, label %.preheader.i, !llvm.loop !54

bb.q:                                             ; preds = %.preheader.i
  br i1 %spec.select.i.3, label %bb.r, label %__swap_cluster_put_entry.exit

bb.r:                                             ; preds = %bb.q
  tail call void @kfree(ptr noundef nonnull %i.bb) #19
  store ptr null, ptr %i.g, align 8
  br label %__swap_cluster_put_entry.exit

__swap_cluster_put_entry.exit:                    ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %.wide = icmp ugt i64 %i.ag, %i.af
  br i1 %.wide, label %bb.k, label %._crit_edge, !llvm.loop !55

._crit_edge:                                      ; preds = %__swap_cluster_put_entry.exit, %__swap_cluster_dup_entry.exit.thread3
  tail call fastcc void @swap_extend_table_try_free(ptr noundef %i.e) #18, !srcloc !56
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %._crit_edge
  %.027 = phi i32 [ %.026, %._crit_edge ], [ 0, %bb.j ]
  tail call void @_raw_spin_unlock(ptr noundef %i.e) #19
  ret i32 %.027
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @folio_put_swap(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8 ; 2 uses
  %i.b = load volatile i64, ptr %0, align 8
  %i.c = and i64 %i.b, 64
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %folio_nr_pages.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 64
  %.val.i = load i64, ptr %i.d, align 16
  %i.e = and i64 %.val.i, 255
  %i.f = shl nuw i64 1, %i.e
  %i.g = trunc i64 %i.f to i32
  br label %folio_nr_pages.exit

folio_nr_pages.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.g, %bb.b ], [ 1, %bb.a ]
  %i.h = lshr i64 %.sroa.0.0.copyload, 58
  %i.i = getelementptr [8 x i8], ptr @swap_info, i64 %i.h
  %i.j = load volatile ptr, ptr %i.i, align 8
  %.not = icmp eq ptr %1, null                    ; 2 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = ptrtoint ptr %0 to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 6
  %i.o = select i1 %.not, i64 0, i64 %i.n
  %.sroa.0.0 = add i64 %.sroa.0.0.copyload, %i.o
  %i.p = and i64 %.sroa.0.0, 288230376151711743
  %i.q = select i1 %.not, i32 %.0.i, i32 1
  tail call fastcc void @swap_put_entries_cluster(ptr noundef %i.j, i64 noundef %i.p, i32 noundef %i.q, i1 noundef zeroext false) #18, !srcloc !57
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @swap_put_entries_cluster(ptr noundef %0, i64 noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 80
  %.val = load ptr, ptr %i.a, align 8
  %i.b = lshr i64 %1, 8
  %i.c = getelementptr [40 x i8], ptr %.val, i64 %i.b ; 6 uses
  tail call void @_raw_spin_lock(ptr noundef %i.c) #19
  %i.d = trunc i64 %1 to i32
  %i.e = and i32 %i.d, 255
  %i.f = add i32 %i.e, %2
  %i.g = getelementptr i8, ptr %i.c, i64 8        ; 3 uses
  %i.h = getelementptr i8, ptr %i.c, i64 16       ; 3 uses
  %i.i = and i64 %1, 255
  %i.j = zext i32 %i.f to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.m, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.m ], [ %i.i, %bb.a ] ; 7 uses
  %.046 = phi i1 [ %.2, %bb.m ], [ false, %bb.a ] ; 2 uses
  %.044 = phi i32 [ %.145, %bb.m ], [ -1, %bb.a ] ; 5 uses
  %i.k = load volatile ptr, ptr %i.g, align 8
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = load volatile i64, ptr %i.l, align 8     ; 4 uses
  %i.n = trunc i64 %i.m to i1
  %i.o = and i64 %i.m, 3
  %i.p = icmp eq i64 %i.o, 2                      ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.m, 0
  %i.q = or i1 %.not.i.i.i, %i.n
  %spec.select.i.i = or i1 %i.q, %i.p
  %.mask = and i64 %i.m, -1152921504606846976
  %i.r = icmp eq i64 %.mask, 1152921504606846976
  %i.s = and i1 %i.r, %spec.select.i.i            ; 2 uses
  %.not55 = xor i1 %i.s, true
  %brmerge = or i1 %i.p, %.not55
  %.046.mux = select i1 %i.s, i1 true, i1 %.046   ; 2 uses
  br i1 %brmerge, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = icmp eq i32 %.044, -1
  %i.u = trunc nuw i64 %indvars.iv to i32
  %spec.select = select i1 %i.t, i32 %i.u, i32 %.044
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.v = load volatile ptr, ptr %i.g, align 8
  %i.w = getelementptr [8 x i8], ptr %i.v, i64 %indvars.iv ; 2 uses
  %i.x = load volatile i64, ptr %i.w, align 8     ; 3 uses
  %i.y = lshr i64 %i.x, 60                        ; 2 uses
  %i.z = icmp eq i64 %i.y, 15
  br i1 %i.z, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.h, align 8
  %i.ab = getelementptr [4 x i8], ptr %i.aa, i64 %indvars.iv ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = add i32 %i.ac, -1                       ; 3 uses
  %i.ae = icmp eq i32 %i.ad, 14
  br i1 %i.ae, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.e
  store i32 0, ptr %i.ab, align 4
  %i.af = and i64 %i.x, -1152921504606846977
  %i.ag = load ptr, ptr %i.g, align 8
  %i.ah = getelementptr [8 x i8], ptr %i.ag, i64 %indvars.iv
  store volatile i64 %i.af, ptr %i.ah, align 8
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  store i32 %i.ad, ptr %i.ab, align 4
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.ai = trunc nuw nsw i64 %i.y to i32
  %i.aj = add nsw i32 %i.ai, -1                   ; 2 uses
  %i.ak = and i64 %i.x, 1152921504606846975
  %i.al = zext i32 %i.aj to i64
  %i.am = shl i64 %i.al, 60
  %i.an = or disjoint i64 %i.am, %i.ak
  store volatile i64 %i.an, ptr %i.w, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i54 = phi i32 [ %i.aj, %bb.g ], [ %i.ad, %bb.f ]
  %i.ao = icmp eq i32 %.0.i54, 13
  br i1 %i.ao, label %bb.i, label %__swap_cluster_put_entry.exit, !prof !53

bb.i:                                             ; preds = %bb.h, %.thread.i
  %i.ap = load ptr, ptr %i.h, align 8             ; 6 uses
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %__swap_cluster_put_entry.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.i, %.preheader.i
  %.010.i = phi i1 [ %spec.select.i.3, %.preheader.i ], [ true, %bb.i ]
  %.079.i = phi i64 [ %i.be, %.preheader.i ], [ 0, %bb.i ] ; 5 uses
  %i.aq = getelementptr [4 x i8], ptr %i.ap, i64 %.079.i
  %i.ar = load i32, ptr %i.aq, align 4
  %.not8.i = icmp eq i32 %i.ar, 0
  %i.as = getelementptr [4 x i8], ptr %i.ap, i64 %.079.i
  %i.at = getelementptr i8, ptr %i.as, i64 4
  %i.au = load i32, ptr %i.at, align 4
  %.not8.i.1 = icmp eq i32 %i.au, 0
  %i.av = getelementptr [4 x i8], ptr %i.ap, i64 %.079.i
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %i.ax = load i32, ptr %i.aw, align 4
  %.not8.i.2 = icmp eq i32 %i.ax, 0
  %i.ay = getelementptr [4 x i8], ptr %i.ap, i64 %.079.i
  %i.az = getelementptr i8, ptr %i.ay, i64 12
  %i.ba = load i32, ptr %i.az, align 4
  %.not8.i.3 = icmp eq i32 %i.ba, 0
  %i.bb = select i1 %.not8.i.3, i1 %.not8.i.2, i1 false
  %i.bc = select i1 %i.bb, i1 %.not8.i.1, i1 false
  %i.bd = select i1 %i.bc, i1 %.not8.i, i1 false
  %spec.select.i.3 = select i1 %i.bd, i1 %.010.i, i1 false ; 2 uses
  %i.be = add nuw nsw i64 %.079.i, 4              ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.be, 256
  br i1 %exitcond.not.i.3, label %bb.j, label %.preheader.i, !llvm.loop !54

bb.j:                                             ; preds = %.preheader.i
  br i1 %spec.select.i.3, label %bb.k, label %__swap_cluster_put_entry.exit

bb.k:                                             ; preds = %bb.j
  tail call void @kfree(ptr noundef nonnull %i.ap) #19
  store ptr null, ptr %i.h, align 8
  br label %__swap_cluster_put_entry.exit

__swap_cluster_put_entry.exit:                    ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.not = icmp eq i32 %.044, -1
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %__swap_cluster_put_entry.exit
  %i.bf = trunc nuw i64 %indvars.iv to i32
  %i.bg = sub i32 %i.bf, %.044
  tail call void @__swap_cluster_free_entries(ptr noundef %0, ptr noundef %i.c, i32 noundef %.044, i32 noundef %i.bg) #18
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %__swap_cluster_put_entry.exit, %bb.l
  %.2 = phi i1 [ %.046.mux, %bb.l ], [ %.046.mux, %__swap_cluster_put_entry.exit ], [ %.046, %bb.c ] ; 2 uses
  %.145 = phi i32 [ -1, %bb.l ], [ -1, %__swap_cluster_put_entry.exit ], [ %spec.select, %bb.c ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bh = icmp samesign ult i64 %indvars.iv.next, %i.j
  br i1 %i.bh, label %bb.b, label %bb.n, !llvm.loop !58

bb.n:                                             ; preds = %bb.m
  %i.bi = sext i32 %2 to i64
  %i.bj = add i64 %1, %i.bi
  %.not52 = icmp eq i32 %.145, -1
  br i1 %.not52, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = trunc nuw i64 %indvars.iv.next to i32
  %i.bl = sub i32 %i.bk, %.145
  tail call void @__swap_cluster_free_entries(ptr noundef %0, ptr noundef %i.c, i32 noundef %.145, i32 noundef %i.bl) #18
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  tail call void @_raw_spin_unlock(ptr noundef %i.c) #19
  %or.cond = and i1 %3, %.2
  br i1 %or.cond, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.p, %bb.r
  %.0 = phi i64 [ %.1, %bb.r ], [ %1, %bb.p ]     ; 3 uses
  %i.bm = tail call fastcc i32 @__try_to_reclaim_swap(ptr noundef %0, i64 noundef %.0, i64 noundef 6) #18, !srcloc !59 ; 2 uses
  %.not53 = icmp eq i32 %i.bm, 0
  br i1 %.not53, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader
  %i.bn = tail call i32 @llvm.abs.i32(i32 %i.bm, i1 false)
  %i.bo = add i32 %i.bn, -1
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = or i64 %.0, %i.bp
  br label %bb.r

bb.r:                                             ; preds = %.preheader, %bb.q
  %.1.in = phi i64 [ %i.bq, %bb.q ], [ %.0, %.preheader ]
  %.1 = add i64 %.1.in, 1                         ; 2 uses
  %i.br = icmp ult i64 %.1, %i.bj
  br i1 %i.br, label %.preheader, label %.loopexit, !llvm.loop !60

.loopexit:                                        ; preds = %bb.r, %bb.p
  ret void
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @percpu_ref_put(ptr noundef %0) unnamed_addr #7 align 16 prefalign(16) {
bb.a:
  tail call void @__rcu_read_lock() #19
  %i.a = load volatile i64, ptr %0, align 8       ; 2 uses
  %i.b = and i64 %i.a, 3
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %__ref_is_percpu.exit.i, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.a to ptr                 ; 2 uses
  tail call void asm sideeffect "decq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.c, ptr elementtype(i64) %i.c) #17, !srcloc !16
  br label %percpu_ref_put_many.exit

__ref_is_percpu.exit.i:                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock subq $2, $0", "=*m,={@cce},er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.e, i64 1, ptr elementtype(i64) %i.e) #17, !srcloc !17 ; 2 uses
  %i.g = icmp ult i8 %i.f, 2
  tail call void @llvm.assume(i1 %i.g)
  %i.h = trunc nuw i8 %i.f to i1
  br i1 %i.h, label %bb.c, label %percpu_ref_put_many.exit, !prof !18

bb.c:                                             ; preds = %__ref_is_percpu.exit.i
  %i.i = load ptr, ptr %i.d, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef %0) #19, !inline_history !61
  br label %percpu_ref_put_many.exit

percpu_ref_put_many.exit:                         ; preds = %bb.b, %__ref_is_percpu.exit.i, %bb.c
  tail call void @__rcu_read_unlock() #19
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @__swap_cluster_free_entries(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = add i32 %3, %2
  %i.b = getelementptr i8, ptr %0, i64 80
  %.val = load ptr, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %1, i64 4          ; 3 uses
  %i.d = load i16, ptr %i.c, align 4
  %i.e = trunc i32 %3 to i16
  %i.f = sub i16 %i.d, %i.e
  store i16 %i.f, ptr %i.c, align 4
  %i.g = getelementptr i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.039 = phi i32 [ %2, %bb.a ], [ %5, %bb.b ]    ; 2 uses
  %i.h = load volatile ptr, ptr %i.g, align 8
  %4 = zext i32 %.039 to i64
  %i.i = getelementptr [8 x i8], ptr %i.h, i64 %4 ; 2 uses
  %i.j = load volatile i64, ptr %i.i, align 8     ; 0 uses
  store volatile i64 0, ptr %i.i, align 8
  %5 = add i32 %.039, 1                           ; 2 uses
  %6 = icmp ult i32 %5, %i.a
  br i1 %6, label %bb.b, label %bb.c, !llvm.loop !62

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %1 to i64
  %i.l = ptrtoint ptr %.val to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 40
  %i.o = shl i64 %i.n, 8
  %i.p = and i64 %i.o, 4294967040
  %7 = zext i32 %2 to i64
  %i.q = add nuw nsw i64 %i.p, %7                 ; 3 uses
  %i.r = zext i32 %3 to i64                       ; 4 uses
  %i.s = add nsw i64 %i.r, -1
  %i.t = add nsw i64 %i.s, %i.q                   ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 16
  %i.v = load i64, ptr %i.u, align 8
  %i.w = and i64 %i.v, 64
  %.not.i = icmp eq i64 %i.w, 0
  br i1 %.not.i, label %._crit_edge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr i8, ptr %0, i64 192        ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr i8, ptr %i.aa, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr i8, ptr %i.ac, i64 88
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not2426.i = icmp ugt i64 %i.q, %i.t
  %.not25.i = icmp eq ptr %i.ae, null
  %or.cond = select i1 %.not2426.i, i1 true, i1 %.not25.i
  br i1 %or.cond, label %._crit_edge.i, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.d, %.lr.ph.split.i
  %.027.i = phi i64 [ %i.ag, %.lr.ph.split.i ], [ %i.q, %bb.d ] ; 2 uses
  %i.af = load ptr, ptr %i.x, align 8
  tail call void %i.ae(ptr noundef %i.af, i64 noundef %.027.i) #19, !inline_history !63
  %i.ag = add i64 %.027.i, 1                      ; 2 uses
  %.not24.i = icmp ugt i64 %i.ag, %i.t
  br i1 %.not24.i, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !64

._crit_edge.i:                                    ; preds = %.lr.ph.split.i, %bb.d, %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !65
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock addq $1, $0", "=*m,er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @nr_swap_pages, i64 range(i64 0, 4294967296) %i.r, ptr nonnull elementtype(i64) @nr_swap_pages) #17, !srcloc !66
  %i.ah = getelementptr i8, ptr %0, i64 160       ; 2 uses
  %i.ai = sub nsw i64 0, %i.r
  %i.aj = tail call i64 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddq ${0:q}, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ah, i64 range(i64 -4294967295, 4294967296) %i.ai, ptr elementtype(i64) %i.ah) #17, !srcloc !67
  %i.ak = sub i64 %i.aj, %i.r
  %i.al = and i64 %i.ak, 1073741824
  %.not.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i, label %swap_range_free.exit, label %bb.e, !prof !15

bb.e:                                             ; preds = %._crit_edge.i
  tail call fastcc void @add_to_avail_list(ptr noundef %0, i1 noundef zeroext false) #18, !srcloc !68
  br label %swap_range_free.exit

swap_range_free.exit:                             ; preds = %._crit_edge.i, %bb.e
  %i.am = load i16, ptr %i.c, align 4
  %.not = icmp eq i16 %i.am, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %swap_range_free.exit
  tail call fastcc void @free_cluster(ptr noundef %0, ptr noundef %1) #18, !srcloc !69
  br label %partial_free_cluster.exit

bb.g:                                             ; preds = %swap_range_free.exit
  %i.an = getelementptr i8, ptr %1, i64 6         ; 3 uses
  %i.ao = load i8, ptr %i.an, align 2
  %.not.i44 = icmp eq i8 %i.ao, 2
  br i1 %.not.i44, label %partial_free_cluster.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr i8, ptr %0, i64 120
  %i.aq = getelementptr i8, ptr %1, i64 7
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr [16 x i8], ptr %i.ap, i64 %i.as ; 4 uses
  %i.au = getelementptr i8, ptr %0, i64 240       ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.au) #19
  %i.av = load i8, ptr %i.an, align 2
  %i.aw = icmp eq i8 %i.av, 0
  %i.ax = getelementptr i8, ptr %1, i64 24        ; 6 uses
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr i8, ptr %i.at, i64 8      ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  store ptr %i.ax, ptr %i.ay, align 8
  store ptr %i.at, ptr %i.ax, align 8
  %i.ba = getelementptr i8, ptr %1, i64 32
  store ptr %i.az, ptr %i.ba, align 8
  br label %move_cluster.exit.i

bb.j:                                             ; preds = %bb.h
  %i.bb = getelementptr i8, ptr %1, i64 32        ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.bd = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  store ptr %i.bc, ptr %i.be, align 8
  store volatile ptr %i.bd, ptr %i.bc, align 8
  %i.bf = getelementptr i8, ptr %i.at, i64 8      ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  store ptr %i.ax, ptr %i.bf, align 8
  store ptr %i.at, ptr %i.ax, align 8
  store ptr %i.bg, ptr %i.bb, align 8
  br label %move_cluster.exit.i

move_cluster.exit.i:                              ; preds = %bb.j, %bb.i
  %.sink.i.i = phi ptr [ %i.bg, %bb.j ], [ %i.az, %bb.i ]
  store volatile ptr %i.ax, ptr %.sink.i.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i.au) #19
  store i8 2, ptr %i.an, align 2
  br label %partial_free_cluster.exit

partial_free_cluster.exit:                        ; preds = %move_cluster.exit.i, %bb.g, %bb.f
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @free_cluster(ptr noundef %0, ptr noundef %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 1026
  %i.d = icmp eq i64 %i.c, 1026
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 312        ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 240        ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.f) #19
  %i.g = getelementptr i8, ptr %1, i64 6          ; 2 uses
  %i.h = load i8, ptr %i.g, align 2
  %i.i = icmp eq i8 %i.h, 0
  %i.j = getelementptr i8, ptr %1, i64 24         ; 6 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %0, i64 320        ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  store ptr %i.j, ptr %i.k, align 8
  store ptr %i.e, ptr %i.j, align 8
  %i.m = getelementptr i8, ptr %1, i64 32
  store ptr %i.l, ptr %i.m, align 8
  br label %swap_cluster_schedule_discard.exit

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 8
  store ptr %i.o, ptr %i.q, align 8
  store volatile ptr %i.p, ptr %i.o, align 8
  %i.r = getelementptr i8, ptr %0, i64 320        ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  store ptr %i.j, ptr %i.r, align 8
  store ptr %i.e, ptr %i.j, align 8
  store ptr %i.s, ptr %i.n, align 8
  br label %swap_cluster_schedule_discard.exit

swap_cluster_schedule_discard.exit:               ; preds = %bb.c, %bb.d
  %.sink.i.i = phi ptr [ %i.s, %bb.d ], [ %i.l, %bb.c ]
  store volatile ptr %i.j, ptr %.sink.i.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i.f) #19
  store i8 5, ptr %i.g, align 2
  %i.t = getelementptr i8, ptr %0, i64 248
  %i.u = load ptr, ptr @system_percpu_wq, align 8
  %i.v = tail call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %i.u, ptr noundef %i.t) #19 ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.w = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.x = load volatile ptr, ptr %i.w, align 8     ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %swap_cluster_free_table.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store volatile ptr null, ptr %i.w, align 8
  %i.y = load ptr, ptr @swap_table_cachep, align 8
  tail call void @kmem_cache_free(ptr noundef %i.y, ptr noundef nonnull %i.x) #19
  br label %swap_cluster_free_table.exit.i

swap_cluster_free_table.exit.i:                   ; preds = %bb.f, %bb.e
  %i.z = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %i.aa = getelementptr i8, ptr %0, i64 240       ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.aa) #19
  %i.ab = getelementptr i8, ptr %1, i64 6         ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 2
  %i.ad = icmp eq i8 %i.ac, 0
  %i.ae = getelementptr i8, ptr %1, i64 24        ; 6 uses
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %swap_cluster_free_table.exit.i
  %i.af = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8
  store ptr %i.z, ptr %i.ae, align 8
  %i.ah = getelementptr i8, ptr %1, i64 32
  store ptr %i.ag, ptr %i.ah, align 8
  br label %__free_cluster.exit

bb.h:                                             ; preds = %swap_cluster_free_table.exit.i
  %i.ai = getelementptr i8, ptr %1, i64 32        ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  store ptr %i.aj, ptr %i.al, align 8
  store volatile ptr %i.ak, ptr %i.aj, align 8
  %i.am = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
end_hunk_0
begin_hunk_1_@reinsert_swap_info:bb.a
  tail call void @_raw_spin_lock(ptr noundef nonnull @swap_lock) #19
  %i.a = getelementptr i8, ptr %0, i64 240        ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.a) #19
  tail call fastcc void @_enable_swap_info(ptr noundef %0) #18, !srcloc !192
  tail call void @_raw_spin_unlock(ptr noundef %i.a) #19
  tail call void @_raw_spin_unlock(ptr noundef nonnull @swap_lock) #19
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @flush_percpu_swap_cluster(ptr noundef %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %i.a = phi i64 [ 0, %bb.a ], [ %i.o, %bb.c ]
  %i.b = load i64, ptr @__cpu_possible_mask, align 8
  %i.c = shl nsw i64 -1, %i.a
  %i.d = and i64 %i.b, %i.c                       ; 2 uses
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %find_next_bit.exit.thread, label %find_next_bit.exit

find_next_bit.exit:                               ; preds = %bb.b
  %i.e = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.d) #23, !srcloc !193 ; 3 uses
  %i.f = and i64 %i.e, 4294967232
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %find_next_bit.exit.thread

bb.c:                                             ; preds = %find_next_bit.exit
  %i.h = and i64 %i.e, 63
  %i.i = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add i64 %i.j, ptrtoint (ptr @percpu_swap_cluster to i64)
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = tail call ptr asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgq $2, $1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.l, ptr null, ptr %0, ptr elementtype(i64) %i.l) #17, !srcloc !194 ; 0 uses
  %i.n = add nuw nsw i64 %i.e, 1
  %i.o = and i64 %i.n, 127                        ; 2 uses
  %i.p = icmp samesign ugt i64 %i.o, 63
  br i1 %i.p, label %find_next_bit.exit.thread, label %bb.b, !prof !195, !llvm.loop !196

find_next_bit.exit.thread:                        ; preds = %bb.b, %bb.c, %find_next_bit.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @destroy_swap_extents(ptr noundef %0, ptr noundef %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 184        ; 3 uses
  %i.b = load volatile ptr, ptr %i.a, align 8     ; 2 uses
  %.not17 = icmp eq ptr %i.b, null
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.c = phi ptr [ %i.d, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @rb_erase(ptr noundef nonnull %i.c, ptr noundef %i.a) #19
  tail call void @kfree(ptr noundef nonnull %i.c) #19
  %i.d = load volatile ptr, ptr %i.a, align 8     ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !144

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.e = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = and i64 %i.f, 128
  %.not15 = icmp eq i64 %i.g, 0
  br i1 %.not15, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.h = getelementptr i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = and i64 %i.f, -129
  store i64 %i.j, ptr %i.e, align 8
  %i.k = getelementptr i8, ptr %i.i, i64 96
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 136
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not16 = icmp eq ptr %i.n, null
  br i1 %.not16, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.n(ptr noundef %1) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %._crit_edge
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @drain_mmlist() unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr @nr_swapfiles, align 4     ; 2 uses
  %.not16 = icmp eq i32 %i.a, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %i.a to i64
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !197

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.b = getelementptr [8 x i8], ptr @swap_info, i64 %indvars.iv
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 160
  %i.e = load volatile i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, -1073741825
  %.not9 = icmp eq i64 %i.f, 0
  br i1 %.not9, label %bb.b, label %.loopexit

._crit_edge:                                      ; preds = %bb.b, %bb.a
  tail call void @_raw_spin_lock(ptr noundef nonnull @mmlist_lock) #19
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @init_mm, i64 496), align 16 ; 2 uses
  %.not11 = icmp eq ptr %i.g, getelementptr inbounds nuw (i8, ptr @init_mm, i64 496)
  br i1 %.not11, label %._crit_edge15, label %.lr.ph14

.lr.ph14:                                         ; preds = %._crit_edge, %.lr.ph14
  %.0812 = phi ptr [ %.07, %.lr.ph14 ], [ %i.g, %._crit_edge ] ; 5 uses
  %.07 = load ptr, ptr %.0812, align 8            ; 4 uses
  %i.h = getelementptr i8, ptr %.0812, i64 8      ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr i8, ptr %.07, i64 8
  store ptr %i.i, ptr %i.j, align 8
  store volatile ptr %.07, ptr %i.i, align 8
  store volatile ptr %.0812, ptr %.0812, align 8
  store volatile ptr %.0812, ptr %i.h, align 8
  %.not = icmp eq ptr %.07, getelementptr inbounds nuw (i8, ptr @init_mm, i64 496)
  br i1 %.not, label %._crit_edge15, label %.lr.ph14, !llvm.loop !198

._crit_edge15:                                    ; preds = %.lr.ph14, %._crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @mmlist_lock) #19
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %._crit_edge15
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @free_swap_cluster_info(ptr noundef %0, i64 noundef range(i64 0, 4294967296) %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = add nuw nsw i64 %1, 255
  %i.b = lshr i64 %i.a, 8                         ; 2 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.j, label %.preheader15

.preheader15:                                     ; preds = %bb.a
  %.not17 = icmp eq i64 %i.b, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader15, %swap_cluster_free_table.exit
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %swap_cluster_free_table.exit ], [ 0, %.preheader15 ] ; 2 uses
  %i.c = getelementptr [40 x i8], ptr %0, i64 %indvars.iv19 ; 5 uses
  tail call void @_raw_spin_lock(ptr noundef %i.c) #19
  %i.d = getelementptr i8, ptr %i.c, i64 8        ; 4 uses
  %.val = load ptr, ptr %i.d, align 8
  %.not14 = icmp eq ptr %.val, null
  br i1 %.not14, label %swap_cluster_free_table.exit, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next.a, %bb.d ], [ 0, %.lr.ph ] ; 2 uses
  %.028.i = phi i32 [ %.1.i, %bb.d ], [ 0, %.lr.ph ] ; 3 uses
  %i.e = load volatile ptr, ptr %i.d, align 8
  %i.f = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load volatile i64, ptr %i.f, align 8
  switch i64 %i.g, label %bb.c [
    i64 -8, label %bb.b
    i64 0, label %bb.d
  ], !prof !199

bb.b:                                             ; preds = %.preheader
  %i.h = add i32 %.028.i, 1
  br label %bb.d

bb.c:                                             ; preds = %.preheader
  tail call void asm sideeffect "809: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 809b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 809) #17, !srcloc !200
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 514, i32 2307, i64 16) #17, !srcloc !201
  tail call void asm sideeffect "810: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 810b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 810) #17, !srcloc !202
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.preheader
  %.1.i = phi i32 [ %i.h, %bb.b ], [ %.028.i, %bb.c ], [ %.028.i, %.preheader ] ; 2 uses
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.a = icmp eq i64 %indvars.iv.next.a, 256
  br i1 %exitcond.not.a, label %bb.e, label %.preheader, !llvm.loop !203

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %i.c, i64 4
  %i.j = load i16, ptr %i.i, align 4
  %i.k = zext i16 %i.j to i32
  %i.l = icmp eq i32 %.1.i, %i.k
  br i1 %i.l, label %bb.g, label %bb.f, !prof !15

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "813: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 813b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 813) #17, !srcloc !204
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 518, i32 2307, i64 16) #17, !srcloc !205
  tail call void asm sideeffect "814: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 814b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 814) #17, !srcloc !206
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = getelementptr i8, ptr %i.c, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %swap_cluster_assert_empty.exit, label %bb.h, !prof !15

bb.h:                                             ; preds = %bb.g
  tail call void asm sideeffect "815: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 815b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 815) #17, !srcloc !207
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 519, i32 2307, i64 16) #17, !srcloc !208
  tail call void asm sideeffect "816: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 816b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 816) #17, !srcloc !209
  br label %swap_cluster_assert_empty.exit

swap_cluster_assert_empty.exit:                   ; preds = %bb.g, %bb.h
  %i.o = load volatile ptr, ptr %i.d, align 8     ; 2 uses
  %.not.i13 = icmp eq ptr %i.o, null
  br i1 %.not.i13, label %swap_cluster_free_table.exit, label %bb.i

bb.i:                                             ; preds = %swap_cluster_assert_empty.exit
  store volatile ptr null, ptr %i.d, align 8
  %i.p = load ptr, ptr @swap_table_cachep, align 8
  tail call void @kmem_cache_free(ptr noundef %i.p, ptr noundef nonnull %i.o) #19
  br label %swap_cluster_free_table.exit

swap_cluster_free_table.exit:                     ; preds = %bb.i, %swap_cluster_assert_empty.exit, %.lr.ph
  tail call void @_raw_spin_unlock(ptr noundef %i.c) #19
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1 ; 2 uses
  %exitcond22.not = icmp eq i64 %indvars.iv.next20, %i.b
  br i1 %exitcond22.not, label %._crit_edge, label %.lr.ph, !llvm.loop !210

._crit_edge:                                      ; preds = %swap_cluster_free_table.exit, %.preheader15
  tail call void @kvfree(ptr noundef nonnull %0) #19
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @filp_close(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @getname_flags(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @putname(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @shmem_unuse(i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mmput(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @folio_wait_writeback(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @mas_find(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @pgd_clear_bad(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @p4d_clear_bad(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @pud_clear_bad(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @swapin_readahead(i64, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__pte_offset_map(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @pte_offset_map_lock(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @folio_add_new_anon_rmap(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @folio_add_anon_rmap_ptes(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mm_trace_rss_stat(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @_enable_swap_info(ptr noundef %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 152        ; 3 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = zext i32 %i.b to i64
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock addq $1, $0", "=*m,er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @nr_swap_pages, i64 range(i64 0, 4294967296) %i.c, ptr nonnull elementtype(i64) @nr_swap_pages) #17, !srcloc !66
  %i.d = load i32, ptr %i.a, align 8
  %i.e = zext i32 %i.d to i64
  %i.f = load i64, ptr @total_swap_pages, align 8
  %i.g = add i64 %i.f, %i.e
  store i64 %i.g, ptr @total_swap_pages, align 8
  %i.h = load volatile i32, ptr @swap_lock, align 4
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "896: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 896b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 896) #17, !srcloc !211
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 2971, i32 0, i64 16) #17, !srcloc !212
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 32
  tail call void @plist_add(ptr noundef %i.i, ptr noundef nonnull @swap_active_head) #19
  tail call void @_raw_spin_lock(ptr noundef nonnull @swap_avail_lock) #19
  %i.j = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = or i64 %i.k, 2
  store i64 %i.l, ptr %i.j, align 8
  %i.m = getelementptr i8, ptr %0, i64 160        ; 8 uses
  %i.n = load volatile i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, 1073741824
  %.not9.i = icmp eq i64 %i.o, 0
  br i1 %.not9.i, label %add_to_avail_list.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load volatile i64, ptr %i.m, align 8     ; 3 uses
  %i.q = and i64 %i.p, -1073741825
  %i.r = tail call { i8, i64 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgq $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.m, i64 %i.q, ptr elementtype(i64) %i.m, i64 %i.p) #17, !srcloc !22 ; 2 uses
  %i.s = extractvalue { i8, i64 } %i.r, 0         ; 2 uses
  %i.t = icmp ult i8 %i.s, 2
  tail call void @llvm.assume(i1 %i.t)
  %i.u = trunc nuw i8 %i.s to i1
  br i1 %i.u, label %arch_atomic64_fetch_and.exit.i, label %arch_atomic64_try_cmpxchg.exit.i.i, !prof !154

arch_atomic64_try_cmpxchg.exit.i.i:               ; preds = %bb.d, %arch_atomic64_try_cmpxchg.exit.i.i
  %i.v = phi { i8, i64 } [ %i.y, %arch_atomic64_try_cmpxchg.exit.i.i ], [ %i.r, %bb.d ]
  %i.w = extractvalue { i8, i64 } %i.v, 1         ; 3 uses
  %i.x = and i64 %i.w, -1073741825
  %i.y = tail call { i8, i64 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgq $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.m, i64 %i.x, ptr elementtype(i64) %i.m, i64 %i.w) #17, !srcloc !22 ; 2 uses
  %i.z = extractvalue { i8, i64 } %i.y, 0         ; 2 uses
  %i.aa = icmp ult i8 %i.z, 2
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = trunc nuw i8 %i.z to i1
  br i1 %i.ab, label %arch_atomic64_fetch_and.exit.i, label %arch_atomic64_try_cmpxchg.exit.i.i, !prof !155

arch_atomic64_fetch_and.exit.i:                   ; preds = %arch_atomic64_try_cmpxchg.exit.i.i, %bb.d
  %.0.lcssa.i = phi i64 [ %i.p, %bb.d ], [ %i.w, %arch_atomic64_try_cmpxchg.exit.i.i ] ; 3 uses
  %i.ac = load i32, ptr %i.a, align 8
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp eq i64 %.0.lcssa.i, %i.ad
  br i1 %i.ae, label %raw_atomic_long_try_cmpxchg.exit.i, label %bb.e

raw_atomic_long_try_cmpxchg.exit.i:               ; preds = %arch_atomic64_fetch_and.exit.i
  %i.af = or i64 %.0.lcssa.i, 1073741824
  %i.ag = tail call { i8, i64 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgq $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.m, i64 range(i64 1073741824, 4294967296) %i.af, ptr elementtype(i64) %i.m, i64 %.0.lcssa.i) #17, !srcloc !22
  %i.ah = extractvalue { i8, i64 } %i.ag, 0       ; 2 uses
  %i.ai = icmp ult i8 %i.ah, 2
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = trunc nuw i8 %i.ah to i1
  br i1 %i.aj, label %add_to_avail_list.exit, label %bb.e

bb.e:                                             ; preds = %raw_atomic_long_try_cmpxchg.exit.i, %arch_atomic64_fetch_and.exit.i
  %i.ak = getelementptr i8, ptr %0, i64 328
end_hunk_1
