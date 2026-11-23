Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/base?download=true
inline.NumInlined: 139
inline.NumDeleted: 64
begin_hunk_0_@base_unmap:bb.a

.split54:                                         ; preds = %ehooks_decommit.exit.thread
  %i.bp = tail call zeroext i1 @je_ehooks_default_purge_forced_impl(ptr noundef %2, i64 noundef 0, i64 noundef %3) #10
  br i1 %i.bp, label %ehooks_purge_forced.exit.thread, label %ehooks_purge_lazy.exit

bb.u:                                             ; preds = %ehooks_decommit.exit.thread
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 48 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !80
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %ehooks_purge_forced.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bt = icmp eq ptr %0, null                    ; 2 uses
  br i1 %i.bt, label %bb.w, label %tsd_fetch_impl.exit.i.i34

bb.w:                                             ; preds = %bb.v
  %i.bu = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 920
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !21
  %.not.i.i.i40 = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i40, label %tsd_fetch_impl.exit.i.i34, label %bb.x, !prof !49

bb.x:                                             ; preds = %bb.w
  %i.bx = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.bu, i1 noundef zeroext false) #10
  br label %tsd_fetch_impl.exit.i.i34

tsd_fetch_impl.exit.i.i34:                        ; preds = %bb.x, %bb.w, %bb.v
  %i.by = phi ptr [ %i.bu, %bb.w ], [ %i.bx, %bb.x ], [ %0, %bb.v ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 920
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !21
  %i.cb = icmp eq i8 %i.ca, 0
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 1 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !21
  %i.ce = add i8 %i.cd, 1
  store i8 %i.ce, ptr %i.cc, align 1, !tbaa !21
  br i1 %i.cb, label %bb.y, label %ehooks_pre_reentrancy.exit.i35

bb.y:                                             ; preds = %tsd_fetch_impl.exit.i.i34
  tail call void @je_tsd_slow_update(ptr noundef nonnull %i.by) #10
  br label %ehooks_pre_reentrancy.exit.i35

ehooks_pre_reentrancy.exit.i35:                   ; preds = %bb.y, %tsd_fetch_impl.exit.i.i34
  %i.cf = load ptr, ptr %i.bq, align 8, !tbaa !80
  %.val.i36 = load i32, ptr %1, align 8, !tbaa !48
  %i.cg = tail call zeroext i1 %i.cf(ptr noundef %i.bn, ptr noundef %2, i64 noundef %3, i64 noundef 0, i64 noundef %3, i32 noundef %.val.i36) #10, !inline_history !76 ; 2 uses
  br i1 %i.bt, label %bb.z, label %tsd_fetch_impl.exit.i17.i37

bb.z:                                             ; preds = %ehooks_pre_reentrancy.exit.i35
  %i.ch = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 920
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !21
  %.not.i.i18.i39 = icmp eq i8 %i.cj, 0
  br i1 %.not.i.i18.i39, label %tsd_fetch_impl.exit.i17.i37, label %bb.aa, !prof !49

bb.aa:                                            ; preds = %bb.z
  %i.ck = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.ch, i1 noundef zeroext false) #10
  br label %tsd_fetch_impl.exit.i17.i37

