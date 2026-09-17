Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/nf_conntrack_core?download=true
inline.NumInlined: 501
inline.NumDeleted: 157
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@nf_ct_destroy:bb.a
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @nf_ct_remove_expectations(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @nf_ct_put(ptr noundef %0) unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %refcount_dec_and_test.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %0, i32 -1, ptr nonnull elementtype(i32) %0) #19, !srcloc !24 ; 2 uses
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp slt i32 %i.a, 1
  br i1 %i.c, label %bb.d, label %refcount_dec_and_test.exit.thread, !prof !21

bb.d:                                             ; preds = %bb.c
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef 3) #18
  br label %refcount_dec_and_test.exit.thread

bb.e:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !25
  tail call void @nf_ct_destroy(ptr noundef nonnull %0) #20
  br label %refcount_dec_and_test.exit.thread

refcount_dec_and_test.exit.thread:                ; preds = %bb.d, %bb.c, %bb.e, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @nf_conntrack_free(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 136
  %.val = load ptr, ptr %i.a, align 8
  %i.b = load volatile i32, ptr %0, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "1072: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1072b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1072) #19, !srcloc !49
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 1726, i32 2305, i64 16) #19, !srcloc !50
  tail call void asm sideeffect "1073: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1073b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1073) #19, !srcloc !51
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @__rcu_read_lock() #18
  %i.c = getelementptr i8, ptr %0, i64 128
  %i.d = load i64, ptr %i.c, align 8
  %i.e = and i64 %i.d, 128
  %.not17 = icmp eq i64 %i.e, 0
  br i1 %.not17, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load volatile ptr, ptr @nf_nat_hook, align 8 ; 2 uses
  %.not18 = icmp eq ptr %i.f, null
  br i1 %.not18, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef %0) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.i = getelementptr i8, ptr %0, i64 176        ; 2 uses
  %.val19 = load ptr, ptr %i.i, align 8           ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val19, null
  br i1 %.not.i.i.i, label %nf_ct_help_put.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = load i8, ptr %.val19, align 1            ; 2 uses
  %.not1.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not1.i.i.i, label %nf_ct_help_put.exit, label %nfct_help.exit.i

nfct_help.exit.i:                                 ; preds = %bb.g
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr i8, ptr %.val19, i64 %i.k  ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %nf_ct_help_put.exit, label %bb.h

bb.h:                                             ; preds = %nfct_help.exit.i
  %i.m = load volatile ptr, ptr %i.l, align 8     ; 4 uses
  %.not13.i = icmp eq ptr %i.m, null
  br i1 %.not13.i, label %nf_ct_help_put.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr i8, ptr %i.m, i64 152      ; 3 uses
  %i.o = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.n, i32 -1, ptr elementtype(i32) %i.n) #19, !srcloc !24 ; 2 uses
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = icmp slt i32 %i.o, 1
  br i1 %i.q, label %bb.k, label %nf_ct_help_put.exit, !prof !21

bb.k:                                             ; preds = %bb.j
  tail call void @refcount_warn_saturate(ptr noundef %i.n, i32 noundef 3) #18
  br label %nf_ct_help_put.exit

bb.l:                                             ; preds = %bb.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !25
  %i.r = getelementptr i8, ptr %i.m, i64 16
  tail call void @kvfree_call_rcu(ptr noundef %i.r, ptr noundef nonnull %i.m) #18
  br label %nf_ct_help_put.exit

nf_ct_help_put.exit:                              ; preds = %bb.f, %bb.g, %nfct_help.exit.i, %bb.h, %bb.j, %bb.k, %bb.l
  tail call void @__rcu_read_unlock() #18
  %i.s = load ptr, ptr %i.i, align 8
  tail call void @kfree(ptr noundef %i.s) #18
  %i.t = load ptr, ptr @nf_conntrack_cachep, align 8
  tail call void @kmem_cache_free(ptr noundef %i.t, ptr noundef %0) #18
  %i.u = load i32, ptr @nf_conntrack_net_id, align 4
  tail call void @__rcu_read_lock() #18
  %i.v = getelementptr i8, ptr %.val, i64 2984
  %i.w = load volatile ptr, ptr %i.v, align 8
  %i.x = zext i32 %i.u to i64
  %i.y = getelementptr [8 x i8], ptr %i.w, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  tail call void @__rcu_read_unlock() #18
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.z, ptr elementtype(i32) %i.z) #19, !srcloc !27
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef zeroext i1 @nf_ct_delete(ptr noundef %0, i32 %1, i32 %2) #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.siphash_key_t, align 8      ; 6 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %struct.siphash_key_t, align 8      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 128        ; 2 uses
  %i.d = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.c, i64 9, ptr elementtype(i64) %i.c) #19, !srcloc !28 ; 2 uses
  %i.e = icmp ult i8 %i.d, 2
  tail call void @llvm.assume(i1 %i.e)
  %i.f = trunc nuw i8 %i.d to i1                  ; 2 uses
  br i1 %i.f, label %nf_ct_put.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @nf_ct_helper_destroy(ptr noundef %0) #18
  %i.g = tail call i64 asm "lea 0(%rip), $0", "=r,~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !29
  tail call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, i32 512, ptr nonnull elementtype(i32) @__preempt_count) #19, !srcloc !30
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !31
  %i.h = getelementptr i8, ptr %0, i64 136
  %.val.i.i = load ptr, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %0, i64 32
  %i.j = getelementptr i8, ptr %.val.i.i, i64 648 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 88
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %hash_conntrack.exit16.i.i, %bb.b
  %i.n = load volatile i32, ptr @nf_conntrack_generation, align 4 ; 2 uses
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !32
  %i.o = and i32 %i.n, 1
  %.not21.i.i = icmp eq i32 %i.o, 0
  br i1 %.not21.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !prof !33

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !34
  %i.p = load volatile i32, ptr @nf_conntrack_generation, align 4 ; 2 uses
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !32
  %i.q = and i32 %i.p, 1
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !prof !35, !llvm.loop !52

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.c
  %.lcssa.i.i = phi i32 [ %i.n, %bb.c ], [ %i.p, %.lr.ph.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !annotation !19
  callbr void asm sideeffect "1:jmp ${2:l}\0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @hash_conntrack_raw.___once_key, i1 false) #19
          to label %hash_conntrack.exit.i.i [label %bb.d], !srcloc !22

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 0, ptr %i.b, align 8, !annotation !19
  %i.r = call zeroext i1 @__do_once_start(ptr noundef nonnull @hash_conntrack_raw.___done, ptr noundef nonnull %i.b) #18
  br i1 %i.r, label %bb.e, label %bb.f, !prof !21

bb.e:                                             ; preds = %bb.d
  call void @get_random_bytes(ptr noundef nonnull @nf_conntrack_hash_rnd, i64 noundef 16) #18
  call void @__do_once_done(ptr noundef nonnull @hash_conntrack_raw.___done, ptr noundef nonnull @hash_conntrack_raw.___once_key, ptr noundef nonnull %i.b, ptr noundef null) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %hash_conntrack.exit.i.i

hash_conntrack.exit.i.i:                          ; preds = %bb.f, %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) @nf_conntrack_hash_rnd, i64 16, i1 false)
  %.val.i.i.i.i = load i32, ptr %i.j, align 8
  %i.s = zext i32 %.val.i.i.i.i to i64
  %i.t = load i64, ptr %i.k, align 8
  %i.u = xor i64 %i.t, %i.s
  store i64 %i.u, ptr %i.k, align 8
  %i.v = call i64 @__siphash_unaligned(ptr noundef %i.i, i64 noundef 39, ptr noundef nonnull %4) #18
  %5 = trunc i64 %i.v to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.w = load i32, ptr @nf_conntrack_htable_size, align 4
  %6 = call range(i32 0, -1) i32 @llvm.umulh.i32(i32 %5, i32 %i.w) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !annotation !19
  callbr void asm sideeffect "1:jmp ${2:l}\0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @hash_conntrack_raw.___once_key, i1 false) #19
          to label %hash_conntrack.exit16.i.i [label %bb.g], !srcloc !22

bb.g:                                             ; preds = %hash_conntrack.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 0, ptr %i.a, align 8, !annotation !19
  %i.x = call zeroext i1 @__do_once_start(ptr noundef nonnull @hash_conntrack_raw.___done, ptr noundef nonnull %i.a) #18
  br i1 %i.x, label %bb.h, label %bb.i, !prof !21

bb.h:                                             ; preds = %bb.g
  call void @get_random_bytes(ptr noundef nonnull @nf_conntrack_hash_rnd, i64 noundef 16) #18
  call void @__do_once_done(ptr noundef nonnull @hash_conntrack_raw.___done, ptr noundef nonnull @hash_conntrack_raw.___once_key, ptr noundef nonnull %i.a, ptr noundef null) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %hash_conntrack.exit16.i.i

hash_conntrack.exit16.i.i:                        ; preds = %bb.i, %hash_conntrack.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) @nf_conntrack_hash_rnd, i64 16, i1 false)
  %.val.i.i15.i.i = load i32, ptr %i.j, align 8
  %i.y = zext i32 %.val.i.i15.i.i to i64
  %i.z = load i64, ptr %i.m, align 8
  %i.aa = xor i64 %i.z, %i.y
  store i64 %i.aa, ptr %i.m, align 8
  %i.ab = call i64 @__siphash_unaligned(ptr noundef %i.l, i64 noundef 39, ptr noundef nonnull %3) #18
  %7 = trunc i64 %i.ab to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.ac = load i32, ptr @nf_conntrack_htable_size, align 4
  %8 = call range(i32 0, -1) i32 @llvm.umulh.i32(i32 %7, i32 %i.ac) ; 2 uses
  %i.ad = call fastcc zeroext i1 @nf_conntrack_double_lock(i32 noundef %6, i32 noundef %8, i32 noundef %.lcssa.i.i) #20, !srcloc !54
  br i1 %i.ad, label %bb.c, label %bb.j, !llvm.loop !53

bb.j:                                             ; preds = %hash_conntrack.exit16.i.i
  %i.ae = getelementptr i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8            ; 3 uses
  %i.ag = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  store volatile ptr %i.af, ptr %i.ah, align 8
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = and i64 %i.ai, 1
  %.not.i.i.i.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i.i.i.i, label %bb.k, label %hlist_nulls_del_rcu.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr i8, ptr %i.af, i64 8
  store volatile ptr %i.ah, ptr %i.ak, align 8
  br label %hlist_nulls_del_rcu.exit.i.i.i

hlist_nulls_del_rcu.exit.i.i.i:                   ; preds = %bb.k, %bb.j
  store volatile ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.ag, align 8
  %i.al = getelementptr i8, ptr %0, i64 72
  %i.am = load ptr, ptr %i.al, align 8            ; 3 uses
  %i.an = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  store volatile ptr %i.am, ptr %i.ao, align 8
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = and i64 %i.ap, 1
  %.not.i.i3.i.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i3.i.i.i, label %bb.l, label %clean_from_lists.exit.i.i

bb.l:                                             ; preds = %hlist_nulls_del_rcu.exit.i.i.i
  %i.ar = getelementptr i8, ptr %i.am, i64 8
  store volatile ptr %i.ao, ptr %i.ar, align 8
  br label %clean_from_lists.exit.i.i

clean_from_lists.exit.i.i:                        ; preds = %bb.l, %hlist_nulls_del_rcu.exit.i.i.i
  store volatile ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.an, align 8
  call void @nf_ct_remove_expectations(ptr noundef %0) #18
  %9 = and i32 %6, 1023                           ; 2 uses
  %10 = and i32 %8, 1023                          ; 2 uses
  %11 = zext nneg i32 %9 to i64
  %12 = getelementptr [4 x i8], ptr @nf_conntrack_locks, i64 %11
  call void @_raw_spin_unlock(ptr noundef %12) #18
  %.not.i.i.i = icmp eq i32 %9, %10
  br i1 %.not.i.i.i, label %nf_ct_delete_from_lists.exit, label %bb.m

bb.m:                                             ; preds = %clean_from_lists.exit.i.i
  %13 = zext nneg i32 %10 to i64
  %i.as = getelementptr [4 x i8], ptr @nf_conntrack_locks, i64 %13
  call void @_raw_spin_unlock(ptr noundef %i.as) #18
  br label %nf_ct_delete_from_lists.exit

nf_ct_delete_from_lists.exit:                     ; preds = %clean_from_lists.exit.i.i, %bb.m
  call void @__local_bh_enable_ip(i64 noundef %i.g, i32 noundef 512) #18
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %nf_ct_put.exit, label %bb.n

bb.n:                                             ; preds = %nf_ct_delete_from_lists.exit
  %i.at = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %0, i32 -1, ptr nonnull elementtype(i32) %0) #19, !inline_history !26, !srcloc !24 ; 2 uses
  %i.au = icmp eq i32 %i.at, 1
  br i1 %i.au, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = icmp slt i32 %i.at, 1
  br i1 %i.av, label %bb.p, label %nf_ct_put.exit, !prof !21

bb.p:                                             ; preds = %bb.o
  call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef 3) #18, !inline_history !26
  br label %nf_ct_put.exit

bb.q:                                             ; preds = %bb.n
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !inline_history !26, !srcloc !25
  call void @nf_ct_destroy(ptr noundef nonnull %0) #20, !inline_history !26
  br label %nf_ct_put.exit

nf_ct_put.exit:                                   ; preds = %bb.q, %bb.p, %bb.o, %nf_ct_delete_from_lists.exit, %bb.a
  %.0 = xor i1 %i.f, true
  ret i1 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @nf_ct_helper_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @nf_conntrack_find_get(ptr nofree noundef readonly captures(address) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.siphash_key_t, align 8      ; 6 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  tail call void @__rcu_read_lock() #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !annotation !19
  callbr void asm sideeffect "1:jmp ${2:l}\0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @hash_conntrack_raw.___once_key, i1 false) #19
          to label %hash_conntrack_raw.exit [label %bb.b], !srcloc !22

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 0, ptr %i.a, align 8, !annotation !19
  %i.b = call zeroext i1 @__do_once_start(ptr noundef nonnull @hash_conntrack_raw.___done, ptr noundef nonnull %i.a) #18
  br i1 %i.b, label %bb.c, label %bb.d, !prof !21

bb.c:                                             ; preds = %bb.b
  call void @get_random_bytes(ptr noundef nonnull @nf_conntrack_hash_rnd, i64 noundef 16) #18
  call void @__do_once_done(ptr noundef nonnull @hash_conntrack_raw.___done, ptr noundef nonnull @hash_conntrack_raw.___once_key, ptr noundef nonnull %i.a, ptr noundef null) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %hash_conntrack_raw.exit

hash_conntrack_raw.exit:                          ; preds = %bb.a, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) @nf_conntrack_hash_rnd, i64 16, i1 false)
  %i.c = getelementptr i8, ptr %0, i64 648
  %.val.i = load i32, ptr %i.c, align 8
  %i.d = zext i32 %.val.i to i64
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = xor i64 %i.f, %i.d
  store i64 %i.g, ptr %i.e, align 8
  %i.h = call i64 @__siphash_unaligned(ptr noundef %2, i64 noundef 39, ptr noundef nonnull %3) #18
  %i.i = trunc i64 %i.h to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.j = call fastcc ptr @__nf_conntrack_find_get(ptr noundef %0, ptr noundef %2, i32 noundef %i.i) #20
  call void @__rcu_read_unlock() #18
  ret ptr %i.j
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc ptr @__nf_conntrack_find_get(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #0 align 16 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 18         ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 20         ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 28         ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 36         ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 38         ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 2888
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.i = load volatile i32, ptr @nf_conntrack_generation, align 4 ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !32
  %i.j = and i32 %i.i, 1
  %.not11.i.i = icmp eq i32 %i.j, 0
  br i1 %.not11.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !prof !33

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !34
  %i.k = load volatile i32, ptr @nf_conntrack_generation, align 4 ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !32
  %i.l = and i32 %i.k, 1
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !prof !35, !llvm.loop !0

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.lcssa.i.i = phi i32 [ %i.i, %bb.b ], [ %i.k, %.lr.ph.i.i ]
  %i.m = load i32, ptr @nf_conntrack_htable_size, align 4
  %i.n = load ptr, ptr @nf_conntrack_hash, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !37
  %i.o = load volatile i32, ptr @nf_conntrack_generation, align 4
  %.not8.i.i = icmp eq i32 %i.o, %.lcssa.i.i
  br i1 %.not8.i.i, label %nf_conntrack_get_ht.exit.i, label %.backedge

.backedge:                                        ; preds = %._crit_edge.i.i, %bb.o
  br label %bb.b, !llvm.loop !1

nf_conntrack_get_ht.exit.i:                       ; preds = %._crit_edge.i.i
  %3 = tail call range(i32 0, -1) i32 @llvm.umulh.i32(i32 %2, i32 %i.m)
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !56
  %4 = zext i32 %3 to i64                         ; 2 uses
  %i.p = getelementptr [8 x i8], ptr %i.n, i64 %4
  %i.q = load volatile ptr, ptr %i.p, align 8     ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.s = and i64 %i.r, 1
  %.not20.i = icmp eq i64 %i.s, 0
  br i1 %.not20.i, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %nf_conntrack_get_ht.exit.i, %.thread6.i
  %.02621.i = phi ptr [ %i.cf, %.thread6.i ], [ %i.q, %nf_conntrack_get_ht.exit.i ] ; 23 uses
  %i.t = getelementptr i8, ptr %.02621.i, i64 55
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i64
  %.neg.i.i = mul nsw i64 %i.v, -56
  %i.w = getelementptr i8, ptr %.02621.i, i64 %.neg.i.i ; 6 uses
  %i.x = getelementptr i8, ptr %i.w, i64 -8       ; 2 uses
  %i.y = load volatile i32, ptr %i.x, align 8
  %i.z = load volatile i64, ptr @jiffies, align 64
  %i.aa = trunc i64 %i.z to i32
  %i.ab = sub i32 %i.y, %i.aa
  %i.ac = icmp slt i32 %i.ab, 1
  br i1 %i.ac, label %bb.c, label %bb.k

bb.c:                                             ; preds = %.lr.ph.i
  %i.ad = getelementptr i8, ptr %i.w, i64 -16     ; 10 uses
  %i.ae = load volatile i32, ptr %i.ad, align 8   ; 2 uses
  %.old1.not.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.old1.not.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.c, %arch_atomic_try_cmpxchg.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.ak, %arch_atomic_try_cmpxchg.exit.i.i.i.i ], [ %i.ae, %bb.c ] ; 3 uses
  %i.af = add i32 %.0.i.i.i.i, 1
  %i.ag = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ad, i32 %i.af, ptr elementtype(i32) %i.ad, i32 %.0.i.i.i.i) #19, !srcloc !38 ; 2 uses
  %i.ah = extractvalue { i8, i32 } %i.ag, 0       ; 2 uses
  %i.ai = icmp ult i8 %i.ah, 2
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = trunc nuw i8 %i.ah to i1
  br i1 %i.aj, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i.i, !prof !18

arch_atomic_try_cmpxchg.exit.i.i.i.i:             ; preds = %.preheader.i.i.i.i
  %i.ak = extractvalue { i8, i32 } %i.ag, 1       ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !2

arch_atomic_try_cmpxchg.exit.thread.i.i.i.i:      ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i.i, %.preheader.i.i.i.i, %bb.c
  %.2.i.i.i.i = phi i32 [ 0, %bb.c ], [ %.0.i.i.i.i, %.preheader.i.i.i.i ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i.i ] ; 3 uses
  %i.am = add i32 %.2.i.i.i.i, 1
  %i.an = or i32 %i.am, %.2.i.i.i.i
  %.not.i.i.i.i = icmp sgt i32 %i.an, -1
  br i1 %.not.i.i.i.i, label %refcount_inc_not_zero.exit.i, label %bb.d, !prof !18

bb.d:                                             ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef %i.ad, i32 noundef 0) #18
  br label %refcount_inc_not_zero.exit.i

refcount_inc_not_zero.exit.i:                     ; preds = %bb.d, %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i
  %.not.i18 = icmp eq i32 %.2.i.i.i.i, 0
  br i1 %.not.i18, label %.thread6.i, label %nf_ct_is_confirmed.exit.i.i20

nf_ct_is_confirmed.exit.i.i20:                    ; preds = %refcount_inc_not_zero.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !39
  %i.ao = getelementptr i8, ptr %i.w, i64 112     ; 2 uses
  %i.ap = load volatile i64, ptr %i.ao, align 8
  %i.aq = and i64 %i.ap, 8
  %.not.i.i22 = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i22, label %nf_ct_should_gc.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %nf_ct_is_confirmed.exit.i.i20
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !40
  %i.ar = load volatile i32, ptr %i.x, align 8
  %i.as = load volatile i64, ptr @jiffies, align 64
  %i.at = trunc i64 %i.as to i32
  %i.au = sub i32 %i.ar, %i.at
  %i.av = icmp slt i32 %i.au, 1
  br i1 %i.av, label %nf_ct_should_gc.exit.i, label %nf_ct_should_gc.exit.thread.i

nf_ct_should_gc.exit.i:                           ; preds = %bb.e
  %i.aw = load volatile i64, ptr %i.ao, align 8
  %i.ax = and i64 %i.aw, 512
  %.not4.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not4.i.i, label %bb.f, label %nf_ct_should_gc.exit.thread.i

bb.f:                                             ; preds = %nf_ct_should_gc.exit.i
  %i.ay = tail call noundef zeroext i1 @nf_ct_delete(ptr noundef %i.ad, i32 poison, i32 poison) #20 ; 0 uses
  br label %nf_ct_should_gc.exit.thread.i

nf_ct_should_gc.exit.thread.i:                    ; preds = %bb.f, %nf_ct_should_gc.exit.i, %bb.e, %nf_ct_is_confirmed.exit.i.i20
  %.not.i4.i = icmp eq ptr %i.ad, null
  br i1 %.not.i4.i, label %.thread6.i, label %bb.g

bb.g:                                             ; preds = %nf_ct_should_gc.exit.thread.i
  %i.az = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.ad, i32 -1, ptr nonnull elementtype(i32) %i.ad) #19, !inline_history !26, !srcloc !24 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 1
  br i1 %i.ba, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = icmp slt i32 %i.az, 1
  br i1 %i.bb, label %bb.i, label %.thread6.i, !prof !21

bb.i:                                             ; preds = %bb.h
  tail call void @refcount_warn_saturate(ptr noundef nonnull %i.ad, i32 noundef 3) #18, !inline_history !26
  br label %.thread6.i

bb.j:                                             ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !inline_history !26, !srcloc !25
  tail call void @nf_ct_destroy(ptr noundef nonnull %i.ad) #20, !inline_history !26
  br label %.thread6.i

bb.k:                                             ; preds = %.lr.ph.i
  %i.bc = getelementptr i8, ptr %.02621.i, i64 16
  %.val.i.i.i.i = load i64, ptr %1, align 8
  %.val6.i.i.i.i = load i64, ptr %i.a, align 8
  %.val7.i.i.i.i = load i64, ptr %i.bc, align 8
  %i.bd = getelementptr i8, ptr %.02621.i, i64 24
  %.val8.i.i.i.i = load i64, ptr %i.bd, align 8
  %i.be = icmp ne i64 %.val.i.i.i.i, %.val7.i.i.i.i
  %i.bf = icmp ne i64 %.val6.i.i.i.i, %.val8.i.i.i.i
  %.not11.i.i.i.i = or i1 %i.be, %i.bf
  br i1 %.not11.i.i.i.i, label %.thread6.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = load i16, ptr %i.b, align 8
  %i.bh = getelementptr i8, ptr %.02621.i, i64 32
  %i.bi = load i16, ptr %i.bh, align 8
  %i.bj = icmp eq i16 %i.bg, %i.bi
  br i1 %i.bj, label %__nf_ct_tuple_src_equal.exit.i.i.i, label %.thread6.i

__nf_ct_tuple_src_equal.exit.i.i.i:               ; preds = %bb.l
  %i.bk = load i16, ptr %i.c, align 2
  %i.bl = getelementptr i8, ptr %.02621.i, i64 34
  %i.bm = load i16, ptr %i.bl, align 2
  %i.bn = icmp eq i16 %i.bk, %i.bm
  br i1 %i.bn, label %bb.m, label %.thread6.i

