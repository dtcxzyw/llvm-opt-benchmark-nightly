inline.NumInlined: 852
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@je_ctl_byname:bb.a
  br i1 %i.d, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i64 7, ptr %i.a, align 8, !tbaa !11
  %i.e = call fastcc i32 @ctl_lookup(ptr noundef %0, ptr noundef nonnull @super_root_node, ptr noundef %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %.not12 = icmp eq ptr %i.f, null
  br i1 %.not12, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16   ; 2 uses
  %.not13 = icmp eq ptr %i.h, null
  br i1 %.not13, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = load i64, ptr %i.a, align 8, !tbaa !11
  %i.j = call i32 %i.h(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef %i.i, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.f, %bb.c
  %.0 = phi i32 [ %i.e, %bb.c ], [ %i.j, %bb.f ], [ 11, %bb.b ], [ 2, %bb.e ], [ 2, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @ctl_init(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64)) #15
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @ctl_mtx) #15
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 104) monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !22
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !22
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !27
  %.not.i.i = icmp eq ptr %i.d, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !27
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 40), align 8, !tbaa !28
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 40), align 8, !tbaa !28
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %.b = load i1, ptr @ctl_initialized, align 1
  br i1 %.b, label %arenas_i_impl.exit.thread34, label %bb.e

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  %i.g = load ptr, ptr @ctl_arenas, align 8, !tbaa !29 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = tail call ptr @je_b0get() #15
  %i.j = tail call ptr @je_base_alloc(ptr noundef %0, ptr noundef %i.i, i64 noundef 32800, i64 noundef 8) #15 ; 3 uses
  store ptr %i.j, ptr @ctl_arenas, align 8, !tbaa !29
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %arenas_i_impl.exit.thread34, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = phi ptr [ %i.j, %bb.f ], [ %i.g, %bb.e ]
  %i.m = load ptr, ptr @ctl_stats, align 8, !tbaa !31
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = tail call ptr @je_b0get() #15
  %i.p = tail call ptr @je_base_alloc(ptr noundef %0, ptr noundef %i.o, i64 noundef 720, i64 noundef 8) #15 ; 2 uses
  store ptr %i.p, ptr @ctl_stats, align 8, !tbaa !31
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %arenas_i_impl.exit.thread34, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h
  %.pre = load ptr, ptr @ctl_arenas, align 8, !tbaa !29
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.g
  %i.r = phi ptr [ %.pre, %._crit_edge ], [ %i.l, %bb.g ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !33   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.v = tail call ptr @je_b0get() #15
  %i.w = tail call ptr @je_base_alloc(ptr noundef %0, ptr noundef %i.v, i64 noundef 38288, i64 noundef 8) #15 ; 6 uses
  %.not.i21 = icmp eq ptr %i.w, null
  br i1 %.not.i21, label %arenas_i_impl.exit.thread34, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  store ptr %i.x, ptr %i.y, align 8, !tbaa !35
  store i32 4096, ptr %i.w, align 8, !tbaa !39
  %i.z = load ptr, ptr @ctl_arenas, align 8, !tbaa !29 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr %i.w, ptr %i.aa, align 8, !tbaa !33
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k
  %i.ab = phi ptr [ %i.z, %bb.k ], [ %i.r, %bb.i ]
  %.119.i.ph = phi ptr [ %i.w, %bb.k ], [ %i.t, %bb.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.119.i.ph, i64 4
  store i8 1, ptr %i.ac, align 4, !tbaa !40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !33 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.m, label %._crit_edge40

._crit_edge40:                                    ; preds = %bb.l
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  %.pre41 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !35
  br label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ag = tail call ptr @je_b0get() #15
  %i.ah = tail call ptr @je_base_alloc(ptr noundef %0, ptr noundef %i.ag, i64 noundef 38288, i64 noundef 8) #15 ; 6 uses
  %.not.i23 = icmp eq ptr %i.ah, null
  br i1 %.not.i23, label %arenas_i_impl.exit.thread34, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 88 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !35
  store i32 4097, ptr %i.ah, align 8, !tbaa !39
  %i.ak = load ptr, ptr @ctl_arenas, align 8, !tbaa !29
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store ptr %i.ah, ptr %i.al, align 8, !tbaa !33
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge40, %bb.n
  %i.am = phi ptr [ %i.ai, %bb.n ], [ %.pre41, %._crit_edge40 ]
  %.119.i22.ph = phi ptr [ %i.ah, %bb.n ], [ %i.ae, %._crit_edge40 ] ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.119.i22.ph, i64 24
  store i32 0, ptr %i.an, align 8, !tbaa !41
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @je_dss_prec_names, i64 24), align 8, !tbaa !42
  %i.ap = getelementptr inbounds nuw i8, ptr %.119.i22.ph, i64 32
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !43
  %i.aq = getelementptr inbounds nuw i8, ptr %.119.i22.ph, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %.119.i22.ph, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 -1, i64 16, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %.119.i22.ph, i64 80 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10368) %i.am, i8 0, i64 10368, i1 false)
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !35
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 10368
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5664) %i.au, i8 0, i64 5664, i1 false)
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !35
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9408) %i.aw, i8 0, i64 9408, i1 false)
  %i.ax = load ptr, ptr %i.as, align 8, !tbaa !35
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 25440
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9552) %i.ay, i8 0, i64 9552, i1 false)
  %i.az = load ptr, ptr %i.as, align 8, !tbaa !35
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 34992
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(3200) %i.ba, i8 0, i64 3200, i1 false)
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !35
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 38192
  store i64 0, ptr %i.bc, align 8
  %i.bd = tail call i32 @je_narenas_total_get() #15 ; 2 uses
  %i.be = load ptr, ptr @ctl_arenas, align 8, !tbaa !29 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i32 %i.bd, ptr %i.bf, align 8, !tbaa !44
  %.not = icmp eq i32 %i.bd, 0
  br i1 %.not, label %arenas_i_impl.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o, %bb.v
  %i.bg = phi ptr [ %i.bv, %bb.v ], [ %i.be, %bb.o ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.v ], [ 0, %bb.o ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = trunc nuw i64 %indvars.iv to i32        ; 3 uses
  switch i32 %i.bi, label %bb.q [
    i32 4096, label %arenas_i2a_impl.exit.i
    i32 4097, label %bb.p
  ]

bb.p:                                             ; preds = %.lr.ph
  br label %arenas_i2a_impl.exit.i

bb.q:                                             ; preds = %.lr.ph
  %i.bj = add nuw nsw i64 %indvars.iv, 2
  br label %arenas_i2a_impl.exit.i

arenas_i2a_impl.exit.i:                           ; preds = %bb.q, %bb.p, %.lr.ph
  %.0.i.i = phi i64 [ 0, %.lr.ph ], [ 1, %bb.p ], [ %i.bj, %bb.q ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.0.i.i
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !33
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.r, label %bb.v

bb.r:                                             ; preds = %arenas_i2a_impl.exit.i
  %i.bn = tail call ptr @je_b0get() #15
  %i.bo = tail call ptr @je_base_alloc(ptr noundef %0, ptr noundef %i.bn, i64 noundef 38288, i64 noundef 8) #15 ; 5 uses
  %.not.i26 = icmp eq ptr %i.bo, null
  br i1 %.not.i26, label %arenas_i_impl.exit.thread34, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 88
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 80
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !35
  store i32 %i.bi, ptr %i.bo, align 8, !tbaa !39
  %i.br = load ptr, ptr @ctl_arenas, align 8, !tbaa !29 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  switch i32 %i.bi, label %bb.u [
    i32 4096, label %arenas_i2a_impl.exit23.i
    i32 4097, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  br label %arenas_i2a_impl.exit23.i

bb.u:                                             ; preds = %bb.s
  %i.bt = add nuw nsw i64 %indvars.iv, 2
  br label %arenas_i2a_impl.exit23.i

arenas_i2a_impl.exit23.i:                         ; preds = %bb.u, %bb.t, %bb.s
  %.0.i22.i = phi i64 [ 0, %bb.s ], [ 1, %bb.t ], [ %i.bt, %bb.u ]
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.0.i22.i
  store ptr %i.bo, ptr %i.bu, align 8, !tbaa !33
  br label %bb.v

bb.v:                                             ; preds = %arenas_i2a_impl.exit.i, %arenas_i2a_impl.exit23.i
  %i.bv = phi ptr [ %i.bg, %arenas_i2a_impl.exit.i ], [ %i.br, %arenas_i2a_impl.exit23.i ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !44
  %i.by = zext i32 %i.bx to i64
  %i.bz = icmp samesign ult i64 %indvars.iv.next, %i.by
  br i1 %i.bz, label %.lr.ph, label %arenas_i_impl.exit, !llvm.loop !47

arenas_i_impl.exit:                               ; preds = %bb.v, %bb.o
  %.lcssa = phi ptr [ %i.be, %bb.o ], [ %i.bv, %bb.v ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  store ptr null, ptr %i.ca, align 8, !tbaa !49
  tail call fastcc void @ctl_refresh(ptr noundef %0)
  store i1 true, ptr @ctl_initialized, align 1
  br label %arenas_i_impl.exit.thread34

arenas_i_impl.exit.thread34:                      ; preds = %bb.r, %bb.j, %bb.m, %bb.h, %bb.f, %malloc_mutex_lock.exit, %arenas_i_impl.exit
  %.1 = phi i1 [ false, %malloc_mutex_lock.exit ], [ false, %arenas_i_impl.exit ], [ true, %bb.f ], [ true, %bb.h ], [ true, %bb.m ], [ true, %bb.j ], [ true, %bb.r ]
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 104) monotonic, align 8
  %i.cb = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64)) #15 ; 0 uses
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 3) i32 @ctl_lookup(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr noundef %4, ptr nofree noundef captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 46) #16 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %strchr = getelementptr inbounds i8, ptr %2, i64 %strlen
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = phi ptr [ %strchr, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %2 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.thread93, label %.preheader100

.preheader100:                                    ; preds = %bb.c
  %i.g = load i64, ptr %5, align 8, !tbaa !11
  %.not122 = icmp eq i64 %i.g, 0
  br i1 %.not122, label %.loopexit101, label %.lr.ph121

.lr.ph121:                                        ; preds = %.preheader100, %bb.n
  %.061120 = phi ptr [ %.5, %bb.n ], [ %1, %.preheader100 ] ; 3 uses
  %.065119 = phi i64 [ %i.aq, %bb.n ], [ 0, %.preheader100 ] ; 4 uses
  %.066118 = phi i64 [ %i.ap, %bb.n ], [ %i.e, %.preheader100 ] ; 2 uses
  %.067117 = phi ptr [ %i.am, %bb.n ], [ %i.b, %.preheader100 ] ; 2 uses
  %.068116 = phi ptr [ %i.ak, %bb.n ], [ %2, %.preheader100 ] ; 2 uses
  %i.h = getelementptr i8, ptr %.061120, i64 24   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50   ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !51, !range !52, !noundef !53
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %.preheader, label %bb.f

.preheader:                                       ; preds = %.lr.ph121
  %i.l = getelementptr inbounds nuw i8, ptr %.061120, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !54   ; 2 uses
  %.not123 = icmp eq i64 %i.m, 0
  br i1 %.not123, label %.thread93, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %.064115 = phi i64 [ %i.u, %bb.e ], [ 0, %.preheader ] ; 3 uses
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %.064115 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !55   ; 2 uses
  %i.q = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #16
  %i.r = icmp eq i64 %i.q, %.066118
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.s = tail call i32 @strncmp(ptr noundef nonnull %.068116, ptr noundef nonnull %i.p, i64 noundef %.066118) #16
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.u = add nuw i64 %.064115, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.m
  br i1 %exitcond.not, label %.thread93, label %.lr.ph, !llvm.loop !56

.loopexit:                                        ; preds = %bb.d
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.065119
  store i64 %.064115, ptr %i.v, align 8, !tbaa !11
  %.not99 = icmp eq ptr %i.n, %.061120
  br i1 %.not99, label %.thread93, label %bb.i

bb.f:                                             ; preds = %.lr.ph121
  %i.w = tail call i64 @je_malloc_strtoumax(ptr noundef nonnull %.068116, ptr noundef null, i32 noundef 10) #15 ; 3 uses
  %i.x = icmp eq i64 %i.w, -1
  br i1 %i.x, label %.thread93, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !50
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !57
  %i.ab = load i64, ptr %5, align 8, !tbaa !11
  %i.ac = tail call ptr %i.aa(ptr noundef %0, ptr noundef %4, i64 noundef %i.ab, i64 noundef %i.w) #15 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.thread93, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.065119
  store i64 %i.w, ptr %i.ae, align 8, !tbaa !11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit
  %.5 = phi ptr [ %i.n, %.loopexit ], [ %i.ac, %bb.h ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.5, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !16
  %.not83 = icmp eq ptr %i.ag, null
  %i.ah = load i8, ptr %.067117, align 1, !tbaa !59
  %i.ai = icmp eq i8 %i.ah, 0                     ; 2 uses
  br i1 %.not83, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %i.ai, label %.thread96, label %bb.l

bb.k:                                             ; preds = %bb.i
  br i1 %i.ai, label %.thread96, label %.thread93

.thread96:                                        ; preds = %bb.j, %bb.k
  %i.aj = add i64 %.065119, 1
  store i64 %i.aj, ptr %5, align 8, !tbaa !11
  br label %.loopexit101

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %.067117, i64 1 ; 5 uses
  %i.al = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ak, i32 noundef 46) #16 ; 2 uses
  %.not84 = icmp eq ptr %i.al, null
  br i1 %.not84, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %strlen85 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.ak)
  %strchr86 = getelementptr inbounds i8, ptr %i.ak, i64 %strlen85
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.am = phi ptr [ %strchr86, %bb.m ], [ %i.al, %bb.l ] ; 2 uses
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = add nuw i64 %.065119, 1                 ; 2 uses
  %i.ar = load i64, ptr %5, align 8, !tbaa !11
  %i.as = icmp ult i64 %i.aq, %i.ar
  br i1 %i.as, label %.lr.ph121, label %.loopexit101, !llvm.loop !60

.loopexit101:                                     ; preds = %bb.n, %.preheader100, %.thread96
  %.6 = phi ptr [ %.5, %.thread96 ], [ %1, %.preheader100 ], [ %.5, %bb.n ]
  %.not88 = icmp eq ptr %3, null
  br i1 %.not88, label %.thread93, label %bb.o

bb.o:                                             ; preds = %.loopexit101
  store ptr %.6, ptr %3, align 8, !tbaa !13
  br label %.thread93

.thread93:                                        ; preds = %.preheader, %bb.g, %bb.f, %.loopexit, %bb.e, %bb.c, %bb.k, %bb.o, %.loopexit101
  %.074 = phi i32 [ 0, %.loopexit101 ], [ 0, %bb.o ], [ 2, %bb.c ], [ 2, %bb.k ], [ 2, %bb.e ], [ 2, %.loopexit ], [ 2, %bb.f ], [ 2, %bb.g ], [ 2, %.preheader ]
  ret i32 %.074
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 12) i32 @je_ctl_nametomib(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @ctl_initialized, align 1
  br i1 %.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc zeroext i1 @ctl_init(ptr noundef %0)
  br i1 %i.a, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call fastcc i32 @ctl_lookup(ptr noundef %0, ptr noundef nonnull @super_root_node, ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ %i.b, %bb.c ], [ 11, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @je_ctl_bymib(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @ctl_initialized, align 1
  br i1 %.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc zeroext i1 @ctl_init(ptr noundef %0)
end_hunk_0
begin_hunk_1_@je_ctl_bymibname:bb.a
  br i1 %exitcond.not.i, label %bb.h, label %.lr.ph.i, !llvm.loop !62

bb.h:                                             ; preds = %bb.g
  store ptr %.125.i, ptr %i.a, align 8, !tbaa !13
  %i.p = icmp eq ptr %.125.i, null
  br i1 %i.p, label %ctl_lookupbymib.exit.thread, label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h
  %.024.lcssa.i34 = phi ptr [ @super_root_node, %.thread ], [ %.125.i, %bb.h ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.024.lcssa.i34, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !16
  %.not27 = icmp eq ptr %i.r, null
  br i1 %.not27, label %bb.j, label %ctl_lookupbymib.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.s = load i64, ptr %4, align 8, !tbaa !11
  %i.t = sub i64 %i.s, %2
  store i64 %i.t, ptr %4, align 8, !tbaa !11
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  %i.v = call fastcc i32 @ctl_lookup(ptr noundef %0, ptr noundef nonnull %.024.lcssa.i34, ptr noundef %3, ptr noundef nonnull %i.a, ptr noundef %i.u, ptr noundef nonnull %4) ; 2 uses
  %i.w = load i64, ptr %4, align 8, !tbaa !11
  %i.x = add i64 %i.w, %2                         ; 2 uses
  store i64 %i.x, ptr %4, align 8, !tbaa !11
  %.not28 = icmp eq i32 %i.v, 0
  br i1 %.not28, label %bb.k, label %ctl_lookupbymib.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %.not29 = icmp eq ptr %i.y, null
  br i1 %.not29, label %ctl_lookupbymib.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !16  ; 2 uses
  %.not30 = icmp eq ptr %i.aa, null
  br i1 %.not30, label %ctl_lookupbymib.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = call i32 %i.aa(ptr noundef %0, ptr noundef %1, i64 noundef %i.x, ptr noundef %5, ptr noundef %6, ptr noundef %7, i64 noundef %8) #15
  br label %ctl_lookupbymib.exit.thread

ctl_lookupbymib.exit.thread:                      ; preds = %bb.d, %bb.f, %bb.k, %bb.l, %bb.h, %bb.i, %bb.b, %bb.m, %bb.j
  %.0 = phi i32 [ 2, %bb.k ], [ 11, %bb.b ], [ %i.v, %bb.j ], [ %i.ab, %bb.m ], [ 2, %bb.h ], [ 2, %bb.i ], [ 2, %bb.l ], [ 2, %bb.f ], [ 2, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_ctl_boot() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @je_malloc_mutex_init(ptr noundef nonnull @ctl_mtx, ptr noundef nonnull @.str, i32 noundef 2, i32 noundef 0) #15 ; 2 uses
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i1 false, ptr @ctl_initialized, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.a
}

declare zeroext i1 @je_malloc_mutex_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @je_ctl_prefork(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @je_malloc_mutex_prefork(ptr noundef %0, ptr noundef nonnull @ctl_mtx) #15
  ret void
}

declare void @je_malloc_mutex_prefork(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @je_ctl_postfork_parent(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @je_malloc_mutex_postfork_parent(ptr noundef %0, ptr noundef nonnull @ctl_mtx) #15
  ret void
}

declare void @je_malloc_mutex_postfork_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @je_ctl_postfork_child(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @je_malloc_mutex_postfork_child(ptr noundef %0, ptr noundef nonnull @ctl_mtx) #15
  ret void
}

declare void @je_malloc_mutex_postfork_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @je_ctl_mtx_assert_held(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #3 {
bb.a:
  ret void
}

declare ptr @je_base_alloc(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @je_b0get() local_unnamed_addr #2

declare i32 @je_narenas_total_get() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ctl_refresh(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 832 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !59
  %.not.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i, label %arenas_i.exit, label %bb.b, !prof !63

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false) #15 ; 0 uses
  br label %arenas_i.exit

arenas_i.exit:                                    ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr @ctl_arenas, align 8, !tbaa !29 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !44
  %i.j = zext i32 %i.i to i64
  %i.k = alloca ptr, i64 %i.j, align 16           ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i32 0, ptr %i.l, align 8, !tbaa !41
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @je_dss_prec_names, i64 24), align 8, !tbaa !42
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.m, ptr %i.n, align 8, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 -1, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10368) %i.r, i8 0, i64 10368, i1 false)
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !35
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 10368
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5664) %i.t, i8 0, i64 5664, i1 false)
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9408) %i.v, i8 0, i64 9408, i1 false)
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 25440
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9552) %i.x, i8 0, i64 9552, i1 false)
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !35
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 34992
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(3200) %i.z, i8 0, i64 3200, i1 false)
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 38192
  store i64 0, ptr %i.ab, align 8
  %i.ac = load i32, ptr %i.h, align 8, !tbaa !44
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %._crit_edge, label %arena_get.exit

