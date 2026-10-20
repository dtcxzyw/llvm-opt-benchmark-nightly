Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/addrconf?download=true
inline.NumInlined: 834
inline.NumDeleted: 275
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@ipv6_get_ifaddr:bb.a
  %i.ci = and i1 %i.cg, %i.ch
  br i1 %i.ci, label %bb.d, label %select.unfold.us67

bb.d:                                             ; preds = %.lr.ph.split.split.us
  %i.cj = getelementptr i8, ptr %.047.us50, i64 168
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = icmp eq ptr %i.cl, %2
  br i1 %i.cm, label %bb.e, label %select.unfold.us67

bb.e:                                             ; preds = %bb.d
  %i.cn = getelementptr i8, ptr %.047.us50, i64 32 ; 4 uses
  %i.co = load volatile i32, ptr %i.cn, align 8   ; 2 uses
  %.old1.not.i.i.i.i.us55 = icmp eq i32 %i.co, 0
  br i1 %.old1.not.i.i.i.i.us55, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.us62, label %.preheader.i.i.i.i.us57

.preheader.i.i.i.i.us57:                          ; preds = %bb.e, %arch_atomic_try_cmpxchg.exit.i.i.i.i.us59
  %.0.i.i.i.i.us58 = phi i32 [ %i.cu, %arch_atomic_try_cmpxchg.exit.i.i.i.i.us59 ], [ %i.co, %bb.e ] ; 3 uses
  %i.cp = add i32 %.0.i.i.i.i.us58, 1
  %i.cq = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cn, i32 %i.cp, ptr elementtype(i32) %i.cn, i32 %.0.i.i.i.i.us58) #20, !srcloc !28 ; 2 uses
  %i.cr = extractvalue { i8, i32 } %i.cq, 0       ; 2 uses
  %i.cs = icmp ult i8 %i.cr, 2
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = trunc nuw i8 %i.cr to i1
  br i1 %i.ct, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.us62, label %arch_atomic_try_cmpxchg.exit.i.i.i.i.us59, !prof !22

arch_atomic_try_cmpxchg.exit.i.i.i.i.us59:        ; preds = %.preheader.i.i.i.i.us57
  %i.cu = extractvalue { i8, i32 } %i.cq, 1       ; 2 uses
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.us62, label %.preheader.i.i.i.i.us57, !llvm.loop !1

arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.us62: ; preds = %.preheader.i.i.i.i.us57, %arch_atomic_try_cmpxchg.exit.i.i.i.i.us59, %bb.e
  %.2.i.i.i.i.us63 = phi i32 [ 0, %bb.e ], [ %.0.i.i.i.i.us58, %.preheader.i.i.i.i.us57 ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i.i.us59 ] ; 3 uses
  %i.cw = add i32 %.2.i.i.i.i.us63, 1
  %i.cx = or i32 %i.cw, %.2.i.i.i.i.us63
  %.not.i.i.i.i.us64 = icmp sgt i32 %i.cx, -1
  br i1 %.not.i.i.i.i.us64, label %in6_ifa_hold_safe.exit.us65, label %bb.f, !prof !22

bb.f:                                             ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.us62
  tail call void @refcount_warn_saturate(ptr noundef %i.cn, i32 noundef 0) #18
  br label %in6_ifa_hold_safe.exit.us65

in6_ifa_hold_safe.exit.us65:                      ; preds = %bb.f, %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.us62
  %.not45.us66 = icmp eq i32 %.2.i.i.i.i.us63, 0
  br i1 %.not45.us66, label %select.unfold.us67, label %in6_ifa_hold_safe.exit._crit_edge

select.unfold.us67:                               ; preds = %bb.d, %in6_ifa_hold_safe.exit.us65, %.lr.ph.split.split.us
  %i.cy = getelementptr i8, ptr %.047.us50, i64 184
  %i.cz = load volatile ptr, ptr %i.cy, align 8   ; 2 uses
  %.not38.us68 = icmp eq ptr %i.cz, null
  %i.da = getelementptr i8, ptr %i.cz, i64 -184   ; 2 uses
  %.not36.us7092 = icmp eq ptr %i.da, null
  %.not36.us70 = or i1 %.not38.us68, %.not36.us7092
  br i1 %.not36.us70, label %in6_ifa_hold_safe.exit._crit_edge, label %.lr.ph.split.split.us

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %select.unfold
  %.047 = phi ptr [ %i.dz, %select.unfold ], [ %i.bm, %.lr.ph.split ] ; 7 uses
  %.0.val = load i64, ptr %.047, align 8
  %i.db = getelementptr i8, ptr %.047, i64 8
  %.0.val40 = load i64, ptr %i.db, align 8
  %.val = load i64, ptr %1, align 8
  %.val41 = load i64, ptr %i.g, align 8
  %i.dc = icmp eq i64 %.0.val, %.val
  %i.dd = icmp eq i64 %.0.val40, %.val41
  %i.de = and i1 %i.dc, %i.dd
  br i1 %i.de, label %bb.g, label %select.unfold