bb.m:                                             ; preds = %__nf_ct_tuple_src_equal.exit.i.i.i
  %i.bo = getelementptr i8, ptr %.02621.i, i64 36
  %.val.i4.i.i.i = load i64, ptr %i.d, align 8
  %.val6.i5.i.i.i = load i64, ptr %i.e, align 8
  %.val7.i6.i.i.i = load i64, ptr %i.bo, align 8
  %i.bp = getelementptr i8, ptr %.02621.i, i64 44
  %.val8.i7.i.i.i = load i64, ptr %i.bp, align 8
  %i.bq = icmp ne i64 %.val.i4.i.i.i, %.val7.i6.i.i.i
  %i.br = icmp ne i64 %.val6.i5.i.i.i, %.val8.i7.i.i.i
  %.not11.i8.i.i.i = or i1 %i.bq, %i.br
  br i1 %.not11.i8.i.i.i, label %.thread6.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = load i16, ptr %i.f, align 4
  %i.bt = getelementptr i8, ptr %.02621.i, i64 52
  %i.bu = load i16, ptr %i.bt, align 4
  %i.bv = icmp eq i16 %i.bs, %i.bu
  br i1 %i.bv, label %nf_ct_tuple_equal.exit.i.i, label %.thread6.i

nf_ct_tuple_equal.exit.i.i:                       ; preds = %bb.n
  %i.bw = load i8, ptr %i.g, align 2
  %i.bx = getelementptr i8, ptr %.02621.i, i64 54
  %i.by = load i8, ptr %i.bx, align 2
  %i.bz = icmp eq i8 %i.bw, %i.by
  br i1 %i.bz, label %nf_ct_is_confirmed.exit.i.i, label %.thread6.i

nf_ct_is_confirmed.exit.i.i:                      ; preds = %nf_ct_tuple_equal.exit.i.i
  %i.ca = getelementptr i8, ptr %i.w, i64 112
  %i.cb = load volatile i64, ptr %i.ca, align 8
  %i.cc = and i64 %i.cb, 8
  %.not.i29.i = icmp eq i64 %i.cc, 0
  br i1 %.not.i29.i, label %.thread6.i, label %nf_ct_key_equal.exit.i

nf_ct_key_equal.exit.i:                           ; preds = %nf_ct_is_confirmed.exit.i.i
  %i.cd = getelementptr i8, ptr %i.w, i64 120
  %.val.i.i = load ptr, ptr %i.cd, align 8
  %.val.i.fr.i = freeze ptr %.val.i.i
  %i.ce = icmp eq ptr %0, %.val.i.fr.i
  br i1 %i.ce, label %____nf_conntrack_find.exit, label %.thread6.i

.thread6.i:                                       ; preds = %bb.j, %bb.i, %bb.h, %nf_ct_should_gc.exit.thread.i, %refcount_inc_not_zero.exit.i, %nf_ct_key_equal.exit.i, %nf_ct_is_confirmed.exit.i.i, %nf_ct_tuple_equal.exit.i.i, %bb.n, %bb.m, %__nf_ct_tuple_src_equal.exit.i.i.i, %bb.l, %bb.k
  %i.cf = load volatile ptr, ptr %.02621.i, align 8 ; 2 uses
  %i.cg = ptrtoint ptr %i.cf to i64               ; 2 uses
  %i.ch = and i64 %i.cg, 1
  %.not.i = icmp eq i64 %i.ch, 0
  br i1 %.not.i, label %.lr.ph.i, label %.critedge.i, !llvm.loop !55

.critedge.i:                                      ; preds = %.thread6.i, %nf_conntrack_get_ht.exit.i
  %.lcssa17.i = phi i64 [ %i.r, %nf_conntrack_get_ht.exit.i ], [ %i.cg, %.thread6.i ]
  %i.ci = lshr i64 %.lcssa17.i, 1
  %.not28.i = icmp eq i64 %i.ci, %4
  br i1 %.not28.i, label %____nf_conntrack_find.exit.thread, label %bb.o

bb.o:                                             ; preds = %.critedge.i
  %i.cj = load ptr, ptr %i.h, align 8
  %i.ck = getelementptr i8, ptr %i.cj, i64 44     ; 2 uses
  tail call void asm sideeffect "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ck, ptr elementtype(i32) %i.ck) #19, !srcloc !57
  br label %.backedge

____nf_conntrack_find.exit:                       ; preds = %nf_ct_key_equal.exit.i
  %i.cl = getelementptr i8, ptr %.02621.i, i64 55
  %i.cm = getelementptr i8, ptr %.02621.i, i64 16
  %i.cn = getelementptr i8, ptr %.02621.i, i64 24
  %i.co = getelementptr i8, ptr %.02621.i, i64 32
  %i.cp = getelementptr i8, ptr %.02621.i, i64 34
  %i.cq = getelementptr i8, ptr %.02621.i, i64 36
  %i.cr = getelementptr i8, ptr %.02621.i, i64 44
  %i.cs = getelementptr i8, ptr %.02621.i, i64 52
  %i.ct = getelementptr i8, ptr %.02621.i, i64 54
  %.not = icmp eq ptr %.02621.i, null
  br i1 %.not, label %____nf_conntrack_find.exit.thread, label %bb.p

bb.p:                                             ; preds = %____nf_conntrack_find.exit
  %i.cu = getelementptr i8, ptr %i.w, i64 -16     ; 5 uses
  %i.cv = load volatile i32, ptr %i.cu, align 4   ; 2 uses
  %.old1.not.i.i.i = icmp eq i32 %i.cv, 0
  br i1 %.old1.not.i.i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.p, %arch_atomic_try_cmpxchg.exit.i.i.i
  %.0.i.i.i = phi i32 [ %i.db, %arch_atomic_try_cmpxchg.exit.i.i.i ], [ %i.cv, %bb.p ] ; 3 uses
  %i.cw = add i32 %.0.i.i.i, 1
  %i.cx = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cu, i32 %i.cw, ptr elementtype(i32) %i.cu, i32 %.0.i.i.i) #19, !srcloc !38 ; 2 uses
  %i.cy = extractvalue { i8, i32 } %i.cx, 0       ; 2 uses
  %i.cz = icmp ult i8 %i.cy, 2
  tail call void @llvm.assume(i1 %i.cz)
  %i.da = trunc nuw i8 %i.cy to i1
  br i1 %i.da, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i, !prof !18

arch_atomic_try_cmpxchg.exit.i.i.i:               ; preds = %.preheader.i.i.i
  %i.db = extractvalue { i8, i32 } %i.cx, 1       ; 2 uses
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i, label %.preheader.i.i.i, !llvm.loop !2

arch_atomic_try_cmpxchg.exit.thread.i.i.i:        ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i, %.preheader.i.i.i, %bb.p
  %.2.i.i.i = phi i32 [ 0, %bb.p ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i ] ; 3 uses
  %i.dd = add i32 %.2.i.i.i, 1
  %i.de = or i32 %i.dd, %.2.i.i.i
  %.not.i.i.i = icmp sgt i32 %i.de, -1
  br i1 %.not.i.i.i, label %refcount_inc_not_zero.exit, label %bb.q, !prof !18

bb.q:                                             ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef %i.cu, i32 noundef 0) #18
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i, %bb.q
  %.not3 = icmp eq i32 %.2.i.i.i, 0
  br i1 %.not3, label %____nf_conntrack_find.exit.thread, label %bb.r, !prof !21

bb.r:                                             ; preds = %refcount_inc_not_zero.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !58
  %i.df = load i8, ptr %i.cl, align 1
  %i.dg = zext i8 %i.df to i64
  %.neg.i.i16 = mul nsw i64 %i.dg, -56
  %i.dh = getelementptr i8, ptr %.02621.i, i64 %.neg.i.i16 ; 2 uses
  %.val.i.i.i = load i64, ptr %1, align 8
  %.val6.i.i.i = load i64, ptr %i.a, align 8
  %.val7.i.i.i = load i64, ptr %i.cm, align 8
  %.val8.i.i.i = load i64, ptr %i.cn, align 8
  %i.di = icmp ne i64 %.val.i.i.i, %.val7.i.i.i
  %i.dj = icmp ne i64 %.val6.i.i.i, %.val8.i.i.i
  %.not11.i.i.i = or i1 %i.di, %i.dj
  br i1 %.not11.i.i.i, label %nf_ct_key_equal.exit.thread, label %bb.s, !prof !59

bb.s:                                             ; preds = %bb.r
  %i.dk = load i16, ptr %i.b, align 8
  %i.dl = load i16, ptr %i.co, align 8
  %i.dm = icmp eq i16 %i.dk, %i.dl
  br i1 %i.dm, label %__nf_ct_tuple_src_equal.exit.i.i, label %nf_ct_key_equal.exit.thread, !prof !60

__nf_ct_tuple_src_equal.exit.i.i:                 ; preds = %bb.s
  %i.dn = load i16, ptr %i.c, align 2
  %i.do = load i16, ptr %i.cp, align 2
  %i.dp = icmp eq i16 %i.dn, %i.do
  br i1 %i.dp, label %bb.t, label %nf_ct_key_equal.exit.thread, !prof !60

bb.t:                                             ; preds = %__nf_ct_tuple_src_equal.exit.i.i
  %.val.i4.i.i = load i64, ptr %i.d, align 8
  %.val6.i5.i.i = load i64, ptr %i.e, align 8
  %.val7.i6.i.i = load i64, ptr %i.cq, align 8
  %.val8.i7.i.i = load i64, ptr %i.cr, align 8
  %i.dq = icmp ne i64 %.val.i4.i.i, %.val7.i6.i.i
  %i.dr = icmp ne i64 %.val6.i5.i.i, %.val8.i7.i.i
  %.not11.i8.i.i = or i1 %i.dq, %i.dr
  br i1 %.not11.i8.i.i, label %nf_ct_key_equal.exit.thread, label %bb.u, !prof !59

bb.u:                                             ; preds = %bb.t
  %i.ds = load i16, ptr %i.f, align 4
  %i.dt = load i16, ptr %i.cs, align 4
  %i.du = icmp eq i16 %i.ds, %i.dt
  br i1 %i.du, label %nf_ct_tuple_equal.exit.i, label %nf_ct_key_equal.exit.thread, !prof !60

nf_ct_tuple_equal.exit.i:                         ; preds = %bb.u
  %i.dv = load i8, ptr %i.g, align 2
  %i.dw = load i8, ptr %i.ct, align 2
  %i.dx = icmp eq i8 %i.dv, %i.dw
  br i1 %i.dx, label %nf_ct_is_confirmed.exit.i, label %nf_ct_key_equal.exit.thread, !prof !60

nf_ct_is_confirmed.exit.i:                        ; preds = %nf_ct_tuple_equal.exit.i
  %i.dy = getelementptr i8, ptr %i.dh, i64 112
  %i.dz = load volatile i64, ptr %i.dy, align 8
  %i.ea = and i64 %i.dz, 8
  %.not.i17 = icmp eq i64 %i.ea, 0
  br i1 %.not.i17, label %nf_ct_key_equal.exit.thread, label %nf_ct_key_equal.exit, !prof !59

nf_ct_key_equal.exit:                             ; preds = %nf_ct_is_confirmed.exit.i
  %i.eb = getelementptr i8, ptr %i.dh, i64 120
  %.val.i = load ptr, ptr %i.eb, align 8
  %i.ec = icmp eq ptr %0, %.val.i
  br i1 %i.ec, label %____nf_conntrack_find.exit.thread, label %nf_ct_key_equal.exit.thread, !prof !61

nf_ct_key_equal.exit.thread:                      ; preds = %bb.r, %bb.s, %bb.t, %bb.u, %__nf_ct_tuple_src_equal.exit.i.i, %nf_ct_tuple_equal.exit.i, %nf_ct_is_confirmed.exit.i, %nf_ct_key_equal.exit
  tail call fastcc void @nf_ct_put(ptr noundef %i.cu) #20, !srcloc !62
  br label %____nf_conntrack_find.exit.thread

____nf_conntrack_find.exit.thread:                ; preds = %.critedge.i, %____nf_conntrack_find.exit, %nf_ct_key_equal.exit.thread, %refcount_inc_not_zero.exit, %nf_ct_key_equal.exit
  %.014 = phi ptr [ %.02621.i, %nf_ct_key_equal.exit ], [ null, %refcount_inc_not_zero.exit ], [ null, %nf_ct_key_equal.exit.thread ], [ null, %____nf_conntrack_find.exit ], [ null, %.critedge.i ]
  ret ptr %.014
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -28, 1) i32 @nf_conntrack_hash_check_insert(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.siphash_key_t, align 8      ; 6 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %struct.siphash_key_t, align 8      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 136
  %.val = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.d = tail call i64 asm "lea 0(%rip), $0", "=r,~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !29
  tail call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, i32 512, ptr nonnull elementtype(i32) @__preempt_count) #19, !srcloc !30
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !31
  %i.e = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.f = getelementptr i8, ptr %.val, i64 648     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %hash_conntrack.exit60, %bb.a
  %i.j = load volatile i32, ptr @nf_conntrack_generation, align 4 ; 2 uses
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !32
  %i.k = and i32 %i.j, 1
  %.not93 = icmp eq i32 %i.k, 0
  br i1 %.not93, label %._crit_edge, label %.lr.ph, !prof !33

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !34
  %i.l = load volatile i32, ptr @nf_conntrack_generation, align 4 ; 2 uses
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !32
  %i.m = and i32 %i.l, 1
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !prof !35, !llvm.loop !63

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.lcssa86 = phi i32 [ %i.j, %bb.b ], [ %i.l, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !19
  callbr void asm sideeffect "1:jmp ${2:l}\0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @hash_conntrack_raw.___once_key, i1 false) #19
          to label %hash_conntrack.exit [label %bb.c], !srcloc !22

bb.c:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 0, ptr %i.b, align 8, !annotation !19
  %i.n = call zeroext i1 @__do_once_start(ptr noundef nonnull @hash_conntrack_raw.___done, ptr noundef nonnull %i.b) #18
  br i1 %i.n, label %bb.d, label %bb.e, !prof !21

bb.d:                                             ; preds = %bb.c
  call void @get_random_bytes(ptr noundef nonnull @nf_conntrack_hash_rnd, i64 noundef 16) #18
  call void @__do_once_done(ptr noundef nonnull @hash_conntrack_raw.___done, ptr noundef nonnull @hash_conntrack_raw.___once_key, ptr noundef nonnull %i.b, ptr noundef null) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %hash_conntrack.exit

hash_conntrack.exit:                              ; preds = %._crit_edge, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) @nf_conntrack_hash_rnd, i64 16, i1 false)
  %.val.i.i = load i32, ptr %i.f, align 8
  %i.o = zext i32 %.val.i.i to i64
  %i.p = load i64, ptr %i.g, align 8
  %i.q = xor i64 %i.p, %i.o
  store i64 %i.q, ptr %i.g, align 8
  %i.r = call i64 @__siphash_unaligned(ptr noundef %i.e, i64 noundef 39, ptr noundef nonnull %2) #18
  %3 = trunc i64 %i.r to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.s = load i32, ptr @nf_conntrack_htable_size, align 4
  %4 = call range(i32 0, -1) i32 @llvm.umulh.i32(i32 %3, i32 %i.s) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !19
  callbr void asm sideeffect "1:jmp ${2:l}\0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @hash_conntrack_raw.___once_key, i1 false) #19
          to label %hash_conntrack.exit60 [label %bb.f], !srcloc !22

bb.f:                                             ; preds = %hash_conntrack.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 0, ptr %i.a, align 8, !annotation !19
  %i.t = call zeroext i1 @__do_once_start(ptr noundef nonnull @hash_conntrack_raw.___done, ptr noundef nonnull %i.a) #18
  br i1 %i.t, label %bb.g, label %bb.h, !prof !21

bb.g:                                             ; preds = %bb.f
  call void @get_random_bytes(ptr noundef nonnull @nf_conntrack_hash_rnd, i64 noundef 16) #18
  call void @__do_once_done(ptr noundef nonnull @hash_conntrack_raw.___done, ptr noundef nonnull @hash_conntrack_raw.___once_key, ptr noundef nonnull %i.a, ptr noundef null) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %hash_conntrack.exit60

hash_conntrack.exit60:                            ; preds = %hash_conntrack.exit, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) @nf_conntrack_hash_rnd, i64 16, i1 false)
  %.val.i.i59 = load i32, ptr %i.f, align 8
  %i.u = zext i32 %.val.i.i59 to i64
  %i.v = load i64, ptr %i.i, align 8
  %i.w = xor i64 %i.v, %i.u
  store i64 %i.w, ptr %i.i, align 8
  %i.x = call i64 @__siphash_unaligned(ptr noundef %i.h, i64 noundef 39, ptr noundef nonnull %1) #18
  %5 = trunc i64 %i.x to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %i.y = load i32, ptr @nf_conntrack_htable_size, align 4
  %6 = call range(i32 0, -1) i32 @llvm.umulh.i32(i32 %5, i32 %i.y) ; 4 uses
  %i.z = call fastcc zeroext i1 @nf_conntrack_double_lock(i32 noundef %4, i32 noundef %6, i32 noundef %.lcssa86) #20, !srcloc !67
  br i1 %i.z, label %bb.b, label %.preheader, !llvm.loop !64

.preheader:                                       ; preds = %hash_conntrack.exit60, %.preheader
  %i.aa = call zeroext i8 @get_random_u8() #18
  %i.ab = zext i8 %i.aa to i32
  %i.ac = mul nuw nsw i32 %i.ab, 30               ; 2 uses
  %i.ad = and i32 %i.ac, 240
  %.not.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.not.i, label %.preheader, label %get_random_u32_below.exit

get_random_u32_below.exit:                        ; preds = %.preheader
  %i.ae = lshr i32 %i.ac, 8                       ; 2 uses
  %i.af = load ptr, ptr @nf_conntrack_hash, align 8 ; 2 uses
  %7 = zext i32 %4 to i64                         ; 2 uses
  %i.ag = getelementptr [8 x i8], ptr %i.af, i64 %7
  %.05394 = load ptr, ptr %i.ag, align 8          ; 2 uses
  %i.ah = ptrtoint ptr %.05394 to i64
  %i.ai = and i64 %i.ah, 1
  %.not5795 = icmp eq i64 %i.ai, 0
  br i1 %.not5795, label %.lr.ph98, label %.critedge

.lr.ph98:                                         ; preds = %get_random_u32_below.exit
  %.val.i.i.i = load i64, ptr %i.e, align 8
  %i.aj = getelementptr i8, ptr %0, i64 40
  %.val6.i.i.i = load i64, ptr %i.aj, align 8
  %i.ak = getelementptr i8, ptr %0, i64 48
  %i.al = getelementptr i8, ptr %0, i64 50
  %i.am = getelementptr i8, ptr %0, i64 52
  %i.an = getelementptr i8, ptr %0, i64 60
  %i.ao = getelementptr i8, ptr %0, i64 68
  %i.ap = getelementptr i8, ptr %0, i64 70
  %i.aq = add nuw nsw i32 %i.ae, 51
  br label %bb.j

bb.i:                                             ; preds = %nf_ct_key_equal.exit.thread
  %i.ar = add nuw nsw i32 %.05496, 1
  %.053 = load ptr, ptr %.05397, align 8          ; 2 uses
  %i.as = ptrtoint ptr %.053 to i64
  %i.at = and i64 %i.as, 1
  %.not57 = icmp eq i64 %i.at, 0
  br i1 %.not57, label %bb.j, label %.critedge, !llvm.loop !65

bb.j:                                             ; preds = %.lr.ph98, %bb.i
  %.05397 = phi ptr [ %.05394, %.lr.ph98 ], [ %.053, %bb.i ] ; 11 uses
  %.05496 = phi i32 [ 0, %.lr.ph98 ], [ %i.ar, %bb.i ] ; 2 uses
  %i.au = getelementptr i8, ptr %.05397, i64 55
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i64
  %.neg.i.i = mul nsw i64 %i.aw, -56
  %i.ax = getelementptr i8, ptr %.05397, i64 %.neg.i.i ; 2 uses
  %i.ay = getelementptr i8, ptr %.05397, i64 16
  %.val7.i.i.i = load i64, ptr %i.ay, align 8
  %i.az = getelementptr i8, ptr %.05397, i64 24
  %.val8.i.i.i = load i64, ptr %i.az, align 8
  %i.ba = icmp ne i64 %.val.i.i.i, %.val7.i.i.i
  %i.bb = icmp ne i64 %.val6.i.i.i, %.val8.i.i.i
  %.not11.i.i.i = or i1 %i.ba, %i.bb
  br i1 %.not11.i.i.i, label %nf_ct_key_equal.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = load i16, ptr %i.ak, align 8
  %i.bd = getelementptr i8, ptr %.05397, i64 32
  %i.be = load i16, ptr %i.bd, align 8
  %i.bf = icmp eq i16 %i.bc, %i.be
  br i1 %i.bf, label %__nf_ct_tuple_src_equal.exit.i.i, label %nf_ct_key_equal.exit.thread

__nf_ct_tuple_src_equal.exit.i.i:                 ; preds = %bb.k
  %i.bg = load i16, ptr %i.al, align 2
  %i.bh = getelementptr i8, ptr %.05397, i64 34
  %i.bi = load i16, ptr %i.bh, align 2
  %i.bj = icmp eq i16 %i.bg, %i.bi
  br i1 %i.bj, label %bb.l, label %nf_ct_key_equal.exit.thread

bb.l:                                             ; preds = %__nf_ct_tuple_src_equal.exit.i.i
  %i.bk = getelementptr i8, ptr %.05397, i64 36
  %.val.i4.i.i = load i64, ptr %i.am, align 8
  %.val6.i5.i.i = load i64, ptr %i.an, align 8
  %.val7.i6.i.i = load i64, ptr %i.bk, align 8
  %i.bl = getelementptr i8, ptr %.05397, i64 44
  %.val8.i7.i.i = load i64, ptr %i.bl, align 8
  %i.bm = icmp ne i64 %.val.i4.i.i, %.val7.i6.i.i
  %i.bn = icmp ne i64 %.val6.i5.i.i, %.val8.i7.i.i
  %.not11.i8.i.i = or i1 %i.bm, %i.bn
  br i1 %.not11.i8.i.i, label %nf_ct_key_equal.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = load i16, ptr %i.ao, align 4
  %i.bp = getelementptr i8, ptr %.05397, i64 52
  %i.bq = load i16, ptr %i.bp, align 4
  %i.br = icmp eq i16 %i.bo, %i.bq
  br i1 %i.br, label %nf_ct_tuple_equal.exit.i, label %nf_ct_key_equal.exit.thread

nf_ct_tuple_equal.exit.i:                         ; preds = %bb.m
  %i.bs = load i8, ptr %i.ap, align 2
  %i.bt = getelementptr i8, ptr %.05397, i64 54
  %i.bu = load i8, ptr %i.bt, align 2
  %i.bv = icmp eq i8 %i.bs, %i.bu
  br i1 %i.bv, label %nf_ct_is_confirmed.exit.i, label %nf_ct_key_equal.exit.thread

nf_ct_is_confirmed.exit.i:                        ; preds = %nf_ct_tuple_equal.exit.i
  %i.bw = getelementptr i8, ptr %i.ax, i64 112
  %i.bx = load volatile i64, ptr %i.bw, align 8
  %i.by = and i64 %i.bx, 8
  %.not.i = icmp eq i64 %i.by, 0
  br i1 %.not.i, label %nf_ct_key_equal.exit.thread, label %nf_ct_key_equal.exit

nf_ct_key_equal.exit:                             ; preds = %nf_ct_is_confirmed.exit.i
  %i.bz = getelementptr i8, ptr %i.ax, i64 120
  %.val.i = load ptr, ptr %i.bz, align 8
  %i.ca = icmp eq ptr %.val, %.val.i
  br i1 %i.ca, label %.loopexit, label %nf_ct_key_equal.exit.thread

nf_ct_key_equal.exit.thread:                      ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %__nf_ct_tuple_src_equal.exit.i.i, %nf_ct_tuple_equal.exit.i, %nf_ct_is_confirmed.exit.i, %nf_ct_key_equal.exit
  %exitcond = icmp eq i32 %.05496, %i.aq
  br i1 %exitcond, label %.loopexit83, label %bb.i

