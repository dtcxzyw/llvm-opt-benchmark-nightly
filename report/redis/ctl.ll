Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/ctl?download=true
inline.NumInlined: 852
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ctl_init:bb.a
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
  %i.bg = phi ptr [ %i.bx, %bb.v ], [ %i.be, %bb.o ] ; 2 uses
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
  %i.bk = and i64 %i.bj, 4294967295
  br label %arenas_i2a_impl.exit.i

arenas_i2a_impl.exit.i:                           ; preds = %bb.q, %bb.p, %.lr.ph
  %.0.i.i = phi i64 [ 0, %.lr.ph ], [ 1, %bb.p ], [ %i.bk, %bb.q ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.0.i.i
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !33
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.r, label %bb.v

bb.r:                                             ; preds = %arenas_i2a_impl.exit.i
  %i.bo = tail call ptr @je_b0get() #15
  %i.bp = tail call ptr @je_base_alloc(ptr noundef %0, ptr noundef %i.bo, i64 noundef 38288, i64 noundef 8) #15 ; 5 uses
  %.not.i26 = icmp eq ptr %i.bp, null
  br i1 %.not.i26, label %arenas_i_impl.exit.thread34, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 88
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 80
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !35
  store i32 %i.bi, ptr %i.bp, align 8, !tbaa !39
  %i.bs = load ptr, ptr @ctl_arenas, align 8, !tbaa !29 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  switch i32 %i.bi, label %bb.u [
    i32 4096, label %arenas_i2a_impl.exit23.i
    i32 4097, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  br label %arenas_i2a_impl.exit23.i

bb.u:                                             ; preds = %bb.s
  %i.bu = add nuw nsw i64 %indvars.iv, 2
  %i.bv = and i64 %i.bu, 4294967295
  br label %arenas_i2a_impl.exit23.i

arenas_i2a_impl.exit23.i:                         ; preds = %bb.u, %bb.t, %bb.s
  %.0.i22.i = phi i64 [ 0, %bb.s ], [ 1, %bb.t ], [ %i.bv, %bb.u ]
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.0.i22.i
  store ptr %i.bp, ptr %i.bw, align 8, !tbaa !33
  br label %bb.v

bb.v:                                             ; preds = %arenas_i2a_impl.exit.i, %arenas_i2a_impl.exit23.i
  %i.bx = phi ptr [ %i.bg, %arenas_i2a_impl.exit.i ], [ %i.bs, %arenas_i2a_impl.exit23.i ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !44
  %i.ca = zext i32 %i.bz to i64
  %i.cb = icmp samesign ult i64 %indvars.iv.next, %i.ca
  br i1 %i.cb, label %.lr.ph, label %arenas_i_impl.exit, !llvm.loop !47

arenas_i_impl.exit:                               ; preds = %bb.v, %bb.o
  %.lcssa = phi ptr [ %i.be, %bb.o ], [ %i.bx, %bb.v ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  store ptr null, ptr %i.cc, align 8, !tbaa !49
  tail call fastcc void @ctl_refresh(ptr noundef %0)
  store i1 true, ptr @ctl_initialized, align 1
  br label %arenas_i_impl.exit.thread34

arenas_i_impl.exit.thread34:                      ; preds = %bb.r, %bb.j, %bb.m, %bb.h, %bb.f, %malloc_mutex_lock.exit, %arenas_i_impl.exit
  %.1 = phi i1 [ false, %malloc_mutex_lock.exit ], [ false, %arenas_i_impl.exit ], [ true, %bb.f ], [ true, %bb.h ], [ true, %bb.m ], [ true, %bb.j ], [ true, %bb.r ]
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 104) monotonic, align 8
  %i.cd = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64)) #15 ; 0 uses
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
  %6 = ptrtoint ptr %i.b to i64
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %6, %i.c                         ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.thread93, label %.preheader100

.preheader100:                                    ; preds = %bb.c
  %i.f = load i64, ptr %5, align 8, !tbaa !11
  %.not122.a = icmp eq i64 %i.f, 0
  br i1 %.not122.a, label %.loopexit101, label %.lr.ph121

.lr.ph121:                                        ; preds = %.preheader100, %bb.n
  %.061120 = phi ptr [ %.5, %bb.n ], [ %1, %.preheader100 ] ; 3 uses
  %.065119 = phi i64 [ %i.ap, %bb.n ], [ 0, %.preheader100 ] ; 4 uses
  %.066118 = phi i64 [ %i.ao, %bb.n ], [ %i.d, %.preheader100 ] ; 2 uses
  %.067117 = phi ptr [ %i.al, %bb.n ], [ %i.b, %.preheader100 ] ; 2 uses
  %.068116 = phi ptr [ %i.aj, %bb.n ], [ %2, %.preheader100 ] ; 2 uses
  %i.g = getelementptr i8, ptr %.061120, i64 24   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50   ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !51, !range !52, !noundef !53
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %.preheader, label %bb.f

.preheader:                                       ; preds = %.lr.ph121
  %i.k = getelementptr inbounds nuw i8, ptr %.061120, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !54   ; 2 uses
  %.not123 = icmp eq i64 %i.l, 0
  br i1 %.not123, label %.thread93, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %.064115 = phi i64 [ %i.t, %bb.e ], [ 0, %.preheader ] ; 3 uses
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %.064115 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !55   ; 2 uses
  %i.p = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.o) #16
  %i.q = icmp eq i64 %i.p, %.066118
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.r = tail call i32 @strncmp(ptr noundef nonnull %.068116, ptr noundef nonnull %i.o, i64 noundef %.066118) #16
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.t = add nuw i64 %.064115, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %i.l
  br i1 %exitcond.not, label %.thread93, label %.lr.ph, !llvm.loop !56

