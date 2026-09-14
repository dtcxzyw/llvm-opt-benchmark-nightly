Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/ipmr?download=true
inline.NumInlined: 666
inline.NumDeleted: 223
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ipmr_mfc_delete:bb.a
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.y, i32 -2, ptr nonnull elementtype(i8) %i.y) #17, !srcloc !42
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !43
  %i.by = call i8 asm sideeffect "decl %gs:$0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #17, !srcloc !35 ; 2 uses
  %i.bz = icmp ult i8 %i.by, 2
  call void @llvm.assume(i1 %i.bz)
  %i.ca = trunc nuw i8 %i.by to i1
  br i1 %i.ca, label %bb.s, label %bit_spin_unlock.exit.i30, !prof !20

bb.s:                                             ; preds = %.loopexit
  %i.cb = call i64 @llvm.read_register.i64(metadata !6)
  %i.cc = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.cb) #17, !srcloc !44
  call void @llvm.write_register.i64(metadata !6, i64 %i.cc)
  br label %bit_spin_unlock.exit.i30

bit_spin_unlock.exit.i30:                         ; preds = %bb.s, %.loopexit
  %i.cd = and i64 %i.z, 512
  %.not.i1.not.i31 = icmp eq i64 %i.cd, 0
  br i1 %.not.i1.not.i31, label %__rhashtable_remove_fast_one.exit, label %bb.t

bb.t:                                             ; preds = %bit_spin_unlock.exit.i30
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !45
  br label %__rhashtable_remove_fast_one.exit

rht_unlock.exit32:                                ; preds = %bb.m, %bit_spin_unlock.exit.i, %bb.p, %bb.q
  br i1 %.not77.i, label %bb.u, label %__rhashtable_remove_fast.exit

bb.u:                                             ; preds = %rht_unlock.exit32
  %i.ce = getelementptr i8, ptr %0, i64 3652      ; 3 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ce, ptr elementtype(i32) %i.ce) #17, !srcloc !49
  %i.cf = getelementptr i8, ptr %0, i64 3527
  %i.cg = load i8, ptr %i.cf, align 1, !range !18, !noundef !19
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.v, label %__rhashtable_remove_fast.exit

bb.v:                                             ; preds = %bb.u
  %i.ci = load volatile i32, ptr %i.ce, align 4
  %i.cj = load i32, ptr %.0.i, align 64           ; 2 uses
  %i.ck = mul i32 %i.cj, 3
  %i.cl = udiv i32 %i.ck, 10
  %i.cm = icmp ult i32 %i.ci, %i.cl
  br i1 %i.cm, label %rht_shrink_below_30.exit, label %__rhashtable_remove_fast.exit

rht_shrink_below_30.exit:                         ; preds = %bb.v
  %i.cn = getelementptr i8, ptr %0, i64 3524
  %i.co = load i16, ptr %i.cn, align 4
  %i.cp = zext i16 %i.co to i32
  %i.cq = icmp ugt i32 %i.cj, %i.cp
  br i1 %i.cq, label %bb.w, label %__rhashtable_remove_fast.exit, !prof !50

bb.w:                                             ; preds = %rht_shrink_below_30.exit
  %i.cr = getelementptr i8, ptr %0, i64 3592
  %i.cs = call zeroext i1 @irq_work_queue(ptr noundef %i.cr) #18 ; 0 uses
  br label %__rhashtable_remove_fast.exit

__rhashtable_remove_fast_one.exit:                ; preds = %bit_spin_unlock.exit.i30, %bb.t
  br i1 %i.bx, label %__rhashtable_remove_fast_one.exit.thread54, label %__rhashtable_remove_fast.exit

__rhashtable_remove_fast_one.exit.thread54:       ; preds = %rht_bucket_var.exit, %__rhashtable_remove_fast_one.exit
  %i.ct = getelementptr i8, ptr %.0.i, i64 48
  %i.cu = load volatile ptr, ptr %i.ct, align 16  ; 2 uses
  %.not13.i = icmp eq ptr %i.cu, null
  br i1 %.not13.i, label %__rhashtable_remove_fast.exit, label %rht_head_hashfn.exit, !llvm.loop !4