.preheader:                                       ; preds = %arena_get.exit
  %i.ad = icmp eq i32 %i.aj, 0
  br i1 %i.ad, label %._crit_edge, label %.lr.ph

arena_get.exit:                                   ; preds = %arenas_i.exit, %arena_get.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %arena_get.exit ], [ 0, %arenas_i.exit ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %indvars.iv
  %i.af = load atomic ptr, ptr %i.ae acquire, align 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !64
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = load ptr, ptr @ctl_arenas, align 8, !tbaa !29 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !44 ; 2 uses
  %i.ak = zext i32 %i.aj to i64
  %i.al = icmp samesign ult i64 %indvars.iv.next, %i.ak
  br i1 %i.al, label %arena_get.exit, label %.preheader, !llvm.loop !66

.lr.ph:                                           ; preds = %.preheader, %bb.g
  %i.am = phi ptr [ %i.bd, %bb.g ], [ %i.ah, %.preheader ]
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %bb.g ], [ 0, %.preheader ] ; 5 uses
  %i.an = load i8, ptr %i.b, align 8, !tbaa !59
  %.not.i.i31 = icmp eq i8 %i.an, 0
  br i1 %.not.i.i31, label %tsd_fetch_impl.exit.i, label %bb.c, !prof !63

bb.c:                                             ; preds = %.lr.ph
  %i.ao = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false) #15 ; 0 uses
  %.pre = load ptr, ptr @ctl_arenas, align 8, !tbaa !29
  br label %tsd_fetch_impl.exit.i