tsd_fetch_impl.exit.i17.i37:                      ; preds = %bb.aa, %bb.z, %ehooks_pre_reentrancy.exit.i35
  %i.cl = phi ptr [ %i.ch, %bb.z ], [ %i.ck, %bb.aa ], [ %0, %ehooks_pre_reentrancy.exit.i35 ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 1 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !21
  %i.co = add i8 %i.cn, -1                        ; 2 uses
  store i8 %i.co, ptr %i.cm, align 1, !tbaa !21
  %i.cp = icmp eq i8 %i.co, 0
  br i1 %i.cp, label %.split55, label %ehooks_purge_forced.exit

.split55:                                         ; preds = %tsd_fetch_impl.exit.i17.i37
  tail call void @je_tsd_slow_update(ptr noundef nonnull %i.cl) #10
  br i1 %i.cg, label %ehooks_purge_forced.exit.thread, label %ehooks_purge_lazy.exit

ehooks_purge_forced.exit:                         ; preds = %tsd_fetch_impl.exit.i17.i37
  br i1 %i.cg, label %ehooks_purge_forced.exit.thread, label %ehooks_purge_lazy.exit

ehooks_purge_forced.exit.thread:                  ; preds = %bb.u, %.split55, %.split54, %ehooks_purge_forced.exit
  %i.cq = load atomic ptr, ptr %i.a acquire, align 8 ; 3 uses
  %i.cr = icmp eq ptr %i.cq, @je_ehooks_default_extent_hooks
  br i1 %i.cr, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %ehooks_purge_forced.exit.thread
  %i.cs = tail call zeroext i1 @je_ehooks_default_purge_lazy_impl(ptr noundef %2, i64 noundef 0, i64 noundef %3) #10 ; 0 uses
  br label %ehooks_purge_lazy.exit

bb.ac:                                            ; preds = %ehooks_purge_forced.exit.thread
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 40 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !81
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %ehooks_purge_lazy.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cw = icmp eq ptr %0, null                    ; 2 uses
  br i1 %i.cw, label %bb.ae, label %tsd_fetch_impl.exit.i.i41

bb.ae:                                            ; preds = %bb.ad
  %i.cx = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 920
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !21
  %.not.i.i.i47 = icmp eq i8 %i.cz, 0
  br i1 %.not.i.i.i47, label %tsd_fetch_impl.exit.i.i41, label %bb.af, !prof !49

bb.af:                                            ; preds = %bb.ae
  %i.da = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.cx, i1 noundef zeroext false) #10
  br label %tsd_fetch_impl.exit.i.i41

tsd_fetch_impl.exit.i.i41:                        ; preds = %bb.af, %bb.ae, %bb.ad
  %i.db = phi ptr [ %i.cx, %bb.ae ], [ %i.da, %bb.af ], [ %0, %bb.ad ] ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 920
  %i.dd = load i8, ptr %i.dc, align 8, !tbaa !21
  %i.de = icmp eq i8 %i.dd, 0
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 1 ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !21
  %i.dh = add i8 %i.dg, 1
  store i8 %i.dh, ptr %i.df, align 1, !tbaa !21
  br i1 %i.de, label %bb.ag, label %ehooks_pre_reentrancy.exit.i42

bb.ag:                                            ; preds = %tsd_fetch_impl.exit.i.i41
  tail call void @je_tsd_slow_update(ptr noundef nonnull %i.db) #10
  br label %ehooks_pre_reentrancy.exit.i42

ehooks_pre_reentrancy.exit.i42:                   ; preds = %bb.ag, %tsd_fetch_impl.exit.i.i41
  %i.di = load ptr, ptr %i.ct, align 8, !tbaa !81
  %.val.i43 = load i32, ptr %1, align 8, !tbaa !48
  %i.dj = tail call zeroext i1 %i.di(ptr noundef %i.cq, ptr noundef %2, i64 noundef %3, i64 noundef 0, i64 noundef %3, i32 noundef %.val.i43) #10, !inline_history !77 ; 0 uses
  br i1 %i.cw, label %bb.ah, label %tsd_fetch_impl.exit.i17.i44

bb.ah:                                            ; preds = %ehooks_pre_reentrancy.exit.i42
  %i.dk = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 920
  %i.dm = load i8, ptr %i.dl, align 8, !tbaa !21
  %.not.i.i18.i46 = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i18.i46, label %tsd_fetch_impl.exit.i17.i44, label %bb.ai, !prof !49

bb.ai:                                            ; preds = %bb.ah
  %i.dn = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.dk, i1 noundef zeroext false) #10
  br label %tsd_fetch_impl.exit.i17.i44

tsd_fetch_impl.exit.i17.i44:                      ; preds = %bb.ai, %bb.ah, %ehooks_pre_reentrancy.exit.i42
  %i.do = phi ptr [ %i.dk, %bb.ah ], [ %i.dn, %bb.ai ], [ %0, %ehooks_pre_reentrancy.exit.i42 ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 1 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !21
  %i.dr = add i8 %i.dq, -1                        ; 2 uses
  store i8 %i.dr, ptr %i.dp, align 1, !tbaa !21
  %i.ds = icmp eq i8 %i.dr, 0
  br i1 %i.ds, label %bb.aj, label %ehooks_purge_lazy.exit

bb.aj:                                            ; preds = %tsd_fetch_impl.exit.i17.i44
  tail call void @je_tsd_slow_update(ptr noundef nonnull %i.do) #10
  br label %ehooks_purge_lazy.exit

ehooks_purge_lazy.exit:                           ; preds = %bb.aj, %tsd_fetch_impl.exit.i17.i44, %bb.ac, %bb.ab, %.split55, %.split54, %.split52, %.split51, %.split49, %.split, %ehooks_purge_forced.exit, %ehooks_decommit.exit, %ehooks_dalloc.exit, %bb.e, %bb.d, %bb.c, %bb.b
  %i.dt = load i32, ptr @je_opt_metadata_thp, align 4, !tbaa !15
  %i.du = icmp ne i32 %i.dt, 0
  %i.dv = load i32, ptr @je_init_system_thp_mode, align 4
  %i.dw = icmp eq i32 %i.dv, 0
  %i.dx = select i1 %i.du, i1 %i.dw, i1 false
  br i1 %i.dx, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %ehooks_purge_lazy.exit
  %i.dy = tail call zeroext i1 @je_pages_nohuge(ptr noundef %2, i64 noundef %3) #10 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %ehooks_purge_lazy.exit
  ret void
}