.loopexit:                                        ; preds = %bb.d
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.065119
  store i64 %.064115, ptr %i.u, align 8, !tbaa !11
  %.not99 = icmp eq ptr %i.m, %.061120
  br i1 %.not99, label %.thread93, label %bb.i

bb.f:                                             ; preds = %.lr.ph121
  %i.v = tail call i64 @je_malloc_strtoumax(ptr noundef nonnull %.068116, ptr noundef null, i32 noundef 10) #15 ; 3 uses
  %i.w = icmp eq i64 %i.v, -1
  br i1 %i.w, label %.thread93, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !57
  %i.aa = load i64, ptr %5, align 8, !tbaa !11
  %i.ab = tail call ptr %i.z(ptr noundef %0, ptr noundef %4, i64 noundef %i.aa, i64 noundef %i.v) #15 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.thread93, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.065119
  store i64 %i.v, ptr %i.ad, align 8, !tbaa !11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit
  %.5 = phi ptr [ %i.m, %.loopexit ], [ %i.ab, %bb.h ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.5, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !16
  %.not83.a = icmp eq ptr %i.af, null
  %i.ag = load i8, ptr %.067117, align 1, !tbaa !59
  %i.ah = icmp eq i8 %i.ag, 0                     ; 2 uses
  br i1 %.not83.a, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %i.ah, label %.thread96, label %bb.l

bb.k:                                             ; preds = %bb.i
  br i1 %i.ah, label %.thread96, label %.thread93

.thread96:                                        ; preds = %bb.j, %bb.k
  %i.ai = add i64 %.065119, 1
  store i64 %i.ai, ptr %5, align 8, !tbaa !11
  br label %.loopexit101

bb.l:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %.067117, i64 1 ; 5 uses
  %i.ak = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.aj, i32 noundef 46) #16 ; 2 uses
  %.not84 = icmp eq ptr %i.ak, null
  br i1 %.not84, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %strlen85 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.aj)
  %strchr86 = getelementptr inbounds i8, ptr %i.aj, i64 %strlen85
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.al = phi ptr [ %strchr86, %bb.m ], [ %i.ak, %bb.l ] ; 2 uses
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = add nuw i64 %.065119, 1                 ; 2 uses
  %i.aq = load i64, ptr %5, align 8, !tbaa !11
  %i.ar = icmp ult i64 %i.ap, %i.aq
  br i1 %i.ar, label %.lr.ph121, label %.loopexit101, !llvm.loop !60

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
  br i1 %i.a, label %ctl_lookupbymib.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.g
  %.02340.i = phi i64 [ %i.n, %bb.g ], [ 0, %bb.c ] ; 2 uses
  %.02439.i = phi ptr [ %.125.i, %bb.g ], [ @super_root_node, %bb.c ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.02439.i, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50   ; 3 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !51, !range !52, !noundef !53
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02340.i
  %i.g = load i64, ptr %i.f, align 8, !tbaa !11   ; 3 uses
  br i1 %i.e, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.02439.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !54
  %.not33.i = icmp ugt i64 %i.i, %i.g
  br i1 %.not33.i, label %bb.e, label %ctl_lookupbymib.exit

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %i.g
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !57
  %i.m = tail call ptr %i.l(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef %i.g) #15, !inline_history !61 ; 2 uses
  %.not32.i = icmp eq ptr %i.m, null
  br i1 %.not32.i, label %ctl_lookupbymib.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.125.i = phi ptr [ %i.j, %bb.e ], [ %i.m, %bb.f ] ; 3 uses
  %i.n = add nuw i64 %.02340.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.n, %2
  br i1 %exitcond.not.i, label %bb.h, label %.lr.ph.i, !llvm.loop !62

bb.h:                                             ; preds = %bb.g
  %.not15 = icmp eq ptr %.125.i, null
  br i1 %.not15, label %ctl_lookupbymib.exit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.h
end_hunk_0
begin_hunk_1_@experimental_arenas_i_index:bb.a
bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !27
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 40), align 8, !tbaa !28
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 40), align 8, !tbaa !28
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  switch i64 %3, label %bb.f [
    i64 4096, label %ctl_arenas_i_verify.exit
    i64 4097, label %bb.e
  ]

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  br label %ctl_arenas_i_verify.exit