.critedge:                                        ; preds = %bb.i, %get_random_u32_below.exit
  %8 = zext i32 %6 to i64                         ; 2 uses
  %i.cb = getelementptr [8 x i8], ptr %i.af, i64 %8
  %.199 = load ptr, ptr %i.cb, align 8            ; 2 uses
  %i.cc = ptrtoint ptr %.199 to i64
  %i.cd = and i64 %i.cc, 1
  %.not58100 = icmp eq i64 %i.cd, 0
  br i1 %.not58100, label %.lr.ph103, label %.critedge2

.lr.ph103:                                        ; preds = %.critedge
  %.val.i.i.i62 = load i64, ptr %i.h, align 8
  %i.ce = getelementptr i8, ptr %0, i64 96
  %.val6.i.i.i63 = load i64, ptr %i.ce, align 8
  %i.cf = getelementptr i8, ptr %0, i64 104
  %i.cg = getelementptr i8, ptr %0, i64 106
  %i.ch = getelementptr i8, ptr %0, i64 108
  %i.ci = getelementptr i8, ptr %0, i64 116
  %i.cj = getelementptr i8, ptr %0, i64 124
  %i.ck = getelementptr i8, ptr %0, i64 126
  %i.cl = add nuw nsw i32 %i.ae, 51
  br label %bb.o

bb.n:                                             ; preds = %nf_ct_key_equal.exit79.thread
  %i.cm = add nuw nsw i32 %.155101, 1
  %.1 = load ptr, ptr %.1102, align 8             ; 2 uses
  %i.cn = ptrtoint ptr %.1 to i64
  %i.co = and i64 %i.cn, 1
  %.not58 = icmp eq i64 %i.co, 0
  br i1 %.not58, label %bb.o, label %.critedge2, !llvm.loop !66

bb.o:                                             ; preds = %.lr.ph103, %bb.n
  %.1102 = phi ptr [ %.199, %.lr.ph103 ], [ %.1, %bb.n ] ; 11 uses
  %.155101 = phi i32 [ 0, %.lr.ph103 ], [ %i.cm, %bb.n ] ; 2 uses
  %i.cp = getelementptr i8, ptr %.1102, i64 55
  %i.cq = load i8, ptr %i.cp, align 1
  %i.cr = zext i8 %i.cq to i64
  %.neg.i.i61 = mul nsw i64 %i.cr, -56
  %i.cs = getelementptr i8, ptr %.1102, i64 %.neg.i.i61 ; 2 uses
  %i.ct = getelementptr i8, ptr %.1102, i64 16
  %.val7.i.i.i64 = load i64, ptr %i.ct, align 8
  %i.cu = getelementptr i8, ptr %.1102, i64 24
  %.val8.i.i.i65 = load i64, ptr %i.cu, align 8
  %i.cv = icmp ne i64 %.val.i.i.i62, %.val7.i.i.i64
  %i.cw = icmp ne i64 %.val6.i.i.i63, %.val8.i.i.i65
  %.not11.i.i.i66 = or i1 %i.cv, %i.cw
  br i1 %.not11.i.i.i66, label %nf_ct_key_equal.exit79.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cx = load i16, ptr %i.cf, align 8
  %i.cy = getelementptr i8, ptr %.1102, i64 32
  %i.cz = load i16, ptr %i.cy, align 8
  %i.da = icmp eq i16 %i.cx, %i.cz
  br i1 %i.da, label %__nf_ct_tuple_src_equal.exit.i.i67, label %nf_ct_key_equal.exit79.thread

__nf_ct_tuple_src_equal.exit.i.i67:               ; preds = %bb.p
  %i.db = load i16, ptr %i.cg, align 2
  %i.dc = getelementptr i8, ptr %.1102, i64 34
  %i.dd = load i16, ptr %i.dc, align 2
  %i.de = icmp eq i16 %i.db, %i.dd
  br i1 %i.de, label %bb.q, label %nf_ct_key_equal.exit79.thread

bb.q:                                             ; preds = %__nf_ct_tuple_src_equal.exit.i.i67
  %i.df = getelementptr i8, ptr %.1102, i64 36
  %.val.i4.i.i68 = load i64, ptr %i.ch, align 8
  %.val6.i5.i.i69 = load i64, ptr %i.ci, align 8
  %.val7.i6.i.i70 = load i64, ptr %i.df, align 8
  %i.dg = getelementptr i8, ptr %.1102, i64 44
  %.val8.i7.i.i71 = load i64, ptr %i.dg, align 8
  %i.dh = icmp ne i64 %.val.i4.i.i68, %.val7.i6.i.i70
  %i.di = icmp ne i64 %.val6.i5.i.i69, %.val8.i7.i.i71
  %.not11.i8.i.i72 = or i1 %i.dh, %i.di
  br i1 %.not11.i8.i.i72, label %nf_ct_key_equal.exit79.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dj = load i16, ptr %i.cj, align 4
  %i.dk = getelementptr i8, ptr %.1102, i64 52
  %i.dl = load i16, ptr %i.dk, align 4
  %i.dm = icmp eq i16 %i.dj, %i.dl
  br i1 %i.dm, label %nf_ct_tuple_equal.exit.i73, label %nf_ct_key_equal.exit79.thread

nf_ct_tuple_equal.exit.i73:                       ; preds = %bb.r
  %i.dn = load i8, ptr %i.ck, align 2
  %i.do = getelementptr i8, ptr %.1102, i64 54
  %i.dp = load i8, ptr %i.do, align 2
  %i.dq = icmp eq i8 %i.dn, %i.dp
  br i1 %i.dq, label %nf_ct_is_confirmed.exit.i75, label %nf_ct_key_equal.exit79.thread

nf_ct_is_confirmed.exit.i75:                      ; preds = %nf_ct_tuple_equal.exit.i73
  %i.dr = getelementptr i8, ptr %i.cs, i64 112
  %i.ds = load volatile i64, ptr %i.dr, align 8
  %i.dt = and i64 %i.ds, 8
  %.not.i77 = icmp eq i64 %i.dt, 0
  br i1 %.not.i77, label %nf_ct_key_equal.exit79.thread, label %nf_ct_key_equal.exit79

nf_ct_key_equal.exit79:                           ; preds = %nf_ct_is_confirmed.exit.i75
  %i.du = getelementptr i8, ptr %i.cs, i64 120
  %.val.i78 = load ptr, ptr %i.du, align 8
  %i.dv = icmp eq ptr %.val, %.val.i78
  br i1 %i.dv, label %.loopexit, label %nf_ct_key_equal.exit79.thread

nf_ct_key_equal.exit79.thread:                    ; preds = %bb.o, %bb.p, %bb.q, %bb.r, %__nf_ct_tuple_src_equal.exit.i.i67, %nf_ct_tuple_equal.exit.i73, %nf_ct_is_confirmed.exit.i75, %nf_ct_key_equal.exit79
  %exitcond111 = icmp eq i32 %.155101, %i.cl
  br i1 %exitcond111, label %.loopexit83, label %bb.n

.critedge2:                                       ; preds = %bb.n, %.critedge
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !68
  store volatile i32 2, ptr %0, align 8
  %i.dw = getelementptr i8, ptr %0, i64 16        ; 3 uses
  %i.dx = load ptr, ptr @nf_conntrack_hash, align 8
  %i.dy = getelementptr [8 x i8], ptr %i.dx, i64 %7 ; 3 uses
  %i.dz = load ptr, ptr %i.dy, align 8            ; 3 uses
  store volatile ptr %i.dz, ptr %i.dw, align 8
  %i.ea = getelementptr i8, ptr %0, i64 24
  store volatile ptr %i.dy, ptr %i.ea, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !41
  store volatile ptr %i.dw, ptr %i.dy, align 8
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = and i64 %i.eb, 1
  %.not.i.i = icmp eq i64 %i.ec, 0
  br i1 %.not.i.i, label %bb.s, label %hlist_nulls_add_head_rcu.exit.i

bb.s:                                             ; preds = %.critedge2
  %i.ed = getelementptr i8, ptr %i.dz, i64 8
  store volatile ptr %i.dw, ptr %i.ed, align 8
  br label %hlist_nulls_add_head_rcu.exit.i

hlist_nulls_add_head_rcu.exit.i:                  ; preds = %bb.s, %.critedge2
  %i.ee = getelementptr i8, ptr %0, i64 72        ; 3 uses
  %i.ef = load ptr, ptr @nf_conntrack_hash, align 8
  %i.eg = getelementptr [8 x i8], ptr %i.ef, i64 %8 ; 3 uses
  %i.eh = load ptr, ptr %i.eg, align 8            ; 3 uses
  store volatile ptr %i.eh, ptr %i.ee, align 8
  %i.ei = getelementptr i8, ptr %0, i64 80
  store volatile ptr %i.eg, ptr %i.ei, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !41
  store volatile ptr %i.ee, ptr %i.eg, align 8
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = and i64 %i.ej, 1
  %.not.i3.i = icmp eq i64 %i.ek, 0
  br i1 %.not.i3.i, label %bb.t, label %__nf_conntrack_hash_insert.exit

bb.t:                                             ; preds = %hlist_nulls_add_head_rcu.exit.i
  %i.el = getelementptr i8, ptr %i.eh, i64 8
  store volatile ptr %i.ee, ptr %i.el, align 8
  br label %__nf_conntrack_hash_insert.exit

__nf_conntrack_hash_insert.exit:                  ; preds = %hlist_nulls_add_head_rcu.exit.i, %bb.t
  %9 = and i32 %4, 1023                           ; 2 uses
  %10 = and i32 %6, 1023                          ; 2 uses
  %11 = zext nneg i32 %9 to i64
  %12 = getelementptr [4 x i8], ptr @nf_conntrack_locks, i64 %11
  call void @_raw_spin_unlock(ptr noundef %12) #18
  %.not.i80 = icmp eq i32 %9, %10
  br i1 %.not.i80, label %nf_conntrack_double_unlock.exit, label %bb.u

bb.u:                                             ; preds = %__nf_conntrack_hash_insert.exit
  %13 = zext nneg i32 %10 to i64
  %i.em = getelementptr [4 x i8], ptr @nf_conntrack_locks, i64 %13
  call void @_raw_spin_unlock(ptr noundef %i.em) #18
  br label %nf_conntrack_double_unlock.exit

nf_conntrack_double_unlock.exit:                  ; preds = %__nf_conntrack_hash_insert.exit, %bb.u
  %i.en = getelementptr i8, ptr %.val, i64 2888
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = getelementptr i8, ptr %i.eo, i64 8      ; 2 uses
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ep, ptr elementtype(i32) %i.ep) #19, !srcloc !69
  br label %nf_conntrack_double_unlock.exit82

.loopexit83:                                      ; preds = %nf_ct_key_equal.exit.thread, %nf_ct_key_equal.exit79.thread
  %i.eq = getelementptr i8, ptr %.val, i64 2888
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = getelementptr i8, ptr %i.er, i64 48     ; 2 uses
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.es, ptr elementtype(i32) %i.es) #19, !srcloc !70
  br label %.loopexit

.loopexit:                                        ; preds = %nf_ct_key_equal.exit, %nf_ct_key_equal.exit79, %.loopexit83
  %.056 = phi i32 [ -17, %nf_ct_key_equal.exit79 ], [ -28, %.loopexit83 ], [ -17, %nf_ct_key_equal.exit ] ; 2 uses
  %14 = and i32 %4, 1023                          ; 2 uses
  %15 = and i32 %6, 1023                          ; 2 uses
  %16 = zext nneg i32 %14 to i64
  %17 = getelementptr [4 x i8], ptr @nf_conntrack_locks, i64 %16
  call void @_raw_spin_unlock(ptr noundef %17) #18
  %.not.i81 = icmp eq i32 %14, %15
  br i1 %.not.i81, label %nf_conntrack_double_unlock.exit82, label %bb.v

bb.v:                                             ; preds = %.loopexit
  %18 = zext nneg i32 %15 to i64
  %i.et = getelementptr [4 x i8], ptr @nf_conntrack_locks, i64 %18
  call void @_raw_spin_unlock(ptr noundef %i.et) #18
  br label %nf_conntrack_double_unlock.exit82

nf_conntrack_double_unlock.exit82:                ; preds = %bb.v, %.loopexit, %nf_conntrack_double_unlock.exit
  %.0 = phi i32 [ 0, %nf_conntrack_double_unlock.exit ], [ %.056, %.loopexit ], [ %.056, %bb.v ]
  call void @__local_bh_enable_ip(i64 noundef %i.d, i32 noundef 512) #18
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noundef zeroext i1 @nf_conntrack_double_lock(i32 noundef range(i32 0, -1) %0, i32 noundef range(i32 0, -1) %1, i32 noundef %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = and i32 %0, 1023                         ; 7 uses
  %i.b = and i32 %1, 1023                         ; 6 uses
  %.not = icmp samesign ugt i32 %i.a, %i.b
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %i.a to i64
  %i.d = getelementptr [4 x i8], ptr @nf_conntrack_locks, i64 %i.c ; 3 uses
  tail call void @_raw_spin_lock(ptr noundef %i.d) #18
  %i.e = load volatile i8, ptr @nf_conntrack_locks_all, align 1, !range !15, !noundef !16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !17
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %nf_conntrack_lock.exit, label %bb.c, !prof !18

bb.c:                                             ; preds = %bb.b
  tail call void @_raw_spin_unlock(ptr noundef %i.d) #18
  tail call void @_raw_spin_lock(ptr noundef nonnull @nf_conntrack_locks_all_lock) #18
  tail call void @_raw_spin_lock(ptr noundef %i.d) #18
  tail call void @_raw_spin_unlock(ptr noundef nonnull @nf_conntrack_locks_all_lock) #18
  br label %nf_conntrack_lock.exit

nf_conntrack_lock.exit:                           ; preds = %bb.b, %bb.c
  %.not15 = icmp eq i32 %i.a, %i.b
  br i1 %.not15, label %bb.f, label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.g = zext nneg i32 %i.b to i64
  %i.h = getelementptr [4 x i8], ptr @nf_conntrack_locks, i64 %i.g ; 3 uses
  tail call void @_raw_spin_lock(ptr noundef %i.h) #18
  %i.i = load volatile i8, ptr @nf_conntrack_locks_all, align 1, !range !15, !noundef !16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !17
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %.sink.split, label %bb.e, !prof !18

bb.e:                                             ; preds = %bb.d
  tail call void @_raw_spin_unlock(ptr noundef %i.h) #18
  tail call void @_raw_spin_lock(ptr noundef nonnull @nf_conntrack_locks_all_lock) #18
  tail call void @_raw_spin_lock(ptr noundef %i.h) #18
  tail call void @_raw_spin_unlock(ptr noundef nonnull @nf_conntrack_locks_all_lock) #18
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.d, %nf_conntrack_lock.exit
  %.sink = phi i32 [ %i.b, %nf_conntrack_lock.exit ], [ %i.a, %bb.d ], [ %i.a, %bb.e ]
  %i.k = zext nneg i32 %.sink to i64
  %i.l = getelementptr [4 x i8], ptr @nf_conntrack_locks, i64 %i.k
  tail call void @_raw_spin_lock(ptr noundef %i.l) #18
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %nf_conntrack_lock.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !37
  %i.m = load volatile i32, ptr @nf_conntrack_generation, align 4
  %i.n = icmp ne i32 %i.m, %2                     ; 2 uses
  br i1 %i.n, label %bb.g, label %nf_conntrack_double_unlock.exit

bb.g:                                             ; preds = %bb.f
  %i.o = zext nneg i32 %i.a to i64
  %i.p = getelementptr [4 x i8], ptr @nf_conntrack_locks, i64 %i.o
  tail call void @_raw_spin_unlock(ptr noundef %i.p) #18
  %.not.i = icmp eq i32 %i.a, %i.b
  br i1 %.not.i, label %nf_conntrack_double_unlock.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = zext nneg i32 %i.b to i64
  %i.r = getelementptr [4 x i8], ptr @nf_conntrack_locks, i64 %i.q
  tail call void @_raw_spin_unlock(ptr noundef %i.r) #18
  br label %nf_conntrack_double_unlock.exit

nf_conntrack_double_unlock.exit:                  ; preds = %bb.h, %bb.g, %bb.f
  ret i1 %i.n
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @nf_conntrack_double_unlock(i32 noundef range(i32 0, -1) %0, i32 noundef range(i32 0, -1) %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = and i32 %0, 1023                         ; 2 uses
  %i.b = and i32 %1, 1023                         ; 2 uses
  %i.c = zext nneg i32 %i.a to i64
  %i.d = getelementptr [4 x i8], ptr @nf_conntrack_locks, i64 %i.c
  tail call void @_raw_spin_unlock(ptr noundef %i.d) #18
  %.not = icmp eq i32 %i.a, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext nneg i32 %i.b to i64
  %i.f = getelementptr [4 x i8], ptr @nf_conntrack_locks, i64 %i.e
  tail call void @_raw_spin_unlock(ptr noundef %i.f) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @nf_ct_acct_add(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 176
  %.val = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i, label %nf_conn_acct_find.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %.val, i64 3
  %i.c = load i8, ptr %i.b, align 1               ; 2 uses
  %.not1.i.i = icmp eq i8 %i.c, 0
  br i1 %.not1.i.i, label %nf_conn_acct_find.exit.thread, label %nf_conn_acct_find.exit

nf_conn_acct_find.exit:                           ; preds = %bb.b
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr i8, ptr %.val, i64 %i.d    ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %nf_conn_acct_find.exit.thread, label %bb.c

bb.c:                                             ; preds = %nf_conn_acct_find.exit
  %i.f = zext i32 %2 to i64
  %i.g = zext i32 %1 to i64
  %i.h = getelementptr [16 x i8], ptr %i.e, i64 %i.g ; 3 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock addq $1, $0", "=*m,er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.h, i64 range(i64 0, 4294967296) %i.f, ptr elementtype(i64) %i.h) #19, !srcloc !42
  %i.i = zext i32 %3 to i64
  %i.j = getelementptr i8, ptr %i.h, i64 8        ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock addq $1, $0", "=*m,er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.j, i64 range(i64 0, 4294967296) %i.i, ptr elementtype(i64) %i.j) #19, !srcloc !42
  br label %nf_conn_acct_find.exit.thread

nf_conn_acct_find.exit.thread:                    ; preds = %bb.a, %bb.b, %bb.c, %nf_conn_acct_find.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 2) i32 @__nf_conntrack_confirm(ptr nofree noundef captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.siphash_key_t, align 8      ; 6 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 104
  %.val86 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.c = and i64 %.val86, -8
  %i.d = inttoptr i64 %i.c to ptr                 ; 26 uses
  %i.e = getelementptr i8, ptr %i.d, i64 136
  %.val = load ptr, ptr %i.e, align 8             ; 5 uses
  %i.f = and i64 %.val86, 7
  %i.g = icmp samesign ugt i64 %i.f, 2
  br i1 %i.g, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i64 asm "lea 0(%rip), $0", "=r,~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !29
  tail call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, i32 512, ptr nonnull elementtype(i32) @__preempt_count) #19, !srcloc !30
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !31
  %i.i = getelementptr i8, ptr %i.d, i64 80       ; 2 uses
  %i.j = getelementptr i8, ptr %i.d, i64 88       ; 2 uses
  %i.k = getelementptr i8, ptr %.val, i64 648
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %hash_conntrack.exit, %bb.b
  %i.m = load volatile i32, ptr @nf_conntrack_generation, align 4 ; 2 uses
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !32
  %i.n = and i32 %i.m, 1
  %.not129 = icmp eq i32 %i.n, 0
  br i1 %.not129, label %._crit_edge, label %.lr.ph, !prof !33

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !34
  %i.o = load volatile i32, ptr @nf_conntrack_generation, align 4 ; 2 uses
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !32
  %i.p = and i32 %i.o, 1
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !prof !35, !llvm.loop !71

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.lcssa122 = phi i32 [ %i.m, %bb.c ], [ %i.o, %.lr.ph ]
  %i.q = load i64, ptr %i.i, align 8
  %2 = trunc i64 %i.q to i32
  %3 = load i32, ptr @nf_conntrack_htable_size, align 4
  %4 = call range(i32 0, -1) i32 @llvm.umulh.i32(i32 %2, i32 %3) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !19
  callbr void asm sideeffect "1:jmp ${2:l}\0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @hash_conntrack_raw.___once_key, i1 false) #19
          to label %hash_conntrack.exit [label %bb.d], !srcloc !22

bb.d:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 0, ptr %i.a, align 8, !annotation !19
  %i.r = call zeroext i1 @__do_once_start(ptr noundef nonnull @hash_conntrack_raw.___done, ptr noundef nonnull %i.a) #18
  br i1 %i.r, label %bb.e, label %bb.f, !prof !21

bb.e:                                             ; preds = %bb.d
  call void @get_random_bytes(ptr noundef nonnull @nf_conntrack_hash_rnd, i64 noundef 16) #18
  call void @__do_once_done(ptr noundef nonnull @hash_conntrack_raw.___done, ptr noundef nonnull @hash_conntrack_raw.___once_key, ptr noundef nonnull %i.a, ptr noundef null) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %hash_conntrack.exit

hash_conntrack.exit:                              ; preds = %._crit_edge, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) @nf_conntrack_hash_rnd, i64 16, i1 false)
  %.val.i.i = load i32, ptr %i.k, align 8
  %i.s = zext i32 %.val.i.i to i64
  %i.t = load i64, ptr %i.l, align 8
  %i.u = xor i64 %i.t, %i.s
  store i64 %i.u, ptr %i.l, align 8
  %i.v = call i64 @__siphash_unaligned(ptr noundef %i.j, i64 noundef 39, ptr noundef nonnull %1) #18
  %5 = trunc i64 %i.v to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %i.w = load i32, ptr @nf_conntrack_htable_size, align 4
  %6 = call range(i32 0, -1) i32 @llvm.umulh.i32(i32 %5, i32 %i.w) ; 6 uses
  %i.x = call fastcc zeroext i1 @nf_conntrack_double_lock(i32 noundef %4, i32 noundef %6, i32 noundef %.lcssa122) #20, !srcloc !75
  br i1 %i.x, label %bb.c, label %nf_ct_is_confirmed.exit, !llvm.loop !72

nf_ct_is_confirmed.exit:                          ; preds = %hash_conntrack.exit
  %i.y = getelementptr i8, ptr %i.d, i64 128      ; 4 uses
  %i.z = load volatile i64, ptr %i.y, align 8
  %i.aa = and i64 %i.z, 8
  %.not78 = icmp eq i64 %i.aa, 0
  br i1 %.not78, label %nf_ct_is_dying.exit, label %bb.g, !prof !18

bb.g:                                             ; preds = %nf_ct_is_confirmed.exit
  call void asm sideeffect "1042: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1042b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1042) #19, !srcloc !76
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 1226, i32 2307, i64 16) #19, !srcloc !77
  call void asm sideeffect "1043: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1043b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1043) #19, !srcloc !78
  call fastcc void @nf_conntrack_double_unlock(i32 noundef %4, i32 noundef %6) #20, !srcloc !79
  br label %.sink.split

nf_ct_is_dying.exit:                              ; preds = %nf_ct_is_confirmed.exit
  %i.ab = load volatile i64, ptr %i.y, align 8
  %i.ac = and i64 %i.ab, 512
  %.not79 = icmp eq i64 %i.ac, 0
  br i1 %.not79, label %.preheader, label %bb.h, !prof !18

bb.h:                                             ; preds = %nf_ct_is_dying.exit
  %i.ad = getelementptr i8, ptr %.val, i64 2888
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr i8, ptr %i.ae, i64 12     ; 2 uses
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.af, ptr elementtype(i32) %i.af) #19, !srcloc !80
  br label %bb.w

.preheader:                                       ; preds = %nf_ct_is_dying.exit, %.preheader
  %i.ag = call zeroext i8 @get_random_u8() #18
  %i.ah = zext i8 %i.ag to i32
  %i.ai = mul nuw nsw i32 %i.ah, 30               ; 2 uses
  %i.aj = and i32 %i.ai, 240
  %.not.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.not.i, label %.preheader, label %get_random_u32_below.exit

