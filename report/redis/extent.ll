inline.NumInlined: 275
inline.NumDeleted: 91
begin_hunk_0_@je_ecache_alloc_grow:tsdn_witness_tsdp_get.exit
  store i32 %storemerge.i81.i.i, ptr %i.ac, align 8, !tbaa !50
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 58512
  store atomic i8 0, ptr %i.dq monotonic, align 8
  %i.dr = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.e) #9 ; 0 uses
  br i1 %7, label %bb.al, label %extent_alloc_retained.exit.thread30

bb.al:                                            ; preds = %bb.ak
  %.val75.i.i = load i64, ptr %.0148.i.i, align 8, !tbaa !47
  %i.ds = and i64 %.val75.i.i, 32768
  %.not140.i.i = icmp eq i64 %i.ds, 0
  br i1 %.not140.i.i, label %bb.am, label %extent_alloc_retained.exit.thread30

bb.am:                                            ; preds = %bb.al
  %i.dt = getelementptr i8, ptr %.0148.i.i, i64 8
  %.val74.i.i = load ptr, ptr %i.dt, align 8, !tbaa !44
  %i.du = ptrtoint ptr %.val74.i.i to i64
  %i.dv = and i64 %i.du, -4096
  %i.dw = inttoptr i64 %i.dv to ptr               ; 2 uses
  %i.dx = getelementptr i8, ptr %.0148.i.i, i64 16
  %.val.i.i = load i64, ptr %i.dx, align 8, !tbaa !40
  %i.dy = and i64 %.val.i.i, -4096                ; 2 uses
  %i.dz = load atomic ptr, ptr %i.an acquire, align 8
  %i.ea = icmp eq ptr %i.dz, @je_ehooks_default_extent_hooks
  br i1 %i.ea, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @je_ehooks_default_zero_impl(ptr noundef %i.dw, i64 noundef range(i64 0, -4095) %i.dy) #9
  br label %extent_alloc_retained.exit.thread30

bb.ao:                                            ; preds = %bb.am
  call void @llvm.memset.p0.i64(ptr align 4096 %i.dw, i8 0, i64 range(i64 0, -4095) %i.dy, i1 false)
  br label %extent_alloc_retained.exit.thread30

extent_alloc_retained.exit.thread:                ; preds = %bb.d
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 58512
  store atomic i8 0, ptr %i.eb monotonic, align 8
  %i.ec = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.e) #9 ; 0 uses
  br label %bb.ap

extent_alloc_retained.exit.thread30:              ; preds = %bb.ao, %bb.an, %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.at

extent_alloc_retained.exit:                       ; preds = %bb.h, %bb.e, %exp_grow_size_prepare.exit.i.i, %bb.r, %bb.t, %bb.w, %.thread134.i.i, %bb.aj
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 58512
  store atomic i8 0, ptr %i.ed monotonic, align 8
  %i.ee = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.e) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ap

bb.ap:                                            ; preds = %extent_alloc_retained.exit, %extent_alloc_retained.exit.thread
  %i.ef = load i8, ptr @je_opt_retain, align 1, !tbaa !11, !range !42, !noundef !43
  %i.eg = trunc nuw i8 %i.ef to i1
  %i.eh = icmp ne ptr %4, null
  %or.cond = and i1 %i.eh, %i.eg
  %brmerge = or i1 %8, %or.cond
  br i1 %brmerge, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.w, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ei = getelementptr i8, ptr %4, i64 8
  %.val = load ptr, ptr %i.ei, align 8, !tbaa !44
  %i.ej = getelementptr i8, ptr %4, i64 16
  %.val26 = load i64, ptr %i.ej, align 8, !tbaa !40
  %i.ek = ptrtoint ptr %.val to i64
  %i.el = and i64 %i.ek, -4096
  %i.em = and i64 %.val26, -4096
  %i.en = add i64 %i.em, %i.el
  %i.eo = inttoptr i64 %i.en to ptr
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %i.ep = phi ptr [ %i.eo, %bb.ar ], [ null, %bb.aq ]
  %i.eq = call ptr @je_extent_alloc_wrapper(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %i.ep, i64 noundef %5, i64 noundef %6, i1 noundef zeroext %7, ptr noundef nonnull %i.c, i1 zeroext poison)
  br label %bb.at