bb.f:                                             ; preds = %malloc_mutex_lock.exit
  %i.g = load ptr, ptr @ctl_arenas, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !44
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %i.k = icmp eq i64 %3, %i.j
  br i1 %i.k, label %ctl_arenas_i_verify.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i3 = icmp uge i64 %3, %i.j
  %i.l = trunc nuw i64 %3 to i32
  %i.m = add i32 %i.l, 2                          ; 2 uses
  %i.n = icmp eq i32 %i.m, -1
  %or.cond.i = select i1 %.not.i.i3, i1 true, i1 %i.n
  br i1 %or.cond.i, label %ctl_arenas_i_verify.exit.thread, label %ctl_arenas_i_verify.exit

ctl_arenas_i_verify.exit:                         ; preds = %malloc_mutex_lock.exit, %bb.e, %bb.f, %bb.g
  %.0.i5.i = phi i32 [ %i.m, %bb.g ], [ 1, %bb.e ], [ 0, %bb.f ], [ 0, %malloc_mutex_lock.exit ]
  %i.o = zext i32 %.0.i5.i to i64
  %i.p = load ptr, ptr @ctl_arenas, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.o
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load i8, ptr %i.t, align 4, !tbaa !40, !range !52, !noundef !53
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.h, label %ctl_arenas_i_verify.exit.thread

ctl_arenas_i_verify.exit.thread:                  ; preds = %bb.g, %ctl_arenas_i_verify.exit
  br label %bb.h

bb.h:                                             ; preds = %ctl_arenas_i_verify.exit, %ctl_arenas_i_verify.exit.thread
  %i.w = phi ptr [ null, %ctl_arenas_i_verify.exit.thread ], [ @super_experimental_arenas_i_node, %ctl_arenas_i_verify.exit ]
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 104) monotonic, align 8
  %i.x = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64)) #15 ; 0 uses
  ret ptr %i.w
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 23) i32 @experimental_arenas_i_pactivep_ctl(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef readnone captures(address_is_null) %5, i64 noundef %6) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = icmp eq ptr %3, null
  %i.c = icmp eq ptr %4, null
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %4, align 8, !tbaa !11
  %.not = icmp eq i64 %i.d, 8
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64)) #15
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @ctl_mtx) #15
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 104) monotonic, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !22
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !22
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !27
  %.not.i.i = icmp eq ptr %i.h, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !27
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 40), align 8, !tbaa !28
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 40), align 8, !tbaa !28
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.e, %bb.f
  %i.k = icmp ne ptr %5, null
  %i.l = icmp ne i64 %6, 0
  %or.cond3 = or i1 %i.k, %i.l
  br i1 %or.cond3, label %arena_get.exit.thread, label %bb.g

