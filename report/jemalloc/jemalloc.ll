Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/jemalloc?download=true
inline.NumInlined: 639
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@je_iarena_cleanup:bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 80640
  %.val = load i32, ptr %i.c, align 64, !tbaa !96
  %i.d = zext i32 %.val to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.d
  %i.f = load atomic ptr, ptr %i.e acquire, align 8
  tail call void @je_arena_nthreads_dec(ptr noundef %i.f, i1 noundef zeroext true) #20
  store ptr null, ptr %i.a, align 8, !tbaa !50
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_arena_cleanup(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 80640
  %.val = load i32, ptr %i.c, align 64, !tbaa !96
  %i.d = zext i32 %.val to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.d
  %i.f = load atomic ptr, ptr %i.e acquire, align 8
  tail call void @je_arena_nthreads_dec(ptr noundef %i.f, i1 noundef zeroext false) #20
  store ptr null, ptr %i.a, align 8, !tbaa !50
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: noinline nounwind uwtable
define hidden ptr @je_malloc_default(i64 noundef %0) local_unnamed_addr #6 {
bb.a:
  %1 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %2 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca [3 x i64], align 16               ; 5 uses
  %i.d = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 920
  %i.f = load i8, ptr %i.e, align 8, !tbaa !24
  %.not.i84 = icmp eq i8 %i.f, 0
  br i1 %.not.i84, label %tsd_fetch_impl.exit.thread, label %tsd_fetch_impl.exit, !prof !23

tsd_fetch_impl.exit:                              ; preds = %bb.a
  %i.g = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.d, i1 noundef zeroext false) #20 ; 21 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 920
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !24
  %i.h = icmp eq i8 %.pre, 0
  br i1 %i.h, label %tsd_fetch_impl.exit.thread, label %bb.ag, !prof !100

tsd_fetch_impl.exit.thread:                       ; preds = %bb.a, %tsd_fetch_impl.exit
  %.0.i85305 = phi ptr [ %i.g, %tsd_fetch_impl.exit ], [ %i.d, %bb.a ] ; 17 uses
  %i.i = icmp ult i64 %0, 4097                    ; 3 uses
  br i1 %i.i, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %tsd_fetch_impl.exit.thread
  %i.j = add nuw nsw i64 %0, 7
  %i.k = lshr i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !24
  %i.n = zext i8 %i.m to i32
  br label %sz_size2index.exit.i

bb.c:                                             ; preds = %tsd_fetch_impl.exit.thread
  %i.o = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.o, label %sz_size2index.exit.i.thread, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.p = shl nuw i64 %0, 1
  %i.q = add i64 %i.p, -1
  %i.r = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.q, i1 true) ; 3 uses
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = sub nuw nsw i64 60, %i.r
  %i.u = ashr exact i64 -1152921504606846976, %i.r
  %i.v = add nsw i64 %0, -1
  %i.w = and i64 %i.u, %i.v
  %i.x = lshr i64 %i.w, %i.t
  %i.y = trunc i64 %i.x to i32
  %i.z = and i32 %i.y, 3
  %i.aa = shl nuw nsw i32 %i.s, 2
  %reass.sub291 = sub nsw i32 %i.z, %i.aa
  %i.ab = add nsw i32 %reass.sub291, 229
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.d, %bb.b
  %.0.i50.i = phi i32 [ %i.n, %bb.b ], [ %i.ab, %bb.d ] ; 10 uses
  %i.ac = icmp samesign ugt i32 %.0.i50.i, 231
  br i1 %i.ac, label %sz_size2index.exit.i.thread, label %bb.e, !prof !101

bb.e:                                             ; preds = %sz_size2index.exit.i
  %i.ad = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !40, !range !38, !noundef !39
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  br i1 %i.i, label %bb.g, label %bb.h, !prof !23

bb.g:                                             ; preds = %bb.f
  %i.af = add nuw nsw i64 %0, 7
  %i.ag = lshr i64 %i.af, 3
  %i.ah = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !24
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !41
  br label %iallocztm_explicit_slab.exit.i46

bb.h:                                             ; preds = %bb.f
  %i.am = icmp samesign ult i64 %0, 14337
  br i1 %i.am, label %bb.i, label %iallocztm_explicit_slab.exit.i46.thread

bb.i:                                             ; preds = %bb.h
  %i.an = shl nuw nsw i64 %0, 1
  %i.ao = add nsw i64 %i.an, -1
  %i.ap = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.ao, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.ap
  %i.aq = lshr i64 1152921504606846975, %i.ap
  %i.ar = add nuw nsw i64 %0, %i.aq
  %i.as = and i64 %i.ar, %notmask.i.i
  br label %iallocztm_explicit_slab.exit.i46

iallocztm_explicit_slab.exit.i46.thread:          ; preds = %bb.h
  %i.at = add nuw nsw i64 %0, 4095
  %i.au = and i64 %i.at, 9223372036854771712
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i85305, i64 960
  br label %bb.r

bb.j:                                             ; preds = %bb.e
  %i.aw = zext nneg i32 %.0.i50.i to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !41
  br label %iallocztm_explicit_slab.exit.i46

iallocztm_explicit_slab.exit.i46:                 ; preds = %bb.j, %bb.g, %bb.i
  %.0217.ph = phi i64 [ %i.as, %bb.i ], [ %i.al, %bb.g ], [ %i.ay, %bb.j ] ; 4 uses
  %i.az = icmp ult i64 %.0217.ph, 14337
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i85305, i64 960 ; 3 uses
  br i1 %i.az, label %bb.k, label %bb.r, !prof !102

bb.k:                                             ; preds = %iallocztm_explicit_slab.exit.i46
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i85305, i64 968
  %i.bc = zext nneg i32 %.0.i50.i to i64
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %i.bc ; 9 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !108 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !109 ; 2 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %i.bj = load i16, ptr %i.bi, align 8, !tbaa !110 ; 2 uses
  %i.bk = trunc i64 %i.bg to i16
  %.not.i26.i64 = icmp eq i16 %i.bj, %i.bk
  br i1 %.not.i26.i64, label %bb.m, label %bb.l, !prof !21

bb.l:                                             ; preds = %bb.k
  store ptr %i.bh, ptr %i.bd, align 8, !tbaa !108
  br label %cache_bin_alloc_impl.exit.i65.thread

bb.m:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 20
  %i.bm = load i16, ptr %i.bl, align 4, !tbaa !111
  %.not21.i.i74 = icmp eq i16 %i.bm, %i.bj
  br i1 %.not21.i.i74, label %cache_bin_alloc_impl.exit.i65, label %bb.n, !prof !21

bb.n:                                             ; preds = %bb.m
  store ptr %i.bh, ptr %i.bd, align 8, !tbaa !108
  %i.bn = ptrtoint ptr %i.bh to i64
  %i.bo = trunc i64 %i.bn to i16
  store i16 %i.bo, ptr %i.bi, align 8, !tbaa !110
  br label %cache_bin_alloc_impl.exit.i65.thread

cache_bin_alloc_impl.exit.i65:                    ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.bp = tail call fastcc ptr @arena_choose(ptr noundef nonnull %.0.i85305, ptr noundef null) ; 3 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %.thread, label %bb.o, !prof !21

bb.o:                                             ; preds = %cache_bin_alloc_impl.exit.i65
  %.val = load ptr, ptr %i.bd, align 8, !tbaa !108
  %i.br = icmp eq ptr %.val, @je_disabled_bin
  br i1 %i.br, label %bb.p, label %bb.q, !prof !21

bb.p:                                             ; preds = %bb.o
  %i.bs = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %.0.i85305, ptr noundef nonnull %i.bp, i64 noundef %0, i32 noundef %.0.i50.i, i1 noundef zeroext false, i1 noundef zeroext true) #20
  br label %.thread

.thread:                                          ; preds = %cache_bin_alloc_impl.exit.i65, %bb.p
  %.0.i24.i70.ph = phi ptr [ %i.bs, %bb.p ], [ null, %cache_bin_alloc_impl.exit.i65 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %imalloc_no_sample.exit78

bb.q:                                             ; preds = %bb.o
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i85305, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bd, i32 noundef %.0.i50.i, i1 noundef zeroext true) #20
  %i.bt = call ptr @je_tcache_alloc_small_hard(ptr noundef nonnull %.0.i85305, ptr noundef nonnull %i.bp, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bd, i32 noundef %.0.i50.i, ptr noundef nonnull %i.a) #20
  %i.bu = load i8, ptr %i.a, align 1, !tbaa !40, !range !38, !noundef !39
  %3 = trunc nuw i8 %i.bu to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br i1 %3, label %cache_bin_alloc_impl.exit.i65.thread, label %sz_size2index.exit.i.thread

cache_bin_alloc_impl.exit.i65.thread:             ; preds = %bb.n, %bb.l, %bb.q
  %.132.i.i73 = phi ptr [ %i.bt, %bb.q ], [ %i.bf, %bb.l ], [ %i.bf, %bb.n ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !112
  %i.bx = add i64 %i.bw, 1
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !112
  br label %imalloc_no_sample.exit78

bb.r:                                             ; preds = %iallocztm_explicit_slab.exit.i46.thread, %iallocztm_explicit_slab.exit.i46
  %i.by = phi ptr [ %i.av, %iallocztm_explicit_slab.exit.i46.thread ], [ %i.ba, %iallocztm_explicit_slab.exit.i46 ] ; 2 uses
  %.0217.ph311 = phi i64 [ %i.au, %iallocztm_explicit_slab.exit.i46.thread ], [ %.0217.ph, %iallocztm_explicit_slab.exit.i46 ] ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !114
  %i.ca = getelementptr i8, ptr %i.bz, i64 48
  %.val120 = load i32, ptr %i.ca, align 8, !tbaa !121
  %i.cb = icmp ult i32 %.0.i50.i, %.val120
  br i1 %i.cb, label %bb.s, label %.critedge.i.i48, !prof !23

bb.s:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i85305, i64 968
  %i.cd = zext nneg i32 %.0.i50.i to i64
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.cd ; 7 uses
  %.val115.a = load ptr, ptr %i.ce, align 8, !tbaa !108 ; 4 uses
  %.not287 = icmp eq ptr %.val115.a, @je_disabled_bin
  br i1 %.not287, label %.critedge.i.i48, label %bb.t, !prof !21

bb.t:                                             ; preds = %bb.s
  %i.cf = load ptr, ptr %.val115.a, align 8, !tbaa !109 ; 2 uses
  %i.cg = ptrtoint ptr %.val115.a to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %.val115.a, i64 8 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  %i.cj = load i16, ptr %i.ci, align 8, !tbaa !110 ; 2 uses
  %i.ck = trunc i64 %i.cg to i16
  %.not.i28.i52 = icmp eq i16 %i.cj, %i.ck
  br i1 %.not.i28.i52, label %bb.v, label %bb.u, !prof !21

bb.u:                                             ; preds = %bb.t
  store ptr %i.ch, ptr %i.ce, align 8, !tbaa !108
  br label %bb.ac

bb.v:                                             ; preds = %bb.t
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 20
  %i.cm = load i16, ptr %i.cl, align 4, !tbaa !111
  %.not21.i30.i63 = icmp eq i16 %i.cm, %i.cj
  br i1 %.not21.i30.i63, label %cache_bin_alloc_impl.exit31.i53, label %bb.w, !prof !21

bb.w:                                             ; preds = %bb.v
  store ptr %i.ch, ptr %i.ce, align 8, !tbaa !108
  %i.cn = ptrtoint ptr %i.ch to i64
  %i.co = trunc i64 %i.cn to i16
  store i16 %i.co, ptr %i.ci, align 8, !tbaa !110
  br label %bb.ac

cache_bin_alloc_impl.exit31.i53:                  ; preds = %bb.v
  %i.cp = tail call fastcc ptr @arena_choose(ptr noundef nonnull %.0.i85305, ptr noundef null) ; 2 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %sz_size2index.exit.i.thread, label %bb.x, !prof !21

bb.x:                                             ; preds = %cache_bin_alloc_impl.exit31.i53
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i85305, ptr noundef nonnull %i.by, ptr noundef nonnull %i.ce, i32 noundef %.0.i50.i, i1 noundef zeroext false) #20
  br i1 %i.i, label %bb.y, label %bb.z, !prof !23

bb.y:                                             ; preds = %bb.x
  %i.cr = add nuw nsw i64 %0, 7
  %i.cs = lshr i64 %i.cr, 3
  %i.ct = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !24
  %i.cv = zext i8 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.cv
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !41
  br label %sz_s2u.exit.i58

bb.z:                                             ; preds = %bb.x
  %i.cy = icmp samesign ugt i64 %0, 14336
  %i.cz = load i8, ptr @je_opt_disable_large_size_classes, align 1, !range !38
  %i.da = trunc nuw i8 %i.cz to i1
  %or.cond = select i1 %i.cy, i1 %i.da, i1 false
  br i1 %or.cond, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.db = shl nuw i64 %0, 1
  %i.dc = add i64 %i.db, -1
  %i.dd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.dc, i1 true) ; 2 uses
  %notmask.i.i55 = ashr exact i64 -1152921504606846976, %i.dd
  %i.de = lshr i64 1152921504606846975, %i.dd
  %i.df = add nuw nsw i64 %0, %i.de
  %i.dg = and i64 %i.df, %notmask.i.i55
  br label %sz_s2u.exit.i58

bb.ab:                                            ; preds = %bb.z
  %i.dh = add nuw nsw i64 %0, 4095
  %i.di = and i64 %i.dh, 9223372036854771712
  br label %sz_s2u.exit.i58

sz_s2u.exit.i58:                                  ; preds = %bb.aa, %bb.ab, %bb.y
  %.0.i32.i59 = phi i64 [ %i.cx, %bb.y ], [ %i.dg, %bb.aa ], [ %i.di, %bb.ab ]
  %i.dj = tail call ptr @je_large_malloc(ptr noundef nonnull %.0.i85305, ptr noundef nonnull %i.cp, i64 noundef %.0.i32.i59, i1 noundef zeroext false) #20 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %sz_size2index.exit.i.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.w, %bb.u, %sz_s2u.exit.i58
  %.021.i.i60 = phi ptr [ %i.dj, %sz_s2u.exit.i58 ], [ %i.cf, %bb.w ], [ %i.cf, %bb.u ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !112
  %i.dn = add i64 %i.dm, 1
  store i64 %i.dn, ptr %i.dl, align 8, !tbaa !112
  br label %imalloc_no_sample.exit78

.critedge.i.i48:                                  ; preds = %bb.s, %bb.r
  %i.do = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %.0.i85305, ptr noundef null, i64 noundef %0, i32 noundef %.0.i50.i, i1 noundef zeroext false, i1 noundef zeroext false) #20
  br label %imalloc_no_sample.exit78

imalloc_no_sample.exit78:                         ; preds = %.critedge.i.i48, %.thread, %cache_bin_alloc_impl.exit.i65.thread, %bb.ac
  %.0217.ph310 = phi i64 [ %.0217.ph311, %.critedge.i.i48 ], [ %.0217.ph, %.thread ], [ %.0217.ph, %cache_bin_alloc_impl.exit.i65.thread ], [ %.0217.ph311, %bb.ac ] ; 2 uses
  %.0.i23.i50 = phi ptr [ %i.do, %.critedge.i.i48 ], [ %.0.i24.i70.ph, %.thread ], [ %.132.i.i73, %cache_bin_alloc_impl.exit.i65.thread ], [ %.021.i.i60, %bb.ac ] ; 2 uses
  %i.dp = icmp eq ptr %.0.i23.i50, null
  br i1 %i.dp, label %sz_size2index.exit.i.thread, label %bb.ad, !prof !122

bb.ad:                                            ; preds = %imalloc_no_sample.exit78
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store i8 1, ptr %1, align 8, !tbaa !125
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.i85305, i64 928 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !126
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i85305, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.ds, ptr %i.dt, align 8, !tbaa !127
  %i.du = getelementptr inbounds nuw i8, ptr %.0.i85305, i64 16 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !128
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.i85305, i64 936
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !129
  %i.dy = load i64, ptr %i.dq, align 8, !tbaa !41 ; 2 uses
  %i.dz = add i64 %i.dy, %.0217.ph310
  store i64 %i.dz, ptr %i.dq, align 8, !tbaa !41
  %i.ea = load i64, ptr %i.du, align 8, !tbaa !41
  %i.eb = sub i64 %i.ea, %i.dy
  %i.ec = icmp ult i64 %.0217.ph310, %i.eb
  br i1 %i.ec, label %bb.af, label %bb.ae, !prof !23

bb.ae:                                            ; preds = %bb.ad
  call void @je_te_event_trigger(ptr noundef nonnull %.0.i85305, ptr noundef nonnull %1) #20
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %imalloc.exit

sz_size2index.exit.i.thread:                      ; preds = %sz_s2u.exit.i58, %cache_bin_alloc_impl.exit31.i53, %bb.q, %bb.c, %imalloc_no_sample.exit78, %sz_size2index.exit.i
  %i.ed = tail call ptr @__errno_location() #22, !inline_history !6
  store i32 12, ptr %i.ed, align 4, !tbaa !20
  br label %imalloc.exit

bb.ag:                                            ; preds = %tsd_fetch_impl.exit
  %i.ee = load i32, ptr @je_malloc_init_state, align 4, !tbaa !20
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %bb.ai, label %bb.ah, !prof !23

bb.ah:                                            ; preds = %bb.ag
  %i.eg = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.eg, label %imalloc_init_check.exit, label %bb.ai, !prof !130

imalloc_init_check.exit:                          ; preds = %bb.ah
  %i.eh = tail call ptr @__errno_location() #22, !inline_history !6
  store i32 12, ptr %i.eh, align 4, !tbaa !20
  br label %imalloc.exit

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ei = load i8, ptr @je_opt_zero, align 1, !range !38
  %i.ej = trunc nuw i8 %i.ei to i1                ; 6 uses
  %i.ek = icmp ult i64 %0, 4097                   ; 3 uses
  br i1 %i.ek, label %bb.aj, label %bb.ak, !prof !23

bb.aj:                                            ; preds = %bb.ai
  %i.el = add nuw nsw i64 %0, 7
  %i.em = lshr i64 %i.el, 3
  %i.en = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !24
  %i.ep = zext i8 %i.eo to i32
  br label %sz_size2index.exit.i19

bb.ak:                                            ; preds = %bb.ai
  %i.eq = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.eq, label %sz_size2index.exit.i19.thread, label %bb.al, !prof !21

bb.al:                                            ; preds = %bb.ak
  %i.er = shl nuw i64 %0, 1
  %i.es = add i64 %i.er, -1
  %i.et = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.es, i1 true) ; 3 uses
  %i.eu = trunc nuw nsw i64 %i.et to i32
  %i.ev = sub nuw nsw i64 60, %i.et
  %i.ew = ashr exact i64 -1152921504606846976, %i.et
  %i.ex = add nsw i64 %0, -1
  %i.ey = and i64 %i.ew, %i.ex
  %i.ez = lshr i64 %i.ey, %i.ev
  %i.fa = trunc i64 %i.ez to i32
  %i.fb = and i32 %i.fa, 3
  %i.fc = shl nuw nsw i32 %i.eu, 2
  %reass.sub = sub nsw i32 %i.fb, %i.fc
  %i.fd = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit.i19

sz_size2index.exit.i19:                           ; preds = %bb.al, %bb.aj
  %.0.i50.i20 = phi i32 [ %i.ep, %bb.aj ], [ %i.fd, %bb.al ] ; 10 uses
  %i.fe = icmp samesign ugt i32 %.0.i50.i20, 231
  br i1 %i.fe, label %sz_size2index.exit.i19.thread, label %bb.am, !prof !131

bb.am:                                            ; preds = %sz_size2index.exit.i19
  %i.ff = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !40, !range !38, !noundef !39
  %i.fg = trunc nuw i8 %i.ff to i1
  br i1 %i.fg, label %bb.an, label %bb.as

bb.an:                                            ; preds = %bb.am
  br i1 %i.ek, label %bb.ao, label %bb.ap, !prof !23

bb.ao:                                            ; preds = %bb.an
  %i.fh = add nuw nsw i64 %0, 7
  %i.fi = lshr i64 %i.fh, 3
  %i.fj = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !24
  %i.fl = zext i8 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.fl
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !41
  br label %bb.at

bb.ap:                                            ; preds = %bb.an
  %i.fo = icmp samesign ult i64 %0, 14337
  br i1 %i.fo, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.fp = shl nuw nsw i64 %0, 1
  %i.fq = add nsw i64 %i.fp, -1
  %i.fr = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.fq, i1 true) ; 2 uses
  %notmask.i.i21 = ashr exact i64 -1152921504606846976, %i.fr
  %i.fs = lshr i64 1152921504606846975, %i.fr
  %i.ft = add nuw nsw i64 %0, %i.fs
  %i.fu = and i64 %i.ft, %notmask.i.i21
  br label %bb.at

bb.ar:                                            ; preds = %bb.ap
  %i.fv = add nuw nsw i64 %0, 4095
  %i.fw = and i64 %i.fv, 9223372036854771712
  br label %bb.at

bb.as:                                            ; preds = %bb.am
  %i.fx = zext nneg i32 %.0.i50.i20 to i64
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.fx
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !41
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ao, %bb.ar, %bb.aq
  %.0220.ph = phi i64 [ %i.fu, %bb.aq ], [ %i.fn, %bb.ao ], [ %i.fz, %bb.as ], [ %i.fw, %bb.ar ] ; 5 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !24
  %i.gc = icmp sgt i8 %i.gb, 0
  br i1 %i.gc, label %bb.av, label %bb.au, !prof !132

bb.au:                                            ; preds = %bb.at
  %i.gd = load i8, ptr %i.g, align 8, !tbaa !40, !range !38, !noundef !39
  %i.ge = trunc nuw i8 %i.gd to i1
  %i.gf = getelementptr inbounds nuw i8, ptr %i.g, i64 960 ; 4 uses
  br i1 %i.ge, label %bb.ax, label %iallocztm_explicit_slab.exit.i.thread

bb.av:                                            ; preds = %bb.at
  %i.gg = load atomic ptr, ptr @je_arenas acquire, align 64 ; 2 uses
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %arena_get.exit134, label %iallocztm_explicit_slab.exit.i.thread, !prof !21

arena_get.exit134:                                ; preds = %bb.av
  %i.gi = tail call ptr @je_arena_init(ptr noundef nonnull %i.g, i32 noundef 0, ptr noundef nonnull @je_arena_config_default), !inline_history !0 ; 2 uses
  %i.gj = icmp eq ptr %i.gi, null
  br i1 %i.gj, label %bb.aw, label %iallocztm_explicit_slab.exit.i.thread, !prof !22

bb.aw:                                            ; preds = %arena_get.exit134
  %i.gk = load i32, ptr @je_narenas_auto, align 4, !tbaa !20
  %.not.i.i.not = icmp eq i32 %i.gk, 0
  br i1 %.not.i.i.not, label %sz_size2index.exit.i19.thread, label %iallocztm_explicit_slab.exit.i.thread

iallocztm_explicit_slab.exit.i.thread:            ; preds = %bb.av, %arena_get.exit134, %bb.au, %bb.aw
  %.1224.ph.ph = phi ptr [ null, %bb.aw ], [ null, %bb.au ], [ %i.gi, %arena_get.exit134 ], [ %i.gg, %bb.av ]
  %.ph314.a = icmp ult i64 %.0220.ph, 14337
  br label %.critedge.i.i

bb.ax:                                            ; preds = %bb.au
  %.ph = icmp ult i64 %.0220.ph, 14337
  br i1 %.ph, label %bb.ay, label %bb.bh, !prof !23

bb.ay:                                            ; preds = %bb.ax
  %i.gl = getelementptr inbounds nuw i8, ptr %i.g, i64 968
  %i.gm = zext nneg i32 %.0.i50.i20 to i64        ; 2 uses
  %i.gn = getelementptr inbounds nuw [24 x i8], ptr %i.gl, i64 %i.gm ; 9 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !108 ; 3 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !109 ; 2 uses
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 8 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 16 ; 2 uses
  %i.gt = load i16, ptr %i.gs, align 8, !tbaa !110 ; 2 uses
  %i.gu = trunc i64 %i.gq to i16
  %.not.i26.i = icmp eq i16 %i.gt, %i.gu
  br i1 %.not.i26.i, label %bb.ba, label %bb.az, !prof !21

bb.az:                                            ; preds = %bb.ay
  store ptr %i.gr, ptr %i.gn, align 8, !tbaa !108
  br label %cache_bin_alloc_impl.exit.i.thread

bb.ba:                                            ; preds = %bb.ay
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gn, i64 20
  %i.gw = load i16, ptr %i.gv, align 4, !tbaa !111
  %.not21.i.i = icmp eq i16 %i.gw, %i.gt
  br i1 %.not21.i.i, label %cache_bin_alloc_impl.exit.i, label %bb.bb, !prof !21

bb.bb:                                            ; preds = %bb.ba
  store ptr %i.gr, ptr %i.gn, align 8, !tbaa !108
  %i.gx = ptrtoint ptr %i.gr to i64
  %i.gy = trunc i64 %i.gx to i16
  store i16 %i.gy, ptr %i.gs, align 8, !tbaa !110
  br label %cache_bin_alloc_impl.exit.i.thread

cache_bin_alloc_impl.exit.i:                      ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.gz = tail call fastcc ptr @arena_choose(ptr noundef nonnull %i.g, ptr noundef null) ; 3 uses
  %i.ha = icmp eq ptr %i.gz, null
  br i1 %i.ha, label %.thread271, label %bb.bc, !prof !21

bb.bc:                                            ; preds = %cache_bin_alloc_impl.exit.i
  %.val116.a = load ptr, ptr %i.gn, align 8, !tbaa !108
  %i.hb = icmp eq ptr %.val116.a, @je_disabled_bin
  br i1 %i.hb, label %bb.bd, label %bb.be, !prof !21

bb.bd:                                            ; preds = %bb.bc
  %i.hc = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %i.g, ptr noundef nonnull %i.gz, i64 noundef %0, i32 noundef %.0.i50.i20, i1 noundef zeroext %i.ej, i1 noundef zeroext true) #20
  br label %.thread271

.thread271:                                       ; preds = %cache_bin_alloc_impl.exit.i, %bb.bd
  %.0.i24.i.ph = phi ptr [ %i.hc, %bb.bd ], [ null, %cache_bin_alloc_impl.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %imalloc_no_sample.exit

bb.be:                                            ; preds = %bb.bc
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %i.g, ptr noundef nonnull %i.gf, ptr noundef nonnull %i.gn, i32 noundef %.0.i50.i20, i1 noundef zeroext true) #20
  %i.hd = call ptr @je_tcache_alloc_small_hard(ptr noundef nonnull %i.g, ptr noundef nonnull %i.gz, ptr noundef nonnull %i.gf, ptr noundef nonnull %i.gn, i32 noundef %.0.i50.i20, ptr noundef nonnull %i.b) #20
  %i.he = load i8, ptr %i.b, align 1, !tbaa !40, !range !38, !noundef !39
  %4 = trunc nuw i8 %i.he to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br i1 %4, label %cache_bin_alloc_impl.exit.i.thread, label %sz_size2index.exit.i19.thread

cache_bin_alloc_impl.exit.i.thread:               ; preds = %bb.bb, %bb.az, %bb.be
  %.132.i.i = phi ptr [ %i.hd, %bb.be ], [ %i.gp, %bb.az ], [ %i.gp, %bb.bb ] ; 2 uses
  br i1 %i.ej, label %bb.bf, label %bb.bg, !prof !21

bb.bf:                                            ; preds = %cache_bin_alloc_impl.exit.i.thread
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.gm
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !41
  call void @llvm.memset.p0.i64(ptr align 1 %.132.i.i, i8 0, i64 %i.hg, i1 false)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %cache_bin_alloc_impl.exit.i.thread
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !112
  %i.hj = add i64 %i.hi, 1
  store i64 %i.hj, ptr %i.hh, align 8, !tbaa !112
  br label %imalloc_no_sample.exit

bb.bh:                                            ; preds = %bb.ax
  %i.hk = load ptr, ptr %i.gf, align 8, !tbaa !114
  %i.hl = getelementptr i8, ptr %i.hk, i64 48
  %.val123 = load i32, ptr %i.hl, align 8, !tbaa !121
  %i.hm = icmp ult i32 %.0.i50.i20, %.val123
  br i1 %i.hm, label %bb.bi, label %.critedge.i.i, !prof !23

bb.bi:                                            ; preds = %bb.bh
  %i.hn = getelementptr inbounds nuw i8, ptr %i.g, i64 968
  %i.ho = zext nneg i32 %.0.i50.i20 to i64        ; 2 uses
  %i.hp = getelementptr inbounds nuw [24 x i8], ptr %i.hn, i64 %i.ho ; 7 uses
  %.val117 = load ptr, ptr %i.hp, align 8, !tbaa !108 ; 4 uses
  %.not = icmp eq ptr %.val117, @je_disabled_bin
  br i1 %.not, label %.critedge.i.i, label %bb.bj, !prof !21

bb.bj:                                            ; preds = %bb.bi
  %i.hq = load ptr, ptr %.val117, align 8, !tbaa !109 ; 3 uses
  %i.hr = ptrtoint ptr %.val117 to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %.val117, i64 8 ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hp, i64 16 ; 2 uses
  %i.hu = load i16, ptr %i.ht, align 8, !tbaa !110 ; 2 uses
  %i.hv = trunc i64 %i.hr to i16
  %.not.i28.i = icmp eq i16 %i.hu, %i.hv
  br i1 %.not.i28.i, label %bb.bl, label %bb.bk, !prof !21

