Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/extent?download=true
inline.NumInlined: 294
inline.NumDeleted: 93
begin_hunk_0_@je_ecache_alloc_grow:tsdn_witness_tsdp_get.exit

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak
  br i1 %7, label %bb.ao, label %extent_alloc_retained.exit.thread30

bb.ao:                                            ; preds = %bb.an
  %.val87.i.i = load i64, ptr %.0162.i.i, align 8, !tbaa !51
  %i.ee = and i64 %.val87.i.i, 32768
  %.not154.i.i = icmp eq i64 %i.ee, 0
  br i1 %.not154.i.i, label %bb.ap, label %extent_alloc_retained.exit.thread30

bb.ap:                                            ; preds = %bb.ao
  %i.ef = getelementptr i8, ptr %.0162.i.i, i64 8
  %.val86.i.i = load ptr, ptr %i.ef, align 8, !tbaa !50 ; 2 uses
  %i.eg = ptrtoint ptr %.val86.i.i to i64
  %i.eh = and i64 %i.eg, 4095
  %i.ei = sub nsw i64 0, %i.eh
  %i.ej = getelementptr inbounds i8, ptr %.val86.i.i, i64 %i.ei ; 2 uses
  %i.ek = getelementptr i8, ptr %.0162.i.i, i64 16
  %.val.i.i = load i64, ptr %i.ek, align 8, !tbaa !44
  %i.el = and i64 %.val.i.i, -4096                ; 2 uses
  %i.em = load atomic ptr, ptr %i.an acquire, align 8
  %i.en = icmp eq ptr %i.em, @je_ehooks_default_extent_hooks
  br i1 %i.en, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @je_ehooks_default_zero_impl(ptr noundef %i.ej, i64 noundef range(i64 0, -4095) %i.el) #9
  br label %extent_alloc_retained.exit.thread30

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.memset.p0.i64(ptr align 1 %i.ej, i8 0, i64 range(i64 0, -4095) %i.el, i1 false)
  br label %extent_alloc_retained.exit.thread30

extent_alloc_retained.exit.thread:                ; preds = %bb.d
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 58456
  store atomic i8 0, ptr %i.eo monotonic, align 8
  %i.ep = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.e) #9 ; 0 uses
  br label %bb.as

extent_alloc_retained.exit.thread30:              ; preds = %bb.ar, %bb.aq, %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aw

extent_alloc_retained.exit:                       ; preds = %bb.h, %bb.e, %exp_grow_size_prepare.exit.i.i, %bb.r, %bb.t, %bb.w, %.thread147.i.i, %bb.aj
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 58456
  store atomic i8 0, ptr %i.eq monotonic, align 8
  %i.er = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.e) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.as

bb.as:                                            ; preds = %extent_alloc_retained.exit, %extent_alloc_retained.exit.thread
  %i.es = load i8, ptr @je_opt_retain, align 1, !tbaa !16, !range !46, !noundef !47
  %i.et = trunc nuw i8 %i.es to i1
  %i.eu = icmp ne ptr %4, null
  %or.cond = and i1 %i.eu, %i.et
  %brmerge = or i1 %8, %or.cond
  br i1 %brmerge, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  br i1 %i.w, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ev = getelementptr i8, ptr %4, i64 8
  %.val = load ptr, ptr %i.ev, align 8, !tbaa !50 ; 2 uses
  %i.ew = getelementptr i8, ptr %4, i64 16
  %.val26 = load i64, ptr %i.ew, align 8, !tbaa !44
  %i.ex = ptrtoint ptr %.val to i64
  %i.ey = and i64 %i.ex, 4095
  %i.ez = sub nsw i64 0, %i.ey
  %i.fa = getelementptr inbounds i8, ptr %.val, i64 %i.ez
  %i.fb = and i64 %.val26, -4096
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fb
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.fd = phi ptr [ %i.fc, %bb.au ], [ null, %bb.at ]
  %i.fe = call ptr @je_extent_alloc_wrapper(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %i.fd, i64 noundef %5, i64 noundef %6, i1 noundef zeroext %7, ptr noundef nonnull %i.c, i1 zeroext poison)
  br label %bb.aw

