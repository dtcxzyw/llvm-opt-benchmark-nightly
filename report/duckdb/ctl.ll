inline.NumInlined: 880
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0
@experimental_thread_node = internal constant [1 x { %struct.ctl_node_s, [7 x i8], ptr, i64, ptr, ptr }] [{ %struct.ctl_node_s, [7 x i8], ptr, i64, ptr, ptr } { %struct.ctl_node_s { i8 1 }, [7 x i8] zeroinitializer, ptr @.str.322, i64 0, ptr null, ptr @experimental_thread_activity_callback_ctl }], align 16

; Function Attrs: nounwind uwtable
define i32 @duckdb_je_ctl_byname(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca [7 x i64], align 16               ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %.b = load i1, ptr @ctl_initialized, align 1
  br i1 %.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc zeroext i1 @ctl_init(ptr noundef %0)
  br i1 %i.d, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i64 7, ptr %i.a, align 8, !tbaa !7
  %i.e = call fastcc i32 @ctl_lookup(ptr noundef %0, ptr noundef nonnull @super_root_node, ptr noundef %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  %.not12 = icmp eq ptr %i.f, null
  br i1 %.not12, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !12   ; 2 uses
  %.not13 = icmp eq ptr %i.h, null
  br i1 %.not13, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = load i64, ptr %i.a, align 8, !tbaa !7
  %i.j = call i32 %i.h(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef %i.i, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.f, %bb.c
  %.0 = phi i32 [ %i.e, %bb.c ], [ %i.j, %bb.f ], [ 11, %bb.b ], [ 2, %bb.e ], [ 2, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @ctl_init(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 72)) #14
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull @ctl_mtx) #14
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64) monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !18
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !18
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !23
  %.not.i.i = icmp eq ptr %i.d, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !23
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 40), align 8, !tbaa !24
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 40), align 8, !tbaa !24
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %.b = load i1, ptr @ctl_initialized, align 1
  br i1 %.b, label %arenas_i_impl.exit.thread34, label %bb.e

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  %i.g = load ptr, ptr @ctl_arenas, align 8, !tbaa !25 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = tail call ptr @duckdb_je_b0get() #14
  %i.j = tail call ptr @duckdb_je_base_alloc(ptr noundef %0, ptr noundef %i.i, i64 noundef 32800, i64 noundef 16) #14 ; 3 uses
  store ptr %i.j, ptr @ctl_arenas, align 8, !tbaa !25
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %arenas_i_impl.exit.thread34, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = phi ptr [ %i.j, %bb.f ], [ %i.g, %bb.e ]
  %i.m = load ptr, ptr @ctl_stats, align 8, !tbaa !27
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = tail call ptr @duckdb_je_b0get() #14
  %i.p = tail call ptr @duckdb_je_base_alloc(ptr noundef %0, ptr noundef %i.o, i64 noundef 736, i64 noundef 16) #14 ; 2 uses
  store ptr %i.p, ptr @ctl_stats, align 8, !tbaa !27
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %arenas_i_impl.exit.thread34, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h
  %.pre = load ptr, ptr @ctl_arenas, align 8, !tbaa !25
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.g
  %i.r = phi ptr [ %.pre, %._crit_edge ], [ %i.l, %bb.g ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !29   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.v = tail call ptr @duckdb_je_b0get() #14
  %i.w = tail call ptr @duckdb_je_base_alloc(ptr noundef %0, ptr noundef %i.v, i64 noundef 39024, i64 noundef 16) #14 ; 6 uses
  %.not.i21 = icmp eq ptr %i.w, null
  br i1 %.not.i21, label %arenas_i_impl.exit.thread34, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  store ptr %i.x, ptr %i.y, align 8, !tbaa !31
  store i32 4096, ptr %i.w, align 8, !tbaa !35
  %i.z = load ptr, ptr @ctl_arenas, align 8, !tbaa !25 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr %i.w, ptr %i.aa, align 8, !tbaa !29
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k
  %i.ab = phi ptr [ %i.z, %bb.k ], [ %i.r, %bb.i ]
  %.119.i.ph = phi ptr [ %i.w, %bb.k ], [ %i.t, %bb.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.119.i.ph, i64 4
  store i8 1, ptr %i.ac, align 4, !tbaa !36
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !29 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.m, label %._crit_edge40

._crit_edge40:                                    ; preds = %bb.l
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  %.pre41 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !31
  br label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ag = tail call ptr @duckdb_je_b0get() #14
  %i.ah = tail call ptr @duckdb_je_base_alloc(ptr noundef %0, ptr noundef %i.ag, i64 noundef 39024, i64 noundef 16) #14 ; 6 uses
  %.not.i23 = icmp eq ptr %i.ah, null
  br i1 %.not.i23, label %arenas_i_impl.exit.thread34, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 88 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !31
  store i32 4097, ptr %i.ah, align 8, !tbaa !35
  %i.ak = load ptr, ptr @ctl_arenas, align 8, !tbaa !25
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store ptr %i.ah, ptr %i.al, align 8, !tbaa !29
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge40, %bb.n
  %i.am = phi ptr [ %i.ai, %bb.n ], [ %.pre41, %._crit_edge40 ]
  %.119.i22.ph = phi ptr [ %i.ah, %bb.n ], [ %i.ae, %._crit_edge40 ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.119.i22.ph, i64 24
  store i32 0, ptr %i.an, align 8, !tbaa !37
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @duckdb_je_dss_prec_names, i64 24), align 8, !tbaa !38
  %i.ap = getelementptr inbounds nuw i8, ptr %.119.i22.ph, i64 32
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !39
  %i.aq = getelementptr inbounds nuw i8, ptr %.119.i22.ph, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %.119.i22.ph, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 -1, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(38936) %i.am, i8 0, i64 38936, i1 false)
  %i.as = tail call i32 @duckdb_je_narenas_total_get() #14 ; 2 uses
  %i.at = load ptr, ptr @ctl_arenas, align 8, !tbaa !25 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 %i.as, ptr %i.au, align 8, !tbaa !40
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %arenas_i_impl.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o, %bb.v
  %i.av = phi ptr [ %i.bk, %bb.v ], [ %i.at, %bb.o ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.v ], [ 0, %bb.o ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = trunc nuw i64 %indvars.iv to i32        ; 3 uses
  switch i32 %i.ax, label %bb.q [
    i32 4096, label %arenas_i2a_impl.exit.i
    i32 4097, label %bb.p
  ]

bb.p:                                             ; preds = %.lr.ph
  br label %arenas_i2a_impl.exit.i

bb.q:                                             ; preds = %.lr.ph
  %i.ay = add nuw nsw i64 %indvars.iv, 2
  br label %arenas_i2a_impl.exit.i

arenas_i2a_impl.exit.i:                           ; preds = %bb.q, %bb.p, %.lr.ph
  %.0.i.i = phi i64 [ 0, %.lr.ph ], [ 1, %bb.p ], [ %i.ay, %bb.q ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.0.i.i
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !29
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.r, label %bb.v

bb.r:                                             ; preds = %arenas_i2a_impl.exit.i
  %i.bc = tail call ptr @duckdb_je_b0get() #14
  %i.bd = tail call ptr @duckdb_je_base_alloc(ptr noundef %0, ptr noundef %i.bc, i64 noundef 39024, i64 noundef 16) #14 ; 5 uses
  %.not.i26 = icmp eq ptr %i.bd, null
  br i1 %.not.i26, label %arenas_i_impl.exit.thread34, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 88
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !31
  store i32 %i.ax, ptr %i.bd, align 8, !tbaa !35
  %i.bg = load ptr, ptr @ctl_arenas, align 8, !tbaa !25 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  switch i32 %i.ax, label %bb.u [
    i32 4096, label %arenas_i2a_impl.exit23.i
    i32 4097, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  br label %arenas_i2a_impl.exit23.i

bb.u:                                             ; preds = %bb.s
  %i.bi = add nuw nsw i64 %indvars.iv, 2
  br label %arenas_i2a_impl.exit23.i

arenas_i2a_impl.exit23.i:                         ; preds = %bb.u, %bb.t, %bb.s
  %.0.i22.i = phi i64 [ 0, %bb.s ], [ 1, %bb.t ], [ %i.bi, %bb.u ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.0.i22.i
  store ptr %i.bd, ptr %i.bj, align 8, !tbaa !29
  br label %bb.v

bb.v:                                             ; preds = %arenas_i2a_impl.exit.i, %arenas_i2a_impl.exit23.i
  %i.bk = phi ptr [ %i.av, %arenas_i2a_impl.exit.i ], [ %i.bg, %arenas_i2a_impl.exit23.i ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !40
  %i.bn = zext i32 %i.bm to i64
  %i.bo = icmp samesign ult i64 %indvars.iv.next, %i.bn
  br i1 %i.bo, label %.lr.ph, label %arenas_i_impl.exit

arenas_i_impl.exit:                               ; preds = %bb.v, %bb.o
  %.lcssa = phi ptr [ %i.at, %bb.o ], [ %i.bk, %bb.v ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  store ptr null, ptr %i.bp, align 8, !tbaa !43
  tail call fastcc void @ctl_refresh(ptr noundef %0)
  store i1 true, ptr @ctl_initialized, align 1
  br label %arenas_i_impl.exit.thread34

arenas_i_impl.exit.thread34:                      ; preds = %bb.r, %bb.j, %bb.m, %bb.h, %bb.f, %malloc_mutex_lock.exit, %arenas_i_impl.exit
  %.1 = phi i1 [ false, %malloc_mutex_lock.exit ], [ false, %arenas_i_impl.exit ], [ true, %bb.f ], [ true, %bb.h ], [ true, %bb.m ], [ true, %bb.j ], [ true, %bb.r ]
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64) monotonic, align 8
  %i.bq = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 72)) #14 ; 0 uses
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 3) i32 @ctl_lookup(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr noundef %4, ptr nofree noundef captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 46) #15 ; 2 uses
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
  %i.g = load i64, ptr %5, align 8, !tbaa !7
  %.not122 = icmp eq i64 %i.g, 0
  br i1 %.not122, label %.loopexit101, label %.lr.ph121

.lr.ph121:                                        ; preds = %.preheader100, %bb.n
  %.061120 = phi ptr [ %.5, %bb.n ], [ %1, %.preheader100 ] ; 3 uses
  %.065119 = phi i64 [ %i.aq, %bb.n ], [ 0, %.preheader100 ] ; 4 uses
  %.066118 = phi i64 [ %i.ap, %bb.n ], [ %i.e, %.preheader100 ] ; 2 uses
  %.067117 = phi ptr [ %i.am, %bb.n ], [ %i.b, %.preheader100 ] ; 2 uses
  %.068116 = phi ptr [ %i.ak, %bb.n ], [ %2, %.preheader100 ] ; 2 uses
  %i.h = getelementptr i8, ptr %.061120, i64 24   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !44   ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !45, !range !46, !noundef !47
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %.preheader, label %bb.f

.preheader:                                       ; preds = %.lr.ph121
  %i.l = getelementptr inbounds nuw i8, ptr %.061120, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !48   ; 2 uses
  %.not123 = icmp eq i64 %i.m, 0
  br i1 %.not123, label %.thread93, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %.064115 = phi i64 [ %i.u, %bb.e ], [ 0, %.preheader ] ; 3 uses
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %.064115 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !49   ; 2 uses
  %i.q = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #15
  %i.r = icmp eq i64 %i.q, %.066118
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.s = tail call i32 @strncmp(ptr noundef nonnull %.068116, ptr noundef nonnull %i.p, i64 noundef %.066118) #15
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.u = add nuw i64 %.064115, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.m
  br i1 %exitcond.not, label %.thread93, label %.lr.ph

.loopexit:                                        ; preds = %bb.d
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.065119
  store i64 %.064115, ptr %i.v, align 8, !tbaa !7
  %.not99 = icmp eq ptr %i.n, %.061120
  br i1 %.not99, label %.thread93, label %bb.i

bb.f:                                             ; preds = %.lr.ph121
  %i.w = tail call i64 @duckdb_je_malloc_strtoumax(ptr noundef nonnull %.068116, ptr noundef null, i32 noundef 10) #14 ; 3 uses
  %i.x = icmp eq i64 %i.w, -1
  br i1 %i.x, label %.thread93, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !44
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !50
  %i.ab = load i64, ptr %5, align 8, !tbaa !7
  %i.ac = tail call ptr %i.aa(ptr noundef %0, ptr noundef %4, i64 noundef %i.ab, i64 noundef %i.w) #14 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.thread93, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.065119
  store i64 %i.w, ptr %i.ae, align 8, !tbaa !7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit
  %.5 = phi ptr [ %i.n, %.loopexit ], [ %i.ac, %bb.h ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.5, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !12
  %.not83 = icmp eq ptr %i.ag, null
  %i.ah = load i8, ptr %.067117, align 1, !tbaa !52
  %i.ai = icmp eq i8 %i.ah, 0                     ; 2 uses
  br i1 %.not83, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %i.ai, label %.thread96, label %bb.l

bb.k:                                             ; preds = %bb.i
  br i1 %i.ai, label %.thread96, label %.thread93

.thread96:                                        ; preds = %bb.j, %bb.k
  %i.aj = add i64 %.065119, 1
  store i64 %i.aj, ptr %5, align 8, !tbaa !7
  br label %.loopexit101

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %.067117, i64 1 ; 5 uses
  %i.al = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ak, i32 noundef 46) #15 ; 2 uses
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
  %i.ar = load i64, ptr %5, align 8, !tbaa !7
  %i.as = icmp ult i64 %i.aq, %i.ar
  br i1 %i.as, label %.lr.ph121, label %.loopexit101

.loopexit101:                                     ; preds = %bb.n, %.preheader100, %.thread96
  %.6 = phi ptr [ %.5, %.thread96 ], [ %1, %.preheader100 ], [ %.5, %bb.n ]
  %.not88 = icmp eq ptr %3, null
  br i1 %.not88, label %.thread93, label %bb.o

bb.o:                                             ; preds = %.loopexit101
  store ptr %.6, ptr %3, align 8, !tbaa !9
  br label %.thread93

.thread93:                                        ; preds = %.preheader, %bb.g, %bb.f, %.loopexit, %bb.e, %bb.c, %bb.k, %bb.o, %.loopexit101
  %.074 = phi i32 [ 0, %.loopexit101 ], [ 0, %bb.o ], [ 2, %bb.c ], [ 2, %bb.k ], [ 2, %bb.e ], [ 2, %.loopexit ], [ 2, %bb.f ], [ 2, %bb.g ], [ 2, %.preheader ]
  ret i32 %.074
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 0, 12) i32 @duckdb_je_ctl_nametomib(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
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
define i32 @duckdb_je_ctl_bymib(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @ctl_initialized, align 1
  br i1 %.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc zeroext i1 @ctl_init(ptr noundef %0)
end_hunk_0
begin_hunk_1_@duckdb_je_ctl_bymibname:bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44   ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !45, !range !46, !noundef !47
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02340.i
  %i.h = load i64, ptr %i.g, align 8, !tbaa !7    ; 3 uses
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %.02439.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !48
  %.not33.i = icmp ugt i64 %i.j, %i.h
  br i1 %.not33.i, label %bb.e, label %ctl_lookupbymib.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %i.h
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.n = tail call ptr %i.m(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef %i.h) #14, !inline_history !53 ; 2 uses
  %.not32.i = icmp eq ptr %i.n, null
  br i1 %.not32.i, label %ctl_lookupbymib.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.125.i = phi ptr [ %i.k, %bb.e ], [ %i.n, %bb.f ] ; 4 uses
  %i.o = add nuw i64 %.02340.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.o, %2
  br i1 %exitcond.not.i, label %bb.h, label %.lr.ph.i

bb.h:                                             ; preds = %bb.g
  store ptr %.125.i, ptr %i.a, align 8, !tbaa !9
  %i.p = icmp eq ptr %.125.i, null
  br i1 %i.p, label %ctl_lookupbymib.exit.thread, label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h
  %.024.lcssa.i34 = phi ptr [ @super_root_node, %.thread ], [ %.125.i, %bb.h ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.024.lcssa.i34, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !12
  %.not27 = icmp eq ptr %i.r, null
  br i1 %.not27, label %bb.j, label %ctl_lookupbymib.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.s = load i64, ptr %4, align 8, !tbaa !7
  %i.t = sub i64 %i.s, %2
  store i64 %i.t, ptr %4, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  %i.v = call fastcc i32 @ctl_lookup(ptr noundef %0, ptr noundef nonnull %.024.lcssa.i34, ptr noundef %3, ptr noundef nonnull %i.a, ptr noundef %i.u, ptr noundef nonnull %4) ; 2 uses
  %i.w = load i64, ptr %4, align 8, !tbaa !7
  %i.x = add i64 %i.w, %2                         ; 2 uses
  store i64 %i.x, ptr %4, align 8, !tbaa !7
  %.not28 = icmp eq i32 %i.v, 0
  br i1 %.not28, label %bb.k, label %ctl_lookupbymib.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %.not29 = icmp eq ptr %i.y, null
  br i1 %.not29, label %ctl_lookupbymib.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !12  ; 2 uses
  %.not30 = icmp eq ptr %i.aa, null
  br i1 %.not30, label %ctl_lookupbymib.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = call i32 %i.aa(ptr noundef %0, ptr noundef %1, i64 noundef %i.x, ptr noundef %5, ptr noundef %6, ptr noundef %7, i64 noundef %8) #14
  br label %ctl_lookupbymib.exit.thread

ctl_lookupbymib.exit.thread:                      ; preds = %bb.d, %bb.f, %bb.k, %bb.l, %bb.h, %bb.i, %bb.b, %bb.m, %bb.j
  %.0 = phi i32 [ 2, %bb.k ], [ 11, %bb.b ], [ %i.v, %bb.j ], [ %i.ab, %bb.m ], [ 2, %bb.h ], [ 2, %bb.i ], [ 2, %bb.l ], [ 2, %bb.f ], [ 2, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @duckdb_je_ctl_boot() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @duckdb_je_malloc_mutex_init(ptr noundef nonnull @ctl_mtx, ptr noundef nonnull @.str, i32 noundef 2, i32 noundef 0) #14 ; 2 uses
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i1 false, ptr @ctl_initialized, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.a
}

declare zeroext i1 @duckdb_je_malloc_mutex_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @duckdb_je_ctl_prefork(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @duckdb_je_malloc_mutex_prefork(ptr noundef %0, ptr noundef nonnull @ctl_mtx) #14
  ret void
}

declare void @duckdb_je_malloc_mutex_prefork(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @duckdb_je_ctl_postfork_parent(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @duckdb_je_malloc_mutex_postfork_parent(ptr noundef %0, ptr noundef nonnull @ctl_mtx) #14
  ret void
}

declare void @duckdb_je_malloc_mutex_postfork_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @duckdb_je_ctl_postfork_child(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @duckdb_je_malloc_mutex_postfork_child(ptr noundef %0, ptr noundef nonnull @ctl_mtx) #14
  ret void
}

declare void @duckdb_je_malloc_mutex_postfork_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @duckdb_je_ctl_mtx_assert_held(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #3 {
bb.a:
  ret void
}

declare ptr @duckdb_je_base_alloc(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @duckdb_je_b0get() local_unnamed_addr #2

declare i32 @duckdb_je_narenas_total_get() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ctl_refresh(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @ctl_arenas, align 8, !tbaa !25 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !40   ; 3 uses
  %i.d = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 824 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !52
  %.not.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i, label %arenas_i.exit, label %bb.b, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.d, i1 noundef zeroext false) #14 ; 0 uses
  %.pre = load ptr, ptr @ctl_arenas, align 8, !tbaa !25
  br label %arenas_i.exit

arenas_i.exit:                                    ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.a, %bb.a ], [ %.pre, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29   ; 6 uses
  %i.k = zext i32 %i.c to i64                     ; 4 uses
  %i.l = alloca ptr, i64 %i.k, align 16           ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i32 0, ptr %i.m, align 8, !tbaa !37
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @duckdb_je_dss_prec_names, i64 24), align 8, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.n, ptr %i.o, align 8, !tbaa !39
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 -1, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 80 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(38936) %i.s, i8 0, i64 38936, i1 false)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %._crit_edge, label %arena_get.exit.preheader

arena_get.exit.preheader:                         ; preds = %arenas_i.exit
  %xtraiter = and i64 %i.k, 3                     ; 3 uses
  %i.t = icmp ult i32 %i.c, 4
  br i1 %i.t, label %arena_get.exit.epil.preheader, label %arena_get.exit.preheader.new

arena_get.exit.preheader.new:                     ; preds = %arena_get.exit.preheader
  %unroll_iter = and i64 %i.k, 4294967292
  br label %arena_get.exit

arena_get.exit:                                   ; preds = %arena_get.exit, %arena_get.exit.preheader.new
  %indvars.iv = phi i64 [ 0, %arena_get.exit.preheader.new ], [ %indvars.iv.next.3, %arena_get.exit ] ; 6 uses
  %niter = phi i64 [ 0, %arena_get.exit.preheader.new ], [ %niter.next.3, %arena_get.exit ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %indvars.iv
  %i.v = load atomic ptr, ptr %i.u acquire, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  store ptr %i.v, ptr %i.w, align 16, !tbaa !55
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %indvars.iv.next
  %i.y = load atomic ptr, ptr %i.x acquire, align 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next
  store ptr %i.y, ptr %i.z, align 8, !tbaa !55
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %indvars.iv.next.1
  %i.ab = load atomic ptr, ptr %i.aa acquire, align 8
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next.1
  store ptr %i.ab, ptr %i.ac, align 16, !tbaa !55
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %indvars.iv.next.2
  %i.ae = load atomic ptr, ptr %i.ad acquire, align 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next.2
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !55
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.preheader.unr-lcssa, label %arena_get.exit

.lr.ph.preheader.unr-lcssa:                       ; preds = %arena_get.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader, label %arena_get.exit.epil.preheader

arena_get.exit.epil.preheader:                    ; preds = %.lr.ph.preheader.unr-lcssa, %arena_get.exit.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %arena_get.exit.preheader ], [ %indvars.iv.next.3, %.lr.ph.preheader.unr-lcssa ]
  %lcmp.mod52 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod52)
  br label %arena_get.exit.epil

arena_get.exit.epil:                              ; preds = %arena_get.exit.epil, %arena_get.exit.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %arena_get.exit.epil ], [ %indvars.iv.epil.init, %arena_get.exit.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %arena_get.exit.epil ], [ 0, %arena_get.exit.epil.preheader ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %indvars.iv.epil
  %i.ah = load atomic ptr, ptr %i.ag acquire, align 8
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.epil
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !55
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.preheader, label %arena_get.exit.epil, !llvm.loop !57

.lr.ph.preheader:                                 ; preds = %arena_get.exit.epil, %.lr.ph.preheader.unr-lcssa
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.k, %arenas_i.exit
  %i.aj = load ptr, ptr %i.r, align 8, !tbaa !31  ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 10384
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !59
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.an = load i64, ptr %i.am, align 8, !tbaa !70
  %i.ao = add i64 %i.an, %i.al
  %i.ap = load ptr, ptr @ctl_stats, align 8, !tbaa !27 ; 10 uses
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !71
  %i.aq = load i64, ptr %i.q, align 8, !tbaa !74
  %i.ar = shl i64 %i.aq, 12
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !75
  %i.at = load i64, ptr %i.aj, align 8, !tbaa !76
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.av = load atomic i64, ptr %i.au monotonic, align 8
  %i.aw = add i64 %i.av, %i.at
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !77
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ba = load <2 x i64>, ptr %i.ay, align 8, !tbaa !7
  store <2 x i64> %i.ba, ptr %i.az, align 8, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.bd = load <2 x i64>, ptr %i.bb, align 8, !tbaa !7
  %i.be = shufflevector <2 x i64> %i.bd, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.be, ptr %i.bc, align 8, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !78
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !79
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aj, i64 160
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !80
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !81
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ap, i64 72 ; 2 uses
  %i.bm = tail call zeroext i1 @duckdb_je_background_thread_stats_read(ptr noundef %0, ptr noundef nonnull %i.bl) #14
  br i1 %i.bm, label %bb.c, label %ctl_background_thread_stats_read.exit

bb.c:                                             ; preds = %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bl, i8 0, i64 88, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ap, i64 88
  tail call void @duckdb_je_nstime_copy(ptr noundef nonnull %i.bn, ptr noundef nonnull @nstime_zero) #14
  br label %ctl_background_thread_stats_read.exit

ctl_background_thread_stats_read.exit:            ; preds = %._crit_edge, %bb.c
  %i.bo = load ptr, ptr @ctl_stats, align 8, !tbaa !27 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 224
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bp, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.bq, i64 64, i1 false), !tbaa.struct !82
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 260
  store atomic i32 0, ptr %i.br monotonic, align 4
  %i.bs = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @duckdb_je_background_thread_lock, i64 72)) #14
  %.not.i = icmp eq i32 %i.bs, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %ctl_background_thread_stats_read.exit
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull @duckdb_je_background_thread_lock) #14
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @duckdb_je_background_thread_lock, i64 64) monotonic, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %ctl_background_thread_stats_read.exit
  %i.bt = load i64, ptr getelementptr inbounds nuw (i8, ptr @duckdb_je_background_thread_lock, i64 56), align 8, !tbaa !18
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr getelementptr inbounds nuw (i8, ptr @duckdb_je_background_thread_lock, i64 56), align 8, !tbaa !18
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @duckdb_je_background_thread_lock, i64 48), align 8, !tbaa !23
  %.not.i.i39 = icmp eq ptr %i.bv, %0
  br i1 %.not.i.i39, label %malloc_mutex_lock.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @duckdb_je_background_thread_lock, i64 48), align 8, !tbaa !23
  %i.bw = load i64, ptr getelementptr inbounds nuw (i8, ptr @duckdb_je_background_thread_lock, i64 40), align 8, !tbaa !24
  %i.bx = add i64 %i.bw, 1
  store i64 %i.bx, ptr getelementptr inbounds nuw (i8, ptr @duckdb_je_background_thread_lock, i64 40), align 8, !tbaa !24
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.e, %bb.f
  %i.by = load ptr, ptr @ctl_stats, align 8, !tbaa !27 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 160
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bz, ptr noundef nonnull readonly align 8 dereferenceable(64) @duckdb_je_background_thread_lock, i64 64, i1 false), !tbaa.struct !82
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 196
  store atomic i32 0, ptr %i.ca monotonic, align 4
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @duckdb_je_background_thread_lock, i64 64) monotonic, align 8
  %i.cb = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @duckdb_je_background_thread_lock, i64 72)) #14 ; 0 uses
  %i.cc = load ptr, ptr @ctl_stats, align 8, !tbaa !27 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 288
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cd, ptr noundef nonnull readonly align 8 dereferenceable(64) @ctl_mtx, i64 64, i1 false), !tbaa.struct !82
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 324
  store atomic i32 0, ptr %i.ce monotonic, align 4
  %i.cf = load ptr, ptr @ctl_arenas, align 8, !tbaa !25 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !84
  %i.ch = add i64 %i.cg, 1
  store i64 %i.ch, ptr %i.cf, align 8, !tbaa !84
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %bb.k ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %i.ci = load i8, ptr %i.e, align 8, !tbaa !52
  %.not.i.i40 = icmp eq i8 %i.ci, 0
  br i1 %.not.i.i40, label %tsd_fetch_impl.exit.i, label %bb.g, !prof !54