bb.bk:                                            ; preds = %bb.bj
  store ptr %i.hs, ptr %i.hp, align 8, !tbaa !108
  br label %bb.bs

bb.bl:                                            ; preds = %bb.bj
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hp, i64 20
  %i.hx = load i16, ptr %i.hw, align 4, !tbaa !111
  %.not21.i30.i = icmp eq i16 %i.hx, %i.hu
  br i1 %.not21.i30.i, label %cache_bin_alloc_impl.exit31.i, label %bb.bm, !prof !21

bb.bm:                                            ; preds = %bb.bl
  store ptr %i.hs, ptr %i.hp, align 8, !tbaa !108
  %i.hy = ptrtoint ptr %i.hs to i64
  %i.hz = trunc i64 %i.hy to i16
  store i16 %i.hz, ptr %i.ht, align 8, !tbaa !110
  br label %bb.bs

cache_bin_alloc_impl.exit31.i:                    ; preds = %bb.bl
  %i.ia = tail call fastcc ptr @arena_choose(ptr noundef nonnull %i.g, ptr noundef null) ; 2 uses
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %sz_size2index.exit.i19.thread, label %bb.bn, !prof !21

bb.bn:                                            ; preds = %cache_bin_alloc_impl.exit31.i
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %i.g, ptr noundef nonnull %i.gf, ptr noundef nonnull %i.hp, i32 noundef %.0.i50.i20, i1 noundef zeroext false) #20
  br i1 %i.ek, label %bb.bo, label %bb.bp, !prof !23

bb.bo:                                            ; preds = %bb.bn
  %i.ic = add nuw nsw i64 %0, 7
  %i.id = lshr i64 %i.ic, 3
  %i.ie = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.id
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !24
  %i.ig = zext i8 %i.if to i64
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.ig
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !41
  br label %sz_s2u.exit.i39

bb.bp:                                            ; preds = %bb.bn
  %i.ij = icmp samesign ugt i64 %0, 14336
  %i.ik = load i8, ptr @je_opt_disable_large_size_classes, align 1, !range !38
  %i.il = trunc nuw i8 %i.ik to i1
  %or.cond285 = select i1 %i.ij, i1 %i.il, i1 false
  br i1 %or.cond285, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.im = shl nuw i64 %0, 1
  %i.in = add i64 %i.im, -1
  %i.io = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.in, i1 true) ; 2 uses
  %notmask.i.i37 = ashr exact i64 -1152921504606846976, %i.io
  %i.ip = lshr i64 1152921504606846975, %i.io
  %i.iq = add nuw nsw i64 %0, %i.ip
  %i.ir = and i64 %i.iq, %notmask.i.i37
  br label %sz_s2u.exit.i39

bb.br:                                            ; preds = %bb.bp
  %i.is = add nuw nsw i64 %0, 4095
  %i.it = and i64 %i.is, 9223372036854771712
  br label %sz_s2u.exit.i39

sz_s2u.exit.i39:                                  ; preds = %bb.bq, %bb.br, %bb.bo
  %.0.i32.i = phi i64 [ %i.ii, %bb.bo ], [ %i.ir, %bb.bq ], [ %i.it, %bb.br ]
  %i.iu = tail call ptr @je_large_malloc(ptr noundef nonnull %i.g, ptr noundef nonnull %i.ia, i64 noundef %.0.i32.i, i1 noundef zeroext %i.ej) #20 ; 2 uses
  %i.iv = icmp eq ptr %i.iu, null
  br i1 %i.iv, label %sz_size2index.exit.i19.thread, label %bb.bu

bb.bs:                                            ; preds = %bb.bk, %bb.bm
  br i1 %i.ej, label %bb.bt, label %bb.bu, !prof !21

bb.bt:                                            ; preds = %bb.bs
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.ho
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hq, i8 0, i64 %i.ix, i1 false)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %sz_s2u.exit.i39
  %.021.i.i = phi ptr [ %i.iu, %sz_s2u.exit.i39 ], [ %i.hq, %bb.bt ], [ %i.hq, %bb.bs ]
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hp, i64 8 ; 2 uses
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !112
  %i.ja = add i64 %i.iz, 1
  store i64 %i.ja, ptr %i.iy, align 8, !tbaa !112
  br label %imalloc_no_sample.exit

.critedge.i.i:                                    ; preds = %iallocztm_explicit_slab.exit.i.thread, %bb.bi, %bb.bh
  %.ph317 = phi i1 [ %.ph314.a, %iallocztm_explicit_slab.exit.i.thread ], [ false, %bb.bi ], [ false, %bb.bh ]
  %.1224.ph316 = phi ptr [ %.1224.ph.ph, %iallocztm_explicit_slab.exit.i.thread ], [ null, %bb.bi ], [ null, %bb.bh ]
  %i.jb = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %i.g, ptr noundef %.1224.ph316, i64 noundef %0, i32 noundef %.0.i50.i20, i1 noundef zeroext %i.ej, i1 noundef zeroext %.ph317) #20
  br label %imalloc_no_sample.exit

imalloc_no_sample.exit:                           ; preds = %.critedge.i.i, %.thread271, %bb.bg, %bb.bu
  %.0.i36 = phi ptr [ %.021.i.i, %bb.bu ], [ %i.jb, %.critedge.i.i ], [ %.0.i24.i.ph, %.thread271 ], [ %.132.i.i, %bb.bg ] ; 4 uses
  %i.jc = icmp eq ptr %.0.i36, null
  br i1 %i.jc, label %sz_size2index.exit.i19.thread, label %bb.bv, !prof !133

bb.bv:                                            ; preds = %imalloc_no_sample.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store i8 1, ptr %2, align 8, !tbaa !125
  %i.jd = getelementptr inbounds nuw i8, ptr %i.g, i64 928 ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.jd, ptr %i.je, align 8, !tbaa !126
  %i.jf = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.jg = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.jf, ptr %i.jg, align 8, !tbaa !127
  %i.jh = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.jh, ptr %i.ji, align 8, !tbaa !128
  %i.jj = getelementptr inbounds nuw i8, ptr %i.g, i64 936
  %i.jk = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.jj, ptr %i.jk, align 8, !tbaa !129
  %i.jl = load i64, ptr %i.jd, align 8, !tbaa !41 ; 2 uses
  %i.jm = add i64 %i.jl, %.0220.ph
  store i64 %i.jm, ptr %i.jd, align 8, !tbaa !41
  %i.jn = load i64, ptr %i.jh, align 8, !tbaa !41
  %i.jo = sub i64 %i.jn, %i.jl
  %i.jp = icmp ult i64 %.0220.ph, %i.jo
  br i1 %i.jp, label %bb.bx, label %bb.bw, !prof !23

bb.bw:                                            ; preds = %bb.bv
  call void @je_te_event_trigger(ptr noundef nonnull %i.g, ptr noundef nonnull %2) #20
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %.not.i17 = xor i1 %i.ej, true
  %i.jq = load i8, ptr @je_opt_junk_alloc, align 1, !range !38
  %i.jr = trunc nuw i8 %i.jq to i1
  %or.cond45.i18 = select i1 %.not.i17, i1 %i.jr, i1 false, !prof !132
  br i1 %or.cond45.i18, label %bb.by, label %bb.bz, !prof !132

bb.by:                                            ; preds = %bb.bx
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0.i36, i8 -91, i64 %.0220.ph, i1 false)
  br label %bb.bz

sz_size2index.exit.i19.thread:                    ; preds = %sz_s2u.exit.i39, %cache_bin_alloc_impl.exit31.i, %bb.be, %bb.aw, %bb.ak, %imalloc_no_sample.exit, %sz_size2index.exit.i19
  %i.js = tail call ptr @__errno_location() #22, !inline_history !6
  store i32 12, ptr %i.js, align 4, !tbaa !20
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bx, %bb.by, %sz_size2index.exit.i19.thread
  %.0227.ph = phi ptr [ %.0.i36, %bb.by ], [ %.0.i36, %bb.bx ], [ null, %sz_size2index.exit.i19.thread ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 %0, ptr %i.c, align 16, !tbaa !41
  %scevgep = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %scevgep, i8 0, i64 16, i1 false), !tbaa !41
  %i.jt = ptrtoint ptr %.0227.ph to i64
  call void @je_hook_invoke_alloc(i32 noundef 0, ptr noundef %.0227.ph, i64 noundef %i.jt, ptr noundef nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %imalloc.exit

imalloc.exit:                                     ; preds = %bb.af, %sz_size2index.exit.i.thread, %imalloc_init_check.exit, %bb.bz
  %.0227282 = phi ptr [ %.0227.ph, %bb.bz ], [ null, %imalloc_init_check.exit ], [ %.0.i23.i50, %bb.af ], [ null, %sz_size2index.exit.i.thread ]
  ret ptr %.0227282
}

declare void @je_hook_invoke_alloc(i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias ptr @malloc(i64 noundef %0) local_unnamed_addr #7 {
bb.a:
end_hunk_0
begin_hunk_1_@aligned_alloc:bb.a

imalloc.exit:                                     ; preds = %bb.p, %aligned_usize_get.exit.i.thread, %bb.q, %imalloc_init_check.exit, %bb.ao
  %.0229265 = phi ptr [ %.0229.ph, %bb.ao ], [ null, %imalloc_init_check.exit ], [ null, %bb.q ], [ null, %aligned_usize_get.exit.i.thread ], [ %i.bc, %bb.p ]
  ret ptr %.0229265
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias ptr @calloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #9 {
bb.a:
  %2 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %3 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca [3 x i64], align 16               ; 6 uses
  %i.d = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 920
  %i.f = load i8, ptr %i.e, align 8, !tbaa !24
  %.not.i86 = icmp eq i8 %i.f, 0
  br i1 %.not.i86, label %tsd_fetch_impl.exit.thread, label %tsd_fetch_impl.exit, !prof !23

tsd_fetch_impl.exit:                              ; preds = %bb.a
  %i.g = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.d, i1 noundef zeroext false) #20 ; 21 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 920
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !24
  %i.h = icmp eq i8 %.pre, 0
  br i1 %i.h, label %tsd_fetch_impl.exit.thread, label %bb.ai, !prof !100

tsd_fetch_impl.exit.thread:                       ; preds = %bb.a, %tsd_fetch_impl.exit
  %.0.i87315 = phi ptr [ %i.g, %tsd_fetch_impl.exit ], [ %i.d, %bb.a ] ; 17 uses
  %mul295 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0) ; 2 uses
  %mul.val296 = extractvalue { i64, i1 } %mul295, 0 ; 19 uses
  %mul.ov297 = extractvalue { i64, i1 } %mul295, 1
  %i.i = icmp eq i64 %mul.val296, 0
  br i1 %i.i, label %bb.b, label %bb.c, !prof !21

bb.b:                                             ; preds = %tsd_fetch_impl.exit.thread
  %.not.i34 = icmp ne i64 %0, 0
  %i.j = icmp ne i64 %1, 0
  %or.cond292.a = and i1 %.not.i34, %i.j
  br i1 %or.cond292.a, label %sz_size2index.exit.i.thread, label %compute_size_with_overflow.exit35.thread.thread, !prof !157

bb.c:                                             ; preds = %tsd_fetch_impl.exit.thread
  %i.k = or i64 %1, %0
  %i.l = icmp ult i64 %i.k, 4294967296
  br i1 %i.l, label %compute_size_with_overflow.exit35.thread, label %.split, !prof !23

.split:                                           ; preds = %bb.c
  br i1 %mul.ov297, label %sz_size2index.exit.i.thread, label %compute_size_with_overflow.exit35.thread, !prof !158

compute_size_with_overflow.exit35.thread:         ; preds = %bb.c, %.split
  %i.m = icmp ult i64 %mul.val296, 4097
  br i1 %i.m, label %compute_size_with_overflow.exit35.thread.thread, label %bb.d, !prof !159

compute_size_with_overflow.exit35.thread.thread:  ; preds = %bb.b, %compute_size_with_overflow.exit35.thread
  %i.n = add nuw nsw i64 %mul.val296, 7
  %i.o = lshr i64 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !24
  %i.r = zext i8 %i.q to i32
  br label %sz_size2index.exit.i

bb.d:                                             ; preds = %compute_size_with_overflow.exit35.thread
  %i.s = icmp ugt i64 %mul.val296, 8070450532247928832
  br i1 %i.s, label %sz_size2index.exit.i.thread, label %bb.e, !prof !21

bb.e:                                             ; preds = %bb.d
  %i.t = shl nuw i64 %mul.val296, 1
  %i.u = add i64 %i.t, -1
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.u, i1 true) ; 3 uses
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = sub nuw nsw i64 60, %i.v
  %i.y = ashr exact i64 -1152921504606846976, %i.v
  %i.z = add nsw i64 %mul.val296, -1
  %i.aa = and i64 %i.y, %i.z
  %i.ab = lshr i64 %i.aa, %i.x
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = and i32 %i.ac, 3
  %i.ae = shl nuw nsw i32 %i.w, 2
  %reass.sub302 = sub nsw i32 %i.ad, %i.ae
  %i.af = add nsw i32 %reass.sub302, 229
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.e, %compute_size_with_overflow.exit35.thread.thread
  %i.ag = phi i1 [ true, %compute_size_with_overflow.exit35.thread.thread ], [ false, %bb.e ]
  %.0.i50.i = phi i32 [ %i.r, %compute_size_with_overflow.exit35.thread.thread ], [ %i.af, %bb.e ] ; 10 uses
  %i.ah = icmp samesign ugt i32 %.0.i50.i, 231
  br i1 %i.ah, label %sz_size2index.exit.i.thread, label %bb.f, !prof !101

bb.f:                                             ; preds = %sz_size2index.exit.i
  %i.ai = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !40, !range !38, !noundef !39
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  br i1 %i.ag, label %bb.h, label %bb.i, !prof !23

bb.h:                                             ; preds = %bb.g
  %i.ak = add nuw nsw i64 %mul.val296, 7
  %i.al = lshr i64 %i.ak, 3
  %i.am = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !24
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !41
  br label %iallocztm_explicit_slab.exit.i48

bb.i:                                             ; preds = %bb.g
  %i.ar = icmp samesign ult i64 %mul.val296, 14337
  br i1 %i.ar, label %bb.j, label %iallocztm_explicit_slab.exit.i48.thread

bb.j:                                             ; preds = %bb.i
  %i.as = shl nuw nsw i64 %mul.val296, 1
  %i.at = add nsw i64 %i.as, -1
  %i.au = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.at, i1 true)
  %i.av = trunc nuw nsw i64 %i.au to i32
  %i.aw = xor i32 %i.av, 63                       ; 2 uses
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = icmp samesign ult i32 %i.aw, 7
  %i.az = add nsw i64 %i.ax, -3
  %notmask.i.i = shl nsw i64 -1, %i.az
  %i.ba = xor i64 %notmask.i.i, -1
  %i.bb = select i1 %i.ay, i64 15, i64 %i.ba      ; 2 uses
  %i.bc = add nuw i64 %i.bb, %mul.val296
  %i.bd = xor i64 %i.bb, -1
  %i.be = and i64 %i.bc, %i.bd
  br label %iallocztm_explicit_slab.exit.i48

iallocztm_explicit_slab.exit.i48.thread:          ; preds = %bb.i
  %i.bf = add nuw nsw i64 %mul.val296, 4095
  %i.bg = and i64 %i.bf, 9223372036854771712
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i87315, i64 960
  br label %bb.s

bb.k:                                             ; preds = %bb.f
  %i.bi = zext nneg i32 %.0.i50.i to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !41
  br label %iallocztm_explicit_slab.exit.i48

iallocztm_explicit_slab.exit.i48:                 ; preds = %bb.k, %bb.h, %bb.j
  %.0219.ph = phi i64 [ %i.be, %bb.j ], [ %i.aq, %bb.h ], [ %i.bk, %bb.k ] ; 4 uses
  %i.bl = icmp ult i64 %.0219.ph, 14337
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i87315, i64 960 ; 3 uses
  br i1 %i.bl, label %bb.l, label %bb.s, !prof !102

bb.l:                                             ; preds = %iallocztm_explicit_slab.exit.i48
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i87315, i64 968
  %i.bo = zext nneg i32 %.0.i50.i to i64          ; 2 uses
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.bo ; 9 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !108 ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !109 ; 2 uses
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bv = load i16, ptr %i.bu, align 8, !tbaa !110 ; 2 uses
  %i.bw = trunc i64 %i.bs to i16
  %.not.i26.i66 = icmp eq i16 %i.bv, %i.bw
  br i1 %.not.i26.i66, label %bb.n, label %bb.m, !prof !21

bb.m:                                             ; preds = %bb.l
  store ptr %i.bt, ptr %i.bp, align 8, !tbaa !108
  br label %cache_bin_alloc_impl.exit.i67.thread

bb.n:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 20
  %i.by = load i16, ptr %i.bx, align 4, !tbaa !111
  %.not21.i.i76 = icmp eq i16 %i.by, %i.bv
  br i1 %.not21.i.i76, label %cache_bin_alloc_impl.exit.i67, label %bb.o, !prof !21

bb.o:                                             ; preds = %bb.n
  store ptr %i.bt, ptr %i.bp, align 8, !tbaa !108
  %i.bz = ptrtoint ptr %i.bt to i64
  %i.ca = trunc i64 %i.bz to i16
  store i16 %i.ca, ptr %i.bu, align 8, !tbaa !110
  br label %cache_bin_alloc_impl.exit.i67.thread

cache_bin_alloc_impl.exit.i67:                    ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.cb = tail call fastcc ptr @arena_choose(ptr noundef nonnull %.0.i87315, ptr noundef null) ; 3 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %.thread240, label %bb.p, !prof !21

bb.p:                                             ; preds = %cache_bin_alloc_impl.exit.i67
  %.val = load ptr, ptr %i.bp, align 8, !tbaa !108
  %i.cd = icmp eq ptr %.val, @je_disabled_bin
  br i1 %i.cd, label %bb.q, label %bb.r, !prof !21

bb.q:                                             ; preds = %bb.p
  %i.ce = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %.0.i87315, ptr noundef nonnull %i.cb, i64 noundef %mul.val296, i32 noundef %.0.i50.i, i1 noundef zeroext true, i1 noundef zeroext true) #20
  br label %.thread240

.thread240:                                       ; preds = %cache_bin_alloc_impl.exit.i67, %bb.q
  %.0.i24.i72.ph = phi ptr [ %i.ce, %bb.q ], [ null, %cache_bin_alloc_impl.exit.i67 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %imalloc_no_sample.exit80

bb.r:                                             ; preds = %bb.p
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i87315, ptr noundef nonnull %i.bm, ptr noundef nonnull %i.bp, i32 noundef %.0.i50.i, i1 noundef zeroext true) #20
  %i.cf = call ptr @je_tcache_alloc_small_hard(ptr noundef nonnull %.0.i87315, ptr noundef nonnull %i.cb, ptr noundef nonnull %i.bm, ptr noundef nonnull %i.bp, i32 noundef %.0.i50.i, ptr noundef nonnull %i.a) #20
  %i.cg = load i8, ptr %i.a, align 1, !tbaa !40, !range !38, !noundef !39
  %4 = trunc nuw i8 %i.cg to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br i1 %4, label %cache_bin_alloc_impl.exit.i67.thread, label %sz_size2index.exit.i.thread

cache_bin_alloc_impl.exit.i67.thread:             ; preds = %bb.o, %bb.m, %bb.r
  %.132.i.i75 = phi ptr [ %i.cf, %bb.r ], [ %i.br, %bb.m ], [ %i.br, %bb.o ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.bo
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !41
  call void @llvm.memset.p0.i64(ptr align 1 %.132.i.i75, i8 0, i64 %i.ci, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !112
  %i.cl = add i64 %i.ck, 1
  store i64 %i.cl, ptr %i.cj, align 8, !tbaa !112
  br label %imalloc_no_sample.exit80

bb.s:                                             ; preds = %iallocztm_explicit_slab.exit.i48.thread, %iallocztm_explicit_slab.exit.i48
  %i.cm = phi ptr [ %i.bh, %iallocztm_explicit_slab.exit.i48.thread ], [ %i.bm, %iallocztm_explicit_slab.exit.i48 ] ; 2 uses
  %.0219.ph322 = phi i64 [ %i.bg, %iallocztm_explicit_slab.exit.i48.thread ], [ %.0219.ph, %iallocztm_explicit_slab.exit.i48 ] ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !114
  %i.co = getelementptr i8, ptr %i.cn, i64 48
  %.val122 = load i32, ptr %i.co, align 8, !tbaa !121
  %i.cp = icmp ult i32 %.0.i50.i, %.val122
  br i1 %i.cp, label %bb.t, label %.critedge.i.i50, !prof !23

bb.t:                                             ; preds = %bb.s
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i87315, i64 968
  %i.cr = zext nneg i32 %.0.i50.i to i64          ; 2 uses
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %i.cr ; 7 uses
  %.val117.a = load ptr, ptr %i.cs, align 8, !tbaa !108 ; 4 uses
  %.not298 = icmp eq ptr %.val117.a, @je_disabled_bin
  br i1 %.not298, label %.critedge.i.i50, label %bb.u, !prof !21

bb.u:                                             ; preds = %bb.t
  %i.ct = load ptr, ptr %.val117.a, align 8, !tbaa !109 ; 2 uses
  %i.cu = ptrtoint ptr %.val117.a to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %.val117.a, i64 8 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %i.cx = load i16, ptr %i.cw, align 8, !tbaa !110 ; 2 uses
  %i.cy = trunc i64 %i.cu to i16
  %.not.i28.i54 = icmp eq i16 %i.cx, %i.cy
  br i1 %.not.i28.i54, label %bb.w, label %bb.v, !prof !21

bb.v:                                             ; preds = %bb.u
  store ptr %i.cv, ptr %i.cs, align 8, !tbaa !108
  br label %bb.ad

bb.w:                                             ; preds = %bb.u
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 20
  %i.da = load i16, ptr %i.cz, align 4, !tbaa !111
  %.not21.i30.i65 = icmp eq i16 %i.da, %i.cx
  br i1 %.not21.i30.i65, label %cache_bin_alloc_impl.exit31.i55, label %bb.x, !prof !21

bb.x:                                             ; preds = %bb.w
  store ptr %i.cv, ptr %i.cs, align 8, !tbaa !108
  %i.db = ptrtoint ptr %i.cv to i64
  %i.dc = trunc i64 %i.db to i16
  store i16 %i.dc, ptr %i.cw, align 8, !tbaa !110
  br label %bb.ad

cache_bin_alloc_impl.exit31.i55:                  ; preds = %bb.w
  %i.dd = tail call fastcc ptr @arena_choose(ptr noundef nonnull %.0.i87315, ptr noundef null) ; 2 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %sz_size2index.exit.i.thread, label %bb.y, !prof !21

bb.y:                                             ; preds = %cache_bin_alloc_impl.exit31.i55
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i87315, ptr noundef nonnull %i.cm, ptr noundef nonnull %i.cs, i32 noundef %.0.i50.i, i1 noundef zeroext false) #20
  %i.df = icmp samesign ult i64 %mul.val296, 4097
  br i1 %i.df, label %bb.z, label %bb.aa, !prof !23

bb.z:                                             ; preds = %bb.y
  %i.dg = add nuw nsw i64 %mul.val296, 7
  %i.dh = lshr i64 %i.dg, 3
  %i.di = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !24
  %i.dk = zext i8 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.dk
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !41
  br label %sz_s2u.exit.i60

bb.aa:                                            ; preds = %bb.y
  %i.dn = icmp samesign ugt i64 %mul.val296, 14336
  %i.do = load i8, ptr @je_opt_disable_large_size_classes, align 1, !range !38
  %i.dp = trunc nuw i8 %i.do to i1
  %or.cond = select i1 %i.dn, i1 %i.dp, i1 false
  br i1 %or.cond, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dq = shl nuw i64 %mul.val296, 1
  %i.dr = add i64 %i.dq, -1
  %i.ds = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.dr, i1 true) ; 2 uses
  %notmask.i.i57 = ashr exact i64 -1152921504606846976, %i.ds
  %i.dt = lshr i64 1152921504606846975, %i.ds
  %i.du = add nuw nsw i64 %mul.val296, %i.dt
  %i.dv = and i64 %i.du, %notmask.i.i57
  br label %sz_s2u.exit.i60

bb.ac:                                            ; preds = %bb.aa
  %i.dw = add nuw nsw i64 %mul.val296, 4095
  %i.dx = and i64 %i.dw, 9223372036854771712
  br label %sz_s2u.exit.i60

sz_s2u.exit.i60:                                  ; preds = %bb.ab, %bb.ac, %bb.z
  %.0.i32.i61 = phi i64 [ %i.dm, %bb.z ], [ %i.dv, %bb.ab ], [ %i.dx, %bb.ac ]
  %i.dy = tail call ptr @je_large_malloc(ptr noundef nonnull %.0.i87315, ptr noundef nonnull %i.dd, i64 noundef %.0.i32.i61, i1 noundef zeroext true) #20 ; 2 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %sz_size2index.exit.i.thread, label %bb.ae

bb.ad:                                            ; preds = %bb.x, %bb.v
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.cr
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ct, i8 0, i64 %i.eb, i1 false)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %sz_s2u.exit.i60
  %.021.i.i62 = phi ptr [ %i.dy, %sz_s2u.exit.i60 ], [ %i.ct, %bb.ad ]
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !112
  %i.ee = add i64 %i.ed, 1
  store i64 %i.ee, ptr %i.ec, align 8, !tbaa !112
  br label %imalloc_no_sample.exit80

.critedge.i.i50:                                  ; preds = %bb.t, %bb.s
  %i.ef = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %.0.i87315, ptr noundef null, i64 noundef %mul.val296, i32 noundef %.0.i50.i, i1 noundef zeroext true, i1 noundef zeroext false) #20
  br label %imalloc_no_sample.exit80

imalloc_no_sample.exit80:                         ; preds = %.critedge.i.i50, %.thread240, %cache_bin_alloc_impl.exit.i67.thread, %bb.ae
  %.0219.ph321 = phi i64 [ %.0219.ph322, %.critedge.i.i50 ], [ %.0219.ph, %.thread240 ], [ %.0219.ph, %cache_bin_alloc_impl.exit.i67.thread ], [ %.0219.ph322, %bb.ae ] ; 2 uses
  %.0.i23.i52 = phi ptr [ %i.ef, %.critedge.i.i50 ], [ %.0.i24.i72.ph, %.thread240 ], [ %.132.i.i75, %cache_bin_alloc_impl.exit.i67.thread ], [ %.021.i.i62, %bb.ae ] ; 2 uses
  %i.eg = icmp eq ptr %.0.i23.i52, null
  br i1 %i.eg, label %sz_size2index.exit.i.thread, label %bb.af, !prof !122

bb.af:                                            ; preds = %imalloc_no_sample.exit80
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store i8 1, ptr %2, align 8, !tbaa !125
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.i87315, i64 928 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.eh, ptr %i.ei, align 8, !tbaa !126
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.i87315, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !127
  %i.el = getelementptr inbounds nuw i8, ptr %.0.i87315, i64 16 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.el, ptr %i.em, align 8, !tbaa !128
  %i.en = getelementptr inbounds nuw i8, ptr %.0.i87315, i64 936
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.en, ptr %i.eo, align 8, !tbaa !129
  %i.ep = load i64, ptr %i.eh, align 8, !tbaa !41 ; 2 uses
  %i.eq = add i64 %i.ep, %.0219.ph321
  store i64 %i.eq, ptr %i.eh, align 8, !tbaa !41
  %i.er = load i64, ptr %i.el, align 8, !tbaa !41
  %i.es = sub i64 %i.er, %i.ep
  %i.et = icmp ult i64 %.0219.ph321, %i.es
  br i1 %i.et, label %bb.ah, label %bb.ag, !prof !23

bb.ag:                                            ; preds = %bb.af
  call void @je_te_event_trigger(ptr noundef nonnull %.0.i87315, ptr noundef nonnull %2) #20
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %imalloc.exit.thread

sz_size2index.exit.i.thread:                      ; preds = %bb.b, %sz_s2u.exit.i60, %cache_bin_alloc_impl.exit31.i55, %bb.r, %bb.d, %imalloc_no_sample.exit80, %.split, %sz_size2index.exit.i
  %i.eu = tail call ptr @__errno_location() #22, !inline_history !6
  store i32 12, ptr %i.eu, align 4, !tbaa !20
  br label %imalloc.exit.thread

bb.ai:                                            ; preds = %tsd_fetch_impl.exit
  %i.ev = load i32, ptr @je_malloc_init_state, align 4, !tbaa !20
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %bb.ak, label %bb.aj, !prof !23

bb.aj:                                            ; preds = %bb.ai
  %i.ex = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.ex, label %imalloc_init_check.exit, label %bb.ak, !prof !130

imalloc_init_check.exit:                          ; preds = %bb.aj
  %i.ey = tail call ptr @__errno_location() #22, !inline_history !6
  store i32 12, ptr %i.ey, align 4, !tbaa !20
  br label %imalloc.exit.thread

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0) ; 2 uses
  %mul.val = extractvalue { i64, i1 } %mul, 0     ; 19 uses
  %mul.ov = extractvalue { i64, i1 } %mul, 1
  %i.ez = icmp eq i64 %mul.val, 0
  br i1 %i.ez, label %bb.al, label %bb.am, !prof !21

