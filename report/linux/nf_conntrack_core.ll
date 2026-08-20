inline.NumInlined: 501
inline.NumDeleted: 157
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@__nf_ct_refresh_acct:bb.a
  %.not.i.i.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i.i.i, label %nf_ct_acct_update.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr i8, ptr %.val, i64 3
  %i.n = load i8, ptr %i.m, align 1               ; 2 uses
  %.not1.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not1.i.i.i.i, label %nf_ct_acct_update.exit, label %nf_conn_acct_find.exit.i.i

nf_conn_acct_find.exit.i.i:                       ; preds = %bb.g
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr i8, ptr %.val, i64 %i.o    ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %nf_ct_acct_update.exit, label %bb.h

bb.h:                                             ; preds = %nf_conn_acct_find.exit.i.i
  %i.q = zext i1 %i.k to i64
  %i.r = getelementptr [16 x i8], ptr %i.p, i64 %i.q ; 3 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock addq $1, $0", "=*m,er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.r, i64 range(i64 0, 4294967296) 1, ptr elementtype(i64) %i.r) #19, !srcloc !67
  %i.s = zext i32 %3 to i64
  %i.t = getelementptr i8, ptr %i.r, i64 8        ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock addq $1, $0", "=*m,er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.t, i64 range(i64 0, 4294967296) %i.s, ptr elementtype(i64) %i.t) #19, !srcloc !67
  br label %nf_ct_acct_update.exit

nf_ct_acct_update.exit:                           ; preds = %bb.h, %nf_conn_acct_find.exit.i.i, %bb.g, %bb.f, %bb.e
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef zeroext i1 @nf_ct_kill_acct(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ugt i32 %1, 2
  %i.b = getelementptr i8, ptr %2, i64 112
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %0, i64 176
  %.val = load ptr, ptr %i.d, align 8             ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i.i.i, label %nf_ct_acct_update.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %.val, i64 3
  %i.f = load i8, ptr %i.e, align 1               ; 2 uses
  %.not1.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not1.i.i.i.i, label %nf_ct_acct_update.exit, label %nf_conn_acct_find.exit.i.i

nf_conn_acct_find.exit.i.i:                       ; preds = %bb.b
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr i8, ptr %.val, i64 %i.g    ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %nf_ct_acct_update.exit, label %bb.c

bb.c:                                             ; preds = %nf_conn_acct_find.exit.i.i
  %i.i = zext i1 %i.a to i64
  %i.j = getelementptr [16 x i8], ptr %i.h, i64 %i.i ; 3 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock addq $1, $0", "=*m,er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.j, i64 range(i64 0, 4294967296) 1, ptr elementtype(i64) %i.j) #19, !srcloc !67
  %i.k = zext i32 %i.c to i64
  %i.l = getelementptr i8, ptr %i.j, i64 8        ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock addq $1, $0", "=*m,er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.l, i64 range(i64 0, 4294967296) %i.k, ptr elementtype(i64) %i.l) #19, !srcloc !67
  br label %nf_ct_acct_update.exit