bb.g:                                             ; preds = %.lr.ph
  %i.cj = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.d, i1 noundef zeroext false) #14 ; 0 uses
  br label %tsd_fetch_impl.exit.i

tsd_fetch_impl.exit.i:                            ; preds = %bb.g, %.lr.ph
  %i.ck = load ptr, ptr @ctl_arenas, align 8, !tbaa !25 ; 2 uses
  %i.cl = trunc nuw i64 %indvars.iv46 to i32      ; 2 uses
  switch i32 %i.cl, label %bb.i [
    i32 4096, label %arenas_i.exit41
    i32 4097, label %bb.h
  ]

bb.h:                                             ; preds = %tsd_fetch_impl.exit.i
  br label %arenas_i.exit41

bb.i:                                             ; preds = %tsd_fetch_impl.exit.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !40
  %i.co = zext i32 %i.cn to i64
  %i.cp = icmp eq i64 %indvars.iv46, %i.co
  %1 = add nuw nsw i64 %indvars.iv46, 2
  %spec.select = select i1 %i.cp, i64 0, i64 %1
  br label %arenas_i.exit41

arenas_i.exit41:                                  ; preds = %bb.i, %tsd_fetch_impl.exit.i, %bb.h
  %.0.i.i.i = phi i64 [ 0, %tsd_fetch_impl.exit.i ], [ %spec.select, %bb.i ], [ 1, %bb.h ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %.0.i.i.i
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !29
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv46
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !55 ; 2 uses
  %i.cv = icmp ne ptr %i.cu, null                 ; 2 uses
  %i.cw = zext i1 %i.cv to i8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store i8 %i.cw, ptr %i.cx, align 4, !tbaa !36
  br i1 %i.cv, label %bb.j, label %bb.k

bb.j:                                             ; preds = %arenas_i.exit41
  tail call fastcc void @ctl_arena_refresh(ptr noundef %0, ptr noundef nonnull %i.cu, ptr noundef %i.j, i32 noundef %i.cl, i1 noundef zeroext false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %arenas_i.exit41
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %exitcond50.not = icmp eq i64 %indvars.iv.next47, %i.k
  br i1 %exitcond50.not, label %._crit_edge, label %.lr.ph
}

declare void @duckdb_je_malloc_mutex_lock_slow(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_trylock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #6

; Function Attrs: nounwind uwtable
define internal fastcc void @ctl_arena_refresh(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 824
  %i.c = load i8, ptr %i.b, align 8, !tbaa !52
  %.not.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i, label %tsd_fetch_impl.exit.i, label %bb.b, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false) #14 ; 0 uses
  br label %tsd_fetch_impl.exit.i

tsd_fetch_impl.exit.i:                            ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr @ctl_arenas, align 8, !tbaa !25 ; 2 uses
  switch i32 %3, label %bb.d [
    i32 4096, label %arenas_i.exit
    i32 4097, label %bb.c
  ]

bb.c:                                             ; preds = %tsd_fetch_impl.exit.i
  br label %arenas_i.exit

bb.d:                                             ; preds = %tsd_fetch_impl.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !40
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
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !29   ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  store i32 0, ptr %i.n, align 8, !tbaa !37
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @duckdb_je_dss_prec_names, i64 24), align 8, !tbaa !38
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !39
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 56 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 -1, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 80 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(38936) %i.t, i8 0, i64 38936, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 72 ; 2 uses
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !31   ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 10432
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16768
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 26176
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 35728
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 38928
  tail call void @duckdb_je_arena_stats_merge(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.n, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, ptr noundef nonnull %i.u, ptr noundef nonnull %i.r, ptr noundef nonnull %i.v, ptr noundef nonnull %i.w, ptr noundef %i.x, ptr noundef nonnull %i.y, ptr noundef nonnull %i.z, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ac) #14
  %i.ad = load ptr, ptr %i.s, align 8, !tbaa !31  ; 113 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 10432 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 10384 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 10392 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 10408 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 10416 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 10424
  %.promoted.i = load i64, ptr %i.af, align 8, !tbaa !59
  %i.ak = load <2 x i64>, ptr %i.ag, align 8, !tbaa !7
  %.promoted34.i = load i64, ptr %i.ah, align 8, !tbaa !85
  %i.al = load <2 x i64>, ptr %i.ai, align 8, !tbaa !7
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %arenas_i.exit
  %indvars.iv.i = phi i64 [ 0, %arenas_i.exit ], [ %indvars.iv.next.i, %bb.f ] ; 3 uses
  %i.am = phi i64 [ %.promoted.i, %arenas_i.exit ], [ %i.aw, %bb.f ]
  %i.an = phi i64 [ %.promoted34.i, %arenas_i.exit ], [ %i.bb, %bb.f ]
  %i.ao = phi <2 x i64> [ %i.ak, %arenas_i.exit ], [ %i.ay, %bb.f ]
  %i.ap = phi <2 x i64> [ %i.al, %arenas_i.exit ], [ %i.be, %bb.f ]
  %i.aq = getelementptr inbounds nuw [176 x i8], ptr %i.ae, i64 %indvars.iv.i ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !86
  %i.at = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %indvars.iv.i
  %i.au = load i64, ptr %i.at, align 8, !tbaa !7
  %i.av = mul i64 %i.au, %i.as
  %i.aw = add i64 %i.av, %i.am                    ; 2 uses
  store i64 %i.aw, ptr %i.af, align 8, !tbaa !59
  %i.ax = load <2 x i64>, ptr %i.aq, align 8, !tbaa !7
  %i.ay = add <2 x i64> %i.ax, %i.ao              ; 2 uses
  store <2 x i64> %i.ay, ptr %i.ag, align 8, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !88
  %i.bb = add i64 %i.ba, %i.an                    ; 2 uses
  store i64 %i.bb, ptr %i.ah, align 8, !tbaa !85
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.bd = load <2 x i64>, ptr %i.bc, align 8, !tbaa !7
  %i.be = add <2 x i64> %i.bd, %i.ap              ; 2 uses
  store <2 x i64> %i.be, ptr %i.ai, align 8, !tbaa !7
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 36
  br i1 %exitcond.not.i, label %ctl_arena_stats_amerge.exit, label %bb.f

ctl_arena_stats_amerge.exit:                      ; preds = %bb.f
  br i1 %4, label %.thread.i, label %bb.g

.thread.i:                                        ; preds = %ctl_arena_stats_amerge.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !31
  br label %bb.h

bb.g:                                             ; preds = %ctl_arena_stats_amerge.exit
  %i.bh = load i32, ptr %i.n, align 8, !tbaa !37
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !37
  %i.bk = add i32 %i.bj, %i.bh
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !37
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.bm = load <2 x i64>, ptr %i.r, align 8, !tbaa !7
  %i.bn = load <2 x i64>, ptr %i.bl, align 8, !tbaa !7
  %i.bo = add <2 x i64> %i.bn, %i.bm
  store <2 x i64> %i.bo, ptr %i.bl, align 8, !tbaa !7
  %i.bp = load i64, ptr %i.w, align 8, !tbaa !89
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !89
  %i.bs = add i64 %i.br, %i.bp
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !89
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !31 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !78
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 40 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !78
  %i.bz = add i64 %i.by, %i.bw
  store i64 %i.bz, ptr %i.bx, align 8, !tbaa !78
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ad, i64 104
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ad, i64 160
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !80
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 104 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 160 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !80
  %i.cg = add i64 %i.cf, %i.cc
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !80
  %i.ch = load i64, ptr %i.ca, align 8, !tbaa !90
  %i.ci = load i64, ptr %i.cd, align 8, !tbaa !90
  %i.cj = add i64 %i.ci, %i.ch
  store i64 %i.cj, ptr %i.cd, align 8, !tbaa !90
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread.i
  %i.ck = phi ptr [ %i.bg, %.thread.i ], [ %i.bu, %bb.g ] ; 110 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 112 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ad, i64 112
  %i.cn = load atomic i64, ptr %i.cm monotonic, align 8
  %i.co = load atomic i64, ptr %i.cl monotonic, align 8
  %i.cp = add i64 %i.co, %i.cn
  store atomic i64 %i.cp, ptr %i.cl monotonic, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 120 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  %i.cs = load atomic i64, ptr %i.cr monotonic, align 8
  %i.ct = load atomic i64, ptr %i.cq monotonic, align 8
  %i.cu = add i64 %i.ct, %i.cs
  store atomic i64 %i.cu, ptr %i.cq monotonic, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ck, i64 128 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  %i.cx = load atomic i64, ptr %i.cw monotonic, align 8
  %i.cy = load atomic i64, ptr %i.cv monotonic, align 8
  %i.cz = add i64 %i.cy, %i.cx
end_hunk_1
begin_hunk_2_@arena_i_retain_grow_limit_ctl:bb.a

bb.m:                                             ; preds = %bb.l
  %spec.select = call i64 @llvm.umin.i64(i64 %i.x, i64 8) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 8 %i.a, i64 %spec.select, i1 false)
  store i64 %spec.select, ptr %4, align 8, !tbaa !7
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.y = load i64, ptr %i.a, align 8, !tbaa !7
  store i64 %i.y, ptr %3, align 8, !tbaa !7
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.j, %bb.k, %bb.n, %bb.h
  %.2 = phi i32 [ 22, %bb.h ], [ 22, %bb.m ], [ 0, %bb.k ], [ 0, %bb.n ], [ 14, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %arena_get.exit.thread

arena_get.exit.thread:                            ; preds = %bb.g, %bb.f, %bb.o, %malloc_mutex_lock.exit
  %.3 = phi i32 [ %.2, %bb.o ], [ 14, %malloc_mutex_lock.exit ], [ 14, %bb.f ], [ 14, %bb.g ]
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64) monotonic, align 8
  %i.z = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 72)) #14 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %arena_get.exit.thread
  %.032 = phi i32 [ %.3, %arena_get.exit.thread ], [ 2, %bb.a ]
  ret i32 %.032
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 23) i32 @arena_i_name_ctl(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef readonly captures(address_is_null) %5, i64 noundef %6) #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 72)) #14
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull @ctl_mtx) #14
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64) monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !18
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !18
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !23
  %.not.i.i = icmp eq ptr %i.d, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !23
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 40), align 8, !tbaa !24
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 40), align 8, !tbaa !24
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !7    ; 4 uses
  %i.i = icmp ugt i64 %i.h, 4294967295
  br i1 %i.i, label %arena_get.exit.thread, label %bb.e

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  %i.j = icmp eq i64 %i.h, 4096
  br i1 %i.j, label %arena_get.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = trunc nuw i64 %i.h to i32
  %i.l = load ptr, ptr @ctl_arenas, align 8, !tbaa !25
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !40
  %.not = icmp ugt i32 %i.n, %i.k
  br i1 %.not, label %bb.g, label %arena_get.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %i.h
  %i.p = load atomic ptr, ptr %i.o acquire, align 8 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %arena_get.exit.thread, label %arena_get.exit, !prof !103

