Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/nf_queue?download=true
inline.NumInlined: 56
inline.NumDeleted: 38
begin_hunk_0_@nf_queue_entry_free:bb.a
  %i.j = getelementptr i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %nf_queue_entry_release_refs.exit, label %bb.e

bb.e:                                             ; preds = %dev_put.exit11.i
  tail call void @sock_gen_put(ptr noundef nonnull %i.k) #8
  br label %nf_queue_entry_release_refs.exit

nf_queue_entry_release_refs.exit:                 ; preds = %dev_put.exit11.i, %bb.e
  tail call void @kfree(ptr noundef %0) #8
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef zeroext i1 @nf_queue_entry_get_refs(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 128      ; 4 uses
  %i.d = load volatile i32, ptr %i.c, align 4     ; 2 uses
  %.old1.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.old1.not.i.i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.b, %arch_atomic_try_cmpxchg.exit.i.i.i
  %.0.i.i.i = phi i32 [ %i.j, %arch_atomic_try_cmpxchg.exit.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.e = add i32 %.0.i.i.i, 1
  %i.f = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.c, i32 %i.e, ptr elementtype(i32) %i.c, i32 %.0.i.i.i) #7, !srcloc !16 ; 2 uses
  %i.g = extractvalue { i8, i32 } %i.f, 0         ; 2 uses
  %i.h = icmp ult i8 %i.g, 2
  tail call void @llvm.assume(i1 %i.h)
  %i.i = trunc nuw i8 %i.g to i1
  br i1 %i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i, !prof !10

arch_atomic_try_cmpxchg.exit.i.i.i:               ; preds = %.preheader.i.i.i
  %i.j = extractvalue { i8, i32 } %i.f, 1         ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i, label %.preheader.i.i.i, !llvm.loop !17

arch_atomic_try_cmpxchg.exit.thread.i.i.i:        ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i, %.preheader.i.i.i, %bb.b
  %.2.i.i.i = phi i32 [ 0, %bb.b ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i ] ; 3 uses
  %i.l = add i32 %.2.i.i.i, 1
  %i.m = or i32 %i.l, %.2.i.i.i
  %.not.i.i.i = icmp sgt i32 %i.m, -1
  br i1 %.not.i.i.i, label %refcount_inc_not_zero.exit, label %bb.c, !prof !10

bb.c:                                             ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef %i.c, i32 noundef 0) #8
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i, %bb.c
  %.not14 = icmp eq i32 %.2.i.i.i, 0
  br i1 %.not14, label %dev_hold.exit13, label %bb.d

bb.d:                                             ; preds = %refcount_inc_not_zero.exit, %bb.a
  %i.n = getelementptr i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %dev_hold.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.o, i64 1408
  %.val.i.i = load ptr, ptr %i.p, align 64        ; 2 uses
  tail call void asm sideeffect "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val.i.i, ptr elementtype(i32) %.val.i.i) #7, !srcloc !19
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %bb.d, %bb.e
  %i.q = getelementptr i8, ptr %0, i64 56
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not.i.i8 = icmp eq ptr %i.r, null
  br i1 %.not.i.i8, label %dev_hold.exit10, label %bb.f

bb.f:                                             ; preds = %dev_hold.exit
  %i.s = getelementptr i8, ptr %i.r, i64 1408
  %.val.i.i9 = load ptr, ptr %i.s, align 64       ; 2 uses
  tail call void asm sideeffect "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val.i.i9, ptr elementtype(i32) %.val.i.i9) #7, !srcloc !19
  br label %dev_hold.exit10

dev_hold.exit10:                                  ; preds = %dev_hold.exit, %bb.f
  %i.t = getelementptr i8, ptr %0, i64 64
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.u, null
  br i1 %.not.i.i11, label %dev_hold.exit13, label %bb.g

bb.g:                                             ; preds = %dev_hold.exit10
  %i.v = getelementptr i8, ptr %i.u, i64 1408
  %.val.i.i12 = load ptr, ptr %i.v, align 64      ; 2 uses
  tail call void asm sideeffect "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val.i.i12, ptr elementtype(i32) %.val.i.i12) #7, !srcloc !19
  br label %dev_hold.exit13