__rhashtable_remove_fast.exit:                    ; preds = %__rhashtable_remove_fast_one.exit, %__rhashtable_remove_fast_one.exit.thread54, %bb.v, %rht_shrink_below_30.exit, %bb.w, %bb.u, %rht_unlock.exit32
  call void @__rcu_read_unlock() #18
  %i.cv = getelementptr i8, ptr %i.f, i64 112
  %i.cw = getelementptr i8, ptr %i.f, i64 120     ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8            ; 2 uses
  %i.cy = load ptr, ptr %i.cv, align 8            ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cy, i64 8
  store ptr %i.cx, ptr %i.cz, align 8
  store volatile ptr %i.cy, ptr %i.cx, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.cw, align 8
  %i.da = getelementptr i8, ptr %0, i64 96
  %i.db = load i32, ptr %i.da, align 8
  %i.dc = getelementptr i8, ptr %.val, i64 1736   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i32 128, ptr %3, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.dd, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.f, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.db, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 0, ptr %i.dh, align 4
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dc, ptr elementtype(i32) %i.dc) #17, !srcloc !24
  %i.di = call i32 @call_fib_notifiers(ptr noundef %.val, i32 noundef range(i32 0, 4) 3, ptr noundef nonnull %3) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call fastcc void @mroute_netlink_event(ptr noundef %0, ptr noundef nonnull %i.f, i32 noundef 25) #19, !srcloc !74
  %i.dj = getelementptr i8, ptr %i.f, i64 104     ; 3 uses
  %i.dk = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dj, i32 -1, ptr elementtype(i32) %i.dj) #17, !srcloc !51 ; 2 uses
  %i.dl = icmp eq i32 %i.dk, 1
  br i1 %i.dl, label %bb.z, label %bb.x

bb.x:                                             ; preds = %__rhashtable_remove_fast.exit
  %i.dm = icmp slt i32 %i.dk, 1
  br i1 %i.dm, label %bb.y, label %mr_cache_put.exit, !prof !20

bb.y:                                             ; preds = %bb.x
  call void @refcount_warn_saturate(ptr noundef %i.dj, i32 noundef 3) #18
  br label %mr_cache_put.exit

bb.z:                                             ; preds = %__rhashtable_remove_fast.exit
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !52
  %i.dn = getelementptr i8, ptr %i.f, i64 128
  %i.do = getelementptr i8, ptr %i.f, i64 144
  %i.dp = load ptr, ptr %i.do, align 8
  call void @call_rcu(ptr noundef %i.dn, ptr noundef %i.dp) #18
  br label %mr_cache_put.exit

mr_cache_put.exit:                                ; preds = %bb.z, %bb.y, %bb.x, %bb.a
  %.0 = phi i32 [ -2, %bb.a ], [ 0, %bb.x ], [ 0, %bb.y ], [ 0, %bb.z ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @ipmr_mfc_add(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef range(i32 -1, 65536) %4) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %5 = alloca %struct.mfc_entry_notifier_info, align 8 ; 9 uses
  %6 = alloca %struct.mfc_entry_notifier_info, align 8 ; 9 uses
  %7 = alloca %struct.mfc_cache_cmp_arg, align 4  ; 5 uses
  %i.a = getelementptr i8, ptr %2, i64 8          ; 3 uses
  %i.b = load i16, ptr %i.a, align 4
  %i.c = icmp ugt i16 %i.b, 31
  br i1 %i.c, label %ipmr_cache_alloc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__rcu_read_lock() #18
  %i.d = load i32, ptr %2, align 4
  %i.e = getelementptr i8, ptr %2, i64 4          ; 3 uses
  %i.f = load i32, ptr %i.e, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  store i32 %i.f, ptr %7, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.d, ptr %i.g, align 4
  %i.h = call ptr @mr_mfc_find_parent(ptr noundef %1, ptr noundef nonnull %7, i32 noundef range(i32 -1, 65536) %4) #18 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @__rcu_read_unlock() #18
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_raw_spin_lock(ptr noundef nonnull @mrt_lock) #18
  %i.i = load i16, ptr %i.a, align 4
  %i.j = getelementptr i8, ptr %i.h, i64 16
  store i16 %i.i, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %2, i64 10
  %i.l = getelementptr i8, ptr %i.h, i64 32       ; 2 uses
  store i32 32, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.h, i64 36       ; 2 uses
  store i32 0, ptr %i.m, align 4
  %i.n = getelementptr i8, ptr %i.h, i64 72       ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(32) %i.n, i8 -1, i64 32, i1 false)
  %i.o = getelementptr i8, ptr %1, i64 3672       ; 2 uses
  %i.p = load i32, ptr %i.o, align 8
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.i, label %ipmr_update_thresholds.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.r = getelementptr i8, ptr %1, i64 168
  br label %bb.d