get_random_u32_below.exit:                        ; preds = %.preheader
  %i.ak = lshr i32 %i.ai, 8                       ; 2 uses
  %i.al = load ptr, ptr @nf_conntrack_hash, align 8 ; 2 uses
  %7 = zext i32 %4 to i64                         ; 2 uses
  %i.am = getelementptr [8 x i8], ptr %i.al, i64 %7
  %.074130 = load ptr, ptr %i.am, align 8         ; 2 uses
  %i.an = ptrtoint ptr %.074130 to i64
  %i.ao = and i64 %i.an, 1
  %.not80131 = icmp eq i64 %i.ao, 0
  br i1 %.not80131, label %.lr.ph134, label %.critedge

.lr.ph134:                                        ; preds = %get_random_u32_below.exit
  %i.ap = getelementptr i8, ptr %i.d, i64 32
  %.val.i.i.i = load i64, ptr %i.ap, align 8
  %i.aq = getelementptr i8, ptr %i.d, i64 40
  %.val6.i.i.i = load i64, ptr %i.aq, align 8
  %i.ar = getelementptr i8, ptr %i.d, i64 48
  %i.as = getelementptr i8, ptr %i.d, i64 50
  %i.at = getelementptr i8, ptr %i.d, i64 52
  %i.au = getelementptr i8, ptr %i.d, i64 60
  %i.av = getelementptr i8, ptr %i.d, i64 68
  %i.aw = getelementptr i8, ptr %i.d, i64 70
  %i.ax = add nuw nsw i32 %i.ak, 51
  br label %bb.j

bb.i:                                             ; preds = %nf_ct_key_equal.exit.thread
  %i.ay = add nuw nsw i32 %.072132, 1
  %.074 = load ptr, ptr %.074133, align 8         ; 2 uses
  %i.az = ptrtoint ptr %.074 to i64
  %i.ba = and i64 %i.az, 1
  %.not80 = icmp eq i64 %i.ba, 0
  br i1 %.not80, label %bb.j, label %.critedge, !llvm.loop !73

bb.j:                                             ; preds = %.lr.ph134, %bb.i
  %.074133 = phi ptr [ %.074130, %.lr.ph134 ], [ %.074, %bb.i ] ; 12 uses
  %.072132 = phi i32 [ 0, %.lr.ph134 ], [ %i.ay, %bb.i ] ; 2 uses
  %i.bb = getelementptr i8, ptr %.074133, i64 55
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i64
  %.neg.i.i = mul nsw i64 %i.bd, -56
  %i.be = getelementptr i8, ptr %.074133, i64 %.neg.i.i ; 2 uses
  %i.bf = getelementptr i8, ptr %.074133, i64 16
  %.val7.i.i.i = load i64, ptr %i.bf, align 8
  %i.bg = getelementptr i8, ptr %.074133, i64 24
  %.val8.i.i.i = load i64, ptr %i.bg, align 8
  %i.bh = icmp ne i64 %.val.i.i.i, %.val7.i.i.i
  %i.bi = icmp ne i64 %.val6.i.i.i, %.val8.i.i.i
  %.not11.i.i.i = or i1 %i.bh, %i.bi
  br i1 %.not11.i.i.i, label %nf_ct_key_equal.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = load i16, ptr %i.ar, align 8
  %i.bk = getelementptr i8, ptr %.074133, i64 32
  %i.bl = load i16, ptr %i.bk, align 8
  %i.bm = icmp eq i16 %i.bj, %i.bl
  br i1 %i.bm, label %__nf_ct_tuple_src_equal.exit.i.i, label %nf_ct_key_equal.exit.thread

__nf_ct_tuple_src_equal.exit.i.i:                 ; preds = %bb.k
  %i.bn = load i16, ptr %i.as, align 2
  %i.bo = getelementptr i8, ptr %.074133, i64 34
  %i.bp = load i16, ptr %i.bo, align 2
  %i.bq = icmp eq i16 %i.bn, %i.bp
  br i1 %i.bq, label %bb.l, label %nf_ct_key_equal.exit.thread

bb.l:                                             ; preds = %__nf_ct_tuple_src_equal.exit.i.i
  %i.br = getelementptr i8, ptr %.074133, i64 36
  %.val.i4.i.i = load i64, ptr %i.at, align 8
  %.val6.i5.i.i = load i64, ptr %i.au, align 8
  %.val7.i6.i.i = load i64, ptr %i.br, align 8
  %i.bs = getelementptr i8, ptr %.074133, i64 44
  %.val8.i7.i.i = load i64, ptr %i.bs, align 8
  %i.bt = icmp ne i64 %.val.i4.i.i, %.val7.i6.i.i
  %i.bu = icmp ne i64 %.val6.i5.i.i, %.val8.i7.i.i
  %.not11.i8.i.i = or i1 %i.bt, %i.bu
  br i1 %.not11.i8.i.i, label %nf_ct_key_equal.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = load i16, ptr %i.av, align 4
  %i.bw = getelementptr i8, ptr %.074133, i64 52
  %i.bx = load i16, ptr %i.bw, align 4
  %i.by = icmp eq i16 %i.bv, %i.bx
  br i1 %i.by, label %nf_ct_tuple_equal.exit.i, label %nf_ct_key_equal.exit.thread

nf_ct_tuple_equal.exit.i:                         ; preds = %bb.m
  %i.bz = load i8, ptr %i.aw, align 2
  %i.ca = getelementptr i8, ptr %.074133, i64 54
  %i.cb = load i8, ptr %i.ca, align 2
  %i.cc = icmp eq i8 %i.bz, %i.cb
  br i1 %i.cc, label %nf_ct_is_confirmed.exit.i, label %nf_ct_key_equal.exit.thread

nf_ct_is_confirmed.exit.i:                        ; preds = %nf_ct_tuple_equal.exit.i
  %i.cd = getelementptr i8, ptr %i.be, i64 112
  %i.ce = load volatile i64, ptr %i.cd, align 8
  %i.cf = and i64 %i.ce, 8
  %.not.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i, label %nf_ct_key_equal.exit.thread, label %nf_ct_key_equal.exit

nf_ct_key_equal.exit:                             ; preds = %nf_ct_is_confirmed.exit.i
  %i.cg = getelementptr i8, ptr %i.be, i64 120
  %.val.i = load ptr, ptr %i.cg, align 8
  %i.ch = icmp eq ptr %.val, %.val.i
  br i1 %i.ch, label %.loopexit, label %nf_ct_key_equal.exit.thread

nf_ct_key_equal.exit.thread:                      ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %__nf_ct_tuple_src_equal.exit.i.i, %nf_ct_tuple_equal.exit.i, %nf_ct_is_confirmed.exit.i, %nf_ct_key_equal.exit
  %exitcond = icmp eq i32 %.072132, %i.ax
  br i1 %exitcond, label %.loopexit115, label %bb.i

.critedge:                                        ; preds = %bb.i, %get_random_u32_below.exit
  %8 = zext i32 %6 to i64                         ; 2 uses
  %i.ci = getelementptr [8 x i8], ptr %i.al, i64 %8
  %.175135 = load ptr, ptr %i.ci, align 8         ; 2 uses
  %i.cj = ptrtoint ptr %.175135 to i64
  %i.ck = and i64 %i.cj, 1
  %.not81136 = icmp eq i64 %i.ck, 0
  br i1 %.not81136, label %.lr.ph139, label %.critedge2

.lr.ph139:                                        ; preds = %.critedge
  %.val.i.i.i90 = load i64, ptr %i.j, align 8
  %i.cl = getelementptr i8, ptr %i.d, i64 96
  %.val6.i.i.i91 = load i64, ptr %i.cl, align 8
  %i.cm = getelementptr i8, ptr %i.d, i64 104
  %i.cn = getelementptr i8, ptr %i.d, i64 106
  %i.co = getelementptr i8, ptr %i.d, i64 108
  %i.cp = getelementptr i8, ptr %i.d, i64 116
  %i.cq = getelementptr i8, ptr %i.d, i64 124
  %i.cr = getelementptr i8, ptr %i.d, i64 126
  %i.cs = add nuw nsw i32 %i.ak, 51
  br label %bb.o

bb.n:                                             ; preds = %nf_ct_key_equal.exit107.thread
  %i.ct = add nuw nsw i32 %.1137, 1
  %.175 = load ptr, ptr %.175138, align 8         ; 2 uses
  %i.cu = ptrtoint ptr %.175 to i64
  %i.cv = and i64 %i.cu, 1
  %.not81 = icmp eq i64 %i.cv, 0
  br i1 %.not81, label %bb.o, label %.critedge2, !llvm.loop !74

bb.o:                                             ; preds = %.lr.ph139, %bb.n
  %.175138 = phi ptr [ %.175135, %.lr.ph139 ], [ %.175, %bb.n ] ; 12 uses
  %.1137 = phi i32 [ 0, %.lr.ph139 ], [ %i.ct, %bb.n ] ; 2 uses
  %i.cw = getelementptr i8, ptr %.175138, i64 55
  %i.cx = load i8, ptr %i.cw, align 1
  %i.cy = zext i8 %i.cx to i64
  %.neg.i.i89 = mul nsw i64 %i.cy, -56
  %i.cz = getelementptr i8, ptr %.175138, i64 %.neg.i.i89 ; 2 uses
  %i.da = getelementptr i8, ptr %.175138, i64 16
  %.val7.i.i.i92 = load i64, ptr %i.da, align 8
  %i.db = getelementptr i8, ptr %.175138, i64 24
  %.val8.i.i.i93 = load i64, ptr %i.db, align 8
  %i.dc = icmp ne i64 %.val.i.i.i90, %.val7.i.i.i92
  %i.dd = icmp ne i64 %.val6.i.i.i91, %.val8.i.i.i93
  %.not11.i.i.i94 = or i1 %i.dc, %i.dd
  br i1 %.not11.i.i.i94, label %nf_ct_key_equal.exit107.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.de = load i16, ptr %i.cm, align 8
  %i.df = getelementptr i8, ptr %.175138, i64 32
  %i.dg = load i16, ptr %i.df, align 8
  %i.dh = icmp eq i16 %i.de, %i.dg
  br i1 %i.dh, label %__nf_ct_tuple_src_equal.exit.i.i95, label %nf_ct_key_equal.exit107.thread

__nf_ct_tuple_src_equal.exit.i.i95:               ; preds = %bb.p
  %i.di = load i16, ptr %i.cn, align 2
  %i.dj = getelementptr i8, ptr %.175138, i64 34
  %i.dk = load i16, ptr %i.dj, align 2
  %i.dl = icmp eq i16 %i.di, %i.dk
  br i1 %i.dl, label %bb.q, label %nf_ct_key_equal.exit107.thread

bb.q:                                             ; preds = %__nf_ct_tuple_src_equal.exit.i.i95
  %i.dm = getelementptr i8, ptr %.175138, i64 36
  %.val.i4.i.i96 = load i64, ptr %i.co, align 8
  %.val6.i5.i.i97 = load i64, ptr %i.cp, align 8
  %.val7.i6.i.i98 = load i64, ptr %i.dm, align 8
  %i.dn = getelementptr i8, ptr %.175138, i64 44
  %.val8.i7.i.i99 = load i64, ptr %i.dn, align 8
  %i.do = icmp ne i64 %.val.i4.i.i96, %.val7.i6.i.i98
  %i.dp = icmp ne i64 %.val6.i5.i.i97, %.val8.i7.i.i99
  %.not11.i8.i.i100 = or i1 %i.do, %i.dp
  br i1 %.not11.i8.i.i100, label %nf_ct_key_equal.exit107.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dq = load i16, ptr %i.cq, align 4
  %i.dr = getelementptr i8, ptr %.175138, i64 52
  %i.ds = load i16, ptr %i.dr, align 4
  %i.dt = icmp eq i16 %i.dq, %i.ds
  br i1 %i.dt, label %nf_ct_tuple_equal.exit.i101, label %nf_ct_key_equal.exit107.thread

nf_ct_tuple_equal.exit.i101:                      ; preds = %bb.r
  %i.du = load i8, ptr %i.cr, align 2
  %i.dv = getelementptr i8, ptr %.175138, i64 54
  %i.dw = load i8, ptr %i.dv, align 2
  %i.dx = icmp eq i8 %i.du, %i.dw
  br i1 %i.dx, label %nf_ct_is_confirmed.exit.i103, label %nf_ct_key_equal.exit107.thread

nf_ct_is_confirmed.exit.i103:                     ; preds = %nf_ct_tuple_equal.exit.i101
  %i.dy = getelementptr i8, ptr %i.cz, i64 112
  %i.dz = load volatile i64, ptr %i.dy, align 8
  %i.ea = and i64 %i.dz, 8
  %.not.i105 = icmp eq i64 %i.ea, 0
  br i1 %.not.i105, label %nf_ct_key_equal.exit107.thread, label %nf_ct_key_equal.exit107

nf_ct_key_equal.exit107:                          ; preds = %nf_ct_is_confirmed.exit.i103
  %i.eb = getelementptr i8, ptr %i.cz, i64 120
  %.val.i106 = load ptr, ptr %i.eb, align 8
  %i.ec = icmp eq ptr %.val, %.val.i106
  br i1 %i.ec, label %.loopexit, label %nf_ct_key_equal.exit107.thread

nf_ct_key_equal.exit107.thread:                   ; preds = %bb.o, %bb.p, %bb.q, %bb.r, %__nf_ct_tuple_src_equal.exit.i.i95, %nf_ct_tuple_equal.exit.i101, %nf_ct_is_confirmed.exit.i103, %nf_ct_key_equal.exit107
  %exitcond151 = icmp eq i32 %.1137, %i.cs
  br i1 %exitcond151, label %.loopexit115, label %bb.n

.loopexit115:                                     ; preds = %nf_ct_key_equal.exit.thread, %nf_ct_key_equal.exit107.thread
  %i.ed = getelementptr i8, ptr %.val, i64 2888   ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = getelementptr i8, ptr %i.ee, i64 48     ; 2 uses
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ef, ptr elementtype(i32) %i.ef) #19, !srcloc !81
  %i.eg = load ptr, ptr %i.ed, align 8
  %i.eh = getelementptr i8, ptr %i.eg, i64 12     ; 2 uses
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.eh, ptr elementtype(i32) %i.eh) #19, !srcloc !82
  br label %bb.w

.critedge2:                                       ; preds = %bb.n, %.critedge
  %i.ei = load volatile i64, ptr @jiffies, align 64
  %i.ej = trunc i64 %i.ei to i32
  %i.ek = getelementptr i8, ptr %i.d, i64 8       ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8
  %i.em = add i32 %i.el, %i.ej
  store i32 %i.em, ptr %i.ek, align 8
  %i.en = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.d, i32 1, ptr elementtype(i32) %i.d) #19, !srcloc !24 ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.en, 0
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i.i, label %bb.s, !prof !21

bb.s:                                             ; preds = %.critedge2
  %i.eo = add i32 %i.en, 1
  %i.ep = or i32 %i.eo, %i.en
  %.not10.i.i.i.i = icmp sgt i32 %i.ep, -1
  br i1 %.not10.i.i.i.i, label %__nf_conntrack_insert_prepare.exit, label %.sink.split.i.i.i.i, !prof !18

.sink.split.i.i.i.i:                              ; preds = %bb.s, %.critedge2
  %.sink.i.i.i.i = phi i32 [ 2, %.critedge2 ], [ 1, %bb.s ]
  call void @refcount_warn_saturate(ptr noundef %i.d, i32 noundef %.sink.i.i.i.i) #18
  br label %__nf_conntrack_insert_prepare.exit

__nf_conntrack_insert_prepare.exit:               ; preds = %bb.s, %.sink.split.i.i.i.i
  %i.eq = getelementptr i8, ptr %i.d, i64 16      ; 3 uses
  %i.er = load ptr, ptr @nf_conntrack_hash, align 8
  %i.es = getelementptr [8 x i8], ptr %i.er, i64 %7 ; 3 uses
  %i.et = load ptr, ptr %i.es, align 8            ; 3 uses
  store volatile ptr %i.et, ptr %i.eq, align 8
  %i.eu = getelementptr i8, ptr %i.d, i64 24
  store volatile ptr %i.es, ptr %i.eu, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !41
  store volatile ptr %i.eq, ptr %i.es, align 8
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = and i64 %i.ev, 1
  %.not.i.i = icmp eq i64 %i.ew, 0
  br i1 %.not.i.i, label %bb.t, label %hlist_nulls_add_head_rcu.exit.i

bb.t:                                             ; preds = %__nf_conntrack_insert_prepare.exit
  %i.ex = getelementptr i8, ptr %i.et, i64 8
  store volatile ptr %i.eq, ptr %i.ex, align 8
  br label %hlist_nulls_add_head_rcu.exit.i

hlist_nulls_add_head_rcu.exit.i:                  ; preds = %bb.t, %__nf_conntrack_insert_prepare.exit
  %i.ey = getelementptr i8, ptr %i.d, i64 72      ; 3 uses
  %i.ez = load ptr, ptr @nf_conntrack_hash, align 8
  %i.fa = getelementptr [8 x i8], ptr %i.ez, i64 %8 ; 3 uses
  %i.fb = load ptr, ptr %i.fa, align 8            ; 3 uses
  store volatile ptr %i.fb, ptr %i.ey, align 8
  store volatile ptr %i.fa, ptr %i.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !41
  store volatile ptr %i.ey, ptr %i.fa, align 8
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = and i64 %i.fc, 1
  %.not.i3.i = icmp eq i64 %i.fd, 0
  br i1 %.not.i3.i, label %bb.u, label %__nf_conntrack_hash_insert.exit

bb.u:                                             ; preds = %hlist_nulls_add_head_rcu.exit.i
  %i.fe = getelementptr i8, ptr %i.fb, i64 8
  store volatile ptr %i.ey, ptr %i.fe, align 8
  br label %__nf_conntrack_hash_insert.exit

__nf_conntrack_hash_insert.exit:                  ; preds = %hlist_nulls_add_head_rcu.exit.i, %bb.u
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.y, i32 8, ptr elementtype(i8) %i.y) #19, !srcloc !43
  %9 = and i32 %4, 1023                           ; 2 uses
  %10 = and i32 %6, 1023                          ; 2 uses
  %11 = zext nneg i32 %9 to i64
  %12 = getelementptr [4 x i8], ptr @nf_conntrack_locks, i64 %11
  call void @_raw_spin_unlock(ptr noundef %12) #18
  %.not.i108 = icmp eq i32 %9, %10
  br i1 %.not.i108, label %.sink.split, label %bb.v

bb.v:                                             ; preds = %__nf_conntrack_hash_insert.exit
  %13 = zext nneg i32 %10 to i64
  %i.ff = getelementptr [4 x i8], ptr @nf_conntrack_locks, i64 %13
  call void @_raw_spin_unlock(ptr noundef %i.ff) #18
  br label %.sink.split

.loopexit:                                        ; preds = %nf_ct_key_equal.exit, %nf_ct_key_equal.exit107
  %.073 = phi ptr [ %.175138, %nf_ct_key_equal.exit107 ], [ %.074133, %nf_ct_key_equal.exit ]
  %i.fg = call fastcc i32 @nf_ct_resolve_clash(ptr noundef %0, ptr noundef %.073, i32 noundef %6) #23, !srcloc !83
  br label %bb.w

bb.w:                                             ; preds = %.loopexit, %.loopexit115, %bb.h
  %.076 = phi i32 [ 0, %bb.h ], [ %i.fg, %.loopexit ], [ 0, %.loopexit115 ] ; 2 uses
  %14 = and i32 %4, 1023                          ; 2 uses
  %15 = and i32 %6, 1023                          ; 2 uses
  %16 = zext nneg i32 %14 to i64
  %17 = getelementptr [4 x i8], ptr @nf_conntrack_locks, i64 %16
  call void @_raw_spin_unlock(ptr noundef %17) #18
  %.not.i110 = icmp eq i32 %14, %15
  br i1 %.not.i110, label %.sink.split, label %bb.x

bb.x:                                             ; preds = %bb.w
  %18 = zext nneg i32 %15 to i64
  %i.fh = getelementptr [4 x i8], ptr @nf_conntrack_locks, i64 %18
  call void @_raw_spin_unlock(ptr noundef %i.fh) #18
  br label %.sink.split

.sink.split:                                      ; preds = %bb.x, %bb.w, %bb.v, %__nf_conntrack_hash_insert.exit, %bb.g
  %.0.ph = phi i32 [ 1, %bb.v ], [ 0, %bb.g ], [ 1, %__nf_conntrack_hash_insert.exit ], [ %.076, %bb.w ], [ %.076, %bb.x ]
  call void @__local_bh_enable_ip(i64 noundef %i.h, i32 noundef 512) #18
  br label %bb.y

bb.y:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ %.0.ph, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: cold fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc range(i32 0, 2) i32 @nf_ct_resolve_clash(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef range(i32 0, -1) %2) unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 55
  %i.b = load i8, ptr %i.a, align 1
  %i.c = zext i8 %i.b to i64
  %.neg.i = mul nsw i64 %i.c, -56
  %i.d = getelementptr i8, ptr %1, i64 %.neg.i
  %i.e = getelementptr i8, ptr %0, i64 104        ; 2 uses
  %.val19 = load i64, ptr %i.e, align 8
  %i.f = and i64 %.val19, -8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr i8, ptr %i.g, i64 136
  %.val = load ptr, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %i.d, i64 54
  %.val18 = load i8, ptr %i.i, align 2
  %i.j = tail call ptr @nf_ct_l4proto_find(i8 noundef zeroext %.val18) #18
  %i.k = getelementptr i8, ptr %i.j, i64 1
  %i.l = load i8, ptr %i.k, align 1, !range !15, !noundef !16
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.n = tail call fastcc i32 @__nf_ct_resolve_clash(ptr noundef %0, ptr noundef %1) #20, !srcloc !85
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %.val25.i = load i64, ptr %i.e, align 8
  %i.o = and i64 %.val25.i, -8
  %i.p = inttoptr i64 %i.o to ptr                 ; 18 uses
  %i.q = getelementptr i8, ptr %i.p, i64 136
  %.val.i = load ptr, ptr %i.q, align 8           ; 2 uses
  %i.r = load ptr, ptr @nf_conntrack_hash, align 8
  %i.s = zext i32 %2 to i64                       ; 2 uses
  %i.t = getelementptr [8 x i8], ptr %i.r, i64 %i.s
  %.02428.i = load ptr, ptr %i.t, align 8         ; 2 uses
  %i.u = ptrtoint ptr %.02428.i to i64
  %i.v = and i64 %i.u, 1
  %.not29.i = icmp eq i64 %i.v, 0
  br i1 %.not29.i, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.p, i64 88
  %.val.i.i.i.i = load i64, ptr %i.w, align 8
  %i.x = getelementptr i8, ptr %i.p, i64 96
  %.val6.i.i.i.i = load i64, ptr %i.x, align 8
  %i.y = getelementptr i8, ptr %i.p, i64 104
  %i.z = getelementptr i8, ptr %i.p, i64 106
  %i.aa = getelementptr i8, ptr %i.p, i64 108
  %i.ab = getelementptr i8, ptr %i.p, i64 116
  %i.ac = getelementptr i8, ptr %i.p, i64 124
  %i.ad = getelementptr i8, ptr %i.p, i64 126
  br label %bb.d

bb.d:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.02430.i = phi ptr [ %.02428.i, %.lr.ph.i ], [ %.024.i, %.backedge.i ] ; 12 uses
  %i.ae = getelementptr i8, ptr %.02430.i, i64 55
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i64
  %.neg.i.i.i = mul nsw i64 %i.ag, -56
  %i.ah = getelementptr i8, ptr %.02430.i, i64 %.neg.i.i.i ; 2 uses
  %i.ai = getelementptr i8, ptr %.02430.i, i64 16
  %.val7.i.i.i.i = load i64, ptr %i.ai, align 8
  %i.aj = getelementptr i8, ptr %.02430.i, i64 24
  %.val8.i.i.i.i = load i64, ptr %i.aj, align 8
  %i.ak = icmp ne i64 %.val.i.i.i.i, %.val7.i.i.i.i
  %i.al = icmp ne i64 %.val6.i.i.i.i, %.val8.i.i.i.i
  %.not11.i.i.i.i = or i1 %i.ak, %i.al
  br i1 %.not11.i.i.i.i, label %.backedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = load i16, ptr %i.y, align 8
  %i.an = getelementptr i8, ptr %.02430.i, i64 32
  %i.ao = load i16, ptr %i.an, align 8
  %i.ap = icmp eq i16 %i.am, %i.ao
  br i1 %i.ap, label %__nf_ct_tuple_src_equal.exit.i.i.i, label %.backedge.i