arena_get.exit:                                   ; preds = %bb.g
  %i.r = icmp ne ptr %3, null
  %i.s = icmp ne ptr %4, null
  %or.cond = and i1 %i.r, %i.s
  br i1 %or.cond, label %bb.h, label %bb.j

bb.h:                                             ; preds = %arena_get.exit
  %i.t = load i64, ptr %4, align 8, !tbaa !7
  %.not30 = icmp eq i64 %i.t, 8
  br i1 %.not30, label %bb.i, label %arena_get.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.u = load ptr, ptr %3, align 8, !tbaa !38
  tail call void @duckdb_je_arena_name_get(ptr noundef nonnull %i.p, ptr noundef %i.u) #14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %arena_get.exit
  %.not31 = icmp eq ptr %5, null
  br i1 %.not31, label %arena_get.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not32 = icmp eq i64 %6, 8
  br i1 %.not32, label %bb.l, label %arena_get.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.v = load ptr, ptr %5, align 8, !tbaa !38     ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %arena_get.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @duckdb_je_arena_name_set(ptr noundef nonnull %i.p, ptr noundef nonnull %i.v) #14
  br label %arena_get.exit.thread

arena_get.exit.thread:                            ; preds = %bb.g, %bb.j, %bb.m, %bb.l, %bb.k, %bb.h, %bb.e, %bb.f, %malloc_mutex_lock.exit
  %.0 = phi i32 [ 22, %bb.l ], [ 14, %malloc_mutex_lock.exit ], [ 22, %bb.e ], [ 0, %bb.j ], [ 22, %bb.h ], [ 22, %bb.k ], [ 22, %bb.f ], [ 0, %bb.m ], [ 14, %bb.g ]
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64) monotonic, align 8
  %i.x = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 72)) #14 ; 0 uses
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @arena_i_decay(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 72)) #14
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull @ctl_mtx) #14
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64) monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !18
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !18
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !23
  %.not.i.i = icmp eq ptr %i.d, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !23
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 40), align 8, !tbaa !24
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 40), align 8, !tbaa !24
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.g = load ptr, ptr @ctl_arenas, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !40   ; 4 uses
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
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64) monotonic, align 8
  %i.p = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 72)) #14 ; 0 uses
  br label %._crit_edge38