declare void @je_edata_heap_new(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @je_edata_avail_new(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @base_extent_bump_alloc_post(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !21  ; 4 uses
  %.not = icmp eq i64 %.val, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %.val, 1                         ; 3 uses
  %i.c = icmp ult i64 %i.b, 4097
  br i1 %i.c, label %bb.c, label %bb.d, !prof !49

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i64 %.val, 8
  %i.e = lshr i64 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !21
  %i.h = zext i8 %i.g to i64
  br label %base_edata_heap_insert.exit

bb.d:                                             ; preds = %bb.b
  %i.i = icmp ugt i64 %i.b, 8070450532247928832
  br i1 %i.i, label %base_edata_heap_insert.exit, label %bb.e, !prof !47

bb.e:                                             ; preds = %bb.d
  %i.j = shl nuw i64 %i.b, 1
  %i.k = add i64 %i.j, -1
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 -1, -2305843009213693952) %i.k, i1 true) ; 2 uses
  %i.m = sub nuw nsw i64 60, %i.l
  %i.n = lshr i64 %.val, %i.m
  %i.o = and i64 %i.n, 3
  %i.p = shl nuw nsw i64 %i.l, 2
  %reass.sub = sub nsw i64 %i.o, %i.p
  %i.q = add nsw i64 %reass.sub, 229
  br label %base_edata_heap_insert.exit

base_edata_heap_insert.exit:                      ; preds = %bb.c, %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.h, %bb.c ], [ %i.q, %bb.e ], [ 232, %bb.d ]
  %i.r = add nuw nsw i64 %.0.i.i, 4294967295
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.t = and i64 %i.r, 4294967295
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.t
  tail call void @je_edata_heap_insert(ptr noundef nonnull %i.u, ptr noundef nonnull %1) #10
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3880
  tail call void @je_edata_avail_insert(ptr noundef nonnull %i.v, ptr noundef nonnull %1) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %base_edata_heap_insert.exit
  %.val19 = load i64, ptr %1, align 8, !tbaa !22
  %i.w = and i64 %.val19, 65536
  %.not1 = icmp eq i64 %i.w, 0
  br i1 %.not1, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 3896 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !35
  %i.z = add i64 %i.y, %4
  store i64 %i.z, ptr %i.x, align 8, !tbaa !35
  %i.aa = ptrtoint ptr %3 to i64                  ; 2 uses
  %i.ab = add i64 %4, %i.aa                       ; 2 uses
  %i.ac = add i64 %i.ab, 4095
  %i.ad = and i64 %i.ac, -4096
  %i.ae = sub i64 %i.aa, %2                       ; 2 uses
  %i.af = add i64 %i.ae, 4095
  %i.ag = and i64 %i.af, -4096
  %i.ah = sub i64 %i.ad, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 3920 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !36
  %i.ak = add i64 %i.ah, %i.aj
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !36
  %i.al = load i32, ptr @je_opt_metadata_thp, align 4, !tbaa !15 ; 2 uses
  %i.am = icmp ne i32 %i.al, 0
  %i.an = load i32, ptr @je_init_system_thp_mode, align 4
  %i.ao = icmp eq i32 %i.an, 0
  %i.ap = select i1 %i.am, i1 %i.ao, i1 false
  br i1 %i.ap, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.aq = icmp eq i32 %i.al, 2
  br i1 %i.aq, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !34, !range !51, !noundef !52
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.au = add i64 %i.ab, 2097151
  %i.av = add i64 %i.ae, 2097151
  %i.aw = and i64 %i.av, -2097152
  %i.ax = sub i64 %i.au, %i.aw
  %i.ay = lshr i64 %i.ax, 21
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 3936 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !38
  %i.bb = add i64 %i.ba, %i.ay
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !38
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.j, %bb.k, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_base_delete(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.c, %bb.a ], [ %i.e, %bb.b ]  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !53   ; 2 uses
  %i.f = load i64, ptr %.0, align 8, !tbaa !25
  tail call fastcc void @base_unmap(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %.0, i64 noundef %i.f)
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !82

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden nonnull ptr @je_base_ehooks_get_for_metadata(ptr nofree noundef readnone captures(ret: address, provenance) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef ptr @je_base_ehooks_get(ptr nofree noundef readnone returned captures(ret: address, provenance) %0) local_unnamed_addr #4 {
bb.a:
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define hidden ptr @je_base_extent_hooks_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load atomic ptr, ptr %i.a acquire, align 8
  %.val = load i32, ptr %0, align 8, !tbaa !48
  tail call void @je_ehooks_init(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %.val) #10
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @je_base_alloc(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc ptr @base_alloc_impl(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef null, ptr noundef null)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @base_alloc_impl(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5) unnamed_addr #1 {
bb.a:
  %i.a = add i64 %3, 15
  %i.b = and i64 %i.a, -16                        ; 4 uses
  %i.c = add i64 %i.b, -1                         ; 2 uses
  %i.d = add i64 %i.c, %2
  %i.e = sub i64 0, %i.b                          ; 2 uses
  %i.f = and i64 %i.d, %i.e                       ; 6 uses
  %i.g = add i64 %i.f, %i.b                       ; 2 uses
  %i.h = add i64 %i.g, -16                        ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.k = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.j) #10
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %malloc_mutex_trylock_final.exit.i, label %bb.b

malloc_mutex_trylock_final.exit.i:                ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96
  store atomic i8 1, ptr %i.l monotonic, align 1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.i) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %malloc_mutex_trylock_final.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !44
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %i.m, align 8, !tbaa !44
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !45
  %.not.i.i = icmp eq ptr %i.q, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.p, align 8, !tbaa !45
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !46
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.r, align 8, !tbaa !46
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.u = icmp ult i64 %i.h, 4097
  br i1 %i.u, label %bb.e, label %bb.f, !prof !49

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  %i.v = lshr exact i64 %i.h, 3
  %i.w = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !21
  %i.y = zext i8 %i.x to i32
  br label %sz_size2index.exit