bb.d:                                             ; preds = %bb.j, %.lr.ph.i
  %i.s = phi i32 [ 0, %.lr.ph.i ], [ %i.ag, %bb.j ] ; 4 uses
  %i.t = phi i32 [ 32, %.lr.ph.i ], [ %i.ah, %bb.j ] ; 4 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.j ] ; 8 uses
  %i.u = getelementptr [104 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.v = load volatile ptr, ptr %i.u, align 8
  %.not.i93 = icmp eq ptr %i.v, null
  br i1 %.not.i93, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr i8, ptr %i.k, i64 %indvars.iv.i
  %i.x = load i8, ptr %i.w, align 1               ; 2 uses
  %.off.i = add i8 %i.x, -1
  %switch.i = icmp ult i8 %.off.i, -2
  br i1 %switch.i, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr i8, ptr %i.n, i64 %indvars.iv.i
  store i8 %i.x, ptr %i.y, align 1
  %i.z = zext nneg i32 %i.t to i64
  %i.aa = icmp samesign ult i64 %indvars.iv.i, %i.z
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  store i32 %i.ab, ptr %i.l, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ac = phi i32 [ %i.ab, %bb.g ], [ %i.t, %bb.f ] ; 2 uses
  %i.ad = sext i32 %i.s to i64
  %.not30.i = icmp slt i64 %indvars.iv.i, %i.ad
  br i1 %.not30.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = trunc nsw i64 %indvars.iv.i to i32
  %i.af = add nsw i32 %i.ae, 1                    ; 2 uses
  store i32 %i.af, ptr %i.m, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.e, %bb.d
  %i.ag = phi i32 [ %i.s, %bb.e ], [ %i.s, %bb.d ], [ %i.af, %bb.i ], [ %i.s, %bb.h ]
  %i.ah = phi i32 [ %i.t, %bb.e ], [ %i.t, %bb.d ], [ %i.ac, %bb.i ], [ %i.ac, %bb.h ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ai = load i32, ptr %i.o, align 8
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next.i, %i.aj
  br i1 %i.ak, label %bb.d, label %ipmr_update_thresholds.exit, !llvm.loop !75

ipmr_update_thresholds.exit:                      ; preds = %bb.j, %bb.c
  %i.al = load volatile i64, ptr @jiffies, align 64
  %i.am = getelementptr i8, ptr %i.h, i64 64
  store volatile i64 %i.al, ptr %i.am, align 8
  %.not83 = icmp eq i32 %3, 0
  br i1 %.not83, label %bb.k, label %bb.l

bb.k:                                             ; preds = %ipmr_update_thresholds.exit
  %i.an = getelementptr i8, ptr %i.h, i64 20      ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = or i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %ipmr_update_thresholds.exit
  call void @_raw_spin_unlock(ptr noundef nonnull @mrt_lock) #18
  %i.aq = getelementptr i8, ptr %1, i64 96
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = getelementptr i8, ptr %0, i64 1736      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store i32 128, ptr %6, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.h, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %i.ar, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i32 0, ptr %i.ax, align 4
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.as, ptr elementtype(i32) %i.as) #17, !srcloc !24
  %i.ay = call i32 @call_fib_notifiers(ptr noundef %0, i32 noundef range(i32 0, 4) 0, ptr noundef nonnull %6) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call fastcc void @mroute_netlink_event(ptr noundef %1, ptr noundef nonnull %i.h, i32 noundef 24) #19, !srcloc !79
  br label %ipmr_cache_alloc.exit.thread

bb.m:                                             ; preds = %bb.b
  %i.az = load i32, ptr %i.e, align 4             ; 2 uses
  %.not77 = icmp eq i32 %i.az, 0
  %i.ba = and i32 %i.az, 240
  %i.bb = icmp eq i32 %i.ba, 224
  %or.cond = or i1 %.not77, %i.bb
  br i1 %or.cond, label %bb.n, label %ipmr_cache_alloc.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.bc = load ptr, ptr @mrt_cachep, align 8
  %i.bd = call noalias align 8 ptr @kmem_cache_alloc_noprof(ptr noundef %i.bc, i32 noundef 3520) #18 ; 30 uses
  %.not.i94 = icmp eq ptr %i.bd, null
  br i1 %.not.i94, label %ipmr_cache_alloc.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = load volatile i64, ptr @jiffies, align 64
  %i.bf = add i64 %i.be, -3001
  %i.bg = getelementptr i8, ptr %i.bd, i64 24
  store i64 %i.bf, ptr %i.bg, align 8
  %i.bh = getelementptr i8, ptr %i.bd, i64 32     ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bd, i64 144
  store ptr @ipmr_cache_free_rcu, ptr %i.bi, align 8
  %i.bj = getelementptr i8, ptr %i.bd, i64 104
  store volatile i32 1, ptr %i.bj, align 8
  %i.bk = load i32, ptr %2, align 4
  %i.bl = getelementptr i8, ptr %i.bd, i64 152    ; 5 uses
  %i.bm = getelementptr i8, ptr %i.bd, i64 156    ; 4 uses
  store i32 %i.bk, ptr %i.bm, align 4
  %i.bn = load i32, ptr %i.e, align 4
  store i32 %i.bn, ptr %i.bl, align 8
  %i.bo = load i16, ptr %i.a, align 4
  %i.bp = getelementptr i8, ptr %i.bd, i64 16
  store i16 %i.bo, ptr %i.bp, align 8
  %i.bq = getelementptr i8, ptr %2, i64 10
  store i32 32, ptr %i.bh, align 8
  %i.br = getelementptr i8, ptr %i.bd, i64 36     ; 2 uses
  store i32 0, ptr %i.br, align 4
  %i.bs = getelementptr i8, ptr %i.bd, i64 72     ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(32) %i.bs, i8 -1, i64 32, i1 false)
  %i.bt = getelementptr i8, ptr %1, i64 3672
  %i.bu = load i32, ptr %i.bt, align 8            ; 2 uses
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i95, label %ipmr_update_thresholds.exit102