dev_hold.exit13:                                  ; preds = %bb.g, %dev_hold.exit10, %refcount_inc_not_zero.exit
  %.0 = phi i1 [ false, %refcount_inc_not_zero.exit ], [ true, %dev_hold.exit10 ], [ true, %bb.g ]
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @nf_queue_nf_hook_drop(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  tail call void @__rcu_read_lock() #8
  %i.a = load volatile ptr, ptr @nf_queue_handler, align 8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef %0) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @__rcu_read_unlock() #8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 2) i32 @nf_queue(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = lshr i32 %3, 16
  %i.b = load volatile ptr, ptr @nf_queue_handler, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1               ; 2 uses
  %switch.selectcmp.i = icmp eq i8 %i.d, 10
  %switch.select.i = select i1 %switch.selectcmp.i, i64 140, i64 104
  %switch.selectcmp47.i = icmp eq i8 %i.d, 2
  %switch.select48.i = select i1 %switch.selectcmp47.i, i64 120, i64 %switch.select.i ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %.val.i = load ptr, ptr %i.e, align 8
  %i.f = icmp eq ptr %.val.i, @sock_pfree
  br i1 %i.f, label %bb.c, label %sk_is_refcounted.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 18
  %i.j = load volatile i8, ptr %i.i, align 2
  %i.k = zext nneg i8 %i.j to i32
  %i.l = shl nuw i32 1, %i.k
  %i.m = and i32 %i.l, -4161
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %sk_is_refcounted.exit.thread.i, label %sk_is_refcounted.exit.i

sk_is_refcounted.exit.i:                          ; preds = %bb.c
  %i.n = getelementptr i8, ptr %i.h, i64 96
  %i.o = load volatile i64, ptr %i.n, align 8
  %.in.in.i.i.i = and i64 %i.o, 8388608
  %.in.i.not.i.i = icmp eq i64 %.in.in.i.i.i, 0
  br i1 %.in.i.not.i.i, label %sk_is_refcounted.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %sk_is_refcounted.exit.i
  %i.p = getelementptr i8, ptr %i.h, i64 128      ; 4 uses
  %i.q = load volatile i32, ptr %i.p, align 8     ; 2 uses
  %.old1.not.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.old1.not.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.d, %arch_atomic_try_cmpxchg.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.w, %arch_atomic_try_cmpxchg.exit.i.i.i.i ], [ %i.q, %bb.d ] ; 3 uses
  %i.r = add i32 %.0.i.i.i.i, 1
  %i.s = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.p, i32 %i.r, ptr elementtype(i32) %i.p, i32 %.0.i.i.i.i) #7, !srcloc !16 ; 2 uses
  %i.t = extractvalue { i8, i32 } %i.s, 0         ; 2 uses
  %i.u = icmp ult i8 %i.t, 2
  tail call void @llvm.assume(i1 %i.u)
  %i.v = trunc nuw i8 %i.t to i1
  br i1 %i.v, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i.i, !prof !10

arch_atomic_try_cmpxchg.exit.i.i.i.i:             ; preds = %.preheader.i.i.i.i
  %i.w = extractvalue { i8, i32 } %i.s, 1         ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !17

arch_atomic_try_cmpxchg.exit.thread.i.i.i.i:      ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i.i, %.preheader.i.i.i.i, %bb.d
  %.2.i.i.i.i = phi i32 [ 0, %bb.d ], [ %.0.i.i.i.i, %.preheader.i.i.i.i ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i.i ] ; 3 uses
  %i.y = add i32 %.2.i.i.i.i, 1
  %i.z = or i32 %i.y, %.2.i.i.i.i
  %.not.i.i.i.i = icmp sgt i32 %i.z, -1
  br i1 %.not.i.i.i.i, label %refcount_inc_not_zero.exit.i, label %bb.e, !prof !10

bb.e:                                             ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef %i.p, i32 noundef 0) #8
  br label %refcount_inc_not_zero.exit.i

refcount_inc_not_zero.exit.i:                     ; preds = %bb.e, %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i
  %.not58.i = icmp eq i32 %.2.i.i.i.i, 0
  br i1 %.not58.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %refcount_inc_not_zero.exit.i
  store ptr @sock_edemux, ptr %i.e, align 8
  br label %sk_is_refcounted.exit.thread.i

sk_is_refcounted.exit.thread.i:                   ; preds = %bb.b, %bb.c, %sk_is_refcounted.exit.i, %bb.f
  %i.aa = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 104, 141) %switch.select48.i, i32 noundef 2080) #9 ; 24 uses
  %.not45.i = icmp eq ptr %i.aa, null
  br i1 %.not45.i, label %.thread, label %bb.g