bb.f:                                             ; preds = %malloc_mutex_lock.exit
  %i.z = icmp ugt i64 %i.h, 8070450532247928832
  br i1 %i.z, label %._crit_edge, label %bb.g, !prof !47

bb.g:                                             ; preds = %bb.f
  %i.aa = shl nuw i64 %i.h, 1
  %i.ab = add i64 %i.aa, -1
  %i.ac = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 -1, -2305843009213693952) %i.ab, i1 true) ; 2 uses
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = sub nuw nsw i64 60, %i.ac
  %i.af = add nsw i64 %i.g, -17
  %i.ag = lshr i64 %i.af, %i.ae
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = and i32 %i.ah, 3
  %i.aj = shl nuw nsw i32 %i.ad, 2
  %reass.sub = sub nsw i32 %i.ai, %i.aj
  %i.ak = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.g, %bb.e
  %.0.i = phi i32 [ %i.y, %bb.e ], [ %i.ak, %bb.g ] ; 2 uses
  %i.al = icmp samesign ult i32 %.0.i, 232
  br i1 %i.al, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %sz_size2index.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.an = zext nneg i32 %.0.i to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 232
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !83

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ %i.an, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %indvars.iv
  %i.ap = tail call ptr @je_edata_heap_remove_first(ptr noundef nonnull %i.ao) #10 ; 2 uses
  %.not = icmp eq ptr %i.ap, null
  br i1 %.not, label %bb.h, label %.loopexit

._crit_edge:                                      ; preds = %bb.h, %bb.f, %sz_size2index.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  store atomic i8 0, ptr %i.ar monotonic, align 8
  %i.as = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.j) #10 ; 0 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.av = tail call fastcc ptr @base_block_alloc(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.at, ptr noundef nonnull %i.au, i64 noundef %i.f, i64 noundef range(i64 0, -15) %i.b) ; 5 uses
  %i.aw = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.j) #10
  %.not.i.i42 = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i42, label %malloc_mutex_trylock_final.exit.i.i, label %bb.j