__nf_ct_tuple_src_equal.exit.i.i.i:               ; preds = %bb.e
  %i.aq = load i16, ptr %i.z, align 2
  %i.ar = getelementptr i8, ptr %.02430.i, i64 34
  %i.as = load i16, ptr %i.ar, align 2
  %i.at = icmp eq i16 %i.aq, %i.as
  br i1 %i.at, label %bb.f, label %.backedge.i

bb.f:                                             ; preds = %__nf_ct_tuple_src_equal.exit.i.i.i
  %i.au = getelementptr i8, ptr %.02430.i, i64 36
  %.val.i4.i.i.i = load i64, ptr %i.aa, align 8
  %.val6.i5.i.i.i = load i64, ptr %i.ab, align 8
  %.val7.i6.i.i.i = load i64, ptr %i.au, align 8
  %i.av = getelementptr i8, ptr %.02430.i, i64 44
  %.val8.i7.i.i.i = load i64, ptr %i.av, align 8
  %i.aw = icmp ne i64 %.val.i4.i.i.i, %.val7.i6.i.i.i
  %i.ax = icmp ne i64 %.val6.i5.i.i.i, %.val8.i7.i.i.i
  %.not11.i8.i.i.i = or i1 %i.aw, %i.ax
  br i1 %.not11.i8.i.i.i, label %.backedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = load i16, ptr %i.ac, align 4
  %i.az = getelementptr i8, ptr %.02430.i, i64 52
  %i.ba = load i16, ptr %i.az, align 4
  %i.bb = icmp eq i16 %i.ay, %i.ba
  br i1 %i.bb, label %nf_ct_tuple_equal.exit.i.i, label %.backedge.i

nf_ct_tuple_equal.exit.i.i:                       ; preds = %bb.g
  %i.bc = load i8, ptr %i.ad, align 2
  %i.bd = getelementptr i8, ptr %.02430.i, i64 54
  %i.be = load i8, ptr %i.bd, align 2
  %i.bf = icmp eq i8 %i.bc, %i.be
  br i1 %i.bf, label %nf_ct_is_confirmed.exit.i.i, label %.backedge.i

nf_ct_is_confirmed.exit.i.i:                      ; preds = %nf_ct_tuple_equal.exit.i.i
  %i.bg = getelementptr i8, ptr %i.ah, i64 112
  %i.bh = load volatile i64, ptr %i.bg, align 8
  %i.bi = and i64 %i.bh, 8
  %.not.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i, label %.backedge.i, label %.split.i

.split.i:                                         ; preds = %nf_ct_is_confirmed.exit.i.i
  %i.bj = getelementptr i8, ptr %i.ah, i64 120
  %.val.i.i = load ptr, ptr %i.bj, align 8
  %i.bk = icmp eq ptr %.val.i, %.val.i.i
  br i1 %i.bk, label %nf_ct_resolve_clash_harder.exit, label %.backedge.i

.backedge.i:                                      ; preds = %.split.i, %nf_ct_is_confirmed.exit.i.i, %nf_ct_tuple_equal.exit.i.i, %bb.g, %bb.f, %__nf_ct_tuple_src_equal.exit.i.i.i, %bb.e, %bb.d
  %.024.i = load ptr, ptr %.02430.i, align 8      ; 2 uses
  %i.bl = ptrtoint ptr %.024.i to i64
  %i.bm = and i64 %i.bl, 1
  %.not.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i, label %bb.d, label %.critedge.i, !llvm.loop !84

.critedge.i:                                      ; preds = %.backedge.i, %bb.c
  %i.bn = load volatile i64, ptr @jiffies, align 64
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = add i32 %i.bo, 1000
  %i.bq = getelementptr i8, ptr %i.p, i64 8
  store volatile i32 %i.bp, ptr %i.bq, align 8
  %i.br = getelementptr i8, ptr %i.p, i64 128     ; 4 uses
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = or i64 %i.bs, 5120
  store i64 %i.bt, ptr %i.br, align 8
  %i.bu = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.p, i32 1, ptr elementtype(i32) %i.p) #19, !srcloc !24 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %bb.h, !prof !21

bb.h:                                             ; preds = %.critedge.i
  %i.bv = add i32 %i.bu, 1
  %i.bw = or i32 %i.bv, %i.bu
  %.not10.i.i.i.i.i = icmp sgt i32 %i.bw, -1
  br i1 %.not10.i.i.i.i.i, label %__nf_conntrack_insert_prepare.exit.i, label %.sink.split.i.i.i.i.i, !prof !18

.sink.split.i.i.i.i.i:                            ; preds = %bb.h, %.critedge.i
  %.sink.i.i.i.i.i = phi i32 [ 2, %.critedge.i ], [ 1, %bb.h ]
  tail call void @refcount_warn_saturate(ptr noundef %i.p, i32 noundef %.sink.i.i.i.i.i) #18
  br label %__nf_conntrack_insert_prepare.exit.i

__nf_conntrack_insert_prepare.exit.i:             ; preds = %.sink.split.i.i.i.i.i, %bb.h
  %i.bx = getelementptr i8, ptr %i.p, i64 16      ; 2 uses
  %i.by = getelementptr i8, ptr %i.p, i64 24
  store volatile ptr %i.bx, ptr %i.by, align 8
  store volatile ptr inttoptr (i64 1 to ptr), ptr %i.bx, align 8
  %i.bz = getelementptr i8, ptr %i.p, i64 72      ; 3 uses
  %i.ca = load ptr, ptr @nf_conntrack_hash, align 8
  %i.cb = getelementptr [8 x i8], ptr %i.ca, i64 %i.s ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8            ; 3 uses
  store volatile ptr %i.cc, ptr %i.bz, align 8
  %i.cd = getelementptr i8, ptr %i.p, i64 80
  store volatile ptr %i.cb, ptr %i.cd, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !41
  store volatile ptr %i.bz, ptr %i.cb, align 8
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = and i64 %i.ce, 1
  %.not.i26.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i26.i, label %bb.i, label %nf_ct_resolve_clash_harder.exit.thread

bb.i:                                             ; preds = %__nf_conntrack_insert_prepare.exit.i
  %i.cg = getelementptr i8, ptr %i.cc, i64 8
  store volatile ptr %i.bz, ptr %i.cg, align 8
  br label %nf_ct_resolve_clash_harder.exit.thread

nf_ct_resolve_clash_harder.exit.thread:           ; preds = %__nf_conntrack_insert_prepare.exit.i, %bb.i
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.br, i32 8, ptr elementtype(i8) %i.br) #19, !srcloc !43
  %i.ch = getelementptr i8, ptr %.val.i, i64 2888
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = getelementptr i8, ptr %i.ci, i64 16     ; 2 uses
  tail call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cj, ptr elementtype(i32) %i.cj) #19, !srcloc !86
  br label %bb.k

nf_ct_resolve_clash_harder.exit:                  ; preds = %.split.i
  %i.ck = tail call fastcc i32 @__nf_ct_resolve_clash(ptr noundef %0, ptr noundef %.02430.i) #20, !srcloc !87
  %.not17 = icmp eq i32 %i.ck, 0
  br i1 %.not17, label %bb.j, label %bb.k

bb.j:                                             ; preds = %nf_ct_resolve_clash_harder.exit, %bb.a
  %i.cl = getelementptr i8, ptr %.val, i64 2888   ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = getelementptr i8, ptr %i.cm, i64 20     ; 2 uses
  tail call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cn, ptr elementtype(i32) %i.cn) #19, !srcloc !88
  %i.co = load ptr, ptr %i.cl, align 8
  %i.cp = getelementptr i8, ptr %i.co, i64 12     ; 2 uses
  tail call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cp, ptr elementtype(i32) %i.cp) #19, !srcloc !89
  br label %bb.k

bb.k:                                             ; preds = %nf_ct_resolve_clash_harder.exit.thread, %nf_ct_resolve_clash_harder.exit, %bb.b, %bb.j
  %.0 = phi i32 [ 0, %bb.j ], [ 1, %bb.b ], [ 1, %nf_ct_resolve_clash_harder.exit ], [ 1, %nf_ct_resolve_clash_harder.exit.thread ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 2) i32 @nf_conntrack_tuple_taken(ptr noundef %0, ptr nofree noundef readonly captures(address) %1) #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.siphash_key_t, align 8      ; 6 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr i8, ptr %1, i64 136
  %.val = load ptr, ptr %i.b, align 8             ; 3 uses
  tail call void @__rcu_read_lock() #18
  %i.c = getelementptr i8, ptr %.val, i64 648
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 8
  %i.f = getelementptr i8, ptr %0, i64 16
  %i.g = getelementptr i8, ptr %0, i64 18
  %i.h = getelementptr i8, ptr %0, i64 20
  %i.i = getelementptr i8, ptr %0, i64 28
  %i.j = getelementptr i8, ptr %0, i64 36
  %i.k = getelementptr i8, ptr %0, i64 38
  %i.l = getelementptr i8, ptr %1, i64 32
  %i.m = getelementptr i8, ptr %1, i64 40
  %i.n = getelementptr i8, ptr %1, i64 48
  %i.o = getelementptr i8, ptr %1, i64 50
  %i.p = getelementptr i8, ptr %1, i64 52
  %i.q = getelementptr i8, ptr %1, i64 60
  %i.r = getelementptr i8, ptr %1, i64 68
  %i.s = getelementptr i8, ptr %1, i64 70
  %i.t = getelementptr i8, ptr %.val, i64 2888    ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.u = load volatile i32, ptr @nf_conntrack_generation, align 4 ; 2 uses
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !32
  %i.v = and i32 %i.u, 1
  %.not11.i = icmp eq i32 %i.v, 0
  br i1 %.not11.i, label %._crit_edge.i, label %.lr.ph.i, !prof !33

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !34
  %i.w = load volatile i32, ptr @nf_conntrack_generation, align 4 ; 2 uses
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !32
  %i.x = and i32 %i.w, 1
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !prof !35, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa.i = phi i32 [ %i.u, %bb.b ], [ %i.w, %.lr.ph.i ]
  %i.y = load i32, ptr @nf_conntrack_htable_size, align 4
  %i.z = load ptr, ptr @nf_conntrack_hash, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !37
  %i.aa = load volatile i32, ptr @nf_conntrack_generation, align 4
  %.not8.i = icmp eq i32 %i.aa, %.lcssa.i
  br i1 %.not8.i, label %nf_conntrack_get_ht.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge.i, %bb.p
  br label %bb.b, !llvm.loop !1

nf_conntrack_get_ht.exit:                         ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !19
  callbr void asm sideeffect "1:jmp ${2:l}\0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @hash_conntrack_raw.___once_key, i1 false) #19
          to label %__hash_conntrack.exit [label %bb.c], !srcloc !22

bb.c:                                             ; preds = %nf_conntrack_get_ht.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 0, ptr %i.a, align 8, !annotation !19
  %i.ab = call zeroext i1 @__do_once_start(ptr noundef nonnull @hash_conntrack_raw.___done, ptr noundef nonnull %i.a) #18
  br i1 %i.ab, label %bb.d, label %bb.e, !prof !21

bb.d:                                             ; preds = %bb.c
  call void @get_random_bytes(ptr noundef nonnull @nf_conntrack_hash_rnd, i64 noundef 16) #18
  call void @__do_once_done(ptr noundef nonnull @hash_conntrack_raw.___done, ptr noundef nonnull @hash_conntrack_raw.___once_key, ptr noundef nonnull %i.a, ptr noundef null) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %__hash_conntrack.exit

__hash_conntrack.exit:                            ; preds = %nf_conntrack_get_ht.exit, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) @nf_conntrack_hash_rnd, i64 16, i1 false)
  %.val.i.i = load i32, ptr %i.c, align 8
  %i.ac = zext i32 %.val.i.i to i64
  %i.ad = load i64, ptr %i.d, align 8
  %i.ae = xor i64 %i.ad, %i.ac
  store i64 %i.ae, ptr %i.d, align 8
  %i.af = call i64 @__siphash_unaligned(ptr noundef %0, i64 noundef 39, ptr noundef nonnull %2) #18
  %3 = trunc i64 %i.af to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %4 = call range(i32 0, -1) i32 @llvm.umulh.i32(i32 %3, i32 %i.y)
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !91
  %5 = zext i32 %4 to i64                         ; 2 uses
  %i.ag = getelementptr [8 x i8], ptr %i.z, i64 %5
  %i.ah = load volatile ptr, ptr %i.ag, align 8   ; 2 uses
  %i.ai = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.aj = and i64 %i.ai, 1
  %.not45 = icmp eq i64 %i.aj, 0
  br i1 %.not45, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %__hash_conntrack.exit, %nf_ct_key_equal.exit.thread
  %.03546 = phi ptr [ %i.cy, %nf_ct_key_equal.exit.thread ], [ %i.ah, %__hash_conntrack.exit ] ; 11 uses
  %i.ak = getelementptr i8, ptr %.03546, i64 55
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = zext i8 %i.al to i64
  %.neg.i = mul nsw i64 %i.am, -56
  %i.an = getelementptr i8, ptr %.03546, i64 %.neg.i ; 12 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 -16    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %1
  br i1 %i.ap, label %nf_ct_key_equal.exit.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.aq = getelementptr i8, ptr %i.an, i64 -8
  %i.ar = load volatile i32, ptr %i.aq, align 8
  %i.as = load volatile i64, ptr @jiffies, align 64
  %i.at = trunc i64 %i.as to i32
  %i.au = sub i32 %i.ar, %i.at
  %i.av = icmp slt i32 %i.au, 1
  br i1 %i.av, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call fastcc void @nf_ct_gc_expired(ptr noundef %i.ao) #20, !srcloc !92
  br label %nf_ct_key_equal.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.aw = getelementptr i8, ptr %.03546, i64 16
  %.val.i.i.i = load i64, ptr %0, align 8
  %.val6.i.i.i = load i64, ptr %i.e, align 8
  %.val7.i.i.i = load i64, ptr %i.aw, align 8
  %i.ax = getelementptr i8, ptr %.03546, i64 24
  %.val8.i.i.i = load i64, ptr %i.ax, align 8
  %i.ay = icmp ne i64 %.val.i.i.i, %.val7.i.i.i
  %i.az = icmp ne i64 %.val6.i.i.i, %.val8.i.i.i
  %.not11.i.i.i = or i1 %i.ay, %i.az
  br i1 %.not11.i.i.i, label %nf_ct_key_equal.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = load i16, ptr %i.f, align 8
  %i.bb = getelementptr i8, ptr %.03546, i64 32
  %i.bc = load i16, ptr %i.bb, align 8
  %i.bd = icmp eq i16 %i.ba, %i.bc
  br i1 %i.bd, label %__nf_ct_tuple_src_equal.exit.i.i, label %nf_ct_key_equal.exit.thread

__nf_ct_tuple_src_equal.exit.i.i:                 ; preds = %bb.i
  %i.be = load i16, ptr %i.g, align 2
  %i.bf = getelementptr i8, ptr %.03546, i64 34
  %i.bg = load i16, ptr %i.bf, align 2
  %i.bh = icmp eq i16 %i.be, %i.bg
  br i1 %i.bh, label %bb.j, label %nf_ct_key_equal.exit.thread

bb.j:                                             ; preds = %__nf_ct_tuple_src_equal.exit.i.i
  %i.bi = getelementptr i8, ptr %.03546, i64 36
  %.val.i4.i.i = load i64, ptr %i.h, align 8
  %.val6.i5.i.i = load i64, ptr %i.i, align 8
  %.val7.i6.i.i = load i64, ptr %i.bi, align 8
  %i.bj = getelementptr i8, ptr %.03546, i64 44
  %.val8.i7.i.i = load i64, ptr %i.bj, align 8
  %i.bk = icmp ne i64 %.val.i4.i.i, %.val7.i6.i.i
  %i.bl = icmp ne i64 %.val6.i5.i.i, %.val8.i7.i.i
  %.not11.i8.i.i = or i1 %i.bk, %i.bl
  br i1 %.not11.i8.i.i, label %nf_ct_key_equal.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = load i16, ptr %i.j, align 4
  %i.bn = getelementptr i8, ptr %.03546, i64 52
  %i.bo = load i16, ptr %i.bn, align 4
  %i.bp = icmp eq i16 %i.bm, %i.bo
  br i1 %i.bp, label %nf_ct_tuple_equal.exit.i, label %nf_ct_key_equal.exit.thread

nf_ct_tuple_equal.exit.i:                         ; preds = %bb.k
  %i.bq = load i8, ptr %i.k, align 2
  %i.br = getelementptr i8, ptr %.03546, i64 54
  %i.bs = load i8, ptr %i.br, align 2
  %i.bt = icmp eq i8 %i.bq, %i.bs
  br i1 %i.bt, label %nf_ct_is_confirmed.exit.i, label %nf_ct_key_equal.exit.thread

nf_ct_is_confirmed.exit.i:                        ; preds = %nf_ct_tuple_equal.exit.i
  %i.bu = getelementptr i8, ptr %i.an, i64 112
  %i.bv = load volatile i64, ptr %i.bu, align 8
  %i.bw = and i64 %i.bv, 8
  %.not.i39 = icmp eq i64 %i.bw, 0
  br i1 %.not.i39, label %nf_ct_key_equal.exit.thread, label %nf_ct_key_equal.exit

nf_ct_key_equal.exit:                             ; preds = %nf_ct_is_confirmed.exit.i
  %i.bx = getelementptr i8, ptr %i.an, i64 120
  %.val.i = load ptr, ptr %i.bx, align 8
  %i.by = icmp eq ptr %.val, %.val.i
  br i1 %i.by, label %bb.l, label %nf_ct_key_equal.exit.thread

bb.l:                                             ; preds = %nf_ct_key_equal.exit
  %i.bz = getelementptr i8, ptr %i.an, i64 16
  %.val.i.i40 = load i64, ptr %i.l, align 8
  %.val6.i.i = load i64, ptr %i.m, align 8
  %.val7.i.i = load i64, ptr %i.bz, align 8
  %i.ca = getelementptr i8, ptr %i.an, i64 24
  %.val8.i.i = load i64, ptr %i.ca, align 8
  %i.cb = icmp ne i64 %.val.i.i40, %.val7.i.i
  %i.cc = icmp ne i64 %.val6.i.i, %.val8.i.i
  %.not11.i.i = or i1 %i.cb, %i.cc
  br i1 %.not11.i.i, label %nf_ct_tuple_equal.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = load i16, ptr %i.n, align 8
  %i.ce = getelementptr i8, ptr %i.an, i64 32
  %i.cf = load i16, ptr %i.ce, align 8
  %i.cg = icmp eq i16 %i.cd, %i.cf
  br i1 %i.cg, label %__nf_ct_tuple_src_equal.exit.i, label %nf_ct_tuple_equal.exit.thread

__nf_ct_tuple_src_equal.exit.i:                   ; preds = %bb.m
  %i.ch = load i16, ptr %i.o, align 2
  %i.ci = getelementptr i8, ptr %i.an, i64 34
  %i.cj = load i16, ptr %i.ci, align 2
  %i.ck = icmp eq i16 %i.ch, %i.cj
  br i1 %i.ck, label %bb.n, label %nf_ct_tuple_equal.exit.thread

bb.n:                                             ; preds = %__nf_ct_tuple_src_equal.exit.i
  %i.cl = getelementptr i8, ptr %i.an, i64 36
  %.val.i4.i = load i64, ptr %i.p, align 8
  %.val6.i5.i = load i64, ptr %i.q, align 8
  %.val7.i6.i = load i64, ptr %i.cl, align 8
  %i.cm = getelementptr i8, ptr %i.an, i64 44
  %.val8.i7.i = load i64, ptr %i.cm, align 8
  %i.cn = icmp ne i64 %.val.i4.i, %.val7.i6.i
  %i.co = icmp ne i64 %.val6.i5.i, %.val8.i7.i
  %.not11.i8.i = or i1 %i.cn, %i.co
  br i1 %.not11.i8.i, label %nf_ct_tuple_equal.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cp = load i16, ptr %i.r, align 4
  %i.cq = getelementptr i8, ptr %i.an, i64 52
  %i.cr = load i16, ptr %i.cq, align 4
  %i.cs = icmp eq i16 %i.cp, %i.cr
  br i1 %i.cs, label %nf_ct_tuple_equal.exit, label %nf_ct_tuple_equal.exit.thread

nf_ct_tuple_equal.exit:                           ; preds = %bb.o
  %i.ct = load i8, ptr %i.s, align 2
  %i.cu = getelementptr i8, ptr %i.an, i64 54
  %i.cv = load i8, ptr %i.cu, align 2
  %i.cw = icmp eq i8 %i.ct, %i.cv
  br i1 %i.cw, label %nf_ct_key_equal.exit.thread, label %nf_ct_tuple_equal.exit.thread

nf_ct_tuple_equal.exit.thread:                    ; preds = %bb.l, %bb.m, %bb.n, %bb.o, %__nf_ct_tuple_src_equal.exit.i, %nf_ct_tuple_equal.exit
  %i.cx = load ptr, ptr %i.t, align 8             ; 2 uses
  call void asm sideeffect "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cx, ptr elementtype(i32) %i.cx) #19, !srcloc !93
  br label %.loopexit

nf_ct_key_equal.exit.thread:                      ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %__nf_ct_tuple_src_equal.exit.i.i, %nf_ct_tuple_equal.exit.i, %nf_ct_is_confirmed.exit.i, %nf_ct_tuple_equal.exit, %nf_ct_key_equal.exit, %.lr.ph, %bb.g
  %i.cy = load volatile ptr, ptr %.03546, align 8 ; 2 uses
  %i.cz = ptrtoint ptr %i.cy to i64               ; 2 uses
  %i.da = and i64 %i.cz, 1
  %.not = icmp eq i64 %i.da, 0
  br i1 %.not, label %.lr.ph, label %.critedge, !llvm.loop !90

.critedge:                                        ; preds = %nf_ct_key_equal.exit.thread, %__hash_conntrack.exit
  %.lcssa43 = phi i64 [ %i.ai, %__hash_conntrack.exit ], [ %i.cz, %nf_ct_key_equal.exit.thread ]
  %i.db = lshr i64 %.lcssa43, 1
  %.not38 = icmp eq i64 %i.db, %5
  br i1 %.not38, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %.critedge
  %i.dc = load ptr, ptr %i.t, align 8
  %i.dd = getelementptr i8, ptr %i.dc, i64 44     ; 2 uses
  call void asm sideeffect "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dd, ptr elementtype(i32) %i.dd) #19, !srcloc !94
  br label %.backedge

.loopexit:                                        ; preds = %.critedge, %nf_ct_tuple_equal.exit.thread
  %.0 = phi i32 [ 1, %nf_ct_tuple_equal.exit.thread ], [ 0, %.critedge ]
  call void @__rcu_read_unlock() #18
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @nf_ct_gc_expired(ptr noundef %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load volatile i32, ptr %0, align 4       ; 2 uses
  %.old1.not.i.i.i = icmp eq i32 %i.a, 0
  br i1 %.old1.not.i.i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.a, %arch_atomic_try_cmpxchg.exit.i.i.i
  %.0.i.i.i = phi i32 [ %i.g, %arch_atomic_try_cmpxchg.exit.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.b = add i32 %.0.i.i.i, 1
  %i.c = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0, i32 %i.b, ptr elementtype(i32) %0, i32 %.0.i.i.i) #19, !srcloc !38 ; 2 uses
  %i.d = extractvalue { i8, i32 } %i.c, 0         ; 2 uses
  %i.e = icmp ult i8 %i.d, 2
  tail call void @llvm.assume(i1 %i.e)
  %i.f = trunc nuw i8 %i.d to i1
  br i1 %i.f, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i, !prof !18

arch_atomic_try_cmpxchg.exit.i.i.i:               ; preds = %.preheader.i.i.i
  %i.g = extractvalue { i8, i32 } %i.c, 1         ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i, label %.preheader.i.i.i, !llvm.loop !2

arch_atomic_try_cmpxchg.exit.thread.i.i.i:        ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i, %.preheader.i.i.i, %bb.a
  %.2.i.i.i = phi i32 [ 0, %bb.a ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i ] ; 3 uses
  %i.i = add i32 %.2.i.i.i, 1
  %i.j = or i32 %i.i, %.2.i.i.i
  %.not.i.i.i = icmp sgt i32 %i.j, -1
  br i1 %.not.i.i.i, label %refcount_inc_not_zero.exit, label %bb.b, !prof !18

bb.b:                                             ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef 0) #18
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i, %bb.b
  %.not = icmp eq i32 %.2.i.i.i, 0
  br i1 %.not, label %nf_ct_put.exit, label %nf_ct_is_confirmed.exit.i