bb.aw:                                            ; preds = %extent_alloc_retained.exit.thread30, %extent_alloc_retained.exit.thread28, %bb.as, %bb.av
  %.023 = phi ptr [ %.0162.i.i, %extent_alloc_retained.exit.thread30 ], [ null, %bb.as ], [ %i.fe, %bb.av ], [ %i.r, %extent_alloc_retained.exit.thread28 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  ret ptr %.023
}

; Function Attrs: nounwind uwtable
define hidden ptr @je_extent_alloc_wrapper(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %6, ptr noundef %7, i1 zeroext %8) local_unnamed_addr #1 {
tsdn_witness_tsdp_get.exit:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = zext i1 %6 to i8
  store i8 %i.b, ptr %i.a, align 1, !tbaa !16
  %i.c = icmp eq ptr %0, null                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 58376 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !53
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
  %.val26.i = load i32, ptr %2, align 8, !tbaa !58
  %i.m = call ptr @je_ehooks_default_alloc_impl(ptr noundef %0, ptr noundef %3, i64 noundef %4, i64 noundef range(i64 0, -4095) %i.i, ptr noundef nonnull %i.a, ptr noundef %7, i32 noundef %.val26.i) #9
  br label %ehooks_alloc.exit

bb.c:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.d, label %tsd_fetch_impl.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.n = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 920
  %i.p = load i8, ptr %i.o, align 8, !tbaa !44
  %.not.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i, label %tsd_fetch_impl.exit.i.i, label %bb.e, !prof !59

bb.e:                                             ; preds = %bb.d
  %i.q = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.n, i1 noundef zeroext false) #9
  br label %tsd_fetch_impl.exit.i.i

tsd_fetch_impl.exit.i.i:                          ; preds = %bb.e, %bb.d, %bb.c
  %i.r = phi ptr [ %i.n, %bb.d ], [ %i.q, %bb.e ], [ %0, %bb.c ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 920
  %i.t = load i8, ptr %i.s, align 8, !tbaa !44
  %i.u = icmp eq i8 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !44
  %i.x = add i8 %i.w, 1
  store i8 %i.x, ptr %i.v, align 1, !tbaa !44
  br i1 %i.u, label %bb.f, label %ehooks_pre_reentrancy.exit.i

bb.f:                                             ; preds = %tsd_fetch_impl.exit.i.i
  tail call void @je_tsd_slow_update(ptr noundef nonnull %i.r) #9
  br label %ehooks_pre_reentrancy.exit.i

ehooks_pre_reentrancy.exit.i:                     ; preds = %bb.f, %tsd_fetch_impl.exit.i.i
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !61
  %.val.i = load i32, ptr %2, align 8, !tbaa !58
  %i.z = call ptr %i.y(ptr noundef nonnull %i.k, ptr noundef %3, i64 noundef %4, i64 noundef range(i64 0, -4095) %i.i, ptr noundef nonnull %i.a, ptr noundef %7, i32 noundef %.val.i) #9, !inline_history !74 ; 2 uses
  br i1 %i.c, label %bb.g, label %tsd_fetch_impl.exit.i27.i

bb.g:                                             ; preds = %ehooks_pre_reentrancy.exit.i
  %i.aa = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 920
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !44
  %.not.i.i28.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i28.i, label %tsd_fetch_impl.exit.i27.i, label %bb.h, !prof !59

bb.h:                                             ; preds = %bb.g
  %i.ad = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.aa, i1 noundef zeroext false) #9
  br label %tsd_fetch_impl.exit.i27.i