tsd_fetch_impl.exit.i:                            ; preds = %bb.c, %.lr.ph
  %i.ap = phi ptr [ %.pre, %bb.c ], [ %i.am, %.lr.ph ] ; 3 uses
  %i.aq = trunc nuw i64 %indvars.iv38 to i32      ; 2 uses
  switch i32 %i.aq, label %bb.e [
    i32 4096, label %arenas_i.exit32
    i32 4097, label %bb.d
  ]

bb.d:                                             ; preds = %tsd_fetch_impl.exit.i
  br label %arenas_i.exit32

bb.e:                                             ; preds = %tsd_fetch_impl.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !44
  %i.at = zext i32 %i.as to i64
  %i.au = icmp eq i64 %indvars.iv38, %i.at
  %1 = add nuw nsw i64 %indvars.iv38, 2
  %spec.select = select i1 %i.au, i64 0, i64 %1
  br label %arenas_i.exit32

arenas_i.exit32:                                  ; preds = %bb.e, %tsd_fetch_impl.exit.i, %bb.d
  %.0.i.i.i = phi i64 [ 0, %tsd_fetch_impl.exit.i ], [ %spec.select, %bb.e ], [ 1, %bb.d ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.0.i.i.i
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !33
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv38
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !64 ; 2 uses
  %i.ba = icmp ne ptr %i.az, null                 ; 2 uses
  %i.bb = zext i1 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store i8 %i.bb, ptr %i.bc, align 4, !tbaa !40
  br i1 %i.ba, label %bb.f, label %bb.g

bb.f:                                             ; preds = %arenas_i.exit32
  tail call fastcc void @ctl_arena_refresh(ptr noundef %0, ptr noundef nonnull %i.az, ptr noundef %i.g, i32 noundef %i.aq, i1 noundef zeroext false)
  %.pre41 = load ptr, ptr @ctl_arenas, align 8, !tbaa !29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %arenas_i.exit32
  %i.bd = phi ptr [ %.pre41, %bb.f ], [ %i.ap, %arenas_i.exit32 ] ; 2 uses
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !44
  %i.bg = zext i32 %i.bf to i64
  %i.bh = icmp samesign ult i64 %indvars.iv.next39, %i.bg
  br i1 %i.bh, label %.lr.ph, label %._crit_edge, !llvm.loop !67

._crit_edge:                                      ; preds = %bb.g, %arenas_i.exit, %.preheader
  %i.bi = load ptr, ptr %i.q, align 8, !tbaa !35  ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 10368
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !68
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !79
  %i.bn = add i64 %i.bm, %i.bk
  %i.bo = load ptr, ptr @ctl_stats, align 8, !tbaa !31 ; 9 uses
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !80
  %i.bp = load i64, ptr %i.p, align 8, !tbaa !83
  %i.bq = shl i64 %i.bp, 12
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !84
  %i.bs = load i64, ptr %i.bi, align 8, !tbaa !85
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bu = load atomic i64, ptr %i.bt monotonic, align 8
  %i.bv = add i64 %i.bu, %i.bs
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !86
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bz = load <2 x i64>, ptr %i.bx, align 8, !tbaa !11
  %i.ca = shufflevector <2 x i64> %i.bz, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.ca, ptr %i.by, align 8, !tbaa !11
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !87
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !88
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bi, i64 144
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !89
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !90
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bo, i64 56 ; 2 uses
  %i.ci = tail call zeroext i1 @je_background_thread_stats_read(ptr noundef %0, ptr noundef nonnull %i.ch) #15
  br i1 %i.ci, label %bb.h, label %ctl_background_thread_stats_read.exit

bb.h:                                             ; preds = %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ch, i8 0, i64 88, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  tail call void @je_nstime_copy(ptr noundef nonnull %i.cj, ptr noundef nonnull @nstime_zero) #15
  br label %ctl_background_thread_stats_read.exit

ctl_background_thread_stats_read.exit:            ; preds = %._crit_edge, %bb.h
  %i.ck = load ptr, ptr @ctl_stats, align 8, !tbaa !31 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 208
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bo, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cl, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.cm, i64 64, i1 false), !tbaa.struct !91
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 244
  store atomic i32 0, ptr %i.cn monotonic, align 4
  %i.co = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 64)) #15
  %.not.i = icmp eq i32 %i.co, 0
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %ctl_background_thread_stats_read.exit
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @je_background_thread_lock) #15
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 104) monotonic, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %ctl_background_thread_stats_read.exit
  %i.cp = load i64, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 56), align 8, !tbaa !22
  %i.cq = add i64 %i.cp, 1
  store i64 %i.cq, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 56), align 8, !tbaa !22
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 48), align 8, !tbaa !27
  %.not.i.i33 = icmp eq ptr %i.cr, %0
  br i1 %.not.i.i33, label %malloc_mutex_lock.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 48), align 8, !tbaa !27
  %i.cs = load i64, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 40), align 8, !tbaa !28
  %i.ct = add i64 %i.cs, 1
  store i64 %i.ct, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 40), align 8, !tbaa !28
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.j, %bb.k
  %i.cu = load ptr, ptr @ctl_stats, align 8, !tbaa !31 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cv, ptr noundef nonnull readonly align 8 dereferenceable(64) @je_background_thread_lock, i64 64, i1 false), !tbaa.struct !91
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 180
  store atomic i32 0, ptr %i.cw monotonic, align 4
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 104) monotonic, align 8
  %i.cx = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 64)) #15 ; 0 uses
  %i.cy = load ptr, ptr @ctl_stats, align 8, !tbaa !31 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cz, ptr noundef nonnull readonly align 8 dereferenceable(64) @ctl_mtx, i64 64, i1 false), !tbaa.struct !91
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 308
  store atomic i32 0, ptr %i.da monotonic, align 4
  %i.db = load ptr, ptr @ctl_arenas, align 8, !tbaa !29 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !93
  %i.dd = add i64 %i.dc, 1
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !93
  ret void
}