bb.al:                                            ; preds = %bb.ak
  %.not.i31 = icmp ne i64 %0, 0
  %i.fa = icmp ne i64 %1, 0
  %or.cond293 = and i1 %.not.i31, %i.fa
  br i1 %or.cond293, label %sz_size2index.exit.i21.thread, label %compute_size_with_overflow.exit.thread.thread, !prof !160

bb.am:                                            ; preds = %bb.ak
  %i.fb = or i64 %1, %0
  %i.fc = icmp ult i64 %i.fb, 4294967296
  br i1 %i.fc, label %compute_size_with_overflow.exit.thread, label %.split251, !prof !23

.split251:                                        ; preds = %bb.am
  br i1 %mul.ov, label %sz_size2index.exit.i21.thread, label %compute_size_with_overflow.exit.thread, !prof !161

compute_size_with_overflow.exit.thread:           ; preds = %bb.am, %.split251
  %i.fd = icmp ult i64 %mul.val, 4097
  br i1 %i.fd, label %compute_size_with_overflow.exit.thread.thread, label %bb.an, !prof !138

compute_size_with_overflow.exit.thread.thread:    ; preds = %bb.al, %compute_size_with_overflow.exit.thread
  %i.fe = add nuw nsw i64 %mul.val, 7
  %i.ff = lshr i64 %i.fe, 3
  %i.fg = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !24
  %i.fi = zext i8 %i.fh to i32
  br label %sz_size2index.exit.i21

bb.an:                                            ; preds = %compute_size_with_overflow.exit.thread
  %i.fj = icmp ugt i64 %mul.val, 8070450532247928832
  br i1 %i.fj, label %sz_size2index.exit.i21.thread, label %bb.ao, !prof !21

bb.ao:                                            ; preds = %bb.an
  %i.fk = shl nuw i64 %mul.val, 1
  %i.fl = add i64 %i.fk, -1
  %i.fm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.fl, i1 true) ; 3 uses
  %i.fn = trunc nuw nsw i64 %i.fm to i32
  %i.fo = sub nuw nsw i64 60, %i.fm
  %i.fp = ashr exact i64 -1152921504606846976, %i.fm
  %i.fq = add nsw i64 %mul.val, -1
  %i.fr = and i64 %i.fp, %i.fq
  %i.fs = lshr i64 %i.fr, %i.fo
  %i.ft = trunc i64 %i.fs to i32
  %i.fu = and i32 %i.ft, 3
  %i.fv = shl nuw nsw i32 %i.fn, 2
  %reass.sub = sub nsw i32 %i.fu, %i.fv
  %i.fw = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit.i21

sz_size2index.exit.i21:                           ; preds = %bb.ao, %compute_size_with_overflow.exit.thread.thread
  %i.fx = phi i1 [ true, %compute_size_with_overflow.exit.thread.thread ], [ false, %bb.ao ]
  %.0.i50.i22 = phi i32 [ %i.fi, %compute_size_with_overflow.exit.thread.thread ], [ %i.fw, %bb.ao ] ; 10 uses
  %i.fy = icmp samesign ugt i32 %.0.i50.i22, 231
  br i1 %i.fy, label %sz_size2index.exit.i21.thread, label %bb.ap, !prof !131

bb.ap:                                            ; preds = %sz_size2index.exit.i21
  %i.fz = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !40, !range !38, !noundef !39
  %i.ga = trunc nuw i8 %i.fz to i1
  br i1 %i.ga, label %bb.aq, label %bb.av

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.fx, label %bb.ar, label %bb.as, !prof !23

bb.ar:                                            ; preds = %bb.aq
  %i.gb = add nuw nsw i64 %mul.val, 7
  %i.gc = lshr i64 %i.gb, 3
  %i.gd = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !24
  %i.gf = zext i8 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.gf
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !41
  br label %bb.aw

bb.as:                                            ; preds = %bb.aq
  %i.gi = icmp samesign ult i64 %mul.val, 14337
  br i1 %i.gi, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.gj = shl nuw nsw i64 %mul.val, 1
  %i.gk = add nsw i64 %i.gj, -1
  %i.gl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.gk, i1 true)
  %i.gm = trunc nuw nsw i64 %i.gl to i32
  %i.gn = xor i32 %i.gm, 63                       ; 2 uses
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = icmp samesign ult i32 %i.gn, 7
  %i.gq = add nsw i64 %i.go, -3
  %notmask.i.i23 = shl nsw i64 -1, %i.gq
  %i.gr = xor i64 %notmask.i.i23, -1
  %i.gs = select i1 %i.gp, i64 15, i64 %i.gr      ; 2 uses
  %i.gt = add nuw i64 %i.gs, %mul.val
  %i.gu = xor i64 %i.gs, -1
  %i.gv = and i64 %i.gt, %i.gu
  br label %bb.aw

bb.au:                                            ; preds = %bb.as
  %i.gw = add nuw nsw i64 %mul.val, 4095
  %i.gx = and i64 %i.gw, 9223372036854771712
  br label %bb.aw

bb.av:                                            ; preds = %bb.ap
  %i.gy = zext nneg i32 %.0.i50.i22 to i64
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.gy
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !41
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.ar, %bb.au, %bb.at
  %.0222.ph = phi i64 [ %i.gv, %bb.at ], [ %i.gh, %bb.ar ], [ %i.ha, %bb.av ], [ %i.gx, %bb.au ] ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !24
  %i.hd = icmp sgt i8 %i.hc, 0
  br i1 %i.hd, label %bb.ay, label %bb.ax, !prof !132

bb.ax:                                            ; preds = %bb.aw
  %i.he = load i8, ptr %i.g, align 8, !tbaa !40, !range !38, !noundef !39
  %i.hf = trunc nuw i8 %i.he to i1
  %i.hg = getelementptr inbounds nuw i8, ptr %i.g, i64 960 ; 4 uses
  br i1 %i.hf, label %bb.ba, label %iallocztm_explicit_slab.exit.i.thread

bb.ay:                                            ; preds = %bb.aw
  %i.hh = load atomic ptr, ptr @je_arenas acquire, align 64 ; 2 uses
  %i.hi = icmp eq ptr %i.hh, null
  br i1 %i.hi, label %arena_get.exit136, label %iallocztm_explicit_slab.exit.i.thread, !prof !21

arena_get.exit136:                                ; preds = %bb.ay
  %i.hj = tail call ptr @je_arena_init(ptr noundef nonnull %i.g, i32 noundef 0, ptr noundef nonnull @je_arena_config_default), !inline_history !0 ; 2 uses
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %bb.az, label %iallocztm_explicit_slab.exit.i.thread, !prof !22

bb.az:                                            ; preds = %arena_get.exit136
  %i.hl = load i32, ptr @je_narenas_auto, align 4, !tbaa !20
  %.not.i.i.not = icmp eq i32 %i.hl, 0
  br i1 %.not.i.i.not, label %sz_size2index.exit.i21.thread, label %iallocztm_explicit_slab.exit.i.thread

iallocztm_explicit_slab.exit.i.thread:            ; preds = %bb.ay, %arena_get.exit136, %bb.ax, %bb.az
  %.1226.ph.ph = phi ptr [ null, %bb.az ], [ null, %bb.ax ], [ %i.hj, %arena_get.exit136 ], [ %i.hh, %bb.ay ]
  %.ph325.a = icmp ult i64 %.0222.ph, 14337
  br label %.critedge.i.i

bb.ba:                                            ; preds = %bb.ax
  %.ph = icmp ult i64 %.0222.ph, 14337
  br i1 %.ph, label %bb.bb, label %bb.bi, !prof !23

bb.bb:                                            ; preds = %bb.ba
  %i.hm = getelementptr inbounds nuw i8, ptr %i.g, i64 968
  %i.hn = zext nneg i32 %.0.i50.i22 to i64        ; 2 uses
  %i.ho = getelementptr inbounds nuw [24 x i8], ptr %i.hm, i64 %i.hn ; 9 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !108 ; 3 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !109 ; 2 uses
  %i.hr = ptrtoint ptr %i.hp to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 8 ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 16 ; 2 uses
  %i.hu = load i16, ptr %i.ht, align 8, !tbaa !110 ; 2 uses
  %i.hv = trunc i64 %i.hr to i16
  %.not.i26.i = icmp eq i16 %i.hu, %i.hv
  br i1 %.not.i26.i, label %bb.bd, label %bb.bc, !prof !21

bb.bc:                                            ; preds = %bb.bb
  store ptr %i.hs, ptr %i.ho, align 8, !tbaa !108
  br label %cache_bin_alloc_impl.exit.i.thread

bb.bd:                                            ; preds = %bb.bb
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ho, i64 20
  %i.hx = load i16, ptr %i.hw, align 4, !tbaa !111
  %.not21.i.i = icmp eq i16 %i.hx, %i.hu
  br i1 %.not21.i.i, label %cache_bin_alloc_impl.exit.i, label %bb.be, !prof !21

bb.be:                                            ; preds = %bb.bd
  store ptr %i.hs, ptr %i.ho, align 8, !tbaa !108
  %i.hy = ptrtoint ptr %i.hs to i64
  %i.hz = trunc i64 %i.hy to i16
  store i16 %i.hz, ptr %i.ht, align 8, !tbaa !110
  br label %cache_bin_alloc_impl.exit.i.thread

cache_bin_alloc_impl.exit.i:                      ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.ia = tail call fastcc ptr @arena_choose(ptr noundef nonnull %i.g, ptr noundef null) ; 3 uses
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %.thread278, label %bb.bf, !prof !21

bb.bf:                                            ; preds = %cache_bin_alloc_impl.exit.i
  %.val118.a = load ptr, ptr %i.ho, align 8, !tbaa !108
  %i.ic = icmp eq ptr %.val118.a, @je_disabled_bin
  br i1 %i.ic, label %bb.bg, label %bb.bh, !prof !21

bb.bg:                                            ; preds = %bb.bf
  %i.id = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %i.g, ptr noundef nonnull %i.ia, i64 noundef %mul.val, i32 noundef %.0.i50.i22, i1 noundef zeroext true, i1 noundef zeroext true) #20
  br label %.thread278

.thread278:                                       ; preds = %cache_bin_alloc_impl.exit.i, %bb.bg
  %.0.i24.i.ph = phi ptr [ %i.id, %bb.bg ], [ null, %cache_bin_alloc_impl.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %imalloc_no_sample.exit

bb.bh:                                            ; preds = %bb.bf
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %i.g, ptr noundef nonnull %i.hg, ptr noundef nonnull %i.ho, i32 noundef %.0.i50.i22, i1 noundef zeroext true) #20
  %i.ie = call ptr @je_tcache_alloc_small_hard(ptr noundef nonnull %i.g, ptr noundef nonnull %i.ia, ptr noundef nonnull %i.hg, ptr noundef nonnull %i.ho, i32 noundef %.0.i50.i22, ptr noundef nonnull %i.b) #20
  %i.if = load i8, ptr %i.b, align 1, !tbaa !40, !range !38, !noundef !39
  %5 = trunc nuw i8 %i.if to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br i1 %5, label %cache_bin_alloc_impl.exit.i.thread, label %sz_size2index.exit.i21.thread

cache_bin_alloc_impl.exit.i.thread:               ; preds = %bb.be, %bb.bc, %bb.bh
  %.132.i.i = phi ptr [ %i.ie, %bb.bh ], [ %i.hq, %bb.bc ], [ %i.hq, %bb.be ] ; 2 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.hn
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !41
  call void @llvm.memset.p0.i64(ptr align 1 %.132.i.i, i8 0, i64 %i.ih, i1 false)
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ho, i64 8 ; 2 uses
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !112
  %i.ik = add i64 %i.ij, 1
  store i64 %i.ik, ptr %i.ii, align 8, !tbaa !112
  br label %imalloc_no_sample.exit

bb.bi:                                            ; preds = %bb.ba
  %i.il = load ptr, ptr %i.hg, align 8, !tbaa !114
  %i.im = getelementptr i8, ptr %i.il, i64 48
  %.val125 = load i32, ptr %i.im, align 8, !tbaa !121
  %i.in = icmp ult i32 %.0.i50.i22, %.val125
  br i1 %i.in, label %bb.bj, label %.critedge.i.i, !prof !23

bb.bj:                                            ; preds = %bb.bi
  %i.io = getelementptr inbounds nuw i8, ptr %i.g, i64 968
  %i.ip = zext nneg i32 %.0.i50.i22 to i64        ; 2 uses
  %i.iq = getelementptr inbounds nuw [24 x i8], ptr %i.io, i64 %i.ip ; 7 uses
  %.val119 = load ptr, ptr %i.iq, align 8, !tbaa !108 ; 4 uses
  %.not = icmp eq ptr %.val119, @je_disabled_bin
  br i1 %.not, label %.critedge.i.i, label %bb.bk, !prof !21

bb.bk:                                            ; preds = %bb.bj
  %i.ir = load ptr, ptr %.val119, align 8, !tbaa !109 ; 2 uses
  %i.is = ptrtoint ptr %.val119 to i64
  %i.it = getelementptr inbounds nuw i8, ptr %.val119, i64 8 ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.iq, i64 16 ; 2 uses
  %i.iv = load i16, ptr %i.iu, align 8, !tbaa !110 ; 2 uses
  %i.iw = trunc i64 %i.is to i16
  %.not.i28.i = icmp eq i16 %i.iv, %i.iw
  br i1 %.not.i28.i, label %bb.bm, label %bb.bl, !prof !21

bb.bl:                                            ; preds = %bb.bk
  store ptr %i.it, ptr %i.iq, align 8, !tbaa !108
  br label %bb.bt

bb.bm:                                            ; preds = %bb.bk
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iq, i64 20
  %i.iy = load i16, ptr %i.ix, align 4, !tbaa !111
  %.not21.i30.i = icmp eq i16 %i.iy, %i.iv
  br i1 %.not21.i30.i, label %cache_bin_alloc_impl.exit31.i, label %bb.bn, !prof !21

bb.bn:                                            ; preds = %bb.bm
  store ptr %i.it, ptr %i.iq, align 8, !tbaa !108
  %i.iz = ptrtoint ptr %i.it to i64
  %i.ja = trunc i64 %i.iz to i16
  store i16 %i.ja, ptr %i.iu, align 8, !tbaa !110
  br label %bb.bt

cache_bin_alloc_impl.exit31.i:                    ; preds = %bb.bm
  %i.jb = tail call fastcc ptr @arena_choose(ptr noundef nonnull %i.g, ptr noundef null) ; 2 uses
  %i.jc = icmp eq ptr %i.jb, null
  br i1 %i.jc, label %sz_size2index.exit.i21.thread, label %bb.bo, !prof !21

bb.bo:                                            ; preds = %cache_bin_alloc_impl.exit31.i
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %i.g, ptr noundef nonnull %i.hg, ptr noundef nonnull %i.iq, i32 noundef %.0.i50.i22, i1 noundef zeroext false) #20
  %i.jd = icmp samesign ult i64 %mul.val, 4097
  br i1 %i.jd, label %bb.bp, label %bb.bq, !prof !23

bb.bp:                                            ; preds = %bb.bo
  %i.je = add nuw nsw i64 %mul.val, 7
  %i.jf = lshr i64 %i.je, 3
  %i.jg = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.jf
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !24
  %i.ji = zext i8 %i.jh to i64
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.ji
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !41
  br label %sz_s2u.exit.i41

bb.bq:                                            ; preds = %bb.bo
  %i.jl = icmp samesign ugt i64 %mul.val, 14336
  %i.jm = load i8, ptr @je_opt_disable_large_size_classes, align 1, !range !38
  %i.jn = trunc nuw i8 %i.jm to i1
  %or.cond291 = select i1 %i.jl, i1 %i.jn, i1 false
  br i1 %or.cond291, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jo = shl nuw i64 %mul.val, 1
  %i.jp = add i64 %i.jo, -1
  %i.jq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.jp, i1 true) ; 2 uses
  %notmask.i.i39 = ashr exact i64 -1152921504606846976, %i.jq
  %i.jr = lshr i64 1152921504606846975, %i.jq
  %i.js = add nuw nsw i64 %mul.val, %i.jr
  %i.jt = and i64 %i.js, %notmask.i.i39
  br label %sz_s2u.exit.i41

bb.bs:                                            ; preds = %bb.bq
  %i.ju = add nuw nsw i64 %mul.val, 4095
  %i.jv = and i64 %i.ju, 9223372036854771712
  br label %sz_s2u.exit.i41

sz_s2u.exit.i41:                                  ; preds = %bb.br, %bb.bs, %bb.bp
  %.0.i32.i = phi i64 [ %i.jk, %bb.bp ], [ %i.jt, %bb.br ], [ %i.jv, %bb.bs ]
  %i.jw = tail call ptr @je_large_malloc(ptr noundef nonnull %i.g, ptr noundef nonnull %i.jb, i64 noundef %.0.i32.i, i1 noundef zeroext true) #20 ; 2 uses
  %i.jx = icmp eq ptr %i.jw, null
  br i1 %i.jx, label %sz_size2index.exit.i21.thread, label %bb.bu

bb.bt:                                            ; preds = %bb.bn, %bb.bl
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.ip
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ir, i8 0, i64 %i.jz, i1 false)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %sz_s2u.exit.i41
  %.021.i.i = phi ptr [ %i.jw, %sz_s2u.exit.i41 ], [ %i.ir, %bb.bt ]
  %i.ka = getelementptr inbounds nuw i8, ptr %i.iq, i64 8 ; 2 uses
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !112
  %i.kc = add i64 %i.kb, 1
  store i64 %i.kc, ptr %i.ka, align 8, !tbaa !112
  br label %imalloc_no_sample.exit

.critedge.i.i:                                    ; preds = %iallocztm_explicit_slab.exit.i.thread, %bb.bj, %bb.bi
  %.ph328 = phi i1 [ %.ph325.a, %iallocztm_explicit_slab.exit.i.thread ], [ false, %bb.bj ], [ false, %bb.bi ]
  %.1226.ph327 = phi ptr [ %.1226.ph.ph, %iallocztm_explicit_slab.exit.i.thread ], [ null, %bb.bj ], [ null, %bb.bi ]
  %i.kd = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %i.g, ptr noundef %.1226.ph327, i64 noundef %mul.val, i32 noundef %.0.i50.i22, i1 noundef zeroext true, i1 noundef zeroext %.ph328) #20
  br label %imalloc_no_sample.exit

imalloc_no_sample.exit:                           ; preds = %.critedge.i.i, %.thread278, %cache_bin_alloc_impl.exit.i.thread, %bb.bu
  %.0.i38 = phi ptr [ %.021.i.i, %bb.bu ], [ %i.kd, %.critedge.i.i ], [ %.0.i24.i.ph, %.thread278 ], [ %.132.i.i, %cache_bin_alloc_impl.exit.i.thread ] ; 2 uses
  %i.ke = icmp eq ptr %.0.i38, null
  br i1 %i.ke, label %sz_size2index.exit.i21.thread, label %bb.bv, !prof !133

bb.bv:                                            ; preds = %imalloc_no_sample.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i8 1, ptr %3, align 8, !tbaa !125
  %i.kf = getelementptr inbounds nuw i8, ptr %i.g, i64 928 ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.kf, ptr %i.kg, align 8, !tbaa !126
  %i.kh = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ki = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.kh, ptr %i.ki, align 8, !tbaa !127
  %i.kj = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.kj, ptr %i.kk, align 8, !tbaa !128
  %i.kl = getelementptr inbounds nuw i8, ptr %i.g, i64 936
  %i.km = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.kl, ptr %i.km, align 8, !tbaa !129
  %i.kn = load i64, ptr %i.kf, align 8, !tbaa !41 ; 2 uses
  %i.ko = add i64 %i.kn, %.0222.ph
  store i64 %i.ko, ptr %i.kf, align 8, !tbaa !41
  %i.kp = load i64, ptr %i.kj, align 8, !tbaa !41
  %i.kq = sub i64 %i.kp, %i.kn
  %i.kr = icmp ult i64 %.0222.ph, %i.kq
  br i1 %i.kr, label %bb.bx, label %bb.bw, !prof !23

bb.bw:                                            ; preds = %bb.bv
  call void @je_te_event_trigger(ptr noundef nonnull %i.g, ptr noundef nonnull %3) #20
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bv, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %imalloc.exit

sz_size2index.exit.i21.thread:                    ; preds = %bb.al, %sz_s2u.exit.i41, %cache_bin_alloc_impl.exit31.i, %bb.bh, %bb.az, %bb.an, %imalloc_no_sample.exit, %.split251, %sz_size2index.exit.i21
  %i.ks = tail call ptr @__errno_location() #22, !inline_history !6
  store i32 12, ptr %i.ks, align 4, !tbaa !20
  br label %imalloc.exit

imalloc.exit:                                     ; preds = %bb.bx, %sz_size2index.exit.i21.thread
  %.0229 = phi ptr [ %.0.i38, %bb.bx ], [ null, %sz_size2index.exit.i21.thread ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 %0, ptr %i.c, align 16, !tbaa !41
  %i.kt = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %1, ptr %i.kt, align 8, !tbaa !41
  %.ptr = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.ptr, align 16, !tbaa !41
  %i.ku = ptrtoint ptr %.0229 to i64
  call void @je_hook_invoke_alloc(i32 noundef 3, ptr noundef %.0229, i64 noundef %i.ku, ptr noundef nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %imalloc.exit.thread

imalloc.exit.thread:                              ; preds = %bb.ah, %sz_size2index.exit.i.thread, %imalloc_init_check.exit, %imalloc.exit
  %.0229288 = phi ptr [ %.0229, %imalloc.exit ], [ null, %sz_size2index.exit.i.thread ], [ %.0.i23.i52, %bb.ah ], [ null, %imalloc_init_check.exit ]
  ret ptr %.0229288
}

; Function Attrs: noinline nounwind uwtable
define hidden void @je_free_default(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %1 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %2 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %3 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %4 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %5 = alloca %struct.rtree_contents_s, align 8   ; 6 uses
  %6 = alloca %struct.rtree_contents_s, align 8   ; 6 uses
  %i.a = alloca [3 x i64], align 16               ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.ae, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.b = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 920
  %i.d = load i8, ptr %i.c, align 8, !tbaa !24
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %tsdn_rtree_ctx.exit52, label %tsd_fetch_impl.exit, !prof !23
end_hunk_1
begin_hunk_2_@pvalloc:bb.a
  br label %imalloc.exit

bb.k:                                             ; preds = %tsd_fetch_impl.exit
  %i.be = load i32, ptr @je_malloc_init_state, align 4, !tbaa !20
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.m, label %bb.l, !prof !23

bb.l:                                             ; preds = %bb.k
  %i.bg = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.bg, label %imalloc_init_check.exit, label %bb.m, !prof !130

imalloc_init_check.exit:                          ; preds = %bb.l
  %i.bh = tail call ptr @__errno_location() #22, !inline_history !6
  store i32 12, ptr %i.bh, align 4, !tbaa !20
  br label %imalloc.exit

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.bi = load i8, ptr @je_opt_zero, align 1, !range !38
  %i.bj = trunc nuw i8 %i.bi to i1                ; 2 uses
  %i.bk = icmp ult i64 %i.c, 14337
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bl = icmp samesign ult i64 %i.c, 4097
  br i1 %i.bl, label %sz_s2u.exit25.i, label %sz_s2u.exit25.i.thread, !prof !23

sz_s2u.exit25.i.thread:                           ; preds = %bb.n
  %i.bm = shl nuw nsw i64 %i.c, 1
  %i.bn = add nsw i64 %i.bm, -1
  %i.bo = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.bn, i1 true) ; 2 uses
  %notmask.i29.i = ashr exact i64 -1152921504606846976, %i.bo
  %i.bp = lshr i64 1152921504606846975, %i.bo
  %i.bq = add nuw nsw i64 %i.c, %i.bp
  %i.br = and i64 %i.bq, %notmask.i29.i
  br label %aligned_usize_get.exit.i13

sz_s2u.exit25.i:                                  ; preds = %bb.n
  %i.bs = lshr exact i64 %i.c, 3
  %i.bt = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !24
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !41 ; 2 uses
  %i.by = icmp ult i64 %i.bx, 16384
  br i1 %i.by, label %aligned_usize_get.exit.i13, label %.thread236

bb.o:                                             ; preds = %bb.m
  %i.bz = icmp ult i64 %i.c, 16385
  br i1 %i.bz, label %.thread236, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = icmp ugt i64 %i.c, 8070450532247928832
  br i1 %i.ca, label %sz_s2u_compute.exit28.i, label %bb.q, !prof !21

bb.q:                                             ; preds = %bb.p
  %i.cb = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !40, !range !38, !noundef !39
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = shl nuw i64 %i.c, 1
  %i.ce = add i64 %i.cd, -1
  %i.cf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.ce, i1 true) ; 2 uses
  %notmask.i.i92 = ashr exact i64 -1152921504606846976, %i.cf
  %i.cg = lshr i64 1152921504606846975, %i.cf
  %i.ch = add nuw nsw i64 %i.c, %i.cg
  %i.ci = and i64 %i.ch, %notmask.i.i92
  br label %sz_s2u_compute.exit28.i

bb.s:                                             ; preds = %bb.q
  %i.cj = and i64 %i.b, 9223372036854771712
  br label %sz_s2u_compute.exit28.i

sz_s2u_compute.exit28.i:                          ; preds = %bb.s, %bb.r, %bb.p
  %.0.i27.i93 = phi i64 [ %i.ci, %bb.r ], [ %i.cj, %bb.s ], [ 0, %bb.p ] ; 2 uses
  %i.ck = icmp ult i64 %.0.i27.i93, %i.c
  br i1 %i.ck, label %aligned_usize_get.exit.i13.thread, label %.thread236

.thread236:                                       ; preds = %sz_s2u.exit25.i, %sz_s2u_compute.exit28.i, %bb.o
  %.0.i96 = phi i64 [ %.0.i27.i93, %sz_s2u_compute.exit28.i ], [ 16384, %bb.o ], [ 16384, %sz_s2u.exit25.i ] ; 2 uses
  %i.cl = load i64, ptr @je_sz_large_pad, align 8, !tbaa !41
  %i.cm = xor i64 %.0.i96, -1
  %i.cn = icmp ugt i64 %i.cl, %i.cm
  %..0.i = select i1 %i.cn, i64 0, i64 %.0.i96
  br label %aligned_usize_get.exit.i13

aligned_usize_get.exit.i13:                       ; preds = %sz_s2u.exit25.i.thread, %.thread236, %sz_s2u.exit25.i
  %.018.i = phi i64 [ %..0.i, %.thread236 ], [ %i.bx, %sz_s2u.exit25.i ], [ %i.br, %sz_s2u.exit25.i.thread ] ; 6 uses
  %i.co = add nsw i64 %.018.i, -8070450532247928833
  %spec.select.i.i12 = icmp ult i64 %i.co, -8070450532247928832
  br i1 %spec.select.i.i12, label %aligned_usize_get.exit.i13.thread, label %bb.t

bb.t:                                             ; preds = %aligned_usize_get.exit.i13
  %i.cp = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !24
  %i.cr = icmp sgt i8 %i.cq, 0
  br i1 %i.cr, label %bb.v, label %bb.u, !prof !132

bb.u:                                             ; preds = %bb.t
  %i.cs = load i8, ptr %i.g, align 8, !tbaa !40, !range !38, !noundef !39
  %i.ct = trunc nuw i8 %i.cs to i1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.g, i64 960
  %spec.select = select i1 %i.ct, ptr %i.cu, ptr null
  br label %imalloc_no_sample.exit

bb.v:                                             ; preds = %bb.t
  %i.cv = load atomic ptr, ptr @je_arenas acquire, align 64 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %arena_get.exit134, label %imalloc_no_sample.exit, !prof !21

arena_get.exit134:                                ; preds = %bb.v
  %i.cx = tail call ptr @je_arena_init(ptr noundef nonnull %i.g, i32 noundef 0, ptr noundef nonnull @je_arena_config_default), !inline_history !0 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.w, label %imalloc_no_sample.exit, !prof !22

bb.w:                                             ; preds = %arena_get.exit134
  %i.cz = load i32, ptr @je_narenas_auto, align 4, !tbaa !20
  %.not.i.i.not = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i.not, label %aligned_usize_get.exit.i13.thread, label %imalloc_no_sample.exit

imalloc_no_sample.exit:                           ; preds = %bb.u, %bb.w, %bb.v, %arena_get.exit134
  %.0.i.i34246.ph = phi ptr [ null, %bb.v ], [ null, %arena_get.exit134 ], [ %spec.select, %bb.u ], [ null, %bb.w ]
  %.1224.ph = phi ptr [ %i.cv, %bb.v ], [ %i.cx, %arena_get.exit134 ], [ null, %bb.u ], [ null, %bb.w ]
  %.ph = icmp samesign ult i64 %.018.i, 14337
  %i.da = tail call ptr @je_arena_palloc(ptr noundef nonnull %i.g, ptr noundef %.1224.ph, i64 noundef %.018.i, i64 noundef 4096, i1 noundef zeroext %i.bj, i1 noundef zeroext %.ph, ptr noundef %.0.i.i34246.ph) #20 ; 4 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %aligned_usize_get.exit.i13.thread, label %bb.x, !prof !135

