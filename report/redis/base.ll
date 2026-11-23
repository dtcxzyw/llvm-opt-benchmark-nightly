Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/base?download=true
inline.NumInlined: 107
inline.NumDeleted: 56
begin_hunk_0_@base_unmap:bb.a
  %i.bo = icmp eq ptr %i.bn, @je_ehooks_default_extent_hooks
  br i1 %i.bo, label %.split54, label %bb.u

.split54:                                         ; preds = %ehooks_decommit.exit.thread
  %i.bp = tail call zeroext i1 @je_ehooks_default_purge_forced_impl(ptr noundef %2, i64 noundef 0, i64 noundef %3) #9
  br i1 %i.bp, label %ehooks_purge_forced.exit.thread, label %ehooks_purge_lazy.exit

bb.u:                                             ; preds = %ehooks_decommit.exit.thread
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 48 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !77
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %ehooks_purge_forced.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bt = icmp eq ptr %0, null                    ; 2 uses
  br i1 %i.bt, label %bb.w, label %tsd_fetch_impl.exit.i.i34

bb.w:                                             ; preds = %bb.v
  %i.bu = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 832
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !26
  %.not.i.i.i40 = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i40, label %tsd_fetch_impl.exit.i.i34, label %bb.x, !prof !45

bb.x:                                             ; preds = %bb.w
  %i.bx = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.bu, i1 noundef zeroext false) #9
  br label %tsd_fetch_impl.exit.i.i34

tsd_fetch_impl.exit.i.i34:                        ; preds = %bb.x, %bb.w, %bb.v
  %i.by = phi ptr [ %i.bu, %bb.w ], [ %i.bx, %bb.x ], [ %0, %bb.v ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 832
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !26
  %i.cb = icmp eq i8 %i.ca, 0
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 1 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !26
  %i.ce = add i8 %i.cd, 1
  store i8 %i.ce, ptr %i.cc, align 1, !tbaa !26
  br i1 %i.cb, label %bb.y, label %ehooks_pre_reentrancy.exit.i35

bb.y:                                             ; preds = %tsd_fetch_impl.exit.i.i34
  tail call void @je_tsd_slow_update(ptr noundef nonnull %i.by) #9
  br label %ehooks_pre_reentrancy.exit.i35

ehooks_pre_reentrancy.exit.i35:                   ; preds = %bb.y, %tsd_fetch_impl.exit.i.i34
  %i.cf = load ptr, ptr %i.bq, align 8, !tbaa !77
  %.val.i36 = load i32, ptr %1, align 8, !tbaa !44
  %i.cg = tail call zeroext i1 %i.cf(ptr noundef %i.bn, ptr noundef %2, i64 noundef %3, i64 noundef 0, i64 noundef %3, i32 noundef %.val.i36) #9, !inline_history !72 ; 2 uses
  br i1 %i.bt, label %bb.z, label %tsd_fetch_impl.exit.i17.i37

bb.z:                                             ; preds = %ehooks_pre_reentrancy.exit.i35
  %i.ch = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 832
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !26
  %.not.i.i18.i39 = icmp eq i8 %i.cj, 0
  br i1 %.not.i.i18.i39, label %tsd_fetch_impl.exit.i17.i37, label %bb.aa, !prof !45

bb.aa:                                            ; preds = %bb.z
  %i.ck = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.ch, i1 noundef zeroext false) #9
  br label %tsd_fetch_impl.exit.i17.i37