declare void @je_malloc_mutex_lock_slow(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_trylock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #6

; Function Attrs: nounwind uwtable
define internal fastcc void @ctl_arena_refresh(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 832
  %i.c = load i8, ptr %i.b, align 8, !tbaa !59
  %.not.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i, label %tsd_fetch_impl.exit.i, label %bb.b, !prof !63

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false) #15 ; 0 uses
  br label %tsd_fetch_impl.exit.i

tsd_fetch_impl.exit.i:                            ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr @ctl_arenas, align 8, !tbaa !29 ; 2 uses
  switch i32 %3, label %bb.d [
    i32 4096, label %arenas_i.exit
    i32 4097, label %bb.c
  ]

bb.c:                                             ; preds = %tsd_fetch_impl.exit.i
  br label %arenas_i.exit

bb.d:                                             ; preds = %tsd_fetch_impl.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !44
  %i.h = icmp eq i32 %3, %i.g
  br i1 %i.h, label %arenas_i.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = add i32 %3, 2
  %i.j = zext i32 %i.i to i64
  br label %arenas_i.exit

arenas_i.exit:                                    ; preds = %tsd_fetch_impl.exit.i, %bb.c, %bb.d, %bb.e
  %.0.i.i.i = phi i64 [ 0, %tsd_fetch_impl.exit.i ], [ 0, %bb.d ], [ %i.j, %bb.e ], [ 1, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.0.i.i.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !33   ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  store i32 0, ptr %i.n, align 8, !tbaa !41
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @je_dss_prec_names, i64 24), align 8, !tbaa !42
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !43
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 56 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 -1, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 80 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10368) %i.t, i8 0, i64 10368, i1 false)
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 10368
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5664) %i.v, i8 0, i64 5664, i1 false)
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9408) %i.x, i8 0, i64 9408, i1 false)
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !35
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 25440
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9552) %i.z, i8 0, i64 9552, i1 false)
  %i.aa = load ptr, ptr %i.s, align 8, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 34992
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(3200) %i.ab, i8 0, i64 3200, i1 false)
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 38192
  store i64 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 72 ; 2 uses
  %i.ah = load ptr, ptr %i.s, align 8, !tbaa !35  ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 10416