nf_ct_is_confirmed.exit.i:                        ; preds = %refcount_inc_not_zero.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !39
  %i.k = getelementptr i8, ptr %0, i64 128        ; 2 uses
  %i.l = load volatile i64, ptr %i.k, align 8
  %i.m = and i64 %i.l, 8
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %nf_ct_should_gc.exit.thread, label %bb.c

bb.c:                                             ; preds = %nf_ct_is_confirmed.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !40
  %i.n = getelementptr i8, ptr %0, i64 8
  %i.o = load volatile i32, ptr %i.n, align 8
  %i.p = load volatile i64, ptr @jiffies, align 64
  %i.q = trunc i64 %i.p to i32
  %i.r = sub i32 %i.o, %i.q
  %i.s = icmp slt i32 %i.r, 1
  br i1 %i.s, label %nf_ct_should_gc.exit, label %nf_ct_should_gc.exit.thread

nf_ct_should_gc.exit:                             ; preds = %bb.c
  %i.t = load volatile i64, ptr %i.k, align 8
  %i.u = and i64 %i.t, 512
  %.not4.i = icmp eq i64 %i.u, 0
  br i1 %.not4.i, label %bb.d, label %nf_ct_should_gc.exit.thread

bb.d:                                             ; preds = %nf_ct_should_gc.exit
  %i.v = tail call noundef zeroext i1 @nf_ct_delete(ptr noundef %0, i32 poison, i32 poison) #20 ; 0 uses
  br label %nf_ct_should_gc.exit.thread

nf_ct_should_gc.exit.thread:                      ; preds = %bb.c, %nf_ct_is_confirmed.exit.i, %bb.d, %nf_ct_should_gc.exit
  %.not.i4 = icmp eq ptr %0, null
  br i1 %.not.i4, label %nf_ct_put.exit, label %bb.e

bb.e:                                             ; preds = %nf_ct_should_gc.exit.thread
  %i.w = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %0, i32 -1, ptr nonnull elementtype(i32) %0) #19, !inline_history !26, !srcloc !24 ; 2 uses
  %i.x = icmp eq i32 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = icmp slt i32 %i.w, 1
  br i1 %i.y, label %bb.g, label %nf_ct_put.exit, !prof !21

bb.g:                                             ; preds = %bb.f
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef 3) #18, !inline_history !26
  br label %nf_ct_put.exit

bb.h:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !inline_history !26, !srcloc !25
  tail call void @nf_ct_destroy(ptr noundef nonnull %0) #20, !inline_history !26
  br label %nf_ct_put.exit

nf_ct_put.exit:                                   ; preds = %bb.h, %bb.g, %bb.f, %nf_ct_should_gc.exit.thread, %refcount_inc_not_zero.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @nf_conntrack_alloc(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc ptr @__nf_conntrack_alloc(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 0) #20
  ret ptr %i.a
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc ptr @__nf_conntrack_alloc(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 align 16 {
bb.a:
  %i.a = load i32, ptr @nf_conntrack_net_id, align 4
  tail call void @__rcu_read_lock() #18
  %i.b = getelementptr i8, ptr %0, i64 2984
  %i.c = load volatile ptr, ptr %i.b, align 8
  %i.d = zext i32 %i.a to i64
  %i.e = getelementptr [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8              ; 6 uses
  tail call void @__rcu_read_unlock() #18
  %i.g = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.f, i32 1, ptr elementtype(i32) %i.f) #19, !srcloc !95
  %i.h = add i32 %i.g, 1
  %i.i = load i32, ptr @nf_conntrack_max, align 4
  %i.j = icmp ugt i32 %i.h, %i.i
  br i1 %i.j, label %bb.b, label %bb.j, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.k = tail call fastcc i32 @early_drop(ptr noundef %0, i32 noundef %4) #20, !srcloc !96
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.l = load i8, ptr getelementptr inbounds nuw (i8, ptr @conntrack_gc_work, i64 105), align 1, !range !15, !noundef !16
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @conntrack_gc_work, i64 105), align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.f, ptr elementtype(i32) %i.f) #19, !srcloc !27
  %i.n = icmp eq ptr %0, @init_net
  %i.o = tail call i32 @net_ratelimit() #18
  %.not38 = icmp eq i32 %i.o, 0                   ; 2 uses
  br i1 %i.n, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not38, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #24 ; 0 uses
  br label %bb.m

bb.h:                                             ; preds = %bb.e
  br i1 %.not38, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr i8, ptr %0, i64 280
  %i.r = load i32, ptr %i.q, align 8
  %i.s = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %i.r) #24 ; 0 uses
  br label %bb.m

bb.j:                                             ; preds = %bb.b, %bb.a
  %i.t = load ptr, ptr @nf_conntrack_cachep, align 8
  %i.u = tail call noalias align 8 ptr @kmem_cache_alloc_noprof(ptr noundef %i.t, i32 noundef %3) #18 ; 12 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr i8, ptr %i.u, i64 4
  store i32 0, ptr %i.w, align 4
  %i.x = getelementptr i8, ptr %i.u, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(40) %i.x, ptr noundef align 4 dereferenceable(40) %1, i64 40, i1 false)
  %i.y = getelementptr i8, ptr %i.u, i64 24
  store ptr null, ptr %i.y, align 8
  %i.z = getelementptr i8, ptr %i.u, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(40) %i.z, ptr noundef align 4 dereferenceable(40) %2, i64 40, i1 false)
  %i.aa = zext i32 %4 to i64
  %i.ab = getelementptr i8, ptr %i.u, i64 80
  store i64 %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr i8, ptr %i.u, i64 128
  store i64 0, ptr %i.ac, align 8
  %i.ad = getelementptr i8, ptr %i.u, i64 8
  store volatile i32 0, ptr %i.ad, align 8
  %i.ae = getelementptr i8, ptr %i.u, i64 136
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !23
  store volatile ptr %0, ptr %i.ae, align 8
  %i.af = getelementptr i8, ptr %i.u, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(88) %i.af, i8 0, i64 88, i1 false)
  store volatile i32 0, ptr %i.u, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.f, ptr elementtype(i32) %i.f) #19, !srcloc !27
  br label %bb.m