tsd_fetch_impl.exit.i17.i37:                      ; preds = %bb.aa, %bb.z, %ehooks_pre_reentrancy.exit.i35
  %i.cl = phi ptr [ %i.ch, %bb.z ], [ %i.ck, %bb.aa ], [ %0, %ehooks_pre_reentrancy.exit.i35 ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 1 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !26
  %i.co = add i8 %i.cn, -1                        ; 2 uses
  store i8 %i.co, ptr %i.cm, align 1, !tbaa !26
  %i.cp = icmp eq i8 %i.co, 0
  br i1 %i.cp, label %.split55, label %ehooks_purge_forced.exit

.split55:                                         ; preds = %tsd_fetch_impl.exit.i17.i37
  tail call void @je_tsd_slow_update(ptr noundef nonnull %i.cl) #9
  br i1 %i.cg, label %ehooks_purge_forced.exit.thread, label %ehooks_purge_lazy.exit

ehooks_purge_forced.exit:                         ; preds = %tsd_fetch_impl.exit.i17.i37
  br i1 %i.cg, label %ehooks_purge_forced.exit.thread, label %ehooks_purge_lazy.exit

ehooks_purge_forced.exit.thread:                  ; preds = %bb.u, %.split55, %.split54, %ehooks_purge_forced.exit
  %i.cq = load atomic ptr, ptr %i.a acquire, align 8 ; 3 uses
  %i.cr = icmp eq ptr %i.cq, @je_ehooks_default_extent_hooks
  br i1 %i.cr, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %ehooks_purge_forced.exit.thread
  %i.cs = tail call zeroext i1 @je_ehooks_default_purge_lazy_impl(ptr noundef %2, i64 noundef 0, i64 noundef %3) #9 ; 0 uses
  br label %ehooks_purge_lazy.exit

bb.ac:                                            ; preds = %ehooks_purge_forced.exit.thread
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 40 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !78
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %ehooks_purge_lazy.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cw = icmp eq ptr %0, null                    ; 2 uses
  br i1 %i.cw, label %bb.ae, label %tsd_fetch_impl.exit.i.i41

bb.ae:                                            ; preds = %bb.ad
  %i.cx = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 832
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !26
  %.not.i.i.i47 = icmp eq i8 %i.cz, 0
  br i1 %.not.i.i.i47, label %tsd_fetch_impl.exit.i.i41, label %bb.af, !prof !45

bb.af:                                            ; preds = %bb.ae
  %i.da = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.cx, i1 noundef zeroext false) #9
  br label %tsd_fetch_impl.exit.i.i41

tsd_fetch_impl.exit.i.i41:                        ; preds = %bb.af, %bb.ae, %bb.ad
  %i.db = phi ptr [ %i.cx, %bb.ae ], [ %i.da, %bb.af ], [ %0, %bb.ad ] ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 832
  %i.dd = load i8, ptr %i.dc, align 8, !tbaa !26
  %i.de = icmp eq i8 %i.dd, 0
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 1 ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !26
  %i.dh = add i8 %i.dg, 1
  store i8 %i.dh, ptr %i.df, align 1, !tbaa !26
  br i1 %i.de, label %bb.ag, label %ehooks_pre_reentrancy.exit.i42

bb.ag:                                            ; preds = %tsd_fetch_impl.exit.i.i41
  tail call void @je_tsd_slow_update(ptr noundef nonnull %i.db) #9
  br label %ehooks_pre_reentrancy.exit.i42

ehooks_pre_reentrancy.exit.i42:                   ; preds = %bb.ag, %tsd_fetch_impl.exit.i.i41
  %i.di = load ptr, ptr %i.ct, align 8, !tbaa !78
  %.val.i43 = load i32, ptr %1, align 8, !tbaa !44
  %i.dj = tail call zeroext i1 %i.di(ptr noundef %i.cq, ptr noundef %2, i64 noundef %3, i64 noundef 0, i64 noundef %3, i32 noundef %.val.i43) #9, !inline_history !73 ; 0 uses
  br i1 %i.cw, label %bb.ah, label %tsd_fetch_impl.exit.i17.i44

bb.ah:                                            ; preds = %ehooks_pre_reentrancy.exit.i42
  %i.dk = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 832
  %i.dm = load i8, ptr %i.dl, align 8, !tbaa !26
  %.not.i.i18.i46 = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i18.i46, label %tsd_fetch_impl.exit.i17.i44, label %bb.ai, !prof !45

bb.ai:                                            ; preds = %bb.ah
  %i.dn = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.dk, i1 noundef zeroext false) #9
  br label %tsd_fetch_impl.exit.i17.i44

tsd_fetch_impl.exit.i17.i44:                      ; preds = %bb.ai, %bb.ah, %ehooks_pre_reentrancy.exit.i42
  %i.do = phi ptr [ %i.dk, %bb.ah ], [ %i.dn, %bb.ai ], [ %0, %ehooks_pre_reentrancy.exit.i42 ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 1 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !26
  %i.dr = add i8 %i.dq, -1                        ; 2 uses
  store i8 %i.dr, ptr %i.dp, align 1, !tbaa !26
  %i.ds = icmp eq i8 %i.dr, 0
  br i1 %i.ds, label %bb.aj, label %ehooks_purge_lazy.exit

bb.aj:                                            ; preds = %tsd_fetch_impl.exit.i17.i44
  tail call void @je_tsd_slow_update(ptr noundef nonnull %i.do) #9
  br label %ehooks_purge_lazy.exit

ehooks_purge_lazy.exit:                           ; preds = %bb.aj, %tsd_fetch_impl.exit.i17.i44, %bb.ac, %bb.ab, %.split55, %.split54, %.split52, %.split51, %.split49, %.split, %ehooks_purge_forced.exit, %ehooks_decommit.exit, %ehooks_dalloc.exit, %bb.e, %bb.d, %bb.c, %bb.b
  %i.dt = load i32, ptr @je_opt_metadata_thp, align 4, !tbaa !10
  %i.du = icmp ne i32 %i.dt, 0
  %i.dv = load i32, ptr @je_init_system_thp_mode, align 4
  %i.dw = icmp eq i32 %i.dv, 0
  %i.dx = select i1 %i.du, i1 %i.dw, i1 false
  br i1 %i.dx, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %ehooks_purge_lazy.exit
  %i.dy = tail call zeroext i1 @je_pages_nohuge(ptr noundef %2, i64 noundef %3) #9 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %ehooks_purge_lazy.exit
  ret void
}