end_hunk_1
begin_hunk_2_@arena_i_extent_hooks_ctl:bb.a
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %bb.e, %malloc_mutex_lock.exit
  %.5 = phi i32 [ 14, %malloc_mutex_lock.exit ], [ 14, %bb.e ], [ %.5.ph, %.sink.split ]
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 104) monotonic, align 8
  %i.ai = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64)) #15 ; 0 uses
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 23) i32 @arena_i_retain_grow_limit_ctl(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef readonly captures(address_is_null) %5, i64 noundef %6) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = load i8, ptr @je_opt_retain, align 1, !tbaa !115, !range !52, !noundef !53
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64)) #15
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @ctl_mtx) #15
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 104) monotonic, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !22
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !22
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !27
  %.not.i.i = icmp eq ptr %i.h, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !27
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 40), align 8, !tbaa !28
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 40), align 8, !tbaa !28
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.d, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !11   ; 3 uses
  %i.m = icmp ugt i64 %i.l, 4294967295
  br i1 %i.m, label %arena_get.exit.thread, label %bb.f

bb.f:                                             ; preds = %malloc_mutex_lock.exit
  %i.n = trunc nuw i64 %i.l to i32
  %i.o = tail call i32 @je_narenas_total_get() #15
  %i.p = icmp ugt i32 %i.o, %i.n
  br i1 %i.p, label %bb.g, label %arena_get.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.l
  %i.r = load atomic ptr, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %arena_get.exit.thread, label %arena_get.exit, !prof !158