.lr.ph.i95:                                       ; preds = %bb.o
  %i.bw = getelementptr i8, ptr %1, i64 168
  %i.bx = zext nneg i32 %i.bu to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.v, %.lr.ph.i95
  %i.by = phi i32 [ 0, %.lr.ph.i95 ], [ %i.cm, %bb.v ] ; 4 uses
  %i.bz = phi i32 [ 32, %.lr.ph.i95 ], [ %i.cn, %bb.v ] ; 4 uses
  %indvars.iv.i96 = phi i64 [ 0, %.lr.ph.i95 ], [ %indvars.iv.next.i100, %bb.v ] ; 8 uses
  %i.ca = getelementptr [104 x i8], ptr %i.bw, i64 %indvars.iv.i96
  %i.cb = load volatile ptr, ptr %i.ca, align 8
  %.not.i97 = icmp eq ptr %i.cb, null
  br i1 %.not.i97, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cc = getelementptr i8, ptr %i.bq, i64 %indvars.iv.i96
  %i.cd = load i8, ptr %i.cc, align 1             ; 2 uses
  %.off.i98 = add i8 %i.cd, -1
  %switch.i99 = icmp ult i8 %.off.i98, -2
  br i1 %switch.i99, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.ce = getelementptr i8, ptr %i.bs, i64 %indvars.iv.i96
  store i8 %i.cd, ptr %i.ce, align 1
  %i.cf = zext nneg i32 %i.bz to i64
  %i.cg = icmp samesign ult i64 %indvars.iv.i96, %i.cf
  br i1 %i.cg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ch = trunc nuw nsw i64 %indvars.iv.i96 to i32 ; 2 uses
  store i32 %i.ch, ptr %i.bh, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ci = phi i32 [ %i.ch, %bb.s ], [ %i.bz, %bb.r ] ; 2 uses
  %i.cj = sext i32 %i.by to i64
  %.not30.i101 = icmp slt i64 %indvars.iv.i96, %i.cj
  br i1 %.not30.i101, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ck = trunc nsw i64 %indvars.iv.i96 to i32
  %i.cl = add nsw i32 %i.ck, 1                    ; 2 uses
  store i32 %i.cl, ptr %i.br, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.q, %bb.p
  %i.cm = phi i32 [ %i.by, %bb.q ], [ %i.by, %bb.p ], [ %i.cl, %bb.u ], [ %i.by, %bb.t ]
  %i.cn = phi i32 [ %i.bz, %bb.q ], [ %i.bz, %bb.p ], [ %i.ci, %bb.u ], [ %i.ci, %bb.t ]
  %indvars.iv.next.i100 = add nuw nsw i64 %indvars.iv.i96, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i100, %i.bx
  br i1 %exitcond.not, label %ipmr_update_thresholds.exit102, label %bb.p, !llvm.loop !75