arena_get.exit:                                   ; preds = %arena_get.exit, %arena_get.exit.preheader.new
  %indvars.iv = phi i64 [ 0, %arena_get.exit.preheader.new ], [ %indvars.iv.next.3, %arena_get.exit ] ; 6 uses
  %niter = phi i64 [ 0, %arena_get.exit.preheader.new ], [ %niter.next.3, %arena_get.exit ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %indvars.iv
  %i.r = load atomic ptr, ptr %i.q acquire, align 8
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  store ptr %i.r, ptr %i.s, align 16, !tbaa !55
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %indvars.iv.next
  %i.u = load atomic ptr, ptr %i.t acquire, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next
  store ptr %i.u, ptr %i.v, align 8, !tbaa !55
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %indvars.iv.next.1
  %i.x = load atomic ptr, ptr %i.w acquire, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.1
  store ptr %i.x, ptr %i.y, align 16, !tbaa !55
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %indvars.iv.next.2
  %i.aa = load atomic ptr, ptr %i.z acquire, align 8
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.2
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !55
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.preheader.unr-lcssa, label %arena_get.exit

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
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %indvars.iv.epil
  %i.ad = load atomic ptr, ptr %i.ac acquire, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.epil
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !55
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.preheader, label %arena_get.exit.epil, !llvm.loop !182

.lr.ph.preheader:                                 ; preds = %arena_get.exit.epil, %.lr.ph.preheader.unr-lcssa
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64) monotonic, align 8
  %i.af = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 72)) #14 ; 0 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv41 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next42, %bb.g ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv41
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !55 ; 2 uses
  %.not30 = icmp eq ptr %i.ah, null
  br i1 %.not30, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  tail call void @duckdb_je_arena_decay(ptr noundef %0, ptr noundef nonnull %i.ah, i1 noundef zeroext false, i1 noundef zeroext %2) #14
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %i.l
  br i1 %exitcond45.not, label %._crit_edge38, label %.lr.ph