bb.g:                                             ; preds = %sk_is_refcounted.exit.thread.i
  %i.ab = getelementptr i8, ptr %0, i64 88        ; 2 uses
  %.val49.i = load i64, ptr %i.ab, align 8        ; 2 uses
  %i.ac = and i64 %.val49.i, -2                   ; 2 uses
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  %.not46.i = icmp ne i64 %i.ac, 0
  %.not.i.i.i = trunc i64 %.val49.i to i1
  %or.cond.i = and i1 %.not46.i, %.not.i.i.i
  br i1 %or.cond.i, label %bb.h, label %skb_dst_force.exit.thread.i

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr i8, ptr %i.ad, i64 64     ; 3 uses
  %i.af = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock addl $2, $0", "=*m,={@ccs},er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ae, i32 1, ptr elementtype(i32) %i.ae) #7, !srcloc !20 ; 2 uses
  %i.ag = icmp ult i8 %i.af, 2
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = trunc nuw i8 %i.af to i1
  br i1 %i.ah, label %dst_hold_safe.exit.i.i, label %dst_hold_safe.exit.thread.i.i, !prof !21

dst_hold_safe.exit.i.i:                           ; preds = %bb.h
  %i.ai = tail call zeroext i1 @rcuref_get_slowpath(ptr noundef %i.ae) #8
  %cond.fr.i.i = freeze i1 %i.ai
  br i1 %cond.fr.i.i, label %dst_hold_safe.exit.thread.i.i, label %skb_dst_force.exit.i

dst_hold_safe.exit.thread.i.i:                    ; preds = %dst_hold_safe.exit.i.i, %bb.h
  br label %skb_dst_force.exit.i

skb_dst_force.exit.i:                             ; preds = %dst_hold_safe.exit.thread.i.i, %dst_hold_safe.exit.i.i
  %i.aj = phi ptr [ %i.ad, %dst_hold_safe.exit.thread.i.i ], [ null, %dst_hold_safe.exit.i.i ] ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  store i64 %i.ak, ptr %i.ab, align 8
  %.not.i50.i = icmp eq ptr %i.aj, null           ; 2 uses
  %i.al = getelementptr i8, ptr %0, i64 129       ; 2 uses
  %i.am = load i32, ptr %i.al, align 1            ; 2 uses
  %.mask.i.i = and i32 %i.am, 2097152
  %i.an = select i1 %.not.i50.i, i32 %.mask.i.i, i32 2097152
  %i.ao = and i32 %i.am, -2097153
  %i.ap = or disjoint i32 %i.an, %i.ao
  store i32 %i.ap, ptr %i.al, align 1
  br i1 %.not.i50.i, label %.critedge.sink.split.i, label %skb_dst_force.exit.thread.i

skb_dst_force.exit.thread.i:                      ; preds = %skb_dst_force.exit.i, %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  %i.aq = getelementptr i8, ptr %0, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr i8, ptr %i.aa, i64 48 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx.i, ptr noundef readonly align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.as = trunc nuw nsw i64 %switch.select48.i to i16
  %.sroa.3.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.a, align 8
  %.sroa.4.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr %0, ptr %.sroa.4.0..sroa_idx.i.a, align 8
  %.sroa.5.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 3 uses
  store ptr %i.ar, ptr %.sroa.5.0..sroa_idx.i.a, align 8
  %.sroa.6.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.a, align 8
  %.sroa.7.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.aa, i64 44
  store i32 %2, ptr %.sroa.7.0..sroa_idx.i.a, align 4
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  store i8 0, ptr %.sroa.8.0..sroa_idx.i, align 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 97
  store i8 0, ptr %.sroa.9.0..sroa_idx.i, align 1
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 98
  store i16 %i.as, ptr %.sroa.10.0..sroa_idx.i, align 2
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 100
  store i32 0, ptr %.sroa.11.0..sroa_idx.i, align 4
  %i.at = getelementptr i8, ptr %i.aa, i64 72     ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not.i51.i = icmp eq ptr %i.au, null
  br i1 %.not.i51.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %skb_dst_force.exit.thread.i
  %i.av = getelementptr i8, ptr %i.au, i64 128    ; 4 uses
  %i.aw = load volatile i32, ptr %i.av, align 4   ; 2 uses
  %.old1.not.i.i.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.old1.not.i.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.i, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.bc, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i ], [ %i.aw, %bb.i ] ; 3 uses
  %i.ax = add i32 %.0.i.i.i.i.i, 1
  %i.ay = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.av, i32 %i.ax, ptr elementtype(i32) %i.av, i32 %.0.i.i.i.i.i) #7, !srcloc !16 ; 2 uses
  %i.az = extractvalue { i8, i32 } %i.ay, 0       ; 2 uses
  %i.ba = icmp ult i8 %i.az, 2
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = trunc nuw i8 %i.az to i1
  br i1 %i.bb, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i.i.i, !prof !10