bb.x:                                             ; preds = %imalloc_no_sample.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store i8 1, ptr %2, align 8, !tbaa !125
  %i.dc = getelementptr inbounds nuw i8, ptr %i.g, i64 928 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !126
  %i.de = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.de, ptr %i.df, align 8, !tbaa !127
  %i.dg = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !128
  %i.di = getelementptr inbounds nuw i8, ptr %i.g, i64 936
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !129
  %i.dk = load i64, ptr %i.dc, align 8, !tbaa !41 ; 2 uses
  %i.dl = add i64 %i.dk, %.018.i
  store i64 %i.dl, ptr %i.dc, align 8, !tbaa !41
  %i.dm = load i64, ptr %i.dg, align 8, !tbaa !41
  %i.dn = sub i64 %i.dm, %i.dk
  %i.do = icmp ult i64 %.018.i, %i.dn
  br i1 %i.do, label %bb.z, label %bb.y, !prof !23

bb.y:                                             ; preds = %bb.x
  call void @je_te_event_trigger(ptr noundef nonnull %i.g, ptr noundef nonnull %2) #20
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %.not.i17 = xor i1 %i.bj, true
  %i.dp = load i8, ptr @je_opt_junk_alloc, align 1, !range !38
  %i.dq = trunc nuw i8 %i.dp to i1
  %or.cond45.i18 = select i1 %.not.i17, i1 %i.dq, i1 false, !prof !132
  br i1 %or.cond45.i18, label %bb.aa, label %aligned_usize_get.exit.i13.thread, !prof !132

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.da, i8 -91, i64 %.018.i, i1 false)
  br label %aligned_usize_get.exit.i13.thread

aligned_usize_get.exit.i13.thread:                ; preds = %bb.w, %sz_s2u_compute.exit28.i, %aligned_usize_get.exit.i13, %imalloc_no_sample.exit, %bb.z, %bb.aa
  %.0227.ph = phi ptr [ %i.da, %bb.aa ], [ null, %sz_s2u_compute.exit28.i ], [ null, %aligned_usize_get.exit.i13 ], [ null, %imalloc_no_sample.exit ], [ %i.da, %bb.z ], [ null, %bb.w ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %0, ptr %i.a, align 16, !tbaa !41
  %scevgep = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %scevgep, i8 0, i64 16, i1 false), !tbaa !41
  %i.dr = ptrtoint ptr %.0227.ph to i64
  call void @je_hook_invoke_alloc(i32 noundef 6, ptr noundef %.0227.ph, i64 noundef %i.dr, ptr noundef nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %imalloc.exit

imalloc.exit:                                     ; preds = %sz_s2u_compute.exit28.i101, %aligned_usize_get.exit.i, %imalloc_no_sample.exit78, %bb.j, %imalloc_init_check.exit, %aligned_usize_get.exit.i13.thread
  %.0227259 = phi ptr [ %.0227.ph, %aligned_usize_get.exit.i13.thread ], [ null, %imalloc_init_check.exit ], [ null, %imalloc_no_sample.exit78 ], [ null, %aligned_usize_get.exit.i ], [ %i.ap, %bb.j ], [ null, %sz_s2u_compute.exit28.i101 ]
  ret ptr %.0227259
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias ptr @mallocx(i64 noundef %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %2 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %3 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca [3 x i64], align 16               ; 6 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %mallocx_arena_get.exit, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %1, 63
  %i.e = zext nneg i32 %i.d to i64
  %i.f = shl nuw i64 1, %i.e
  %i.g = and i64 %i.f, -2                         ; 2 uses
  %i.h = trunc i32 %1 to i8
  %i.i = lshr i8 %i.h, 6                          ; 2 uses
  %i.j = and i32 %1, 1048320                      ; 2 uses
  switch i32 %i.j, label %bb.d [
    i32 0, label %mallocx_tcache_get.exit
    i32 256, label %bb.c
  ], !prof !145

bb.c:                                             ; preds = %bb.b
  br label %mallocx_tcache_get.exit

bb.d:                                             ; preds = %bb.b
  %i.k = lshr exact i32 %i.j, 8
  %i.l = add nsw i32 %i.k, -2
  br label %mallocx_tcache_get.exit

mallocx_tcache_get.exit:                          ; preds = %bb.b, %bb.c, %bb.d
  %.0.i10 = phi i32 [ %i.l, %bb.d ], [ -1, %bb.c ], [ -2, %bb.b ] ; 2 uses
  %.not.i = icmp ult i32 %1, 1048576
  br i1 %.not.i, label %mallocx_arena_get.exit, label %bb.e, !prof !23

bb.e:                                             ; preds = %mallocx_tcache_get.exit
  %i.m = lshr i32 %1, 20
  %i.n = add nsw i32 %i.m, -1
  br label %mallocx_arena_get.exit

mallocx_arena_get.exit:                           ; preds = %bb.e, %mallocx_tcache_get.exit, %bb.a
  %.sroa.60.0 = phi i32 [ -1, %bb.a ], [ %i.n, %bb.e ], [ -1, %mallocx_tcache_get.exit ] ; 6 uses
  %.sroa.54176.0 = phi i32 [ -2, %bb.a ], [ %.0.i10, %bb.e ], [ %.0.i10, %mallocx_tcache_get.exit ] ; 6 uses
  %.sroa.42.0 = phi i8 [ 0, %bb.a ], [ %i.i, %bb.e ], [ %i.i, %mallocx_tcache_get.exit ] ; 2 uses
  %.sroa.32.0 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.e ], [ %i.g, %mallocx_tcache_get.exit ] ; 14 uses
  %i.o = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 920
  %i.q = load i8, ptr %i.p, align 8, !tbaa !24
  %.not.i93 = icmp eq i8 %i.q, 0
  br i1 %.not.i93, label %compute_size_with_overflow.exit42, label %tsd_fetch_impl.exit, !prof !23

tsd_fetch_impl.exit:                              ; preds = %mallocx_arena_get.exit
  %i.r = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.o, i1 noundef zeroext false) #20 ; 21 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.r, i64 920
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !24
  %i.s = icmp eq i8 %.pre, 0
  br i1 %i.s, label %compute_size_with_overflow.exit42, label %bb.bj, !prof !100

compute_size_with_overflow.exit42:                ; preds = %mallocx_arena_get.exit, %tsd_fetch_impl.exit
  %.0.i94356 = phi ptr [ %i.r, %tsd_fetch_impl.exit ], [ %i.o, %mallocx_arena_get.exit ] ; 17 uses
  %i.t = trunc i8 %.sroa.42.0 to i1               ; 6 uses
  %i.u = icmp eq i64 %.sroa.32.0, 0               ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.q

bb.f:                                             ; preds = %compute_size_with_overflow.exit42
  %i.v = icmp ult i64 %0, 4097                    ; 2 uses
  br i1 %i.v, label %bb.g, label %bb.h, !prof !23

bb.g:                                             ; preds = %bb.f
  %i.w = add nuw nsw i64 %0, 7
  %i.x = lshr i64 %i.w, 3
  %i.y = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !24
  %i.aa = zext i8 %i.z to i32
  br label %sz_size2index.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ab = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.ab, label %imalloc.exit, label %bb.i, !prof !21

bb.i:                                             ; preds = %bb.h
  %i.ac = shl nuw i64 %0, 1
  %i.ad = add i64 %i.ac, -1
  %i.ae = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.ad, i1 true) ; 3 uses
  %i.af = trunc nuw nsw i64 %i.ae to i32
  %i.ag = sub nuw nsw i64 60, %i.ae
  %i.ah = ashr exact i64 -1152921504606846976, %i.ae
  %i.ai = add nsw i64 %0, -1
  %i.aj = and i64 %i.ah, %i.ai
  %i.ak = lshr i64 %i.aj, %i.ag
  %i.al = trunc i64 %i.ak to i32
  %i.am = and i32 %i.al, 3
  %i.an = shl nuw nsw i32 %i.af, 2
  %reass.sub335 = sub nsw i32 %i.am, %i.an
  %i.ao = add nsw i32 %reass.sub335, 229
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.i, %bb.g
  %.0.i50.i = phi i32 [ %i.aa, %bb.g ], [ %i.ao, %bb.i ] ; 6 uses
  %i.ap = icmp samesign ugt i32 %.0.i50.i, 231
  br i1 %i.ap, label %imalloc.exit, label %bb.j, !prof !101

bb.j:                                             ; preds = %sz_size2index.exit.i
  %i.aq = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !40, !range !38, !noundef !39
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  br i1 %i.v, label %bb.l, label %bb.m, !prof !23

bb.l:                                             ; preds = %bb.k
  %i.as = add nuw nsw i64 %0, 7
  %i.at = lshr i64 %i.as, 3
  %i.au = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !24
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !41
  br label %aligned_usize_get.exit.i.thread

bb.m:                                             ; preds = %bb.k
  %i.az = icmp samesign ult i64 %0, 14337
  br i1 %i.az, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ba = shl nuw nsw i64 %0, 1
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.bb, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.bc
  %i.bd = lshr i64 1152921504606846975, %i.bc
  %i.be = add nuw nsw i64 %0, %i.bd
  %i.bf = and i64 %i.be, %notmask.i.i
  br label %aligned_usize_get.exit.i.thread

bb.o:                                             ; preds = %bb.m
  %i.bg = add nuw nsw i64 %0, 4095
  %i.bh = and i64 %i.bg, 9223372036854771712
  br label %aligned_usize_get.exit.i.thread

bb.p:                                             ; preds = %bb.j
  %i.bi = zext nneg i32 %.0.i50.i to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !41
  br label %aligned_usize_get.exit.i.thread

bb.q:                                             ; preds = %compute_size_with_overflow.exit42
  %i.bl = icmp ult i64 %0, 14337
  %i.bm = icmp ult i64 %.sroa.32.0, 4097
  %or.cond.i108 = and i1 %i.bl, %i.bm
  br i1 %or.cond.i108, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.bn = add nsw i64 %0, -1
  %i.bo = add nsw i64 %i.bn, %.sroa.32.0
  %i.bp = sub nsw i64 0, %.sroa.32.0
  %i.bq = and i64 %i.bo, %i.bp                    ; 5 uses
  %i.br = icmp samesign ult i64 %i.bq, 4097
  br i1 %i.br, label %bb.s, label %bb.t, !prof !23

bb.s:                                             ; preds = %bb.r
  %i.bs = add nuw nsw i64 %i.bq, 6
  %i.bt = lshr i64 %i.bs, 3
  %i.bu = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !24
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !41
  br label %sz_s2u.exit25.i120

bb.t:                                             ; preds = %bb.r
  %i.bz = icmp samesign ugt i64 %i.bq, 14336
  %i.ca = load i8, ptr @je_opt_disable_large_size_classes, align 1, !range !38
  %i.cb = trunc nuw i8 %i.ca to i1
  %or.cond = select i1 %i.bz, i1 %i.cb, i1 false
  br i1 %or.cond, label %.thread240, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cc = shl nuw nsw i64 %i.bq, 1
  %i.cd = add nsw i64 %i.cc, -1
  %i.ce = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.cd, i1 true) ; 2 uses
  %notmask.i29.i117 = ashr exact i64 -1152921504606846976, %i.ce
  %i.cf = lshr i64 1152921504606846975, %i.ce
  %i.cg = add nuw nsw i64 %i.bq, %i.cf
  %i.ch = and i64 %i.cg, %notmask.i29.i117
  br label %sz_s2u.exit25.i120

sz_s2u.exit25.i120:                               ; preds = %bb.u, %bb.s
  %.0.i24.i121 = phi i64 [ %i.by, %bb.s ], [ %i.ch, %bb.u ] ; 2 uses
  %i.ci = icmp ult i64 %.0.i24.i121, 16384
  br i1 %i.ci, label %aligned_usize_get.exit.i, label %.thread240

bb.v:                                             ; preds = %bb.q
  %i.cj = icmp ugt i64 %.sroa.32.0, 8070450532247928832
  br i1 %i.cj, label %imalloc.exit, label %bb.w, !prof !137

bb.w:                                             ; preds = %bb.v
  %i.ck = icmp ult i64 %0, 16385
  br i1 %i.ck, label %.thread240, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cl = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.cl, label %sz_s2u_compute.exit28.i110, label %bb.y, !prof !21

bb.y:                                             ; preds = %bb.x
  %i.cm = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !40, !range !38, !noundef !39
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.co = shl nuw i64 %0, 1
  %i.cp = add i64 %i.co, -1
  %i.cq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.cp, i1 true) ; 2 uses
  %notmask.i.i109 = ashr exact i64 -1152921504606846976, %i.cq
  %i.cr = lshr i64 1152921504606846975, %i.cq
  %i.cs = add nuw nsw i64 %0, %i.cr
  %i.ct = and i64 %i.cs, %notmask.i.i109
  br label %sz_s2u_compute.exit28.i110

bb.aa:                                            ; preds = %bb.y
  %i.cu = add nuw nsw i64 %0, 4095
  %i.cv = and i64 %i.cu, 9223372036854771712
  br label %sz_s2u_compute.exit28.i110

sz_s2u_compute.exit28.i110:                       ; preds = %bb.aa, %bb.z, %bb.x
  %.0.i27.i111 = phi i64 [ %i.ct, %bb.z ], [ %i.cv, %bb.aa ], [ 0, %bb.x ] ; 2 uses
  %i.cw = icmp ult i64 %.0.i27.i111, %0
  br i1 %i.cw, label %imalloc.exit, label %.thread240

.thread240:                                       ; preds = %bb.t, %sz_s2u.exit25.i120, %sz_s2u_compute.exit28.i110, %bb.w
  %.0.i114 = phi i64 [ %.0.i27.i111, %sz_s2u_compute.exit28.i110 ], [ 16384, %bb.w ], [ 16384, %bb.t ], [ 16384, %sz_s2u.exit25.i120 ] ; 3 uses
  %i.cx = load i64, ptr @je_sz_large_pad, align 8, !tbaa !41
  %i.cy = add nuw nsw i64 %.sroa.32.0, 4094
  %i.cz = and i64 %i.cy, 9223372036854771712
  %i.da = add nsw i64 %i.cz, -4096
  %i.db = add i64 %i.da, %.0.i114
  %i.dc = add i64 %i.db, %i.cx
  %i.dd = icmp ult i64 %i.dc, %.0.i114
  %..0.i115 = select i1 %i.dd, i64 0, i64 %.0.i114
  br label %aligned_usize_get.exit.i

aligned_usize_get.exit.i:                         ; preds = %.thread240, %sz_s2u.exit25.i120
  %.018.i116 = phi i64 [ %..0.i115, %.thread240 ], [ %.0.i24.i121, %sz_s2u.exit25.i120 ] ; 2 uses
  %i.de = add nsw i64 %.018.i116, -8070450532247928833
  %spec.select.i.i = icmp ult i64 %i.de, -8070450532247928832
  br i1 %spec.select.i.i, label %imalloc.exit, label %aligned_usize_get.exit.i.thread

aligned_usize_get.exit.i.thread:                  ; preds = %bb.p, %bb.n, %bb.o, %bb.l, %aligned_usize_get.exit.i
  %.0226245 = phi i64 [ %.018.i116, %aligned_usize_get.exit.i ], [ %i.bh, %bb.o ], [ %i.bf, %bb.n ], [ %i.ay, %bb.l ], [ %i.bk, %bb.p ] ; 4 uses
  %.0227244 = phi i32 [ 0, %aligned_usize_get.exit.i ], [ %.0.i50.i, %bb.o ], [ %.0.i50.i, %bb.n ], [ %.0.i50.i, %bb.l ], [ %.0.i50.i, %bb.p ] ; 8 uses
  %i.df = icmp ult i64 %.0226245, 14337           ; 3 uses
  switch i32 %.sroa.54176.0, label %bb.ac [
    i32 -2, label %bb.ab
    i32 -1, label %tcache_get_from_ind.exit.i49
  ]

bb.ab:                                            ; preds = %aligned_usize_get.exit.i.thread
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.i94356, i64 960
  br label %tcache_get_from_ind.exit.i49

bb.ac:                                            ; preds = %aligned_usize_get.exit.i.thread
  %i.dh = load ptr, ptr @je_tcaches, align 8, !tbaa !147
  %i.di = zext nneg i32 %.sroa.54176.0 to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.di ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !24 ; 2 uses
  %magicptr.i = ptrtoint ptr %i.dk to i64
  switch i64 %magicptr.i, label %tcache_get_from_ind.exit.i49 [
    i64 0, label %bb.ad
    i64 1, label %bb.ae
  ], !prof !148

bb.ad:                                            ; preds = %bb.ac
  tail call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.92, i32 noundef range(i32 0, -2) %.sroa.54176.0) #20
  tail call void @abort() #21
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.dl = tail call ptr @je_tcache_create_explicit(ptr noundef nonnull %.0.i94356) #20 ; 2 uses
  store ptr %i.dl, ptr %i.dj, align 8, !tbaa !24
  br label %tcache_get_from_ind.exit.i49

tcache_get_from_ind.exit.i49:                     ; preds = %bb.ae, %bb.ac, %bb.ab, %aligned_usize_get.exit.i.thread
  %.0.i.i50 = phi ptr [ %i.dg, %bb.ab ], [ null, %aligned_usize_get.exit.i.thread ], [ %i.dk, %bb.ac ], [ %i.dl, %bb.ae ] ; 8 uses
  %i.dm = icmp eq i32 %.sroa.60.0, -1
  br i1 %i.dm, label %arena_get.exit.thread, label %bb.af

bb.af:                                            ; preds = %tcache_get_from_ind.exit.i49
  %i.dn = zext nneg i32 %.sroa.60.0 to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.dn
  %i.dp = load atomic ptr, ptr %i.do acquire, align 8 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %arena_get.exit, label %arena_get.exit.thread, !prof !21

arena_get.exit:                                   ; preds = %bb.af
  %i.dr = tail call ptr @je_arena_init(ptr noundef nonnull %.0.i94356, i32 noundef %.sroa.60.0, ptr noundef nonnull @je_arena_config_default), !inline_history !0 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %bb.ag, label %arena_get.exit.thread, !prof !22

bb.ag:                                            ; preds = %arena_get.exit
  %i.dt = load i32, ptr @je_narenas_auto, align 4, !tbaa !20
  %.not.i.i86 = icmp ult i32 %.sroa.60.0, %i.dt
  br i1 %.not.i.i86, label %arena_get.exit.thread, label %imalloc.exit

arena_get.exit.thread:                            ; preds = %bb.ag, %bb.af, %tcache_get_from_ind.exit.i49, %arena_get.exit
  %.1.ph = phi ptr [ %i.dp, %bb.af ], [ %i.dr, %arena_get.exit ], [ null, %tcache_get_from_ind.exit.i49 ], [ null, %bb.ag ] ; 4 uses
  br i1 %i.u, label %iallocztm_explicit_slab.exit.i55, label %ipallocztm_explicit_slab.exit92, !prof !23

ipallocztm_explicit_slab.exit92:                  ; preds = %arena_get.exit.thread
  %i.du = tail call ptr @je_arena_palloc(ptr noundef nonnull %.0.i94356, ptr noundef %.1.ph, i64 noundef %.0226245, i64 noundef %.sroa.32.0, i1 noundef zeroext %i.t, i1 noundef zeroext %i.df, ptr noundef %.0.i.i50) #20
  br label %imalloc_no_sample.exit87

iallocztm_explicit_slab.exit.i55:                 ; preds = %arena_get.exit.thread
  %.not.i22.i56 = icmp eq ptr %.0.i.i50, null
  br i1 %.not.i22.i56, label %.critedge.i.i57, label %bb.ah, !prof !21

bb.ah:                                            ; preds = %iallocztm_explicit_slab.exit.i55
  br i1 %i.df, label %bb.ai, label %bb.ar, !prof !23

bb.ai:                                            ; preds = %bb.ah
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.i.i50, i64 8
  %i.dw = zext nneg i32 %.0227244 to i64          ; 2 uses
  %i.dx = getelementptr inbounds nuw [24 x i8], ptr %i.dv, i64 %i.dw ; 9 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !108 ; 3 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !109 ; 2 uses
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 2 uses
  %i.ed = load i16, ptr %i.ec, align 8, !tbaa !110 ; 2 uses
  %i.ee = trunc i64 %i.ea to i16
  %.not.i26.i73 = icmp eq i16 %i.ed, %i.ee
  br i1 %.not.i26.i73, label %bb.ak, label %bb.aj, !prof !21

bb.aj:                                            ; preds = %bb.ai
  store ptr %i.eb, ptr %i.dx, align 8, !tbaa !108
  br label %cache_bin_alloc_impl.exit.i74.thread

bb.ak:                                            ; preds = %bb.ai
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dx, i64 20
  %i.eg = load i16, ptr %i.ef, align 4, !tbaa !111
  %.not21.i.i83 = icmp eq i16 %i.eg, %i.ed
  br i1 %.not21.i.i83, label %cache_bin_alloc_impl.exit.i74, label %bb.al, !prof !21

bb.al:                                            ; preds = %bb.ak
  store ptr %i.eb, ptr %i.dx, align 8, !tbaa !108
  %i.eh = ptrtoint ptr %i.eb to i64
  %i.ei = trunc i64 %i.eh to i16
  store i16 %i.ei, ptr %i.ec, align 8, !tbaa !110
  br label %cache_bin_alloc_impl.exit.i74.thread

cache_bin_alloc_impl.exit.i74:                    ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.ej = tail call fastcc ptr @arena_choose(ptr noundef nonnull %.0.i94356, ptr noundef %.1.ph) ; 3 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %.thread262, label %bb.am, !prof !21

bb.am:                                            ; preds = %cache_bin_alloc_impl.exit.i74
  %.val = load ptr, ptr %i.dx, align 8, !tbaa !108
  %i.el = icmp eq ptr %.val, @je_disabled_bin
  br i1 %i.el, label %bb.an, label %bb.ao, !prof !21

bb.an:                                            ; preds = %bb.am
  %i.em = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %.0.i94356, ptr noundef nonnull %i.ej, i64 noundef %0, i32 noundef %.0227244, i1 noundef zeroext %i.t, i1 noundef zeroext true) #20
  br label %.thread262

.thread262:                                       ; preds = %cache_bin_alloc_impl.exit.i74, %bb.an
  %.0.i24.i79.ph = phi ptr [ %i.em, %bb.an ], [ null, %cache_bin_alloc_impl.exit.i74 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %imalloc_no_sample.exit87

bb.ao:                                            ; preds = %bb.am
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i94356, ptr noundef nonnull %.0.i.i50, ptr noundef nonnull %i.dx, i32 noundef %.0227244, i1 noundef zeroext true) #20
  %i.en = call ptr @je_tcache_alloc_small_hard(ptr noundef nonnull %.0.i94356, ptr noundef nonnull %i.ej, ptr noundef nonnull %.0.i.i50, ptr noundef nonnull %i.dx, i32 noundef %.0227244, ptr noundef nonnull %i.a) #20
  %i.eo = load i8, ptr %i.a, align 1, !tbaa !40, !range !38, !noundef !39
  %4 = trunc nuw i8 %i.eo to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br i1 %4, label %cache_bin_alloc_impl.exit.i74.thread, label %imalloc.exit

cache_bin_alloc_impl.exit.i74.thread:             ; preds = %bb.al, %bb.aj, %bb.ao
  %.132.i.i82 = phi ptr [ %i.en, %bb.ao ], [ %i.dz, %bb.aj ], [ %i.dz, %bb.al ] ; 2 uses
  br i1 %i.t, label %bb.ap, label %bb.aq, !prof !21

bb.ap:                                            ; preds = %cache_bin_alloc_impl.exit.i74.thread
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.dw
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !41
  call void @llvm.memset.p0.i64(ptr align 1 %.132.i.i82, i8 0, i64 %i.eq, i1 false)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %cache_bin_alloc_impl.exit.i74.thread
  %i.er = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !112
  %i.et = add i64 %i.es, 1
  store i64 %i.et, ptr %i.er, align 8, !tbaa !112
  br label %imalloc_no_sample.exit87

bb.ar:                                            ; preds = %bb.ah
  %i.eu = load ptr, ptr %.0.i.i50, align 8, !tbaa !114
  %i.ev = getelementptr i8, ptr %i.eu, i64 48
  %.val129 = load i32, ptr %i.ev, align 8, !tbaa !121
  %i.ew = icmp ult i32 %.0227244, %.val129
  br i1 %i.ew, label %bb.as, label %.critedge.i.i57, !prof !23

bb.as:                                            ; preds = %bb.ar
  %i.ex = getelementptr inbounds nuw i8, ptr %.0.i.i50, i64 8
  %i.ey = zext nneg i32 %.0227244 to i64          ; 2 uses
  %i.ez = getelementptr inbounds nuw [24 x i8], ptr %i.ex, i64 %i.ey ; 7 uses
  %.val124.a = load ptr, ptr %i.ez, align 8, !tbaa !108 ; 4 uses
  %.not331 = icmp eq ptr %.val124.a, @je_disabled_bin
  br i1 %.not331, label %.critedge.i.i57, label %bb.at, !prof !21

bb.at:                                            ; preds = %bb.as
  %i.fa = load ptr, ptr %.val124.a, align 8, !tbaa !109 ; 3 uses
  %i.fb = ptrtoint ptr %.val124.a to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %.val124.a, i64 8 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 2 uses
  %i.fe = load i16, ptr %i.fd, align 8, !tbaa !110 ; 2 uses
  %i.ff = trunc i64 %i.fb to i16
  %.not.i28.i61 = icmp eq i16 %i.fe, %i.ff
  br i1 %.not.i28.i61, label %bb.av, label %bb.au, !prof !21

bb.au:                                            ; preds = %bb.at
  store ptr %i.fc, ptr %i.ez, align 8, !tbaa !108
  br label %bb.bd

bb.av:                                            ; preds = %bb.at
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ez, i64 20
  %i.fh = load i16, ptr %i.fg, align 4, !tbaa !111
  %.not21.i30.i72 = icmp eq i16 %i.fh, %i.fe
  br i1 %.not21.i30.i72, label %cache_bin_alloc_impl.exit31.i62, label %bb.aw, !prof !21

bb.aw:                                            ; preds = %bb.av
  store ptr %i.fc, ptr %i.ez, align 8, !tbaa !108
  %i.fi = ptrtoint ptr %i.fc to i64
  %i.fj = trunc i64 %i.fi to i16
  store i16 %i.fj, ptr %i.fd, align 8, !tbaa !110
  br label %bb.bd

cache_bin_alloc_impl.exit31.i62:                  ; preds = %bb.av
  %i.fk = tail call fastcc ptr @arena_choose(ptr noundef nonnull %.0.i94356, ptr noundef %.1.ph) ; 2 uses
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %imalloc.exit, label %bb.ax, !prof !21

bb.ax:                                            ; preds = %cache_bin_alloc_impl.exit31.i62
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i94356, ptr noundef nonnull %.0.i.i50, ptr noundef nonnull %i.ez, i32 noundef %.0227244, i1 noundef zeroext false) #20
  %i.fm = icmp samesign ult i64 %0, 4097
  br i1 %i.fm, label %bb.ay, label %bb.az, !prof !23

bb.ay:                                            ; preds = %bb.ax
  %i.fn = add nuw nsw i64 %0, 7
  %i.fo = lshr i64 %i.fn, 3
  %i.fp = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !24
  %i.fr = zext i8 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.fr
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !41
  br label %sz_s2u.exit.i67

bb.az:                                            ; preds = %bb.ax
  %i.fu = icmp samesign ugt i64 %0, 8070450532247928832
  br i1 %i.fu, label %sz_s2u.exit.i67, label %bb.ba, !prof !21

bb.ba:                                            ; preds = %bb.az
  %i.fv = icmp samesign ugt i64 %0, 14336
  %i.fw = load i8, ptr @je_opt_disable_large_size_classes, align 1, !range !38
  %i.fx = trunc nuw i8 %i.fw to i1
  %or.cond324 = select i1 %i.fv, i1 %i.fx, i1 false
  br i1 %or.cond324, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fy = shl nuw i64 %0, 1
  %i.fz = add i64 %i.fy, -1
  %i.ga = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.fz, i1 true) ; 2 uses
  %notmask.i.i64 = ashr exact i64 -1152921504606846976, %i.ga
  %i.gb = lshr i64 1152921504606846975, %i.ga
  %i.gc = add nuw nsw i64 %0, %i.gb
  %i.gd = and i64 %i.gc, %notmask.i.i64
  br label %sz_s2u.exit.i67

bb.bc:                                            ; preds = %bb.ba
  %i.ge = add nuw nsw i64 %0, 4095
  %i.gf = and i64 %i.ge, 9223372036854771712
  br label %sz_s2u.exit.i67

sz_s2u.exit.i67:                                  ; preds = %bb.az, %bb.bb, %bb.bc, %bb.ay
  %.0.i32.i68 = phi i64 [ %i.ft, %bb.ay ], [ %i.gd, %bb.bb ], [ %i.gf, %bb.bc ], [ 0, %bb.az ]
  %i.gg = tail call ptr @je_large_malloc(ptr noundef nonnull %.0.i94356, ptr noundef nonnull %i.fk, i64 noundef %.0.i32.i68, i1 noundef zeroext %i.t) #20 ; 2 uses
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %imalloc.exit, label %bb.bf

bb.bd:                                            ; preds = %bb.au, %bb.aw
  br i1 %i.t, label %bb.be, label %bb.bf, !prof !21