bb.g:                                             ; preds = %.lr.ph.split.split
  %i.df = getelementptr i8, ptr %.047, i64 168
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = icmp eq ptr %i.dh, %2
  br i1 %i.di, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dj = getelementptr i8, ptr %.047, i64 50
  %i.dk = load i16, ptr %i.dj, align 2
  %i.dl = and i16 %i.dk, 48
  %.not76 = icmp eq i16 %i.dl, 0
  br i1 %.not76, label %bb.i, label %select.unfold

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.dm = getelementptr i8, ptr %.047, i64 32     ; 4 uses
  %i.dn = load volatile i32, ptr %i.dm, align 8   ; 2 uses
  %.old1.not.i.i.i.i = icmp eq i32 %i.dn, 0
  br i1 %.old1.not.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.i, %arch_atomic_try_cmpxchg.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.dt, %arch_atomic_try_cmpxchg.exit.i.i.i.i ], [ %i.dn, %bb.i ] ; 3 uses
  %i.do = add i32 %.0.i.i.i.i, 1
  %i.dp = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dm, i32 %i.do, ptr elementtype(i32) %i.dm, i32 %.0.i.i.i.i) #20, !srcloc !28 ; 2 uses
  %i.dq = extractvalue { i8, i32 } %i.dp, 0       ; 2 uses
  %i.dr = icmp ult i8 %i.dq, 2
  tail call void @llvm.assume(i1 %i.dr)
  %i.ds = trunc nuw i8 %i.dq to i1
  br i1 %i.ds, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i.i, !prof !22

arch_atomic_try_cmpxchg.exit.i.i.i.i:             ; preds = %.preheader.i.i.i.i
  %i.dt = extractvalue { i8, i32 } %i.dp, 1       ; 2 uses
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !1

arch_atomic_try_cmpxchg.exit.thread.i.i.i.i:      ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i.i, %.preheader.i.i.i.i, %bb.i
  %.2.i.i.i.i = phi i32 [ 0, %bb.i ], [ %.0.i.i.i.i, %.preheader.i.i.i.i ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i.i ] ; 3 uses
  %i.dv = add i32 %.2.i.i.i.i, 1
  %i.dw = or i32 %i.dv, %.2.i.i.i.i
  %.not.i.i.i.i = icmp sgt i32 %i.dw, -1
  br i1 %.not.i.i.i.i, label %in6_ifa_hold_safe.exit, label %bb.j, !prof !22

bb.j:                                             ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef %i.dm, i32 noundef 0) #18
  br label %in6_ifa_hold_safe.exit

in6_ifa_hold_safe.exit:                           ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i, %bb.j
  %.not45 = icmp eq i32 %.2.i.i.i.i, 0
  br i1 %.not45, label %select.unfold, label %in6_ifa_hold_safe.exit._crit_edge

select.unfold:                                    ; preds = %.lr.ph.split.split, %in6_ifa_hold_safe.exit, %bb.h
  %i.dx = getelementptr i8, ptr %.047, i64 184
  %i.dy = load volatile ptr, ptr %i.dx, align 8   ; 2 uses
  %.not38 = icmp eq ptr %i.dy, null
  %i.dz = getelementptr i8, ptr %i.dy, i64 -184   ; 2 uses
  %.not3693 = icmp eq ptr %i.dz, null
  %.not36 = or i1 %.not38, %.not3693
  br i1 %.not36, label %in6_ifa_hold_safe.exit._crit_edge, label %.lr.ph.split.split