arch_atomic_try_cmpxchg.exit.i.i.i.i.i:           ; preds = %.preheader.i.i.i.i.i
  %i.bc = extractvalue { i8, i32 } %i.ay, 1       ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i, label %.preheader.i.i.i.i.i, !llvm.loop !17

arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i:    ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i.i.i, %.preheader.i.i.i.i.i, %bb.i
  %.2.i.i.i.i.i = phi i32 [ 0, %bb.i ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i ], [ %.0.i.i.i.i.i, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.be = add i32 %.2.i.i.i.i.i, 1
  %i.bf = or i32 %i.be, %.2.i.i.i.i.i
  %.not.i.i.i.i.i = icmp sgt i32 %i.bf, -1
  br i1 %.not.i.i.i.i.i, label %refcount_inc_not_zero.exit.i.i, label %bb.j, !prof !10

bb.j:                                             ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef %i.av, i32 noundef 0) #8
  br label %refcount_inc_not_zero.exit.i.i

refcount_inc_not_zero.exit.i.i:                   ; preds = %bb.j, %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i
  %.not14.i.i = icmp eq i32 %.2.i.i.i.i.i, 0
  br i1 %.not14.i.i, label %.critedge.sink.split.i, label %refcount_inc_not_zero.exit.i._crit_edge.i

refcount_inc_not_zero.exit.i._crit_edge.i:        ; preds = %refcount_inc_not_zero.exit.i.i
  %.pre.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.a, align 8
  br label %bb.k

bb.k:                                             ; preds = %refcount_inc_not_zero.exit.i._crit_edge.i, %skb_dst_force.exit.thread.i
  %i.bg = phi ptr [ %.pre.i, %refcount_inc_not_zero.exit.i._crit_edge.i ], [ %i.ar, %skb_dst_force.exit.thread.i ] ; 2 uses
  %.not.i.i.i52.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i52.i, label %dev_hold.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr i8, ptr %i.bg, i64 1408
  %.val.i.i.i.i = load ptr, ptr %i.bh, align 64   ; 2 uses
  tail call void asm sideeffect "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val.i.i.i.i, ptr elementtype(i32) %.val.i.i.i.i) #7, !srcloc !19
  br label %dev_hold.exit.i.i

dev_hold.exit.i.i:                                ; preds = %bb.l, %bb.k
  %i.bi = getelementptr i8, ptr %i.aa, i64 56     ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %.not.i.i8.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i8.i.i, label %dev_hold.exit10.i.i, label %bb.m

bb.m:                                             ; preds = %dev_hold.exit.i.i
  %i.bk = getelementptr i8, ptr %i.bj, i64 1408
  %.val.i.i9.i.i = load ptr, ptr %i.bk, align 64  ; 2 uses
  tail call void asm sideeffect "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val.i.i9.i.i, ptr elementtype(i32) %.val.i.i9.i.i) #7, !srcloc !19
  br label %dev_hold.exit10.i.i