bb.be:                                            ; preds = %bb.bd
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.ey
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fa, i8 0, i64 %i.gj, i1 false)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %sz_s2u.exit.i67
  %.021.i.i69 = phi ptr [ %i.gg, %sz_s2u.exit.i67 ], [ %i.fa, %bb.be ], [ %i.fa, %bb.bd ]
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !112
  %i.gm = add i64 %i.gl, 1
  store i64 %i.gm, ptr %i.gk, align 8, !tbaa !112
  br label %imalloc_no_sample.exit87

.critedge.i.i57:                                  ; preds = %bb.as, %bb.ar, %iallocztm_explicit_slab.exit.i55
  %i.gn = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %.0.i94356, ptr noundef %.1.ph, i64 noundef %0, i32 noundef %.0227244, i1 noundef zeroext %i.t, i1 noundef zeroext %i.df) #20
  br label %imalloc_no_sample.exit87

imalloc_no_sample.exit87:                         ; preds = %.critedge.i.i57, %.thread262, %bb.aq, %bb.bf, %ipallocztm_explicit_slab.exit92
  %.0.i54 = phi ptr [ %.021.i.i69, %bb.bf ], [ %i.du, %ipallocztm_explicit_slab.exit92 ], [ %i.gn, %.critedge.i.i57 ], [ %.0.i24.i79.ph, %.thread262 ], [ %.132.i.i82, %bb.aq ] ; 2 uses
  %i.go = icmp eq ptr %.0.i54, null
  br i1 %i.go, label %imalloc.exit, label %bb.bg, !prof !133

bb.bg:                                            ; preds = %imalloc_no_sample.exit87
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store i8 1, ptr %2, align 8, !tbaa !125
  %i.gp = getelementptr inbounds nuw i8, ptr %.0.i94356, i64 928 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.gp, ptr %i.gq, align 8, !tbaa !126
  %i.gr = getelementptr inbounds nuw i8, ptr %.0.i94356, i64 8
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.gr, ptr %i.gs, align 8, !tbaa !127
  %i.gt = getelementptr inbounds nuw i8, ptr %.0.i94356, i64 16 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.gt, ptr %i.gu, align 8, !tbaa !128
  %i.gv = getelementptr inbounds nuw i8, ptr %.0.i94356, i64 936
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.gv, ptr %i.gw, align 8, !tbaa !129
  %i.gx = load i64, ptr %i.gp, align 8, !tbaa !41 ; 2 uses
  %i.gy = add i64 %i.gx, %.0226245
  store i64 %i.gy, ptr %i.gp, align 8, !tbaa !41
  %i.gz = load i64, ptr %i.gt, align 8, !tbaa !41
  %i.ha = sub i64 %i.gz, %i.gx
  %i.hb = icmp ult i64 %.0226245, %i.ha
  br i1 %i.hb, label %bb.bi, label %bb.bh, !prof !23

bb.bh:                                            ; preds = %bb.bg
  call void @je_te_event_trigger(ptr noundef nonnull %.0.i94356, ptr noundef nonnull %2) #20
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %imalloc.exit

bb.bj:                                            ; preds = %tsd_fetch_impl.exit
  %i.hc = load i32, ptr @je_malloc_init_state, align 4, !tbaa !20
  %i.hd = icmp eq i32 %i.hc, 0
  br i1 %i.hd, label %compute_size_with_overflow.exit, label %bb.bk, !prof !23

bb.bk:                                            ; preds = %bb.bj
  %i.he = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.he, label %imalloc_init_check.exit, label %compute_size_with_overflow.exit, !prof !130

imalloc_init_check.exit:                          ; preds = %bb.bk
  %i.hf = tail call ptr @__errno_location() #22, !inline_history !6
  store i32 12, ptr %i.hf, align 4, !tbaa !20
  br label %imalloc.exit

compute_size_with_overflow.exit:                  ; preds = %bb.bj, %bb.bk
  %i.hg = load i8, ptr @je_opt_zero, align 1, !range !38
  %i.hh = or i8 %i.hg, %.sroa.42.0
  %.0.i.i18 = trunc i8 %i.hh to i1                ; 7 uses
  %i.hi = icmp eq i64 %.sroa.32.0, 0              ; 2 uses
  br i1 %i.hi, label %bb.bl, label %bb.bw

bb.bl:                                            ; preds = %compute_size_with_overflow.exit
  %i.hj = icmp ult i64 %0, 4097                   ; 2 uses
  br i1 %i.hj, label %bb.bm, label %bb.bn, !prof !23

bb.bm:                                            ; preds = %bb.bl
  %i.hk = add nuw nsw i64 %0, 7
  %i.hl = lshr i64 %i.hk, 3
  %i.hm = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !24
  %i.ho = zext i8 %i.hn to i32
  br label %sz_size2index.exit.i28

bb.bn:                                            ; preds = %bb.bl
  %i.hp = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.hp, label %aligned_usize_get.exit.i22.thread283, label %bb.bo, !prof !21

bb.bo:                                            ; preds = %bb.bn
  %i.hq = shl nuw i64 %0, 1
  %i.hr = add i64 %i.hq, -1
  %i.hs = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.hr, i1 true) ; 3 uses
  %i.ht = trunc nuw nsw i64 %i.hs to i32
  %i.hu = sub nuw nsw i64 60, %i.hs
  %i.hv = ashr exact i64 -1152921504606846976, %i.hs
  %i.hw = add nsw i64 %0, -1
  %i.hx = and i64 %i.hv, %i.hw
  %i.hy = lshr i64 %i.hx, %i.hu
  %i.hz = trunc i64 %i.hy to i32
  %i.ia = and i32 %i.hz, 3
  %i.ib = shl nuw nsw i32 %i.ht, 2
  %reass.sub = sub nsw i32 %i.ia, %i.ib
  %i.ic = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit.i28

sz_size2index.exit.i28:                           ; preds = %bb.bo, %bb.bm
  %.0.i50.i29 = phi i32 [ %i.ho, %bb.bm ], [ %i.ic, %bb.bo ] ; 6 uses
  %i.id = icmp samesign ugt i32 %.0.i50.i29, 231
  br i1 %i.id, label %aligned_usize_get.exit.i22.thread283, label %bb.bp, !prof !101

bb.bp:                                            ; preds = %sz_size2index.exit.i28
  %i.ie = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !40, !range !38, !noundef !39
  %i.if = trunc nuw i8 %i.ie to i1
  br i1 %i.if, label %bb.bq, label %bb.bv

bb.bq:                                            ; preds = %bb.bp
  br i1 %i.hj, label %bb.br, label %bb.bs, !prof !23

bb.br:                                            ; preds = %bb.bq
  %i.ig = add nuw nsw i64 %0, 7
  %i.ih = lshr i64 %i.ig, 3
  %i.ii = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.ih
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !24
  %i.ik = zext i8 %i.ij to i64
  %i.il = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.ik
  %i.im = load i64, ptr %i.il, align 8, !tbaa !41
  br label %aligned_usize_get.exit.i22.thread

bb.bs:                                            ; preds = %bb.bq
  %i.in = icmp samesign ult i64 %0, 14337
  br i1 %i.in, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.io = shl nuw nsw i64 %0, 1
  %i.ip = add nsw i64 %i.io, -1
  %i.iq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.ip, i1 true) ; 2 uses
  %notmask.i.i30 = ashr exact i64 -1152921504606846976, %i.iq
  %i.ir = lshr i64 1152921504606846975, %i.iq
  %i.is = add nuw nsw i64 %0, %i.ir
  %i.it = and i64 %i.is, %notmask.i.i30
  br label %aligned_usize_get.exit.i22.thread

bb.bu:                                            ; preds = %bb.bs
  %i.iu = add nuw nsw i64 %0, 4095
  %i.iv = and i64 %i.iu, 9223372036854771712
  br label %aligned_usize_get.exit.i22.thread

bb.bv:                                            ; preds = %bb.bp
  %i.iw = zext nneg i32 %.0.i50.i29 to i64
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.iw
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !41
  br label %aligned_usize_get.exit.i22.thread

bb.bw:                                            ; preds = %compute_size_with_overflow.exit
  %i.iz = icmp ult i64 %0, 14337
  %i.ja = icmp ult i64 %.sroa.32.0, 4097
  %or.cond.i100 = and i1 %i.iz, %i.ja
  br i1 %or.cond.i100, label %bb.bx, label %bb.cb

bb.bx:                                            ; preds = %bb.bw
  %i.jb = add nsw i64 %0, -1
  %i.jc = add nsw i64 %i.jb, %.sroa.32.0
  %i.jd = sub nsw i64 0, %.sroa.32.0
  %i.je = and i64 %i.jc, %i.jd                    ; 5 uses
  %i.jf = icmp samesign ult i64 %i.je, 4097
  br i1 %i.jf, label %bb.by, label %bb.bz, !prof !23

bb.by:                                            ; preds = %bb.bx
  %i.jg = add nuw nsw i64 %i.je, 6
  %i.jh = lshr i64 %i.jg, 3
  %i.ji = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.jh
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !24
  %i.jk = zext i8 %i.jj to i64
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.jk
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !41
  br label %sz_s2u.exit25.i

bb.bz:                                            ; preds = %bb.bx
  %i.jn = icmp samesign ugt i64 %i.je, 14336
  %i.jo = load i8, ptr @je_opt_disable_large_size_classes, align 1, !range !38
  %i.jp = trunc nuw i8 %i.jo to i1
  %or.cond326 = select i1 %i.jn, i1 %i.jp, i1 false
  br i1 %or.cond326, label %.thread276, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jq = shl nuw nsw i64 %i.je, 1
  %i.jr = add nsw i64 %i.jq, -1
  %i.js = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.jr, i1 true) ; 2 uses
  %notmask.i29.i = ashr exact i64 -1152921504606846976, %i.js
  %i.jt = lshr i64 1152921504606846975, %i.js
  %i.ju = add nuw nsw i64 %i.je, %i.jt
  %i.jv = and i64 %i.ju, %notmask.i29.i
  br label %sz_s2u.exit25.i

sz_s2u.exit25.i:                                  ; preds = %bb.ca, %bb.by
  %.0.i24.i107 = phi i64 [ %i.jm, %bb.by ], [ %i.jv, %bb.ca ] ; 2 uses
  %i.jw = icmp ult i64 %.0.i24.i107, 16384
  br i1 %i.jw, label %aligned_usize_get.exit.i22, label %.thread276

bb.cb:                                            ; preds = %bb.bw
  %i.jx = icmp ugt i64 %.sroa.32.0, 8070450532247928832
  br i1 %i.jx, label %aligned_usize_get.exit.i22.thread283, label %bb.cc, !prof !137

bb.cc:                                            ; preds = %bb.cb
  %i.jy = icmp ult i64 %0, 16385
  br i1 %i.jy, label %.thread276, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.jz = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.jz, label %sz_s2u_compute.exit28.i, label %bb.ce, !prof !21

bb.ce:                                            ; preds = %bb.cd
  %i.ka = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !40, !range !38, !noundef !39
  %i.kb = trunc nuw i8 %i.ka to i1
  br i1 %i.kb, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.kc = shl nuw i64 %0, 1
  %i.kd = add i64 %i.kc, -1
  %i.ke = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.kd, i1 true) ; 2 uses
  %notmask.i.i101 = ashr exact i64 -1152921504606846976, %i.ke
  %i.kf = lshr i64 1152921504606846975, %i.ke
  %i.kg = add nuw nsw i64 %0, %i.kf
  %i.kh = and i64 %i.kg, %notmask.i.i101
  br label %sz_s2u_compute.exit28.i

bb.cg:                                            ; preds = %bb.ce
  %i.ki = add nuw nsw i64 %0, 4095
  %i.kj = and i64 %i.ki, 9223372036854771712
  br label %sz_s2u_compute.exit28.i

sz_s2u_compute.exit28.i:                          ; preds = %bb.cg, %bb.cf, %bb.cd
  %.0.i27.i102 = phi i64 [ %i.kh, %bb.cf ], [ %i.kj, %bb.cg ], [ 0, %bb.cd ] ; 2 uses
  %i.kk = icmp ult i64 %.0.i27.i102, %0
  br i1 %i.kk, label %aligned_usize_get.exit.i22.thread283, label %.thread276

.thread276:                                       ; preds = %bb.bz, %sz_s2u.exit25.i, %sz_s2u_compute.exit28.i, %bb.cc
  %.0.i105 = phi i64 [ %.0.i27.i102, %sz_s2u_compute.exit28.i ], [ 16384, %bb.cc ], [ 16384, %bb.bz ], [ 16384, %sz_s2u.exit25.i ] ; 3 uses
  %i.kl = load i64, ptr @je_sz_large_pad, align 8, !tbaa !41
  %i.km = add nuw nsw i64 %.sroa.32.0, 4094
  %i.kn = and i64 %i.km, 9223372036854771712
  %i.ko = add nsw i64 %i.kn, -4096
  %i.kp = add i64 %i.ko, %.0.i105
  %i.kq = add i64 %i.kp, %i.kl
  %i.kr = icmp ult i64 %i.kq, %.0.i105
  %..0.i = select i1 %i.kr, i64 0, i64 %.0.i105
  br label %aligned_usize_get.exit.i22

aligned_usize_get.exit.i22:                       ; preds = %.thread276, %sz_s2u.exit25.i
  %.018.i = phi i64 [ %..0.i, %.thread276 ], [ %.0.i24.i107, %sz_s2u.exit25.i ] ; 2 uses
  %i.ks = add nsw i64 %.018.i, -8070450532247928833
  %spec.select.i.i21 = icmp ult i64 %i.ks, -8070450532247928832
  br i1 %spec.select.i.i21, label %aligned_usize_get.exit.i22.thread283, label %aligned_usize_get.exit.i22.thread

aligned_usize_get.exit.i22.thread:                ; preds = %bb.bv, %bb.bt, %bb.bu, %bb.br, %aligned_usize_get.exit.i22
  %.0229281 = phi i64 [ %.018.i, %aligned_usize_get.exit.i22 ], [ %i.iv, %bb.bu ], [ %i.it, %bb.bt ], [ %i.im, %bb.br ], [ %i.iy, %bb.bv ] ; 5 uses
  %.0230280 = phi i32 [ 0, %aligned_usize_get.exit.i22 ], [ %.0.i50.i29, %bb.bu ], [ %.0.i50.i29, %bb.bt ], [ %.0.i50.i29, %bb.br ], [ %.0.i50.i29, %bb.bv ] ; 8 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !24
  %i.kv = icmp sgt i8 %i.ku, 0
  %i.kw = icmp ult i64 %.0229281, 14337           ; 3 uses
  br i1 %i.kv, label %tcache_get_from_ind.exit.i.thread, label %bb.ch, !prof !132

bb.ch:                                            ; preds = %aligned_usize_get.exit.i22.thread
  switch i32 %.sroa.54176.0, label %bb.cj [
    i32 -2, label %bb.ci
    i32 -1, label %tcache_get_from_ind.exit.i
  ]

bb.ci:                                            ; preds = %bb.ch
  %i.kx = load i8, ptr %i.r, align 8, !tbaa !40, !range !38, !noundef !39
  %i.ky = trunc nuw i8 %i.kx to i1
  %i.kz = getelementptr inbounds nuw i8, ptr %i.r, i64 960
  %spec.select = select i1 %i.ky, ptr %i.kz, ptr null
  br label %tcache_get_from_ind.exit.i

bb.cj:                                            ; preds = %bb.ch
  %i.la = load ptr, ptr @je_tcaches, align 8, !tbaa !147
  %i.lb = zext nneg i32 %.sroa.54176.0 to i64
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %i.lb ; 2 uses
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !24 ; 2 uses
  %magicptr.i98 = ptrtoint ptr %i.ld to i64
  switch i64 %magicptr.i98, label %tcache_get_from_ind.exit.i [
    i64 0, label %bb.ck
    i64 1, label %bb.cl
  ], !prof !148

bb.ck:                                            ; preds = %bb.cj
  tail call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.92, i32 noundef range(i32 0, -2) %.sroa.54176.0) #20
  tail call void @abort() #21
  unreachable

bb.cl:                                            ; preds = %bb.cj
  %i.le = tail call ptr @je_tcache_create_explicit(ptr noundef nonnull %i.r) #20 ; 2 uses
  store ptr %i.le, ptr %i.lc, align 8, !tbaa !24
  br label %tcache_get_from_ind.exit.i

tcache_get_from_ind.exit.i:                       ; preds = %bb.cl, %bb.cj, %bb.ci, %bb.ch
  %.0.i.i43 = phi ptr [ %spec.select, %bb.ci ], [ null, %bb.ch ], [ %i.ld, %bb.cj ], [ %i.le, %bb.cl ] ; 2 uses
  %i.lf = icmp eq i32 %.sroa.60.0, -1
  br i1 %i.lf, label %arena_get.exit143.thread, label %tcache_get_from_ind.exit.i.thread

tcache_get_from_ind.exit.i.thread:                ; preds = %aligned_usize_get.exit.i22.thread, %tcache_get_from_ind.exit.i
  %.0.i.i43300 = phi ptr [ %.0.i.i43, %tcache_get_from_ind.exit.i ], [ null, %aligned_usize_get.exit.i22.thread ] ; 3 uses
  %.sroa.60.2294297 = phi i32 [ %.sroa.60.0, %tcache_get_from_ind.exit.i ], [ 0, %aligned_usize_get.exit.i22.thread ] ; 3 uses
  %i.lg = zext nneg i32 %.sroa.60.2294297 to i64
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.lg
  %i.li = load atomic ptr, ptr %i.lh acquire, align 8 ; 2 uses
  %i.lj = icmp eq ptr %i.li, null
  br i1 %i.lj, label %arena_get.exit143, label %arena_get.exit143.thread, !prof !21

arena_get.exit143:                                ; preds = %tcache_get_from_ind.exit.i.thread
  %i.lk = tail call ptr @je_arena_init(ptr noundef nonnull %i.r, i32 noundef %.sroa.60.2294297, ptr noundef nonnull @je_arena_config_default), !inline_history !0 ; 2 uses
  %i.ll = icmp eq ptr %i.lk, null
  br i1 %i.ll, label %bb.cm, label %arena_get.exit143.thread, !prof !22

bb.cm:                                            ; preds = %arena_get.exit143
  %i.lm = load i32, ptr @je_narenas_auto, align 4, !tbaa !20
  %.not.i.i = icmp ult i32 %.sroa.60.2294297, %i.lm
  br i1 %.not.i.i, label %arena_get.exit143.thread, label %aligned_usize_get.exit.i22.thread283

arena_get.exit143.thread:                         ; preds = %bb.cm, %tcache_get_from_ind.exit.i.thread, %tcache_get_from_ind.exit.i, %arena_get.exit143
  %.0.i.i43298.ph = phi ptr [ %.0.i.i43300, %tcache_get_from_ind.exit.i.thread ], [ %.0.i.i43300, %arena_get.exit143 ], [ %.0.i.i43, %tcache_get_from_ind.exit.i ], [ %.0.i.i43300, %bb.cm ] ; 8 uses
  %.1233.ph = phi ptr [ %i.li, %tcache_get_from_ind.exit.i.thread ], [ %i.lk, %arena_get.exit143 ], [ null, %tcache_get_from_ind.exit.i ], [ null, %bb.cm ] ; 4 uses
  br i1 %i.hi, label %iallocztm_explicit_slab.exit.i, label %ipallocztm_explicit_slab.exit, !prof !23

ipallocztm_explicit_slab.exit:                    ; preds = %arena_get.exit143.thread
  %i.ln = tail call ptr @je_arena_palloc(ptr noundef nonnull %i.r, ptr noundef %.1233.ph, i64 noundef %.0229281, i64 noundef %.sroa.32.0, i1 noundef zeroext %.0.i.i18, i1 noundef zeroext %i.kw, ptr noundef %.0.i.i43298.ph) #20
  br label %imalloc_no_sample.exit

iallocztm_explicit_slab.exit.i:                   ; preds = %arena_get.exit143.thread
  %.not.i22.i = icmp eq ptr %.0.i.i43298.ph, null
  br i1 %.not.i22.i, label %.critedge.i.i, label %bb.cn, !prof !21

bb.cn:                                            ; preds = %iallocztm_explicit_slab.exit.i
  br i1 %i.kw, label %bb.co, label %bb.cx, !prof !23

bb.co:                                            ; preds = %bb.cn
  %i.lo = getelementptr inbounds nuw i8, ptr %.0.i.i43298.ph, i64 8
  %i.lp = zext nneg i32 %.0230280 to i64          ; 2 uses
  %i.lq = getelementptr inbounds nuw [24 x i8], ptr %i.lo, i64 %i.lp ; 9 uses
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !108 ; 3 uses
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !109 ; 2 uses
  %i.lt = ptrtoint ptr %i.lr to i64
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lr, i64 8 ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lq, i64 16 ; 2 uses
  %i.lw = load i16, ptr %i.lv, align 8, !tbaa !110 ; 2 uses
  %i.lx = trunc i64 %i.lt to i16
  %.not.i26.i = icmp eq i16 %i.lw, %i.lx
  br i1 %.not.i26.i, label %bb.cq, label %bb.cp, !prof !21

bb.cp:                                            ; preds = %bb.co
  store ptr %i.lu, ptr %i.lq, align 8, !tbaa !108
  br label %cache_bin_alloc_impl.exit.i.thread

bb.cq:                                            ; preds = %bb.co
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lq, i64 20
  %i.lz = load i16, ptr %i.ly, align 4, !tbaa !111
  %.not21.i.i = icmp eq i16 %i.lz, %i.lw
  br i1 %.not21.i.i, label %cache_bin_alloc_impl.exit.i, label %bb.cr, !prof !21

bb.cr:                                            ; preds = %bb.cq
  store ptr %i.lu, ptr %i.lq, align 8, !tbaa !108
  %i.ma = ptrtoint ptr %i.lu to i64
  %i.mb = trunc i64 %i.ma to i16
  store i16 %i.mb, ptr %i.lv, align 8, !tbaa !110
  br label %cache_bin_alloc_impl.exit.i.thread

cache_bin_alloc_impl.exit.i:                      ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.mc = tail call fastcc ptr @arena_choose(ptr noundef nonnull %i.r, ptr noundef %.1233.ph) ; 3 uses
  %i.md = icmp eq ptr %i.mc, null
  br i1 %i.md, label %.thread310, label %bb.cs, !prof !21

bb.cs:                                            ; preds = %cache_bin_alloc_impl.exit.i
  %.val125.a = load ptr, ptr %i.lq, align 8, !tbaa !108
  %i.me = icmp eq ptr %.val125.a, @je_disabled_bin
  br i1 %i.me, label %bb.ct, label %bb.cu, !prof !21

bb.ct:                                            ; preds = %bb.cs
  %i.mf = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %i.r, ptr noundef nonnull %i.mc, i64 noundef %0, i32 noundef %.0230280, i1 noundef zeroext %.0.i.i18, i1 noundef zeroext true) #20
  br label %.thread310

.thread310:                                       ; preds = %cache_bin_alloc_impl.exit.i, %bb.ct
  %.0.i24.i.ph = phi ptr [ %i.mf, %bb.ct ], [ null, %cache_bin_alloc_impl.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %imalloc_no_sample.exit

bb.cu:                                            ; preds = %bb.cs
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %i.r, ptr noundef nonnull %.0.i.i43298.ph, ptr noundef nonnull %i.lq, i32 noundef %.0230280, i1 noundef zeroext true) #20
  %i.mg = call ptr @je_tcache_alloc_small_hard(ptr noundef nonnull %i.r, ptr noundef nonnull %i.mc, ptr noundef nonnull %.0.i.i43298.ph, ptr noundef nonnull %i.lq, i32 noundef %.0230280, ptr noundef nonnull %i.b) #20
  %i.mh = load i8, ptr %i.b, align 1, !tbaa !40, !range !38, !noundef !39
  %5 = trunc nuw i8 %i.mh to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br i1 %5, label %cache_bin_alloc_impl.exit.i.thread, label %aligned_usize_get.exit.i22.thread283

cache_bin_alloc_impl.exit.i.thread:               ; preds = %bb.cr, %bb.cp, %bb.cu
  %.132.i.i = phi ptr [ %i.mg, %bb.cu ], [ %i.ls, %bb.cp ], [ %i.ls, %bb.cr ] ; 2 uses
  br i1 %.0.i.i18, label %bb.cv, label %bb.cw, !prof !21

bb.cv:                                            ; preds = %cache_bin_alloc_impl.exit.i.thread
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.lp
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !41
  call void @llvm.memset.p0.i64(ptr align 1 %.132.i.i, i8 0, i64 %i.mj, i1 false)
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %cache_bin_alloc_impl.exit.i.thread
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lq, i64 8 ; 2 uses
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !112
  %i.mm = add i64 %i.ml, 1
  store i64 %i.mm, ptr %i.mk, align 8, !tbaa !112
  br label %imalloc_no_sample.exit

bb.cx:                                            ; preds = %bb.cn
  %i.mn = load ptr, ptr %.0.i.i43298.ph, align 8, !tbaa !114
  %i.mo = getelementptr i8, ptr %i.mn, i64 48
  %.val132 = load i32, ptr %i.mo, align 8, !tbaa !121
  %i.mp = icmp ult i32 %.0230280, %.val132
  br i1 %i.mp, label %bb.cy, label %.critedge.i.i, !prof !23

bb.cy:                                            ; preds = %bb.cx
  %i.mq = getelementptr inbounds nuw i8, ptr %.0.i.i43298.ph, i64 8
  %i.mr = zext nneg i32 %.0230280 to i64          ; 2 uses
  %i.ms = getelementptr inbounds nuw [24 x i8], ptr %i.mq, i64 %i.mr ; 7 uses
  %.val126 = load ptr, ptr %i.ms, align 8, !tbaa !108 ; 4 uses
  %.not329 = icmp eq ptr %.val126, @je_disabled_bin
  br i1 %.not329, label %.critedge.i.i, label %bb.cz, !prof !21

bb.cz:                                            ; preds = %bb.cy
  %i.mt = load ptr, ptr %.val126, align 8, !tbaa !109 ; 3 uses
  %i.mu = ptrtoint ptr %.val126 to i64
  %i.mv = getelementptr inbounds nuw i8, ptr %.val126, i64 8 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ms, i64 16 ; 2 uses
  %i.mx = load i16, ptr %i.mw, align 8, !tbaa !110 ; 2 uses
  %i.my = trunc i64 %i.mu to i16
  %.not.i28.i = icmp eq i16 %i.mx, %i.my
  br i1 %.not.i28.i, label %bb.db, label %bb.da, !prof !21

bb.da:                                            ; preds = %bb.cz
  store ptr %i.mv, ptr %i.ms, align 8, !tbaa !108
  br label %bb.dj

bb.db:                                            ; preds = %bb.cz
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ms, i64 20
  %i.na = load i16, ptr %i.mz, align 4, !tbaa !111
  %.not21.i30.i = icmp eq i16 %i.na, %i.mx
  br i1 %.not21.i30.i, label %cache_bin_alloc_impl.exit31.i, label %bb.dc, !prof !21

bb.dc:                                            ; preds = %bb.db
  store ptr %i.mv, ptr %i.ms, align 8, !tbaa !108
  %i.nb = ptrtoint ptr %i.mv to i64
  %i.nc = trunc i64 %i.nb to i16
  store i16 %i.nc, ptr %i.mw, align 8, !tbaa !110
  br label %bb.dj

cache_bin_alloc_impl.exit31.i:                    ; preds = %bb.db
  %i.nd = tail call fastcc ptr @arena_choose(ptr noundef nonnull %i.r, ptr noundef %.1233.ph) ; 2 uses
  %i.ne = icmp eq ptr %i.nd, null
  br i1 %i.ne, label %aligned_usize_get.exit.i22.thread283, label %bb.dd, !prof !21

bb.dd:                                            ; preds = %cache_bin_alloc_impl.exit31.i
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %i.r, ptr noundef nonnull %.0.i.i43298.ph, ptr noundef nonnull %i.ms, i32 noundef %.0230280, i1 noundef zeroext false) #20
  %i.nf = icmp samesign ult i64 %0, 4097
  br i1 %i.nf, label %bb.de, label %bb.df, !prof !23

bb.de:                                            ; preds = %bb.dd
  %i.ng = add nuw nsw i64 %0, 7
  %i.nh = lshr i64 %i.ng, 3
  %i.ni = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.nh
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !24
  %i.nk = zext i8 %i.nj to i64
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.nk
  %i.nm = load i64, ptr %i.nl, align 8, !tbaa !41
  br label %sz_s2u.exit.i48

bb.df:                                            ; preds = %bb.dd
  %i.nn = icmp samesign ugt i64 %0, 8070450532247928832
  br i1 %i.nn, label %sz_s2u.exit.i48, label %bb.dg, !prof !21

bb.dg:                                            ; preds = %bb.df
  %i.no = icmp samesign ugt i64 %0, 14336
  %i.np = load i8, ptr @je_opt_disable_large_size_classes, align 1, !range !38
  %i.nq = trunc nuw i8 %i.np to i1
  %or.cond328 = select i1 %i.no, i1 %i.nq, i1 false
  br i1 %or.cond328, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.nr = shl nuw i64 %0, 1
  %i.ns = add i64 %i.nr, -1
  %i.nt = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.ns, i1 true) ; 2 uses
  %notmask.i.i46 = ashr exact i64 -1152921504606846976, %i.nt
  %i.nu = lshr i64 1152921504606846975, %i.nt
  %i.nv = add nuw nsw i64 %0, %i.nu
  %i.nw = and i64 %i.nv, %notmask.i.i46
  br label %sz_s2u.exit.i48

