Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/route?download=true
inline.NumInlined: 844
inline.NumDeleted: 328
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@__ip6_del_rt:bb.a
bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ -2, %bb.a ]
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %fib6_info_release.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 44         ; 3 uses
  %i.j = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.i, i32 -1, ptr elementtype(i32) %i.i) #22, !srcloc !44 ; 2 uses
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp slt i32 %i.j, 1
  br i1 %i.l, label %bb.f, label %fib6_info_release.exit, !prof !22

bb.f:                                             ; preds = %bb.e
  tail call void @refcount_warn_saturate(ptr noundef %i.i, i32 noundef 3) #21
  br label %fib6_info_release.exit

bb.g:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !45
  %i.m = getelementptr i8, ptr %0, i64 176
  tail call void @call_rcu(ptr noundef %i.m, ptr noundef nonnull @fib6_info_destroy_rcu) #21
  br label %fib6_info_release.exit

fib6_info_release.exit:                           ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @rt6_get_dflt_router(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @fib6_get_table(ptr noundef %0, i32 noundef 254) #21 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__rcu_read_lock() #21
  %i.b = getelementptr i8, ptr %i.a, i64 48
  %i.c = load volatile ptr, ptr %i.b, align 8     ; 2 uses
  %.not2735 = icmp eq ptr %i.c, null
  br i1 %.not2735, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr i8, ptr %1, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %.02436 = phi ptr [ %i.c, %.lr.ph ], [ %i.t, %bb.g ] ; 8 uses
  %i.e = getelementptr i8, ptr %.02436, i64 192
  %i.f = load ptr, ptr %i.e, align 8
  %.not28 = icmp eq ptr %i.f, null
  br i1 %.not28, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %.02436, i64 200
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %2, %i.h
  br i1 %i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %.02436, i64 100
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 327680
  %i.m = icmp eq i32 %i.l, 327680
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %.02436, i64 224
  %.val = load i64, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %.02436, i64 232
  %.val29 = load i64, ptr %i.o, align 8
  %.val30 = load i64, ptr %1, align 8
  %.val31 = load i64, ptr %i.d, align 8
  %i.p = icmp eq i64 %.val, %.val30
  %i.q = icmp eq i64 %.val29, %.val31
  %i.r = and i1 %i.p, %i.q
  br i1 %i.r, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.c
  %i.s = getelementptr i8, ptr %.02436, i64 8
  %i.t = load volatile ptr, ptr %i.s, align 8     ; 2 uses
  %.not27 = icmp eq ptr %i.t, null
  br i1 %.not27, label %.critedge, label %bb.c, !llvm.loop !117

bb.h:                                             ; preds = %bb.f
  %i.u = getelementptr i8, ptr %.02436, i64 44    ; 4 uses
  %i.v = load volatile i32, ptr %i.u, align 4     ; 2 uses
  %.old1.not.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.old1.not.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.h, %arch_atomic_try_cmpxchg.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.ab, %arch_atomic_try_cmpxchg.exit.i.i.i.i ], [ %i.v, %bb.h ] ; 3 uses
  %i.w = add i32 %.0.i.i.i.i, 1
  %i.x = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.u, i32 %i.w, ptr elementtype(i32) %i.u, i32 %.0.i.i.i.i) #22, !srcloc !28 ; 2 uses
  %i.y = extractvalue { i8, i32 } %i.x, 0         ; 2 uses
  %i.z = icmp ult i8 %i.y, 2
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = trunc nuw i8 %i.y to i1
  br i1 %i.aa, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i.i, !prof !21

arch_atomic_try_cmpxchg.exit.i.i.i.i:             ; preds = %.preheader.i.i.i.i
  %i.ab = extractvalue { i8, i32 } %i.x, 1        ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !1