malloc_mutex_trylock_final.exit.i.i:              ; preds = %._crit_edge
  store atomic i8 1, ptr %i.ar monotonic, align 8
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.i) #10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %malloc_mutex_trylock_final.exit.i.i
  %i.ax = load i64, ptr %i.m, align 8, !tbaa !44
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %i.m, align 8, !tbaa !44
  %i.az = load ptr, ptr %i.p, align 8, !tbaa !45
  %.not.i.i.i = icmp eq ptr %i.az, %0
  br i1 %.not.i.i.i, label %malloc_mutex_lock.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %0, ptr %i.p, align 8, !tbaa !45
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !46
  %i.bc = add i64 %i.bb, 1
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !46
  br label %malloc_mutex_lock.exit.i

malloc_mutex_lock.exit.i:                         ; preds = %bb.l, %bb.k
  %i.bd = icmp eq ptr %i.av, null
  br i1 %i.bd, label %base_extent_alloc.exit, label %bb.m

bb.m:                                             ; preds = %malloc_mutex_lock.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !33
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !53
  store ptr %i.av, ptr %i.be, align 8, !tbaa !33
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 3896 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !35
  %i.bj = add i64 %i.bi, 144
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !35
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 3920 ; 2 uses
  %i.bl = load i64, ptr %i.av, align 8, !tbaa !25
  %i.bm = load <2 x i64>, ptr %i.bk, align 8, !tbaa !17
  %i.bn = insertelement <2 x i64> <i64 4096, i64 poison>, i64 %i.bl, i64 1
  %i.bo = add <2 x i64> %i.bm, %i.bn
  store <2 x i64> %i.bo, ptr %i.bk, align 8, !tbaa !17
  %i.bp = load i32, ptr @je_opt_metadata_thp, align 4, !tbaa !15 ; 2 uses
  %i.bq = icmp ne i32 %i.bp, 0
  %i.br = load i32, ptr @je_init_system_thp_mode, align 4
  %i.bs = icmp eq i32 %i.br, 0
  %i.bt = select i1 %i.bq, i1 %i.bs, i1 false
  br i1 %i.bt, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bu = icmp eq i32 %i.bp, 1
  br i1 %i.bu, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !34, !range !51, !noundef !52
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 3936 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !38
  %i.ca = add i64 %i.bz, 1
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !38
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.q
  %.2.ph = phi ptr [ %i.cb, %bb.q ], [ %i.ap, %bb.i ] ; 6 uses
  %i.cc = getelementptr i8, ptr %.2.ph, i64 8     ; 2 uses
  %.val19.i.i = load ptr, ptr %i.cc, align 8, !tbaa !20 ; 2 uses
  %i.cd = ptrtoint ptr %.val19.i.i to i64         ; 2 uses
  %i.ce = add i64 %i.c, %i.cd
  %i.cf = and i64 %i.ce, %i.e
  %i.cg = sub i64 %i.cf, %i.cd                    ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.val19.i.i, i64 %i.cg ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.f
  %i.cj = getelementptr i8, ptr %.2.ph, i64 16    ; 2 uses
  %.val.i.i = load i64, ptr %i.cj, align 8, !tbaa !21
  %i.ck = add i64 %i.f, %i.cg
  %i.cl = sub i64 %.val.i.i, %i.ck
  %.val21.i.i = load i64, ptr %.2.ph, align 8, !tbaa !22
  store ptr %i.ci, ptr %i.cc, align 8, !tbaa !20
  store i64 %i.cl, ptr %i.cj, align 8, !tbaa !21
  %i.cm = and i64 %.val21.i.i, -268369920
  %i.cn = or disjoint i64 %i.cm, 243314687
  store i64 %i.cn, ptr %.2.ph, align 8, !tbaa !22
  tail call fastcc void @base_extent_bump_alloc_post(ptr noundef nonnull %1, ptr noundef nonnull %.2.ph, i64 noundef %i.cg, ptr noundef %i.ch, i64 noundef %i.f)
  %.not40 = icmp eq ptr %4, null
  br i1 %.not40, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.loopexit
  %i.co = getelementptr i8, ptr %.2.ph, i64 32
  %.2.val = load i64, ptr %i.co, align 8, !tbaa !55
  store i64 %.2.val, ptr %4, align 8, !tbaa !17
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.loopexit
  %.not41 = icmp eq ptr %5, null
  br i1 %.not41, label %base_extent_alloc.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i64 %i.f, ptr %5, align 8, !tbaa !17
  br label %base_extent_alloc.exit