ipmr_update_thresholds.exit102:                   ; preds = %bb.v, %bb.o
  %i.co = load volatile i64, ptr @jiffies, align 64
  %i.cp = getelementptr i8, ptr %i.bd, i64 64
  store volatile i64 %i.co, ptr %i.cp, align 8
  %.not79 = icmp eq i32 %3, 0
  br i1 %.not79, label %bb.w, label %rht_head_hashfn.exit.i

bb.w:                                             ; preds = %ipmr_update_thresholds.exit102
  %i.cq = getelementptr i8, ptr %i.bd, i64 20     ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = or i32 %i.cr, 1
  store i32 %i.cs, ptr %i.cq, align 4
  br label %rht_head_hashfn.exit.i

rht_head_hashfn.exit.i:                           ; preds = %ipmr_update_thresholds.exit102, %bb.w
  %i.ct = getelementptr i8, ptr %1, i64 3496      ; 3 uses
  call void @__rcu_read_lock() #18
  %i.cu = load volatile ptr, ptr %i.ct, align 8   ; 8 uses
  %i.cv = getelementptr i8, ptr %1, i64 3518      ; 2 uses
  %.val87 = load i16, ptr %i.cv, align 2
  %i.cw = zext i16 %.val87 to i64
  %i.cx = sub nsw i64 0, %i.cw
  %i.cy = getelementptr i8, ptr %i.bd, i64 %i.cx  ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cy, i64 152
  %i.da = getelementptr i8, ptr %i.cu, i64 8
  %i.db = load i32, ptr %i.da, align 8
  %i.dc = add i32 %i.db, -559038729               ; 3 uses
  %i.dd = getelementptr i8, ptr %i.cy, i64 156
  %i.de = load i32, ptr %i.dd, align 4
  %i.df = add i32 %i.de, %i.dc                    ; 4 uses
  %i.dg = load i32, ptr %i.cz, align 4
  %i.dh = add i32 %i.dg, %i.dc
  %i.di = xor i32 %i.df, %i.dc
  %i.dj = call noundef i32 @llvm.fshl.i32(i32 %i.df, i32 %i.df, i32 14)
  %i.dk = sub i32 %i.di, %i.dj                    ; 4 uses
  %i.dl = xor i32 %i.dk, %i.dh
  %i.dm = call noundef i32 @llvm.fshl.i32(i32 %i.dk, i32 %i.dk, i32 11)
  %i.dn = sub i32 %i.dl, %i.dm                    ; 4 uses
  %i.do = xor i32 %i.dn, %i.df
  %i.dp = call noundef i32 @llvm.fshl.i32(i32 %i.dn, i32 %i.dn, i32 25)
  %i.dq = sub i32 %i.do, %i.dp                    ; 4 uses
  %i.dr = xor i32 %i.dq, %i.dk
  %i.ds = call noundef i32 @llvm.fshl.i32(i32 %i.dq, i32 %i.dq, i32 16)
  %i.dt = sub i32 %i.dr, %i.ds                    ; 4 uses
  %i.du = xor i32 %i.dt, %i.dn
  %i.dv = call noundef i32 @llvm.fshl.i32(i32 %i.dt, i32 %i.dt, i32 4)
  %i.dw = sub i32 %i.du, %i.dv                    ; 3 uses
  %i.dx = xor i32 %i.dw, %i.dq
  %i.dy = call noundef i32 @llvm.fshl.i32(i32 %i.dw, i32 %i.dw, i32 14)
  %i.dz = sub i32 %i.dx, %i.dy                    ; 3 uses
  %i.ea = xor i32 %i.dz, %i.dt
  %i.eb = call noundef i32 @llvm.fshl.i32(i32 %i.dz, i32 %i.dz, i32 24)
  %i.ec = sub i32 %i.ea, %i.eb
  %.val88 = load i32, ptr %i.cu, align 64
  %i.ed = add i32 %.val88, -1
  %i.ee = and i32 %i.ec, %i.ed                    ; 2 uses
  %i.ef = getelementptr i8, ptr %i.cu, i64 4
  %i.eg = load i32, ptr %i.ef, align 4
  %.not.i103 = icmp eq i32 %i.eg, 0
  br i1 %.not.i103, label %bb.y, label %bb.x, !prof !27