._crit_edge38:                                    ; preds = %bb.g, %._crit_edge.thread
  call void @llvm.stackrestore.p0(ptr %i.m)
  br label %arena_get.exit32.thread

bb.h:                                             ; preds = %malloc_mutex_lock.exit
  %i.ai = zext i32 %1 to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %i.ai
  %i.ak = load atomic ptr, ptr %i.aj acquire, align 8 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64) monotonic, align 8
  %i.am = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 72)) #14 ; 0 uses
  br i1 %i.al, label %arena_get.exit32.thread, label %bb.i, !prof !103

bb.i:                                             ; preds = %bb.h
  tail call void @duckdb_je_arena_decay(ptr noundef %0, ptr noundef nonnull %i.ak, i1 noundef zeroext false, i1 noundef zeroext %2) #14
  br label %arena_get.exit32.thread

arena_get.exit32.thread:                          ; preds = %bb.h, %bb.i, %._crit_edge38
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @arena_reset_prepare_background_thread(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @duckdb_je_background_thread_lock, i64 72)) #14
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull @duckdb_je_background_thread_lock) #14
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @duckdb_je_background_thread_lock, i64 64) monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @duckdb_je_background_thread_lock, i64 56), align 8, !tbaa !18
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @duckdb_je_background_thread_lock, i64 56), align 8, !tbaa !18
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @duckdb_je_background_thread_lock, i64 48), align 8, !tbaa !23
  %.not.i.i = icmp eq ptr %i.d, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @duckdb_je_background_thread_lock, i64 48), align 8, !tbaa !23
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @duckdb_je_background_thread_lock, i64 40), align 8, !tbaa !24
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr getelementptr inbounds nuw (i8, ptr @duckdb_je_background_thread_lock, i64 40), align 8, !tbaa !24
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.g = load atomic i8, ptr @duckdb_je_background_thread_enabled_state monotonic, align 1, !range !46, !noundef !47
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.i

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  %i.i = zext i32 %1 to i64
  %i.j = load ptr, ptr @duckdb_je_background_thread_info, align 8, !tbaa !171
  %i.k = load i64, ptr @duckdb_je_max_background_threads, align 8, !tbaa !7
  %i.l = urem i64 %i.i, %i.k
  %i.m = getelementptr inbounds nuw [208 x i8], ptr %i.j, i64 %i.l ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 128 ; 2 uses
  %i.o = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.n) #14
  %.not.i6 = icmp eq i32 %i.o, 0
  br i1 %.not.i6, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull %i.p) #14
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 120
  store atomic i8 1, ptr %i.q monotonic, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 112 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !18
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.r, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 104 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !23
  %.not.i.i7 = icmp eq ptr %i.v, %0
  br i1 %.not.i.i7, label %malloc_mutex_lock.exit8, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %0, ptr %i.u, align 8, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 96 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !24
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !24
  br label %malloc_mutex_lock.exit8