declare void @je_edata_heap_new(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define internal fastcc void @base_extent_bump_alloc_post(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #1 !guid !79 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %.val17 = load i64, ptr %i.a, align 8, !tbaa !26 ; 4 uses
  %.not = icmp eq i64 %.val17, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %.val17, 1                       ; 3 uses
  %i.c = icmp ult i64 %i.b, 4097
  br i1 %i.c, label %bb.c, label %bb.d, !prof !45

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i64 %.val17, 8
  %i.e = lshr i64 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !26
  %i.h = zext i8 %i.g to i64
  br label %sz_size2index.exit

bb.d:                                             ; preds = %bb.b
  %i.i = icmp ugt i64 %i.b, 8070450532247928832
  br i1 %i.i, label %sz_size2index.exit, label %bb.e, !prof !43

bb.e:                                             ; preds = %bb.d
  %i.j = shl nuw i64 %i.b, 1
  %i.k = add i64 %i.j, -1
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 -1, -2305843009213693952) %i.k, i1 true) ; 2 uses
  %i.m = sub nuw nsw i64 60, %i.l
  %i.n = lshr i64 %.val17, %i.m
  %i.o = and i64 %i.n, 3
  %i.p = shl nuw nsw i64 %i.l, 2
  %reass.sub = sub nsw i64 %i.o, %i.p
  %i.q = add nsw i64 %reass.sub, 232
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.e, %bb.d, %bb.c
  %.0.i = phi i64 [ %i.h, %bb.c ], [ %i.q, %bb.e ], [ 235, %bb.d ]
  %i.r = add nuw nsw i64 %.0.i, 4294967295
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.t = and i64 %i.r, 4294967295
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.t
  tail call void @je_edata_heap_insert(ptr noundef nonnull %i.u, ptr noundef nonnull %1) #9
  br label %bb.f

bb.f:                                             ; preds = %sz_size2index.exit, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3928 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !38
  %i.x = add i64 %i.w, %4
  store i64 %i.x, ptr %i.v, align 8, !tbaa !38
  %i.y = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.z = add i64 %4, %i.y                         ; 2 uses
  %i.aa = add i64 %i.z, 4095
  %i.ab = and i64 %i.aa, -4096
  %i.ac = sub i64 %i.y, %2                        ; 2 uses
  %i.ad = add i64 %i.ac, 4095
  %i.ae = and i64 %i.ad, -4096
  %i.af = sub i64 %i.ab, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 3936 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !39
  %i.ai = add i64 %i.af, %i.ah
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !39
  %i.aj = load i32, ptr @je_opt_metadata_thp, align 4, !tbaa !10 ; 2 uses
  %i.ak = icmp ne i32 %i.aj, 0
  %i.al = load i32, ptr @je_init_system_thp_mode, align 4
  %i.am = icmp eq i32 %i.al, 0
  %i.an = select i1 %i.ak, i1 %i.am, i1 false
  br i1 %i.an, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ao = icmp eq i32 %i.aj, 2
  br i1 %i.ao, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !37, !range !54, !noundef !55
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.as = add i64 %i.z, 2097151
  %i.at = add i64 %i.ac, 2097151
  %i.au = and i64 %i.at, -2097152
  %i.av = sub i64 %i.as, %i.au
  %i.aw = lshr i64 %i.av, 21
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 3952 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !41
  %i.az = add i64 %i.ay, %i.aw
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !41
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_base_delete(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 !guid !81 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.c, %bb.a ], [ %i.e, %bb.b ]  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !56   ; 2 uses
  %i.f = load i64, ptr %.0, align 8, !tbaa !30
  tail call fastcc void @base_unmap(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %.0, i64 noundef %i.f)
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !80

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden nonnull ptr @je_base_ehooks_get_for_metadata(ptr nofree noundef readnone captures(ret: address, provenance) %0) local_unnamed_addr #4 !guid !82 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef ptr @je_base_ehooks_get(ptr nofree noundef readnone returned captures(ret: address, provenance) %0) local_unnamed_addr #4 !guid !83 {
bb.a:
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define hidden ptr @je_base_extent_hooks_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 !guid !84 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load atomic ptr, ptr %i.a acquire, align 8
  %.val = load i32, ptr %0, align 8, !tbaa !44
  tail call void @je_ehooks_init(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %.val) #9
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @je_base_alloc(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 !guid !85 {
bb.a:
  %i.a = tail call fastcc ptr @base_alloc_impl(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef null)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @base_alloc_impl(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) unnamed_addr #1 !guid !87 {
bb.a:
  %i.a = add i64 %3, 7
  %i.b = and i64 %i.a, -8                         ; 4 uses
  %i.c = add i64 %i.b, -1                         ; 2 uses
  %i.d = add i64 %i.c, %2
  %i.e = sub i64 0, %i.b                          ; 2 uses
  %i.f = and i64 %i.d, %i.e                       ; 5 uses
  %i.g = add i64 %i.f, %i.b                       ; 2 uses
  %i.h = add i64 %i.g, -8                         ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  %i.k = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.j) #9
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.i) #9
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 136
  store atomic i8 1, ptr %i.l monotonic, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !51
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %i.m, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !52
  %.not.i.i = icmp eq ptr %i.q, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.p, align 8, !tbaa !52
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !53
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.r, align 8, !tbaa !53
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.u = icmp ult i64 %i.h, 4097
  br i1 %i.u, label %bb.e, label %bb.f, !prof !45

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  %i.v = lshr exact i64 %i.h, 3
  %i.w = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !26
  %i.y = zext i8 %i.x to i32
  br label %sz_size2index.exit