in6_ifa_hold_safe.exit._crit_edge:                ; preds = %select.unfold.us67, %in6_ifa_hold_safe.exit.us65, %select.unfold, %in6_ifa_hold_safe.exit, %select.unfold.us, %in6_ifa_hold_safe.exit.us, %bb.a
  %.0.lcssa = phi ptr [ null, %bb.a ], [ %.047, %in6_ifa_hold_safe.exit ], [ %.047.us, %in6_ifa_hold_safe.exit.us ], [ null, %select.unfold.us ], [ null, %select.unfold ], [ null, %select.unfold.us67 ], [ %.047.us50, %in6_ifa_hold_safe.exit.us65 ]
  tail call void @__rcu_read_unlock() #18
  ret ptr %.0.lcssa
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @addrconf_dad_failure(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.in6_addr, align 4           ; 7 uses
  %3 = alloca %struct.ifa6_config, align 8        ; 12 uses
  %i.a = getelementptr i8, ptr %1, i64 168        ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 264
  %.val = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 36         ; 6 uses
  tail call void @_raw_spin_lock_bh(ptr noundef %i.e) #18
  %i.f = getelementptr i8, ptr %1, i64 40         ; 4 uses
  %i.g = load i32, ptr %i.f, align 8
  %.not = icmp eq i32 %i.g, 1
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_raw_spin_unlock_bh(ptr noundef %i.e) #18
  %i.h = getelementptr i8, ptr %1, i64 32         ; 3 uses
  %i.i = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.h, i32 -1, ptr elementtype(i32) %i.h) #20, !srcloc !23 ; 2 uses
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp slt i32 %i.i, 1
  br i1 %i.k, label %bb.d, label %in6_ifa_put.exit, !prof !17

bb.d:                                             ; preds = %bb.c
  tail call void @refcount_warn_saturate(ptr noundef %i.h, i32 noundef 3) #18
  br label %in6_ifa_put.exit

bb.e:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !24
  tail call void @inet6_ifa_finish_destroy(ptr noundef %1) #19
  br label %in6_ifa_put.exit

bb.f:                                             ; preds = %bb.a
  store i32 2, ptr %i.f, align 8
  %i.l = tail call i32 @net_ratelimit() #18
  %.not50 = icmp eq i32 %i.l, 0
  br i1 %.not50, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %i.n, i64 288
  %i.p = getelementptr i8, ptr %0, i64 186
  %.val59.a = load i16, ptr %i.p, align 2
  %i.q = getelementptr i8, ptr %0, i64 200
  %.val60 = load ptr, ptr %i.q, align 8
  %i.r = zext i16 %.val59.a to i64
  %i.s = getelementptr i8, ptr %.val60, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 6
  %i.u = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.4, ptr noundef %i.o, ptr noundef %1, ptr noundef %i.t) #21 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = getelementptr i8, ptr %1, i64 44
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %i.x = and i32 %i.w, 2048
  %.not51 = icmp eq i32 %i.x, 0
  br i1 %.not51, label %bb.x, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !25
  %i.y = getelementptr i8, ptr %1, i64 49
  %i.z = load i8, ptr %i.y, align 1               ; 2 uses
  %i.aa = zext i8 %i.z to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr %2, ptr %3, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = getelementptr i8, ptr %1, i64 16
  %i.ad = load i32, ptr %i.ac, align 8
  store i32 %i.ad, ptr %i.ab, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  store i32 %i.w, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ah = getelementptr i8, ptr %1, i64 28
  %i.ai = load i32, ptr %i.ah, align 4
  store i32 %i.ai, ptr %i.ag, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ak = getelementptr i8, ptr %1, i64 24
  %i.al = load i32, ptr %i.ak, align 8
  store i32 %i.al, ptr %i.aj, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.an = getelementptr i8, ptr %1, i64 50
  %i.ao = load i16, ptr %i.an, align 2
  store i16 %i.ao, ptr %i.am, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 42
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.ap, i8 0, i64 6, i1 false)
  %i.aq = getelementptr i8, ptr %.val, i64 2244
  %i.ar = load i32, ptr %i.aq, align 4
  %.not52.a = icmp sgt i32 %i.ar, %i.aa
  br i1 %.not52.a, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = call i32 @net_ratelimit() #18
  %.not58 = icmp eq i32 %i.as, 0
  br i1 %.not58, label %in6_ifa_put.exit61.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = load ptr, ptr %i.a, align 8
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr i8, ptr %i.au, i64 288
  %i.aw = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, ptr noundef %i.av) #21 ; 0 uses
  br label %in6_ifa_put.exit61.thread