bb.at:                                            ; preds = %extent_alloc_retained.exit.thread30, %extent_alloc_retained.exit.thread28, %bb.ap, %bb.as
  %.0 = phi ptr [ %.0148.i.i, %extent_alloc_retained.exit.thread30 ], [ null, %bb.ap ], [ %i.eq, %bb.as ], [ %i.r, %extent_alloc_retained.exit.thread28 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @je_extent_alloc_wrapper(ptr noundef %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %6, ptr noundef %7, i1 zeroext %8) local_unnamed_addr #1 {
tsdn_witness_tsdp_get.exit:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = zext i1 %6 to i8
  store i8 %i.b, ptr %i.a, align 1, !tbaa !11
  %i.c = icmp eq ptr %0, null                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 58392 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.f = tail call ptr @je_edata_cache_get(ptr noundef %0, ptr noundef %i.e) #9 ; 9 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.k, label %bb.a

bb.a:                                             ; preds = %tsdn_witness_tsdp_get.exit
  %i.h = add i64 %5, 4095
  %i.i = and i64 %i.h, -4096                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load atomic ptr, ptr %i.j acquire, align 8 ; 3 uses
  %i.l = icmp eq ptr %i.k, @je_ehooks_default_extent_hooks
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.val26.i = load i32, ptr %2, align 8, !tbaa !54
  %i.m = call ptr @je_ehooks_default_alloc_impl(ptr noundef %0, ptr noundef %3, i64 noundef %4, i64 noundef range(i64 0, -4095) %i.i, ptr noundef nonnull %i.a, ptr noundef %7, i32 noundef %.val26.i) #9
  br label %ehooks_alloc.exit

bb.c:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.d, label %tsd_fetch_impl.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.n = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 832
  %i.p = load i8, ptr %i.o, align 8, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i, label %tsd_fetch_impl.exit.i.i, label %bb.e, !prof !57

bb.e:                                             ; preds = %bb.d
  %i.q = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.n, i1 noundef zeroext false) #9
  br label %tsd_fetch_impl.exit.i.i

tsd_fetch_impl.exit.i.i:                          ; preds = %bb.e, %bb.d, %bb.c
  %i.r = phi ptr [ %i.n, %bb.d ], [ %i.q, %bb.e ], [ %0, %bb.c ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 832
  %i.t = load i8, ptr %i.s, align 8, !tbaa !40
  %i.u = icmp eq i8 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !40
  %i.x = add i8 %i.w, 1
  store i8 %i.x, ptr %i.v, align 1, !tbaa !40
  br i1 %i.u, label %bb.f, label %ehooks_pre_reentrancy.exit.i

bb.f:                                             ; preds = %tsd_fetch_impl.exit.i.i
  tail call void @je_tsd_slow_update(ptr noundef nonnull %i.r) #9
  br label %ehooks_pre_reentrancy.exit.i

ehooks_pre_reentrancy.exit.i:                     ; preds = %bb.f, %tsd_fetch_impl.exit.i.i
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !58
  %.val.i = load i32, ptr %2, align 8, !tbaa !54
  %i.z = call ptr %i.y(ptr noundef nonnull %i.k, ptr noundef %3, i64 noundef %4, i64 noundef range(i64 0, -4095) %i.i, ptr noundef nonnull %i.a, ptr noundef %7, i32 noundef %.val.i) #9, !inline_history !64 ; 2 uses
  br i1 %i.c, label %bb.g, label %tsd_fetch_impl.exit.i27.i

bb.g:                                             ; preds = %ehooks_pre_reentrancy.exit.i
  %i.aa = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 832
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !40
  %.not.i.i28.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i28.i, label %tsd_fetch_impl.exit.i27.i, label %bb.h, !prof !57

bb.h:                                             ; preds = %bb.g
  %i.ad = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.aa, i1 noundef zeroext false) #9
  br label %tsd_fetch_impl.exit.i27.i