bb.di:                                            ; preds = %bb.dg
  %i.nx = add nuw nsw i64 %0, 4095
  %i.ny = and i64 %i.nx, 9223372036854771712
  br label %sz_s2u.exit.i48

sz_s2u.exit.i48:                                  ; preds = %bb.df, %bb.dh, %bb.di, %bb.de
  %.0.i32.i = phi i64 [ %i.nm, %bb.de ], [ %i.nw, %bb.dh ], [ %i.ny, %bb.di ], [ 0, %bb.df ]
  %i.nz = tail call ptr @je_large_malloc(ptr noundef nonnull %i.r, ptr noundef nonnull %i.nd, i64 noundef %.0.i32.i, i1 noundef zeroext %.0.i.i18) #20 ; 2 uses
  %i.oa = icmp eq ptr %i.nz, null
  br i1 %i.oa, label %aligned_usize_get.exit.i22.thread283, label %bb.dl

bb.dj:                                            ; preds = %bb.da, %bb.dc
  br i1 %.0.i.i18, label %bb.dk, label %bb.dl, !prof !21

bb.dk:                                            ; preds = %bb.dj
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.mr
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.mt, i8 0, i64 %i.oc, i1 false)
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj, %sz_s2u.exit.i48
  %.021.i.i = phi ptr [ %i.nz, %sz_s2u.exit.i48 ], [ %i.mt, %bb.dk ], [ %i.mt, %bb.dj ]
  %i.od = getelementptr inbounds nuw i8, ptr %i.ms, i64 8 ; 2 uses
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !112
  %i.of = add i64 %i.oe, 1
  store i64 %i.of, ptr %i.od, align 8, !tbaa !112
  br label %imalloc_no_sample.exit

.critedge.i.i:                                    ; preds = %bb.cy, %bb.cx, %iallocztm_explicit_slab.exit.i
  %i.og = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %i.r, ptr noundef %.1233.ph, i64 noundef %0, i32 noundef %.0230280, i1 noundef zeroext %.0.i.i18, i1 noundef zeroext %i.kw) #20
  br label %imalloc_no_sample.exit

imalloc_no_sample.exit:                           ; preds = %.critedge.i.i, %.thread310, %bb.cw, %bb.dl, %ipallocztm_explicit_slab.exit
  %.0.i45 = phi ptr [ %.021.i.i, %bb.dl ], [ %i.ln, %ipallocztm_explicit_slab.exit ], [ %i.og, %.critedge.i.i ], [ %.0.i24.i.ph, %.thread310 ], [ %.132.i.i, %bb.cw ] ; 4 uses
  %i.oh = icmp eq ptr %.0.i45, null
  br i1 %i.oh, label %aligned_usize_get.exit.i22.thread283, label %bb.dm, !prof !133

bb.dm:                                            ; preds = %imalloc_no_sample.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i8 1, ptr %3, align 8, !tbaa !125
  %i.oi = getelementptr inbounds nuw i8, ptr %i.r, i64 928 ; 3 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.oi, ptr %i.oj, align 8, !tbaa !126
  %i.ok = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ol = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ok, ptr %i.ol, align 8, !tbaa !127
  %i.om = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.om, ptr %i.on, align 8, !tbaa !128
  %i.oo = getelementptr inbounds nuw i8, ptr %i.r, i64 936
  %i.op = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.oo, ptr %i.op, align 8, !tbaa !129
  %i.oq = load i64, ptr %i.oi, align 8, !tbaa !41 ; 2 uses
  %i.or = add i64 %i.oq, %.0229281
  store i64 %i.or, ptr %i.oi, align 8, !tbaa !41
  %i.os = load i64, ptr %i.om, align 8, !tbaa !41
  %i.ot = sub i64 %i.os, %i.oq
  %i.ou = icmp ult i64 %.0229281, %i.ot
  br i1 %i.ou, label %bb.do, label %bb.dn, !prof !23

bb.dn:                                            ; preds = %bb.dm
  call void @je_te_event_trigger(ptr noundef nonnull %i.r, ptr noundef nonnull %3) #20
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.not.i26 = xor i1 %.0.i.i18, true
  %i.ov = load i8, ptr @je_opt_junk_alloc, align 1, !range !38
  %i.ow = trunc nuw i8 %i.ov to i1
  %or.cond45.i27 = select i1 %.not.i26, i1 %i.ow, i1 false, !prof !132
  br i1 %or.cond45.i27, label %bb.dp, label %aligned_usize_get.exit.i22.thread283, !prof !132

bb.dp:                                            ; preds = %bb.do
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0.i45, i8 -91, i64 %.0229281, i1 false)
  br label %aligned_usize_get.exit.i22.thread283

aligned_usize_get.exit.i22.thread283:             ; preds = %sz_s2u.exit.i48, %cache_bin_alloc_impl.exit31.i, %bb.cu, %bb.cm, %sz_s2u_compute.exit28.i, %bb.cb, %bb.bn, %sz_size2index.exit.i28, %aligned_usize_get.exit.i22, %imalloc_no_sample.exit, %bb.do, %bb.dp
  %.0236.ph = phi ptr [ null, %sz_s2u.exit.i48 ], [ %.0.i45, %bb.dp ], [ null, %bb.bn ], [ null, %sz_s2u_compute.exit28.i ], [ null, %aligned_usize_get.exit.i22 ], [ null, %imalloc_no_sample.exit ], [ %.0.i45, %bb.do ], [ null, %sz_size2index.exit.i28 ], [ null, %bb.cb ], [ null, %bb.cm ], [ null, %bb.cu ], [ null, %cache_bin_alloc_impl.exit31.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 %0, ptr %i.c, align 16, !tbaa !41
  %i.ox = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.oy = sext i32 %1 to i64
  store i64 %i.oy, ptr %i.ox, align 8, !tbaa !41
  %.ptr = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.ptr, align 16, !tbaa !41
  %i.oz = ptrtoint ptr %.0236.ph to i64
  call void @je_hook_invoke_alloc(i32 noundef 7, ptr noundef %.0236.ph, i64 noundef %i.oz, ptr noundef nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %imalloc.exit

imalloc.exit:                                     ; preds = %sz_s2u.exit.i67, %cache_bin_alloc_impl.exit31.i62, %bb.ao, %bb.ag, %sz_s2u_compute.exit28.i110, %bb.v, %bb.h, %sz_size2index.exit.i, %aligned_usize_get.exit.i, %imalloc_no_sample.exit87, %bb.bi, %imalloc_init_check.exit, %aligned_usize_get.exit.i22.thread283
  %.0236321 = phi ptr [ %.0236.ph, %aligned_usize_get.exit.i22.thread283 ], [ null, %imalloc_init_check.exit ], [ null, %sz_s2u.exit.i67 ], [ null, %aligned_usize_get.exit.i ], [ %.0.i54, %bb.bi ], [ null, %imalloc_no_sample.exit87 ], [ null, %sz_s2u_compute.exit28.i110 ], [ null, %bb.h ], [ null, %sz_size2index.exit.i ], [ null, %bb.v ], [ null, %bb.ag ], [ null, %bb.ao ], [ null, %cache_bin_alloc_impl.exit31.i62 ]
  ret ptr %.0236321
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local ptr @rallocx(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call fastcc ptr @do_rallocx(ptr noundef %0, i64 noundef %1, i32 noundef %2, i1 noundef zeroext false)
end_hunk_2
begin_hunk_3_@do_rallocx:bb.a
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.kj, i8 -91, i64 %i.ki, i1 false)
  br label %bb.bf

arena_get_from_ind.exit:                          ; preds = %sz_s2u_compute.exit28.i, %ipallocztm_explicit_slab.exit.i, %sz_sa2u.exit, %sz_s2u_compute.exit28.i66, %bb.x, %bb.o, %bb.c, %iralloct_explicit_slab.exit, %aligned_usize_get.exit
  br i1 %3, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %arena_get_from_ind.exit
  %i.kk = tail call ptr @__errno_location() #22, !inline_history !6
  store i32 12, ptr %i.kk, align 4, !tbaa !20
  br label %bb.bf

bb.bf:                                            ; preds = %arena_get_from_ind.exit, %bb.be, %te_event_advance.exit, %bb.bc, %bb.bd
  %.0 = phi ptr [ %.0.i57139, %te_event_advance.exit ], [ %.0.i57139, %bb.bd ], [ %.0.i57139, %bb.bc ], [ null, %bb.be ], [ null, %arena_get_from_ind.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local ptr @realloc(ptr noundef %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %2 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %3 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca [3 x i64], align 16               ; 6 uses
  %i.d = icmp ne ptr %0, null                     ; 2 uses
  %i.e = icmp ne i64 %1, 0                        ; 2 uses
  %i.f = and i1 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc ptr @do_rallocx(ptr noundef nonnull %0, i64 noundef %1, i32 noundef 0, i1 noundef zeroext true)
  br label %imalloc.exit

bb.c:                                             ; preds = %bb.a
  %.not307 = xor i1 %i.e, true
  %or.cond = and i1 %i.d, %.not307
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call fastcc ptr @do_realloc_nonnull_zero(ptr noundef %0)
  br label %imalloc.exit

bb.e:                                             ; preds = %bb.c
  %i.i = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 920
  %i.k = load i8, ptr %i.j, align 8, !tbaa !24
  %.not.i97 = icmp eq i8 %i.k, 0
  br i1 %.not.i97, label %tsd_fetch_impl.exit.thread, label %tsd_fetch_impl.exit, !prof !23

tsd_fetch_impl.exit:                              ; preds = %bb.e
  %i.l = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.i, i1 noundef zeroext false) #20 ; 21 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.l, i64 920
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !24
  %i.m = icmp eq i8 %.pre, 0
  br i1 %i.m, label %tsd_fetch_impl.exit.thread, label %bb.ak, !prof !100

tsd_fetch_impl.exit.thread:                       ; preds = %bb.e, %tsd_fetch_impl.exit
  %.0.i98324 = phi ptr [ %i.l, %tsd_fetch_impl.exit ], [ %i.i, %bb.e ] ; 17 uses
  %i.n = icmp ult i64 %1, 4097                    ; 3 uses
  br i1 %i.n, label %bb.f, label %bb.g, !prof !23

bb.f:                                             ; preds = %tsd_fetch_impl.exit.thread
  %i.o = add nuw nsw i64 %1, 7
  %i.p = lshr i64 %i.o, 3
  %i.q = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !24
  %i.s = zext i8 %i.r to i32
  br label %sz_size2index.exit.i

bb.g:                                             ; preds = %tsd_fetch_impl.exit.thread
  %i.t = icmp ugt i64 %1, 8070450532247928832
  br i1 %i.t, label %sz_size2index.exit.i.thread, label %bb.h, !prof !21

bb.h:                                             ; preds = %bb.g
  %i.u = shl nuw i64 %1, 1
  %i.v = add i64 %i.u, -1
  %i.w = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.v, i1 true) ; 3 uses
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = sub nuw nsw i64 60, %i.w
  %i.z = ashr exact i64 -1152921504606846976, %i.w
  %i.aa = add nsw i64 %1, -1
  %i.ab = and i64 %i.z, %i.aa
  %i.ac = lshr i64 %i.ab, %i.y
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = and i32 %i.ad, 3
  %i.af = shl nuw nsw i32 %i.x, 2
  %reass.sub306 = sub nsw i32 %i.ae, %i.af
  %i.ag = add nsw i32 %reass.sub306, 229
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.h, %bb.f
  %.0.i50.i = phi i32 [ %i.s, %bb.f ], [ %i.ag, %bb.h ] ; 10 uses
  %i.ah = icmp samesign ugt i32 %.0.i50.i, 231
  br i1 %i.ah, label %sz_size2index.exit.i.thread, label %bb.i, !prof !131

bb.i:                                             ; preds = %sz_size2index.exit.i
  %i.ai = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !40, !range !38, !noundef !39
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  br i1 %i.n, label %bb.k, label %bb.l, !prof !23

bb.k:                                             ; preds = %bb.j
  %i.ak = add nuw nsw i64 %1, 7
  %i.al = lshr i64 %i.ak, 3
  %i.am = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !24
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !41
  br label %iallocztm_explicit_slab.exit.i59

bb.l:                                             ; preds = %bb.j
  %i.ar = icmp samesign ult i64 %1, 14337
  br i1 %i.ar, label %bb.m, label %iallocztm_explicit_slab.exit.i59.thread

bb.m:                                             ; preds = %bb.l
  %i.as = shl nuw nsw i64 %1, 1
  %i.at = add nsw i64 %i.as, -1
  %i.au = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.at, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.au
  %i.av = lshr i64 1152921504606846975, %i.au
  %i.aw = add nuw nsw i64 %1, %i.av
  %i.ax = and i64 %i.aw, %notmask.i.i
  br label %iallocztm_explicit_slab.exit.i59

iallocztm_explicit_slab.exit.i59.thread:          ; preds = %bb.l
  %i.ay = add nuw nsw i64 %1, 4095
  %i.az = and i64 %i.ay, 9223372036854771712
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i98324, i64 960
  br label %bb.v

bb.n:                                             ; preds = %bb.i
  %i.bb = zext nneg i32 %.0.i50.i to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.bb
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !41
  br label %iallocztm_explicit_slab.exit.i59

iallocztm_explicit_slab.exit.i59:                 ; preds = %bb.n, %bb.k, %bb.m
  %.0231.ph = phi i64 [ %i.ax, %bb.m ], [ %i.aq, %bb.k ], [ %i.bd, %bb.n ] ; 4 uses
  %i.be = icmp ult i64 %.0231.ph, 14337
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i98324, i64 960 ; 3 uses
  br i1 %i.be, label %bb.o, label %bb.v, !prof !102

bb.o:                                             ; preds = %iallocztm_explicit_slab.exit.i59
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i98324, i64 968
  %i.bh = zext nneg i32 %.0.i50.i to i64
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %i.bh ; 9 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !108 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !109 ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bo = load i16, ptr %i.bn, align 8, !tbaa !110 ; 2 uses
  %i.bp = trunc i64 %i.bl to i16
  %.not.i26.i77 = icmp eq i16 %i.bo, %i.bp
  br i1 %.not.i26.i77, label %bb.q, label %bb.p, !prof !21

bb.p:                                             ; preds = %bb.o
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !108
  br label %cache_bin_alloc_impl.exit.i78.thread

bb.q:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 20
  %i.br = load i16, ptr %i.bq, align 4, !tbaa !111
  %.not21.i.i87 = icmp eq i16 %i.br, %i.bo
  br i1 %.not21.i.i87, label %cache_bin_alloc_impl.exit.i78, label %bb.r, !prof !21

bb.r:                                             ; preds = %bb.q
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !108
  %i.bs = ptrtoint ptr %i.bm to i64
  %i.bt = trunc i64 %i.bs to i16
  store i16 %i.bt, ptr %i.bn, align 8, !tbaa !110
  br label %cache_bin_alloc_impl.exit.i78.thread

cache_bin_alloc_impl.exit.i78:                    ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.bu = tail call fastcc ptr @arena_choose(ptr noundef nonnull %.0.i98324, ptr noundef null) ; 3 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %.thread, label %bb.s, !prof !21

bb.s:                                             ; preds = %cache_bin_alloc_impl.exit.i78
  %.val = load ptr, ptr %i.bi, align 8, !tbaa !108
  %i.bw = icmp eq ptr %.val, @je_disabled_bin
  br i1 %i.bw, label %bb.t, label %bb.u, !prof !21

bb.t:                                             ; preds = %bb.s
  %i.bx = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %.0.i98324, ptr noundef nonnull %i.bu, i64 noundef %1, i32 noundef %.0.i50.i, i1 noundef zeroext false, i1 noundef zeroext true) #20
  br label %.thread

.thread:                                          ; preds = %cache_bin_alloc_impl.exit.i78, %bb.t
  %.0.i24.i83.ph = phi ptr [ %i.bx, %bb.t ], [ null, %cache_bin_alloc_impl.exit.i78 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %imalloc_no_sample.exit91

bb.u:                                             ; preds = %bb.s
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i98324, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bi, i32 noundef %.0.i50.i, i1 noundef zeroext true) #20
  %i.by = call ptr @je_tcache_alloc_small_hard(ptr noundef nonnull %.0.i98324, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bi, i32 noundef %.0.i50.i, ptr noundef nonnull %i.a) #20
  %i.bz = load i8, ptr %i.a, align 1, !tbaa !40, !range !38, !noundef !39
  %4 = trunc nuw i8 %i.bz to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br i1 %4, label %cache_bin_alloc_impl.exit.i78.thread, label %sz_size2index.exit.i.thread

cache_bin_alloc_impl.exit.i78.thread:             ; preds = %bb.r, %bb.p, %bb.u
  %.132.i.i86 = phi ptr [ %i.by, %bb.u ], [ %i.bk, %bb.p ], [ %i.bk, %bb.r ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !112
  %i.cc = add i64 %i.cb, 1
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !112
  br label %imalloc_no_sample.exit91

bb.v:                                             ; preds = %iallocztm_explicit_slab.exit.i59.thread, %iallocztm_explicit_slab.exit.i59
  %i.cd = phi ptr [ %i.ba, %iallocztm_explicit_slab.exit.i59.thread ], [ %i.bf, %iallocztm_explicit_slab.exit.i59 ] ; 2 uses
  %.0231.ph330 = phi i64 [ %i.az, %iallocztm_explicit_slab.exit.i59.thread ], [ %.0231.ph, %iallocztm_explicit_slab.exit.i59 ] ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !114
  %i.cf = getelementptr i8, ptr %i.ce, i64 48
  %.val133 = load i32, ptr %i.cf, align 8, !tbaa !121
  %i.cg = icmp ult i32 %.0.i50.i, %.val133
  br i1 %i.cg, label %bb.w, label %.critedge.i.i61, !prof !23

bb.w:                                             ; preds = %bb.v
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i98324, i64 968
  %i.ci = zext nneg i32 %.0.i50.i to i64
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.ch, i64 %i.ci ; 7 uses
  %.val128.a = load ptr, ptr %i.cj, align 8, !tbaa !108 ; 4 uses
  %.not302 = icmp eq ptr %.val128.a, @je_disabled_bin
  br i1 %.not302, label %.critedge.i.i61, label %bb.x, !prof !21

bb.x:                                             ; preds = %bb.w
  %i.ck = load ptr, ptr %.val128.a, align 8, !tbaa !109 ; 2 uses
  %i.cl = ptrtoint ptr %.val128.a to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %.val128.a, i64 8 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 2 uses
  %i.co = load i16, ptr %i.cn, align 8, !tbaa !110 ; 2 uses
  %i.cp = trunc i64 %i.cl to i16
  %.not.i28.i65 = icmp eq i16 %i.co, %i.cp
  br i1 %.not.i28.i65, label %bb.z, label %bb.y, !prof !21

bb.y:                                             ; preds = %bb.x
  store ptr %i.cm, ptr %i.cj, align 8, !tbaa !108
  br label %bb.ag

bb.z:                                             ; preds = %bb.x
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 20
  %i.cr = load i16, ptr %i.cq, align 4, !tbaa !111
  %.not21.i30.i76 = icmp eq i16 %i.cr, %i.co
  br i1 %.not21.i30.i76, label %cache_bin_alloc_impl.exit31.i66, label %bb.aa, !prof !21

bb.aa:                                            ; preds = %bb.z
  store ptr %i.cm, ptr %i.cj, align 8, !tbaa !108
  %i.cs = ptrtoint ptr %i.cm to i64
  %i.ct = trunc i64 %i.cs to i16
  store i16 %i.ct, ptr %i.cn, align 8, !tbaa !110
  br label %bb.ag

cache_bin_alloc_impl.exit31.i66:                  ; preds = %bb.z
  %i.cu = tail call fastcc ptr @arena_choose(ptr noundef nonnull %.0.i98324, ptr noundef null) ; 2 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %sz_size2index.exit.i.thread, label %bb.ab, !prof !21

bb.ab:                                            ; preds = %cache_bin_alloc_impl.exit31.i66
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i98324, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cj, i32 noundef %.0.i50.i, i1 noundef zeroext false) #20
  br i1 %i.n, label %bb.ac, label %bb.ad, !prof !23

bb.ac:                                            ; preds = %bb.ab
  %i.cw = add nuw nsw i64 %1, 7
  %i.cx = lshr i64 %i.cw, 3
  %i.cy = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !24
  %i.da = zext i8 %i.cz to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.da
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !41
  br label %sz_s2u.exit.i71

bb.ad:                                            ; preds = %bb.ab
  %i.dd = icmp samesign ugt i64 %1, 14336
  %i.de = load i8, ptr @je_opt_disable_large_size_classes, align 1, !range !38
  %i.df = trunc nuw i8 %i.de to i1
  %or.cond298 = select i1 %i.dd, i1 %i.df, i1 false
  br i1 %or.cond298, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dg = shl nuw i64 %1, 1
  %i.dh = add i64 %i.dg, -1
  %i.di = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.dh, i1 true) ; 2 uses
  %notmask.i.i68 = ashr exact i64 -1152921504606846976, %i.di
  %i.dj = lshr i64 1152921504606846975, %i.di
  %i.dk = add nuw nsw i64 %1, %i.dj
  %i.dl = and i64 %i.dk, %notmask.i.i68
  br label %sz_s2u.exit.i71

bb.af:                                            ; preds = %bb.ad
  %i.dm = add nuw nsw i64 %1, 4095
  %i.dn = and i64 %i.dm, 9223372036854771712
  br label %sz_s2u.exit.i71

sz_s2u.exit.i71:                                  ; preds = %bb.ae, %bb.af, %bb.ac
  %.0.i32.i72 = phi i64 [ %i.dc, %bb.ac ], [ %i.dl, %bb.ae ], [ %i.dn, %bb.af ]
  %i.do = tail call ptr @je_large_malloc(ptr noundef nonnull %.0.i98324, ptr noundef nonnull %i.cu, i64 noundef %.0.i32.i72, i1 noundef zeroext false) #20 ; 2 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %sz_size2index.exit.i.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.aa, %bb.y, %sz_s2u.exit.i71
  %.021.i.i73 = phi ptr [ %i.do, %sz_s2u.exit.i71 ], [ %i.ck, %bb.aa ], [ %i.ck, %bb.y ]
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !112
  %i.ds = add i64 %i.dr, 1
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !112
  br label %imalloc_no_sample.exit91

.critedge.i.i61:                                  ; preds = %bb.w, %bb.v
  %i.dt = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %.0.i98324, ptr noundef null, i64 noundef %1, i32 noundef %.0.i50.i, i1 noundef zeroext false, i1 noundef zeroext false) #20
  br label %imalloc_no_sample.exit91

imalloc_no_sample.exit91:                         ; preds = %.critedge.i.i61, %.thread, %cache_bin_alloc_impl.exit.i78.thread, %bb.ag
  %.0231.ph329 = phi i64 [ %.0231.ph330, %.critedge.i.i61 ], [ %.0231.ph, %.thread ], [ %.0231.ph, %cache_bin_alloc_impl.exit.i78.thread ], [ %.0231.ph330, %bb.ag ] ; 2 uses
  %.0.i23.i63 = phi ptr [ %i.dt, %.critedge.i.i61 ], [ %.0.i24.i83.ph, %.thread ], [ %.132.i.i86, %cache_bin_alloc_impl.exit.i78.thread ], [ %.021.i.i73, %bb.ag ] ; 2 uses
  %i.du = icmp eq ptr %.0.i23.i63, null
  br i1 %i.du, label %sz_size2index.exit.i.thread, label %bb.ah, !prof !122

bb.ah:                                            ; preds = %imalloc_no_sample.exit91
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store i8 1, ptr %2, align 8, !tbaa !125
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.i98324, i64 928 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !126
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.i98324, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !127
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.i98324, i64 16 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !128
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.i98324, i64 936
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !129
  %i.ed = load i64, ptr %i.dv, align 8, !tbaa !41 ; 2 uses
  %i.ee = add i64 %i.ed, %.0231.ph329
  store i64 %i.ee, ptr %i.dv, align 8, !tbaa !41
  %i.ef = load i64, ptr %i.dz, align 8, !tbaa !41
  %i.eg = sub i64 %i.ef, %i.ed
  %i.eh = icmp ult i64 %.0231.ph329, %i.eg
  br i1 %i.eh, label %bb.aj, label %bb.ai, !prof !23

bb.ai:                                            ; preds = %bb.ah
  call void @je_te_event_trigger(ptr noundef nonnull %.0.i98324, ptr noundef nonnull %2) #20
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %imalloc.exit

sz_size2index.exit.i.thread:                      ; preds = %sz_s2u.exit.i71, %cache_bin_alloc_impl.exit31.i66, %bb.u, %bb.g, %imalloc_no_sample.exit91, %sz_size2index.exit.i
  %i.ei = tail call ptr @__errno_location() #22, !inline_history !6
  store i32 12, ptr %i.ei, align 4, !tbaa !20
  br label %imalloc.exit

bb.ak:                                            ; preds = %tsd_fetch_impl.exit
  %i.ej = load i32, ptr @je_malloc_init_state, align 4, !tbaa !20
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %bb.am, label %bb.al, !prof !23

bb.al:                                            ; preds = %bb.ak
  %i.el = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.el, label %imalloc_init_check.exit, label %bb.am, !prof !130

imalloc_init_check.exit:                          ; preds = %bb.al
  %i.em = tail call ptr @__errno_location() #22, !inline_history !6
  store i32 12, ptr %i.em, align 4, !tbaa !20
  br label %imalloc.exit

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.en = load i8, ptr @je_opt_zero, align 1, !range !38
  %i.eo = trunc nuw i8 %i.en to i1                ; 6 uses
  %i.ep = icmp ult i64 %1, 4097                   ; 3 uses
  br i1 %i.ep, label %bb.an, label %bb.ao, !prof !23

bb.an:                                            ; preds = %bb.am
  %i.eq = add nuw nsw i64 %1, 7
  %i.er = lshr i64 %i.eq, 3
  %i.es = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !24
  %i.eu = zext i8 %i.et to i32
  br label %sz_size2index.exit.i32

bb.ao:                                            ; preds = %bb.am
  %i.ev = icmp ugt i64 %1, 8070450532247928832
  br i1 %i.ev, label %sz_size2index.exit.i32.thread, label %bb.ap, !prof !21

bb.ap:                                            ; preds = %bb.ao
  %i.ew = shl nuw i64 %1, 1
  %i.ex = add i64 %i.ew, -1
  %i.ey = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.ex, i1 true) ; 3 uses
  %i.ez = trunc nuw nsw i64 %i.ey to i32
  %i.fa = sub nuw nsw i64 60, %i.ey
  %i.fb = ashr exact i64 -1152921504606846976, %i.ey
  %i.fc = add nsw i64 %1, -1
  %i.fd = and i64 %i.fb, %i.fc
  %i.fe = lshr i64 %i.fd, %i.fa
  %i.ff = trunc i64 %i.fe to i32
  %i.fg = and i32 %i.ff, 3
  %i.fh = shl nuw nsw i32 %i.ez, 2
  %reass.sub = sub nsw i32 %i.fg, %i.fh
  %i.fi = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit.i32

sz_size2index.exit.i32:                           ; preds = %bb.ap, %bb.an
  %.0.i50.i33 = phi i32 [ %i.eu, %bb.an ], [ %i.fi, %bb.ap ] ; 10 uses
  %i.fj = icmp samesign ugt i32 %.0.i50.i33, 231
  br i1 %i.fj, label %sz_size2index.exit.i32.thread, label %bb.aq, !prof !169

bb.aq:                                            ; preds = %sz_size2index.exit.i32
  %i.fk = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !40, !range !38, !noundef !39
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.ar, label %bb.aw

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.ep, label %bb.as, label %bb.at, !prof !23

bb.as:                                            ; preds = %bb.ar
  %i.fm = add nuw nsw i64 %1, 7
  %i.fn = lshr i64 %i.fm, 3
  %i.fo = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !24
  %i.fq = zext i8 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.fq
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !41
  br label %bb.ax

bb.at:                                            ; preds = %bb.ar
  %i.ft = icmp samesign ult i64 %1, 14337
  br i1 %i.ft, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.fu = shl nuw nsw i64 %1, 1
  %i.fv = add nsw i64 %i.fu, -1
  %i.fw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.fv, i1 true) ; 2 uses
  %notmask.i.i34 = ashr exact i64 -1152921504606846976, %i.fw
  %i.fx = lshr i64 1152921504606846975, %i.fw
  %i.fy = add nuw nsw i64 %1, %i.fx
  %i.fz = and i64 %i.fy, %notmask.i.i34
  br label %bb.ax

bb.av:                                            ; preds = %bb.at
  %i.ga = add nuw nsw i64 %1, 4095
  %i.gb = and i64 %i.ga, 9223372036854771712
  br label %bb.ax

bb.aw:                                            ; preds = %bb.aq
  %i.gc = zext nneg i32 %.0.i50.i33 to i64
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.gc
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !41
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.as, %bb.av, %bb.au
  %.0234.ph = phi i64 [ %i.fz, %bb.au ], [ %i.fs, %bb.as ], [ %i.ge, %bb.aw ], [ %i.gb, %bb.av ] ; 5 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !24
  %i.gh = icmp sgt i8 %i.gg, 0
  br i1 %i.gh, label %bb.az, label %bb.ay, !prof !132