dev_hold.exit10.i.i:                              ; preds = %bb.m, %dev_hold.exit.i.i
  %i.bl = getelementptr i8, ptr %i.aa, i64 64     ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %.not.i.i11.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i11.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %dev_hold.exit10.i.i
  %i.bn = getelementptr i8, ptr %i.bm, i64 1408
  %.val.i.i12.i.i = load ptr, ptr %i.bn, align 64 ; 2 uses
  tail call void asm sideeffect "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val.i.i12.i.i, ptr elementtype(i32) %.val.i.i12.i.i) #7, !srcloc !19
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %dev_hold.exit10.i.i
  %i.bo = getelementptr i8, ptr %i.aa, i64 49
  %i.bp = load i8, ptr %i.bo, align 1
  switch i8 %i.bp, label %nf_ip_saveroute.exit.i [
    i8 2, label %bb.p
    i8 10, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  %i.bq = load i8, ptr %.sroa.7.0..sroa_idx.i, align 8
  %i.br = icmp eq i8 %i.bq, 3
  br i1 %i.br, label %bb.q, label %nf_ip_saveroute.exit.i

bb.q:                                             ; preds = %bb.p
  %i.bs = getelementptr i8, ptr %i.aa, i64 104
  %i.bt = getelementptr i8, ptr %0, i64 184
  %.val.i.i = load i16, ptr %i.bt, align 8
  %i.bu = getelementptr i8, ptr %0, i64 200
  %.val11.i.i = load ptr, ptr %i.bu, align 8
  %i.bv = zext i16 %.val.i.i to i64
  %i.bw = getelementptr i8, ptr %.val11.i.i, i64 %i.bv ; 3 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 1
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = getelementptr i8, ptr %i.aa, i64 112
  store i8 %i.by, ptr %i.bz, align 8
  %i.ca = getelementptr i8, ptr %i.bw, i64 12
  %i.cb = getelementptr i8, ptr %i.bw, i64 16
  %i.cc = load i32, ptr %i.cb, align 4
  store i32 %i.cc, ptr %i.bs, align 8
  %i.cd = load i32, ptr %i.ca, align 4
  %i.ce = getelementptr i8, ptr %i.aa, i64 108
  store i32 %i.cd, ptr %i.ce, align 4
  br label %nf_ip_saveroute.exit.sink.split.i

bb.r:                                             ; preds = %bb.o
  %i.cf = load i8, ptr %.sroa.7.0..sroa_idx.i, align 8
  %i.cg = icmp eq i8 %i.cf, 3
  br i1 %i.cg, label %bb.s, label %nf_ip_saveroute.exit.i

bb.s:                                             ; preds = %bb.r
  %i.ch = getelementptr i8, ptr %i.aa, i64 104
  %i.ci = getelementptr i8, ptr %0, i64 184
  %.val.i54.i = load i16, ptr %i.ci, align 8
  %i.cj = getelementptr i8, ptr %0, i64 200
  %.val9.i.i = load ptr, ptr %i.cj, align 8
  %i.ck = zext i16 %.val.i54.i to i64
  %i.cl = getelementptr i8, ptr %.val9.i.i, i64 %i.ck ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 8
  %i.cn = getelementptr i8, ptr %i.cl, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.ch, ptr noundef align 4 dereferenceable(16) %i.cn, i64 16, i1 false)
  %i.co = getelementptr i8, ptr %i.aa, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.co, ptr noundef align 4 dereferenceable(16) %i.cm, i64 16, i1 false)
  br label %nf_ip_saveroute.exit.sink.split.i

nf_ip_saveroute.exit.sink.split.i:                ; preds = %bb.s, %bb.q
  %.sink76.i = phi i64 [ 136, %bb.s ], [ 116, %bb.q ]
  %i.cp = getelementptr i8, ptr %0, i64 168
  %i.cq = load i32, ptr %i.cp, align 8
  %i.cr = getelementptr i8, ptr %i.aa, i64 %.sink76.i
  store i32 %i.cq, ptr %i.cr, align 4
  br label %nf_ip_saveroute.exit.i

nf_ip_saveroute.exit.i:                           ; preds = %nf_ip_saveroute.exit.sink.split.i, %bb.r, %bb.p, %bb.o
  %i.cs = load ptr, ptr %i.b, align 8
  %i.ct = tail call i32 %i.cs(ptr noundef nonnull %i.aa, i32 noundef range(i32 0, 65536) %i.a) #8, !inline_history !22 ; 3 uses
  %i.cu = icmp slt i32 %i.ct, 0
  br i1 %i.cu, label %bb.t, label %__nf_queue.exit

bb.t:                                             ; preds = %nf_ip_saveroute.exit.i
  %i.cv = load ptr, ptr %.sroa.5.0..sroa_idx.i.a, align 8 ; 2 uses
  %.not.i.i.i.i55.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i.i55.i, label %dev_put.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cw = getelementptr i8, ptr %i.cv, i64 1408
  %.val.i.i.i.i.i = load ptr, ptr %i.cw, align 64 ; 2 uses
  tail call void asm sideeffect "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val.i.i.i.i.i, ptr elementtype(i32) %.val.i.i.i.i.i) #7, !srcloc !15
  br label %dev_put.exit.i.i.i

dev_put.exit.i.i.i:                               ; preds = %bb.u, %bb.t
  %i.cx = load ptr, ptr %i.bi, align 8            ; 2 uses
  %.not.i.i6.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i6.i.i.i, label %dev_put.exit8.i.i.i, label %bb.v