base_extent_alloc.exit:                           ; preds = %malloc_mutex_lock.exit.i, %bb.s, %bb.t
  %.0 = phi ptr [ %i.ch, %bb.s ], [ %i.ch, %bb.t ], [ null, %malloc_mutex_lock.exit.i ]
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 96
  store atomic i8 0, ptr %i.cp monotonic, align 8
  %i.cq = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.j) #10 ; 0 uses
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @je_base_alloc_edata(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.c = call fastcc ptr @base_alloc_impl(ptr noundef %0, ptr noundef %1, i64 noundef 128, i64 noundef 128, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.b, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 3904 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !56
  %i.h = add i64 %i.g, %i.e
  store i64 %i.h, ptr %i.f, align 8, !tbaa !56
  %i.i = load i64, ptr %i.a, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !21
  %i.l = and i64 %i.k, -4096
  %i.m = and i64 %i.i, 4095
  %i.n = or disjoint i64 %i.l, %i.m
  store i64 %i.n, ptr %i.j, align 8, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @je_base_alloc_rtree(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = call fastcc ptr @base_alloc_impl(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef 64, ptr noundef null, ptr noundef nonnull %i.a) ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

end_hunk_0
begin_hunk_1_@je_b0_alloc_tcache_stack:bb.a

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.l, align 8, !tbaa !45
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !46
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.n, align 8, !tbaa !46
  br label %malloc_mutex_lock.exit.i

malloc_mutex_lock.exit.i:                         ; preds = %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 3880 ; 3 uses
  %i.r = tail call ptr @je_edata_avail_first(ptr noundef nonnull %i.q) #10 ; 3 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.e, label %base_alloc_base_edata.exit.thread

base_alloc_base_edata.exit.thread:                ; preds = %malloc_mutex_lock.exit.i
  tail call void @je_edata_avail_remove(ptr noundef nonnull %i.q, ptr noundef nonnull %i.r) #10
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store atomic i8 0, ptr %i.s monotonic, align 8
  %i.t = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.e) #10 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %malloc_mutex_lock.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store atomic i8 0, ptr %i.u monotonic, align 8
  %i.v = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.e) #10 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.w = call fastcc ptr @base_alloc_impl(ptr noundef %0, ptr noundef nonnull %i.d, i64 noundef 128, i64 noundef 128, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %base_alloc_base_edata.exit.thread24, label %base_alloc_base_edata.exit

base_alloc_base_edata.exit.thread24:              ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.o

base_alloc_base_edata.exit:                       ; preds = %bb.e
  %i.y = load i64, ptr %i.b, align 8, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 3904 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !56
  %i.ab = add i64 %i.aa, %i.y
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !56
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !21
  %i.af = and i64 %i.ae, -4096
  %i.ag = and i64 %i.ac, 4095
  %i.ah = or disjoint i64 %i.af, %i.ag
  store i64 %i.ah, ptr %i.ad, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.f

bb.f:                                             ; preds = %base_alloc_base_edata.exit, %base_alloc_base_edata.exit.thread
  %.0.i1923 = phi ptr [ %i.r, %base_alloc_base_edata.exit.thread ], [ %i.w, %base_alloc_base_edata.exit ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.ai = add i64 %1, 16                          ; 5 uses
  %i.aj = icmp ult i64 %i.ai, 4097
  br i1 %i.aj, label %bb.g, label %bb.h, !prof !49

bb.g:                                             ; preds = %bb.f
  %i.ak = add nsw i64 %1, 23
  %i.al = lshr i64 %i.ak, 3
  %i.am = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !21
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !17
  br label %sz_s2u.exit

bb.h:                                             ; preds = %bb.f
  %i.ar = icmp ugt i64 %i.ai, 8070450532247928832
  br i1 %i.ar, label %sz_s2u.exit, label %bb.i, !prof !47

bb.i:                                             ; preds = %bb.h
  %i.as = icmp samesign ugt i64 %i.ai, 14336
  %i.at = load i8, ptr @je_opt_disable_large_size_classes, align 1, !range !51
  %i.au = trunc nuw i8 %i.at to i1
  %or.cond = select i1 %i.as, i1 %i.au, i1 false
  br i1 %or.cond, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = shl nuw i64 %i.ai, 1
  %i.aw = add i64 %i.av, -1
  %i.ax = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 -1, -2305843009213693952) %i.aw, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.ax
  %i.ay = lshr i64 1152921504606846975, %i.ax
  %i.az = add nuw nsw i64 %i.ai, %i.ay
  %i.ba = and i64 %i.az, %notmask.i
  br label %sz_s2u.exit

bb.k:                                             ; preds = %bb.i
  %i.bb = add nuw nsw i64 %1, 4111
  %i.bc = and i64 %i.bb, 9223372036854771712
  br label %sz_s2u.exit

sz_s2u.exit:                                      ; preds = %bb.k, %bb.j, %bb.h, %bb.g
  %.0.i = phi i64 [ %i.aq, %bb.g ], [ %i.ba, %bb.j ], [ %i.bc, %bb.k ], [ 0, %bb.h ] ; 2 uses
  %i.bd = call fastcc ptr @base_alloc_impl(ptr noundef %0, ptr noundef nonnull %i.d, i64 noundef %.0.i, i64 noundef 16, ptr noundef nonnull %i.c, ptr noundef null) ; 4 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %sz_s2u.exit
  call void @je_edata_avail_insert(ptr noundef nonnull %i.q, ptr noundef nonnull %.0.i1923) #10
  br label %bb.n

bb.m:                                             ; preds = %sz_s2u.exit
  %i.bf = load i64, ptr %i.c, align 8, !tbaa !17
  %i.bg = load i64, ptr %.0.i1923, align 8, !tbaa !22
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i1923, i64 8
  store ptr %i.bd, ptr %i.bh, align 8, !tbaa !20
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i1923, i64 16
  store i64 %.0.i, ptr %i.bi, align 8, !tbaa !21
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i1923, i64 32
  store i64 %i.bf, ptr %i.bj, align 8, !tbaa !55
  %i.bk = and i64 %i.bg, -268435456
  %i.bl = or disjoint i64 %i.bk, 243380223
  store i64 %i.bl, ptr %.0.i1923, align 8, !tbaa !22
  store ptr %.0.i1923, ptr %i.bd, align 8, !tbaa !58
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0 = phi ptr [ null, %bb.l ], [ %i.bm, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %bb.o

bb.o:                                             ; preds = %base_alloc_base_edata.exit.thread24, %bb.n
  %.1 = phi ptr [ %.0, %bb.n ], [ null, %base_alloc_base_edata.exit.thread24 ]
  ret ptr %.1
}

declare void @je_edata_avail_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @je_b0_dalloc_tcache_stack(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %.val11 = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.d = getelementptr i8, ptr %i.b, i64 16       ; 2 uses
  %.val = load i64, ptr %i.d, align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr align 1 %.val11, i8 0, i64 %.val, i1 false)
  %i.e = load ptr, ptr @b0, align 8, !tbaa !14    ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.g = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.f) #10
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %malloc_mutex_trylock_final.exit.i, label %bb.b