arena_get.exit:                                   ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %.not40 = icmp eq ptr %5, null
  br i1 %.not40, label %bb.j, label %bb.h

bb.h:                                             ; preds = %arena_get.exit
  %.not41 = icmp eq i64 %6, 8
  br i1 %.not41, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.t = load i64, ptr %5, align 8, !tbaa !11
  store i64 %i.t, ptr %i.b, align 8, !tbaa !11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %arena_get.exit
  %. = phi ptr [ %i.b, %bb.i ], [ null, %arena_get.exit ]
  %i.u = call zeroext i1 @je_arena_retain_grow_limit_get_set(ptr noundef %0, ptr noundef nonnull %i.r, ptr noundef nonnull %i.a, ptr noundef %.) #15
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = icmp ne ptr %3, null
  %i.w = icmp ne ptr %4, null
  %or.cond = and i1 %i.v, %i.w
  br i1 %or.cond, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.x = load i64, ptr %4, align 8, !tbaa !11     ; 2 uses
  %.not42 = icmp eq i64 %i.x, 8
  br i1 %.not42, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %spec.select = call i64 @llvm.umin.i64(i64 %i.x, i64 8) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 8 %i.a, i64 %spec.select, i1 false)
  store i64 %spec.select, ptr %4, align 8, !tbaa !11
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.y = load i64, ptr %i.a, align 8, !tbaa !11
  store i64 %i.y, ptr %3, align 8, !tbaa !11
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.j, %bb.k, %bb.n, %bb.h
  %.2 = phi i32 [ 22, %bb.h ], [ 22, %bb.m ], [ 0, %bb.k ], [ 0, %bb.n ], [ 14, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %arena_get.exit.thread

arena_get.exit.thread:                            ; preds = %bb.g, %bb.f, %bb.o, %malloc_mutex_lock.exit
  %.3 = phi i32 [ %.2, %bb.o ], [ 14, %malloc_mutex_lock.exit ], [ 14, %bb.f ], [ 14, %bb.g ]
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 104) monotonic, align 8
  %i.z = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64)) #15 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %arena_get.exit.thread
  %.032 = phi i32 [ %.3, %arena_get.exit.thread ], [ 2, %bb.a ]
  ret i32 %.032
}

