Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/ctl?download=true
inline.NumInlined: 915
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@ctl_init:bb.a
  br i1 %i.k, label %arenas_i_impl.exit.thread34, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = phi ptr [ %i.j, %bb.f ], [ %i.g, %bb.e ]
  %i.m = load ptr, ptr @ctl_stats, align 8, !tbaa !32
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = tail call ptr @je_b0get() #15
  %i.p = tail call ptr @je_base_alloc(ptr noundef %0, ptr noundef %i.o, i64 noundef 736, i64 noundef 16) #15 ; 2 uses
  store ptr %i.p, ptr @ctl_stats, align 8, !tbaa !32
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %arenas_i_impl.exit.thread34, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h
  %.pre = load ptr, ptr @ctl_arenas, align 8, !tbaa !30
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.g
  %i.r = phi ptr [ %.pre, %._crit_edge ], [ %i.l, %bb.g ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !34   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.v = tail call ptr @je_b0get() #15
  %i.w = tail call ptr @je_base_alloc(ptr noundef %0, ptr noundef %i.v, i64 noundef 41128, i64 noundef 16) #15 ; 6 uses
  %.not.i21 = icmp eq ptr %i.w, null
  br i1 %.not.i21, label %arenas_i_impl.exit.thread34, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  store ptr %i.x, ptr %i.y, align 8, !tbaa !36
  store i32 4096, ptr %i.w, align 8, !tbaa !40
  %i.z = load ptr, ptr @ctl_arenas, align 8, !tbaa !30 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr %i.w, ptr %i.aa, align 8, !tbaa !34
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k
  %i.ab = phi ptr [ %i.z, %bb.k ], [ %i.r, %bb.i ]
  %.1.i.ph = phi ptr [ %i.w, %bb.k ], [ %i.t, %bb.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i.ph, i64 4
  store i8 1, ptr %i.ac, align 4, !tbaa !41
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !34 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.m, label %._crit_edge40

._crit_edge40:                                    ; preds = %bb.l
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  %.pre41 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !36
  br label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ag = tail call ptr @je_b0get() #15
  %i.ah = tail call ptr @je_base_alloc(ptr noundef %0, ptr noundef %i.ag, i64 noundef 41128, i64 noundef 16) #15 ; 6 uses
  %.not.i23 = icmp eq ptr %i.ah, null
  br i1 %.not.i23, label %arenas_i_impl.exit.thread34, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 88 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !36
  store i32 4097, ptr %i.ah, align 8, !tbaa !40
  %i.ak = load ptr, ptr @ctl_arenas, align 8, !tbaa !30
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store ptr %i.ah, ptr %i.al, align 8, !tbaa !34
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge40, %bb.n
  %i.am = phi ptr [ %i.ai, %bb.n ], [ %.pre41, %._crit_edge40 ]
  %.1.i22.ph = phi ptr [ %i.ah, %bb.n ], [ %i.ae, %._crit_edge40 ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.1.i22.ph, i64 24
  store i32 0, ptr %i.an, align 8, !tbaa !42
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @je_dss_prec_names, i64 24), align 8, !tbaa !43
  %i.ap = getelementptr inbounds nuw i8, ptr %.1.i22.ph, i64 32
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !44
  %i.aq = getelementptr inbounds nuw i8, ptr %.1.i22.ph, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %.1.i22.ph, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 -1, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41040) %i.am, i8 0, i64 41040, i1 false)
  %i.as = tail call i32 @je_narenas_total_get() #15 ; 2 uses
  %i.at = load ptr, ptr @ctl_arenas, align 8, !tbaa !30 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 %i.as, ptr %i.au, align 8, !tbaa !45
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %arenas_i_impl.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o, %bb.v
  %i.av = phi ptr [ %i.bm, %bb.v ], [ %i.at, %bb.o ] ; 2 uses
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
  %i.az = and i64 %i.ay, 4294967295
  br label %arenas_i2a_impl.exit.i