bb.g:                                             ; preds = %malloc_mutex_lock.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !11   ; 3 uses
  %i.o = icmp ugt i64 %i.n, 4294967295
  br i1 %i.o, label %arena_get.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = trunc nuw i64 %i.n to i32
  %i.q = tail call i32 @je_narenas_total_get() #15
  %i.r = icmp ugt i32 %i.q, %i.p
  br i1 %i.r, label %bb.i, label %arena_get.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.n
  %i.t = load atomic ptr, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %arena_get.exit.thread, label %arena_get.exit, !prof !158

arena_get.exit:                                   ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 10656 ; 2 uses
  store ptr %i.v, ptr %i.a, align 8, !tbaa !159
  %i.w = load i64, ptr %4, align 8, !tbaa !11     ; 2 uses
  %.not39 = icmp eq i64 %i.w, 8
  br i1 %.not39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %arena_get.exit
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.w, i64 8) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 8 %i.a, i64 %spec.select, i1 false)
  store i64 %spec.select, ptr %4, align 8, !tbaa !11
  br label %arena_get.exit.thread

bb.k:                                             ; preds = %arena_get.exit
  store ptr %i.v, ptr %3, align 8, !tbaa !159
  br label %arena_get.exit.thread

arena_get.exit.thread:                            ; preds = %bb.i, %bb.h, %bb.g, %malloc_mutex_lock.exit, %bb.j, %bb.k
  %.0 = phi i32 [ 14, %bb.g ], [ 1, %malloc_mutex_lock.exit ], [ 22, %bb.j ], [ 0, %bb.k ], [ 14, %bb.h ], [ 14, %bb.i ]
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 104) monotonic, align 8
  %i.x = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64)) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.b, %arena_get.exit.thread
  %.1 = phi i32 [ %.0, %arena_get.exit.thread ], [ 22, %bb.b ], [ 22, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @experimental_prof_recent_alloc_max_ctl(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, ptr nofree readnone captures(none) %5, i64 %6) #3 {
bb.a:
  ret i32 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @experimental_prof_recent_alloc_dump_ctl(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, ptr nofree readnone captures(none) %5, i64 %6) #3 {
bb.a:
  ret i32 2
}