bb.ay:                                            ; preds = %bb.ax
  %i.gi = load i8, ptr %i.l, align 8, !tbaa !40, !range !38, !noundef !39
  %i.gj = trunc nuw i8 %i.gi to i1
  %i.gk = getelementptr inbounds nuw i8, ptr %i.l, i64 960 ; 4 uses
  br i1 %i.gj, label %bb.bb, label %iallocztm_explicit_slab.exit.i.thread

bb.az:                                            ; preds = %bb.ax
  %i.gl = load atomic ptr, ptr @je_arenas acquire, align 64 ; 2 uses
  %i.gm = icmp eq ptr %i.gl, null
  br i1 %i.gm, label %arena_get.exit147, label %iallocztm_explicit_slab.exit.i.thread, !prof !21

arena_get.exit147:                                ; preds = %bb.az
  %i.gn = tail call ptr @je_arena_init(ptr noundef nonnull %i.l, i32 noundef 0, ptr noundef nonnull @je_arena_config_default), !inline_history !0 ; 2 uses
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %bb.ba, label %iallocztm_explicit_slab.exit.i.thread, !prof !22

bb.ba:                                            ; preds = %arena_get.exit147
  %i.gp = load i32, ptr @je_narenas_auto, align 4, !tbaa !20
  %.not.i.i.not = icmp eq i32 %i.gp, 0
  br i1 %.not.i.i.not, label %sz_size2index.exit.i32.thread, label %iallocztm_explicit_slab.exit.i.thread

iallocztm_explicit_slab.exit.i.thread:            ; preds = %bb.az, %arena_get.exit147, %bb.ay, %bb.ba
  %.1238.ph.ph = phi ptr [ null, %bb.ba ], [ null, %bb.ay ], [ %i.gn, %arena_get.exit147 ], [ %i.gl, %bb.az ]
  %.ph333.a = icmp ult i64 %.0234.ph, 14337
  br label %.critedge.i.i

bb.bb:                                            ; preds = %bb.ay
  %.ph = icmp ult i64 %.0234.ph, 14337
  br i1 %.ph, label %bb.bc, label %bb.bl, !prof !23

bb.bc:                                            ; preds = %bb.bb
  %i.gq = getelementptr inbounds nuw i8, ptr %i.l, i64 968
  %i.gr = zext nneg i32 %.0.i50.i33 to i64        ; 2 uses
  %i.gs = getelementptr inbounds nuw [24 x i8], ptr %i.gq, i64 %i.gr ; 9 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !108 ; 3 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !109 ; 2 uses
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 8 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gs, i64 16 ; 2 uses
  %i.gy = load i16, ptr %i.gx, align 8, !tbaa !110 ; 2 uses
  %i.gz = trunc i64 %i.gv to i16
  %.not.i26.i = icmp eq i16 %i.gy, %i.gz
  br i1 %.not.i26.i, label %bb.be, label %bb.bd, !prof !21

bb.bd:                                            ; preds = %bb.bc
  store ptr %i.gw, ptr %i.gs, align 8, !tbaa !108
  br label %cache_bin_alloc_impl.exit.i.thread

bb.be:                                            ; preds = %bb.bc
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gs, i64 20
  %i.hb = load i16, ptr %i.ha, align 4, !tbaa !111
  %.not21.i.i = icmp eq i16 %i.hb, %i.gy
  br i1 %.not21.i.i, label %cache_bin_alloc_impl.exit.i, label %bb.bf, !prof !21

bb.bf:                                            ; preds = %bb.be
  store ptr %i.gw, ptr %i.gs, align 8, !tbaa !108
  %i.hc = ptrtoint ptr %i.gw to i64
  %i.hd = trunc i64 %i.hc to i16
  store i16 %i.hd, ptr %i.gx, align 8, !tbaa !110
  br label %cache_bin_alloc_impl.exit.i.thread

cache_bin_alloc_impl.exit.i:                      ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.he = tail call fastcc ptr @arena_choose(ptr noundef nonnull %i.l, ptr noundef null) ; 3 uses
  %i.hf = icmp eq ptr %i.he, null
  br i1 %i.hf, label %.thread285, label %bb.bg, !prof !21

bb.bg:                                            ; preds = %cache_bin_alloc_impl.exit.i
  %.val129.a = load ptr, ptr %i.gs, align 8, !tbaa !108
  %i.hg = icmp eq ptr %.val129.a, @je_disabled_bin
  br i1 %i.hg, label %bb.bh, label %bb.bi, !prof !21

bb.bh:                                            ; preds = %bb.bg
  %i.hh = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %i.l, ptr noundef nonnull %i.he, i64 noundef %1, i32 noundef %.0.i50.i33, i1 noundef zeroext %i.eo, i1 noundef zeroext true) #20
  br label %.thread285

.thread285:                                       ; preds = %cache_bin_alloc_impl.exit.i, %bb.bh
  %.0.i24.i.ph = phi ptr [ %i.hh, %bb.bh ], [ null, %cache_bin_alloc_impl.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %imalloc_no_sample.exit

bb.bi:                                            ; preds = %bb.bg
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %i.l, ptr noundef nonnull %i.gk, ptr noundef nonnull %i.gs, i32 noundef %.0.i50.i33, i1 noundef zeroext true) #20
  %i.hi = call ptr @je_tcache_alloc_small_hard(ptr noundef nonnull %i.l, ptr noundef nonnull %i.he, ptr noundef nonnull %i.gk, ptr noundef nonnull %i.gs, i32 noundef %.0.i50.i33, ptr noundef nonnull %i.b) #20
  %i.hj = load i8, ptr %i.b, align 1, !tbaa !40, !range !38, !noundef !39
  %5 = trunc nuw i8 %i.hj to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br i1 %5, label %cache_bin_alloc_impl.exit.i.thread, label %sz_size2index.exit.i32.thread

cache_bin_alloc_impl.exit.i.thread:               ; preds = %bb.bf, %bb.bd, %bb.bi
  %.132.i.i = phi ptr [ %i.hi, %bb.bi ], [ %i.gu, %bb.bd ], [ %i.gu, %bb.bf ] ; 2 uses
  br i1 %i.eo, label %bb.bj, label %bb.bk, !prof !21

bb.bj:                                            ; preds = %cache_bin_alloc_impl.exit.i.thread
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.gr
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !41
  call void @llvm.memset.p0.i64(ptr align 1 %.132.i.i, i8 0, i64 %i.hl, i1 false)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %cache_bin_alloc_impl.exit.i.thread
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gs, i64 8 ; 2 uses
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !112
  %i.ho = add i64 %i.hn, 1
  store i64 %i.ho, ptr %i.hm, align 8, !tbaa !112
  br label %imalloc_no_sample.exit

bb.bl:                                            ; preds = %bb.bb
  %i.hp = load ptr, ptr %i.gk, align 8, !tbaa !114
  %i.hq = getelementptr i8, ptr %i.hp, i64 48
  %.val136 = load i32, ptr %i.hq, align 8, !tbaa !121
  %i.hr = icmp ult i32 %.0.i50.i33, %.val136
  br i1 %i.hr, label %bb.bm, label %.critedge.i.i, !prof !23

bb.bm:                                            ; preds = %bb.bl
  %i.hs = getelementptr inbounds nuw i8, ptr %i.l, i64 968
  %i.ht = zext nneg i32 %.0.i50.i33 to i64        ; 2 uses
  %i.hu = getelementptr inbounds nuw [24 x i8], ptr %i.hs, i64 %i.ht ; 7 uses
  %.val130 = load ptr, ptr %i.hu, align 8, !tbaa !108 ; 4 uses
  %.not = icmp eq ptr %.val130, @je_disabled_bin
  br i1 %.not, label %.critedge.i.i, label %bb.bn, !prof !21

bb.bn:                                            ; preds = %bb.bm
  %i.hv = load ptr, ptr %.val130, align 8, !tbaa !109 ; 3 uses
  %i.hw = ptrtoint ptr %.val130 to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %.val130, i64 8 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hu, i64 16 ; 2 uses
  %i.hz = load i16, ptr %i.hy, align 8, !tbaa !110 ; 2 uses
  %i.ia = trunc i64 %i.hw to i16
  %.not.i28.i = icmp eq i16 %i.hz, %i.ia
  br i1 %.not.i28.i, label %bb.bp, label %bb.bo, !prof !21

bb.bo:                                            ; preds = %bb.bn
  store ptr %i.hx, ptr %i.hu, align 8, !tbaa !108
  br label %bb.bw

bb.bp:                                            ; preds = %bb.bn
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hu, i64 20
  %i.ic = load i16, ptr %i.ib, align 4, !tbaa !111
  %.not21.i30.i = icmp eq i16 %i.ic, %i.hz
  br i1 %.not21.i30.i, label %cache_bin_alloc_impl.exit31.i, label %bb.bq, !prof !21

bb.bq:                                            ; preds = %bb.bp
  store ptr %i.hx, ptr %i.hu, align 8, !tbaa !108
  %i.id = ptrtoint ptr %i.hx to i64
  %i.ie = trunc i64 %i.id to i16
  store i16 %i.ie, ptr %i.hy, align 8, !tbaa !110
  br label %bb.bw

cache_bin_alloc_impl.exit31.i:                    ; preds = %bb.bp
  %i.if = tail call fastcc ptr @arena_choose(ptr noundef nonnull %i.l, ptr noundef null) ; 2 uses
  %i.ig = icmp eq ptr %i.if, null
  br i1 %i.ig, label %sz_size2index.exit.i32.thread, label %bb.br, !prof !21

bb.br:                                            ; preds = %cache_bin_alloc_impl.exit31.i
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %i.l, ptr noundef nonnull %i.gk, ptr noundef nonnull %i.hu, i32 noundef %.0.i50.i33, i1 noundef zeroext false) #20
  br i1 %i.ep, label %bb.bs, label %bb.bt, !prof !23

bb.bs:                                            ; preds = %bb.br
  %i.ih = add nuw nsw i64 %1, 7
  %i.ii = lshr i64 %i.ih, 3
  %i.ij = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.ii
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !24
  %i.il = zext i8 %i.ik to i64
  %i.im = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.il
  %i.in = load i64, ptr %i.im, align 8, !tbaa !41
  br label %sz_s2u.exit.i52

bb.bt:                                            ; preds = %bb.br
  %i.io = icmp samesign ugt i64 %1, 14336
  %i.ip = load i8, ptr @je_opt_disable_large_size_classes, align 1, !range !38
  %i.iq = trunc nuw i8 %i.ip to i1
  %or.cond300 = select i1 %i.io, i1 %i.iq, i1 false
  br i1 %or.cond300, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ir = shl nuw i64 %1, 1
  %i.is = add i64 %i.ir, -1
  %i.it = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.is, i1 true) ; 2 uses
  %notmask.i.i50 = ashr exact i64 -1152921504606846976, %i.it
  %i.iu = lshr i64 1152921504606846975, %i.it
  %i.iv = add nuw nsw i64 %1, %i.iu
  %i.iw = and i64 %i.iv, %notmask.i.i50
  br label %sz_s2u.exit.i52

bb.bv:                                            ; preds = %bb.bt
  %i.ix = add nuw nsw i64 %1, 4095
  %i.iy = and i64 %i.ix, 9223372036854771712
  br label %sz_s2u.exit.i52

sz_s2u.exit.i52:                                  ; preds = %bb.bu, %bb.bv, %bb.bs
  %.0.i32.i = phi i64 [ %i.in, %bb.bs ], [ %i.iw, %bb.bu ], [ %i.iy, %bb.bv ]
  %i.iz = tail call ptr @je_large_malloc(ptr noundef nonnull %i.l, ptr noundef nonnull %i.if, i64 noundef %.0.i32.i, i1 noundef zeroext %i.eo) #20 ; 2 uses
  %i.ja = icmp eq ptr %i.iz, null
  br i1 %i.ja, label %sz_size2index.exit.i32.thread, label %bb.by

bb.bw:                                            ; preds = %bb.bo, %bb.bq
  br i1 %i.eo, label %bb.bx, label %bb.by, !prof !21

bb.bx:                                            ; preds = %bb.bw
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.ht
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hv, i8 0, i64 %i.jc, i1 false)
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %sz_s2u.exit.i52
  %.021.i.i = phi ptr [ %i.iz, %sz_s2u.exit.i52 ], [ %i.hv, %bb.bx ], [ %i.hv, %bb.bw ]
  %i.jd = getelementptr inbounds nuw i8, ptr %i.hu, i64 8 ; 2 uses
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !112
  %i.jf = add i64 %i.je, 1
  store i64 %i.jf, ptr %i.jd, align 8, !tbaa !112
  br label %imalloc_no_sample.exit

.critedge.i.i:                                    ; preds = %iallocztm_explicit_slab.exit.i.thread, %bb.bm, %bb.bl
  %.ph336 = phi i1 [ %.ph333.a, %iallocztm_explicit_slab.exit.i.thread ], [ false, %bb.bm ], [ false, %bb.bl ]
  %.1238.ph335 = phi ptr [ %.1238.ph.ph, %iallocztm_explicit_slab.exit.i.thread ], [ null, %bb.bm ], [ null, %bb.bl ]
  %i.jg = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %i.l, ptr noundef %.1238.ph335, i64 noundef %1, i32 noundef %.0.i50.i33, i1 noundef zeroext %i.eo, i1 noundef zeroext %.ph336) #20
  br label %imalloc_no_sample.exit

imalloc_no_sample.exit:                           ; preds = %.critedge.i.i, %.thread285, %bb.bk, %bb.by
  %.0.i49 = phi ptr [ %.021.i.i, %bb.by ], [ %i.jg, %.critedge.i.i ], [ %.0.i24.i.ph, %.thread285 ], [ %.132.i.i, %bb.bk ] ; 4 uses
  %i.jh = icmp eq ptr %.0.i49, null
  br i1 %i.jh, label %sz_size2index.exit.i32.thread, label %bb.bz, !prof !170

bb.bz:                                            ; preds = %imalloc_no_sample.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i8 1, ptr %3, align 8, !tbaa !125
  %i.ji = getelementptr inbounds nuw i8, ptr %i.l, i64 928 ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ji, ptr %i.jj, align 8, !tbaa !126
  %i.jk = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.jl = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.jk, ptr %i.jl, align 8, !tbaa !127
  %i.jm = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.jm, ptr %i.jn, align 8, !tbaa !128
  %i.jo = getelementptr inbounds nuw i8, ptr %i.l, i64 936
  %i.jp = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.jo, ptr %i.jp, align 8, !tbaa !129
  %i.jq = load i64, ptr %i.ji, align 8, !tbaa !41 ; 2 uses
  %i.jr = add i64 %i.jq, %.0234.ph
  store i64 %i.jr, ptr %i.ji, align 8, !tbaa !41
  %i.js = load i64, ptr %i.jm, align 8, !tbaa !41
  %i.jt = sub i64 %i.js, %i.jq
  %i.ju = icmp ult i64 %.0234.ph, %i.jt
  br i1 %i.ju, label %bb.cb, label %bb.ca, !prof !23

bb.ca:                                            ; preds = %bb.bz
  call void @je_te_event_trigger(ptr noundef nonnull %i.l, ptr noundef nonnull %3) #20
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.not.i30 = xor i1 %i.eo, true
  %i.jv = load i8, ptr @je_opt_junk_alloc, align 1, !range !38
  %i.jw = trunc nuw i8 %i.jv to i1
  %or.cond45.i31 = select i1 %.not.i30, i1 %i.jw, i1 false, !prof !132
  br i1 %or.cond45.i31, label %bb.cc, label %bb.cd, !prof !132

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0.i49, i8 -91, i64 %.0234.ph, i1 false)
  br label %bb.cd

sz_size2index.exit.i32.thread:                    ; preds = %sz_s2u.exit.i52, %cache_bin_alloc_impl.exit31.i, %bb.bi, %bb.ba, %bb.ao, %imalloc_no_sample.exit, %sz_size2index.exit.i32
  %i.jx = tail call ptr @__errno_location() #22, !inline_history !6
  store i32 12, ptr %i.jx, align 4, !tbaa !20
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc, %sz_size2index.exit.i32.thread
  %.0241.ph = phi ptr [ %.0.i49, %bb.cc ], [ %.0.i49, %bb.cb ], [ null, %sz_size2index.exit.i32.thread ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.jy = ptrtoint ptr %0 to i64
  store i64 %i.jy, ptr %i.c, align 16, !tbaa !41
  %i.jz = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %1, ptr %i.jz, align 8, !tbaa !41
  %.ptr = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.ptr, align 16, !tbaa !41
  %i.ka = ptrtoint ptr %.0241.ph to i64
  call void @je_hook_invoke_alloc(i32 noundef 8, ptr noundef %.0241.ph, i64 noundef %i.ka, ptr noundef nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %imalloc.exit

imalloc.exit:                                     ; preds = %bb.cd, %imalloc_init_check.exit, %sz_size2index.exit.i.thread, %bb.aj, %bb.d, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ %i.h, %bb.d ], [ %.0241.ph, %bb.cd ], [ null, %imalloc_init_check.exit ], [ %.0.i23.i63, %bb.aj ], [ null, %sz_size2index.exit.i.thread ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @do_realloc_nonnull_zero(ptr noundef nonnull %0) unnamed_addr #2 {
end_hunk_3
begin_hunk_4_@je_batch_alloc:bb.a
  br label %cache_bin_low_water_adjust.exit

cache_bin_low_water_adjust.exit:                  ; preds = %bb.ah, %bb.ai
  %i.ft = getelementptr inbounds nuw i8, ptr %.1100, i64 8 ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !112
  %i.fv = add i64 %i.fu, %spec.select.i128201
  store i64 %i.fv, ptr %i.ft, align 8, !tbaa !112
  %i.fw = icmp ne i64 %spec.select.i128201, 0
  %or.cond203 = and i1 %.0.i123, %i.fw
  br i1 %or.cond203, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %cache_bin_low_water_adjust.exit
  %xtraiter = and i64 %spec.select.i128201, 7     ; 3 uses
  %i.fx = icmp samesign ult i64 %spec.select.i128201, 8
  br i1 %i.fx, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %spec.select.i128201, 8184
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0202 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.gv, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.fy = getelementptr [8 x i8], ptr %i.fb, i64 %.0202
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr align 1 %i.fz, i8 0, i64 %storemerge.i, i1 false)
  %i.ga = getelementptr [8 x i8], ptr %i.fb, i64 %.0202
  %i.gb = getelementptr i8, ptr %i.ga, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr align 1 %i.gc, i8 0, i64 %storemerge.i, i1 false)
  %i.gd = getelementptr [8 x i8], ptr %i.fb, i64 %.0202
  %i.ge = getelementptr i8, ptr %i.gd, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr align 1 %i.gf, i8 0, i64 %storemerge.i, i1 false)
  %i.gg = getelementptr [8 x i8], ptr %i.fb, i64 %.0202
  %i.gh = getelementptr i8, ptr %i.gg, i64 24
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr align 1 %i.gi, i8 0, i64 %storemerge.i, i1 false)
  %i.gj = getelementptr [8 x i8], ptr %i.fb, i64 %.0202
  %i.gk = getelementptr i8, ptr %i.gj, i64 32
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr align 1 %i.gl, i8 0, i64 %storemerge.i, i1 false)
  %i.gm = getelementptr [8 x i8], ptr %i.fb, i64 %.0202
  %i.gn = getelementptr i8, ptr %i.gm, i64 40
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr align 1 %i.go, i8 0, i64 %storemerge.i, i1 false)
  %i.gp = getelementptr [8 x i8], ptr %i.fb, i64 %.0202
  %i.gq = getelementptr i8, ptr %i.gp, i64 48
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr align 1 %i.gr, i8 0, i64 %storemerge.i, i1 false)
  %i.gs = getelementptr [8 x i8], ptr %i.fb, i64 %.0202
  %i.gt = getelementptr i8, ptr %i.gs, i64 56
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr align 1 %i.gu, i8 0, i64 %storemerge.i, i1 false)
  %i.gv = add nuw nsw i64 %.0202, 8               ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !172

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0202.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.gv, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod219 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod219)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0202.epil = phi i64 [ %i.gy, %.lr.ph.epil ], [ %.0202.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.gw = getelementptr [8 x i8], ptr %i.fb, i64 %.0202.epil
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr align 1 %i.gx, i8 0, i64 %storemerge.i, i1 false)
  %i.gy = add nuw nsw i64 %.0202.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !173

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %cache_bin_low_water_adjust.exit
  %i.gz = add i64 %spec.select.i128201, %.095
  %i.ha = add i64 %spec.select.i128201, %.1104
  br label %.critedge119

.critedge119:                                     ; preds = %bb.ac, %mallocx_tcache_get.exit.thread, %mallocx_tcache_get.exit, %tcache_get_from_ind.exit.thread178, %tcache_get_from_ind.exit, %.loopexit, %bb.ag
  %.2105 = phi i64 [ %i.ha, %.loopexit ], [ %.1104, %tcache_get_from_ind.exit.thread178 ], [ %.1104, %bb.ag ], [ %.1104, %tcache_get_from_ind.exit ], [ %.1104, %mallocx_tcache_get.exit ], [ %.1104, %mallocx_tcache_get.exit.thread ], [ %.1104, %bb.ac ] ; 4 uses
  %.2101 = phi ptr [ %.1100, %.loopexit ], [ %.099, %tcache_get_from_ind.exit.thread178 ], [ %.099, %bb.ag ], [ %.099, %tcache_get_from_ind.exit ], [ %.099, %mallocx_tcache_get.exit ], [ %.099, %mallocx_tcache_get.exit.thread ], [ %.099, %bb.ac ] ; 2 uses
  %.196 = phi i64 [ %i.gz, %.loopexit ], [ %.095, %tcache_get_from_ind.exit.thread178 ], [ %.095, %bb.ag ], [ %.095, %tcache_get_from_ind.exit ], [ %.095, %mallocx_tcache_get.exit ], [ %.095, %mallocx_tcache_get.exit.thread ], [ %.095, %bb.ac ] ; 2 uses
  %i.hb = mul i64 %.196, %storemerge.i            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store i8 1, ptr %4, align 8, !tbaa !125
  store <2 x ptr> %i.du, ptr %i.do, align 8, !tbaa !177
  store <2 x ptr> %i.dw, ptr %i.dr, align 8, !tbaa !177
  %i.hc = load i64, ptr %i.dn, align 8, !tbaa !41 ; 2 uses
  %i.hd = add i64 %i.hc, %i.hb
  store i64 %i.hd, ptr %i.dn, align 8, !tbaa !41
  %i.he = load i64, ptr %i.dq, align 8, !tbaa !41
  %i.hf = sub i64 %i.he, %i.hc
  %i.hg = icmp ult i64 %i.hb, %i.hf
  br i1 %i.hg, label %te_event_advance.exit, label %bb.aj, !prof !23

bb.aj:                                            ; preds = %.critedge119
  call void @je_te_event_trigger(ptr noundef nonnull %.0.i132151, ptr noundef nonnull %4) #20
  br label %te_event_advance.exit

te_event_advance.exit:                            ; preds = %.critedge119, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.hh = icmp ult i64 %.196, %i.dy
  br i1 %i.hh, label %bb.ak, label %select.unfold

bb.ak:                                            ; preds = %te_event_advance.exit
  %i.hi = call noalias ptr @mallocx(i64 noundef %2, i32 noundef %3) #23 ; 2 uses
  %.not115 = icmp eq ptr %i.hi, null
  br i1 %.not115, label %.critedge, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hj = add i64 %.2105, 1
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.2105
  store ptr %i.hi, ptr %i.hk, align 8, !tbaa !109
  br label %select.unfold

select.unfold:                                    ; preds = %bb.al, %te_event_advance.exit, %arena_get_from_ind.exit
  %.5 = phi ptr [ %.4, %bb.al ], [ %.4, %te_event_advance.exit ], [ null, %arena_get_from_ind.exit ]
  %.6 = phi i64 [ %i.hj, %bb.al ], [ %.2105, %te_event_advance.exit ], [ %.0103, %arena_get_from_ind.exit ] ; 2 uses
  %.3102 = phi ptr [ %.2101, %bb.al ], [ %.2101, %te_event_advance.exit ], [ %.099, %arena_get_from_ind.exit ]
  %i.hl = phi i1 [ true, %bb.al ], [ true, %te_event_advance.exit ], [ false, %arena_get_from_ind.exit ]
  br i1 %i.hl, label %bb.x, label %.critedge

.critedge:                                        ; preds = %bb.ak, %bb.ab, %select.unfold, %bb.x, %sz_s2u_compute.exit28.i, %bb.n, %bb.e, %tsd_fetch_impl.exit, %aligned_usize_get.exit, %tsd_fetch_impl.exit.thread
  %.7 = phi i64 [ 0, %tsd_fetch_impl.exit.thread ], [ 0, %aligned_usize_get.exit ], [ 0, %bb.e ], [ 0, %bb.n ], [ 0, %tsd_fetch_impl.exit ], [ 0, %sz_s2u_compute.exit28.i ], [ %.2105, %bb.ak ], [ %.0103, %bb.ab ], [ %.6, %select.unfold ], [ %.0103, %bb.x ]
  ret i64 %.7
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @arena_choose(ptr noundef %0, ptr nofree noundef readnone captures(address_is_null, ret: address, provenance) %1) unnamed_addr #11 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %arena_choose_impl.exit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !24
  %i.c = icmp sgt i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.e, !prof !21

bb.c:                                             ; preds = %bb.b
  %i.d = load atomic ptr, ptr @je_arenas acquire, align 64 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %arena_choose_impl.exit, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @je_arena_init(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @je_arena_config_default), !inline_history !178
  br label %arena_choose_impl.exit

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.k, !prof !21

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr @je_arena_choose_hard(ptr noundef nonnull %0, i1 noundef zeroext false), !inline_history !179 ; 7 uses
  %i.k = load i8, ptr %0, align 8, !tbaa !40, !range !38, !noundef !39
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !183  ; 2 uses
  %.not43.i = icmp eq ptr %i.p, null
  br i1 %.not43.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not44.i = icmp eq ptr %i.p, %i.j
  br i1 %.not44.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @je_tcache_arena_reassociate(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef %i.j) #20, !inline_history !179
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  tail call void @je_tcache_arena_associate(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef %i.j) #20, !inline_history !179
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e
  %.0.i = phi ptr [ %i.h, %bb.e ], [ %i.j, %bb.f ], [ %i.j, %bb.h ], [ %i.j, %bb.i ], [ %i.j, %bb.j ] ; 6 uses
  %i.q = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !20 ; 2 uses
  %i.r = icmp ult i32 %i.q, 3
  br i1 %i.r, label %arena_choose_impl.exit, label %percpu_arena_ind_limit.exit.i

percpu_arena_ind_limit.exit.i:                    ; preds = %bb.k
  %i.s = getelementptr i8, ptr %.0.i, i64 80640   ; 2 uses
  %.0.val48.i = load i32, ptr %i.s, align 64, !tbaa !96
  %i.t = icmp eq i32 %i.q, 4
  %i.u = load i32, ptr @je_ncpus, align 4         ; 4 uses
  %i.v = icmp ugt i32 %i.u, 1
  %or.cond.i.i = and i1 %i.t, %i.v
  %2 = lshr i32 %i.u, 1
  %3 = and i32 %i.u, 1
  %spec.select.i = add nuw i32 %2, %3
  %.0.i47.i = select i1 %or.cond.i.i, i32 %spec.select.i, i32 %i.u
  %i.w = icmp ult i32 %.0.val48.i, %.0.i47.i
  br i1 %i.w, label %bb.l, label %arena_choose_impl.exit

bb.l:                                             ; preds = %percpu_arena_ind_limit.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.y = load ptr, ptr %i.x, align 16, !tbaa !184
  %.not45.i = icmp eq ptr %i.y, %0
  br i1 %.not45.i, label %arena_choose_impl.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = tail call i32 @sched_getcpu() #20, !inline_history !179 ; 3 uses
  %i.aa = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !20
  %i.ab = icmp eq i32 %i.aa, 3
  br i1 %i.ab, label %percpu_arena_choose.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = load i32, ptr @je_ncpus, align 4, !tbaa !20
  %i.ad = lshr i32 %i.ac, 1                       ; 2 uses
  %i.ae = icmp ult i32 %i.z, %i.ad
  %i.af = select i1 %i.ae, i32 0, i32 %i.ad
  %spec.select.i.i = sub nuw i32 %i.z, %i.af
  br label %percpu_arena_choose.exit.i

percpu_arena_choose.exit.i:                       ; preds = %bb.n, %bb.m
  %.0.i.i = phi i32 [ %i.z, %bb.m ], [ %spec.select.i.i, %bb.n ] ; 4 uses
  %.0.val.i = load i32, ptr %i.s, align 64, !tbaa !96
  %.not46.i = icmp eq i32 %.0.val.i, %.0.i.i
  br i1 %.not46.i, label %bb.u, label %bb.o

bb.o:                                             ; preds = %percpu_arena_choose.exit.i
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !50  ; 4 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 80640
  %.val.i.i = load i32, ptr %i.ah, align 64, !tbaa !96
  %.not.i50.i = icmp eq i32 %.val.i.i, %.0.i.i
  br i1 %.not.i50.i, label %percpu_arena_update.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = zext i32 %.0.i.i to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.ai
  %i.ak = load atomic ptr, ptr %i.aj acquire, align 8 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.q, label %arena_get.exit.i.i, !prof !21