bb.l:                                             ; preds = %bb.i
  %4 = add i8 %i.z, 1                             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.ax = call fastcc i32 @ipv6_generate_stable_address(ptr noundef nonnull %2, i8 noundef zeroext %4, ptr noundef %i.b) #19, !srcloc !62
  %.not53.a = icmp eq i32 %i.ax, 0
  br i1 %.not53.a, label %bb.m, label %in6_ifa_put.exit61.thread

bb.m:                                             ; preds = %bb.l
  call void @_raw_spin_unlock_bh(ptr noundef %i.e) #18
  %i.ay = getelementptr i8, ptr %i.b, i64 768
  %i.az = load volatile i32, ptr %i.ay, align 8   ; 2 uses
  %.not54.a = icmp eq i32 %i.az, 0
  br i1 %.not54.a, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @__rcu_read_lock() #18
  %i.ba = getelementptr i8, ptr %i.b, i64 8       ; 3 uses
  %i.bb = load volatile ptr, ptr %i.ba, align 8   ; 2 uses
  %.not13.i = icmp eq ptr %i.bb, %i.ba
  br i1 %.not13.i, label %ipv6_count_addresses.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %.pn15.i = phi ptr [ %i.bd, %.lr.ph.i ], [ %i.bb, %bb.n ]
  %.01114.i = phi i32 [ %i.bc, %.lr.ph.i ], [ 0, %bb.n ]
  %i.bc = add i32 %.01114.i, 1                    ; 2 uses
  %i.bd = load volatile ptr, ptr %.pn15.i, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.bd, %i.ba
  br i1 %.not.i, label %ipv6_count_addresses.exit, label %.lr.ph.i, !llvm.loop !2

ipv6_count_addresses.exit:                        ; preds = %.lr.ph.i, %bb.n
  %.011.lcssa.i = phi i32 [ 0, %bb.n ], [ %i.bc, %.lr.ph.i ]
  call void @__rcu_read_unlock() #18
  %.not55.a = icmp slt i32 %.011.lcssa.i, %i.az
  br i1 %.not55.a, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.m, %ipv6_count_addresses.exit
  %i.be = call i32 @net_ratelimit() #18
  %.not56.a = icmp eq i32 %i.be, 0
  br i1 %.not56.a, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = load ptr, ptr %i.a, align 8
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr i8, ptr %i.bg, i64 288
  %i.bi = call i32 (ptr, ...) @_printk(ptr noundef @.str.6, ptr noundef %i.bh) #21 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bj = call fastcc ptr @ipv6_add_addr(ptr noundef %i.b, ptr noundef nonnull %3, i1 noundef zeroext false, ptr noundef null) #19, !srcloc !63 ; 6 uses
  %i.bk = icmp ugt ptr %i.bj, inttoptr (i64 -4096 to ptr)
  br i1 %i.bk, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr i8, ptr %i.bj, i64 36     ; 2 uses
  call void @_raw_spin_lock_bh(ptr noundef %i.bl) #18
  %i.bm = getelementptr i8, ptr %i.bj, i64 49
  store i8 %4, ptr %i.bm, align 1
  %i.bn = getelementptr i8, ptr %i.bj, i64 40
  store i32 0, ptr %i.bn, align 8
  call void @_raw_spin_unlock_bh(ptr noundef %i.bl) #18
  %i.bo = getelementptr i8, ptr %.val, i64 2248
  %i.bp = load i32, ptr %i.bo, align 8
  %i.bq = sext i32 %i.bp to i64
  call fastcc void @addrconf_mod_dad_work(ptr noundef %i.bj, i64 noundef %i.bq) #19, !srcloc !64
  call fastcc void @in6_ifa_put(ptr noundef %i.bj) #19, !srcloc !65
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %ipv6_count_addresses.exit, %bb.r
  call void @_raw_spin_lock_bh(ptr noundef %i.e) #18
  %i.br = load i32, ptr %i.f, align 8
  %.not57 = icmp eq i32 %i.br, 2
  br i1 %.not57, label %in6_ifa_put.exit61.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_raw_spin_unlock_bh(ptr noundef %i.e) #18
  %i.bs = getelementptr i8, ptr %1, i64 32        ; 3 uses
  %i.bt = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bs, i32 -1, ptr elementtype(i32) %i.bs) #20, !srcloc !23 ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 1
  br i1 %i.bu, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bv = icmp slt i32 %i.bt, 1
  br i1 %i.bv, label %bb.v, label %in6_ifa_put.exit61, !prof !17