bb.f:                                             ; preds = %malloc_mutex_lock.exit
  %i.z = icmp ugt i64 %i.h, 8070450532247928832
  br i1 %i.z, label %._crit_edge, label %bb.g, !prof !43

bb.g:                                             ; preds = %bb.f
  %i.aa = shl nuw i64 %i.h, 1
  %i.ab = add i64 %i.aa, -1
  %i.ac = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 -1, -2305843009213693952) %i.ab, i1 true) ; 2 uses
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = sub nuw nsw i64 60, %i.ac
  %i.af = add nsw i64 %i.g, -9
  %i.ag = lshr i64 %i.af, %i.ae
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = and i32 %i.ah, 3
  %i.aj = shl nuw nsw i32 %i.ad, 2
  %reass.sub = sub nsw i32 %i.ai, %i.aj
  %i.ak = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.g, %bb.e
  %.0.i = phi i32 [ %i.y, %bb.e ], [ %i.ak, %bb.g ] ; 2 uses
  %i.al = icmp samesign ult i32 %.0.i, 235
  br i1 %i.al, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %sz_size2index.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.an = zext nneg i32 %.0.i to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 235
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !86

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ %i.an, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %indvars.iv
  %i.ap = tail call ptr @je_edata_heap_remove_first(ptr noundef nonnull %i.ao) #9 ; 2 uses
  %.not = icmp eq ptr %i.ap, null
  br i1 %.not, label %bb.h, label %.loopexit

._crit_edge:                                      ; preds = %bb.h, %bb.f, %sz_size2index.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  store atomic i8 0, ptr %i.ar monotonic, align 8
  %i.as = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.j) #9 ; 0 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.av = tail call fastcc ptr @base_block_alloc(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.at, ptr noundef nonnull %i.au, i64 noundef %i.f, i64 noundef range(i64 0, -7) %i.b) ; 5 uses
  %i.aw = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.j) #9
  %.not.i.i37 = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i37, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.i) #9
  store atomic i8 1, ptr %i.ar monotonic, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %i.ax = load i64, ptr %i.m, align 8, !tbaa !51
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %i.m, align 8, !tbaa !51
  %i.az = load ptr, ptr %i.p, align 8, !tbaa !52
  %.not.i.i.i = icmp eq ptr %i.az, %0
  br i1 %.not.i.i.i, label %malloc_mutex_lock.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %0, ptr %i.p, align 8, !tbaa !52
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !53
  %i.bc = add i64 %i.bb, 1
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !53
  br label %malloc_mutex_lock.exit.i

malloc_mutex_lock.exit.i:                         ; preds = %bb.l, %bb.k
  %i.bd = icmp eq ptr %i.av, null
  br i1 %i.bd, label %base_extent_alloc.exit, label %bb.m