end_hunk_0
begin_hunk_1_@nf_conntrack_cleanup_net
define dso_local void @nf_conntrack_cleanup_net(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.list_head, align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr i8, ptr %0, i64 40         ; 3 uses
  store ptr %i.b, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %0, i64 48
  store ptr %1, ptr %i.c, align 8
  store volatile ptr %i.b, ptr %1, align 8
  call void @nf_conntrack_cleanup_net_list(ptr noundef nonnull %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @nf_conntrack_cleanup_net_list(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.nf_ct_iter_data, align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = load volatile i64, ptr @jiffies, align 64 ; 0 uses
  tail call void @synchronize_rcu_expedited() #18
  %.pn3042 = load ptr, ptr %0, align 8            ; 2 uses
  %.not3143 = icmp eq ptr %.pn3042, %0
  br i1 %.not3143, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph.backedge
  %.pn33 = phi ptr [ %.pn33.be, %.lr.ph.backedge ], [ %.pn3042, %bb.a ] ; 3 uses
  %.02332 = phi i32 [ %.02332.be, %.lr.ph.backedge ], [ 0, %bb.a ]
  %.0 = getelementptr i8, ptr %.pn33, i64 -40
  %i.c = load i32, ptr @nf_conntrack_net_id, align 4
  tail call void @__rcu_read_lock() #18
  %i.d = getelementptr i8, ptr %.pn33, i64 2944   ; 2 uses
  %i.e = load volatile ptr, ptr %i.d, align 8
  %i.f = zext i32 %i.c to i64
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8
  tail call void @__rcu_read_unlock() #18
  store ptr %.0, ptr %1, align 8
  %i.i = load i32, ptr @nf_conntrack_net_id, align 4
  tail call void @__rcu_read_lock() #18
  %i.j = load volatile ptr, ptr %i.d, align 8
  %i.k = zext i32 %i.i to i64
  %i.l = getelementptr [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8
  tail call void @__rcu_read_unlock() #18
  %i.n = tail call i32 @__SCT__might_resched() #18 ; 0 uses
  %i.o = load volatile i32, ptr %i.m, align 4
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %nf_ct_iterate_cleanup_net.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  call fastcc void @nf_ct_iterate_cleanup(ptr noundef nonnull @kill_all, ptr noundef nonnull readonly %1) #20, !srcloc !44
  br label %nf_ct_iterate_cleanup_net.exit

nf_ct_iterate_cleanup_net.exit:                   ; preds = %.lr.ph, %bb.b
  %i.q = load volatile i32, ptr %i.h, align 4
  %.not28 = icmp eq i32 %i.q, 0
  %spec.select = select i1 %.not28, i32 %.02332, i32 1 ; 2 uses
  %.pn = load ptr, ptr %.pn33, align 8            ; 2 uses
  %.not = icmp eq ptr %.pn, %0
  br i1 %.not, label %._crit_edge, label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %nf_ct_iterate_cleanup_net.exit, %bb.c
  %.pn33.be = phi ptr [ %.pn, %nf_ct_iterate_cleanup_net.exit ], [ %.pn30, %bb.c ]
  %.02332.be = phi i32 [ %spec.select, %nf_ct_iterate_cleanup_net.exit ], [ 0, %bb.c ]
  br label %.lr.ph, !llvm.loop !112

._crit_edge:                                      ; preds = %nf_ct_iterate_cleanup_net.exit
  %i.r = icmp eq i32 %spec.select, 0
  br i1 %i.r, label %.preheader, label %bb.c

.preheader:                                       ; preds = %._crit_edge, %bb.c, %bb.a
  %.pn2634 = load ptr, ptr %0, align 8            ; 2 uses
  %.not2935 = icmp eq ptr %.pn2634, %0
  br i1 %.not2935, label %._crit_edge38, label %.lr.ph37

bb.c:                                             ; preds = %._crit_edge
  tail call void @schedule() #18
  %.pn30 = load ptr, ptr %0, align 8              ; 2 uses
  %.not31 = icmp eq ptr %.pn30, %0
  br i1 %.not31, label %.preheader, label %.lr.ph.backedge

.lr.ph37:                                         ; preds = %.preheader, %.lr.ph37
  %.pn2636 = phi ptr [ %.pn26, %.lr.ph37 ], [ %.pn2634, %.preheader ] ; 3 uses
  %.1 = getelementptr i8, ptr %.pn2636, i64 -40
  tail call void @nf_conntrack_expect_pernet_fini(ptr noundef %.1) #18
  %i.s = getelementptr i8, ptr %.pn2636, i64 2848
  %i.t = load ptr, ptr %i.s, align 8
  tail call void @free_percpu(ptr noundef %i.t) #18
  %.pn26 = load ptr, ptr %.pn2636, align 8        ; 2 uses
  %.not29 = icmp eq ptr %.pn26, %0
  br i1 %.not29, label %._crit_edge38, label %.lr.ph37, !llvm.loop !113

._crit_edge38:                                    ; preds = %.lr.ph37, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @synchronize_rcu_expedited() local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal noundef i32 @kill_all(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #9 align 16 prefalign(16) {
bb.a:
  ret i32 1
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @nf_conntrack_expect_pernet_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @nf_ct_alloc_hashtable(ptr nofree noundef captures(none) %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 2 uses
  %i.b = icmp ugt i32 %i.a, 268435455
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %narrow = add nuw nsw i32 %i.a, 511
  %i.c = and i32 %narrow, 536870400               ; 5 uses
  store i32 %i.c, ptr %0, align 4
  %i.d = icmp samesign ugt i32 %i.c, 268435455
  br i1 %i.d, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = shl nuw nsw i32 %i.c, 3
  %i.f = zext nneg i32 %i.e to i64
  %i.g = tail call noalias ptr @__kvmalloc_node_noprof(i64 noundef %i.f, i64 noundef 1, i32 noundef 3520, i32 noundef -1) #25 ; 7 uses
  %i.h = icmp ne ptr %i.g, null
  %i.i = icmp ne i32 %1, 0
  %or.cond = and i1 %i.i, %i.h
  %i.j = icmp ne i32 %i.c, 0
  %or.cond30 = and i1 %or.cond, %i.j
  br i1 %or.cond30, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %i.k = shl nuw nsw i64 %indvars.iv, 1
  %i.l = or disjoint i64 %i.k, 1
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv
  store ptr %i.m, ptr %i.n, align 8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.o = shl nuw nsw i64 %indvars.iv.next, 1
  %i.p = or disjoint i64 %i.o, 1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv.next
  store ptr %i.q, ptr %i.r, align 8
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.s = shl nuw nsw i64 %indvars.iv.next.1, 1
  %i.t = or disjoint i64 %i.s, 1
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv.next.1
  store ptr %i.u, ptr %i.v, align 8
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.w = shl nuw nsw i64 %indvars.iv.next.2, 1
  %i.x = or disjoint i64 %i.w, 1
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv.next.2
  store ptr %i.y, ptr %i.z, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph, !llvm.loop !3

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ %i.g, %bb.c ], [ %i.g, %.lr.ph ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kvmalloc_node_noprof(i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @nf_conntrack_hash_resize(i32 noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.siphash_key_t, align 8      ; 6 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %nf_ct_alloc_hashtable.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i32 %0, 268435455
  br i1 %i.b, label %nf_ct_alloc_hashtable.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %narrow.i = add nuw nsw i32 %0, 511
  %i.c = and i32 %narrow.i, 536870400             ; 6 uses
  %i.d = icmp samesign ugt i32 %i.c, 268435455
  br i1 %i.d, label %nf_ct_alloc_hashtable.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = shl nuw nsw i32 %i.c, 3
  %i.f = zext nneg i32 %i.e to i64
  %i.g = tail call noalias ptr @__kvmalloc_node_noprof(i64 noundef %i.f, i64 noundef 1, i32 noundef 3520, i32 noundef -1) #25 ; 8 uses
  %.not41 = icmp eq ptr %i.g, null
  br i1 %.not41, label %nf_ct_alloc_hashtable.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %wide.trip.count.i = zext nneg i32 %i.c to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 6 uses
  %i.h = shl nuw nsw i64 %indvars.iv.i, 1
  %i.i = or disjoint i64 %i.h, 1
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv.i
  store ptr %i.j, ptr %i.k, align 8
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.l = shl nuw nsw i64 %indvars.iv.next.i, 1
  %i.m = or disjoint i64 %i.l, 1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv.next.i
  store ptr %i.n, ptr %i.o, align 8
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.p = shl nuw nsw i64 %indvars.iv.next.i.1, 1
  %i.q = or disjoint i64 %i.p, 1
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv.next.i.1
  store ptr %i.r, ptr %i.s, align 8
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.t = shl nuw nsw i64 %indvars.iv.next.i.2, 1
  %i.u = or disjoint i64 %i.t, 1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv.next.i.2
  store ptr %i.v, ptr %i.w, align 8
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %nf_ct_alloc_hashtable.exit.thread35, label %.lr.ph.i, !llvm.loop !3

nf_ct_alloc_hashtable.exit.thread35:              ; preds = %.lr.ph.i
  tail call void @mutex_lock(ptr noundef nonnull @nf_conntrack_mutex) #18
  %i.x = load i32, ptr @nf_conntrack_htable_size, align 4
  %i.y = icmp eq i32 %i.x, %i.c
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %nf_ct_alloc_hashtable.exit.thread35
  tail call void @mutex_unlock(ptr noundef nonnull @nf_conntrack_mutex) #18
  tail call void @kvfree(ptr noundef nonnull %i.g) #18
  br label %nf_ct_alloc_hashtable.exit.thread

bb.f:                                             ; preds = %nf_ct_alloc_hashtable.exit.thread35
  %i.z = tail call i64 asm "lea 0(%rip), $0", "=r,~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !29
  tail call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, i32 512, ptr nonnull elementtype(i32) @__preempt_count) #19, !srcloc !30
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !31
  tail call void @_raw_spin_lock(ptr noundef nonnull @nf_conntrack_locks_all_lock) #18
  store volatile i8 1, ptr @nf_conntrack_locks_all, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.i25 = phi i64 [ 0, %bb.f ], [ %indvars.iv.next.i26, %bb.g ] ; 2 uses
  %i.aa = getelementptr [4 x i8], ptr @nf_conntrack_locks, i64 %indvars.iv.i25 ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.aa) #18
  tail call void @_raw_spin_unlock(ptr noundef %i.aa) #18
  %indvars.iv.next.i26 = add nuw nsw i64 %indvars.iv.i25, 1 ; 2 uses
  %exitcond.not.i27 = icmp eq i64 %indvars.iv.next.i26, 1024
  br i1 %exitcond.not.i27, label %nf_conntrack_all_lock.exit, label %bb.g, !llvm.loop !114

nf_conntrack_all_lock.exit:                       ; preds = %bb.g
  %i.ab = load i32, ptr @nf_conntrack_generation, align 4
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr @nf_conntrack_generation, align 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !117
  %i.ad = load i32, ptr @nf_conntrack_htable_size, align 4 ; 2 uses
  %.not45 = icmp eq i32 %i.ad, 0
  %.pre47 = load ptr, ptr @nf_conntrack_hash, align 8 ; 2 uses
  br i1 %.not45, label %._crit_edge44, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %nf_conntrack_all_lock.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.af = phi i32 [ %i.ad, %.preheader.lr.ph ], [ %i.bp, %._crit_edge ]
  %i.ag = phi ptr [ %.pre47, %.preheader.lr.ph ], [ %i.bq, %._crit_edge ] ; 2 uses
  %.02143 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.br, %._crit_edge ] ; 2 uses
  %i.ah = sext i32 %.02143 to i64                 ; 2 uses
  %i.ai = getelementptr [8 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load volatile ptr, ptr %i.ai, align 8   ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = and i64 %i.ak, 1
  %.not2442 = icmp eq i64 %i.al, 0
  br i1 %.not2442, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %hlist_nulls_add_head_rcu.exit
  %i.am = phi ptr [ %i.bm, %hlist_nulls_add_head_rcu.exit ], [ %i.aj, %.preheader ] ; 8 uses
  %i.an = getelementptr i8, ptr %i.am, i64 55
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i64
  %.neg.i = mul nsw i64 %i.ap, -56
  %i.aq = getelementptr i8, ptr %i.am, i64 %.neg.i
  %i.ar = load ptr, ptr %i.am, align 8            ; 3 uses
  %i.as = getelementptr i8, ptr %i.am, i64 8      ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  store volatile ptr %i.ar, ptr %i.at, align 8
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = and i64 %i.au, 1
  %.not.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i.i, label %bb.h, label %hlist_nulls_del_rcu.exit

bb.h:                                             ; preds = %.lr.ph
  %i.aw = getelementptr i8, ptr %i.ar, i64 8
  store volatile ptr %i.at, ptr %i.aw, align 8
  br label %hlist_nulls_del_rcu.exit

hlist_nulls_del_rcu.exit:                         ; preds = %.lr.ph, %bb.h
  store volatile ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.as, align 8
  %i.ax = getelementptr i8, ptr %i.am, i64 16
  %i.ay = getelementptr i8, ptr %i.aq, i64 120
  %.val = load ptr, ptr %i.ay, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !19
  callbr void asm sideeffect "1:jmp ${2:l}\0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @hash_conntrack_raw.___once_key, i1 false) #19
          to label %__hash_conntrack.exit [label %bb.i], !srcloc !22

bb.i:                                             ; preds = %hlist_nulls_del_rcu.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 0, ptr %i.a, align 8, !annotation !19
  %i.az = call zeroext i1 @__do_once_start(ptr noundef nonnull @hash_conntrack_raw.___done, ptr noundef nonnull %i.a) #18
  br i1 %i.az, label %bb.j, label %bb.k, !prof !21

bb.j:                                             ; preds = %bb.i
  call void @get_random_bytes(ptr noundef nonnull @nf_conntrack_hash_rnd, i64 noundef 16) #18
  call void @__do_once_done(ptr noundef nonnull @hash_conntrack_raw.___done, ptr noundef nonnull @hash_conntrack_raw.___once_key, ptr noundef nonnull %i.a, ptr noundef null) #18
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %__hash_conntrack.exit

__hash_conntrack.exit:                            ; preds = %hlist_nulls_del_rcu.exit, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) @nf_conntrack_hash_rnd, i64 16, i1 false)
  %i.ba = getelementptr i8, ptr %.val, i64 648
  %.val.i.i = load i32, ptr %i.ba, align 8
  %i.bb = zext i32 %.val.i.i to i64
  %i.bc = load i64, ptr %i.ae, align 8
  %i.bd = xor i64 %i.bc, %i.bb
  store i64 %i.bd, ptr %i.ae, align 8
  %i.be = call i64 @__siphash_unaligned(ptr noundef %i.ax, i64 noundef 39, ptr noundef nonnull %1) #18
  %2 = trunc i64 %i.be to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %3 = call range(i32 0, -1) i32 @llvm.umulh.i32(i32 %2, i32 %i.c)
  %4 = zext nneg i32 %3 to i64
  %i.bf = getelementptr [8 x i8], ptr %i.g, i64 %4 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8            ; 3 uses
  store volatile ptr %i.bg, ptr %i.am, align 8
  store volatile ptr %i.bf, ptr %i.as, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !41
  store volatile ptr %i.am, ptr %i.bf, align 8
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = and i64 %i.bh, 1
  %.not.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i, label %bb.l, label %hlist_nulls_add_head_rcu.exit

bb.l:                                             ; preds = %__hash_conntrack.exit
  %i.bj = getelementptr i8, ptr %i.bg, i64 8
  store volatile ptr %i.am, ptr %i.bj, align 8
  br label %hlist_nulls_add_head_rcu.exit

hlist_nulls_add_head_rcu.exit:                    ; preds = %__hash_conntrack.exit, %bb.l
  %i.bk = load ptr, ptr @nf_conntrack_hash, align 8 ; 2 uses
  %i.bl = getelementptr [8 x i8], ptr %i.bk, i64 %i.ah
  %i.bm = load volatile ptr, ptr %i.bl, align 8   ; 2 uses
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = and i64 %i.bn, 1
  %.not24 = icmp eq i64 %i.bo, 0
  br i1 %.not24, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !115

._crit_edge.loopexit:                             ; preds = %hlist_nulls_add_head_rcu.exit
  %.pre46 = load i32, ptr @nf_conntrack_htable_size, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bp = phi i32 [ %.pre46, %._crit_edge.loopexit ], [ %i.af, %.preheader ] ; 2 uses
  %i.bq = phi ptr [ %i.bk, %._crit_edge.loopexit ], [ %i.ag, %.preheader ] ; 2 uses
  %i.br = add nuw i32 %.02143, 1                  ; 2 uses
  %i.bs = icmp ult i32 %i.br, %i.bp
  br i1 %i.bs, label %.preheader, label %._crit_edge44, !llvm.loop !116

._crit_edge44:                                    ; preds = %._crit_edge, %nf_conntrack_all_lock.exit
  %i.bt = phi ptr [ %.pre47, %nf_conntrack_all_lock.exit ], [ %i.bq, %._crit_edge ]
  store ptr %i.g, ptr @nf_conntrack_hash, align 8
  store i32 %i.c, ptr @nf_conntrack_htable_size, align 4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !118
  %i.bu = load i32, ptr @nf_conntrack_generation, align 4
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr @nf_conntrack_generation, align 4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !119
  store volatile i8 0, ptr @nf_conntrack_locks_all, align 1
  call void @_raw_spin_unlock(ptr noundef nonnull @nf_conntrack_locks_all_lock) #18
  call void @__local_bh_enable_ip(i64 noundef %i.z, i32 noundef 512) #18
  call void @mutex_unlock(ptr noundef nonnull @nf_conntrack_mutex) #18
  call void @synchronize_net() #18
  call void @kvfree(ptr noundef %i.bt) #18
  br label %nf_ct_alloc_hashtable.exit.thread

nf_ct_alloc_hashtable.exit.thread:                ; preds = %bb.d, %bb.b, %bb.c, %bb.a, %._crit_edge44, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ 0, %._crit_edge44 ], [ -22, %bb.a ], [ -12, %bb.b ], [ -12, %bb.c ], [ -12, %bb.d ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @nf_conntrack_set_hashsize(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #22, !srcloc !120
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr i8, ptr %i.c, i64 2088
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  %.not = icmp eq ptr %i.g, @init_net
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @nf_conntrack_hash, align 8
  %.not6 = icmp eq ptr %i.h, null
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @param_set_uint(ptr noundef %0, ptr noundef %1) #18
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 4, !annotation !19
  %i.j = call i32 @kstrtouint(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %i.a) #18 ; 2 uses
  %.not7 = icmp eq i32 %i.j, 0
  br i1 %.not7, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = load i32, ptr %i.a, align 4
  %i.l = call i32 @nf_conntrack_hash_resize(i32 noundef %i.k) #20
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.e, %bb.c
  %.0 = phi i32 [ %i.i, %bb.c ], [ -95, %bb.a ], [ %i.l, %bb.e ], [ %i.j, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @param_set_uint(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @nf_conntrack_init_start() local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %0 = alloca %struct.kmem_cache_args, align 8    ; 5 uses
  %i.a = load volatile i64, ptr @_totalram_pages, align 8 ; 3 uses
  store i32 0, ptr @nf_conntrack_generation, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(4096) @nf_conntrack_locks, i8 0, i64 4096, i1 false)
  %i.b = load i32, ptr @nf_conntrack_htable_size, align 4 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %thread-pre-split

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 5
  %i.d = trunc i64 %i.c to i32                    ; 3 uses
  store i32 %i.d, ptr @nf_conntrack_htable_size, align 4
  %i.e = icmp ugt i64 %i.a, 1048576
  br i1 %i.e, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ugt i64 %i.a, 262144
  br i1 %i.f, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ult i32 %i.d, 1024
  br i1 %i.g, label %.sink.split, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.d, %bb.a
  %i.h = phi i32 [ %i.b, %bb.a ], [ %i.d, %bb.d ] ; 2 uses
  %.016 = phi i32 [ 8, %bb.a ], [ 1, %bb.d ]
  %i.i = icmp ugt i32 %i.h, 268435455
  br i1 %i.i, label %nf_ct_alloc_hashtable.exit.thread, label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %thread-pre-split
  %narrow.i = add nuw nsw i32 %i.h, 511
  %i.j = and i32 %narrow.i, 536870400             ; 3 uses
  store i32 %i.j, ptr @nf_conntrack_htable_size, align 4
  %i.k = icmp samesign ugt i32 %i.j, 268435455
  br i1 %i.k, label %nf_ct_alloc_hashtable.exit.thread, label %bb.e

.sink.split:                                      ; preds = %bb.b, %bb.c, %bb.d
  %.sink = phi i32 [ 1024, %bb.d ], [ 262144, %bb.b ], [ 65536, %bb.c ] ; 2 uses
  store i32 %.sink, ptr @nf_conntrack_htable_size, align 4
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %thread-pre-split.thread
  %i.l = phi i32 [ %i.j, %thread-pre-split.thread ], [ %.sink, %.sink.split ] ; 3 uses
  %.0162631 = phi i32 [ %.016, %thread-pre-split.thread ], [ 1, %.sink.split ]
  %i.m = shl nuw nsw i32 %i.l, 3
  %i.n = zext nneg i32 %i.m to i64
  %i.o = tail call noalias ptr @__kvmalloc_node_noprof(i64 noundef %i.n, i64 noundef 1, i32 noundef 3520, i32 noundef -1) #25 ; 8 uses
  %.not53 = icmp eq ptr %i.o, null
  br i1 %.not53, label %nf_ct_alloc_hashtable.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %i.l to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.p = add nsw i32 %i.l, -1
  %i.q = icmp ult i32 %i.p, 3
  br i1 %i.q, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.r = shl nuw nsw i64 %indvars.iv.i, 1
  %i.s = or disjoint i64 %i.r, 1
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv.i
  store ptr %i.t, ptr %i.u, align 8
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.v = shl nuw nsw i64 %indvars.iv.next.i, 1
  %i.w = or disjoint i64 %i.v, 1
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv.next.i
  store ptr %i.x, ptr %i.y, align 8
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.z = shl nuw nsw i64 %indvars.iv.next.i.1, 1
  %i.aa = or disjoint i64 %i.z, 1
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv.next.i.1
  store ptr %i.ab, ptr %i.ac, align 8
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.ad = shl nuw nsw i64 %indvars.iv.next.i.2, 1
  %i.ae = or disjoint i64 %i.ad, 1
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv.next.i.2
  store ptr %i.af, ptr %i.ag, align 8
end_hunk_1
begin_hunk_2_@__nf_ct_resolve_clash:bb.a
  %.not11.i8.i.i14.i = or i1 %i.cp, %i.cq
  br i1 %.not11.i8.i.i14.i, label %nf_ct_can_merge.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cr = getelementptr i8, ptr %i.d, i64 52
  %i.cs = load i16, ptr %i.cr, align 4
  %i.ct = getelementptr i8, ptr %i.h, i64 124
  %i.cu = load i16, ptr %i.ct, align 4
  %i.cv = icmp eq i16 %i.cs, %i.cu
  br i1 %i.cv, label %nf_ct_tuple_equal.exit.i15.i, label %nf_ct_can_merge.exit.thread

nf_ct_tuple_equal.exit.i15.i:                     ; preds = %bb.k
  %i.cw = getelementptr i8, ptr %i.d, i64 54
  %i.cx = load i8, ptr %i.cw, align 2
  %i.cy = getelementptr i8, ptr %i.h, i64 126
  %i.cz = load i8, ptr %i.cy, align 2
  %i.da = icmp eq i8 %i.cx, %i.cz
  br i1 %i.da, label %bb.l, label %nf_ct_can_merge.exit.thread

bb.l:                                             ; preds = %nf_ct_tuple_equal.exit.i15.i
  %i.db = getelementptr i8, ptr %i.d, i64 72
  %.val.i.i12.i.i = load i64, ptr %i.db, align 8
  %i.dc = getelementptr i8, ptr %i.d, i64 80
  %.val6.i.i13.i.i = load i64, ptr %i.dc, align 8
  %i.dd = icmp ne i64 %.val.i.i12.i.i, %.val7.i.i.i.i
  %i.de = icmp ne i64 %.val6.i.i13.i.i, %.val8.i.i.i.i
  %.not11.i.i16.i.i = or i1 %i.dd, %i.de
  br i1 %.not11.i.i16.i.i, label %nf_ct_can_merge.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.df = getelementptr i8, ptr %i.d, i64 88
  %i.dg = load i16, ptr %i.df, align 8
  %i.dh = getelementptr i8, ptr %i.h, i64 48
  %i.di = load i16, ptr %i.dh, align 8
  %i.dj = icmp eq i16 %i.dg, %i.di
  br i1 %i.dj, label %__nf_ct_tuple_src_equal.exit.i17.i.i, label %nf_ct_can_merge.exit.thread

__nf_ct_tuple_src_equal.exit.i17.i.i:             ; preds = %bb.m
  %i.dk = getelementptr i8, ptr %i.d, i64 90
  %i.dl = load i16, ptr %i.dk, align 2
  %i.dm = getelementptr i8, ptr %i.h, i64 50
  %i.dn = load i16, ptr %i.dm, align 2
  %i.do = icmp eq i16 %i.dl, %i.dn
  br i1 %i.do, label %bb.n, label %nf_ct_can_merge.exit.thread

bb.n:                                             ; preds = %__nf_ct_tuple_src_equal.exit.i17.i.i
  %i.dp = getelementptr i8, ptr %i.d, i64 92
  %i.dq = getelementptr i8, ptr %i.h, i64 52
  %.val.i4.i18.i.i = load i64, ptr %i.dp, align 8
  %i.dr = getelementptr i8, ptr %i.d, i64 100
  %.val6.i5.i19.i.i = load i64, ptr %i.dr, align 8
  %.val7.i6.i20.i.i = load i64, ptr %i.dq, align 8
  %i.ds = getelementptr i8, ptr %i.h, i64 60
  %.val8.i7.i21.i.i = load i64, ptr %i.ds, align 8
  %i.dt = icmp ne i64 %.val.i4.i18.i.i, %.val7.i6.i20.i.i
  %i.du = icmp ne i64 %.val6.i5.i19.i.i, %.val8.i7.i21.i.i
  %.not11.i8.i22.i.i = or i1 %i.dt, %i.du
  br i1 %.not11.i8.i22.i.i, label %nf_ct_can_merge.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dv = getelementptr i8, ptr %i.d, i64 108
  %i.dw = load i16, ptr %i.dv, align 4
  %i.dx = getelementptr i8, ptr %i.h, i64 68
  %i.dy = load i16, ptr %i.dx, align 4
  %i.dz = icmp eq i16 %i.dw, %i.dy
  br i1 %i.dz, label %nf_ct_can_merge.exit, label %nf_ct_can_merge.exit.thread

nf_ct_can_merge.exit:                             ; preds = %bb.o
  %i.ea = getelementptr i8, ptr %i.d, i64 110
  %i.eb = load i8, ptr %i.ea, align 2
  %i.ec = getelementptr i8, ptr %i.h, i64 70
  %i.ed = load i8, ptr %i.ec, align 2
  %.not = icmp eq i8 %i.eb, %i.ed
  br i1 %.not, label %nf_ct_can_merge.exit.nf_ct_can_merge.exit.thread18_crit_edge, label %nf_ct_can_merge.exit.thread

nf_ct_can_merge.exit.nf_ct_can_merge.exit.thread18_crit_edge: ; preds = %nf_ct_can_merge.exit
  %.phi.trans.insert = getelementptr i8, ptr %i.d, i64 120
  %.val.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %nf_ct_can_merge.exit.thread18

nf_ct_can_merge.exit.thread18:                    ; preds = %nf_ct_can_merge.exit.nf_ct_can_merge.exit.thread18_crit_edge, %nf_ct_match.exit.i
  %.val = phi ptr [ %.val.pre, %nf_ct_can_merge.exit.nf_ct_can_merge.exit.thread18_crit_edge ], [ %.val10.i.i, %nf_ct_match.exit.i ]
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %nf_conntrack_get.exit, label %bb.p

bb.p:                                             ; preds = %nf_ct_can_merge.exit.thread18
  %i.ee = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.e, i32 1, ptr nonnull elementtype(i32) %i.e) #19, !srcloc !24 ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.ee, 0
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i.i, label %bb.q, !prof !21

bb.q:                                             ; preds = %bb.p
  %i.ef = add i32 %i.ee, 1
  %i.eg = or i32 %i.ef, %i.ee
  %.not10.i.i.i.i = icmp sgt i32 %i.eg, -1
  br i1 %.not10.i.i.i.i, label %nf_conntrack_get.exit, label %.sink.split.i.i.i.i, !prof !18

.sink.split.i.i.i.i:                              ; preds = %bb.q, %bb.p
  %.sink.i.i.i.i = phi i32 [ 2, %bb.p ], [ 1, %bb.q ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %i.e, i32 noundef %.sink.i.i.i.i) #18
  br label %nf_conntrack_get.exit

nf_conntrack_get.exit:                            ; preds = %nf_ct_can_merge.exit.thread18, %bb.q, %.sink.split.i.i.i.i
  %i.eh = getelementptr i8, ptr %i.h, i64 176
  %.val13 = load ptr, ptr %i.eh, align 8          ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val13, null
  br i1 %.not.i.i.i, label %nf_ct_acct_merge.exit, label %bb.r

bb.r:                                             ; preds = %nf_conntrack_get.exit
  %i.ei = getelementptr i8, ptr %.val13, i64 3
  %i.ej = load i8, ptr %i.ei, align 1             ; 2 uses
  %.not1.i.i.i = icmp eq i8 %i.ej, 0
  br i1 %.not1.i.i.i, label %nf_ct_acct_merge.exit, label %nf_conn_acct_find.exit.i

nf_conn_acct_find.exit.i:                         ; preds = %bb.r
  %i.ek = zext i8 %i.ej to i64
  %i.el = getelementptr i8, ptr %.val13, i64 %i.ek ; 2 uses
  %.not.i14 = icmp eq ptr %i.el, null
  br i1 %.not.i14, label %nf_ct_acct_merge.exit, label %bb.s

bb.s:                                             ; preds = %nf_conn_acct_find.exit.i
  %i.em = and i64 %.val12, 7
  %i.en = icmp samesign ugt i64 %i.em, 2
  %i.eo = zext i1 %i.en to i64                    ; 2 uses
  %i.ep = getelementptr [16 x i8], ptr %i.el, i64 %i.eo
  %i.eq = getelementptr i8, ptr %i.ep, i64 8
  %i.er = load volatile i64, ptr %i.eq, align 8
  %i.es = getelementptr i8, ptr %i.d, i64 160
  %.val7.i = load ptr, ptr %i.es, align 8         ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val7.i, null
  br i1 %.not.i.i.i.i.i, label %nf_ct_acct_merge.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.et = getelementptr i8, ptr %.val7.i, i64 3
  %i.eu = load i8, ptr %i.et, align 1             ; 2 uses
  %.not1.i.i.i.i.i = icmp eq i8 %i.eu, 0
  br i1 %.not1.i.i.i.i.i, label %nf_ct_acct_merge.exit, label %nf_conn_acct_find.exit.i.i.i

nf_conn_acct_find.exit.i.i.i:                     ; preds = %bb.t
  %i.ev = zext i8 %i.eu to i64
  %i.ew = getelementptr i8, ptr %.val7.i, i64 %i.ev ; 2 uses
  %.not.i.i8.i = icmp eq ptr %i.ew, null
  br i1 %.not.i.i8.i, label %nf_ct_acct_merge.exit, label %bb.u

bb.u:                                             ; preds = %nf_conn_acct_find.exit.i.i.i
  %i.ex = getelementptr [16 x i8], ptr %i.ew, i64 %i.eo ; 3 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock addq $1, $0", "=*m,er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ex, i64 range(i64 0, 4294967296) 1, ptr elementtype(i64) %i.ex) #19, !srcloc !42
  %i.ey = and i64 %i.er, 4294967295
  %i.ez = getelementptr i8, ptr %i.ex, i64 8      ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock addq $1, $0", "=*m,er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ez, i64 range(i64 0, 4294967296) %i.ey, ptr elementtype(i64) %i.ez) #19, !srcloc !42
  br label %nf_ct_acct_merge.exit

nf_ct_acct_merge.exit:                            ; preds = %nf_conntrack_get.exit, %bb.r, %nf_conn_acct_find.exit.i, %bb.s, %bb.t, %nf_conn_acct_find.exit.i.i.i, %bb.u
  %.not.i15 = icmp eq i64 %i.g, 0
  br i1 %.not.i15, label %nf_ct_put.exit, label %bb.v

bb.v:                                             ; preds = %nf_ct_acct_merge.exit
  %i.fa = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.h, i32 -1, ptr nonnull elementtype(i32) %i.h) #19, !inline_history !26, !srcloc !24 ; 2 uses
  %i.fb = icmp eq i32 %i.fa, 1
  br i1 %i.fb, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fc = icmp slt i32 %i.fa, 1
  br i1 %i.fc, label %bb.x, label %nf_ct_put.exit, !prof !21

bb.x:                                             ; preds = %bb.w
  tail call void @refcount_warn_saturate(ptr noundef nonnull %i.h, i32 noundef 3) #18, !inline_history !26
  br label %nf_ct_put.exit

bb.y:                                             ; preds = %bb.v
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !inline_history !26, !srcloc !25
  tail call void @nf_ct_destroy(ptr noundef nonnull %i.h) #20, !inline_history !26
  br label %nf_ct_put.exit

nf_ct_put.exit:                                   ; preds = %nf_ct_acct_merge.exit, %bb.w, %bb.x, %bb.y
  %i.fd = ptrtoint ptr %i.e to i64
  %i.fe = and i64 %.val12, 7
  %i.ff = or i64 %i.fe, %i.fd                     ; 2 uses
  %.not.i.i = icmp eq i64 %i.ff, 0
  %i.fg = getelementptr i8, ptr %0, i64 129       ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 1            ; 2 uses
  %.mask.i.i = and i32 %i.fh, 2097152
  %i.fi = select i1 %.not.i.i, i32 %.mask.i.i, i32 2097152
  %i.fj = and i32 %i.fh, -2097153
  %i.fk = or disjoint i32 %i.fi, %i.fj
  store i32 %i.fk, ptr %i.fg, align 1
  store i64 %i.ff, ptr %i.f, align 8
  %i.fl = getelementptr i8, ptr %.val, i64 2888
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = getelementptr i8, ptr %i.fm, i64 16     ; 2 uses
  tail call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.fn, ptr elementtype(i32) %i.fn) #19, !srcloc !125
  br label %nf_ct_can_merge.exit.thread

nf_ct_can_merge.exit.thread:                      ; preds = %bb.m, %bb.n, %bb.o, %__nf_ct_tuple_src_equal.exit.i17.i.i, %bb.i, %bb.j, %bb.k, %__nf_ct_tuple_src_equal.exit.i.i9.i, %nf_ct_match.exit.thread.i, %bb.l, %nf_ct_tuple_equal.exit.i15.i, %nf_ct_can_merge.exit, %nf_ct_put.exit
  %.0 = phi i32 [ 1, %nf_ct_put.exit ], [ 0, %nf_ct_can_merge.exit ], [ 0, %nf_ct_tuple_equal.exit.i15.i ], [ 0, %bb.l ], [ 0, %nf_ct_match.exit.thread.i ], [ 0, %__nf_ct_tuple_src_equal.exit.i.i9.i ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %__nf_ct_tuple_src_equal.exit.i17.i.i ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 0, 2) i32 @early_drop(ptr nofree noundef readonly captures(address) %0, i32 noundef %1) unnamed_addr #15 align 16 prefalign(16) {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.critedge
  %.02247 = phi i32 [ 0, %bb.a ], [ %i.ca, %.critedge ] ; 2 uses
  %.02346 = phi i32 [ 0, %bb.a ], [ %.124, %.critedge ]
  tail call void @__rcu_read_lock() #18
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i, %bb.b
  %i.a = load volatile i32, ptr @nf_conntrack_generation, align 4 ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !32
  %i.b = and i32 %i.a, 1
  %.not11.i = icmp eq i32 %i.b, 0
  br i1 %.not11.i, label %._crit_edge.i, label %.lr.ph.i, !prof !33

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !34
  %i.c = load volatile i32, ptr @nf_conntrack_generation, align 4 ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !32
  %i.d = and i32 %i.c, 1
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !prof !35, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.lcssa.i = phi i32 [ %i.a, %bb.c ], [ %i.c, %.lr.ph.i ]
  %i.e = load i32, ptr @nf_conntrack_htable_size, align 4 ; 2 uses
  %i.f = load ptr, ptr @nf_conntrack_hash, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !37
  %i.g = load volatile i32, ptr @nf_conntrack_generation, align 4
  %.not8.i = icmp eq i32 %i.g, %.lcssa.i
  br i1 %.not8.i, label %nf_conntrack_get_ht.exit, label %bb.c, !llvm.loop !1

nf_conntrack_get_ht.exit:                         ; preds = %._crit_edge.i
  %.not = icmp eq i32 %.02247, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %nf_conntrack_get_ht.exit
  %2 = tail call range(i32 0, -1) i32 @llvm.umulh.i32(i32 %1, i32 %i.e)
  br label %bb.f

bb.e:                                             ; preds = %nf_conntrack_get_ht.exit
  %i.h = add nuw i32 %.02346, 1
  %i.i = urem i32 %i.h, %i.e
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.124 = phi i32 [ %i.i, %bb.e ], [ %2, %bb.d ]  ; 2 uses
  %i.j = zext i32 %.124 to i64
  %i.k = getelementptr [8 x i8], ptr %i.f, i64 %i.j
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !128
  %i.l = load volatile ptr, ptr %i.k, align 8     ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = and i64 %i.m, 1
  %.not47.i = icmp eq i64 %i.n, 0
  br i1 %.not47.i, label %.lr.ph.i28, label %early_drop_list.exit.thread

early_drop_list.exit.thread:                      ; preds = %bb.f
  tail call void @__rcu_read_unlock() #18
  br label %.critedge

.lr.ph.i28:                                       ; preds = %bb.f, %nf_ct_put.exit.i
  %.049.i = phi ptr [ %i.bu, %nf_ct_put.exit.i ], [ %i.l, %bb.f ] ; 3 uses
  %.03448.i = phi i32 [ %.2.i, %nf_ct_put.exit.i ], [ 0, %bb.f ] ; 12 uses
  %i.o = getelementptr i8, ptr %.049.i, i64 55
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i64
  %.neg.i.i = mul nsw i64 %i.q, -56
  %i.r = getelementptr i8, ptr %.049.i, i64 %.neg.i.i ; 5 uses
  %i.s = getelementptr i8, ptr %i.r, i64 -16      ; 20 uses
  %i.t = getelementptr i8, ptr %i.r, i64 -8       ; 2 uses
  %i.u = load volatile i32, ptr %i.t, align 8
  %i.v = load volatile i64, ptr @jiffies, align 64
  %i.w = trunc i64 %i.v to i32
  %i.x = sub i32 %i.u, %i.w
  %i.y = icmp slt i32 %i.x, 1
  br i1 %i.y, label %bb.g, label %bb.o

bb.g:                                             ; preds = %.lr.ph.i28
  %i.z = load volatile i32, ptr %i.s, align 8     ; 2 uses
  %.old1.not.i.i.i.i30 = icmp eq i32 %i.z, 0
  br i1 %.old1.not.i.i.i.i30, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i34, label %.preheader.i.i.i.i31

.preheader.i.i.i.i31:                             ; preds = %bb.g, %arch_atomic_try_cmpxchg.exit.i.i.i.i33
  %.0.i.i.i.i32 = phi i32 [ %i.af, %arch_atomic_try_cmpxchg.exit.i.i.i.i33 ], [ %i.z, %bb.g ] ; 3 uses
  %i.aa = add i32 %.0.i.i.i.i32, 1
  %i.ab = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.s, i32 %i.aa, ptr elementtype(i32) %i.s, i32 %.0.i.i.i.i32) #19, !srcloc !38 ; 2 uses
  %i.ac = extractvalue { i8, i32 } %i.ab, 0       ; 2 uses
  %i.ad = icmp ult i8 %i.ac, 2
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = trunc nuw i8 %i.ac to i1
  br i1 %i.ae, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i34, label %arch_atomic_try_cmpxchg.exit.i.i.i.i33, !prof !18

arch_atomic_try_cmpxchg.exit.i.i.i.i33:           ; preds = %.preheader.i.i.i.i31
  %i.af = extractvalue { i8, i32 } %i.ab, 1       ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i34, label %.preheader.i.i.i.i31, !llvm.loop !2

arch_atomic_try_cmpxchg.exit.thread.i.i.i.i34:    ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i.i33, %.preheader.i.i.i.i31, %bb.g
  %.2.i.i.i.i35 = phi i32 [ 0, %bb.g ], [ %.0.i.i.i.i32, %.preheader.i.i.i.i31 ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i.i33 ] ; 3 uses
  %i.ah = add i32 %.2.i.i.i.i35, 1
  %i.ai = or i32 %i.ah, %.2.i.i.i.i35
  %.not.i.i.i.i36 = icmp sgt i32 %i.ai, -1
  br i1 %.not.i.i.i.i36, label %refcount_inc_not_zero.exit.i37, label %bb.h, !prof !18

bb.h:                                             ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i34
  tail call void @refcount_warn_saturate(ptr noundef %i.s, i32 noundef 0) #18
  br label %refcount_inc_not_zero.exit.i37

refcount_inc_not_zero.exit.i37:                   ; preds = %bb.h, %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i34
  %.not.i38 = icmp eq i32 %.2.i.i.i.i35, 0
  br i1 %.not.i38, label %nf_ct_put.exit.i, label %nf_ct_is_confirmed.exit.i.i