tsd_fetch_impl.exit.i27.i:                        ; preds = %bb.h, %bb.g, %ehooks_pre_reentrancy.exit.i
  %i.ae = phi ptr [ %i.aa, %bb.g ], [ %i.ad, %bb.h ], [ %0, %ehooks_pre_reentrancy.exit.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !44
  %i.ah = add i8 %i.ag, -1                        ; 2 uses
  store i8 %i.ah, ptr %i.af, align 1, !tbaa !44
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
  %i.ak = getelementptr i8, ptr %1, i64 19468
  %.val33 = load i32, ptr %i.ak, align 4, !tbaa !62
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 62216
  %i.am = atomicrmw add ptr %i.al, i64 1 monotonic, align 8
  %i.an = load i8, ptr %i.a, align 1, !tbaa !16, !range !46, !noundef !47
  %i.ao = load i8, ptr %7, align 1, !tbaa !16, !range !46, !noundef !47
  %i.ap = load i8, ptr @je_opt_retain, align 1, !tbaa !16, !range !46, !noundef !47
  %i.aq = load i64, ptr %i.f, align 8, !tbaa !51
  %i.ar = and i64 %i.aq, -17592454479872
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.0.i, ptr %i.as, align 8, !tbaa !50
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !44
  %i.av = and i64 %i.au, 4095
  %i.aw = or i64 %i.av, %4
  store i64 %i.aw, ptr %i.at, align 8, !tbaa !44
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 %i.am, ptr %i.ax, align 8, !tbaa !63
  %i.ay = and i32 %.val33, -268431361
  %i.az = zext nneg i8 %i.an to i64
  %i.ba = shl nuw nsw i64 %i.az, 15
  %i.bb = zext nneg i8 %i.ao to i64
  %i.bc = shl nuw nsw i64 %i.bb, 13
  %9 = zext nneg i8 %i.ap to i64
  %10 = shl nuw nsw i64 %9, 44
  %i.bd = or disjoint i32 %i.ay, 243269632
  %i.be = zext i32 %i.bd to i64
  %i.bf = or disjoint i64 %i.ba, %i.be
  %i.bg = or disjoint i64 %10, %i.bc
  %i.bh = or disjoint i64 %i.bg, %i.ar
  %i.bi = or i64 %i.bh, %i.bf
  store i64 %i.bi, ptr %i.f, align 8, !tbaa !51
  %i.bj = getelementptr i8, ptr %1, i64 58368
  %.val = load ptr, ptr %i.bj, align 8, !tbaa !42
  %i.bk = call zeroext i1 @je_emap_register_boundary(ptr noundef %0, ptr noundef %.val, ptr noundef nonnull %i.f, i32 noundef 232, i1 noundef zeroext false) #9
  br i1 %i.bk, label %.sink.split, label %bb.k

.sink.split:                                      ; preds = %bb.j, %ehooks_alloc.exit
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !53
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
  %.val = load ptr, ptr %i.a, align 8, !tbaa !50  ; 2 uses
  %i.b = ptrtoint ptr %.val to i64
  %i.c = and i64 %i.b, 4095
  %i.d = sub nsw i64 0, %i.c
  %i.e = getelementptr inbounds i8, ptr %.val, i64 %i.d
  store ptr %i.e, ptr %i.a, align 8, !tbaa !50
  %i.f = load i64, ptr %4, align 8, !tbaa !51
  %i.g = and i64 %i.f, -32769
  store i64 %i.g, ptr %4, align 8, !tbaa !51
  tail call void @je_extent_record(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_extent_record(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.d = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.c) #9
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %malloc_mutex_trylock_final.exit.i, label %bb.b

malloc_mutex_trylock_final.exit.i:                ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 64
  store atomic i8 1, ptr %i.e monotonic, align 1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %3) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %malloc_mutex_trylock_final.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !23
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %i.f, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !24
  %.not.i.i = icmp eq ptr %i.j, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.i, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !25
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !25
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %.val43 = load i64, ptr %4, align 8, !tbaa !51
  %i.n = and i64 %.val43, 65536
  %.not47 = icmp eq i64 %i.n, 0
  br i1 %.not47, label %bb.e, label %bb.m

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 19432
  %i.p = load i8, ptr %i.o, align 8, !tbaa !45, !range !46, !noundef !47
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.r = call fastcc ptr @extent_try_coalesce_impl(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %4, i64 noundef 8070450532247928832, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr i8, ptr %4, i64 16
  %.val42 = load i64, ptr %i.s, align 8, !tbaa !44 ; 2 uses
  %i.t = icmp ugt i64 %.val42, 16383
  br i1 %i.t, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.u = and i64 %.val42, -4096                   ; 2 uses
  %i.v = load i64, ptr @je_opt_lg_extent_max_active_fit, align 8, !tbaa !54
  %i.w = and i64 %i.v, 4294967295                 ; 2 uses
  %i.x = lshr i64 8070450532247928832, %i.w
  %i.y = icmp ugt i64 %i.x, %i.u
  %i.z = shl i64 %i.u, %i.w
  %i.aa = select i1 %i.y, i64 %i.z, i64 8070450532247928832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.039 = phi ptr [ %4, %bb.h ], [ %i.ab, %bb.i ]
  %i.ab = call fastcc ptr @extent_try_coalesce_impl(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %.039, i64 noundef %i.aa, ptr noundef nonnull %i.b) ; 4 uses
  %i.ac = load i8, ptr %i.b, align 1, !tbaa !16, !range !46, !noundef !47
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.i, label %atomic_load_zu.exit, !llvm.loop !75

atomic_load_zu.exit:                              ; preds = %bb.i
  %i.ae = getelementptr i8, ptr %i.ab, i64 16
  %.val = load i64, ptr %i.ae, align 8, !tbaa !44
  %i.af = and i64 %.val, -4096
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 58624
  %i.ah = load atomic i64, ptr %i.ag monotonic, align 8
  %.not = icmp ult i64 %i.af, %i.ah
  br i1 %.not, label %.thread, label %bb.j

bb.j:                                             ; preds = %atomic_load_zu.exit
  %i.ai = load atomic i8, ptr @je_background_thread_enabled_state monotonic, align 1, !range !46, !noundef !47
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = tail call i64 @je_pac_decay_ms_get(ptr noundef nonnull %1, i32 noundef 1) #9
  %i.al = icmp eq i64 %i.ak, -1
  br i1 %i.al, label %.thread, label %extent_may_force_decay.exit

extent_may_force_decay.exit:                      ; preds = %bb.k
  %i.am = tail call i64 @je_pac_decay_ms_get(ptr noundef nonnull %1, i32 noundef 2) #9
  %.not48 = icmp eq i64 %i.am, -1
  br i1 %.not48, label %.thread, label %bb.l

.thread:                                          ; preds = %extent_may_force_decay.exit, %bb.j, %atomic_load_zu.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.m

bb.l:                                             ; preds = %extent_may_force_decay.exit
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 64
  store atomic i8 0, ptr %i.an monotonic, align 8
  %i.ao = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.c) #9 ; 0 uses
  tail call fastcc void @extent_maximally_purge(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.n

bb.m:                                             ; preds = %.thread, %bb.f, %bb.g, %malloc_mutex_lock.exit
  %.1 = phi ptr [ %4, %malloc_mutex_lock.exit ], [ %i.ab, %.thread ], [ %4, %bb.g ], [ %i.r, %bb.f ] ; 3 uses
  %i.ap = getelementptr i8, ptr %1, i64 58368
  %.val44 = load ptr, ptr %i.ap, align 8, !tbaa !42
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 19424
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !43
  tail call void @je_emap_update_edata_state(ptr noundef %0, ptr noundef %.val44, ptr noundef %.1, i32 noundef %i.ar) #9
  %.val.i.i = load i64, ptr %.1, align 8, !tbaa !51
  %i.as = and i64 %.val.i.i, 65536
  %.not.i.i45 = icmp eq i64 %i.as, 0
  %.v.i.i = select i1 %.not.i.i45, i64 112, i64 9768
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 %.v.i.i
  tail call void @je_eset_insert(ptr noundef nonnull %i.at, ptr noundef nonnull %.1) #9
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 64
  store atomic i8 0, ptr %i.au monotonic, align 8
  %i.av = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.c) #9 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @je_ecache_evict(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.c = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.b) #9
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %malloc_mutex_trylock_final.exit.i, label %bb.b

malloc_mutex_trylock_final.exit.i:                ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 64
  store atomic i8 1, ptr %i.d monotonic, align 1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %3) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %malloc_mutex_trylock_final.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !23
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24
  %.not.i.i = icmp eq ptr %i.i, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

end_hunk_0