malloc_mutex_trylock_final.exit.i:                ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store atomic i8 1, ptr %i.h monotonic, align 1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.i) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %malloc_mutex_trylock_final.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !44
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !44
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !45
  %.not.i.i = icmp eq ptr %i.n, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.m, align 8, !tbaa !45
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !46
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.o, align 8, !tbaa !46
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %.val.i = load i64, ptr %i.d, align 8, !tbaa !21 ; 3 uses
  %i.r = add i64 %.val.i, 1                       ; 3 uses
  %i.s = icmp ult i64 %i.r, 4097
  br i1 %i.s, label %bb.e, label %bb.f, !prof !49

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  %i.t = add nsw i64 %.val.i, 8
  %i.u = lshr i64 %i.t, 3
  %i.v = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !21
  %i.x = zext i8 %i.w to i64
  br label %base_edata_heap_insert.exit

bb.f:                                             ; preds = %malloc_mutex_lock.exit
  %i.y = icmp ugt i64 %i.r, 8070450532247928832
  br i1 %i.y, label %base_edata_heap_insert.exit, label %bb.g, !prof !47

bb.g:                                             ; preds = %bb.f
  %i.z = shl nuw i64 %i.r, 1
  %i.aa = add i64 %i.z, -1
  %i.ab = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 -1, -2305843009213693952) %i.aa, i1 true) ; 2 uses
  %i.ac = sub nuw nsw i64 60, %i.ab
  %i.ad = lshr i64 %.val.i, %i.ac
  %i.ae = and i64 %i.ad, 3
  %i.af = shl nuw nsw i64 %i.ab, 2
  %reass.sub = sub nsw i64 %i.ae, %i.af
  %i.ag = add nsw i64 %reass.sub, 229
  br label %base_edata_heap_insert.exit