bb.x:                                             ; preds = %rht_head_hashfn.exit.i
  %i.eh = call ptr @rht_bucket_nested_insert(ptr noundef %i.ct, ptr noundef %i.cu, i32 noundef %i.ee) #18
  br label %rht_bucket_insert.exit

bb.y:                                             ; preds = %rht_head_hashfn.exit.i
  %i.ei = getelementptr i8, ptr %i.cu, i64 64
  %i.ej = zext i32 %i.ee to i64
  %i.ek = getelementptr [8 x i8], ptr %i.ei, i64 %i.ej
  br label %rht_bucket_insert.exit

rht_bucket_insert.exit:                           ; preds = %bb.x, %bb.y
  %i.el = phi ptr [ %i.eh, %bb.x ], [ %i.ek, %bb.y ] ; 14 uses
  %.not.i = icmp eq ptr %i.el, null
  br i1 %.not.i, label %rht_unlock.exit.thread, label %bb.z

bb.z:                                             ; preds = %rht_bucket_insert.exit
  %i.em = call i64 asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !28 ; 5 uses
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !29
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #17, !srcloc !30
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !31
  %i.en = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.el, i64 0, ptr nonnull elementtype(i64) %i.el) #17, !srcloc !32 ; 2 uses
  %i.eo = icmp ult i8 %i.en, 2
  call void @llvm.assume(i1 %i.eo)
  %i.ep = trunc nuw i8 %i.en to i1
  br i1 %i.ep, label %.lr.ph.i104, label %rht_lock.exit, !prof !33

.lr.ph.i104:                                      ; preds = %bb.z, %bb.ab
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !34
  %i.eq = call i8 asm sideeffect "decl %gs:$0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #17, !srcloc !35 ; 2 uses
  %i.er = icmp ult i8 %i.eq, 2
  call void @llvm.assume(i1 %i.er)
  %i.es = trunc nuw i8 %i.eq to i1
  br i1 %i.es, label %bb.aa, label %.backedge.i.preheader, !prof !20

bb.aa:                                            ; preds = %.lr.ph.i104
  %i.et = call i64 @llvm.read_register.i64(metadata !6)
  %i.eu = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.et) #17, !srcloc !36
  call void @llvm.write_register.i64(metadata !6, i64 %i.eu)
  br label %.backedge.i.preheader

.backedge.i.preheader:                            ; preds = %bb.aa, %.lr.ph.i104
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.preheader, %.backedge.i
  call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !37
  %i.ev = load volatile i64, ptr %i.el, align 8
  %i.ew = trunc i64 %i.ev to i1
  br i1 %i.ew, label %.backedge.i, label %bb.ab, !llvm.loop !0

bb.ab:                                            ; preds = %.backedge.i
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #17, !srcloc !30
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !38
  %i.ex = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.el, i64 0, ptr nonnull elementtype(i64) %i.el) #17, !srcloc !32 ; 2 uses
  %i.ey = icmp ult i8 %i.ex, 2
  call void @llvm.assume(i1 %i.ey)
  %i.ez = trunc nuw i8 %i.ex to i1
  br i1 %i.ez, label %.lr.ph.i104, label %rht_lock.exit, !prof !39, !llvm.loop !1

rht_lock.exit:                                    ; preds = %bb.ab, %bb.z
  %i.fa = getelementptr i8, ptr %i.cu, i64 48
  %i.fb = load volatile ptr, ptr %i.fa, align 16
  %.not103.i = icmp eq ptr %i.fb, null
  br i1 %.not103.i, label %bb.ad, label %bb.ac, !prof !27