nf_ct_acct_update.exit:                           ; preds = %bb.a, %bb.b, %nf_conn_acct_find.exit.i.i, %bb.c
  %i.m = tail call zeroext i1 @nf_ct_delete(ptr noundef %0, i32 poison, i32 poison) #20
  ret i1 %i.m
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -1, 1) i32 @nf_ct_port_tuple_to_nlattr(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = getelementptr i8, ptr %1, i64 16
  %i.d = load i16, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i16 %i.d, ptr %i.b, align 2
  %i.e = call i32 @nla_put(ptr noundef %0, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 36
  %i.g = load i16, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i16 %i.g, ptr %i.a, align 2
  %i.h = call i32 @nla_put(ptr noundef %0, i32 noundef 3, i32 noundef 2, ptr noundef nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.not4 = icmp eq i32 %i.h, 0
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ -1, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define dso_local range(i32 -22, 1) i32 @nf_ct_port_nlattr_to_tuple(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #7 align 16 prefalign(16) {
bb.a:
  %i.a = and i32 %2, 16
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not10 = icmp eq ptr %i.c, null
  br i1 %.not10, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %i.c, i64 4
  %.val13 = load i16, ptr %i.d, align 2
  %i.e = getelementptr i8, ptr %1, i64 16
  store i16 %.val13, ptr %i.e, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.f = and i32 %2, 32
  %.not11 = icmp eq i32 %i.f, 0
  br i1 %.not11, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not12 = icmp eq ptr %i.h, null
  br i1 %.not12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr i8, ptr %i.h, i64 4
  %.val = load i16, ptr %i.i, align 2
  %i.j = getelementptr i8, ptr %1, i64 36
  store i16 %.val, ptr %i.j, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e, %bb.b
  %.0 = phi i32 [ -22, %bb.e ], [ -22, %bb.b ], [ 0, %bb.f ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @nf_ct_port_nlattr_tuple_size() #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr @nf_ct_port_nlattr_tuple_size.size, align 4 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @nla_policy_len(ptr noundef nonnull @nf_ct_port_nla_policy, i32 noundef 10) #18 ; 2 uses
  store i32 %i.b, ptr @nf_ct_port_nlattr_tuple_size.size, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i32 [ %i.b, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %i.c
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @nla_policy_len(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @nf_ct_iterate_cleanup_net(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = load i32, ptr @nf_conntrack_net_id, align 4
  tail call void @__rcu_read_lock() #18
  %i.c = getelementptr i8, ptr %i.a, i64 2984
  %i.d = load volatile ptr, ptr %i.c, align 8
  %i.e = zext i32 %i.b to i64
  %i.f = getelementptr [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @__rcu_read_unlock() #18
  %i.h = tail call i32 @__SCT__might_resched() #18 ; 0 uses
  %i.i = load volatile i32, ptr %i.g, align 4
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @nf_ct_iterate_cleanup(ptr noundef %0, ptr noundef %1) #20, !srcloc !104
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @nf_ct_iterate_cleanup(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @__SCT__might_resched() #18 ; 0 uses
  tail call void @mutex_lock(ptr noundef nonnull @nf_conntrack_mutex) #18
  %i.b = load i32, ptr @nf_conntrack_htable_size, align 4 ; 2 uses
  %.not16 = icmp eq i32 %i.b, 0
  br i1 %.not16, label %get_next_corpse.exit.thread, label %.lr.ph48.i.lr.ph

.lr.ph48.i.lr.ph:                                 ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8
  br label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %.lr.ph48.i.lr.ph, %nf_ct_put.exit
  %i.d = phi i32 [ %i.b, %.lr.ph48.i.lr.ph ], [ %i.ak, %nf_ct_put.exit ]
  %.015 = phi i32 [ 0, %.lr.ph48.i.lr.ph ], [ %.1, %nf_ct_put.exit ]
  %.pre21 = load ptr, ptr @nf_conntrack_hash, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %.lr.ph48.i
  %i.e = phi i32 [ %i.d, %.lr.ph48.i ], [ %i.aa, %bb.i ]
  %i.f = phi ptr [ %.pre21, %.lr.ph48.i ], [ %i.ab, %bb.i ] ; 2 uses
  %.1 = phi i32 [ %.015, %.lr.ph48.i ], [ %5, %bb.i ] ; 5 uses
  %2 = zext i32 %.1 to i64
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %2 ; 2 uses
  %i.h = load volatile ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %3 = and i32 %.1, 1023
  %4 = zext nneg i32 %3 to i64
  %i.k = getelementptr [4 x i8], ptr @nf_conntrack_locks, i64 %4 ; 5 uses
  %i.l = tail call i64 asm "lea 0(%rip), $0", "=r,~{dirflag},~{fpsr},~{flags}"() #22 ; 2 uses
  tail call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, i32 512, ptr nonnull elementtype(i32) @__preempt_count) #19, !srcloc !33
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !34
  tail call void @_raw_spin_lock(ptr noundef %i.k) #18
  %i.m = load volatile i8, ptr @nf_conntrack_locks_all, align 1, !range !11, !noundef !12
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !13
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %nf_conntrack_lock.exit.i, label %bb.d, !prof !14

bb.d:                                             ; preds = %bb.c
  tail call void @_raw_spin_unlock(ptr noundef %i.k) #18
  tail call void @_raw_spin_lock(ptr noundef nonnull @nf_conntrack_locks_all_lock) #18
  tail call void @_raw_spin_lock(ptr noundef %i.k) #18
  tail call void @_raw_spin_unlock(ptr noundef nonnull @nf_conntrack_locks_all_lock) #18
  br label %nf_conntrack_lock.exit.i

nf_conntrack_lock.exit.i:                         ; preds = %bb.d, %bb.c
  %.02745.i = load ptr, ptr %i.g, align 8         ; 2 uses
  %i.o = ptrtoint ptr %.02745.i to i64
  %i.p = and i64 %i.o, 1
  %.not3346.i = icmp eq i64 %i.p, 0
  br i1 %.not3346.i, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %nf_conntrack_lock.exit.i, %bb.h
  %.02747.i = phi ptr [ %.027.i, %bb.h ], [ %.02745.i, %nf_conntrack_lock.exit.i ] ; 4 uses
  %i.q = getelementptr i8, ptr %.02747.i, i64 55
  %i.r = load i8, ptr %i.q, align 1
  %.not34.i = icmp eq i8 %i.r, 1
  br i1 %.not34.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.lr.ph.i
  %i.s = getelementptr i8, ptr %.02747.i, i64 -72 ; 10 uses
  %i.t = load ptr, ptr %1, align 8                ; 2 uses
  %.not35.i = icmp eq ptr %i.t, null
  br i1 %.not35.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr i8, ptr %.02747.i, i64 64
  %.val.i = load ptr, ptr %i.u, align 8
  %.not43.i = icmp eq ptr %i.t, %.val.i
  br i1 %.not43.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = load ptr, ptr %i.c, align 8
  %i.w = tail call i32 %0(ptr noundef %i.s, ptr noundef %i.v) #18, !inline_history !105
  %.not37.i = icmp eq i32 %i.w, 0
  br i1 %.not37.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f, %.lr.ph.i
  %.027.i = load ptr, ptr %.02747.i, align 8      ; 2 uses
  %i.x = ptrtoint ptr %.027.i to i64
  %i.y = and i64 %i.x, 1
  %.not33.i = icmp eq i64 %i.y, 0
  br i1 %.not33.i, label %.lr.ph.i, label %.critedge.i, !llvm.loop !106

.critedge.i:                                      ; preds = %bb.h, %nf_conntrack_lock.exit.i
  tail call void @_raw_spin_unlock(ptr noundef %i.k) #18
  tail call void @__local_bh_enable_ip(i64 noundef %i.l, i32 noundef 512) #18
  %i.z = tail call i32 @__SCT__cond_resched() #18 ; 0 uses
  %.pre = load ptr, ptr @nf_conntrack_hash, align 8
  %.pre22 = load i32, ptr @nf_conntrack_htable_size, align 4
  br label %bb.i

bb.i:                                             ; preds = %.critedge.i, %bb.b
  %i.aa = phi i32 [ %.pre22, %.critedge.i ], [ %i.e, %bb.b ] ; 2 uses
  %i.ab = phi ptr [ %.pre, %.critedge.i ], [ %i.f, %bb.b ]
  %5 = add i32 %.1, 1                             ; 2 uses
  %6 = icmp ult i32 %5, %i.aa
  br i1 %6, label %bb.b, label %get_next_corpse.exit.thread, !llvm.loop !107

bb.j:                                             ; preds = %bb.g
  %i.ac = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.s, i32 1, ptr elementtype(i32) %i.s) #19, !srcloc !24 ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i.i, label %bb.k, !prof !18

bb.k:                                             ; preds = %bb.j
  %i.ad = add i32 %i.ac, 1
  %i.ae = or i32 %i.ad, %i.ac
  %.not10.i.i.i.i = icmp sgt i32 %i.ae, -1
  br i1 %.not10.i.i.i.i, label %get_next_corpse.exit, label %.sink.split.i.i.i.i, !prof !14

.sink.split.i.i.i.i:                              ; preds = %bb.k, %bb.j
  %.sink.i.i.i.i = phi i32 [ 2, %bb.j ], [ 1, %bb.k ]
  tail call void @refcount_warn_saturate(ptr noundef %i.s, i32 noundef %.sink.i.i.i.i) #18
  br label %get_next_corpse.exit

get_next_corpse.exit:                             ; preds = %bb.k, %.sink.split.i.i.i.i
  tail call void @_raw_spin_unlock(ptr noundef %i.k) #18
  tail call void @__local_bh_enable_ip(i64 noundef %i.l, i32 noundef 512) #18
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %get_next_corpse.exit.thread, label %bb.l

bb.l:                                             ; preds = %get_next_corpse.exit
  %i.af = tail call zeroext i1 @nf_ct_delete(ptr noundef nonnull %i.s, i32 poison, i32 poison) #20 ; 0 uses
  %i.ag = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.s, i32 -1, ptr nonnull elementtype(i32) %i.s) #19, !inline_history !26, !srcloc !24 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = icmp slt i32 %i.ag, 1
  br i1 %i.ai, label %bb.n, label %nf_ct_put.exit, !prof !18

bb.n:                                             ; preds = %bb.m
  tail call void @refcount_warn_saturate(ptr noundef nonnull %i.s, i32 noundef 3) #18, !inline_history !26
  br label %nf_ct_put.exit

bb.o:                                             ; preds = %bb.l
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !inline_history !26, !srcloc !25
  tail call void @nf_ct_destroy(ptr noundef nonnull %i.s) #20, !inline_history !26
  br label %nf_ct_put.exit

nf_ct_put.exit:                                   ; preds = %bb.m, %bb.n, %bb.o
  %i.aj = tail call i32 @__SCT__cond_resched() #18 ; 0 uses
  %i.ak = load i32, ptr @nf_conntrack_htable_size, align 4 ; 2 uses
  %7 = icmp ult i32 %.1, %i.ak
  br i1 %7, label %.lr.ph48.i, label %get_next_corpse.exit.thread, !llvm.loop !108

get_next_corpse.exit.thread:                      ; preds = %get_next_corpse.exit, %nf_ct_put.exit, %bb.i, %bb.a
  tail call void @mutex_unlock(ptr noundef nonnull @nf_conntrack_mutex) #18
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @nf_ct_iterate_destroy(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.nf_ct_iter_data, align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  tail call void @down_read(ptr noundef nonnull @net_rwsem) #18
  %.pn11 = load ptr, ptr @net_namespace_list, align 8 ; 2 uses
  %.not13 = icmp eq ptr %.pn11, @net_namespace_list
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.pn14 = phi ptr [ %.pn, %bb.c ], [ %.pn11, %bb.a ] ; 3 uses
  %i.a = load i32, ptr @nf_conntrack_net_id, align 4
  tail call void @__rcu_read_lock() #18
  %i.b = getelementptr i8, ptr %.pn14, i64 2960
  %i.c = load volatile ptr, ptr %i.b, align 8
  %i.d = zext i32 %i.a to i64
  %i.e = getelementptr [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @__rcu_read_unlock() #18
  %i.g = load volatile i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.015 = getelementptr i8, ptr %.pn14, i64 -24
  tail call void @nf_queue_nf_hook_drop(ptr noundef %.015) #18
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.pn = load ptr, ptr %.pn14, align 8            ; 2 uses
  %.not = icmp eq ptr %.pn, @net_namespace_list
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !109

._crit_edge:                                      ; preds = %bb.c, %bb.a
  tail call void @up_read(ptr noundef nonnull @net_rwsem) #18
  tail call void @net_ns_barrier() #18
  tail call void @synchronize_net() #18
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.i, align 8
  call fastcc void @nf_ct_iterate_cleanup(ptr noundef %0, ptr noundef nonnull %2) #20, !srcloc !110
  tail call void @synchronize_rcu() #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @nf_queue_nf_hook_drop(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @net_ns_barrier() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none)
define dso_local void @nf_conntrack_cleanup_start() local_unnamed_addr #8 align 16 prefalign(16) {
bb.a:
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @conntrack_gc_work, i64 104), align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @nf_conntrack_cleanup_end() local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  store volatile ptr null, ptr @nf_ct_hook, align 8
  %i.a = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef nonnull @conntrack_gc_work) #18 ; 0 uses
  %i.b = load ptr, ptr @nf_conntrack_hash, align 8
  tail call void @kvfree(ptr noundef %i.b) #18
  tail call void @nf_conntrack_proto_fini() #18
  tail call void @nf_conntrack_helper_fini() #18
  tail call void @nf_conntrack_expect_fini() #18
  %i.c = load ptr, ptr @nf_conntrack_cachep, align 8
  tail call void @kmem_cache_destroy(ptr noundef %i.c) #18
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @nf_conntrack_proto_fini() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @nf_conntrack_helper_fini() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @nf_conntrack_expect_fini() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
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
  call fastcc void @nf_ct_iterate_cleanup(ptr noundef nonnull @kill_all, ptr noundef nonnull readonly %1) #20, !srcloc !104
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
  br label %.lr.ph, !llvm.loop !111

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
end_hunk_0
begin_hunk_1_@init_conntrack:bb.a
  %i.aw = getelementptr i8, ptr %i.y, i64 160
  store ptr %i.av, ptr %i.aw, align 8
  %i.ax = getelementptr i8, ptr %i.as, i64 168
  %i.ay = load volatile ptr, ptr %i.ax, align 8   ; 3 uses
  %.not77 = icmp eq ptr %i.ay, null
  br i1 %.not77, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = call ptr @nf_ct_helper_ext_add(ptr noundef %i.y, i32 noundef 2080) #18 ; 2 uses
  %.not78 = icmp eq ptr %i.az, null
  br i1 %.not78, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr i8, ptr %i.ay, i64 152    ; 4 uses
  %i.bb = load volatile i32, ptr %i.ba, align 4   ; 2 uses
  %.old1.not.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.old1.not.i.i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.l, %arch_atomic_try_cmpxchg.exit.i.i.i
  %.0.i.i.i = phi i32 [ %i.bh, %arch_atomic_try_cmpxchg.exit.i.i.i ], [ %i.bb, %bb.l ] ; 3 uses
  %i.bc = add i32 %.0.i.i.i, 1
  %i.bd = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ba, i32 %i.bc, ptr elementtype(i32) %i.ba, i32 %.0.i.i.i) #19, !srcloc !47 ; 2 uses
  %i.be = extractvalue { i8, i32 } %i.bd, 0       ; 2 uses
  %i.bf = icmp ult i8 %i.be, 2
  call void @llvm.assume(i1 %i.bf)
  %i.bg = trunc nuw i8 %i.be to i1
  br i1 %i.bg, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i, !prof !14

arch_atomic_try_cmpxchg.exit.i.i.i:               ; preds = %.preheader.i.i.i
  %i.bh = extractvalue { i8, i32 } %i.bd, 1       ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i, label %.preheader.i.i.i, !llvm.loop !48

arch_atomic_try_cmpxchg.exit.thread.i.i.i:        ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i, %.preheader.i.i.i, %bb.l
  %.2.i.i.i = phi i32 [ 0, %bb.l ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i ] ; 3 uses
  %i.bj = add i32 %.2.i.i.i, 1
  %i.bk = or i32 %i.bj, %.2.i.i.i
  %.not.i.i.i = icmp sgt i32 %i.bk, -1
  br i1 %.not.i.i.i, label %refcount_inc_not_zero.exit, label %bb.m, !prof !14

bb.m:                                             ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i
  call void @refcount_warn_saturate(ptr noundef %i.ba, i32 noundef 0) #18
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i, %bb.m
  %.not2 = icmp eq i32 %.2.i.i.i, 0
  br i1 %.not2, label %bb.o, label %bb.n

bb.n:                                             ; preds = %refcount_inc_not_zero.exit
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !132
  store volatile ptr %i.ay, ptr %i.az, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %refcount_inc_not_zero.exit, %bb.n, %bb.j
  %i.bl = load ptr, ptr %i.au, align 8
  %i.bm = getelementptr i8, ptr %i.bl, i64 168
  %i.bn = load i32, ptr %i.bm, align 8
  %i.bo = getelementptr i8, ptr %i.y, i64 168
  store i32 %i.bn, ptr %i.bo, align 8
  %i.bp = getelementptr i8, ptr %0, i64 2888
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr i8, ptr %i.bq, i64 32     ; 2 uses
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.br, ptr elementtype(i32) %i.br) #19, !srcloc !133
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.i
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @nf_conntrack_expect_lock) #18
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %nf_ct_acct_ext_add.exit
  %.069 = phi ptr [ %i.as, %bb.p ], [ null, %nf_ct_acct_ext_add.exit ] ; 4 uses
  %i.bs = icmp eq ptr %.069, null                 ; 2 uses
  %or.cond5 = and i1 %i.aa, %i.bs
  br i1 %or.cond5, label %.thread, label %bb.r

.thread:                                          ; preds = %bb.q
  %i.bt = call i32 @__nf_ct_try_assign_helper(ptr noundef %i.y, ptr noundef nonnull %1, i32 noundef 2080) #18 ; 0 uses
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !134
  store volatile i32 1, ptr %i.y, align 8
  br label %bb.v

bb.r:                                             ; preds = %bb.q
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !134
  store volatile i32 1, ptr %i.y, align 8
  br i1 %i.bs, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = getelementptr i8, ptr %.069, i64 152
  %i.bv = load ptr, ptr %i.bu, align 8            ; 2 uses
  %.not80 = icmp eq ptr %i.bv, null
  br i1 %.not80, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void %i.bv(ptr noundef %i.y, ptr noundef nonnull %.069) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @nf_ct_expect_put(ptr noundef nonnull %.069) #18
  br label %bb.v

bb.v:                                             ; preds = %.thread, %bb.u, %bb.r
  %i.bw = getelementptr i8, ptr %i.y, i64 16
  br label %bb.w

bb.w:                                             ; preds = %bb.e, %.split, %nf_ct_invert_tuple.exit, %bb.v
  %.0 = phi ptr [ null, %.split ], [ %i.bw, %bb.v ], [ null, %nf_ct_invert_tuple.exit ], [ %i.y, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @nf_ct_find_expectation(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @nf_ct_helper_ext_add(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__nf_ct_try_assign_helper(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @nf_ct_expect_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @nf_ct_ext_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @nf_conntrack_tcp_packet(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @nf_conntrack_udp_packet(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @nf_conntrack_icmp_packet(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @nf_conntrack_icmpv6_packet(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__cond_resched() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__kmem_cache_create_args(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @gc_worker(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load volatile i64, ptr @jiffies, align 64
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 88         ; 4 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 105        ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !range !11, !noundef !12
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr @nf_conntrack_max, align 4
  %i.i = udiv i32 %i.h, 100
  %i.j = mul nuw i32 %i.i, 95
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0121 = phi i32 [ %i.j, %bb.b ], [ 0, %bb.a ]  ; 2 uses
  %i.k = icmp eq i32 %i.d, 0
  %i.l = getelementptr i8, ptr %0, i64 92         ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 96         ; 2 uses
  br i1 %i.k, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i32, ptr %i.l, align 4
  %.pre239 = load i32, ptr %i.m, align 8
  %i.n = zext i32 %.pre to i64
  %i.o = zext i32 %.pre239 to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 60000, ptr %i.l, align 4
  store i32 100, ptr %i.m, align 8
  %i.p = getelementptr i8, ptr %0, i64 100
  store i32 %i.b, ptr %i.p, align 4
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.q = phi i64 [ %i.o, %._crit_edge ], [ 100, %bb.d ]
  %i.r = phi i64 [ %i.n, %._crit_edge ], [ 60000, %bb.d ]
  %i.s = getelementptr i8, ptr %0, i64 92         ; 2 uses
  %i.t = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.u = icmp eq i32 %.0121, 0
  %invariant.op = sub i32 -10, %i.b
  br label %bb.f

bb.f:                                             ; preds = %bb.aq, %bb.e
  %.0129.a = phi i64 [ %i.q, %bb.e ], [ %.1130.lcssa, %bb.aq ] ; 2 uses
  %.0124.a = phi i64 [ %i.r, %bb.e ], [ %.1125.lcssa, %bb.aq ] ; 3 uses
  %.0122 = phi i32 [ 0, %bb.e ], [ %.1123.lcssa, %bb.aq ] ; 2 uses
  %.0 = phi i32 [ %i.d, %bb.e ], [ %2, %bb.aq ]   ; 4 uses
  tail call void @__rcu_read_lock() #18
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i, %bb.f
  %i.v = load volatile i32, ptr @nf_conntrack_generation, align 4 ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !35
  %i.w = and i32 %i.v, 1
  %.not11.i = icmp eq i32 %i.w, 0
  br i1 %.not11.i, label %._crit_edge.i, label %.lr.ph.i, !prof !36

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !37
  %i.x = load volatile i32, ptr @nf_conntrack_generation, align 4 ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !35
  %i.y = and i32 %i.x, 1
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !prof !38, !llvm.loop !43

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.g
  %.lcssa.i = phi i32 [ %i.v, %bb.g ], [ %i.x, %.lr.ph.i ]
  %i.z = load i32, ptr @nf_conntrack_htable_size, align 4 ; 2 uses
  %i.aa = load ptr, ptr @nf_conntrack_hash, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !44
  %i.ab = load volatile i32, ptr @nf_conntrack_generation, align 4
  %.not8.i = icmp eq i32 %i.ab, %.lcssa.i
  br i1 %.not8.i, label %nf_conntrack_get_ht.exit, label %bb.g, !llvm.loop !45

nf_conntrack_get_ht.exit:                         ; preds = %._crit_edge.i
  %.not = icmp ult i32 %.0, %i.z
  br i1 %.not, label %bb.h, label %bb.ap

bb.h:                                             ; preds = %nf_conntrack_get_ht.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !135
  %1 = zext i32 %.0 to i64
  %i.ac = getelementptr [8 x i8], ptr %i.aa, i64 %1
  %i.ad = load volatile ptr, ptr %i.ac, align 8   ; 2 uses
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = and i64 %i.ae, 1
  %.not142217 = icmp eq i64 %i.af, 0
  br i1 %.not142217, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.h, %gc_worker_skip_ct.exit.thread
  %.1123221 = phi i32 [ %.3.ph, %gc_worker_skip_ct.exit.thread ], [ %.0122, %bb.h ] ; 14 uses
  %.1125220 = phi i64 [ %.2126.ph, %gc_worker_skip_ct.exit.thread ], [ %.0124.a, %bb.h ] ; 4 uses
  %.1130219 = phi i64 [ %.2131.ph, %gc_worker_skip_ct.exit.thread ], [ %.0129.a, %bb.h ] ; 3 uses
  %.0133218 = phi ptr [ %i.eg, %gc_worker_skip_ct.exit.thread ], [ %i.ad, %bb.h ] ; 3 uses
  %i.ag = getelementptr i8, ptr %.0133218, i64 55
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i64
  %.neg.i = mul nsw i64 %i.ai, -56
  %i.aj = getelementptr i8, ptr %.0133218, i64 %.neg.i ; 6 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 -16    ; 31 uses
  %i.al = icmp ugt i32 %.1123221, 64
  br i1 %i.al, label %nf_ct_put.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.am = getelementptr i8, ptr %i.aj, i64 -8     ; 2 uses
  %i.an = load volatile i32, ptr %i.am, align 8
  %i.ao = load volatile i64, ptr @jiffies, align 64
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = sub i32 %i.an, %i.ap
  %i.ar = icmp slt i32 %i.aq, 1
  br i1 %i.ar, label %bb.j, label %nf_ct_is_confirmed.exit.i

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @nf_ct_gc_expired(ptr noundef %i.ak) #20, !srcloc !136
  %i.as = add nuw nsw i32 %.1123221, 1
  br label %gc_worker_skip_ct.exit.thread

nf_ct_is_confirmed.exit.i:                        ; preds = %bb.i
  %i.at = load volatile i32, ptr %i.am, align 8
  %i.au = load volatile i64, ptr @jiffies, align 64
  %i.av = trunc i64 %i.au to i32
  %i.aw = sub i32 %i.at, %i.av
  %i.ax = tail call i32 @llvm.smax.i32(i32 %i.aw, i32 1000)
  %i.ay = tail call i32 @llvm.umin.i32(i32 %i.ax, i32 300000)
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = sub i64 %i.az, %.1125220
  %i.bb = add i64 %.1130219, 1                    ; 14 uses
  %i.bc = sdiv i64 %i.ba, %i.bb
  %i.bd = add i64 %i.bc, %.1125220                ; 13 uses
  %i.be = getelementptr i8, ptr %i.aj, i64 112    ; 9 uses
  %i.bf = load volatile i64, ptr %i.be, align 8
  %i.bg = and i64 %i.bf, 8
  %.not.i146 = icmp eq i64 %i.bg, 0
  br i1 %.not.i146, label %gc_worker_skip_ct.exit.thread, label %gc_worker_skip_ct.exit

gc_worker_skip_ct.exit:                           ; preds = %nf_ct_is_confirmed.exit.i
  %i.bh = load volatile i64, ptr %i.be, align 8
  %i.bi = and i64 %i.bh, 512
  %.not196 = icmp eq i64 %i.bi, 0
  br i1 %.not196, label %bb.k, label %gc_worker_skip_ct.exit.thread

bb.k:                                             ; preds = %gc_worker_skip_ct.exit
  %i.bj = load volatile i64, ptr %i.be, align 8
  %i.bk = and i64 %i.bj, 8192
  %.not197 = icmp eq i64 %i.bk, 0
  br i1 %.not197, label %nf_ct_help_gc.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = load volatile i32, ptr %i.ak, align 8   ; 2 uses
  %.old1.not.i.i.i.i = icmp eq i32 %i.bl, 0
  br i1 %.old1.not.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.l, %arch_atomic_try_cmpxchg.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.br, %arch_atomic_try_cmpxchg.exit.i.i.i.i ], [ %i.bl, %bb.l ] ; 3 uses
  %i.bm = add i32 %.0.i.i.i.i, 1
  %i.bn = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ak, i32 %i.bm, ptr elementtype(i32) %i.ak, i32 %.0.i.i.i.i) #19, !srcloc !47 ; 2 uses
  %i.bo = extractvalue { i8, i32 } %i.bn, 0       ; 2 uses
  %i.bp = icmp ult i8 %i.bo, 2
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = trunc nuw i8 %i.bo to i1
  br i1 %i.bq, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i.i, !prof !14

arch_atomic_try_cmpxchg.exit.i.i.i.i:             ; preds = %.preheader.i.i.i.i
  %i.br = extractvalue { i8, i32 } %i.bn, 1       ; 2 uses
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !48

arch_atomic_try_cmpxchg.exit.thread.i.i.i.i:      ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i.i, %.preheader.i.i.i.i, %bb.l
  %.2.i.i.i.i = phi i32 [ 0, %bb.l ], [ %.0.i.i.i.i, %.preheader.i.i.i.i ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i.i ] ; 3 uses
  %i.bt = add i32 %.2.i.i.i.i, 1
  %i.bu = or i32 %i.bt, %.2.i.i.i.i
  %.not.i.i.i.i = icmp sgt i32 %i.bu, -1
  br i1 %.not.i.i.i.i, label %refcount_inc_not_zero.exit.i, label %bb.m, !prof !14

bb.m:                                             ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef %i.ak, i32 noundef 0) #18
  br label %refcount_inc_not_zero.exit.i

refcount_inc_not_zero.exit.i:                     ; preds = %bb.m, %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i
  %.not24.i = icmp eq i32 %.2.i.i.i.i, 0
  br i1 %.not24.i, label %nf_ct_help_gc.exit, label %nf_ct_is_confirmed.exit.i148

nf_ct_is_confirmed.exit.i148:                     ; preds = %refcount_inc_not_zero.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !137
  %i.bv = load volatile i64, ptr %i.be, align 8
  %i.bw = and i64 %i.bv, 8
  %.not.i149 = icmp eq i64 %i.bw, 0
  br i1 %.not.i149, label %bb.n, label %nf_ct_is_dying.exit.i150

nf_ct_is_dying.exit.i150:                         ; preds = %nf_ct_is_confirmed.exit.i148
  %i.bx = load volatile i64, ptr %i.be, align 8
  %i.by = and i64 %i.bx, 512
  %.not16.i = icmp eq i64 %i.by, 0
  br i1 %.not16.i, label %bb.s, label %bb.n

bb.n:                                             ; preds = %nf_ct_is_dying.exit.i150, %nf_ct_is_confirmed.exit.i148
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %nf_ct_help_gc.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bz = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.ak, i32 -1, ptr nonnull elementtype(i32) %i.ak) #19, !inline_history !26, !srcloc !24 ; 2 uses
  %i.ca = icmp eq i32 %i.bz, 1
  br i1 %i.ca, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cb = icmp slt i32 %i.bz, 1
  br i1 %i.cb, label %bb.q, label %nf_ct_help_gc.exit, !prof !18

bb.q:                                             ; preds = %bb.p
  tail call void @refcount_warn_saturate(ptr noundef nonnull %i.ak, i32 noundef 3) #18, !inline_history !26
  br label %nf_ct_help_gc.exit

bb.r:                                             ; preds = %bb.o
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !inline_history !26, !srcloc !25
  tail call void @nf_ct_destroy(ptr noundef nonnull %i.ak) #20, !inline_history !26
  br label %nf_ct_help_gc.exit

bb.s:                                             ; preds = %nf_ct_is_dying.exit.i150
  %i.cc = load volatile i64, ptr %i.be, align 8
  %i.cd = and i64 %i.cc, 8192
  %.not25.i = icmp eq i64 %i.cd, 0
  br i1 %.not25.i, label %nfct_help.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ce = getelementptr i8, ptr %i.aj, i64 160
  %.val.i = load ptr, ptr %i.ce, align 8          ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i, label %nfct_help.exit.thread.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cf = load i8, ptr %.val.i, align 1           ; 2 uses
  %.not1.i.i.i = icmp eq i8 %i.cf, 0
  br i1 %.not1.i.i.i, label %nfct_help.exit.thread.i, label %nfct_help.exit.i

nfct_help.exit.i:                                 ; preds = %bb.u
  %i.cg = zext i8 %i.cf to i64
  %i.ch = getelementptr i8, ptr %.val.i, i64 %i.cg ; 2 uses
  %.not17.i = icmp eq ptr %i.ch, null
  br i1 %.not17.i, label %nfct_help.exit.thread.i, label %bb.v

bb.v:                                             ; preds = %nfct_help.exit.i
  tail call void @nf_ct_expectation_gc(ptr noundef nonnull %i.ch) #18
  br label %nfct_help.exit.thread.i

nfct_help.exit.thread.i:                          ; preds = %bb.v, %nfct_help.exit.i, %bb.u, %bb.t, %bb.s
  %.not.i20.i = icmp eq ptr %i.ak, null
  br i1 %.not.i20.i, label %nf_ct_help_gc.exit, label %bb.w

bb.w:                                             ; preds = %nfct_help.exit.thread.i
  %i.ci = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.ak, i32 -1, ptr nonnull elementtype(i32) %i.ak) #19, !inline_history !26, !srcloc !24 ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 1
  br i1 %i.cj, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ck = icmp slt i32 %i.ci, 1
  br i1 %i.ck, label %bb.y, label %nf_ct_help_gc.exit, !prof !18

bb.y:                                             ; preds = %bb.x
  tail call void @refcount_warn_saturate(ptr noundef nonnull %i.ak, i32 noundef 3) #18, !inline_history !26
  br label %nf_ct_help_gc.exit

bb.z:                                             ; preds = %bb.w
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !inline_history !26, !srcloc !25
  tail call void @nf_ct_destroy(ptr noundef nonnull %i.ak) #20, !inline_history !26
  br label %nf_ct_help_gc.exit

nf_ct_help_gc.exit:                               ; preds = %bb.z, %bb.y, %bb.x, %nfct_help.exit.thread.i, %bb.r, %bb.q, %bb.p, %bb.n, %refcount_inc_not_zero.exit.i, %bb.k
  br i1 %i.u, label %gc_worker_skip_ct.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %nf_ct_help_gc.exit
  %i.cl = getelementptr i8, ptr %i.aj, i64 120
  %.val = load ptr, ptr %i.cl, align 8
  %i.cm = load i32, ptr @nf_conntrack_net_id, align 4
  tail call void @__rcu_read_lock() #18
  %i.cn = getelementptr i8, ptr %.val, i64 2984
  %i.co = load volatile ptr, ptr %i.cn, align 8
  %i.cp = zext i32 %i.cm to i64
  %i.cq = getelementptr [8 x i8], ptr %i.co, i64 %i.cp
  %i.cr = load ptr, ptr %i.cq, align 8
  tail call void @__rcu_read_unlock() #18
  %i.cs = load volatile i32, ptr %i.cr, align 4
  %i.ct = icmp ult i32 %i.cs, %.0121
  br i1 %i.ct, label %gc_worker_skip_ct.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cu = load volatile i32, ptr %i.ak, align 8   ; 2 uses
  %.old1.not.i.i.i = icmp eq i32 %i.cu, 0
  br i1 %.old1.not.i.i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.ab, %arch_atomic_try_cmpxchg.exit.i.i.i
  %.0.i.i.i = phi i32 [ %i.da, %arch_atomic_try_cmpxchg.exit.i.i.i ], [ %i.cu, %bb.ab ] ; 3 uses
  %i.cv = add i32 %.0.i.i.i, 1
  %i.cw = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ak, i32 %i.cv, ptr elementtype(i32) %i.ak, i32 %.0.i.i.i) #19, !srcloc !47 ; 2 uses
  %i.cx = extractvalue { i8, i32 } %i.cw, 0       ; 2 uses
  %i.cy = icmp ult i8 %i.cx, 2
  tail call void @llvm.assume(i1 %i.cy)
  %i.cz = trunc nuw i8 %i.cx to i1
  br i1 %i.cz, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i, !prof !14

arch_atomic_try_cmpxchg.exit.i.i.i:               ; preds = %.preheader.i.i.i
  %i.da = extractvalue { i8, i32 } %i.cw, 1       ; 2 uses
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i, label %.preheader.i.i.i, !llvm.loop !48

arch_atomic_try_cmpxchg.exit.thread.i.i.i:        ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i, %.preheader.i.i.i, %bb.ab
  %.2.i.i.i = phi i32 [ 0, %bb.ab ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i ] ; 3 uses
  %i.dc = add i32 %.2.i.i.i, 1
  %i.dd = or i32 %i.dc, %.2.i.i.i
  %.not.i.i.i151 = icmp sgt i32 %i.dd, -1
  br i1 %.not.i.i.i151, label %refcount_inc_not_zero.exit, label %bb.ac, !prof !14

bb.ac:                                            ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef %i.ak, i32 noundef 0) #18
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i, %bb.ac
  %.not199 = icmp eq i32 %.2.i.i.i, 0
  br i1 %.not199, label %gc_worker_skip_ct.exit.thread, label %nf_ct_is_confirmed.exit.i153

nf_ct_is_confirmed.exit.i153:                     ; preds = %refcount_inc_not_zero.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !138
  %i.de = load volatile i64, ptr %i.be, align 8
  %i.df = and i64 %i.de, 8
  %.not.i154 = icmp eq i64 %i.df, 0
  br i1 %.not.i154, label %gc_worker_skip_ct.exit158.thread, label %gc_worker_skip_ct.exit158

gc_worker_skip_ct.exit158:                        ; preds = %nf_ct_is_confirmed.exit.i153
  %i.dg = load volatile i64, ptr %i.be, align 8
  %i.dh = and i64 %i.dg, 512
  %.not200 = icmp eq i64 %i.dh, 0
  br i1 %.not200, label %bb.ah, label %gc_worker_skip_ct.exit158.thread

gc_worker_skip_ct.exit158.thread:                 ; preds = %nf_ct_is_confirmed.exit.i153, %gc_worker_skip_ct.exit158
  %.not.i159 = icmp eq ptr %i.ak, null
  br i1 %.not.i159, label %gc_worker_skip_ct.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %gc_worker_skip_ct.exit158.thread
  %i.di = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.ak, i32 -1, ptr nonnull elementtype(i32) %i.ak) #19, !inline_history !26, !srcloc !24 ; 2 uses
  %i.dj = icmp eq i32 %i.di, 1
  br i1 %i.dj, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dk = icmp slt i32 %i.di, 1
  br i1 %i.dk, label %bb.af, label %gc_worker_skip_ct.exit.thread, !prof !18

bb.af:                                            ; preds = %bb.ae
  tail call void @refcount_warn_saturate(ptr noundef nonnull %i.ak, i32 noundef 3) #18, !inline_history !26
  br label %gc_worker_skip_ct.exit.thread

bb.ag:                                            ; preds = %bb.ad
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !inline_history !26, !srcloc !25
  tail call void @nf_ct_destroy(ptr noundef nonnull %i.ak) #20, !inline_history !26
  br label %gc_worker_skip_ct.exit.thread

bb.ah:                                            ; preds = %gc_worker_skip_ct.exit158
  %i.dl = getelementptr i8, ptr %i.aj, i64 54
  %.val.i160 = load i8, ptr %i.dl, align 2
  %i.dm = load volatile i64, ptr %i.be, align 8
  %i.dn = and i64 %i.dm, 4
  %.not14.i = icmp eq i64 %i.dn, 0
  br i1 %.not14.i, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.do = tail call ptr @nf_ct_l4proto_find(i8 noundef zeroext %.val.i160) #18
  %i.dp = getelementptr i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8            ; 2 uses
  %.not.i162 = icmp eq ptr %i.dq, null
  br i1 %.not.i162, label %gc_worker_can_early_drop.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dr = tail call zeroext i1 %i.dq(ptr noundef %i.ak) #18, !inline_history !139
  br i1 %i.dr, label %bb.ak, label %gc_worker_can_early_drop.exit

bb.ak:                                            ; preds = %bb.ah, %bb.aj
  %i.ds = tail call noundef zeroext i1 @nf_ct_delete(ptr noundef %i.ak, i32 poison, i32 poison) #20 ; 0 uses
  %i.dt = add nuw nsw i32 %.1123221, 1
  br label %gc_worker_can_early_drop.exit

gc_worker_can_early_drop.exit:                    ; preds = %bb.aj, %bb.ai, %bb.ak
  %.2 = phi i32 [ %i.dt, %bb.ak ], [ %.1123221, %bb.ai ], [ %.1123221, %bb.aj ] ; 4 uses
  %.not.i163 = icmp eq ptr %i.ak, null
  br i1 %.not.i163, label %gc_worker_skip_ct.exit.thread, label %bb.al

bb.al:                                            ; preds = %gc_worker_can_early_drop.exit
  %i.du = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.ak, i32 -1, ptr nonnull elementtype(i32) %i.ak) #19, !inline_history !26, !srcloc !24 ; 2 uses
  %i.dv = icmp eq i32 %i.du, 1
  br i1 %i.dv, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dw = icmp slt i32 %i.du, 1
  br i1 %i.dw, label %bb.an, label %gc_worker_skip_ct.exit.thread, !prof !18

bb.an:                                            ; preds = %bb.am
  tail call void @refcount_warn_saturate(ptr noundef nonnull %i.ak, i32 noundef 3) #18, !inline_history !26
  br label %gc_worker_skip_ct.exit.thread

bb.ao:                                            ; preds = %bb.al
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !inline_history !26, !srcloc !25
  tail call void @nf_ct_destroy(ptr noundef nonnull %i.ak) #20, !inline_history !26
  br label %gc_worker_skip_ct.exit.thread

nf_ct_put.exit:                                   ; preds = %.lr.ph
  tail call void @__rcu_read_unlock() #18
  store i32 %.0, ptr %i.c, align 8
  %i.dx = trunc i64 %.1125220 to i32
  store i32 %i.dx, ptr %i.s, align 4
  %i.dy = trunc i64 %.1130219 to i32
  store i32 %i.dy, ptr %i.t, align 8
  %i.dz = load volatile i64, ptr @jiffies, align 64
  %i.ea = trunc i64 %i.dz to i32
  %i.eb = getelementptr i8, ptr %0, i64 100
  %i.ec = load i32, ptr %i.eb, align 4
  %i.ed = sub i32 %i.ea, %i.ec
  %i.ee = icmp slt i32 %i.ed, 60000
  %i.ef = zext i1 %i.ee to i64
  br label %.thread

gc_worker_skip_ct.exit.thread:                    ; preds = %nf_ct_is_confirmed.exit.i, %bb.j, %bb.aa, %gc_worker_skip_ct.exit, %nf_ct_help_gc.exit, %bb.ag, %refcount_inc_not_zero.exit, %gc_worker_skip_ct.exit158.thread, %bb.ae, %bb.af, %gc_worker_can_early_drop.exit, %bb.am, %bb.an, %bb.ao
  %.2131.ph = phi i64 [ %i.bb, %bb.ao ], [ %i.bb, %bb.an ], [ %i.bb, %bb.am ], [ %i.bb, %gc_worker_can_early_drop.exit ], [ %i.bb, %bb.af ], [ %i.bb, %bb.ae ], [ %i.bb, %gc_worker_skip_ct.exit158.thread ], [ %i.bb, %refcount_inc_not_zero.exit ], [ %i.bb, %bb.ag ], [ %.1130219, %bb.j ], [ %i.bb, %nf_ct_help_gc.exit ], [ %i.bb, %gc_worker_skip_ct.exit ], [ %i.bb, %bb.aa ], [ %i.bb, %nf_ct_is_confirmed.exit.i ] ; 2 uses
  %.2126.ph = phi i64 [ %i.bd, %bb.ao ], [ %i.bd, %bb.an ], [ %i.bd, %bb.am ], [ %i.bd, %gc_worker_can_early_drop.exit ], [ %i.bd, %bb.af ], [ %i.bd, %bb.ae ], [ %i.bd, %gc_worker_skip_ct.exit158.thread ], [ %i.bd, %refcount_inc_not_zero.exit ], [ %i.bd, %bb.ag ], [ %.1125220, %bb.j ], [ %i.bd, %nf_ct_help_gc.exit ], [ %i.bd, %gc_worker_skip_ct.exit ], [ %i.bd, %bb.aa ], [ %i.bd, %nf_ct_is_confirmed.exit.i ] ; 2 uses
  %.3.ph = phi i32 [ %.2, %bb.ao ], [ %.2, %bb.an ], [ %.2, %bb.am ], [ %.2, %gc_worker_can_early_drop.exit ], [ %.1123221, %bb.af ], [ %.1123221, %bb.ae ], [ %.1123221, %gc_worker_skip_ct.exit158.thread ], [ %.1123221, %refcount_inc_not_zero.exit ], [ %.1123221, %bb.ag ], [ %i.as, %bb.j ], [ %.1123221, %nf_ct_help_gc.exit ], [ %.1123221, %gc_worker_skip_ct.exit ], [ %.1123221, %bb.aa ], [ %.1123221, %nf_ct_is_confirmed.exit.i ] ; 2 uses
  %i.eg = load volatile ptr, ptr %.0133218, align 8 ; 2 uses
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = and i64 %i.eh, 1
  %.not142 = icmp eq i64 %i.ei, 0
  br i1 %.not142, label %.lr.ph, label %.critedge, !llvm.loop !140

.critedge:                                        ; preds = %gc_worker_skip_ct.exit.thread, %bb.h
  %.1130.lcssa = phi i64 [ %.0129.a, %bb.h ], [ %.2131.ph, %gc_worker_skip_ct.exit.thread ] ; 2 uses
  %.1125.lcssa = phi i64 [ %.0124.a, %bb.h ], [ %.2126.ph, %gc_worker_skip_ct.exit.thread ] ; 3 uses
  %.1123.lcssa = phi i32 [ %.0122, %bb.h ], [ %.3.ph, %gc_worker_skip_ct.exit.thread ]
  tail call void @__rcu_read_unlock() #18
  %i.ej = tail call i32 @__SCT__cond_resched() #18 ; 0 uses
  %2 = add i32 %.0, 1                             ; 3 uses
  %i.ek = load volatile i64, ptr @jiffies, align 64
  %i.el = trunc i64 %i.ek to i32
  %.reass.reass = add i32 %i.el, %invariant.op
  %i.em = icmp sgt i32 %.reass.reass, 0
  %3 = icmp ult i32 %2, %i.z                      ; 2 uses
  %or.cond145 = select i1 %i.em, i1 %3, i1 false
  br i1 %or.cond145, label %.thread.thread, label %bb.aq

bb.ap:                                            ; preds = %nf_conntrack_get_ht.exit
  tail call void @__rcu_read_unlock() #18
  br label %.loopexit

bb.aq:                                            ; preds = %.critedge
  br i1 %3, label %bb.f, label %.loopexit, !llvm.loop !141

.loopexit:                                        ; preds = %bb.aq, %bb.ap
  %.3127188 = phi i64 [ %.0124.a, %bb.ap ], [ %.1125.lcssa, %bb.aq ]
  store i32 0, ptr %i.c, align 8
  %i.en = tail call i64 @llvm.umax.i64(i64 %.3127188, i64 1000)
  %i.eo = tail call i64 @llvm.umin.i64(i64 %i.en, i64 60000) ; 2 uses
  %i.ep = load volatile i64, ptr @jiffies, align 64
  %i.eq = trunc i64 %i.ep to i32
  %i.er = getelementptr i8, ptr %0, i64 100
  %i.es = load i32, ptr %i.er, align 4
  %i.et = sub i32 %i.eq, %i.es
  %i.eu = tail call i32 @llvm.smax.i32(i32 %i.et, i32 1)
  %i.ev = zext nneg i32 %i.eu to i64              ; 2 uses
  %i.ew = icmp samesign ugt i64 %i.eo, %i.ev
  %i.ex = sub nuw nsw i64 %i.eo, %i.ev
  %spec.select = select i1 %i.ew, i64 %i.ex, i64 1
  br label %.thread

.thread:                                          ; preds = %nf_ct_put.exit, %.loopexit
  %.4128 = phi i64 [ %spec.select, %.loopexit ], [ %i.ef, %nf_ct_put.exit ] ; 2 uses
  %i.ey = getelementptr i8, ptr %0, i64 104
  %i.ez = load i8, ptr %i.ey, align 8, !range !11, !noundef !12
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %bb.as, label %bb.ar

.thread.thread:                                   ; preds = %.critedge
  %i.fb = trunc i64 %.1125.lcssa to i32
  store i32 %i.fb, ptr %i.s, align 4
  %i.fc = trunc i64 %.1130.lcssa to i32
  store i32 %i.fc, ptr %i.t, align 8
  store i32 %2, ptr %i.c, align 8
  %i.fd = getelementptr i8, ptr %0, i64 104
  %i.fe = load i8, ptr %i.fd, align 8, !range !11, !noundef !12
  %i.ff = trunc nuw i8 %i.fe to i1
  br i1 %i.ff, label %bb.as, label %.sink.split

bb.ar:                                            ; preds = %.thread
  %.not143 = icmp eq i64 %.4128, 0
  br i1 %.not143, label %.sink.split, label %.split137

.split137:                                        ; preds = %bb.ar
  store i8 0, ptr %i.e, align 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ar, %.thread.thread, %.split137
  %.4128.sink = phi i64 [ %.4128, %.split137 ], [ 0, %.thread.thread ], [ 0, %bb.ar ]
  %i.fg = load ptr, ptr @system_power_efficient_wq, align 8
  %i.fh = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 64, ptr noundef %i.fg, ptr noundef %0, i64 noundef %.4128.sink) #18 ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %.sink.split, %.thread.thread, %.thread
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @timer_init_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @nf_ct_expectation_gc(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, 2) i32 @nf_conntrack_update(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i16, align 2                      ; 6 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = getelementptr i8, ptr %1, i64 104        ; 2 uses
  %.val = load i64, ptr %i.c, align 8             ; 2 uses
  %i.d = trunc i64 %.val to i32
  %i.e = and i32 %i.d, 7
  %i.f = and i64 %.val, -8                        ; 2 uses
  %i.g = inttoptr i64 %i.f to ptr                 ; 5 uses
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %nf_confirm_cthelper.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.g, i64 176
  %.val39.i = load ptr, ptr %i.h, align 8         ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val39.i, null
  br i1 %.not.i.i.i, label %nf_confirm_cthelper.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %.val39.i, align 1          ; 2 uses
  %.not1.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not1.i.i.i, label %nf_confirm_cthelper.exit, label %nfct_help.exit.i

nfct_help.exit.i:                                 ; preds = %bb.c
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr i8, ptr %.val39.i, i64 %i.j ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %nf_confirm_cthelper.exit, label %bb.d

bb.d:                                             ; preds = %nfct_help.exit.i
  %i.l = load volatile ptr, ptr %i.k, align 8     ; 2 uses
  %.not35.i = icmp eq ptr %i.l, null
  br i1 %.not35.i, label %nf_confirm_cthelper.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.l, i64 236
  %i.n = load volatile i32, ptr %i.m, align 4
  %i.o = and i32 %i.n, 1
  %.not36.i = icmp eq i32 %i.o, 0
  br i1 %.not36.i, label %nf_confirm_cthelper.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %i.g, i64 50
  %.val40.i = load i16, ptr %i.p, align 2
  switch i16 %.val40.i, label %nf_confirm_cthelper.exit [
    i16 2, label %bb.g
    i16 10, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr i8, ptr %1, i64 184
  %.val.i.i = load i16, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %1, i64 200
  %.val2.i.i = load ptr, ptr %i.r, align 8
  %i.s = zext i16 %.val.i.i to i64
  %i.t = getelementptr i8, ptr %.val2.i.i, i64 %i.s ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 208
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = trunc i64 %i.y to i32
  %i.aa = load i8, ptr %i.t, align 4
  %i.ab = shl i8 %i.aa, 2
  %i.ac = and i8 %i.ab, 60
  %i.ad = zext nneg i8 %i.ac to i32
  %i.ae = add i32 %i.ad, %i.z
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i16 0, ptr %i.a, align 2, !annotation !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.af = getelementptr i8, ptr %1, i64 184
  %.val43.i = load i16, ptr %i.af, align 8
  %i.ag = getelementptr i8, ptr %1, i64 200
  %.val44.i = load ptr, ptr %i.ag, align 8
  %i.ah = zext i16 %.val43.i to i64
  %i.ai = getelementptr i8, ptr %.val44.i, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 6
  %i.ak = load i8, ptr %i.aj, align 2
  store i8 %i.ak, ptr %i.b, align 1
  %i.al = call i32 @ipv6_skip_exthdr(ptr noundef %1, i32 noundef 40, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #18 ; 2 uses
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = load i16, ptr %i.a, align 2
  %i.ao = and i16 %i.an, -1793
  %.not37.i = icmp eq i16 %i.ao, 0
  br i1 %.not37.i, label %.critedge.i, label %bb.j

.critedge.i:                                      ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %nf_confirm_cthelper.exit

bb.k:                                             ; preds = %bb.g, %.critedge.i
  %.032.i = phi i32 [ %i.ae, %bb.g ], [ %i.al, %.critedge.i ]
  %i.ap = getelementptr i8, ptr %i.g, i64 128
  %i.aq = load volatile i64, ptr %i.ap, align 8
  %i.ar = and i64 %i.aq, 64
  %.not48.i = icmp eq i64 %i.ar, 0
  br i1 %.not48.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr i8, ptr %1, i64 16
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %nf_is_loopback_packet.exit.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr i8, ptr %1, i64 148
  %i.av = load i32, ptr %i.au, align 4
  %.not3.i.i = icmp eq i32 %i.av, 0
  br i1 %.not3.i.i, label %nf_is_loopback_packet.exit.thread.i, label %nf_is_loopback_packet.exit.i

nf_is_loopback_packet.exit.i:                     ; preds = %bb.m
  %i.aw = getelementptr i8, ptr %i.at, i64 176
  %i.ax = load i32, ptr %i.aw, align 16
  %i.ay = and i32 %i.ax, 8
  %.not50.i = icmp eq i32 %i.ay, 0
  br i1 %.not50.i, label %nf_is_loopback_packet.exit.thread.i, label %bb.o

nf_is_loopback_packet.exit.thread.i:              ; preds = %nf_is_loopback_packet.exit.i, %bb.m, %bb.l
  %i.az = call i32 @nf_ct_seq_adjust(ptr noundef %1, ptr noundef nonnull %i.g, i32 noundef %i.e, i32 noundef %.032.i) #18
  %.not38.i = icmp eq i32 %i.az, 0
  br i1 %.not38.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %nf_is_loopback_packet.exit.thread.i
  %i.ba = getelementptr i8, ptr %i.g, i64 136
  %.val.i = load ptr, ptr %i.ba, align 8
  %i.bb = getelementptr i8, ptr %.val.i, i64 2888
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr i8, ptr %i.bc, i64 20     ; 2 uses
  call void asm sideeffect "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bd, ptr elementtype(i32) %i.bd) #19, !srcloc !142
  br label %nf_confirm_cthelper.exit

bb.o:                                             ; preds = %nf_is_loopback_packet.exit.thread.i, %nf_is_loopback_packet.exit.i, %bb.k
  %.val15.i.i = load i64, ptr %i.c, align 8
  %i.be = and i64 %.val15.i.i, -8                 ; 2 uses
  %.not.i45.i = icmp eq i64 %i.be, 0
  br i1 %.not.i45.i, label %nf_confirm_cthelper.exit, label %nf_ct_is_confirmed.exit.i.i

nf_ct_is_confirmed.exit.i.i:                      ; preds = %bb.o
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = getelementptr i8, ptr %i.bf, i64 128
  %i.bh = load volatile i64, ptr %i.bg, align 8
  %i.bi = and i64 %i.bh, 8
  %.not13.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not13.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %nf_ct_is_confirmed.exit.i.i
  %i.bj = call i32 @__nf_conntrack_confirm(ptr noundef %1) #20
  %.not14.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not14.i.i, label %nf_confirm_cthelper.exit, label %bb.q

bb.q:                                             ; preds = %bb.p, %nf_ct_is_confirmed.exit.i.i
end_hunk_1