declare i64 @je_batch_alloc(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 0, 23) i32 @experimental_thread_activity_callback_ctl(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef readonly captures(address_is_null) %5, i64 noundef %6) #9 {
bb.a:
  %.sroa.0 = alloca <2 x ptr>, align 16           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.b = load <2 x ptr>, ptr %i.a, align 8, !tbaa !194
  store <2 x ptr> %i.b, ptr %.sroa.0, align 16
  %i.c = icmp ne ptr %3, null
  %i.d = icmp ne ptr %4, null
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %4, align 8, !tbaa !11     ; 2 uses
  %.not = icmp eq i64 %i.e, 16
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.e, i64 16) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 16 %.sroa.0, i64 %spec.select, i1 false)
  store i64 %spec.select, ptr %4, align 8, !tbaa !11
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %.sroa.0.0..sroa.0.0.copyload = load <2 x ptr>, ptr %.sroa.0, align 16
  store <2 x ptr> %.sroa.0.0..sroa.0.0.copyload, ptr %3, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.not26 = icmp eq ptr %5, null
  br i1 %.not26, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not27 = icmp eq i64 %6, 16
  br i1 %.not27, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f
  %i.f = load <2 x ptr>, ptr %5, align 8, !tbaa !194
  store <2 x ptr> %i.f, ptr %i.a, align 8, !tbaa !194
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %.thread, %bb.f, %bb.c
  %.1 = phi i32 [ 22, %bb.c ], [ 22, %bb.f ], [ 0, %.thread ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret i32 %.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 _ZTS16ctl_named_node_s", !15, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!17, !15, i64 32}
!17 = !{!"ctl_named_node_s", !18, i64 0, !20, i64 8, !12, i64 16, !21, i64 24, !15, i64 32}
!18 = !{!"ctl_node_s", !19, i64 0}
!19 = !{!"_Bool", !9, i64 0}
!20 = !{!"p1 omnipotent char", !15, i64 0}
!21 = !{!"p1 _ZTS10ctl_node_s", !15, i64 0}
!22 = !{!23, !12, i64 56}
!23 = !{!"", !24, i64 0, !24, i64 8, !12, i64 16, !12, i64 24, !8, i64 32, !25, i64 36, !12, i64 40, !26, i64 48, !12, i64 56}
!24 = !{!"", !12, i64 0}
!25 = !{!"", !8, i64 0}
!26 = !{!"p1 _ZTS6tsdn_s", !15, i64 0}
!27 = !{!23, !26, i64 48}
!28 = !{!23, !12, i64 40}
!29 = !{!30, !30, i64 0}
!30 = !{!"p1 _ZTS12ctl_arenas_s", !15, i64 0}
!31 = !{!32, !32, i64 0}
!32 = !{!"p1 _ZTS11ctl_stats_s", !15, i64 0}
!33 = !{!34, !34, i64 0}
!34 = !{!"p1 _ZTS11ctl_arena_s", !15, i64 0}
!35 = !{!36, !38, i64 80}
!36 = !{!"ctl_arena_s", !8, i64 0, !19, i64 4, !37, i64 8, !8, i64 24, !20, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !38, i64 80}
!37 = !{!"", !34, i64 0, !34, i64 8}
!38 = !{!"p1 _ZTS17ctl_arena_stats_s", !15, i64 0}
!39 = !{!36, !8, i64 0}
!40 = !{!36, !19, i64 4}
!41 = !{!36, !8, i64 24}
!42 = !{!20, !20, i64 0}
!43 = !{!36, !20, i64 32}
!44 = !{!45, !8, i64 8}
!45 = !{!"ctl_arenas_s", !12, i64 0, !8, i64 8, !46, i64 16, !9, i64 24}
!46 = !{!"", !34, i64 0}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!45, !34, i64 16}
!50 = !{!17, !21, i64 24}
!51 = !{!18, !19, i64 0}
!52 = !{i8 0, i8 2}
!53 = !{}
!54 = !{!17, !12, i64 16}
!55 = !{!17, !20, i64 8}
!56 = distinct !{!56, !48}
!57 = !{!58, !15, i64 8}
!58 = !{!"ctl_indexed_node_s", !18, i64 0, !15, i64 8}
!59 = !{!9, !9, i64 0}
!60 = distinct !{!60, !48}
!61 = distinct !{null}
!62 = distinct !{!62, !48}
!63 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!64 = !{!65, !65, i64 0}
!65 = !{!"p1 _ZTS7arena_s", !15, i64 0}
!66 = distinct !{!66, !48}
!67 = distinct !{!67, !48}
!68 = !{!69, !12, i64 10368}
!69 = !{!"ctl_arena_stats_s", !70, i64 0, !12, i64 10368, !12, i64 10376, !12, i64 10384, !12, i64 10392, !12, i64 10400, !12, i64 10408, !9, i64 10416, !9, i64 16032, !9, i64 25440, !75, i64 34992, !78, i64 38192}
!70 = !{!"arena_stats_s", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !24, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !71, i64 88, !12, i64 168, !12, i64 176, !9, i64 184, !9, i64 952, !24, i64 10360}
!71 = !{!"pa_shard_stats_s", !12, i64 0, !72, i64 8}
!72 = !{!"pac_stats_s", !73, i64 0, !73, i64 24, !12, i64 48, !24, i64 56, !24, i64 64}
!73 = !{!"pac_decay_stats_s", !74, i64 0, !74, i64 8, !74, i64 16}
!74 = !{!"locked_u64_s", !24, i64 0}
!75 = !{!"hpa_shard_stats_s", !76, i64 0, !77, i64 3168}
!76 = !{!"psset_stats_s", !9, i64 0, !9, i64 3072, !9, i64 3120}
!77 = !{!"hpa_shard_nonderived_stats_s", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!78 = !{!"sec_stats_s", !12, i64 0}
!79 = !{!69, !12, i64 40}
!80 = !{!81, !12, i64 0}
!81 = !{!"ctl_stats_s", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !82, i64 56, !9, i64 144}
!82 = !{!"background_thread_stats_s", !12, i64 0, !12, i64 8, !24, i64 16, !23, i64 24}
!83 = !{!36, !12, i64 56}
!84 = !{!81, !12, i64 8}
!85 = !{!69, !12, i64 0}
!86 = !{!81, !12, i64 16}
!87 = !{!69, !12, i64 24}
!88 = !{!81, !12, i64 40}
!89 = !{!69, !12, i64 144}
!90 = !{!81, !12, i64 48}
!91 = !{i64 0, i64 8, !11, i64 8, i64 8, !11, i64 16, i64 8, !11, i64 24, i64 8, !11, i64 32, i64 4, !7, i64 36, i64 4, !7, i64 40, i64 8, !11, i64 48, i64 8, !92, i64 56, i64 8, !11}
!92 = !{!26, !26, i64 0}
!93 = !{!45, !12, i64 0}
!94 = !{!69, !12, i64 10392}
!95 = !{!96, !12, i64 24}
!96 = !{!"bin_stats_s", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72}
!97 = !{!96, !12, i64 16}
!98 = distinct !{!98, !48}
!99 = !{!36, !12, i64 72}
!100 = !{!69, !12, i64 88}
!101 = !{!23, !8, i64 32}
!102 = !{!69, !12, i64 16}
!103 = !{!69, !12, i64 10408}
!104 = distinct !{!104, !48}
!105 = distinct !{!105, !48}
!106 = !{!107, !12, i64 40}
!107 = !{!"arena_stats_large_s", !74, i64 0, !74, i64 8, !74, i64 16, !74, i64 24, !74, i64 32, !12, i64 40}
!108 = !{!109, !12, i64 16}
!109 = !{!"pac_estats_s", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40}
!110 = !{!109, !12, i64 32}
!111 = !{!109, !12, i64 24}
!112 = !{!109, !12, i64 40}
!113 = distinct !{!113, !48}
!114 = !{!78, !12, i64 0}
!115 = !{!19, !19, i64 0}
!116 = !{!117, !8, i64 78928}
!117 = !{!"arena_s", !9, i64 0, !25, i64 8, !26, i64 16, !70, i64 24, !118, i64 10392, !120, i64 10400, !122, i64 10408, !25, i64 10520, !123, i64 10528, !122, i64 10536, !126, i64 10648, !8, i64 78928, !133, i64 78936, !24, i64 78944, !9, i64 78952}
!118 = !{!"", !119, i64 0}
!119 = !{!"p1 _ZTS13tcache_slow_s", !15, i64 0}
!120 = !{!"", !121, i64 0}
!121 = !{!"p1 _ZTS28cache_bin_array_descriptor_s", !15, i64 0}
!122 = !{!"malloc_mutex_s", !9, i64 0}
!123 = !{!"", !124, i64 0}
!124 = !{!"", !125, i64 0}
!125 = !{!"p1 _ZTS7edata_s", !15, i64 0}
!126 = !{!"pa_shard_s", !127, i64 0, !24, i64 8, !128, i64 16, !19, i64 17, !129, i64 24, !141, i64 62264, !145, i64 62384, !154, i64 68096, !8, i64 68240, !139, i64 68248, !157, i64 68256, !134, i64 68264, !133, i64 68272}
!127 = !{!"p1 _ZTS12pa_central_s", !15, i64 0}
!128 = !{!"", !19, i64 0}
!129 = !{!"pac_s", !130, i64 0, !131, i64 56, !131, i64 19496, !131, i64 38936, !133, i64 58376, !134, i64 58384, !135, i64 58392, !136, i64 58400, !122, i64 58408, !137, i64 58520, !24, i64 58640, !138, i64 58648, !138, i64 60432, !139, i64 62216, !140, i64 62224, !24, i64 62232}
!130 = !{!"pai_s", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48}
!131 = !{!"ecache_s", !122, i64 0, !132, i64 112, !132, i64 9768, !8, i64 19424, !8, i64 19428, !19, i64 19432}
!132 = !{!"eset_s", !9, i64 0, !9, i64 32, !9, i64 6432, !123, i64 9632, !24, i64 9640, !8, i64 9648}
!133 = !{!"p1 _ZTS6base_s", !15, i64 0}
!134 = !{!"p1 _ZTS6emap_s", !15, i64 0}
!135 = !{!"p1 _ZTS13edata_cache_s", !15, i64 0}
!136 = !{!"exp_grow_s", !8, i64 0, !8, i64 4}
!137 = !{!"san_bump_alloc_s", !122, i64 0, !125, i64 112}
!138 = !{!"decay_s", !122, i64 0, !19, i64 112, !24, i64 120, !24, i64 128, !24, i64 136, !12, i64 144, !24, i64 152, !12, i64 160, !12, i64 168, !9, i64 176, !12, i64 1776}
!139 = !{!"p1 _ZTS14malloc_mutex_s", !15, i64 0}
!140 = !{!"p1 _ZTS11pac_stats_s", !15, i64 0}
!141 = !{!"sec_s", !130, i64 0, !142, i64 56, !143, i64 64, !144, i64 104, !8, i64 112}
!142 = !{!"p1 _ZTS5pai_s", !15, i64 0}
!143 = !{!"sec_opts_s", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32}
!144 = !{!"p1 _ZTS11sec_shard_s", !15, i64 0}
!145 = !{!"hpa_shard_s", !130, i64 0, !146, i64 56, !122, i64 64, !122, i64 176, !133, i64 288, !147, i64 296, !148, i64 320, !12, i64 5600, !8, i64 5608, !134, i64 5616, !153, i64 5624, !12, i64 5664, !77, i64 5672, !24, i64 5704}
!146 = !{!"p1 _ZTS13hpa_central_s", !15, i64 0}
!147 = !{!"edata_cache_fast_s", !123, i64 0, !135, i64 8, !19, i64 16}
!148 = !{!"psset_s", !9, i64 0, !9, i64 1024, !149, i64 1032, !76, i64 1056, !150, i64 4224, !9, i64 4232, !9, i64 5256, !150, i64 5272}
!149 = !{!"psset_bin_stats_s", !12, i64 0, !12, i64 8, !12, i64 16}
!150 = !{!"", !151, i64 0}
!151 = !{!"", !152, i64 0}
!152 = !{!"p1 _ZTS8hpdata_s", !15, i64 0}
!153 = !{!"hpa_shard_opts_s", !12, i64 0, !12, i64 8, !8, i64 16, !19, i64 20, !12, i64 24, !12, i64 32}
!154 = !{!"edata_cache_s", !155, i64 0, !24, i64 16, !122, i64 24, !133, i64 136}
!155 = !{!"", !156, i64 0}
!156 = !{!"ph_s", !15, i64 0, !12, i64 8}
!157 = !{!"p1 _ZTS16pa_shard_stats_s", !15, i64 0}
!158 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!159 = !{!160, !160, i64 0}
!160 = !{!"p1 long", !15, i64 0}
!161 = !{!162, !65, i64 40}
!162 = !{!"tcache_slow_s", !163, i64 0, !164, i64 16, !65, i64 40, !8, i64 48, !9, i64 52, !9, i64 91, !9, i64 130, !15, i64 176, !167, i64 184}
!163 = !{!"", !119, i64 0, !119, i64 8}
end_hunk_1