base_edata_heap_insert.exit:                      ; preds = %bb.e, %bb.f, %bb.g
  %.0.i.i = phi i64 [ %i.x, %bb.e ], [ %i.ag, %bb.g ], [ 232, %bb.f ]
  %i.ah = add nuw nsw i64 %.0.i.i, 4294967295
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.aj = and i64 %i.ah, 4294967295
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.aj
  tail call void @je_edata_heap_insert(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.b) #10
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store atomic i8 0, ptr %i.al monotonic, align 8
  %i.am = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.f) #10 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define hidden void @je_base_stats_get(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %5, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %6, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %7) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.b = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.a) #10
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %malloc_mutex_trylock_final.exit.i, label %bb.b

malloc_mutex_trylock_final.exit.i:                ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  store atomic i8 1, ptr %i.c monotonic, align 1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.d) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %malloc_mutex_trylock_final.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !44
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8, !tbaa !44
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !45
  %.not.i.i = icmp eq ptr %i.i, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.h, align 8, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !46
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !46
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 3896
  %i.n = load i64, ptr %i.m, align 8, !tbaa !35
  store i64 %i.n, ptr %2, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 3904
  %i.p = load i64, ptr %i.o, align 8, !tbaa !56
  store i64 %i.p, ptr %3, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 3912
  %i.r = load i64, ptr %i.q, align 8, !tbaa !57
  store i64 %i.r, ptr %4, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 3920
  %i.t = load i64, ptr %i.s, align 8, !tbaa !36
  store i64 %i.t, ptr %5, align 8, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 3928
  %i.v = load i64, ptr %i.u, align 8, !tbaa !37
  store i64 %i.v, ptr %6, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 3936
  %i.x = load i64, ptr %i.w, align 8, !tbaa !38
  store i64 %i.x, ptr %7, align 8, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 96
  store atomic i8 0, ptr %i.y monotonic, align 8
  %i.z = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #10 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_base_prefork(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @je_malloc_mutex_prefork(ptr noundef %0, ptr noundef nonnull %i.a) #10
  ret void
}

declare void @je_malloc_mutex_prefork(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @je_base_postfork_parent(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @je_malloc_mutex_postfork_parent(ptr noundef %0, ptr noundef nonnull %i.a) #10
  ret void
}

declare void @je_malloc_mutex_postfork_parent(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @je_base_postfork_child(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @je_malloc_mutex_postfork_child(ptr noundef %0, ptr noundef nonnull %i.a) #10
  ret void
}

declare void @je_malloc_mutex_postfork_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_base_boot(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @je_base_new(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @je_ehooks_default_extent_hooks, i1 noundef zeroext true) ; 2 uses
  store ptr %i.a, ptr @b0, align 8, !tbaa !14
  %i.b = icmp eq ptr %i.a, null
  ret i1 %i.b
}

declare zeroext i1 @je_pages_huge(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #7

declare ptr @je_extent_alloc_mmap(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @je_ehooks_default_alloc_impl(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @je_tsd_fetch_slow(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #7

declare void @je_tsd_slow_update(ptr noundef) local_unnamed_addr #3

declare zeroext i1 @je_extent_dalloc_mmap(ptr noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @je_pages_decommit(ptr noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @je_pages_purge_forced(ptr noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @je_pages_purge_lazy(ptr noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @je_pages_nohuge(ptr noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @je_ehooks_default_dalloc_impl(ptr noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @je_ehooks_default_decommit_impl(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @je_ehooks_default_purge_forced_impl(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @je_ehooks_default_purge_lazy_impl(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @je_malloc_mutex_lock_slow(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_trylock(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #8

declare ptr @je_edata_heap_remove_first(ptr noundef) local_unnamed_addr #3

declare ptr @je_edata_avail_first(ptr noundef) local_unnamed_addr #3

declare void @je_edata_avail_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @je_edata_heap_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
end_hunk_1