bb.m:                                             ; preds = %malloc_mutex_lock.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !36
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !56
  store ptr %i.av, ptr %i.be, align 8, !tbaa !36
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 3928 ; 2 uses
  %i.bi = load <2 x i64>, ptr %i.bh, align 8, !tbaa !22
  %i.bj = add <2 x i64> %i.bi, <i64 144, i64 4096>
  store <2 x i64> %i.bj, ptr %i.bh, align 8, !tbaa !22
  %i.bk = load i64, ptr %i.av, align 8, !tbaa !30
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 3944 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !40
  %i.bn = add i64 %i.bm, %i.bk
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !40
  %i.bo = load i32, ptr @je_opt_metadata_thp, align 4, !tbaa !10 ; 2 uses
  %i.bp = icmp ne i32 %i.bo, 0
  %i.bq = load i32, ptr @je_init_system_thp_mode, align 4
  %i.br = icmp eq i32 %i.bq, 0
  %i.bs = select i1 %i.bp, i1 %i.br, i1 false
  br i1 %i.bs, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bt = icmp eq i32 %i.bo, 1
  br i1 %i.bt, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !37, !range !54, !noundef !55
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 3952 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !41
  %i.bz = add i64 %i.by, 1
  store i64 %i.bz, ptr %i.bx, align 8, !tbaa !41
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.q
  %.2.ph = phi ptr [ %i.ca, %bb.q ], [ %i.ap, %bb.i ] ; 6 uses
  %i.cb = getelementptr i8, ptr %.2.ph, i64 8     ; 2 uses
  %.val18.i.i = load ptr, ptr %i.cb, align 8, !tbaa !25
  %i.cc = ptrtoint ptr %.val18.i.i to i64         ; 2 uses
  %i.cd = add i64 %i.c, %i.cc
  %i.ce = and i64 %i.cd, %i.e                     ; 3 uses
  %i.cf = sub i64 %i.ce, %i.cc                    ; 2 uses
  %i.cg = inttoptr i64 %i.ce to ptr               ; 3 uses
  %i.ch = add i64 %i.ce, %i.f
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = getelementptr i8, ptr %.2.ph, i64 16    ; 2 uses
  %.val.i.i = load i64, ptr %i.cj, align 8, !tbaa !26
  %i.ck = add i64 %i.f, %i.cf
  %i.cl = sub i64 %.val.i.i, %i.ck
  %i.cm = load i64, ptr %.2.ph, align 8, !tbaa !27
  store ptr %i.ci, ptr %i.cb, align 8, !tbaa !25
  store i64 %i.cl, ptr %i.cj, align 8, !tbaa !26
  %i.cn = and i64 %i.cm, -268435456
  %i.co = or disjoint i64 %i.cn, 246460415
  store i64 %i.co, ptr %.2.ph, align 8, !tbaa !27
  tail call fastcc void @base_extent_bump_alloc_post(ptr noundef nonnull %1, ptr noundef nonnull %.2.ph, i64 noundef %i.cf, ptr noundef %i.cg, i64 noundef %i.f)
  %.not35 = icmp eq ptr %4, null
  br i1 %.not35, label %base_extent_alloc.exit, label %bb.r

bb.r:                                             ; preds = %.loopexit
  %i.cp = getelementptr i8, ptr %.2.ph, i64 32
  %.2.val = load i64, ptr %i.cp, align 8, !tbaa !57
  store i64 %.2.val, ptr %4, align 8, !tbaa !22
  br label %base_extent_alloc.exit

base_extent_alloc.exit:                           ; preds = %malloc_mutex_lock.exit.i, %.loopexit, %bb.r
  %.0 = phi ptr [ %i.cg, %.loopexit ], [ %i.cg, %bb.r ], [ null, %malloc_mutex_lock.exit.i ]
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 136
  store atomic i8 0, ptr %i.cq monotonic, align 8
  %i.cr = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.j) #9 ; 0 uses
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @je_base_alloc_edata(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 !guid !88 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = call fastcc ptr @base_alloc_impl(ptr noundef %0, ptr noundef %1, i64 noundef 128, i64 noundef 128, ptr noundef nonnull %i.a) ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !26
  %i.g = and i64 %i.f, -4096
  %i.h = and i64 %i.d, 4095
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.e, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define hidden void @je_base_stats_get(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %5) local_unnamed_addr #1 !guid !89 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.b = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.a) #9
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.c) #9
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 136
  store atomic i8 1, ptr %i.d monotonic, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !51
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8, !tbaa !51
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52
  %.not.i.i = icmp eq ptr %i.i, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.h, align 8, !tbaa !52
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
end_hunk_0