arenas_i2a_impl.exit.i:                           ; preds = %bb.q, %bb.p, %.lr.ph
  %.0.i.i = phi i64 [ 0, %.lr.ph ], [ 1, %bb.p ], [ %i.az, %bb.q ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.0.i.i
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !34
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.r, label %bb.v

bb.r:                                             ; preds = %arenas_i2a_impl.exit.i
  %i.bd = tail call ptr @je_b0get() #15
  %i.be = tail call ptr @je_base_alloc(ptr noundef %0, ptr noundef %i.bd, i64 noundef 41128, i64 noundef 16) #15 ; 5 uses
  %.not.i26 = icmp eq ptr %i.be, null
  br i1 %.not.i26, label %arenas_i_impl.exit.thread34, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 88
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 80
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !36
  store i32 %i.ax, ptr %i.be, align 8, !tbaa !40
  %i.bh = load ptr, ptr @ctl_arenas, align 8, !tbaa !30 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  switch i32 %i.ax, label %bb.u [
    i32 4096, label %arenas_i2a_impl.exit23.i
    i32 4097, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  br label %arenas_i2a_impl.exit23.i

bb.u:                                             ; preds = %bb.s
  %i.bj = add nuw nsw i64 %indvars.iv, 2
  %i.bk = and i64 %i.bj, 4294967295
  br label %arenas_i2a_impl.exit23.i

arenas_i2a_impl.exit23.i:                         ; preds = %bb.u, %bb.t, %bb.s
  %.0.i22.i = phi i64 [ 0, %bb.s ], [ 1, %bb.t ], [ %i.bk, %bb.u ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.0.i22.i
  store ptr %i.be, ptr %i.bl, align 8, !tbaa !34
  br label %bb.v

bb.v:                                             ; preds = %arenas_i2a_impl.exit.i, %arenas_i2a_impl.exit23.i
  %i.bm = phi ptr [ %i.av, %arenas_i2a_impl.exit.i ], [ %i.bh, %arenas_i2a_impl.exit23.i ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !45
  %i.bp = zext i32 %i.bo to i64
  %i.bq = icmp samesign ult i64 %indvars.iv.next, %i.bp
  br i1 %i.bq, label %.lr.ph, label %arenas_i_impl.exit, !llvm.loop !48

arenas_i_impl.exit:                               ; preds = %bb.v, %bb.o
  %.lcssa = phi ptr [ %i.at, %bb.o ], [ %i.bm, %bb.v ]
  %i.br = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  store ptr null, ptr %i.br, align 8, !tbaa !50
  tail call fastcc void @ctl_refresh(ptr noundef %0)
  store i1 true, ptr @ctl_initialized, align 1
  br label %arenas_i_impl.exit.thread34

arenas_i_impl.exit.thread34:                      ; preds = %bb.r, %bb.j, %bb.m, %bb.h, %bb.f, %malloc_mutex_lock.exit, %arenas_i_impl.exit
  %.1 = phi i1 [ false, %malloc_mutex_lock.exit ], [ false, %arenas_i_impl.exit ], [ true, %bb.f ], [ true, %bb.h ], [ true, %bb.m ], [ true, %bb.j ], [ true, %bb.r ]
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64) monotonic, align 8
  %i.bs = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 72)) #15 ; 0 uses
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
  %i.g = load i64, ptr %5, align 8, !tbaa !12
  %.not122 = icmp eq i64 %i.g, 0
  br i1 %.not122, label %.loopexit101, label %.lr.ph121

.lr.ph121:                                        ; preds = %.preheader100, %bb.n
  %.065120 = phi ptr [ %.5, %bb.n ], [ %1, %.preheader100 ] ; 3 uses
  %.065119 = phi i64 [ %i.aq, %bb.n ], [ 0, %.preheader100 ] ; 4 uses
  %.072118 = phi i64 [ %i.ap, %bb.n ], [ %i.e, %.preheader100 ] ; 2 uses
  %.067117 = phi ptr [ %i.am, %bb.n ], [ %i.b, %.preheader100 ] ; 2 uses
  %.074116 = phi ptr [ %i.ak, %bb.n ], [ %2, %.preheader100 ] ; 2 uses
  %i.h = getelementptr i8, ptr %.065120, i64 24   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !51   ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !52, !range !53, !noundef !54
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %.preheader, label %bb.f

.preheader:                                       ; preds = %.lr.ph121
  %i.l = getelementptr inbounds nuw i8, ptr %.065120, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !55   ; 2 uses
  %.not123 = icmp eq i64 %i.m, 0
  br i1 %.not123, label %.thread93, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %.071115 = phi i64 [ %i.u, %bb.e ], [ 0, %.preheader ] ; 3 uses
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %.071115 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !56   ; 2 uses
  %i.q = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #16
  %i.r = icmp eq i64 %i.q, %.072118
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.s = tail call i32 @strncmp(ptr noundef nonnull %.074116, ptr noundef nonnull %i.p, i64 noundef %.072118) #16
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.u = add nuw i64 %.071115, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.m
  br i1 %exitcond.not, label %.thread93, label %.lr.ph, !llvm.loop !57

.loopexit:                                        ; preds = %bb.d
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.065119
  store i64 %.071115, ptr %i.v, align 8, !tbaa !12
  %.not99 = icmp eq ptr %i.n, %.065120
  br i1 %.not99, label %.thread93, label %bb.i

bb.f:                                             ; preds = %.lr.ph121
  %i.w = tail call i64 @je_malloc_strtoumax(ptr noundef nonnull %.074116, ptr noundef null, i32 noundef 10) #15 ; 3 uses
  %i.x = icmp eq i64 %i.w, -1
  br i1 %i.x, label %.thread93, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !51
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !58
  %i.ab = load i64, ptr %5, align 8, !tbaa !12
  %i.ac = tail call ptr %i.aa(ptr noundef %0, ptr noundef %4, i64 noundef %i.ab, i64 noundef %i.w) #15 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.thread93, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.065119
  store i64 %i.w, ptr %i.ae, align 8, !tbaa !12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit
  %.5 = phi ptr [ %i.n, %.loopexit ], [ %i.ac, %bb.h ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.5, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !17
  %.not83 = icmp eq ptr %i.ag, null
  %i.ah = load i8, ptr %.067117, align 1, !tbaa !60
  %i.ai = icmp eq i8 %i.ah, 0                     ; 2 uses
  br i1 %.not83, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %i.ai, label %.thread96, label %bb.l

bb.k:                                             ; preds = %bb.i
  br i1 %i.ai, label %.thread96, label %.thread93

.thread96:                                        ; preds = %bb.j, %bb.k
  %i.aj = add i64 %.065119, 1
  store i64 %i.aj, ptr %5, align 8, !tbaa !12
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
  %i.ar = load i64, ptr %5, align 8, !tbaa !12
  %i.as = icmp ult i64 %i.aq, %i.ar
  br i1 %i.as, label %.lr.ph121, label %.loopexit101, !llvm.loop !61

.loopexit101:                                     ; preds = %bb.n, %.preheader100, %.thread96
  %.6 = phi ptr [ %.5, %.thread96 ], [ %1, %.preheader100 ], [ %.5, %bb.n ]
  %.not88 = icmp eq ptr %3, null
  br i1 %.not88, label %.thread93, label %bb.o

bb.o:                                             ; preds = %.loopexit101
  store ptr %.6, ptr %3, align 8, !tbaa !14
  br label %.thread93

.thread93:                                        ; preds = %.preheader, %bb.g, %bb.f, %.loopexit, %bb.e, %bb.c, %bb.k, %bb.o, %.loopexit101
  %.0 = phi i32 [ 0, %.loopexit101 ], [ 0, %bb.o ], [ 2, %bb.c ], [ 2, %bb.k ], [ 2, %bb.e ], [ 2, %.loopexit ], [ 2, %bb.f ], [ 2, %bb.g ], [ 2, %.preheader ]
  ret i32 %.0
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
  br i1 %i.a, label %ctl_lookupbymib.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.g
  %.02440.i = phi i64 [ %i.n, %bb.g ], [ 0, %bb.c ] ; 2 uses
  %.02539.i = phi ptr [ %.126.i, %bb.g ], [ @super_root_node, %bb.c ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.02539.i, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51   ; 3 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !52, !range !53, !noundef !54
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02440.i
  %i.g = load i64, ptr %i.f, align 8, !tbaa !12   ; 3 uses
  br i1 %i.e, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.02539.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !55
  %.not33.i = icmp ugt i64 %i.i, %i.g
  br i1 %.not33.i, label %bb.e, label %ctl_lookupbymib.exit

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %i.g
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !58
  %i.m = tail call ptr %i.l(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef %i.g) #15, !inline_history !62 ; 2 uses
  %.not32.i = icmp eq ptr %i.m, null
  br i1 %.not32.i, label %ctl_lookupbymib.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.126.i = phi ptr [ %i.j, %bb.e ], [ %i.m, %bb.f ] ; 3 uses
  %i.n = add nuw i64 %.02440.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.n, %2
  br i1 %exitcond.not.i, label %bb.h, label %.lr.ph.i, !llvm.loop !63

bb.h:                                             ; preds = %bb.g
  %.not15 = icmp eq ptr %.126.i, null
  br i1 %.not15, label %ctl_lookupbymib.exit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.h
  %.017.ph24 = phi ptr [ %.126.i, %bb.h ], [ @super_root_node, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %.017.ph24, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17   ; 2 uses
  %.not16 = icmp eq ptr %i.p, null
  br i1 %.not16, label %ctl_lookupbymib.exit, label %bb.i

bb.i:                                             ; preds = %.thread
  %i.q = tail call i32 %i.p(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6) #15
  br label %ctl_lookupbymib.exit

ctl_lookupbymib.exit:                             ; preds = %bb.f, %bb.d, %bb.h, %.thread, %bb.b, %bb.i
  %.0 = phi i32 [ 2, %bb.h ], [ %i.q, %bb.i ], [ 11, %bb.b ], [ 2, %.thread ], [ 2, %bb.d ], [ 2, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 12) i32 @je_ctl_mibnametomib(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @ctl_initialized, align 1
  br i1 %.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc zeroext i1 @ctl_init(ptr noundef %0)
  br i1 %i.a, label %ctl_lookupbymib.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.g
  %.02440.i = phi i64 [ %i.n, %bb.g ], [ 0, %bb.c ] ; 2 uses
  %.02539.i = phi ptr [ %.126.i, %bb.g ], [ @super_root_node, %bb.c ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.02539.i, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51   ; 3 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !52, !range !53, !noundef !54
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02440.i
  %i.g = load i64, ptr %i.f, align 8, !tbaa !12   ; 3 uses
  br i1 %i.e, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.02539.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !55
  %.not33.i = icmp ugt i64 %i.i, %i.g
  br i1 %.not33.i, label %bb.e, label %ctl_lookupbymib.exit

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %i.g
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !58
  %i.m = tail call ptr %i.l(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef %i.g) #15, !inline_history !62 ; 2 uses
  %.not32.i = icmp eq ptr %i.m, null
  br i1 %.not32.i, label %ctl_lookupbymib.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.126.i = phi ptr [ %i.j, %bb.e ], [ %i.m, %bb.f ] ; 3 uses
  %i.n = add nuw i64 %.02440.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.n, %2
  br i1 %exitcond.not.i, label %bb.h, label %.lr.ph.i, !llvm.loop !63

bb.h:                                             ; preds = %bb.g
  %i.o = icmp eq ptr %.126.i, null
  br i1 %i.o, label %ctl_lookupbymib.exit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.h
  %.018.ph24 = phi ptr [ %.126.i, %bb.h ], [ @super_root_node, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.018.ph24, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !17
  %.not16 = icmp eq ptr %i.q, null
  br i1 %.not16, label %bb.i, label %ctl_lookupbymib.exit

bb.i:                                             ; preds = %.thread
  %i.r = load i64, ptr %4, align 8, !tbaa !12
  %i.s = sub i64 %i.r, %2
  store i64 %i.s, ptr %4, align 8, !tbaa !12
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  %i.u = tail call fastcc i32 @ctl_lookup(ptr noundef %0, ptr noundef nonnull %.018.ph24, ptr noundef %3, ptr noundef null, ptr noundef %i.t, ptr noundef nonnull %4)
  %i.v = load i64, ptr %4, align 8, !tbaa !12
  %i.w = add i64 %i.v, %2
  store i64 %i.w, ptr %4, align 8, !tbaa !12
  br label %ctl_lookupbymib.exit

ctl_lookupbymib.exit:                             ; preds = %bb.f, %bb.d, %bb.h, %.thread, %bb.b, %bb.i
  %.0 = phi i32 [ 2, %bb.h ], [ 11, %bb.b ], [ %i.u, %bb.i ], [ 2, %.thread ], [ 2, %bb.d ], [ 2, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @je_ctl_bymibname(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i64 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %.b = load i1, ptr @ctl_initialized, align 1
  br i1 %.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc zeroext i1 @ctl_init(ptr noundef %0)
  br i1 %i.b, label %ctl_lookupbymib.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %.thread, label %.lr.ph.i

.thread:                                          ; preds = %bb.c
end_hunk_0