; Function Attrs: nounwind uwtable
define internal fastcc void @arena_i_decay(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64)) #15
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @ctl_mtx) #15
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 104) monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !22
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !22
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !27
  %.not.i.i = icmp eq ptr %i.d, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !27
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 40), align 8, !tbaa !28
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 40), align 8, !tbaa !28
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.g = load ptr, ptr @ctl_arenas, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !44   ; 4 uses
  %i.j = icmp eq i32 %1, 4096
  %i.k = icmp eq i32 %1, %i.i
  %or.cond = select i1 %i.j, i1 true, i1 %i.k
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  %i.l = zext i32 %i.i to i64                     ; 4 uses
  %i.m = tail call ptr @llvm.stacksave.p0()
  %i.n = alloca ptr, i64 %i.l, align 16           ; 6 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %._crit_edge.thread, label %arena_get.exit.preheader

arena_get.exit.preheader:                         ; preds = %bb.e
  %xtraiter = and i64 %i.l, 3                     ; 3 uses
  %i.o = icmp ult i32 %i.i, 4
  br i1 %i.o, label %arena_get.exit.epil.preheader, label %arena_get.exit.preheader.new

arena_get.exit.preheader.new:                     ; preds = %arena_get.exit.preheader
  %unroll_iter = and i64 %i.l, 4294967292
  br label %arena_get.exit

._crit_edge.thread:                               ; preds = %bb.e
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 104) monotonic, align 8
  %i.p = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64)) #15 ; 0 uses
  br label %._crit_edge38

arena_get.exit:                                   ; preds = %arena_get.exit, %arena_get.exit.preheader.new
  %indvars.iv = phi i64 [ 0, %arena_get.exit.preheader.new ], [ %indvars.iv.next.3, %arena_get.exit ] ; 6 uses
  %niter = phi i64 [ 0, %arena_get.exit.preheader.new ], [ %niter.next.3, %arena_get.exit ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %indvars.iv
  %i.r = load atomic ptr, ptr %i.q acquire, align 8
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  store ptr %i.r, ptr %i.s, align 16, !tbaa !64
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %indvars.iv.next
  %i.u = load atomic ptr, ptr %i.t acquire, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next
  store ptr %i.u, ptr %i.v, align 8, !tbaa !64
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %indvars.iv.next.1
  %i.x = load atomic ptr, ptr %i.w acquire, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.1
  store ptr %i.x, ptr %i.y, align 16, !tbaa !64
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %indvars.iv.next.2
  %i.aa = load atomic ptr, ptr %i.z acquire, align 8
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.2
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !64
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.preheader.unr-lcssa, label %arena_get.exit, !llvm.loop !190

.lr.ph.preheader.unr-lcssa:                       ; preds = %arena_get.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader, label %arena_get.exit.epil.preheader

arena_get.exit.epil.preheader:                    ; preds = %.lr.ph.preheader.unr-lcssa, %arena_get.exit.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %arena_get.exit.preheader ], [ %indvars.iv.next.3, %.lr.ph.preheader.unr-lcssa ]
  %lcmp.mod49 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod49)
  br label %arena_get.exit.epil