malloc_mutex_lock.exit8:                          ; preds = %bb.g, %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 168
  store i32 2, ptr %i.z, align 8, !tbaa !173
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 120
  store atomic i8 0, ptr %i.aa monotonic, align 8
  %i.ab = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.n) #14 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %malloc_mutex_lock.exit8, %malloc_mutex_lock.exit
  ret void
}

declare void @duckdb_je_arena_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @duckdb_je_arena_nthreads_get(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @duckdb_je_arena_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

declare zeroext i1 @duckdb_je_extent_dss_prec_set(i32 noundef) local_unnamed_addr #2

declare i32 @duckdb_je_extent_dss_prec_get() local_unnamed_addr #2

declare zeroext i1 @duckdb_je_arena_dss_prec_set(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @duckdb_je_arena_dss_prec_get(ptr noundef) local_unnamed_addr #2

declare i64 @duckdb_je_arena_decay_ms_get(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @duckdb_je_arena_decay_ms_set(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @duckdb_je_arena_set_extent_hooks(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @duckdb_je_arena_get_ehooks(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @duckdb_je_arena_retain_grow_limit_get_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @duckdb_je_arena_name_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @duckdb_je_arena_name_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 23) i32 @arenas_narenas_ctl(ptr noundef %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef readnone captures(address_is_null) %5, i64 noundef %6) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 72)) #14
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull @ctl_mtx) #14
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64) monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !18
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !18
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !23
  %.not.i.i = icmp eq ptr %i.e, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

end_hunk_2