nf_ct_is_confirmed.exit.i.i:                      ; preds = %refcount_inc_not_zero.exit.i37
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !39
  %i.aj = getelementptr i8, ptr %i.r, i64 112     ; 2 uses
  %i.ak = load volatile i64, ptr %i.aj, align 8
  %i.al = and i64 %i.ak, 8
  %.not.i.i39 = icmp eq i64 %i.al, 0
  br i1 %.not.i.i39, label %nf_ct_should_gc.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %nf_ct_is_confirmed.exit.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !40
  %i.am = load volatile i32, ptr %i.t, align 8
  %i.an = load volatile i64, ptr @jiffies, align 64
  %i.ao = trunc i64 %i.an to i32
  %i.ap = sub i32 %i.am, %i.ao
  %i.aq = icmp slt i32 %i.ap, 1
  br i1 %i.aq, label %nf_ct_should_gc.exit.i, label %nf_ct_should_gc.exit.thread.i

nf_ct_should_gc.exit.i:                           ; preds = %bb.i
  %i.ar = load volatile i64, ptr %i.aj, align 8
  %i.as = and i64 %i.ar, 512
  %.not4.i.i = icmp eq i64 %i.as, 0
  br i1 %.not4.i.i, label %bb.j, label %nf_ct_should_gc.exit.thread.i

bb.j:                                             ; preds = %nf_ct_should_gc.exit.i
  %i.at = tail call noundef zeroext i1 @nf_ct_delete(ptr noundef %i.s, i32 poison, i32 poison) #20 ; 0 uses
  br label %nf_ct_should_gc.exit.thread.i

nf_ct_should_gc.exit.thread.i:                    ; preds = %bb.j, %nf_ct_should_gc.exit.i, %bb.i, %nf_ct_is_confirmed.exit.i.i
  %.not.i4.i = icmp eq ptr %i.s, null
  br i1 %.not.i4.i, label %nf_ct_put.exit.i, label %bb.k

bb.k:                                             ; preds = %nf_ct_should_gc.exit.thread.i
  %i.au = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.s, i32 -1, ptr nonnull elementtype(i32) %i.s) #19, !inline_history !26, !srcloc !24 ; 2 uses
  %i.av = icmp eq i32 %i.au, 1
  br i1 %i.av, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = icmp slt i32 %i.au, 1
  br i1 %i.aw, label %bb.m, label %nf_ct_put.exit.i, !prof !21

bb.m:                                             ; preds = %bb.l
  tail call void @refcount_warn_saturate(ptr noundef nonnull %i.s, i32 noundef 3) #18, !inline_history !26
  br label %nf_ct_put.exit.i

bb.n:                                             ; preds = %bb.k
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !inline_history !26, !srcloc !25
  tail call void @nf_ct_destroy(ptr noundef nonnull %i.s) #20, !inline_history !26
  br label %nf_ct_put.exit.i

bb.o:                                             ; preds = %.lr.ph.i28
  %i.ax = getelementptr i8, ptr %i.r, i64 112     ; 3 uses
  %i.ay = load volatile i64, ptr %i.ax, align 8
  %i.az = and i64 %i.ay, 4
  %.not42.i = icmp eq i64 %i.az, 0
  br i1 %.not42.i, label %bb.p, label %nf_ct_put.exit.i

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr i8, ptr %i.r, i64 120     ; 2 uses
  %.val39.i = load ptr, ptr %i.ba, align 8
  %.not44.i = icmp eq ptr %.val39.i, %0
  br i1 %.not44.i, label %nf_ct_is_dying.exit.i, label %nf_ct_put.exit.i

nf_ct_is_dying.exit.i:                            ; preds = %bb.p
  %i.bb = load volatile i64, ptr %i.ax, align 8
  %i.bc = and i64 %i.bb, 512
  %.not36.i = icmp eq i64 %i.bc, 0
  br i1 %.not36.i, label %bb.q, label %nf_ct_put.exit.i

bb.q:                                             ; preds = %nf_ct_is_dying.exit.i
  %i.bd = load volatile i32, ptr %i.s, align 8    ; 2 uses
  %.old1.not.i.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.old1.not.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.q, %arch_atomic_try_cmpxchg.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.bj, %arch_atomic_try_cmpxchg.exit.i.i.i.i ], [ %i.bd, %bb.q ] ; 3 uses
  %i.be = add i32 %.0.i.i.i.i, 1
  %i.bf = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.s, i32 %i.be, ptr elementtype(i32) %i.s, i32 %.0.i.i.i.i) #19, !srcloc !38 ; 2 uses
  %i.bg = extractvalue { i8, i32 } %i.bf, 0       ; 2 uses
  %i.bh = icmp ult i8 %i.bg, 2
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = trunc nuw i8 %i.bg to i1
  br i1 %i.bi, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i.i, !prof !18

arch_atomic_try_cmpxchg.exit.i.i.i.i:             ; preds = %.preheader.i.i.i.i
  %i.bj = extractvalue { i8, i32 } %i.bf, 1       ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !2

arch_atomic_try_cmpxchg.exit.thread.i.i.i.i:      ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i.i, %.preheader.i.i.i.i, %bb.q
  %.2.i.i.i.i = phi i32 [ 0, %bb.q ], [ %.0.i.i.i.i, %.preheader.i.i.i.i ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i.i ] ; 3 uses
  %i.bl = add i32 %.2.i.i.i.i, 1
  %i.bm = or i32 %i.bl, %.2.i.i.i.i
  %.not.i.i.i.i = icmp sgt i32 %i.bm, -1
  br i1 %.not.i.i.i.i, label %refcount_inc_not_zero.exit.i, label %bb.r, !prof !18

bb.r:                                             ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef %i.s, i32 noundef 0) #18
  br label %refcount_inc_not_zero.exit.i

refcount_inc_not_zero.exit.i:                     ; preds = %bb.r, %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i
  %.not45.i = icmp eq i32 %.2.i.i.i.i, 0
  br i1 %.not45.i, label %nf_ct_put.exit.i, label %bb.s

bb.s:                                             ; preds = %refcount_inc_not_zero.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !129
  %.val.i = load ptr, ptr %i.ba, align 8
  %.not46.i = icmp eq ptr %.val.i, %0
  br i1 %.not46.i, label %nf_ct_is_confirmed.exit.i, label %bb.u

nf_ct_is_confirmed.exit.i:                        ; preds = %bb.s
  %i.bn = load volatile i64, ptr %i.ax, align 8
  %i.bo = and i64 %i.bn, 8
  %.not38.i = icmp eq i64 %i.bo, 0
  br i1 %.not38.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %nf_ct_is_confirmed.exit.i
  %i.bp = tail call zeroext i1 @nf_ct_delete(ptr noundef %i.s, i32 poison, i32 poison) #20
  %i.bq = zext i1 %i.bp to i32
  %spec.select.i = add i32 %.03448.i, %i.bq
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %nf_ct_is_confirmed.exit.i, %bb.s
  %.1.i = phi i32 [ %.03448.i, %bb.s ], [ %spec.select.i, %bb.t ], [ %.03448.i, %nf_ct_is_confirmed.exit.i ] ; 4 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %nf_ct_put.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.br = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.s, i32 -1, ptr nonnull elementtype(i32) %i.s) #19, !inline_history !26, !srcloc !24 ; 2 uses
  %i.bs = icmp eq i32 %i.br, 1
  br i1 %i.bs, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bt = icmp slt i32 %i.br, 1
  br i1 %i.bt, label %bb.x, label %nf_ct_put.exit.i, !prof !21

end_hunk_2
begin_hunk_3_@nf_conntrack_get_tuple_skb:bb.a

bb.d:                                             ; preds = %bb.c
  %.not13.i.i.i = icmp eq ptr %1, null
  br i1 %.not13.i.i.i, label %get_l4proto.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %i.r, ptr noundef nonnull %2, i32 noundef 20) #18
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %get_l4proto.exit.thread, label %__skb_header_pointer.exit.thread17.i.i, !prof !21

__skb_header_pointer.exit.i.i:                    ; preds = %bb.c
  %sext = shl i64 %i.q, 32
  %i.ab = ashr exact i64 %sext, 32
  %i.ac = getelementptr i8, ptr %i.n, i64 %i.ab   ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %get_l4proto.exit.thread, label %__skb_header_pointer.exit.thread17.i.i

__skb_header_pointer.exit.thread17.i.i:           ; preds = %__skb_header_pointer.exit.i.i, %bb.e
  %.0.i20.i.i = phi ptr [ %i.ac, %__skb_header_pointer.exit.i.i ], [ %2, %bb.e ] ; 3 uses
  %i.ad = getelementptr i8, ptr %.0.i20.i.i, i64 6
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = and i16 %i.ae, -225
  %.not13.i.i = icmp eq i16 %i.af, 0
  br i1 %.not13.i.i, label %bb.f, label %get_l4proto.exit.thread

bb.f:                                             ; preds = %__skb_header_pointer.exit.thread17.i.i
  %i.ag = load i8, ptr %.0.i20.i.i, align 4
  %i.ah = shl i8 %i.ag, 2
  %i.ai = and i8 %i.ah, 60
  %i.aj = zext nneg i8 %i.ai to i32
  %i.ak = add i32 %i.aj, %i.r                     ; 3 uses
  %i.al = getelementptr i8, ptr %.0.i20.i.i, i64 9
  %i.am = load i8, ptr %i.al, align 1
  %i.an = load i32, ptr %i.v, align 8
  %i.ao = icmp ugt i32 %i.ak, %i.an
  br i1 %i.ao, label %get_l4proto.exit.thread, label %get_l4proto.exit

get_l4proto.exit.thread:                          ; preds = %__skb_header_pointer.exit.i.i, %__skb_header_pointer.exit.thread17.i.i, %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %nf_ct_put.exit

get_l4proto.exit:                                 ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.ap = icmp slt i32 %i.ak, 1
  br i1 %i.ap, label %nf_ct_put.exit, label %nf_ct_get_tuplepr.exit

nf_ct_get_tuplepr.exit:                           ; preds = %get_l4proto.exit
  %i.aq = call fastcc zeroext i1 @nf_ct_get_tuple(ptr noundef %1, i32 noundef %i.r, i32 noundef %i.ak, i16 noundef zeroext 2, i8 noundef zeroext %i.am, ptr noundef %.val22, ptr noundef nonnull %3) #20, !srcloc !20
  br i1 %i.aq, label %bb.g, label %nf_ct_put.exit

bb.g:                                             ; preds = %nf_ct_get_tuplepr.exit
  %i.ar = load ptr, ptr %i.s, align 8
  %i.as = getelementptr i8, ptr %i.ar, i64 264
  %.val21 = load ptr, ptr %i.as, align 8
  %i.at = call ptr @nf_conntrack_find_get(ptr noundef %.val21, ptr nonnull poison, ptr noundef nonnull %3) #20 ; 3 uses
  %.not19 = icmp eq ptr %i.at, null
  br i1 %.not19, label %nf_ct_put.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr i8, ptr %i.at, i64 55
  %i.av = load i8, ptr %i.au, align 1             ; 2 uses
  %i.aw = zext i8 %i.av to i64
  %.neg.i = mul nsw i64 %i.aw, -56
  %i.ax = getelementptr i8, ptr %i.at, i64 %.neg.i
  %i.ay = getelementptr i8, ptr %i.ax, i64 -16    ; 6 uses
  %.not20 = icmp eq i8 %i.av, 0
  %i.az = zext i1 %.not20 to i64
  %i.ba = getelementptr [56 x i8], ptr %i.ay, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(40) %0, ptr noundef align 4 dereferenceable(40) %i.bb, i64 40, i1 false)
  %.not.i = icmp eq ptr %i.ay, null
  br i1 %.not.i, label %nf_ct_put.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.ay, i32 -1, ptr nonnull elementtype(i32) %i.ay) #19, !inline_history !26, !srcloc !24 ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 1
  br i1 %i.bd, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = icmp slt i32 %i.bc, 1
  br i1 %i.be, label %bb.k, label %nf_ct_put.exit, !prof !21

bb.k:                                             ; preds = %bb.j
  call void @refcount_warn_saturate(ptr noundef nonnull %i.ay, i32 noundef 3) #18, !inline_history !26
  br label %nf_ct_put.exit

bb.l:                                             ; preds = %bb.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !inline_history !26, !srcloc !25
  call void @nf_ct_destroy(ptr noundef nonnull %i.ay) #20, !inline_history !26
  br label %nf_ct_put.exit

nf_ct_put.exit:                                   ; preds = %get_l4proto.exit.thread, %get_l4proto.exit, %bb.l, %bb.k, %bb.j, %bb.h, %bb.g, %nf_ct_get_tuplepr.exit, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ true, %bb.l ], [ false, %nf_ct_get_tuplepr.exit ], [ false, %bb.g ], [ true, %bb.h ], [ true, %bb.j ], [ true, %bb.k ], [ false, %get_l4proto.exit ], [ false, %get_l4proto.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @nf_conntrack_attach(ptr nofree noundef captures(none) initializes((104, 112)) %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 104
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %i.b = and i64 %.val, -8                        ; 3 uses
  %i.c = and i64 %.val, 7
  %i.d = icmp samesign ult i64 %i.c, 3
  %i.e = select i1 %i.d, i64 4, i64 1
  %i.f = or disjoint i64 %i.e, %i.b
  %i.g = getelementptr i8, ptr %0, i64 129        ; 2 uses
  %i.h = load i32, ptr %i.g, align 1
  %i.i = or i32 %i.h, 2097152
  store i32 %i.i, ptr %i.g, align 1
  %i.j = getelementptr i8, ptr %0, i64 104
  store i64 %i.f, ptr %i.j, align 8
  %i.k = inttoptr i64 %i.b to ptr                 ; 3 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %nf_conntrack_get.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.k, i32 1, ptr nonnull elementtype(i32) %i.k) #19, !srcloc !24 ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i.i, label %bb.c, !prof !21

bb.c:                                             ; preds = %bb.b
  %i.m = add i32 %i.l, 1
  %i.n = or i32 %i.m, %i.l
  %.not10.i.i.i.i = icmp sgt i32 %i.n, -1
  br i1 %.not10.i.i.i.i, label %nf_conntrack_get.exit, label %.sink.split.i.i.i.i, !prof !18

.sink.split.i.i.i.i:                              ; preds = %bb.c, %bb.b
  %.sink.i.i.i.i = phi i32 [ 2, %bb.b ], [ 1, %bb.c ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %i.k, i32 noundef %.sink.i.i.i.i) #18
  br label %nf_conntrack_get.exit

nf_conntrack_get.exit:                            ; preds = %bb.a, %bb.c, %.sink.split.i.i.i.i
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @nf_conntrack_set_closing(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 70
  %.val = load i8, ptr %i.a, align 2
  %cond = icmp eq i8 %.val, 6
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @nf_conntrack_tcp_set_closing(ptr noundef %0) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nf_conntrack_get_id(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  callbr void asm sideeffect "1:jmp ${2:l}\0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @nf_ct_get_id.___once_key, i1 false) #19
          to label %nf_ct_get_id.exit [label %bb.b], !srcloc !22

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 0, ptr %i.a, align 8, !annotation !19
  %i.b = call zeroext i1 @__do_once_start(ptr noundef nonnull @nf_ct_get_id.___done, ptr noundef nonnull %i.a) #18
  br i1 %i.b, label %bb.c, label %bb.d, !prof !21

bb.c:                                             ; preds = %bb.b
  call void @get_random_bytes(ptr noundef nonnull @nf_ct_get_id.ct_id_seed, i64 noundef 16) #18
  call void @__do_once_done(ptr noundef nonnull @nf_ct_get_id.___done, ptr noundef nonnull @nf_ct_get_id.___once_key, ptr noundef nonnull %i.a, ptr noundef null) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %nf_ct_get_id.exit

nf_ct_get_id.exit:                                ; preds = %bb.a, %bb.d
  %i.c = ptrtoint ptr %0 to i64
  %i.d = getelementptr i8, ptr %0, i64 160
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = getelementptr i8, ptr %0, i64 136
  %.val.i = load ptr, ptr %i.g, align 8
  %i.h = ptrtoint ptr %.val.i to i64
  %i.i = getelementptr i8, ptr %0, i64 32
  %i.j = call i64 @__siphash_unaligned(ptr noundef %i.i, i64 noundef 40, ptr noundef nonnull @nf_ct_get_id.ct_id_seed) #18
  %i.k = call i64 @siphash_4u64(i64 noundef %i.c, i64 noundef %i.f, i64 noundef %i.h, i64 noundef %i.j, ptr noundef nonnull @nf_ct_get_id.ct_id_seed) #18
  %i.l = trunc i64 %i.k to i32
  ret i32 %i.l
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @nf_ct_seq_adjust(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @nf_conntrack_tcp_set_closing(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umulh.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #5 = { cold fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #8 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #9 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, argmem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #12 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #16 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { noredzone nounwind "no-builtin-wcslen" }
attributes #19 = { nounwind }
attributes #20 = { noredzone "no-builtin-wcslen" }
attributes #21 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }
attributes #22 = { nounwind memory(none) }
attributes #23 = { cold noredzone "no-builtin-wcslen" }
attributes #24 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #25 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }

!llvm.named.register.rsp = !{!4}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !{!0, !36}
!1 = distinct !{!1, !36}
!2 = distinct !{!2, !36}
!3 = distinct !{!3, !36}
!4 = !{!"rsp"}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 8, !"cf-protection-branch", i32 1}
!7 = !{i32 4, !"function_return_thunk_extern", i32 1}
!8 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!9 = !{i32 1, !"Code Model", i32 2}
!10 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!11 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!12 = !{i32 1, !"override-stack-alignment", i32 8}
!13 = !{i32 4, !"SkipRaxSetup", i32 1}
!14 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!15 = !{i8 0, i8 2}
!16 = !{}
!17 = !{i64 2161706977}
!18 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!19 = !{!"auto-init"}
!20 = !{i64 11321}
!21 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!22 = !{i64 1411176, i64 1411199, i64 2148896614, i64 2148896635, i64 2148896678, i64 2148896693, i64 2148896726, i64 2148896760, i64 2148896784}
!23 = !{i64 2157620829}
!24 = !{i64 2149084166, i64 2149084205, i64 2149084226, i64 2149084263, i64 2149084286, i64 2149084295}
!25 = !{i64 2151062174}
!26 = !{ptr @nf_ct_put}
!27 = !{i64 2149074335, i64 2149074374, i64 2149074395, i64 2149074432, i64 2149074455, i64 2149074326}
!28 = !{i64 2148224309, i64 2148224348, i64 2148224369, i64 2148224406, i64 2148224429, i64 2148224438}
!29 = !{i64 2150385989}
!30 = !{i64 2150121893}
!31 = !{i64 2150385777}
!32 = !{i64 2151417470}
!33 = !{!"branch_weights", i32 1999, i32 1}
!34 = !{i64 2528764}
!35 = !{!"branch_weights", i32 1, i32 0}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{i64 2151459003}
!38 = !{i64 2149089915, i64 2149089954, i64 2149089975, i64 2149090012, i64 2149090035, i64 2149090044}
!39 = !{i64 2161757743}
!40 = !{i64 2159738654}
!41 = !{i64 2157712543}
!42 = !{i64 2149098777, i64 2149098816, i64 2149098837, i64 2149098874, i64 2149098897, i64 2149098768}
!43 = !{i64 2148217844, i64 2148217883, i64 2148217904, i64 2148217941, i64 2148217964, i64 2148217835}
!44 = !{i64 63985}
!45 = !{i64 11234}
!46 = !{i64 2161746075, i64 2161745945}
!47 = !{i64 2161746606, i64 2161747674, i64 2161747707, i64 2161747742, i64 2161747758, i64 2161748685, i64 2161748743, i64 2161748792, i64 2161748602, i64 2161747817, i64 2161747849, i64 2161747932}
!48 = !{i64 2161749110, i64 2161748981}
!49 = !{i64 2162049057, i64 2162048927}
!50 = !{i64 2162049588, i64 2162050665, i64 2162050698, i64 2162050733, i64 2162050749, i64 2162051676, i64 2162051734, i64 2162051783, i64 2162051593, i64 2162050808, i64 2162050840, i64 2162050923}
!51 = !{i64 2162052102, i64 2162051973}
!52 = distinct !{!52, !36}
!53 = distinct !{!53, !36}
!54 = !{i64 16507}
!55 = distinct !{!55, !36}
!56 = !{i64 2161758068}
!57 = !{i64 2161776335}
!58 = !{i64 2161781849}
!59 = !{!"branch_weights", i32 1073205, i32 2146410443}
!60 = !{!"branch_weights", i32 2146410443, i32 1073205}
!61 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!62 = !{i64 21376}
!63 = distinct !{!63, !36}
!64 = distinct !{!64, !36}
!65 = distinct !{!65, !36}
!66 = distinct !{!66, !36}
!67 = !{i64 23171}
!68 = !{i64 2161792590}
!69 = !{i64 2161800492}
!70 = !{i64 2161813629}
!71 = distinct !{!71, !36}
!72 = distinct !{!72, !36}
!73 = distinct !{!73, !36}
!74 = distinct !{!74, !36}
!75 = !{i64 33326}
!76 = !{i64 2161886477, i64 2161886347}
!77 = !{i64 2161887008, i64 2161888047, i64 2161888080, i64 2161888115, i64 2161888131, i64 2161889058, i64 2161889116, i64 2161889165, i64 2161888975, i64 2161888190, i64 2161888222, i64 2161888305}
!78 = !{i64 2161889484, i64 2161889355}
!79 = !{i64 33814}
!80 = !{i64 2161898397}
!81 = !{i64 2161914472}
!82 = !{i64 2161927907}
!83 = !{i64 36285}
!84 = distinct !{!84, !36}
!85 = !{i64 31919}
!86 = !{i64 2161848493}
!87 = !{i64 28722}
!88 = !{i64 2161861453}
!89 = !{i64 2161878637}
!90 = distinct !{!90, !36}
!91 = !{i64 2161935532}
!92 = !{i64 37265}
!93 = !{i64 2161957231}
!94 = !{i64 2161970586}
!95 = !{i64 2149081922, i64 2149081961, i64 2149081982, i64 2149082019, i64 2149082042, i64 2149082051}
!96 = !{i64 44920}
!97 = !{i64 54757}
!98 = !{i64 2162115109}
!99 = !{i64 54995}
!100 = !{i64 50892}
!101 = !{i64 2162128644}
!102 = !{i64 2162146296}
!103 = !{i64 2162160006}
!104 = !{i64 2162173525}
!105 = !{i64 2162100897}
!106 = distinct !{null}
!107 = distinct !{!107, !36}
!108 = distinct !{!108, !36}
!109 = distinct !{!109, !36}
!110 = distinct !{!110, !36}
!111 = !{i64 65232}
!112 = distinct !{!112, !36}
!113 = distinct !{!113, !36}
!114 = distinct !{!114, !36}
!115 = distinct !{!115, !36}
!116 = distinct !{!116, !36}
!117 = !{i64 2151459276}
!118 = !{i64 2151459549}
!119 = !{i64 2161715645}
!120 = !{i64 2148651115}
!121 = distinct !{!121, !122}
!122 = !{!"llvm.loop.unroll.disable"}
!123 = !{i64 2148218141, i64 2148218180, i64 2148218201, i64 2148218238, i64 2148218261, i64 2148218132}
!124 = !{i64 2148219453, i64 2148219492, i64 2148219513, i64 2148219550, i64 2148219573, i64 2148219444}
!125 = !{i64 2161831311}
!126 = distinct !{!126, !36}
!127 = distinct !{!127, !36}
!128 = !{i64 2161978246}
!129 = !{i64 2161988344}
!130 = !{i64 2161998479}
!131 = !{i64 2148218782}
!132 = !{i64 2162075489}
!133 = !{i64 2162084387}
!134 = !{i64 2162089844}
!135 = distinct !{null}
!136 = distinct !{!136, !36}
!137 = distinct !{!137, !36}
!138 = !{i64 2162004768}
!139 = !{i64 42486}
!140 = !{i64 2162002685}
!141 = !{i64 2162024485}
!142 = !{i64 2162232220}
end_hunk_3