bb.v:                                             ; preds = %dev_put.exit.i.i.i
  %i.cy = getelementptr i8, ptr %i.cx, i64 1408
  %.val.i.i7.i.i.i = load ptr, ptr %i.cy, align 64 ; 2 uses
  tail call void asm sideeffect "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val.i.i7.i.i.i, ptr elementtype(i32) %.val.i.i7.i.i.i) #7, !srcloc !15
  br label %dev_put.exit8.i.i.i

dev_put.exit8.i.i.i:                              ; preds = %bb.v, %dev_put.exit.i.i.i
  %i.cz = load ptr, ptr %i.bl, align 8            ; 2 uses
  %.not.i.i9.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i9.i.i.i, label %dev_put.exit11.i.i.i, label %bb.w

bb.w:                                             ; preds = %dev_put.exit8.i.i.i
  %i.da = getelementptr i8, ptr %i.cz, i64 1408
  %.val.i.i10.i.i.i = load ptr, ptr %i.da, align 64 ; 2 uses
  tail call void asm sideeffect "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val.i.i10.i.i.i, ptr elementtype(i32) %.val.i.i10.i.i.i) #7, !srcloc !15
  br label %dev_put.exit11.i.i.i

dev_put.exit11.i.i.i:                             ; preds = %bb.w, %dev_put.exit8.i.i.i
  %i.db = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not.i.i56.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i56.i, label %.critedge.sink.split.i, label %bb.x

bb.x:                                             ; preds = %dev_put.exit11.i.i.i
  tail call void @sock_gen_put(ptr noundef nonnull %i.db) #8
  br label %.critedge.sink.split.i

.critedge.sink.split.i:                           ; preds = %bb.x, %dev_put.exit11.i.i.i, %refcount_inc_not_zero.exit.i.i, %skb_dst_force.exit.i
  %.1.ph.i = phi i32 [ -107, %refcount_inc_not_zero.exit.i.i ], [ -100, %skb_dst_force.exit.i ], [ %i.ct, %dev_put.exit11.i.i.i ], [ %i.ct, %bb.x ]
  tail call void @kfree(ptr noundef nonnull %i.aa) #8
  %i.dc = icmp ne i32 %.1.ph.i, -3
  br label %bb.y

bb.y:                                             ; preds = %bb.a, %.critedge.sink.split.i
  %.1.i.ph = phi i1 [ %i.dc, %.critedge.sink.split.i ], [ false, %bb.a ]
  %i.dd = and i32 %3, 32768
  %.not = icmp eq i32 %i.dd, 0
  %or.cond = or i1 %.not, %.1.i.ph
  br i1 %or.cond, label %.thread, label %__nf_queue.exit

.thread:                                          ; preds = %sk_is_refcounted.exit.thread.i, %refcount_inc_not_zero.exit.i, %bb.y
  tail call void @sk_skb_reason_drop(ptr noundef null, ptr noundef %0, i32 noundef 2) #8
  br label %__nf_queue.exit

__nf_queue.exit:                                  ; preds = %nf_ip_saveroute.exit.i, %.thread, %bb.y
  %.0 = phi i32 [ 1, %bb.y ], [ 0, %.thread ], [ 0, %nf_ip_saveroute.exit.i ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sock_gen_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_lock() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_unlock() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sock_edemux(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sock_pfree(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc_noprof(i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @rcuref_get_slowpath(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sk_skb_reason_drop(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, argmem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #2 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noredzone nounwind "no-builtin-wcslen" }
attributes #9 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!11 = !{i64 2163354978, i64 2163354848}
!12 = !{i64 2163355509, i64 2163356583, i64 2163356616, i64 2163356651, i64 2163356667, i64 2163357594, i64 2163357652, i64 2163357701, i64 2163357511, i64 2163356726, i64 2163356758, i64 2163356841}
!13 = !{i64 2163358009, i64 2163357880}
!14 = !{i64 2163367791}
!15 = !{i64 2159417900}
!16 = !{i64 2148856319, i64 2148856358, i64 2148856379, i64 2148856416, i64 2148856439, i64 2148856448}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{i64 2159434121}
!20 = !{i64 2148846258, i64 2148846297, i64 2148846318, i64 2148846355, i64 2148846378, i64 2148846387}
!21 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!22 = distinct !{null}
end_hunk_0