tsd_fetch_impl.exit.i27.i:                        ; preds = %bb.h, %bb.g, %ehooks_pre_reentrancy.exit.i
  %i.ae = phi ptr [ %i.aa, %bb.g ], [ %i.ad, %bb.h ], [ %0, %ehooks_pre_reentrancy.exit.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !40
  %i.ah = add i8 %i.ag, -1                        ; 2 uses
  store i8 %i.ah, ptr %i.af, align 1, !tbaa !40
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.i, label %ehooks_alloc.exit

bb.i:                                             ; preds = %tsd_fetch_impl.exit.i27.i
  call void @je_tsd_slow_update(ptr noundef nonnull %i.ae) #9
  br label %ehooks_alloc.exit

ehooks_alloc.exit:                                ; preds = %bb.b, %tsd_fetch_impl.exit.i27.i, %bb.i
  %.0.i = phi ptr [ %i.m, %bb.b ], [ %i.z, %tsd_fetch_impl.exit.i27.i ], [ %i.z, %bb.i ] ; 2 uses
  %i.aj = icmp eq ptr %.0.i, null
  br i1 %i.aj, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %ehooks_alloc.exit
  %i.ak = getelementptr i8, ptr %1, i64 19484
  %.val33 = load i32, ptr %i.ak, align 4, !tbaa !61
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 62232
  %i.am = atomicrmw add ptr %i.al, i64 1 monotonic, align 8
  %i.an = load i8, ptr %i.a, align 1, !tbaa !11, !range !42, !noundef !43
  %i.ao = load i8, ptr %7, align 1, !tbaa !11, !range !42, !noundef !43
  %i.ap = load i8, ptr @je_opt_retain, align 1, !tbaa !11, !range !42, !noundef !43
  %i.aq = load i64, ptr %i.f, align 8, !tbaa !47
  %i.ar = and i64 %i.aq, -17592454479872
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.0.i, ptr %i.as, align 8, !tbaa !44
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !40
  %i.av = and i64 %i.au, 4095
  %i.aw = or i64 %i.av, %4
  store i64 %i.aw, ptr %i.at, align 8, !tbaa !40
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 %i.am, ptr %i.ax, align 8, !tbaa !62
  %i.ay = and i32 %.val33, -268431361
  %i.az = zext nneg i8 %i.an to i64
  %i.ba = shl nuw nsw i64 %i.az, 15
  %i.bb = zext nneg i8 %i.ao to i64
  %i.bc = shl nuw nsw i64 %i.bb, 13
  %.not.i = icmp eq i8 %i.ap, 0
  %9 = select i1 %.not.i, i64 0, i64 17592186044416
  %i.bd = or disjoint i32 %i.ay, 246415360
  %i.be = zext i32 %i.bd to i64
  %i.bf = or disjoint i64 %i.ba, %i.be
  %i.bg = or disjoint i64 %9, %i.bc
  %i.bh = or disjoint i64 %i.bg, %i.ar
  %i.bi = or i64 %i.bh, %i.bf
  store i64 %i.bi, ptr %i.f, align 8, !tbaa !47
  %i.bj = getelementptr i8, ptr %1, i64 58384
  %.val = load ptr, ptr %i.bj, align 8, !tbaa !22
  %i.bk = call zeroext i1 @je_emap_register_boundary(ptr noundef %0, ptr noundef %.val, ptr noundef nonnull %i.f, i32 noundef 235, i1 noundef zeroext false) #9
  br i1 %i.bk, label %.sink.split, label %bb.k

.sink.split:                                      ; preds = %bb.j, %ehooks_alloc.exit
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !49
  call void @je_edata_cache_put(ptr noundef %0, ptr noundef %i.bl, ptr noundef nonnull %i.f) #9
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.j, %tsdn_witness_tsdp_get.exit
  %.2 = phi ptr [ null, %tsdn_witness_tsdp_get.exit ], [ %i.f, %bb.j ], [ null, %.sink.split ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define hidden void @je_ecache_dalloc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 {
tsdn_witness_tsdp_get.exit:
  %i.a = getelementptr i8, ptr %4, i64 8          ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.b = ptrtoint ptr %.val to i64
  %i.c = and i64 %i.b, -4096
  %i.d = inttoptr i64 %i.c to ptr
  store ptr %i.d, ptr %i.a, align 8, !tbaa !44
  %i.e = load i64, ptr %4, align 8, !tbaa !47
  %i.f = and i64 %i.e, -32769
  store i64 %i.f, ptr %4, align 8, !tbaa !47
  tail call void @je_extent_record(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_extent_record(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.c = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.b) #9
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %3) #9
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  store atomic i8 1, ptr %i.d monotonic, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20
  %.not.i.i = icmp eq ptr %i.i, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.h, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !21
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !21
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %.val35 = load i64, ptr %4, align 8, !tbaa !47
  %i.m = and i64 %.val35, 65536
  %.not39 = icmp eq i64 %i.m, 0
  br i1 %.not39, label %bb.e, label %bb.l

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 19432
  %i.o = load i8, ptr %i.n, align 8, !tbaa !41, !range !42, !noundef !43
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = tail call fastcc ptr @extent_try_coalesce_impl(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null)
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr i8, ptr %4, i64 16
  %.val34 = load i64, ptr %i.r, align 8, !tbaa !40
  %i.s = icmp ugt i64 %.val34, 16383
  br i1 %i.s, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.033 = phi ptr [ %4, %bb.h ], [ %i.t, %bb.i ]
  %i.t = call fastcc ptr @extent_try_coalesce_impl(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %.033, ptr noundef nonnull %i.a) ; 4 uses
  %i.u = load i8, ptr %i.a, align 1, !tbaa !11, !range !42, !noundef !43
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.i, label %atomic_load_zu.exit, !llvm.loop !65

atomic_load_zu.exit:                              ; preds = %bb.i
  %i.w = getelementptr i8, ptr %i.t, i64 16       ; 2 uses
  %.val = load i64, ptr %i.w, align 8, !tbaa !40
  %i.x = and i64 %.val, -4096
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 58640
  %i.z = load atomic i64, ptr %i.y monotonic, align 8
  %.not = icmp ult i64 %i.x, %i.z
  br i1 %.not, label %.thread, label %bb.j

bb.j:                                             ; preds = %atomic_load_zu.exit
  %i.aa = tail call i64 @je_pac_decay_ms_get(ptr noundef nonnull %1, i32 noundef 1) #9
  %i.ab = icmp eq i64 %i.aa, -1
  br i1 %i.ab, label %.thread, label %extent_may_force_decay.exit

extent_may_force_decay.exit:                      ; preds = %bb.j
  %i.ac = tail call i64 @je_pac_decay_ms_get(ptr noundef nonnull %1, i32 noundef 2) #9
  %.not40 = icmp eq i64 %i.ac, -1
  br i1 %.not40, label %.thread, label %bb.k

.thread:                                          ; preds = %extent_may_force_decay.exit, %atomic_load_zu.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.l

bb.k:                                             ; preds = %extent_may_force_decay.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 104
  store atomic i8 0, ptr %i.ad monotonic, align 8
  %i.ae = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.b) #9 ; 0 uses
  %.val.i = load i64, ptr %i.w, align 8, !tbaa !40 ; 2 uses
  %i.af = and i64 %.val.i, -4096
  tail call void @je_extent_dalloc_wrapper(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %i.t), !inline_history !66
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 62224 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !48
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = atomicrmw add ptr %i.ai, i64 1 monotonic, align 8 ; 0 uses
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !48
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = lshr i64 %.val.i, 12
  %i.an = atomicrmw add ptr %i.al, i64 %i.am monotonic, align 8 ; 0 uses
  %i.ao = load ptr, ptr %i.ag, align 8, !tbaa !48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %i.aq = atomicrmw sub ptr %i.ap, i64 %i.af monotonic, align 8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.m

bb.l:                                             ; preds = %.thread, %bb.f, %bb.g, %malloc_mutex_lock.exit
  %.1 = phi ptr [ %4, %malloc_mutex_lock.exit ], [ %i.t, %.thread ], [ %4, %bb.g ], [ %i.q, %bb.f ] ; 3 uses
  %i.ar = getelementptr i8, ptr %1, i64 58384
  %.val36 = load ptr, ptr %i.ar, align 8, !tbaa !22
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 19424
  %i.at = load i32, ptr %i.as, align 8, !tbaa !39
  tail call void @je_emap_update_edata_state(ptr noundef %0, ptr noundef %.val36, ptr noundef %.1, i32 noundef %i.at) #9
  %.val.i.i = load i64, ptr %.1, align 8, !tbaa !47
  %i.au = and i64 %.val.i.i, 65536
  %.not.i.i37 = icmp eq i64 %i.au, 0
  %.v.i.i = select i1 %.not.i.i37, i64 112, i64 9768
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 %.v.i.i
  tail call void @je_eset_insert(ptr noundef nonnull %i.av, ptr noundef nonnull %.1) #9
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 104
  store atomic i8 0, ptr %i.aw monotonic, align 8
  %i.ax = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.b) #9 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @je_ecache_evict(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef captures(none) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.c = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.b) #9
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %3) #9
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  store atomic i8 1, ptr %i.d monotonic, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20
  %.not.i.i = icmp eq ptr %i.i, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.h, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !21
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !21
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
end_hunk_0