arena_get.exit.epil:                              ; preds = %arena_get.exit.epil, %arena_get.exit.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %arena_get.exit.epil ], [ %indvars.iv.epil.init, %arena_get.exit.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %arena_get.exit.epil ], [ 0, %arena_get.exit.epil.preheader ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %indvars.iv.epil
  %i.ad = load atomic ptr, ptr %i.ac acquire, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.epil
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !64
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.preheader, label %arena_get.exit.epil, !llvm.loop !191

.lr.ph.preheader:                                 ; preds = %arena_get.exit.epil, %.lr.ph.preheader.unr-lcssa
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 104) monotonic, align 8
  %i.af = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64)) #15 ; 0 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv41 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next42, %bb.g ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv41
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !64 ; 2 uses
  %.not30 = icmp eq ptr %i.ah, null
  br i1 %.not30, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  tail call void @je_arena_decay(ptr noundef %0, ptr noundef nonnull %i.ah, i1 noundef zeroext false, i1 noundef zeroext %2) #15
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %i.l
  br i1 %exitcond45.not, label %._crit_edge38, label %.lr.ph, !llvm.loop !193

._crit_edge38:                                    ; preds = %bb.g, %._crit_edge.thread
  call void @llvm.stackrestore.p0(ptr %i.m)
  br label %arena_get.exit32.thread

bb.h:                                             ; preds = %malloc_mutex_lock.exit
  %i.ai = zext i32 %1 to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.ai
  %i.ak = load atomic ptr, ptr %i.aj acquire, align 8 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 104) monotonic, align 8
  %i.am = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64)) #15 ; 0 uses
  br i1 %i.al, label %arena_get.exit32.thread, label %bb.i, !prof !158

bb.i:                                             ; preds = %bb.h
  tail call void @je_arena_decay(ptr noundef %0, ptr noundef nonnull %i.ak, i1 noundef zeroext false, i1 noundef zeroext %2) #15
  br label %arena_get.exit32.thread

arena_get.exit32.thread:                          ; preds = %bb.h, %bb.i, %._crit_edge38
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @arena_reset_prepare_background_thread(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 64)) #15
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @je_background_thread_lock) #15
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 104) monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 56), align 8, !tbaa !22
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 56), align 8, !tbaa !22
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 48), align 8, !tbaa !27
  %.not.i.i = icmp eq ptr %i.d, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 48), align 8, !tbaa !27
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 40), align 8, !tbaa !28
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 40), align 8, !tbaa !28
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.g = load atomic i8, ptr @je_background_thread_enabled_state monotonic, align 1, !range !52, !noundef !53
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.i

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  %i.i = zext i32 %1 to i64
  %i.j = load ptr, ptr @je_background_thread_info, align 8, !tbaa !179
  %i.k = load i64, ptr @je_max_background_threads, align 8, !tbaa !11
  %i.l = urem i64 %i.i, %i.k
  %i.m = getelementptr inbounds nuw [208 x i8], ptr %i.j, i64 %i.l ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 120 ; 2 uses
  %i.o = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.n) #15
  %.not.i6 = icmp eq i32 %i.o, 0
  br i1 %.not.i6, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.p) #15
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  store atomic i8 1, ptr %i.q monotonic, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 112 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !22
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.r, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 104 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !27
  %.not.i.i7 = icmp eq ptr %i.v, %0
  br i1 %.not.i.i7, label %malloc_mutex_lock.exit8, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %0, ptr %i.u, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 96 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !28
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !28
  br label %malloc_mutex_lock.exit8

malloc_mutex_lock.exit8:                          ; preds = %bb.g, %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 168
  store i32 2, ptr %i.z, align 8, !tbaa !181
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  store atomic i8 0, ptr %i.aa monotonic, align 8
  %i.ab = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.n) #15 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %malloc_mutex_lock.exit8, %malloc_mutex_lock.exit
  ret void
}

declare void @je_arena_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @je_arena_nthreads_get(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @je_arena_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

declare zeroext i1 @je_extent_dss_prec_set(i32 noundef) local_unnamed_addr #2

declare i32 @je_extent_dss_prec_get() local_unnamed_addr #2

declare zeroext i1 @je_arena_dss_prec_set(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @je_arena_dss_prec_get(ptr noundef) local_unnamed_addr #2

declare i64 @je_arena_decay_ms_get(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @je_arena_is_huge(i32 noundef) local_unnamed_addr #2

declare zeroext i1 @je_background_thread_create(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @je_arena_decay_ms_set(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @je_arena_set_extent_hooks(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @je_arena_get_ehooks(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @je_arena_retain_grow_limit_get_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 23) i32 @arenas_narenas_ctl(ptr noundef %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef readnone captures(address_is_null) %5, i64 noundef %6) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64)) #15
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @ctl_mtx) #15
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 104) monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !22
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !22
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !27
  %.not.i.i = icmp eq ptr %i.e, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

end_hunk_2