bb.q:                                             ; preds = %bb.p
  %i.am = tail call ptr @je_arena_init(ptr noundef nonnull %0, i32 noundef %.0.i.i, ptr noundef nonnull @je_arena_config_default), !inline_history !180
  br label %arena_get.exit.i.i

arena_get.exit.i.i:                               ; preds = %bb.q, %bb.p
  %.0.i18.i.i = phi ptr [ %i.am, %bb.q ], [ %i.ak, %bb.p ] ; 3 uses
  tail call void @je_arena_nthreads_dec(ptr noundef nonnull %i.ag, i1 noundef zeroext false) #20, !inline_history !181
  tail call void @je_arena_nthreads_inc(ptr noundef %.0.i18.i.i, i1 noundef zeroext false) #20, !inline_history !181
  store ptr %.0.i18.i.i, ptr %i.g, align 8, !tbaa !50
  %i.an = tail call i32 @je_arena_nthreads_get(ptr noundef nonnull %i.ag, i1 noundef zeroext false) #20, !inline_history !181
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.r, label %je_arena_migrate.exit.i.i

bb.r:                                             ; preds = %arena_get.exit.i.i
  %i.ap = load atomic i8, ptr @je_background_thread_enabled_state monotonic, align 1, !range !38, !noundef !39
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %je_arena_migrate.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @je_arena_decay(ptr noundef nonnull %0, ptr noundef nonnull %i.ag, i1 noundef zeroext false, i1 noundef zeroext true) #20, !inline_history !181
  br label %je_arena_migrate.exit.i.i

je_arena_migrate.exit.i.i:                        ; preds = %bb.s, %bb.r, %arena_get.exit.i.i
  %i.ar = load i8, ptr %0, align 8, !tbaa !40, !range !38, !noundef !39
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.t, label %percpu_arena_update.exit.i

bb.t:                                             ; preds = %je_arena_migrate.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @je_tcache_arena_reassociate(ptr noundef nonnull %0, ptr noundef nonnull %i.au, ptr noundef nonnull %i.at, ptr noundef %.0.i18.i.i) #20, !inline_history !182
  br label %percpu_arena_update.exit.i

percpu_arena_update.exit.i:                       ; preds = %bb.t, %je_arena_migrate.exit.i.i, %bb.o
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !50
  br label %bb.u

bb.u:                                             ; preds = %percpu_arena_update.exit.i, %percpu_arena_choose.exit.i
  %.1.i = phi ptr [ %i.av, %percpu_arena_update.exit.i ], [ %.0.i, %percpu_arena_choose.exit.i ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  store ptr %0, ptr %i.aw, align 16, !tbaa !184
  br label %arena_choose_impl.exit

arena_choose_impl.exit:                           ; preds = %bb.a, %bb.c, %bb.d, %bb.k, %percpu_arena_ind_limit.exit.i, %bb.l, %bb.u
  %.037.i = phi ptr [ %1, %bb.a ], [ %.0.i, %percpu_arena_ind_limit.exit.i ], [ %.0.i, %bb.k ], [ %.1.i, %bb.u ], [ %.0.i, %bb.l ], [ %i.f, %bb.d ], [ %i.d, %bb.c ]
  ret ptr %.037.i
}

declare i64 @je_arena_fill_small_fresh(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nounwind uwtable
define internal void @jemalloc_constructor() #2 {
bb.a:
  %i.a = load i32, ptr @je_malloc_init_state, align 4, !tbaa !20
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %malloc_init.exit, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc zeroext i1 @malloc_init_hard() ; 0 uses
  br label %malloc_init.exit

malloc_init.exit:                                 ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_jemalloc_prefork() #2 {
bb.a:
  %i.a = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 920
  %i.c = load i8, ptr %i.b, align 8, !tbaa !24
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false) #20
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 19 uses
  %i.e = load atomic i32, ptr @narenas_total acquire, align 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i, i64 1952
  tail call void @je_witness_prefork(ptr noundef nonnull %i.f) #20
  tail call void @je_ctl_prefork(ptr noundef %.0.i) #20
  tail call void @je_tcache_prefork(ptr noundef %.0.i) #20
  tail call void @je_malloc_mutex_prefork(ptr noundef %.0.i, ptr noundef nonnull @arenas_lock) #20
  tail call void @je_background_thread_prefork0(ptr noundef %.0.i) #20
  tail call void @je_prof_prefork0(ptr noundef %.0.i) #20
  tail call void @je_background_thread_prefork1(ptr noundef %.0.i) #20
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %tsd_fetch_impl.exit
  %wide.trip.count = zext i32 %i.e to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.03541 = phi i32 [ %i.j, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %arena_get.exit.thread
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %arena_get.exit.thread ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %indvars.iv
  %i.h = load atomic ptr, ptr %i.g acquire, align 8 ; 10 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %arena_get.exit.thread, label %arena_get.exit, !prof !21

arena_get.exit:                                   ; preds = %bb.c
  switch i32 %.03541, label %default.unreachable [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.i
    i32 6, label %bb.j
    i32 7, label %bb.k
    i32 8, label %bb.l
  ]

bb.d:                                             ; preds = %arena_get.exit
  tail call void @je_arena_prefork0(ptr noundef %.0.i, ptr noundef nonnull %i.h) #20
  br label %arena_get.exit.thread

bb.e:                                             ; preds = %arena_get.exit
  tail call void @je_arena_prefork1(ptr noundef %.0.i, ptr noundef nonnull %i.h) #20
  br label %arena_get.exit.thread

bb.f:                                             ; preds = %arena_get.exit
  tail call void @je_arena_prefork2(ptr noundef %.0.i, ptr noundef nonnull %i.h) #20
  br label %arena_get.exit.thread

bb.g:                                             ; preds = %arena_get.exit
  tail call void @je_arena_prefork3(ptr noundef %.0.i, ptr noundef nonnull %i.h) #20
  br label %arena_get.exit.thread

bb.h:                                             ; preds = %arena_get.exit
  tail call void @je_arena_prefork4(ptr noundef %.0.i, ptr noundef nonnull %i.h) #20
  br label %arena_get.exit.thread

bb.i:                                             ; preds = %arena_get.exit
  tail call void @je_arena_prefork5(ptr noundef %.0.i, ptr noundef nonnull %i.h) #20
  br label %arena_get.exit.thread

bb.j:                                             ; preds = %arena_get.exit
  tail call void @je_arena_prefork6(ptr noundef %.0.i, ptr noundef nonnull %i.h) #20
  br label %arena_get.exit.thread

bb.k:                                             ; preds = %arena_get.exit
  tail call void @je_arena_prefork7(ptr noundef %.0.i, ptr noundef nonnull %i.h) #20
  br label %arena_get.exit.thread

bb.l:                                             ; preds = %arena_get.exit
end_hunk_4
begin_hunk_5_@malloc_init_hard:bb.a
malloc_init_hard_needed.exit:                     ; preds = %bb.f
  %.not = icmp eq i32 %i.h, 2
  br i1 %.not, label %bb.n, label %bb.l

bb.l:                                             ; preds = %malloc_init_hard_needed.exit
  %i.ad = tail call fastcc zeroext i1 @malloc_init_hard_a0_locked()
  br i1 %i.ad, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 64) monotonic, align 8
  %i.ae = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @init_lock, i64 72)) #20, !inline_history !212 ; 0 uses
  br label %malloc_init_hard_cleanup.exit

bb.n:                                             ; preds = %bb.l, %malloc_init_hard_needed.exit
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 64) monotonic, align 8
  %i.af = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @init_lock, i64 72)) #20, !inline_history !3 ; 0 uses
  %i.ag = tail call ptr @je_malloc_tsd_boot0() #20 ; 13 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %malloc_init_hard_cleanup.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 1, ptr @je_malloc_init_state, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.ai = call i32 @sched_getaffinity(i32 noundef 0, i64 noundef 128, ptr noundef nonnull %1) #20, !inline_history !213 ; 0 uses
  %i.aj = call i32 @__sched_cpucount(i64 noundef 128, ptr noundef nonnull %1) #20, !inline_history !213 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.ak = icmp eq i32 %i.aj, -1
  %i.al = select i1 %i.ak, i32 1, i32 %i.aj
  store i32 %i.al, ptr @je_ncpus, align 4, !tbaa !20
  %i.am = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !20
  %.not2.i = icmp eq i32 %i.am, 2
  br i1 %.not2.i, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = call i64 @sysconf(i32 noundef 84) #20, !inline_history !214 ; 2 uses
  %i.ao = call i64 @sysconf(i32 noundef 83) #20, !inline_history !214
  %.not.i.i23 = icmp eq i64 %i.an, %i.ao
  br i1 %.not.i.i23, label %bb.q, label %malloc_cpu_count_is_deterministic.exit.i

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  %i.ap = call i32 @sched_getaffinity(i32 noundef 0, i64 noundef 128, ptr noundef nonnull %0) #20, !inline_history !214 ; 0 uses
  %i.aq = call i32 @__sched_cpucount(i64 noundef 128, ptr noundef nonnull %0) #20, !inline_history !214
  %i.ar = sext i32 %i.aq to i64
  %.not5.i.i = icmp eq i64 %i.an, %i.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br label %malloc_cpu_count_is_deterministic.exit.i

malloc_cpu_count_is_deterministic.exit.i:         ; preds = %bb.q, %bb.p
  %.1.i.i = phi i1 [ %.not5.i.i, %bb.q ], [ false, %bb.p ]
  %i.as = load i32, ptr @je_opt_narenas, align 4
  %i.at = icmp ne i32 %i.as, 0
  %or.cond.not.i = select i1 %.1.i.i, i1 true, i1 %i.at
  br i1 %or.cond.not.i, label %bb.v, label %bb.r

bb.r:                                             ; preds = %malloc_cpu_count_is_deterministic.exit.i
  store i32 2, ptr @je_opt_percpu_arena, align 4, !tbaa !20
  call void @je_malloc_write(ptr noundef nonnull @.str.94) #20, !inline_history !215
  %i.au = load i8, ptr @je_opt_abort_conf, align 1, !tbaa !40, !range !38, !noundef !39
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @je_malloc_abort_invalid_conf() #20, !inline_history !215
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.aw = load i8, ptr @je_opt_abort, align 1, !tbaa !40, !range !38, !noundef !39
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @abort() #21, !inline_history !215
  unreachable

bb.v:                                             ; preds = %bb.t, %malloc_cpu_count_is_deterministic.exit.i, %bb.o
  %i.ay = call i32 @pthread_atfork(ptr noundef nonnull @je_jemalloc_prefork, ptr noundef nonnull @je_jemalloc_postfork_parent, ptr noundef nonnull @je_jemalloc_postfork_child) #20, !inline_history !215
  %.not.i24 = icmp eq i32 %i.ay, 0
  br i1 %.not.i24, label %malloc_init_hard_recursible.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @je_malloc_write(ptr noundef nonnull @.str.95) #20, !inline_history !215
  %i.az = load i8, ptr @je_opt_abort, align 1, !tbaa !40, !range !38, !noundef !39
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.x, label %malloc_init_hard_cleanup.exit

bb.x:                                             ; preds = %bb.w
  call void @abort() #21, !inline_history !215
  unreachable

malloc_init_hard_recursible.exit:                 ; preds = %bb.v
  %i.bb = call zeroext i1 @je_background_thread_boot0() #20, !inline_history !215
  br i1 %i.bb, label %malloc_init_hard_cleanup.exit, label %bb.y

bb.y:                                             ; preds = %malloc_init_hard_recursible.exit
  %i.bc = call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @init_lock, i64 72)) #20, !inline_history !1
  %.not.i26 = icmp eq i32 %i.bc, 0
  br i1 %.not.i26, label %malloc_mutex_trylock_final.exit.i28, label %bb.z

malloc_mutex_trylock_final.exit.i28:              ; preds = %bb.y
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 64) monotonic, align 8
  br label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @init_lock) #20, !inline_history !2
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %malloc_mutex_trylock_final.exit.i28
  %i.bd = load i64, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 56), align 8, !tbaa !46
  %i.be = add i64 %i.bd, 1
  store i64 %i.be, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 56), align 8, !tbaa !46
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 48), align 8, !tbaa !47
  %.not.i.i27 = icmp eq ptr %i.bf, %i.ag
  br i1 %.not.i.i27, label %malloc_mutex_lock.exit29, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.ag, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 48), align 8, !tbaa !47
  %i.bg = load i64, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 40), align 8, !tbaa !48
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 40), align 8, !tbaa !48
  br label %malloc_mutex_lock.exit29

malloc_mutex_lock.exit29:                         ; preds = %bb.aa, %bb.ab
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ag, i64 920
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !24
  %i.bk = icmp eq i8 %i.bj, 0
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 6 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !24
  %i.bn = add i8 %i.bm, 1
  store i8 %i.bn, ptr %i.bl, align 1, !tbaa !24
  br i1 %i.bk, label %bb.ac, label %pre_reentrancy.exit

bb.ac:                                            ; preds = %malloc_mutex_lock.exit29
  call void @je_tsd_slow_update(ptr noundef nonnull %i.ag) #20, !inline_history !216
  br label %pre_reentrancy.exit

pre_reentrancy.exit:                              ; preds = %malloc_mutex_lock.exit29, %bb.ac
  %i.bo = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !20
  %.not.i30 = icmp eq i32 %i.bo, 2
  br i1 %.not.i30, label %thread-pre-split.i, label %bb.ad

bb.ad:                                            ; preds = %pre_reentrancy.exit
  %i.bp = call i32 @sched_getcpu() #20, !inline_history !217
  %i.bq = icmp slt i32 %i.bp, 0
  br i1 %i.bq, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  store i32 2, ptr @je_opt_percpu_arena, align 4, !tbaa !20
  %i.br = load i32, ptr @je_opt_narenas, align 4, !tbaa !20 ; 2 uses
  %.not7.i = icmp eq i32 %i.br, 0
  br i1 %.not7.i, label %bb.af, label %malloc_narenas_default.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.bs = load i32, ptr @je_ncpus, align 4, !tbaa !20 ; 2 uses
  %i.bt = icmp ugt i32 %i.bs, 1
  br i1 %i.bt, label %bb.ag, label %malloc_narenas_default.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.bu = shl i32 %i.bs, 16
  %i.bv = load i32, ptr @je_opt_narenas_ratio, align 4, !tbaa !20
  %i.bw = zext i32 %i.bu to i64
  %i.bx = zext i32 %i.bv to i64
  %i.by = mul nuw i64 %i.bx, %i.bw
  %i.bz = lshr exact i64 %i.by, 16
  %i.ca = trunc i64 %i.bz to i32                  ; 2 uses
  %i.cb = lshr i32 %i.ca, 15
  %.lobit.i.i.i = and i32 %i.cb, 1
  %i.cc = lshr i32 %i.ca, 16
  %i.cd = add nuw nsw i32 %.lobit.i.i.i, %i.cc
  %..i.i = call i32 @llvm.umax.i32(i32 %i.cd, i32 1)
  br label %malloc_narenas_default.exit.i

malloc_narenas_default.exit.i:                    ; preds = %bb.ag, %bb.af, %bb.ae
  %i.ce = phi i32 [ %i.br, %bb.ae ], [ %..i.i, %bb.ag ], [ 1, %bb.af ]
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.96, i32 noundef %i.ce) #20, !inline_history !217
  %i.cf = load i8, ptr @je_opt_abort, align 1, !tbaa !40, !range !38, !noundef !39
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.ah, label %thread-pre-split.i

bb.ah:                                            ; preds = %malloc_narenas_default.exit.i
  call void @abort() #21, !inline_history !217
  unreachable

bb.ai:                                            ; preds = %bb.ad
  %i.ch = load i32, ptr @je_ncpus, align 4, !tbaa !20 ; 5 uses
  %i.ci = icmp ugt i32 %i.ch, 4094
  br i1 %i.ci, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.97, i32 noundef %i.ch) #20, !inline_history !217
  %i.cj = load i8, ptr @je_opt_abort, align 1, !tbaa !40, !range !38, !noundef !39
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.ak, label %malloc_init_narenas.exit.thread

bb.ak:                                            ; preds = %bb.aj
  call void @abort() #21, !inline_history !217
  unreachable

bb.al:                                            ; preds = %bb.ai
  %i.cl = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !20 ; 2 uses
  %3 = icmp eq i32 %i.cl, 1
  %.not6.i = trunc i32 %i.ch to i1
  %or.cond.i31 = and i1 %3, %.not6.i
  br i1 %or.cond.i31, label %bb.am, label %percpu_arena_ind_limit.exit.i

bb.am:                                            ; preds = %bb.al
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.98, i32 noundef %i.ch) #20, !inline_history !217
  %i.cm = load i8, ptr @je_opt_abort, align 1, !tbaa !40, !range !38, !noundef !39
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.an, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.am
  %.pre.i = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !20
  %.pre17.i = load i32, ptr @je_ncpus, align 4
  br label %percpu_arena_ind_limit.exit.i

bb.an:                                            ; preds = %bb.am
  call void @abort() #21, !inline_history !217
  unreachable

percpu_arena_ind_limit.exit.i:                    ; preds = %._crit_edge.i, %bb.al
  %i.co = phi i32 [ %.pre17.i, %._crit_edge.i ], [ %i.ch, %bb.al ] ; 4 uses
  %i.cp = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.cl, %bb.al ]
  %i.cq = icmp eq i32 %i.cp, 1
  %i.cr = icmp ugt i32 %i.co, 1
  %or.cond.i.i = and i1 %i.cr, %i.cq
  %i.cs = lshr i32 %i.co, 1
  %4 = and i32 %i.co, 1
  %spec.select.i = add nuw i32 %i.cs, %4
  %.0.i.i = select i1 %or.cond.i.i, i32 %spec.select.i, i32 %i.co ; 2 uses
  %i.ct = load i32, ptr @je_opt_narenas, align 4, !tbaa !20 ; 2 uses
  %i.cu = icmp ult i32 %i.ct, %.0.i.i
  br i1 %i.cu, label %thread-pre-split15.sink.split.i, label %bb.ao

thread-pre-split.i:                               ; preds = %malloc_narenas_default.exit.i, %pre_reentrancy.exit
  %.pr.i = load i32, ptr @je_opt_narenas, align 4, !tbaa !20
  br label %bb.ao

bb.ao:                                            ; preds = %thread-pre-split.i, %percpu_arena_ind_limit.exit.i
  %.pr16.i = phi i32 [ %.pr.i, %thread-pre-split.i ], [ %i.ct, %percpu_arena_ind_limit.exit.i ] ; 2 uses
  %i.cv = icmp eq i32 %.pr16.i, 0
  br i1 %i.cv, label %bb.ap, label %thread-pre-split15.i

bb.ap:                                            ; preds = %bb.ao
  %i.cw = load i32, ptr @je_ncpus, align 4, !tbaa !20 ; 2 uses
  %i.cx = icmp ugt i32 %i.cw, 1
  br i1 %i.cx, label %bb.aq, label %thread-pre-split15.sink.split.i

bb.aq:                                            ; preds = %bb.ap
  %i.cy = shl i32 %i.cw, 16
  %i.cz = load i32, ptr @je_opt_narenas_ratio, align 4, !tbaa !20
  %i.da = zext i32 %i.cy to i64
  %i.db = zext i32 %i.cz to i64
  %i.dc = mul nuw i64 %i.db, %i.da
  %i.dd = lshr exact i64 %i.dc, 16
  %i.de = trunc i64 %i.dd to i32                  ; 2 uses
  %i.df = lshr i32 %i.de, 15
  %.lobit.i.i12.i = and i32 %i.df, 1
  %i.dg = lshr i32 %i.de, 16
  %i.dh = add nuw nsw i32 %.lobit.i.i12.i, %i.dg
  %..i13.i = call i32 @llvm.umax.i32(i32 %i.dh, i32 1)
  br label %thread-pre-split15.sink.split.i

thread-pre-split15.sink.split.i:                  ; preds = %bb.aq, %bb.ap, %percpu_arena_ind_limit.exit.i
  %.0.i.sink.i = phi i32 [ %.0.i.i, %percpu_arena_ind_limit.exit.i ], [ %..i13.i, %bb.aq ], [ 1, %bb.ap ] ; 2 uses
  store i32 %.0.i.sink.i, ptr @je_opt_narenas, align 4, !tbaa !20
  br label %thread-pre-split15.i

thread-pre-split15.i:                             ; preds = %thread-pre-split15.sink.split.i, %bb.ao
  %i.di = phi i32 [ %.pr16.i, %bb.ao ], [ %.0.i.sink.i, %thread-pre-split15.sink.split.i ] ; 3 uses
  store i32 %i.di, ptr @je_narenas_auto, align 4, !tbaa !20
  %i.dj = icmp ugt i32 %i.di, 4094
  br i1 %i.dj, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %thread-pre-split15.i
  store i32 4094, ptr @je_narenas_auto, align 4, !tbaa !20
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.99, i32 noundef 4094) #20, !inline_history !217
  %.pre18.i = load i32, ptr @je_narenas_auto, align 4, !tbaa !20
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %thread-pre-split15.i
  %i.dk = phi i32 [ %.pre18.i, %bb.ar ], [ %i.di, %thread-pre-split15.i ]
  store atomic i32 %i.dk, ptr @narenas_total release, align 4
  %i.dl = load ptr, ptr @a0, align 8, !tbaa !50
  %i.dm = call zeroext i1 @je_arena_init_huge(ptr noundef nonnull %i.ag, ptr noundef %i.dl) #20, !inline_history !217
  br i1 %i.dm, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.dn = atomicrmw add ptr @narenas_total, i32 1 release, align 4 ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.do = load atomic i32, ptr @narenas_total acquire, align 4
  store i32 %i.do, ptr @je_manual_arena_base, align 4, !tbaa !20
  %i.dp = call ptr @je_b0get() #20
  %i.dq = call zeroext i1 @je_background_thread_boot1(ptr noundef nonnull %i.ag, ptr noundef %i.dp) #20
  br i1 %i.dq, label %malloc_init_narenas.exit.thread, label %bb.aw

malloc_init_narenas.exit.thread:                  ; preds = %bb.aj, %bb.au
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 64) monotonic, align 8
  %i.dr = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @init_lock, i64 72)) #20, !inline_history !212 ; 0 uses
  %i.ds = load i8, ptr %i.bl, align 1, !tbaa !24
  %i.dt = add i8 %i.ds, -1                        ; 2 uses
  store i8 %i.dt, ptr %i.bl, align 1, !tbaa !24
  %i.du = icmp eq i8 %i.dt, 0
  br i1 %i.du, label %bb.av, label %malloc_init_hard_cleanup.exit

bb.av:                                            ; preds = %malloc_init_narenas.exit.thread
  call void @je_tsd_slow_update(ptr noundef nonnull %i.ag) #20, !inline_history !218
  br label %malloc_init_hard_cleanup.exit

bb.aw:                                            ; preds = %bb.au
  %i.dv = load i8, ptr @je_opt_hpa, align 1, !tbaa !40, !range !38, !noundef !39
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %arena_get.exit, label %bb.ay

arena_get.exit:                                   ; preds = %bb.aw
  %i.dx = load atomic ptr, ptr @je_arenas acquire, align 64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(80) @je_opt_hpa_opts, i64 80, i1 false), !tbaa.struct !221
  %i.dy = load atomic i8, ptr @je_background_thread_enabled_state monotonic, align 1, !range !38, !noundef !39
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i8 %i.dy, ptr %i.dz, align 4, !tbaa !222
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 12288
  %i.eb = call zeroext i1 @je_pa_shard_enable_hpa(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ea, ptr noundef nonnull %2, ptr noundef nonnull @je_opt_hpa_sec_opts) #20
  br i1 %i.eb, label %bb.ax, label %.critedge

bb.ax:                                            ; preds = %arena_get.exit
  call fastcc void @malloc_init_hard_cleanup(ptr noundef nonnull %i.ag, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %malloc_init_hard_cleanup.exit

.critedge:                                        ; preds = %arena_get.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.ay

bb.ay:                                            ; preds = %.critedge, %bb.aw
  %i.ec = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !20 ; 2 uses
  %.not.i.i34 = icmp eq i32 %i.ec, 2
  %i.ed = add i32 %i.ec, 3
  %spec.select.i.i = select i1 %.not.i.i34, i32 2, i32 %i.ed
  store i32 %spec.select.i.i, ptr @je_opt_percpu_arena, align 4, !tbaa !20
  %i.ee = call zeroext i1 @je_malloc_mutex_boot() #20, !inline_history !219
  br i1 %i.ee, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call fastcc void @malloc_init_hard_cleanup(ptr noundef nonnull %i.ag, i1 noundef zeroext true)
  br label %malloc_init_hard_cleanup.exit

bb.ba:                                            ; preds = %bb.ay
  store i32 0, ptr @je_malloc_init_state, align 4, !tbaa !20
  %i.ef = load i8, ptr @je_opt_junk_alloc, align 1, !tbaa !40, !range !38, !noundef !39
  %i.eg = load i8, ptr @je_opt_junk_free, align 1, !tbaa !40, !range !38, !noundef !39
  %i.eh = shl nuw nsw i8 %i.eg, 1
  %i.ei = or disjoint i8 %i.eh, %i.ef
  %i.ej = load i8, ptr @je_opt_zero, align 1, !tbaa !40, !range !38, !noundef !39
  %i.ek = shl nuw nsw i8 %i.ej, 2
  %i.el = or disjoint i8 %i.ei, %i.ek
  %i.em = load i8, ptr @je_opt_utrace, align 1, !tbaa !40, !range !38, !noundef !39
  %i.en = shl nuw nsw i8 %i.em, 3
  %i.eo = or disjoint i8 %i.el, %i.en
  %i.ep = load i8, ptr @je_opt_xmalloc, align 1, !tbaa !40, !range !38, !noundef !39
  %i.eq = shl nuw nsw i8 %i.ep, 4
  %i.er = or disjoint i8 %i.eo, %i.eq
  %i.es = load i8, ptr @malloc_slow_flags, align 1, !tbaa !24
  %i.et = or i8 %i.er, %i.es                      ; 2 uses
  store i8 %i.et, ptr @malloc_slow_flags, align 1, !tbaa !24
  %i.eu = icmp ne i8 %i.et, 0
  %i.ev = zext i1 %i.eu to i8
  store i8 %i.ev, ptr @je_malloc_slow, align 1, !tbaa !40
  %i.ew = load i8, ptr %i.bl, align 1, !tbaa !24
  %i.ex = add i8 %i.ew, -1                        ; 2 uses
  store i8 %i.ex, ptr %i.bl, align 1, !tbaa !24
  %i.ey = icmp eq i8 %i.ex, 0
  br i1 %i.ey, label %bb.bb, label %post_reentrancy.exit

bb.bb:                                            ; preds = %bb.ba
  call void @je_tsd_slow_update(ptr noundef nonnull %i.ag) #20, !inline_history !7
  br label %post_reentrancy.exit

post_reentrancy.exit:                             ; preds = %bb.ba, %bb.bb
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 64) monotonic, align 8
  %i.ez = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @init_lock, i64 72)) #20, !inline_history !3 ; 0 uses
  call void @je_malloc_tsd_boot1() #20
  %i.fa = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 920
  %i.fc = load i8, ptr %i.fb, align 8, !tbaa !24
  %.not.i = icmp eq i8 %i.fc, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.bc, !prof !23

bb.bc:                                            ; preds = %post_reentrancy.exit
  %i.fd = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.fa, i1 noundef zeroext false) #20
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %post_reentrancy.exit, %bb.bc
  %.0.i = phi ptr [ %i.fd, %bb.bc ], [ %i.fa, %post_reentrancy.exit ] ; 2 uses
  %i.fe = load i8, ptr @je_opt_background_thread, align 1, !tbaa !40, !range !38, !noundef !39
  %i.ff = trunc nuw i8 %i.fe to i1
  br i1 %i.ff, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %tsd_fetch_impl.exit
  call void @je_background_thread_ctl_init(ptr noundef %.0.i) #20
  %i.fg = call zeroext i1 @je_background_thread_create(ptr noundef %.0.i, i32 noundef 0) #20
  br i1 %i.fg, label %malloc_init_hard_cleanup.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd, %tsd_fetch_impl.exit
  br label %malloc_init_hard_cleanup.exit

malloc_init_hard_cleanup.exit:                    ; preds = %bb.w, %bb.av, %malloc_init_narenas.exit.thread, %bb.ax, %bb.bd, %malloc_init_hard_recursible.exit, %bb.n, %bb.be, %bb.az, %bb.m, %.loopexit
  %.1 = phi i1 [ true, %bb.m ], [ false, %.loopexit ], [ true, %bb.n ], [ true, %bb.av ], [ true, %bb.az ], [ true, %malloc_init_hard_recursible.exit ], [ false, %bb.be ], [ true, %bb.ax ], [ true, %bb.bd ], [ true, %malloc_init_narenas.exit.thread ], [ true, %bb.w ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @malloc_init_hard_cleanup(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
bb.a:
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 64) monotonic, align 8
  %i.a = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @init_lock, i64 72)) #20, !inline_history !3 ; 0 uses
  br i1 %1, label %bb.b, label %post_reentrancy.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !24
  %i.d = add i8 %i.c, -1                          ; 2 uses
  store i8 %i.d, ptr %i.b, align 1, !tbaa !24
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %post_reentrancy.exit

bb.c:                                             ; preds = %bb.b
end_hunk_5