arch_atomic_try_cmpxchg.exit.thread.i.i.i.i:      ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i.i, %.preheader.i.i.i.i, %bb.h
  %.2.i.i.i.i = phi i32 [ 0, %bb.h ], [ %.0.i.i.i.i, %.preheader.i.i.i.i ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i.i ] ; 3 uses
  %i.ad = add i32 %.2.i.i.i.i, 1
  %i.ae = or i32 %i.ad, %.2.i.i.i.i
  %.not.i.i.i.i = icmp sgt i32 %i.ae, -1
  br i1 %.not.i.i.i.i, label %fib6_info_hold_safe.exit, label %bb.i, !prof !21

bb.i:                                             ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef %i.u, i32 noundef 0) #21
  br label %fib6_info_hold_safe.exit

fib6_info_hold_safe.exit:                         ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i, %bb.i
  %.not33 = icmp eq i32 %.2.i.i.i.i, 0
  %spec.select = select i1 %.not33, ptr null, ptr %.02436
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.b, %fib6_info_hold_safe.exit
  %.1 = phi ptr [ %spec.select, %fib6_info_hold_safe.exit ], [ null, %bb.b ], [ null, %bb.g ]
  tail call void @__rcu_read_unlock() #21
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %.critedge
  %.0 = phi ptr [ %.1, %.critedge ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @fib6_get_table(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @rt6_add_dflt_router(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %6 = alloca %struct.fib6_config, align 8        ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.a, i8 0, i64 168, i1 false)
  store i32 254, ptr %6, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %4, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.d = getelementptr i8, ptr %2, i64 224
  %i.e = load i32, ptr %i.d, align 32
  store i32 %i.e, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.g = shl i32 %3, 27
  %i.h = or disjoint i32 %i.g, 4521987
  store i32 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 9, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i16 1, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.l = mul i32 %5, 1000
  %i.m = sext i32 %i.l to i64
  %i.n = tail call i64 @jiffies_to_clock_t(i64 noundef %i.m) #21
  store i64 %i.n, ptr %i.k, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 144
  store ptr %0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.p, ptr noundef align 4 dereferenceable(16) %1, i64 16, i1 false)
  %i.q = call i32 @ip6_route_add(ptr noundef nonnull %6, i32 noundef 2080, ptr noundef null) #24
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr i8, ptr %2, i64 264
  %.val = load ptr, ptr %i.r, align 8
  %i.s = load i32, ptr %6, align 8
  %i.t = call ptr @fib6_get_table(ptr noundef %.val, i32 noundef %i.s) #21 ; 2 uses
  %.not12 = icmp eq ptr %i.t, null
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr i8, ptr %i.t, i64 112      ; 2 uses
  %i.v = load i32, ptr %i.u, align 8
  %i.w = or i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.x = call ptr @rt6_get_dflt_router(ptr noundef %0, ptr noundef %1, ptr noundef %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  ret ptr %i.x
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @jiffies_to_clock_t(i64 noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @rt6_purge_dflt_routers(ptr noundef %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.nl_info, align 8            ; 6 uses
  tail call void @__rcu_read_lock() #21
  %i.a = getelementptr i8, ptr %0, i64 2392
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %4 = getelementptr i8, ptr %0, i64 2328
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load volatile ptr, ptr %i.b, align 8     ; 2 uses
  %.not2834 = icmp eq ptr %i.c, null
  br i1 %.not2834, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.s, %bb.a
  call void @__rcu_read_unlock() #21
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.s
  %.035 = phi ptr [ %i.bm, %bb.s ], [ %i.c, %bb.a ] ; 3 uses
  %i.d = getelementptr i8, ptr %.035, i64 112     ; 3 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 1
  %.not29 = icmp eq i32 %i.f, 0
  br i1 %.not29, label %bb.s, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  call void @__rcu_read_lock() #21
  %i.g = getelementptr i8, ptr %.035, i64 48      ; 2 uses
  %i.h = load volatile ptr, ptr %i.g, align 8     ; 2 uses
  %.not3336.i = icmp eq ptr %i.h, null
  br i1 %.not3336.i, label %__rt6_purge_dflt_routers.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i.backedge
  %.034.i = phi ptr [ %.034.i.be, %.lr.ph.i.backedge ], [ %i.h, %bb.b ] ; 10 uses
  %i.i = getelementptr i8, ptr %.034.i, i64 192
  %i.j = load ptr, ptr %i.i, align 8              ; 4 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr i8, ptr %i.j, i64 102
  %i.l = load i8, ptr %i.k, align 2, !range !30, !noundef !31
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %i.j, i64 128
  %i.o = load volatile ptr, ptr %i.n, align 8     ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %i.q = load i16, ptr %i.p, align 8
  %i.r = icmp eq i16 %i.q, 0
  br i1 %i.r, label %fib6_info_nh_dev.exit.i, label %nexthop_mpath_select.exit.i.i.i

nexthop_mpath_select.exit.i.i.i:                  ; preds = %bb.d
  %i.s = getelementptr i8, ptr %i.o, i64 24
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.not.i.i.i, label %fib6_info_nh_dev.exit.i, label %bb.e

bb.e:                                             ; preds = %nexthop_mpath_select.exit.i.i.i, %bb.c
  %.014.i.i.i = phi ptr [ %i.t, %nexthop_mpath_select.exit.i.i.i ], [ %i.j, %bb.c ]
  %i.u = getelementptr i8, ptr %.014.i.i.i, i64 128
  %i.v = load volatile ptr, ptr %i.u, align 8     ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 24
  %i.x = load i8, ptr %i.w, align 8
  %i.y = icmp eq i8 %i.x, 10
  %i.z = getelementptr i8, ptr %i.v, i64 32
  %spec.select.i.i.i = select i1 %i.y, ptr %i.z, ptr null
  br label %fib6_info_nh_dev.exit.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.aa = getelementptr i8, ptr %.034.i, i64 200
  br label %fib6_info_nh_dev.exit.i

fib6_info_nh_dev.exit.i:                          ; preds = %bb.f, %bb.e, %nexthop_mpath_select.exit.i.i.i, %bb.d
  %i.ab = phi ptr [ %i.aa, %bb.f ], [ %spec.select.i.i.i, %bb.e ], [ null, %nexthop_mpath_select.exit.i.i.i ], [ null, %bb.d ]
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not22.i = icmp eq ptr %i.ac, null
  br i1 %.not22.i, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %fib6_info_nh_dev.exit.i
  %i.ad = getelementptr i8, ptr %i.ac, i64 192
  %i.ae = load volatile ptr, ptr %i.ad, align 64  ; 2 uses
  %i.af = getelementptr i8, ptr %.034.i, i64 100
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = and i32 %i.ag, 327680
  %.not23.i = icmp eq i32 %i.ah, 0
  br i1 %.not23.i, label %bb.r, label %bb.h

.thread.i:                                        ; preds = %fib6_info_nh_dev.exit.i
  %i.ai = getelementptr i8, ptr %.034.i, i64 100
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = and i32 %i.aj, 327680
  %.not2326.i = icmp eq i32 %i.ak, 0
  br i1 %.not2326.i, label %bb.r, label %.thread27.i

bb.h:                                             ; preds = %bb.g
  %.not24.i = icmp eq ptr %i.ae, null
  br i1 %.not24.i, label %.thread27.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr i8, ptr %i.ae, i64 700
  %i.am = load i32, ptr %i.al, align 4
  %.not25.i = icmp eq i32 %i.am, 2
  br i1 %.not25.i, label %bb.r, label %.thread27.i

.thread27.i:                                      ; preds = %bb.i, %bb.h, %.thread.i
  %i.an = getelementptr i8, ptr %.034.i, i64 44   ; 7 uses
  %i.ao = load volatile i32, ptr %i.an, align 4   ; 2 uses
  %.old1.not.i.i.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.old1.not.i.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.thread27.i, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.au, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i ], [ %i.ao, %.thread27.i ] ; 3 uses
  %i.ap = add i32 %.0.i.i.i.i.i, 1
  %i.aq = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.an, i32 %i.ap, ptr elementtype(i32) %i.an, i32 %.0.i.i.i.i.i) #22, !srcloc !28 ; 2 uses
  %i.ar = extractvalue { i8, i32 } %i.aq, 0       ; 2 uses
  %i.as = icmp ult i8 %i.ar, 2
  call void @llvm.assume(i1 %i.as)
  %i.at = trunc nuw i8 %i.ar to i1
  br i1 %i.at, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i.i.i, !prof !21

arch_atomic_try_cmpxchg.exit.i.i.i.i.i:           ; preds = %.preheader.i.i.i.i.i
  %i.au = extractvalue { i8, i32 } %i.aq, 1       ; 2 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i, label %.preheader.i.i.i.i.i, !llvm.loop !1

arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i:    ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i.i.i, %.preheader.i.i.i.i.i, %.thread27.i
  %.2.i.i.i.i.i = phi i32 [ 0, %.thread27.i ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i ], [ %.0.i.i.i.i.i, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.aw = add i32 %.2.i.i.i.i.i, 1
  %i.ax = or i32 %i.aw, %.2.i.i.i.i.i
  %.not.i.i.i.i.i = icmp sgt i32 %i.ax, -1
  br i1 %.not.i.i.i.i.i, label %fib6_info_hold_safe.exit.i, label %bb.j, !prof !21

bb.j:                                             ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i
  call void @refcount_warn_saturate(ptr noundef %i.an, i32 noundef 0) #21
  br label %fib6_info_hold_safe.exit.i

fib6_info_hold_safe.exit.i:                       ; preds = %bb.j, %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i
  %.not31.i = icmp eq i32 %.2.i.i.i.i.i, 0
  br i1 %.not31.i, label %bb.r, label %bb.k

bb.k:                                             ; preds = %fib6_info_hold_safe.exit.i
  call void @__rcu_read_unlock() #21
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  store i64 0, ptr %1, align 8
  store ptr %0, ptr %2, align 8
  store i64 0, ptr %3, align 8
  %i.ay = load ptr, ptr %4, align 8
  %i.az = icmp eq ptr %.034.i, %i.ay
  br i1 %i.az, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = load ptr, ptr %.034.i, align 8
  %i.bb = getelementptr i8, ptr %i.ba, i64 20     ; 2 uses
  call void @_raw_spin_lock_bh(ptr noundef %i.bb) #21
  %i.bc = call i32 @fib6_del(ptr noundef nonnull %.034.i, ptr noundef nonnull %1) #21 ; 0 uses
  call void @_raw_spin_unlock_bh(ptr noundef %i.bb) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bd = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.an, i32 -1, ptr elementtype(i32) %i.an) #22, !srcloc !44 ; 2 uses
  %i.be = icmp eq i32 %i.bd, 1
  br i1 %i.be, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = icmp slt i32 %i.bd, 1
  br i1 %i.bf, label %bb.o, label %bb.q, !prof !22

bb.o:                                             ; preds = %bb.n
  call void @refcount_warn_saturate(ptr noundef %i.an, i32 noundef 3) #21
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !45
  %i.bg = getelementptr i8, ptr %.034.i, i64 176
  call void @call_rcu(ptr noundef %i.bg, ptr noundef nonnull @fib6_info_destroy_rcu) #21
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  call void @__rcu_read_lock() #21
  %i.bh = load volatile ptr, ptr %i.g, align 8    ; 2 uses
  %.not33.i = icmp eq ptr %i.bh, null
  br i1 %.not33.i, label %__rt6_purge_dflt_routers.exit, label %.lr.ph.i.backedge

bb.r:                                             ; preds = %fib6_info_hold_safe.exit.i, %bb.i, %.thread.i, %bb.g
  %i.bi = getelementptr i8, ptr %.034.i, i64 8
  %i.bj = load volatile ptr, ptr %i.bi, align 8   ; 2 uses
  %.not.i = icmp eq ptr %i.bj, null
  br i1 %.not.i, label %__rt6_purge_dflt_routers.exit, label %.lr.ph.i.backedge

.lr.ph.i.backedge:                                ; preds = %bb.r, %bb.q
  %.034.i.be = phi ptr [ %i.bj, %bb.r ], [ %i.bh, %bb.q ]
  br label %.lr.ph.i, !llvm.loop !118

__rt6_purge_dflt_routers.exit:                    ; preds = %bb.q, %bb.r, %bb.b
  call void @__rcu_read_unlock() #21
  %i.bk = load i32, ptr %i.d, align 8
  %i.bl = and i32 %i.bk, -2
  store i32 %i.bl, ptr %i.d, align 8
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %__rt6_purge_dflt_routers.exit
  %i.bm = load volatile ptr, ptr %.035, align 8   ; 2 uses
  %.not28 = icmp eq ptr %i.bm, null
  br i1 %.not28, label %.loopexit, label %.lr.ph, !llvm.loop !119
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @ipv6_route_ioctl(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.fib6_config, align 8        ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = add i32 %1, -35085
  %or.cond = icmp ult i32 %i.a, -2
  br i1 %or.cond, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 16
  %i.d = tail call zeroext i1 @ns_capable(ptr noundef %i.c, i32 noundef 12) #21
  br i1 %i.d, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %2, i64 76
  %i.f = getelementptr i8, ptr %2, i64 56
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr i8, ptr %2, i64 52
  %i.i = load i16, ptr %i.h, align 4
  %i.j = zext i16 %i.i to i32
  %i.k = getelementptr i8, ptr %2, i64 54
  %i.l = load i16, ptr %i.k, align 2
  %i.m = zext i16 %i.l to i32
  %i.n = load i32, ptr %i.e, align 4
  %i.o = getelementptr i8, ptr %2, i64 72
  %i.p = load i32, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %2, i64 48
  %i.r = load i32, ptr %i.q, align 8
  %i.s = trunc i32 %i.r to i16
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.17.0..sroa_idx.i, ptr noundef readonly align 8 dereferenceable(16) %2, i64 16, i1 false)
  %i.t = getelementptr i8, ptr %2, i64 16
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.18.0..sroa_idx.i, ptr noundef readonly align 8 dereferenceable(16) %i.t, i64 16, i1 false)
  %i.u = getelementptr i8, ptr %2, i64 32
  %.sroa.20.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.20.0..sroa_idx.i, ptr noundef readonly align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  %i.v = getelementptr i8, ptr %2, i64 64
  %i.w = load i64, ptr %i.v, align 8
  store i32 254, ptr %3, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 %i.g, ptr %.sroa.2.0..sroa_idx.i, align 4
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.j, ptr %.sroa.3.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.m, ptr %.sroa.4.0..sroa_idx.i, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.n, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.p, ptr %.sroa.6.0..sroa_idx.i, align 4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 0, ptr %.sroa.7.0..sroa_idx.i, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i16 %i.s, ptr %.sroa.8.0..sroa_idx.i, align 4
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 30
  store i16 0, ptr %.sroa.9.0..sroa_idx.i, align 2
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %.sroa.16.0..sroa_idx.i, align 8
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.19.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 100
  store i32 0, ptr %.sroa.21.0..sroa_idx.i, align 4
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i64 %i.w, ptr %.sroa.22.0..sroa_idx.i, align 8
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 112
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.23.0..sroa_idx.i, i8 0, i64 32, i1 false)
  store ptr %0, ptr %.sroa.28.0..sroa_idx.i, align 8
  %.sroa.29.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.29.0..sroa_idx.i, i8 0, i64 24, i1 false)
  %i.x = icmp eq i32 %1, 35083
  br i1 %i.x, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.y = icmp eq i32 %i.g, 0
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 1024, ptr %.sroa.2.0..sroa_idx.i, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = call i32 @ip6_route_add(ptr noundef nonnull %3, i32 noundef 3264, ptr noundef null) #24
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.aa = call fastcc i32 @ip6_route_del(ptr noundef nonnull %3, ptr noundef null) #24, !srcloc !120
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.b, %bb.a
  %.08 = phi i32 [ -22, %bb.a ], [ -1, %bb.b ], [ %i.aa, %bb.g ], [ %i.z, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret i32 %.08
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @ip6_route_del(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.fib6_nh_del_cached_rt_arg, align 8 ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 136        ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 144        ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load i32, ptr %0, align 8
  %i.e = tail call ptr @fib6_get_table(ptr noundef %i.c, i32 noundef %i.d) #21 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ip6_route_del.__msg) #21
  %.not82 = icmp eq ptr %1, null
  br i1 %.not82, label %bb.al, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @ip6_route_del.__msg, ptr %1, align 8
  br label %bb.al

bb.d:                                             ; preds = %bb.a
  tail call void @__rcu_read_lock() #21
  %i.f = getelementptr i8, ptr %i.e, i64 24
  %i.g = getelementptr i8, ptr %0, i64 36
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %0, i64 52
  %i.k = getelementptr i8, ptr %0, i64 12
  %i.l = load i32, ptr %i.k, align 4
  %i.m = getelementptr i8, ptr %0, i64 20         ; 4 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = and i32 %i.n, 16777216
  %.not83 = icmp eq i32 %i.o, 0
  %i.p = tail call ptr @fib6_locate(ptr noundef %i.f, ptr noundef %i.g, i32 noundef %i.i, ptr noundef %i.j, i32 noundef %i.l, i1 noundef zeroext %.not83) #21 ; 2 uses
  %.not84 = icmp eq ptr %i.p, null
  br i1 %.not84, label %__ip6_del_rt.exit.thread123, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %i.p, i64 24
  %i.r = load volatile ptr, ptr %i.q, align 8     ; 2 uses
  %.not85132 = icmp eq ptr %i.r, null
  br i1 %.not85132, label %__ip6_del_rt.exit.thread123, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.s = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = getelementptr i8, ptr %0, i64 4
  %i.v = getelementptr i8, ptr %0, i64 24
  %i.w = getelementptr i8, ptr %0, i64 16
  %i.x = getelementptr i8, ptr %0, i64 84
  %i.y = getelementptr i8, ptr %0, i64 92
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.ak
  %.065133 = phi ptr [ %i.r, %.lr.ph ], [ %i.ct, %bb.ak ] ; 17 uses
  %i.z = getelementptr i8, ptr %.065133, i64 192  ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not86 = icmp eq ptr %i.aa, null               ; 2 uses
  br i1 %.not86, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = load i32, ptr %i.s, align 8             ; 2 uses
  %.not87 = icmp eq i32 %i.ab, 0
  br i1 %.not87, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr i8, ptr %i.aa, i64 96
  %i.ad = load i32, ptr %i.ac, align 8
  %.not88 = icmp eq i32 %i.ad, %i.ab
  br i1 %.not88, label %bb.i, label %bb.ak

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ae = load i32, ptr %i.m, align 4             ; 2 uses
  %i.af = and i32 %i.ae, 16777216
  %.not89 = icmp eq i32 %i.af, 0
  br i1 %.not89, label %bb.m, label %bb.j

.thread:                                          ; preds = %bb.f
  %i.ag = load i32, ptr %i.m, align 4             ; 2 uses
  %i.ah = and i32 %i.ag, 16777216
  %.not89115 = icmp eq i32 %i.ah, 0
  br i1 %.not89115, label %bb.m, label %.thread116

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %0, ptr %2, align 8
  store ptr %.065133, ptr %i.t, align 8
  %i.ai = load ptr, ptr %i.z, align 8
  %i.aj = call i32 @nexthop_for_each_fib6_nh(ptr noundef %i.ai, ptr noundef nonnull @fib6_nh_del_cached_rt, ptr noundef nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.l

.thread116:                                       ; preds = %.thread
  %i.ak = load i32, ptr %i.s, align 8
  %.not102 = icmp eq i32 %i.ak, 0
  br i1 %.not102, label %bb.k, label %bb.ak

end_hunk_0