bb.ac:                                            ; preds = %rht_grow_above_100.exit, %._crit_edge, %rht_lock.exit
  call fastcc void @rht_unlock(ptr noundef %i.el, i64 noundef %i.em) #19
  call void @__rcu_read_unlock() #18
  %i.fc = call ptr @rhashtable_insert_slow(ptr noundef %i.ct, ptr noundef %i.bl, ptr noundef nonnull %i.bd) #18
  br label %__rhashtable_insert_fast.exit

bb.ad:                                            ; preds = %rht_lock.exit
  %i.fd = load ptr, ptr %i.el, align 8
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = and i64 %i.fe, -2                       ; 2 uses
  %.not.i.i105 = icmp eq i64 %i.ff, 0
  %i.fg = ptrtoint ptr %i.el to i64
  %i.fh = or i64 %i.fg, 1
  %i.fi = select i1 %.not.i.i105, i64 %i.fh, i64 %i.ff ; 2 uses
  %i.fj = inttoptr i64 %i.fi to ptr               ; 7 uses
  %i.fk = trunc i64 %i.fi to i1
  br i1 %i.fk, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ad
  %.not104.i = icmp eq ptr %i.bl, null
  br i1 %.not104.i, label %rht_unlock.exit.us, label %.lr.ph.split

rht_unlock.exit.us:                               ; preds = %.lr.ph, %rht_unlock.exit.us
  %.095.i154.us = phi ptr [ %i.fm, %rht_unlock.exit.us ], [ %i.fj, %.lr.ph ]
  %.097.i153.us = phi i32 [ %i.fl, %rht_unlock.exit.us ], [ 16, %.lr.ph ]
  %i.fl = add i32 %.097.i153.us, -1               ; 2 uses
  %i.fm = load ptr, ptr %.095.i154.us, align 8    ; 2 uses
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = trunc i64 %i.fn to i1
  br i1 %i.fo, label %._crit_edge, label %rht_unlock.exit.us, !llvm.loop !76

.lr.ph.split:                                     ; preds = %.lr.ph
  %.val86 = load i16, ptr %i.cv, align 2
  %i.fp = zext i16 %.val86 to i64
  %i.fq = sub nsw i64 0, %i.fp                    ; 2 uses
  %i.fr = getelementptr i8, ptr %i.fj, i64 %i.fq  ; 2 uses
  %i.fs = load i32, ptr %i.bl, align 8            ; 2 uses
  %i.ft = getelementptr i8, ptr %i.fr, i64 152
  %i.fu = load i32, ptr %i.ft, align 8
  %.not.i205 = icmp eq i32 %i.fs, %i.fu
  br i1 %.not.i205, label %ipmr_hash_cmp.exit, label %rht_unlock.exit.preheader

rht_unlock.exit.preheader:                        ; preds = %ipmr_hash_cmp.exit, %.lr.ph.split
  %i.fv = load ptr, ptr %i.fj, align 8            ; 2 uses
  %i.fw = ptrtoint ptr %i.fv to i64
  %i.fx = trunc i64 %i.fw to i1
  br i1 %i.fx, label %._crit_edge.thread, label %.lr.ph220, !llvm.loop !76

.lr.ph220:                                        ; preds = %rht_unlock.exit.preheader
  br label %bb.ae, !llvm.loop !76

ipmr_hash_cmp.exit:                               ; preds = %.lr.ph.split
  %i.fy = load i32, ptr %i.bm, align 4
  %i.fz = getelementptr i8, ptr %i.fr, i64 156
  %i.ga = load i32, ptr %i.fz, align 4
  %.not209 = icmp eq i32 %i.fy, %i.ga
  br i1 %.not209, label %._crit_edge158.thread, label %rht_unlock.exit.preheader

._crit_edge158.thread:                            ; preds = %ipmr_hash_cmp.exit
  %i.gb = getelementptr i8, ptr %i.bd, i64 8
  store volatile ptr %i.fj, ptr %i.gb, align 8
  %i.gc = load ptr, ptr %i.fj, align 8
  store volatile ptr %i.gc, ptr %i.bd, align 8
  br label %bb.ai

end_hunk_0