bb.v:                                             ; preds = %bb.u
  call void @refcount_warn_saturate(ptr noundef %i.bs, i32 noundef 3) #18
  br label %in6_ifa_put.exit61

bb.w:                                             ; preds = %bb.t
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !24
  call void @inet6_ifa_finish_destroy(ptr noundef %1) #19
  br label %in6_ifa_put.exit61

in6_ifa_put.exit61.thread:                        ; preds = %bb.l, %bb.j, %bb.s, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.x

in6_ifa_put.exit61:                               ; preds = %bb.w, %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %in6_ifa_put.exit

bb.x:                                             ; preds = %in6_ifa_put.exit61.thread, %bb.h
  store i32 3, ptr %i.f, align 8
  call void @_raw_spin_unlock_bh(ptr noundef %i.e) #18
  %i.bw = getelementptr i8, ptr %1, i64 32        ; 9 uses
  %i.bx = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bw, i32 1, ptr elementtype(i32) %i.bw) #20, !srcloc !23 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bx, 0
  br i1 %.not.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %bb.y, !prof !17

bb.y:                                             ; preds = %bb.x
  %i.by = add i32 %i.bx, 1
  %i.bz = or i32 %i.by, %i.bx
  %.not10.i.i.i.i.i = icmp sgt i32 %i.bz, -1
  br i1 %.not10.i.i.i.i.i, label %in6_ifa_hold.exit.i, label %.sink.split.i.i.i.i.i, !prof !22

.sink.split.i.i.i.i.i:                            ; preds = %bb.y, %bb.x
  %.sink.i.i.i.i.i = phi i32 [ 2, %bb.x ], [ 1, %bb.y ]
  call void @refcount_warn_saturate(ptr noundef %i.bw, i32 noundef %.sink.i.i.i.i.i) #18
  br label %in6_ifa_hold.exit.i

in6_ifa_hold.exit.i:                              ; preds = %.sink.split.i.i.i.i.i, %bb.y
  %i.ca = load ptr, ptr @addrconf_wq, align 8
  %i.cb = getelementptr i8, ptr %1, i64 80
  %i.cc = call zeroext i1 @mod_delayed_work_on(i32 noundef 64, ptr noundef %i.ca, ptr noundef %i.cb, i64 noundef 0) #18
  br i1 %i.cc, label %bb.z, label %addrconf_mod_dad_work.exit

bb.z:                                             ; preds = %in6_ifa_hold.exit.i
  %i.cd = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bw, i32 -1, ptr elementtype(i32) %i.bw) #20, !srcloc !23 ; 2 uses
  %i.ce = icmp eq i32 %i.cd, 1
  br i1 %i.ce, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cf = icmp slt i32 %i.cd, 1
  br i1 %i.cf, label %bb.ab, label %addrconf_mod_dad_work.exit, !prof !17

bb.ab:                                            ; preds = %bb.aa
  call void @refcount_warn_saturate(ptr noundef %i.bw, i32 noundef 3) #18
  br label %addrconf_mod_dad_work.exit

bb.ac:                                            ; preds = %bb.z
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !24
  call void @inet6_ifa_finish_destroy(ptr noundef %1) #19
  br label %addrconf_mod_dad_work.exit

addrconf_mod_dad_work.exit:                       ; preds = %in6_ifa_hold.exit.i, %bb.aa, %bb.ab, %bb.ac
  %i.cg = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bw, i32 -1, ptr elementtype(i32) %i.bw) #20, !srcloc !23 ; 2 uses
  %i.ch = icmp eq i32 %i.cg, 1
  br i1 %i.ch, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %addrconf_mod_dad_work.exit
  %i.ci = icmp slt i32 %i.cg, 1
  br i1 %i.ci, label %bb.ae, label %in6_ifa_put.exit, !prof !17

bb.ae:                                            ; preds = %bb.ad
  call void @refcount_warn_saturate(ptr noundef %i.bw, i32 noundef 3) #18
  br label %in6_ifa_put.exit

bb.af:                                            ; preds = %addrconf_mod_dad_work.exit
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !24
  call void @inet6_ifa_finish_destroy(ptr noundef %1) #19
  br label %in6_ifa_put.exit

in6_ifa_put.exit:                                 ; preds = %bb.af, %bb.ae, %bb.ad, %in6_ifa_put.exit61, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @in6_ifa_put(ptr noundef %0) unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.b = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.a, i32 -1, ptr elementtype(i32) %i.a) #20, !srcloc !23 ; 2 uses
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %i.b, 1
  br i1 %i.d, label %bb.c, label %refcount_dec_and_test.exit.thread, !prof !17

bb.c:                                             ; preds = %bb.b
  tail call void @refcount_warn_saturate(ptr noundef %i.a, i32 noundef 3) #18
  br label %refcount_dec_and_test.exit.thread

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !24
  tail call void @inet6_ifa_finish_destroy(ptr noundef %0) #19
  br label %refcount_dec_and_test.exit.thread

refcount_dec_and_test.exit.thread:                ; preds = %bb.c, %bb.b, %bb.d
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -1, 1) i32 @ipv6_generate_stable_address(ptr nofree noundef captures(none) %0, i8 noundef zeroext %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %.sroa.06 = alloca [4 x i32], align 4           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06)
  %i.a = getelementptr i8, ptr %2, i64 836
  %i.b = load i8, ptr %i.a, align 4, !range !29, !noundef !30
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %2, i64 840
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 264
  %.val21 = load ptr, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %.val21, i64 2304
  %i.h = load ptr, ptr %i.g, align 64             ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 164
  %i.j = load i8, ptr %i.i, align 4, !range !29, !noundef !30
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.h, i64 168
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sink = phi ptr [ %i.l, %bb.d ], [ %i.d, %bb.b ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.06, ptr noundef align 4 dereferenceable(16) %.sink, i64 16, i1 false)
  %i.m = getelementptr i8, ptr %0, i64 4
  br label %bb.f

bb.f:                                             ; preds = %ipv6_reserved_interfaceid.exit.thread, %bb.e
  %.020 = phi i8 [ %1, %bb.e ], [ %i.ag, %ipv6_reserved_interfaceid.exit.thread ] ; 2 uses
  tail call void @_raw_spin_lock_bh(ptr noundef @ipv6_generate_stable_address.lock) #18
  tail call void @sha1_init(ptr noundef @ipv6_generate_stable_address.sha_ctx) #18
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(64) @ipv6_generate_stable_address.data, i8 0, i64 64, i1 false)
  %i.n = load ptr, ptr %2, align 8                ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 775
  %i.p = getelementptr i8, ptr %i.n, i64 808
  %i.q = load i8, ptr %i.p, align 8
  %i.r = zext i8 %i.q to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 getelementptr inbounds nuw (i8, ptr @ipv6_generate_stable_address.data, i64 24), ptr align 1 %i.o, i64 %i.r, i1 false)
  %i.s = load i32, ptr %0, align 4
  store i32 %i.s, ptr getelementptr inbounds nuw (i8, ptr @ipv6_generate_stable_address.data, i64 16), align 1
  %i.t = load i32, ptr %i.m, align 4
  store i32 %i.t, ptr getelementptr inbounds nuw (i8, ptr @ipv6_generate_stable_address.data, i64 20), align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(16) @ipv6_generate_stable_address.data, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.06, i64 16, i1 false)
  store i8 %.020, ptr getelementptr inbounds nuw (i8, ptr @ipv6_generate_stable_address.data, i64 56), align 1
  tail call void @sha1_update(ptr noundef @ipv6_generate_stable_address.sha_ctx, ptr noundef @ipv6_generate_stable_address.data, i64 noundef 64) #18
  %.sroa.0.0.copyload = load i64, ptr %0, align 4
  %i.u = load i64, ptr @ipv6_generate_stable_address.sha_ctx, align 8 ; 3 uses
  %i.v = trunc i64 %i.u to i32                    ; 3 uses
  %i.w = lshr i64 %i.u, 32
  %i.x = trunc nuw i64 %i.w to i32                ; 3 uses
  tail call void @_raw_spin_unlock_bh(ptr noundef @ipv6_generate_stable_address.lock) #18
  %i.y = or i32 %i.x, %i.v
  %i.z = icmp eq i32 %i.y, 0
end_hunk_0
