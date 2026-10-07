Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/arena?download=true
inline.NumInlined: 328
inline.NumDeleted: 99
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@je_arena_malloc_hard:bb.a
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i19, i8 0, i64 %i.q, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  br i1 %i.c, label %arena_malloc_small.exit, label %bb.x, !prof !104

bb.x:                                             ; preds = %bb.w
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !103
  %i.bo = load i32, ptr %i.bk, align 4, !tbaa !123 ; 2 uses
  %i.bp = add nsw i32 %i.bo, -1
  store i32 %i.bp, ptr %i.bk, align 4, !tbaa !123
  %i.bq = icmp slt i32 %i.bo, 1
  br i1 %i.bq, label %bb.y, label %arena_malloc_small.exit, !prof !104

bb.y:                                             ; preds = %bb.x
  %i.br = icmp sgt i8 %i.bn, 0
  br i1 %i.br, label %ticker_geom_ticks.exit.i, label %bb.z

ticker_geom_ticks.exit.i:                         ; preds = %bb.y
  store i32 0, ptr %i.bk, align 4, !tbaa !123
  br label %arena_malloc_small.exit

bb.z:                                             ; preds = %bb.y
  %i.bs = load i64, ptr %i.bl, align 8, !tbaa !18
  %i.bt = mul i64 %i.bs, 6364136223846793005
  %i.bu = add i64 %i.bt, 1442695040888963407      ; 2 uses
  store i64 %i.bu, ptr %i.bl, align 8, !tbaa !18
  %i.bv = lshr i64 %i.bu, 58
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !124
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr @je_ticker_geom_table, i64 %i.bv
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !103
  %i.cb = zext i8 %i.ca to i64
  %i.cc = mul nsw i64 %i.cb, %i.by
  %i.cd = udiv i64 %i.cc, 61
  %i.ce = trunc i64 %i.cd to i32
  store i32 %i.ce, ptr %i.bk, align 8, !tbaa !123
  call void @je_arena_decay(ptr noundef nonnull %0, ptr noundef nonnull %.01422, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %arena_malloc_small.exit

arena_malloc_small.exit:                          ; preds = %bb.p, %bb.w, %bb.x, %ticker_geom_ticks.exit.i, %bb.z
  %.049.i = phi ptr [ null, %bb.p ], [ %.0.i19, %ticker_geom_ticks.exit.i ], [ %.0.i19, %bb.z ], [ %.0.i19, %bb.w ], [ %.0.i19, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.ag

bb.aa:                                            ; preds = %arena_choose_maybe_huge.exit.thread
  %i.cf = icmp ult i64 %2, 4097
  br i1 %i.cf, label %bb.ab, label %bb.ac, !prof !102

bb.ab:                                            ; preds = %bb.aa
  %i.cg = add nuw nsw i64 %2, 7
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !103
  %i.ck = zext i8 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !18
  br label %sz_s2u.exit

bb.ac:                                            ; preds = %bb.aa
  %i.cn = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.cn, label %sz_s2u.exit, label %bb.ad, !prof !104

bb.ad:                                            ; preds = %bb.ac
  %i.co = icmp samesign ugt i64 %2, 14336
  %i.cp = load i8, ptr @je_opt_disable_large_size_classes, align 1, !range !96
  %i.cq = trunc nuw i8 %i.cp to i1
  %or.cond = select i1 %i.co, i1 %i.cq, i1 false
  br i1 %or.cond, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cr = shl nuw i64 %2, 1
  %i.cs = add i64 %i.cr, -1
  %i.ct = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.cs, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.ct
  %i.cu = lshr i64 1152921504606846975, %i.ct
  %i.cv = add nuw nsw i64 %2, %i.cu
  %i.cw = and i64 %i.cv, %notmask.i
  br label %sz_s2u.exit

bb.af:                                            ; preds = %bb.ad
  %i.cx = add nuw nsw i64 %2, 4095
  %i.cy = and i64 %i.cx, 9223372036854771712
  br label %sz_s2u.exit

sz_s2u.exit:                                      ; preds = %bb.af, %bb.ae, %bb.ac, %bb.ab
  %.0.i15 = phi i64 [ %i.cm, %bb.ab ], [ %i.cw, %bb.ae ], [ %i.cy, %bb.af ], [ 0, %bb.ac ]
  %i.cz = tail call ptr @je_large_malloc(ptr noundef %0, ptr noundef nonnull %.01422, i64 noundef %.0.i15, i1 noundef zeroext %4) #19
  br label %bb.ag

bb.ag:                                            ; preds = %arena_choose_maybe_huge.exit, %sz_s2u.exit, %arena_malloc_small.exit
  %.0 = phi ptr [ %i.cz, %sz_s2u.exit ], [ %.049.i, %arena_malloc_small.exit ], [ null, %arena_choose_maybe_huge.exit ]
  ret ptr %.0
}

declare ptr @je_large_malloc(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @je_arena_palloc(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  br i1 %5, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %2, 4097
  br i1 %i.b, label %bb.c, label %bb.d, !prof !102

bb.c:                                             ; preds = %bb.b
  %i.c = add nuw nsw i64 %2, 7
  %i.d = lshr i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !103
  %i.g = zext i8 %i.f to i32
  br label %sz_size2index.exit

bb.d:                                             ; preds = %bb.b
  %i.h = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.h, label %sz_size2index.exit, label %bb.e, !prof !104

bb.e:                                             ; preds = %bb.d
  %i.i = shl nuw i64 %2, 1
  %i.j = add i64 %i.i, -1
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.j, i1 true) ; 3 uses
  %i.l = trunc nuw nsw i64 %i.k to i32
  %i.m = sub nuw nsw i64 60, %i.k
  %i.n = ashr exact i64 -1152921504606846976, %i.k
  %i.o = add nsw i64 %2, -1
  %i.p = and i64 %i.n, %i.o
  %i.q = lshr i64 %i.p, %i.m
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.r, 3
  %i.t = shl nuw nsw i32 %i.l, 2
  %reass.sub = sub nsw i32 %i.s, %i.t
  %i.u = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.e, %bb.d, %bb.c
  %.0.i = phi i32 [ %i.g, %bb.c ], [ %i.u, %bb.e ], [ 232, %bb.d ] ; 5 uses
  %.not.i = icmp eq ptr %6, null
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !104

bb.f:                                             ; preds = %sz_size2index.exit
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.w = zext nneg i32 %.0.i to i64               ; 2 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.w ; 9 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !87   ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !91   ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 8, !tbaa !128 ; 2 uses
  %i.ae = trunc i64 %i.aa to i16
  %.not.i22 = icmp eq i16 %i.ad, %i.ae
  br i1 %.not.i22, label %bb.h, label %bb.g, !prof !104

bb.g:                                             ; preds = %bb.f
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !87
  br label %cache_bin_alloc_impl.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.ag = load i16, ptr %i.af, align 4, !tbaa !88
  %.not21.i = icmp eq i16 %i.ag, %i.ad
  br i1 %.not21.i, label %cache_bin_alloc_impl.exit, label %bb.i, !prof !104

bb.i:                                             ; preds = %bb.h
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !87
  %i.ah = ptrtoint ptr %i.ab to i64
  %i.ai = trunc i64 %i.ah to i16
  store i16 %i.ai, ptr %i.ac, align 8, !tbaa !128
  br label %cache_bin_alloc_impl.exit.thread

cache_bin_alloc_impl.exit:                        ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.aj = tail call fastcc ptr @arena_choose(ptr noundef %0, ptr noundef %1) ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.thread, label %bb.j, !prof !104

bb.j:                                             ; preds = %cache_bin_alloc_impl.exit
  %.val = load ptr, ptr %i.x, align 8, !tbaa !87
  %i.al = icmp eq ptr %.val, @je_disabled_bin
  br i1 %i.al, label %bb.k, label %bb.l, !prof !104

bb.k:                                             ; preds = %bb.j
  %i.am = tail call ptr @je_arena_malloc_hard(ptr noundef %0, ptr noundef nonnull %i.aj, i64 noundef %2, i32 noundef %.0.i, i1 noundef zeroext %4, i1 noundef zeroext true)
  br label %.thread

.thread:                                          ; preds = %cache_bin_alloc_impl.exit, %bb.k
  %.0.i21.ph = phi ptr [ %i.am, %bb.k ], [ null, %cache_bin_alloc_impl.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %arena_malloc.exit

bb.l:                                             ; preds = %bb.j
  tail call void @je_tcache_bin_flush_stashed(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %i.x, i32 noundef %.0.i, i1 noundef zeroext true) #19
  %i.an = call ptr @je_tcache_alloc_small_hard(ptr noundef %0, ptr noundef nonnull %i.aj, ptr noundef nonnull %6, ptr noundef nonnull %i.x, i32 noundef %.0.i, ptr noundef nonnull %i.a) #19
  %i.ao = load i8, ptr %i.a, align 1, !tbaa !101, !range !96, !noundef !97
  %.not = icmp eq i8 %i.ao, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br i1 %.not, label %arena_malloc.exit, label %cache_bin_alloc_impl.exit.thread

cache_bin_alloc_impl.exit.thread:                 ; preds = %bb.i, %bb.g, %bb.l
  %.132.i = phi ptr [ %i.an, %bb.l ], [ %i.z, %bb.g ], [ %i.z, %bb.i ] ; 2 uses
  br i1 %4, label %bb.m, label %bb.n, !prof !104

bb.m:                                             ; preds = %cache_bin_alloc_impl.exit.thread
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.w
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !18
  call void @llvm.memset.p0.i64(ptr align 1 %.132.i, i8 0, i64 %i.aq, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %cache_bin_alloc_impl.exit.thread
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !129
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !129
  br label %arena_malloc.exit

.critedge.i:                                      ; preds = %sz_size2index.exit
  %i.au = tail call ptr @je_arena_malloc_hard(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %.0.i, i1 noundef zeroext %4, i1 noundef zeroext true)
  br label %arena_malloc.exit

bb.o:                                             ; preds = %bb.a
  %i.av = icmp ult i64 %3, 65
  br i1 %i.av, label %bb.p, label %bb.q, !prof !102

bb.p:                                             ; preds = %bb.o
  %i.aw = tail call ptr @je_large_malloc(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %4) #19
  br label %arena_malloc.exit

bb.q:                                             ; preds = %bb.o
  %i.ax = tail call ptr @je_large_palloc(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) #19
  br label %arena_malloc.exit

arena_malloc.exit:                                ; preds = %.critedge.i, %.thread, %bb.l, %bb.n, %bb.q, %bb.p
  %.0 = phi ptr [ %i.ax, %bb.q ], [ %i.aw, %bb.p ], [ %i.au, %.critedge.i ], [ %.132.i, %bb.n ], [ null, %bb.l ], [ %.0.i21.ph, %.thread ]
  ret ptr %.0
}

declare ptr @je_large_palloc(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @je_arena_dalloc_small(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %2 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %3 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.b = icmp eq ptr %0, null                     ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c, !prof !104

bb.b:                                             ; preds = %bb.a
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %2) #19
  br label %tsdn_rtree_ctx.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %2, %bb.b ], [ %i.c, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.d = ptrtoint ptr %1 to i64                   ; 2 uses
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %0, ptr noundef nonnull %.0.i, i64 noundef %i.d)
  %i.e = load ptr, ptr %3, align 8, !tbaa !132    ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %.val.i = load i64, ptr %i.e, align 8, !tbaa !107 ; 3 uses
  %i.f = and i64 %.val.i, 4095
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.f
  %i.h = load atomic ptr, ptr %i.g monotonic, align 8 ; 5 uses
  %i.i = lshr i64 %.val.i, 20
  %i.j = and i64 %i.i, 255                        ; 3 uses
  %i.k = lshr i64 %.val.i, 38
  %i.l = and i64 %i.k, 63
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @je_arena_bin_offsets, i64 %i.j
  %i.n = load i32, ptr %i.m, align 4, !tbaa !13
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.o
  %i.q = getelementptr inbounds nuw [224 x i8], ptr %i.p, i64 %i.l ; 12 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 72 ; 2 uses
  %i.s = call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.r) #19
  %.not.i26.i = icmp eq i32 %i.s, 0
  br i1 %.not.i26.i, label %malloc_mutex_trylock_final.exit.i.i, label %bb.d

malloc_mutex_trylock_final.exit.i.i:              ; preds = %tsdn_rtree_ctx.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store atomic i8 1, ptr %i.t monotonic, align 1
  br label %bb.e

bb.d:                                             ; preds = %tsdn_rtree_ctx.exit
  call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.q) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %malloc_mutex_trylock_final.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !72
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !72
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !73
  %.not.i.i.i = icmp eq ptr %i.y, %0
  br i1 %.not.i.i.i, label %malloc_mutex_lock.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %0, ptr %i.x, align 8, !tbaa !73
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !74
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !74
  br label %malloc_mutex_lock.exit.i

malloc_mutex_lock.exit.i:                         ; preds = %bb.f, %bb.e
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr @je_arena_binind_div_info, i64 %i.j
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !13
  %i.ae = getelementptr inbounds nuw [40 x i8], ptr @je_bin_infos, i64 %i.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = getelementptr i8, ptr %i.h, i64 80640
  %.val22.i = load i32, ptr %i.ag, align 64, !tbaa !98
  %i.ah = load i32, ptr @je_manual_arena_base, align 4, !tbaa !13
  %i.ai = icmp ult i32 %.val22.i, %i.ah           ; 2 uses
  %i.aj = getelementptr i8, ptr %i.e, i64 8
  %.val.i9 = load ptr, ptr %i.aj, align 8, !tbaa !106
  %i.ak = ptrtoint ptr %.val.i9 to i64
  %i.al = sub i64 %i.d, %i.ak
  %i.am = zext i32 %i.ad to i64
  %i.an = mul i64 %i.al, %i.am                    ; 2 uses
  %i.ao = lshr i64 %i.an, 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.aq = lshr i64 %i.an, 38
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.aq ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !18
  %i.at = and i64 %i.ao, 63
  %i.au = shl nuw i64 1, %i.at
  %i.av = xor i64 %i.au, %i.as
  store i64 %i.av, ptr %i.ar, align 8, !tbaa !18
  %i.aw = load i64, ptr %i.e, align 8, !tbaa !107
  %i.ax = add i64 %i.aw, 268435456                ; 2 uses
  store i64 %i.ax, ptr %i.e, align 8, !tbaa !107
  %i.ay = lshr i64 %i.ax, 28
  %i.az = trunc i64 %i.ay to i32
  %i.ba = and i32 %i.az, 1023                     ; 2 uses
  %i.bb = load i32, ptr %i.af, align 8, !tbaa !125
  %i.bc = icmp eq i32 %i.ba, %i.bb                ; 2 uses
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %malloc_mutex_lock.exit.i
  call void @je_bin_dalloc_locked_handle_newly_empty(ptr noundef %0, i1 noundef zeroext %i.ai, ptr noundef nonnull %i.e, ptr noundef nonnull %i.q) #19
  br label %bin_dalloc_locked_step.exit.i

bb.h:                                             ; preds = %malloc_mutex_lock.exit.i
  %i.bd = icmp eq i32 %i.ba, 1
  br i1 %i.bd, label %bb.i, label %bin_dalloc_locked_step.exit.i

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 192
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !113
  %.not.i.i = icmp eq ptr %i.e, %i.bf
  br i1 %.not.i.i, label %bin_dalloc_locked_step.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @je_bin_dalloc_locked_handle_newly_nonempty(ptr noundef %0, i1 noundef zeroext %i.ai, ptr noundef nonnull %i.e, ptr noundef nonnull %i.q) #19
  br label %bin_dalloc_locked_step.exit.i

bin_dalloc_locked_step.exit.i:                    ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %i.q, i64 120 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !111
  %i.bi = add i64 %i.bh, 1
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !111
  %i.bj = getelementptr inbounds nuw i8, ptr %i.q, i64 136 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !114
  %i.bl = add i64 %i.bk, -1
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !114
  %i.bm = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store atomic i8 0, ptr %i.bm monotonic, align 8
  %i.bn = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.r) #19 ; 0 uses
  br i1 %i.bc, label %bb.k, label %arena_dalloc_bin.exit

bb.k:                                             ; preds = %bin_dalloc_locked_step.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i8 0, ptr %i.a, align 1, !tbaa !101
  %i.bo = getelementptr inbounds nuw i8, ptr %i.h, i64 12288
  call void @je_pa_dalloc(ptr noundef %0, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #19
  %i.bp = load i8, ptr %i.a, align 1, !tbaa !101, !range !96, !noundef !97
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.l, label %je_arena_slab_dalloc.exit.i

bb.l:                                             ; preds = %bb.k
  call void @je_arena_handle_deferred_work(ptr noundef %0, ptr noundef nonnull %i.h)
  br label %je_arena_slab_dalloc.exit.i

je_arena_slab_dalloc.exit.i:                      ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %arena_dalloc_bin.exit

arena_dalloc_bin.exit:                            ; preds = %bin_dalloc_locked_step.exit.i, %je_arena_slab_dalloc.exit.i
  br i1 %i.b, label %arena_decay_ticks.exit, label %bb.m, !prof !104

bb.m:                                             ; preds = %arena_dalloc_bin.exit
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !103
  %i.bv = load i32, ptr %i.br, align 4, !tbaa !123 ; 2 uses
  %i.bw = add nsw i32 %i.bv, -1
  store i32 %i.bw, ptr %i.br, align 4, !tbaa !123
  %i.bx = icmp slt i32 %i.bv, 1
  br i1 %i.bx, label %bb.n, label %arena_decay_ticks.exit, !prof !104

bb.n:                                             ; preds = %bb.m
  %i.by = icmp sgt i8 %i.bu, 0
  br i1 %i.by, label %ticker_geom_ticks.exit, label %bb.o

ticker_geom_ticks.exit:                           ; preds = %bb.n
  store i32 0, ptr %i.br, align 4, !tbaa !123
  br label %arena_decay_ticks.exit

bb.o:                                             ; preds = %bb.n
  %i.bz = load i64, ptr %i.bs, align 8, !tbaa !18
  %i.ca = mul i64 %i.bz, 6364136223846793005
  %i.cb = add i64 %i.ca, 1442695040888963407      ; 2 uses
  store i64 %i.cb, ptr %i.bs, align 8, !tbaa !18
  %i.cc = lshr i64 %i.cb, 58
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !124
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr @je_ticker_geom_table, i64 %i.cc
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !103
  %i.ci = zext i8 %i.ch to i64
  %i.cj = mul nsw i64 %i.ci, %i.cf
  %i.ck = udiv i64 %i.cj, 61
  %i.cl = trunc i64 %i.ck to i32
  store i32 %i.cl, ptr %i.br, align 8, !tbaa !123
  call void @je_arena_decay(ptr noundef nonnull %0, ptr noundef nonnull %i.h, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %arena_decay_ticks.exit

arena_decay_ticks.exit:                           ; preds = %bb.m, %ticker_geom_ticks.exit, %arena_dalloc_bin.exit, %bb.o
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_arena_ptr_array_flush(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef %5, i64 %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %7 = alloca %struct.cache_bin_stats_s, align 8  ; 2 uses
  store i64 %6, ptr %7, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %i.f = zext i32 %1 to i64                       ; 4 uses
  %i.g = getelementptr i8, ptr %5, i64 -1024
  %i.h = getelementptr [56 x i8], ptr %i.g, i64 %i.f ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @je_arena_bin_offsets, i64 %i.f
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @je_arena_binind_div_info, i64 %i.f
  %i.q = getelementptr inbounds nuw [40 x i8], ptr @je_bin_infos, i64 %i.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %arena_ptr_array_flush_impl.exit, %bb.a
  %.0113 = phi ptr [ %7, %bb.a ], [ null, %arena_ptr_array_flush_impl.exit ] ; 4 uses
  %.0 = phi i32 [ 0, %bb.a ], [ %i.qx, %arena_ptr_array_flush_impl.exit ] ; 4 uses
  %i.z = sub i32 %3, %.0                          ; 2 uses
  %spec.store.select = call i32 @llvm.umin.i32(i32 %i.z, i32 255) ; 8 uses
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !120
  %i.ab = zext i32 %.0 to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ab ; 6 uses
  %savedstack = call ptr @llvm.stacksave.p0()
  %i.ad = add nuw nsw i32 %spec.store.select, 1
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  %8 = alloca %union.emap_batch_lookup_result_u, i64 %i.ae, align 16 ; 12 uses
  %i.af = zext nneg i32 %spec.store.select to i64 ; 3 uses
  %.not = icmp eq i32 %3, %.0
  br i1 %.not, label %emap_edata_lookup_batch.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %rtree_leaf_elm_lookup.exit.i
  %.025.i131 = phi i64 [ %i.cd, %rtree_leaf_elm_lookup.exit.i ], [ 0, %bb.b ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.025.i131
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !91
  %i.ai = ptrtoint ptr %i.ah to i64               ; 6 uses
  %i.aj = lshr i64 %i.ai, 30
  %i.ak = and i64 %i.aj, 15
  %i.al = and i64 %i.ai, -1073741824              ; 11 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.ak ; 6 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !135 ; 3 uses
  %i.ao = icmp eq i64 %i.an, %i.al
  br i1 %i.ao, label %bb.c, label %bb.d, !prof !102

bb.c:                                             ; preds = %.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !136
  %i.ar = lshr i64 %i.ai, 12
  %i.as = and i64 %i.ar, 262143
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  br label %rtree_leaf_elm_lookup.exit.i

bb.d:                                             ; preds = %.lr.ph
  %i.au = load i64, ptr %i.d, align 8, !tbaa !135
  %i.av = icmp eq i64 %i.au, %i.al
  br i1 %i.av, label %bb.e, label %.preheader.preheader, !prof !102

.preheader.preheader:                             ; preds = %bb.d
  %i.aw = load i64, ptr %i.s, align 8, !tbaa !135
  %i.ax = icmp eq i64 %i.aw, %i.al
  br i1 %i.ax, label %bb.g, label %.preheader.1, !prof !102

bb.e:                                             ; preds = %bb.d
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !136 ; 2 uses
  store i64 %i.an, ptr %i.d, align 8, !tbaa !135
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !136
  store ptr %i.ba, ptr %i.e, align 8, !tbaa !136
  store i64 %i.al, ptr %i.am, align 8, !tbaa !135
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !136
  %i.bb = lshr i64 %i.ai, 12
  %i.bc = and i64 %i.bb, 262143
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bc
  br label %rtree_leaf_elm_lookup.exit.i

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.be = load i64, ptr %i.t, align 8, !tbaa !135
  %i.bf = icmp eq i64 %i.be, %i.al
  br i1 %i.bf, label %bb.g, label %.preheader.2, !prof !102

.preheader.2:                                     ; preds = %.preheader.1
  %i.bg = load i64, ptr %i.u, align 8, !tbaa !135
  %i.bh = icmp eq i64 %i.bg, %i.al
  br i1 %i.bh, label %bb.g, label %.preheader.3, !prof !102

.preheader.3:                                     ; preds = %.preheader.2
  %i.bi = load i64, ptr %i.v, align 8, !tbaa !135
  %i.bj = icmp eq i64 %i.bi, %i.al
  br i1 %i.bj, label %bb.g, label %.preheader.4, !prof !102

.preheader.4:                                     ; preds = %.preheader.3
  %i.bk = load i64, ptr %i.w, align 8, !tbaa !135
  %i.bl = icmp eq i64 %i.bk, %i.al
  br i1 %i.bl, label %bb.g, label %.preheader.5, !prof !102

.preheader.5:                                     ; preds = %.preheader.4
  %i.bm = load i64, ptr %i.x, align 8, !tbaa !135
  %i.bn = icmp eq i64 %i.bm, %i.al
  br i1 %i.bn, label %bb.g, label %.preheader.6, !prof !102

.preheader.6:                                     ; preds = %.preheader.5
  %i.bo = load i64, ptr %i.y, align 8, !tbaa !135
  %i.bp = icmp eq i64 %i.bo, %i.al
  br i1 %i.bp, label %bb.g, label %bb.f, !prof !102

bb.f:                                             ; preds = %.preheader.6
  %i.bq = call ptr @je_rtree_leaf_elm_lookup_hard(ptr noundef nonnull %0, ptr noundef nonnull @je_arena_emap_global, ptr noundef nonnull %i.c, i64 noundef %i.ai, i1 noundef zeroext true, i1 noundef zeroext false) #19
  br label %rtree_leaf_elm_lookup.exit.i

bb.g:                                             ; preds = %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.lcssa = phi ptr [ %i.s, %.preheader.preheader ], [ %i.t, %.preheader.1 ], [ %i.u, %.preheader.2 ], [ %i.v, %.preheader.3 ], [ %i.w, %.preheader.4 ], [ %i.x, %.preheader.5 ], [ %i.y, %.preheader.6 ] ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !136 ; 2 uses
  %i.bt = getelementptr i8, ptr %.lcssa, i64 -16  ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !135
  store i64 %i.bu, ptr %.lcssa, align 8, !tbaa !135
  %i.bv = getelementptr i8, ptr %.lcssa, i64 -8   ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !136
  store ptr %i.bw, ptr %i.br, align 8, !tbaa !136
  store i64 %i.an, ptr %i.bt, align 8, !tbaa !135
  %i.bx = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !136
  store ptr %i.by, ptr %i.bv, align 8, !tbaa !136
  store i64 %i.al, ptr %i.am, align 8, !tbaa !135
  store ptr %i.bs, ptr %i.bx, align 8, !tbaa !136
  %i.bz = lshr i64 %i.ai, 12
  %i.ca = and i64 %i.bz, 262143
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ca
  br label %rtree_leaf_elm_lookup.exit.i

rtree_leaf_elm_lookup.exit.i:                     ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  %.1.i.i = phi ptr [ %i.at, %bb.c ], [ %i.bd, %bb.e ], [ %i.bq, %bb.f ], [ %i.cb, %bb.g ]
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.025.i131
  store ptr %.1.i.i, ptr %i.cc, align 8, !tbaa !103
  %i.cd = add nuw nsw i64 %.025.i131, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.cd, %i.af
  br i1 %exitcond.not, label %.lr.ph133.preheader, label %.lr.ph, !llvm.loop !180

.lr.ph133.preheader:                              ; preds = %rtree_leaf_elm_lookup.exit.i
  %xtraiter = and i64 %i.af, 1
  %i.ce = icmp eq i32 %i.z, 1
  br i1 %i.ce, label %.lr.ph133.epil.preheader, label %.lr.ph133.preheader.new

.lr.ph133.preheader.new:                          ; preds = %.lr.ph133.preheader
  %unroll_iter = and i64 %i.af, 254
  br label %.lr.ph133

.lr.ph133:                                        ; preds = %.lr.ph133, %.lr.ph133.preheader.new
  %.0.i132 = phi i64 [ 0, %.lr.ph133.preheader.new ], [ %i.cy, %.lr.ph133 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph133.preheader.new ], [ %niter.next.1, %.lr.ph133 ]
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.0.i132 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 16, !tbaa !103
  %i.ch = load atomic ptr, ptr %i.cg monotonic, align 8, !noalias !192
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = shl i64 %i.ci, 16
  %i.ck = ashr exact i64 %i.cj, 16
  %i.cl = and i64 %i.ck, -128
  %i.cm = inttoptr i64 %i.cl to ptr               ; 3 uses
  store ptr %i.cm, ptr %i.cf, align 16, !tbaa !103
  call void @llvm.prefetch.p0(ptr readonly %i.cm, i32 1, i32 3, i32 1)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 64
  call void @llvm.prefetch.p0(ptr nonnull readonly %i.cn, i32 1, i32 3, i32 1)
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.0.i132
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !103
  %i.cr = load atomic ptr, ptr %i.cq monotonic, align 8, !noalias !192
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = shl i64 %i.cs, 16
  %i.cu = ashr exact i64 %i.ct, 16
  %i.cv = and i64 %i.cu, -128
  %i.cw = inttoptr i64 %i.cv to ptr               ; 3 uses
  store ptr %i.cw, ptr %i.cp, align 8, !tbaa !103
  call void @llvm.prefetch.p0(ptr readonly %i.cw, i32 1, i32 3, i32 1)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 64
  call void @llvm.prefetch.p0(ptr nonnull readonly %i.cx, i32 1, i32 3, i32 1)
  %i.cy = add nuw nsw i64 %.0.i132, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %emap_edata_lookup_batch.exit.thread.unr-lcssa, label %.lr.ph133, !llvm.loop !183

emap_edata_lookup_batch.exit:                     ; preds = %bb.b
  br i1 %4, label %bb.h, label %._crit_edge143

emap_edata_lookup_batch.exit.thread.unr-lcssa:    ; preds = %.lr.ph133
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %emap_edata_lookup_batch.exit.thread, label %.lr.ph133.epil.preheader

.lr.ph133.epil.preheader:                         ; preds = %emap_edata_lookup_batch.exit.thread.unr-lcssa, %.lr.ph133.preheader
  %.0.i132.epil.init = phi i64 [ 0, %.lr.ph133.preheader ], [ %i.cy, %emap_edata_lookup_batch.exit.thread.unr-lcssa ]
  %lcmp.mod219 = trunc i32 %spec.store.select to i1
  call void @llvm.assume(i1 %lcmp.mod219)
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.0.i132.epil.init ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !103
  %i.db = load atomic ptr, ptr %i.da monotonic, align 8, !noalias !192
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = shl i64 %i.dc, 16
  %i.de = ashr exact i64 %i.dd, 16
  %i.df = and i64 %i.de, -128
  %i.dg = inttoptr i64 %i.df to ptr               ; 3 uses
  store ptr %i.dg, ptr %i.cz, align 8, !tbaa !103
  call void @llvm.prefetch.p0(ptr readonly %i.dg, i32 1, i32 3, i32 1)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  call void @llvm.prefetch.p0(ptr nonnull readonly %i.dh, i32 1, i32 3, i32 1)
  br label %emap_edata_lookup_batch.exit.thread

emap_edata_lookup_batch.exit.thread:              ; preds = %emap_edata_lookup_batch.exit.thread.unr-lcssa, %.lr.ph133.epil.preheader
  br i1 %4, label %.thread, label %arena_get.exit45

.thread:                                          ; preds = %emap_edata_lookup_batch.exit.thread
  %savedstack15210 = call ptr @llvm.stacksave.p0() ; 2 uses
  %i.di = alloca ptr, i64 %i.ae, align 16         ; 2 uses
  br label %arena_get.exit

bb.h:                                             ; preds = %emap_edata_lookup_batch.exit
  %savedstack15 = call ptr @llvm.stacksave.p0()
  br label %._crit_edge165

.preheader127:                                    ; preds = %arena_decay_ticks.exit.i
  %.not170 = icmp eq i32 %.1.i.lcssa, 0
  br i1 %.not170, label %._crit_edge165, label %.lr.ph164.preheader

.lr.ph164.preheader:                              ; preds = %.preheader127
  %wide.trip.count194 = zext i32 %.1.i.lcssa to i64
  br label %.lr.ph164

arena_get.exit:                                   ; preds = %.thread, %arena_decay_ticks.exit.i
  %.0.i14160 = phi i32 [ %.1.i.lcssa, %arena_decay_ticks.exit.i ], [ 0, %.thread ] ; 2 uses
  %.099.i159 = phi i32 [ %.1100.i.lcssa, %arena_decay_ticks.exit.i ], [ 0, %.thread ] ; 5 uses
  %.2158 = phi ptr [ %.3, %arena_decay_ticks.exit.i ], [ %.0113, %.thread ] ; 3 uses
  %i.dj = zext nneg i32 %.099.i159 to i64         ; 3 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.dj
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !103 ; 2 uses
  %.val28 = load i64, ptr %i.dl, align 8, !tbaa !107 ; 2 uses
  %i.dm = and i64 %.val28, 4095
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.dm
  %i.do = load atomic ptr, ptr %i.dn acquire, align 8 ; 25 uses
  %.val30 = load i64, ptr %i.dl, align 8, !tbaa !107 ; 2 uses
  %i.dp = lshr i64 %.val30, 38
  %i.dq = load i32, ptr %i.o, align 4, !tbaa !13
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dr
  %i.dt = and i64 %i.dp, 63
  %i.du = getelementptr inbounds nuw [224 x i8], ptr %i.ds, i64 %i.dt ; 14 uses
  %i.dv = add nuw nsw i32 %.099.i159, 1           ; 3 uses
  %i.dw = icmp ult i32 %i.dv, %spec.store.select
  br i1 %i.dw, label %.lr.ph147.preheader, label %._crit_edge148

.lr.ph147.preheader:                              ; preds = %arena_get.exit
  %i.dx = add nuw nsw i64 %i.dj, 1
  br label %.lr.ph147

._crit_edge148:                                   ; preds = %bb.n, %arena_get.exit
  %.1100.i.lcssa = phi i32 [ %i.dv, %arena_get.exit ], [ %.2101.i, %bb.n ] ; 6 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 72 ; 2 uses
  %i.dz = call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.dy) #19
  %.not.i36 = icmp eq i32 %i.dz, 0
  br i1 %.not.i36, label %malloc_mutex_trylock_final.exit.i, label %bb.i

malloc_mutex_trylock_final.exit.i:                ; preds = %._crit_edge148
  %i.ea = getelementptr inbounds nuw i8, ptr %i.du, i64 64
  store atomic i8 1, ptr %i.ea monotonic, align 1
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge148
  call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.du) #19
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %malloc_mutex_trylock_final.exit.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 56 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !72
  %i.ed = add i64 %i.ec, 1
  store i64 %i.ed, ptr %i.eb, align 8, !tbaa !72
  %i.ee = getelementptr inbounds nuw i8, ptr %i.du, i64 48 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !73
  %.not.i.i37 = icmp eq ptr %i.ef, %0
  br i1 %.not.i.i37, label %malloc_mutex_lock.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %0, ptr %i.ee, align 8, !tbaa !73
  %i.eg = getelementptr inbounds nuw i8, ptr %i.du, i64 40 ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !74
  %i.ei = add i64 %i.eh, 1
  store i64 %i.ei, ptr %i.eg, align 8, !tbaa !74
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.j, %bb.k
  %i.ej = icmp eq ptr %5, %i.do
  br i1 %i.ej, label %bb.o, label %bb.q

.lr.ph147:                                        ; preds = %.lr.ph147.preheader, %bb.n
  %indvars.iv182 = phi i64 [ %i.dx, %.lr.ph147.preheader ], [ %indvars.iv.next183, %bb.n ] ; 3 uses
  %.1100.i146 = phi i32 [ %i.dv, %.lr.ph147.preheader ], [ %.2101.i, %bb.n ] ; 4 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv182 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8            ; 2 uses
  %.val27 = load i64, ptr %i.el, align 8, !tbaa !107 ; 2 uses
  %i.em = xor i64 %.val27, %.val28
  %i.en = and i64 %i.em, 4095
  %i.eo = icmp eq i64 %i.en, 0
  %i.ep = ptrtoint ptr %i.el to i64
  br i1 %i.eo, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.lr.ph147
  %i.eq = xor i64 %.val27, %.val30
  %i.er = and i64 %i.eq, 17317308137472
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.et = zext i32 %.1100.i146 to i64             ; 2 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.et ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.eu, align 8, !tbaa !103
  store i64 %i.ep, ptr %i.eu, align 8, !tbaa !103
  store ptr %.sroa.0.0.copyload.i, ptr %i.ek, align 8, !tbaa !103
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.et ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !91
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv182 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !91
  store ptr %i.ey, ptr %i.ev, align 8, !tbaa !91
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !91
  %i.ez = add i32 %.1100.i146, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %.lr.ph147
  %.2101.i = phi i32 [ %i.ez, %bb.m ], [ %.1100.i146, %bb.l ], [ %.1100.i146, %.lr.ph147 ] ; 2 uses
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next183 to i32
  %exitcond185.not = icmp eq i32 %spec.store.select, %lftr.wideiv
  br i1 %exitcond185.not, label %._crit_edge148, label %.lr.ph147, !llvm.loop !184

bb.o:                                             ; preds = %malloc_mutex_lock.exit
  %.not106.i = icmp eq ptr %.2158, null
  br i1 %.not106.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fa = getelementptr inbounds nuw i8, ptr %i.du, i64 152 ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !193
  %i.fc = add i64 %i.fb, 1
  store i64 %i.fc, ptr %i.fa, align 8, !tbaa !193
  %i.fd = load i64, ptr %.2158, align 8, !tbaa !194
  %i.fe = getelementptr inbounds nuw i8, ptr %i.du, i64 128 ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !121
  %i.fg = add i64 %i.ff, %i.fd
  store i64 %i.fg, ptr %i.fe, align 8, !tbaa !121
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %malloc_mutex_lock.exit
  %.3 = phi ptr [ null, %bb.o ], [ null, %bb.p ], [ %.2158, %malloc_mutex_lock.exit ] ; 3 uses
  %i.fh = icmp ult i32 %.099.i159, %.1100.i.lcssa
  br i1 %i.fh, label %.lr.ph154, label %._crit_edge155

.lr.ph154:                                        ; preds = %bb.q
  %i.fi = load i32, ptr %i.p, align 4, !tbaa !13
  %i.fj = getelementptr i8, ptr %i.do, i64 80640
  %i.fk = zext i32 %i.fi to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.du, i64 192
  br label %bb.ag

._crit_edge155.loopexit:                          ; preds = %bin_dalloc_locked_step.exit.i.thread
  %i.fm = xor i32 %.099.i159, -1
  %i.fn = add i32 %.1100.i.lcssa, %i.fm
  %i.fo = zext i32 %i.fn to i64
  %i.fp = add nuw nsw i64 %i.fo, 1
  br label %._crit_edge155

._crit_edge155:                                   ; preds = %._crit_edge155.loopexit, %bb.q
  %.sroa.6.0.lcssa = phi i64 [ 0, %bb.q ], [ %i.fp, %._crit_edge155.loopexit ] ; 2 uses
  %.1.i.lcssa = phi i32 [ %.0.i14160, %bb.q ], [ %.2.i, %._crit_edge155.loopexit ] ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.du, i64 120 ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !111
  %i.fs = add i64 %i.fr, %.sroa.6.0.lcssa
  store i64 %i.fs, ptr %i.fq, align 8, !tbaa !111
  %i.ft = getelementptr inbounds nuw i8, ptr %i.du, i64 136 ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !114
  %i.fv = sub i64 %i.fu, %.sroa.6.0.lcssa
  store i64 %i.fv, ptr %i.ft, align 8, !tbaa !114
  %i.fw = getelementptr inbounds nuw i8, ptr %i.du, i64 64
  store atomic i8 0, ptr %i.fw monotonic, align 8
  %i.fx = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.dy) #19 ; 0 uses
  %.neg126 = sub i32 %.099.i159, %.1100.i.lcssa
  %i.fy = load i8, ptr %i.m, align 1, !tbaa !103
  %i.fz = load i32, ptr %i.k, align 4, !tbaa !123
  %i.ga = add i32 %i.fz, %.neg126                 ; 2 uses
  store i32 %i.ga, ptr %i.k, align 4, !tbaa !123
  %i.gb = icmp slt i32 %i.ga, 0
  br i1 %i.gb, label %bb.r, label %arena_decay_ticks.exit.i, !prof !104

end_hunk_0
begin_hunk_1_@je_arena_ralloc:bb.a
  %i.ap = add nsw i64 %i.ao, -1
  %i.aq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.ap, i1 true) ; 2 uses
  %notmask.i68 = ashr exact i64 -1152921504606846976, %i.aq
  %i.ar = lshr i64 1152921504606846975, %i.aq
  %i.as = add nuw nsw i64 %i.ac, %i.ar
  %i.at = and i64 %i.as, %notmask.i68
  br label %sz_s2u.exit25.i

sz_s2u.exit25.i:                                  ; preds = %bb.l, %bb.j
  %.0.i24.i = phi i64 [ %i.ak, %bb.j ], [ %i.at, %bb.l ] ; 2 uses
  %i.au = icmp ult i64 %.0.i24.i, 16384
  br i1 %i.au, label %sz_s2u.exit, label %.thread90

bb.m:                                             ; preds = %bb.h
  %i.av = icmp ugt i64 %5, 8070450532247928832
  br i1 %i.av, label %arena_sdalloc.exit, label %bb.n, !prof !197

bb.n:                                             ; preds = %bb.m
  %i.aw = icmp ult i64 %4, 16385
  br i1 %i.aw, label %.thread90, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = icmp ugt i64 %4, 8070450532247928832
  br i1 %i.ax, label %sz_s2u_compute.exit64, label %bb.p, !prof !104

bb.p:                                             ; preds = %bb.o
  %i.ay = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !101, !range !96, !noundef !97
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = shl nuw i64 %4, 1
  %i.bb = add i64 %i.ba, -1
  %i.bc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.bb, i1 true) ; 2 uses
  %notmask.i67 = ashr exact i64 -1152921504606846976, %i.bc
  %i.bd = lshr i64 1152921504606846975, %i.bc
  %i.be = add nuw nsw i64 %4, %i.bd
  %i.bf = and i64 %i.be, %notmask.i67
  br label %sz_s2u_compute.exit64

bb.r:                                             ; preds = %bb.p
  %i.bg = add nuw nsw i64 %4, 4095
  %i.bh = and i64 %i.bg, 9223372036854771712
  br label %sz_s2u_compute.exit64

sz_s2u_compute.exit64:                            ; preds = %bb.o, %bb.q, %bb.r
  %.0.i63 = phi i64 [ %i.bf, %bb.q ], [ %i.bh, %bb.r ], [ 0, %bb.o ] ; 2 uses
  %i.bi = icmp ult i64 %.0.i63, %4
  br i1 %i.bi, label %arena_sdalloc.exit, label %.thread90

.thread90:                                        ; preds = %bb.k, %sz_s2u.exit25.i, %sz_s2u_compute.exit64, %bb.n
  %.0.i61 = phi i64 [ %.0.i63, %sz_s2u_compute.exit64 ], [ 16384, %bb.n ], [ 16384, %bb.k ], [ 16384, %sz_s2u.exit25.i ] ; 3 uses
  %i.bj = load i64, ptr @je_sz_large_pad, align 8, !tbaa !18
  %i.bk = add nuw nsw i64 %5, 4095
  %i.bl = and i64 %i.bk, 9223372036854771712
  %i.bm = add nsw i64 %i.bl, -4096
  %i.bn = add nuw i64 %i.bm, %.0.i61
  %i.bo = add i64 %i.bn, %i.bj
  %i.bp = icmp ult i64 %i.bo, %.0.i61
  %..0.i = select i1 %i.bp, i64 0, i64 %.0.i61
  br label %sz_s2u.exit

sz_s2u.exit:                                      ; preds = %.thread90, %sz_s2u.exit25.i, %bb.c, %bb.f, %bb.g
  %i.bq = phi i64 [ %.0.i24.i, %sz_s2u.exit25.i ], [ %i.k, %bb.c ], [ %i.u, %bb.f ], [ %i.w, %bb.g ], [ %..0.i, %.thread90 ] ; 26 uses
  %i.br = icmp eq i64 %i.bq, 0
  %i.bs = icmp samesign ugt i64 %4, 8070450532247928832
  %i.bt = or i1 %i.bs, %i.br
  br i1 %i.bt, label %arena_sdalloc.exit, label %bb.s, !prof !198

bb.s:                                             ; preds = %sz_s2u.exit
  br i1 %7, label %bb.t, label %bb.v, !prof !102

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.bu = call zeroext i1 @je_arena_ralloc_no_move(ptr noundef %0, ptr noundef %2, i64 noundef %3, i64 noundef %i.bq, i64 noundef 0, i1 noundef zeroext %6, ptr noundef nonnull %i.b)
  br i1 %i.bu, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bv = load i8, ptr %9, align 8, !tbaa !200, !range !96, !noundef !97
  %i.bw = xor i8 %i.bv, 1
  %not. = zext nneg i8 %i.bw to i32
  %i.bx = ptrtoint ptr %2 to i64
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 8
  tail call void @je_hook_invoke_expand(i32 noundef %not., ptr noundef %2, i64 noundef %3, i64 noundef %i.bq, i64 noundef %i.bx, ptr noundef nonnull %i.by) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %arena_sdalloc.exit

.critedge:                                        ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.v

bb.v:                                             ; preds = %.critedge, %bb.s
  %i.bz = icmp ugt i64 %3, 16383
  %i.ca = icmp ugt i64 %i.bq, 16383
  %or.cond = and i1 %i.bz, %i.ca
  br i1 %or.cond, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cb = tail call ptr @je_large_ralloc(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.bq, i64 noundef %5, i1 noundef zeroext %6, ptr noundef %8, ptr noundef %9) #19
  br label %arena_sdalloc.exit

bb.x:                                             ; preds = %bb.v
  br i1 %i.c, label %bb.y, label %bb.bb

bb.y:                                             ; preds = %bb.x
  %i.cc = icmp ult i64 %i.bq, 4097                ; 2 uses
  br i1 %i.cc, label %bb.z, label %bb.aa, !prof !102

bb.z:                                             ; preds = %bb.y
  %i.cd = add nuw nsw i64 %i.bq, 7
  %i.ce = lshr i64 %i.cd, 3
  %i.cf = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !103
  %i.ch = zext i8 %i.cg to i32
  br label %sz_size2index.exit.i85

bb.aa:                                            ; preds = %bb.y
  %i.ci = icmp ugt i64 %i.bq, 8070450532247928832
  br i1 %i.ci, label %sz_size2index.exit.i85, label %bb.ab, !prof !104

bb.ab:                                            ; preds = %bb.aa
  %i.cj = shl nuw i64 %i.bq, 1
  %i.ck = add i64 %i.cj, -1
  %i.cl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.ck, i1 true) ; 3 uses
  %i.cm = trunc nuw nsw i64 %i.cl to i32
  %i.cn = sub nuw nsw i64 60, %i.cl
  %i.co = ashr exact i64 -1152921504606846976, %i.cl
  %i.cp = add nsw i64 %i.bq, -1
  %i.cq = and i64 %i.co, %i.cp
  %i.cr = lshr i64 %i.cq, %i.cn
  %i.cs = trunc i64 %i.cr to i32
  %i.ct = and i32 %i.cs, 3
  %i.cu = shl nuw nsw i32 %i.cm, 2
  %reass.sub = sub nsw i32 %i.ct, %i.cu
  %i.cv = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit.i85

sz_size2index.exit.i85:                           ; preds = %bb.ab, %bb.aa, %bb.z
  %.0.i.i = phi i32 [ %i.ch, %bb.z ], [ %i.cv, %bb.ab ], [ 232, %bb.aa ] ; 8 uses
  %.not.i.i = icmp eq ptr %8, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.ac, !prof !104

bb.ac:                                            ; preds = %sz_size2index.exit.i85
  br i1 %7, label %bb.ad, label %bb.am, !prof !102

bb.ad:                                            ; preds = %bb.ac
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cx = zext nneg i32 %.0.i.i to i64            ; 2 uses
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %i.cx ; 9 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !87 ; 3 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !91 ; 2 uses
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  %i.de = load i16, ptr %i.dd, align 8, !tbaa !128 ; 2 uses
  %i.df = trunc i64 %i.db to i16
  %.not.i30.i = icmp eq i16 %i.de, %i.df
  br i1 %.not.i30.i, label %bb.af, label %bb.ae, !prof !104

bb.ae:                                            ; preds = %bb.ad
  store ptr %i.dc, ptr %i.cy, align 8, !tbaa !87
  br label %cache_bin_alloc_impl.exit.thread.i

bb.af:                                            ; preds = %bb.ad
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 20
  %i.dh = load i16, ptr %i.dg, align 4, !tbaa !88
  %.not21.i.i = icmp eq i16 %i.dh, %i.de
  br i1 %.not21.i.i, label %cache_bin_alloc_impl.exit.i, label %bb.ag, !prof !104

bb.ag:                                            ; preds = %bb.af
  store ptr %i.dc, ptr %i.cy, align 8, !tbaa !87
  %i.di = ptrtoint ptr %i.dc to i64
  %i.dj = trunc i64 %i.di to i16
  store i16 %i.dj, ptr %i.dd, align 8, !tbaa !128
  br label %cache_bin_alloc_impl.exit.thread.i

cache_bin_alloc_impl.exit.i:                      ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.dk = tail call fastcc ptr @arena_choose(ptr noundef %0, ptr noundef %1) ; 3 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %.thread.i, label %bb.ah, !prof !104

bb.ah:                                            ; preds = %cache_bin_alloc_impl.exit.i
  %.val.i = load ptr, ptr %i.cy, align 8, !tbaa !87
  %i.dm = icmp eq ptr %.val.i, @je_disabled_bin
  br i1 %i.dm, label %bb.ai, label %bb.aj, !prof !104

bb.ai:                                            ; preds = %bb.ah
  %i.dn = tail call ptr @je_arena_malloc_hard(ptr noundef %0, ptr noundef nonnull %i.dk, i64 noundef range(i64 1, 0) %i.bq, i32 noundef %.0.i.i, i1 noundef zeroext %6, i1 noundef zeroext true)
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ai, %cache_bin_alloc_impl.exit.i
  %.0.i27.ph.i = phi ptr [ %i.dn, %bb.ai ], [ null, %cache_bin_alloc_impl.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %arena_ralloc_move_helper.exit

bb.aj:                                            ; preds = %bb.ah
  tail call void @je_tcache_bin_flush_stashed(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %i.cy, i32 noundef %.0.i.i, i1 noundef zeroext true) #19
  %i.do = call ptr @je_tcache_alloc_small_hard(ptr noundef %0, ptr noundef nonnull %i.dk, ptr noundef nonnull %8, ptr noundef nonnull %i.cy, i32 noundef %.0.i.i, ptr noundef nonnull %i.a) #19
  %i.dp = load i8, ptr %i.a, align 1, !tbaa !101, !range !96, !noundef !97
  %.not64.i = icmp eq i8 %i.dp, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br i1 %.not64.i, label %arena_sdalloc.exit, label %cache_bin_alloc_impl.exit.thread.i

cache_bin_alloc_impl.exit.thread.i:               ; preds = %bb.aj, %bb.ag, %bb.ae
  %.132.i.i = phi ptr [ %i.do, %bb.aj ], [ %i.da, %bb.ae ], [ %i.da, %bb.ag ] ; 2 uses
  br i1 %6, label %bb.ak, label %bb.al, !prof !104

bb.ak:                                            ; preds = %cache_bin_alloc_impl.exit.thread.i
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.cx
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !18
  call void @llvm.memset.p0.i64(ptr align 1 %.132.i.i, i8 0, i64 %i.dr, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %cache_bin_alloc_impl.exit.thread.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !129
  %i.du = add i64 %i.dt, 1
  store i64 %i.du, ptr %i.ds, align 8, !tbaa !129
  br label %arena_ralloc_move_helper.exit

bb.am:                                            ; preds = %bb.ac
  %i.dv = load ptr, ptr %8, align 8, !tbaa !202
  %i.dw = getelementptr i8, ptr %i.dv, i64 48
  %.val42.i = load i32, ptr %i.dw, align 8, !tbaa !203
  %i.dx = icmp ult i32 %.0.i.i, %.val42.i
  br i1 %i.dx, label %bb.an, label %.critedge.i.i, !prof !102

bb.an:                                            ; preds = %bb.am
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dz = zext nneg i32 %.0.i.i to i64            ; 2 uses
  %i.ea = getelementptr inbounds nuw [24 x i8], ptr %i.dy, i64 %i.dz ; 7 uses
  %.val37.i = load ptr, ptr %i.ea, align 8, !tbaa !87 ; 4 uses
  %.not.i = icmp eq ptr %.val37.i, @je_disabled_bin
  br i1 %.not.i, label %.critedge.i.i, label %bb.ao, !prof !104

bb.ao:                                            ; preds = %bb.an
  %i.eb = load ptr, ptr %.val37.i, align 8, !tbaa !91 ; 3 uses
  %i.ec = ptrtoint ptr %.val37.i to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %.val37.i, i64 8 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  %i.ef = load i16, ptr %i.ee, align 8, !tbaa !128 ; 2 uses
  %i.eg = trunc i64 %i.ec to i16
  %.not.i32.i = icmp eq i16 %i.ef, %i.eg
  br i1 %.not.i32.i, label %bb.aq, label %bb.ap, !prof !104

bb.ap:                                            ; preds = %bb.ao
  store ptr %i.ed, ptr %i.ea, align 8, !tbaa !87
  br label %bb.ay

bb.aq:                                            ; preds = %bb.ao
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 20
  %i.ei = load i16, ptr %i.eh, align 4, !tbaa !88
  %.not21.i34.i = icmp eq i16 %i.ei, %i.ef
  br i1 %.not21.i34.i, label %cache_bin_alloc_impl.exit35.i, label %bb.ar, !prof !104

bb.ar:                                            ; preds = %bb.aq
  store ptr %i.ed, ptr %i.ea, align 8, !tbaa !87
  %i.ej = ptrtoint ptr %i.ed to i64
  %i.ek = trunc i64 %i.ej to i16
  store i16 %i.ek, ptr %i.ee, align 8, !tbaa !128
  br label %bb.ay

cache_bin_alloc_impl.exit35.i:                    ; preds = %bb.aq
  %i.el = tail call fastcc ptr @arena_choose(ptr noundef %0, ptr noundef %1) ; 2 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %arena_sdalloc.exit, label %bb.as, !prof !104

bb.as:                                            ; preds = %cache_bin_alloc_impl.exit35.i
  tail call void @je_tcache_bin_flush_stashed(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %i.ea, i32 noundef %.0.i.i, i1 noundef zeroext false) #19
  br i1 %i.cc, label %bb.at, label %bb.au, !prof !102

bb.at:                                            ; preds = %bb.as
  %i.en = add nuw nsw i64 %i.bq, 7
  %i.eo = lshr i64 %i.en, 3
  %i.ep = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !103
  %i.er = zext i8 %i.eq to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.er
  %i.et = load i64, ptr %i.es, align 8, !tbaa !18
  br label %sz_s2u.exit.i.i

bb.au:                                            ; preds = %bb.as
  %i.eu = icmp ugt i64 %i.bq, 8070450532247928832
  br i1 %i.eu, label %sz_s2u.exit.i.i, label %bb.av, !prof !104

bb.av:                                            ; preds = %bb.au
  %i.ev = icmp samesign ugt i64 %i.bq, 14336
  %i.ew = load i8, ptr @je_opt_disable_large_size_classes, align 1, !range !96
  %i.ex = trunc nuw i8 %i.ew to i1
  %or.cond.i86 = select i1 %i.ev, i1 %i.ex, i1 false
  br i1 %or.cond.i86, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ey = shl nuw i64 %i.bq, 1
  %i.ez = add i64 %i.ey, -1
  %i.fa = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.ez, i1 true) ; 2 uses
  %notmask.i.i.i = ashr exact i64 -1152921504606846976, %i.fa
  %i.fb = lshr i64 1152921504606846975, %i.fa
  %i.fc = add nuw nsw i64 %i.fb, %i.bq
  %i.fd = and i64 %i.fc, %notmask.i.i.i
  br label %sz_s2u.exit.i.i

bb.ax:                                            ; preds = %bb.av
  %i.fe = add nuw nsw i64 %i.bq, 4095
  %i.ff = and i64 %i.fe, 9223372036854771712
  br label %sz_s2u.exit.i.i

sz_s2u.exit.i.i:                                  ; preds = %bb.ax, %bb.aw, %bb.au, %bb.at
  %.0.i.i.i = phi i64 [ %i.et, %bb.at ], [ %i.fd, %bb.aw ], [ %i.ff, %bb.ax ], [ 0, %bb.au ]
  %i.fg = tail call ptr @je_large_malloc(ptr noundef %0, ptr noundef nonnull %i.el, i64 noundef %.0.i.i.i, i1 noundef zeroext %6) #19 ; 2 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %arena_sdalloc.exit, label %bb.ba

bb.ay:                                            ; preds = %bb.ar, %bb.ap
  br i1 %6, label %bb.az, label %bb.ba, !prof !104

bb.az:                                            ; preds = %bb.ay
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.dz
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !18
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.eb, i8 0, i64 %i.fj, i1 false)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %sz_s2u.exit.i.i
  %.021.i.i = phi ptr [ %i.fg, %sz_s2u.exit.i.i ], [ %i.eb, %bb.az ], [ %i.eb, %bb.ay ]
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !129
  %i.fm = add i64 %i.fl, 1
  store i64 %i.fm, ptr %i.fk, align 8, !tbaa !129
  br label %arena_ralloc_move_helper.exit

.critedge.i.i:                                    ; preds = %bb.an, %bb.am, %sz_size2index.exit.i85
  %i.fn = tail call ptr @je_arena_malloc_hard(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 1, 0) %i.bq, i32 noundef %.0.i.i, i1 noundef zeroext %6, i1 noundef zeroext %7)
  br label %arena_ralloc_move_helper.exit

bb.bb:                                            ; preds = %bb.x
  %i.fo = icmp ult i64 %i.bq, 14337
  %i.fp = icmp samesign ult i64 %5, 4097
  %or.cond.i.i = and i1 %i.fp, %i.fo
  br i1 %or.cond.i.i, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.fq = add nsw i64 %5, -1
  %i.fr = add nuw nsw i64 %i.fq, %i.bq
  %i.fs = sub nsw i64 0, %5
  %i.ft = and i64 %i.fr, %i.fs                    ; 5 uses
  %i.fu = icmp samesign ult i64 %i.ft, 4097
  br i1 %i.fu, label %bb.bd, label %bb.be, !prof !102

bb.bd:                                            ; preds = %bb.bc
  %i.fv = add nuw nsw i64 %i.ft, 7
  %i.fw = lshr i64 %i.fv, 3
  %i.fx = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.fw
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !103
  %i.fz = zext i8 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.fz
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !18
  br label %sz_s2u.exit25.i.i

bb.be:                                            ; preds = %bb.bc
  %i.gc = icmp samesign ugt i64 %i.ft, 14336
  %i.gd = load i8, ptr @je_opt_disable_large_size_classes, align 1, !range !96
  %i.ge = trunc nuw i8 %i.gd to i1
  %or.cond63.i = select i1 %i.gc, i1 %i.ge, i1 false
  br i1 %or.cond63.i, label %.thread58.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gf = shl nuw nsw i64 %i.ft, 1
  %i.gg = add nsw i64 %i.gf, -1
  %i.gh = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.gg, i1 true) ; 2 uses
  %notmask.i26.i = ashr exact i64 -1152921504606846976, %i.gh
  %i.gi = lshr i64 1152921504606846975, %i.gh
  %i.gj = add nuw nsw i64 %i.gi, %i.ft
  %i.gk = and i64 %i.gj, %notmask.i26.i
  br label %sz_s2u.exit25.i.i

sz_s2u.exit25.i.i:                                ; preds = %bb.bf, %bb.bd
  %.0.i24.i.i = phi i64 [ %i.gb, %bb.bd ], [ %i.gk, %bb.bf ] ; 2 uses
  %i.gl = icmp ult i64 %.0.i24.i.i, 16384
  br i1 %i.gl, label %sz_sa2u.exit.i, label %.thread58.i

bb.bg:                                            ; preds = %bb.bb
  %i.gm = icmp ult i64 %i.bq, 16385
  br i1 %i.gm, label %.thread58.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gn = icmp ugt i64 %i.bq, 8070450532247928832
  br i1 %i.gn, label %arena_sdalloc.exit, label %bb.bi, !prof !104

bb.bi:                                            ; preds = %bb.bh
  %i.go = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !101, !range !96, !noundef !97
  %i.gp = trunc nuw i8 %i.go to i1
  br i1 %i.gp, label %sz_s2u_compute.exit25.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gq = shl nuw i64 %i.bq, 1
  %i.gr = add i64 %i.gq, -1
  %i.gs = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.gr, i1 true) ; 2 uses
  %notmask.i.i82 = ashr exact i64 -1152921504606846976, %i.gs
  %i.gt = lshr i64 1152921504606846975, %i.gs
  br label %sz_s2u_compute.exit25.i

sz_s2u_compute.exit25.i:                          ; preds = %bb.bj, %bb.bi
end_hunk_1
begin_hunk_2_@rtree_read:bb.a
  %i.be = lshr i64 %i.bd, 48
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bf, ptr %i.bg, align 8, !tbaa !237, !alias.scope !238
  %i.bh = trunc i64 %i.bd to i8                   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.bj = and i8 %i.bh, 1
  store i8 %i.bj, ptr %i.bi, align 1, !tbaa !239, !alias.scope !238
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = lshr i8 %i.bh, 1
  %i.bm = and i8 %i.bl, 1
  store i8 %i.bm, ptr %i.bk, align 8, !tbaa !240, !alias.scope !238
  %i.bn = trunc i64 %i.bd to i32
  %i.bo = lshr i32 %i.bn, 2
  %i.bp = and i32 %i.bo, 7
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !241, !alias.scope !238
  %i.br = shl i64 %i.bd, 16
  %i.bs = ashr exact i64 %i.br, 16
  %i.bt = and i64 %i.bs, -128
  %i.bu = inttoptr i64 %i.bt to ptr
  store ptr %i.bu, ptr %0, align 8, !tbaa !132, !alias.scope !238
  ret void
}

declare void @je_rtree_ctx_data_init(ptr noundef) local_unnamed_addr #3

declare ptr @je_rtree_leaf_elm_lookup_hard(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

declare void @je_tcache_bin_flush_large(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @je_edata_heap_remove_first(ptr noundef) local_unnamed_addr #3

declare void @je_bin_slabs_full_remove(i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @arena_prepare_base_deletion_sync(ptr noundef %0, ptr noundef nonnull %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.b = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.a) #19
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %malloc_mutex_trylock.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  store atomic i8 1, ptr %i.c monotonic, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !72
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr %i.d, align 8, !tbaa !72
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !73
  %.not.i.i = icmp eq ptr %i.h, %0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr %i.g, align 8, !tbaa !73
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !74
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !74
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  store atomic i8 0, ptr %i.c monotonic, align 8
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #19 ; 0 uses
  br label %bb.h

malloc_mutex_trylock.exit:                        ; preds = %bb.a
  %i.m = load i32, ptr %3, align 4, !tbaa !13     ; 2 uses
  %i.n = add i32 %i.m, 1                          ; 2 uses
  %i.o = zext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.o
  store ptr %1, ptr %i.p, align 8, !tbaa !118
  %i.q = icmp eq i32 %i.n, 32
  br i1 %i.q, label %.lr.ph.i, label %arena_prepare_base_deletion_sync_finish.exit

.lr.ph.i:                                         ; preds = %malloc_mutex_trylock.exit, %malloc_mutex_lock.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %malloc_mutex_lock.exit.i ], [ 0, %malloc_mutex_trylock.exit ] ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !118  ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.u = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.t) #19
  %.not.i.i14 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i14, label %malloc_mutex_trylock_final.exit.i.i, label %bb.e

malloc_mutex_trylock_final.exit.i.i:              ; preds = %.lr.ph.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store atomic i8 1, ptr %i.v monotonic, align 1
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.s) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %malloc_mutex_trylock_final.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 56 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !72
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !72
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 48 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !73
  %.not.i.i.i = icmp eq ptr %i.aa, %0
  br i1 %.not.i.i.i, label %malloc_mutex_lock.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %0, ptr %i.z, align 8, !tbaa !73
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !74
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !74
  br label %malloc_mutex_lock.exit.i

malloc_mutex_lock.exit.i:                         ; preds = %bb.g, %bb.f
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !118 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  store atomic i8 0, ptr %i.af monotonic, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ah = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ag) #19 ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 32
  br i1 %exitcond.not.i, label %arena_prepare_base_deletion_sync_finish.exit, label %.lr.ph.i, !llvm.loop !0

arena_prepare_base_deletion_sync_finish.exit:     ; preds = %malloc_mutex_lock.exit.i, %malloc_mutex_trylock.exit
  %.0 = phi i32 [ %i.n, %malloc_mutex_trylock.exit ], [ 0, %malloc_mutex_lock.exit.i ]
  store i32 %.0, ptr %3, align 4, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %arena_prepare_base_deletion_sync_finish.exit, %bb.d
  ret void
}

declare void @je_bitmap_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @arena_choose(ptr noundef %0, ptr nofree noundef readnone captures(address_is_null, ret: address, provenance) %1) unnamed_addr #15 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %arena_choose_impl.exit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !103
  %i.c = icmp sgt i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.e, !prof !104

bb.c:                                             ; preds = %bb.b
  %i.d = load atomic ptr, ptr @je_arenas acquire, align 8 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %arena_choose_impl.exit, !prof !104

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @je_arena_init(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @je_arena_config_default) #19
  br label %arena_choose_impl.exit

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !127  ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.k, !prof !104

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr @je_arena_choose_hard(ptr noundef nonnull %0, i1 noundef zeroext false) #19 ; 7 uses
  %i.k = load i8, ptr %0, align 8, !tbaa !101, !range !96, !noundef !97
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !142  ; 2 uses
  %.not43.i = icmp eq ptr %i.p, null
  br i1 %.not43.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not44.i = icmp eq ptr %i.p, %i.j
  br i1 %.not44.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @je_tcache_arena_reassociate(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef %i.j) #19
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  tail call void @je_tcache_arena_associate(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef %i.j) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e
  %.0.i = phi ptr [ %i.h, %bb.e ], [ %i.j, %bb.f ], [ %i.j, %bb.h ], [ %i.j, %bb.i ], [ %i.j, %bb.j ] ; 6 uses
  %i.q = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !13 ; 2 uses
  %i.r = icmp ult i32 %i.q, 3
  br i1 %i.r, label %arena_choose_impl.exit, label %percpu_arena_ind_limit.exit.i

percpu_arena_ind_limit.exit.i:                    ; preds = %bb.k
  %i.s = getelementptr i8, ptr %.0.i, i64 80640   ; 2 uses
  %.0.val48.i = load i32, ptr %i.s, align 64, !tbaa !98
  %i.t = icmp eq i32 %i.q, 4
  %i.u = load i32, ptr @je_ncpus, align 4         ; 4 uses
  %i.v = icmp ugt i32 %i.u, 1
  %or.cond.i.i = and i1 %i.t, %i.v
  %2 = and i32 %i.u, 1
  %3 = lshr i32 %i.u, 1
  %spec.select.i = add nuw i32 %3, %2
  %.0.i.i = select i1 %or.cond.i.i, i32 %spec.select.i, i32 %i.u
  %i.w = icmp ult i32 %.0.val48.i, %.0.i.i
  br i1 %i.w, label %bb.l, label %arena_choose_impl.exit

bb.l:                                             ; preds = %percpu_arena_ind_limit.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.y = load ptr, ptr %i.x, align 16, !tbaa !141
  %.not45.i = icmp eq ptr %i.y, %0
  br i1 %.not45.i, label %arena_choose_impl.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = tail call i32 @sched_getcpu() #19        ; 3 uses
  %i.aa = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !13
  %i.ab = icmp eq i32 %i.aa, 3
  br i1 %i.ab, label %percpu_arena_choose.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = load i32, ptr @je_ncpus, align 4, !tbaa !13
  %i.ad = lshr i32 %i.ac, 1                       ; 2 uses
  %i.ae = icmp ult i32 %i.z, %i.ad
  %i.af = select i1 %i.ae, i32 0, i32 %i.ad
  %spec.select.i.i = sub nuw i32 %i.z, %i.af
  br label %percpu_arena_choose.exit.i

percpu_arena_choose.exit.i:                       ; preds = %bb.n, %bb.m
  %.0.i47.i = phi i32 [ %i.z, %bb.m ], [ %spec.select.i.i, %bb.n ] ; 4 uses
  %.0.val.i = load i32, ptr %i.s, align 64, !tbaa !98
  %.not46.i = icmp eq i32 %.0.val.i, %.0.i47.i
  br i1 %.not46.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %percpu_arena_choose.exit.i
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !127 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 80640
  %.val.i.i = load i32, ptr %i.ah, align 64, !tbaa !98
  %.not.i50.i = icmp eq i32 %.val.i.i, %.0.i47.i
  br i1 %.not.i50.i, label %percpu_arena_update.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = zext i32 %.0.i47.i to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.ai
  %i.ak = load atomic ptr, ptr %i.aj acquire, align 8 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.q, label %arena_get.exit.i.i, !prof !104

bb.q:                                             ; preds = %bb.p
  %i.am = tail call ptr @je_arena_init(ptr noundef nonnull %0, i32 noundef %.0.i47.i, ptr noundef nonnull @je_arena_config_default) #19
  br label %arena_get.exit.i.i

arena_get.exit.i.i:                               ; preds = %bb.q, %bb.p
  %.0.i18.i.i = phi ptr [ %i.am, %bb.q ], [ %i.ak, %bb.p ] ; 2 uses
  tail call void @je_arena_migrate(ptr noundef nonnull %0, ptr noundef nonnull %i.ag, ptr noundef %.0.i18.i.i) #19
  %i.an = load i8, ptr %0, align 8, !tbaa !101, !range !96, !noundef !97
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.r, label %percpu_arena_update.exit.i

bb.r:                                             ; preds = %arena_get.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @je_tcache_arena_reassociate(ptr noundef nonnull %0, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ap, ptr noundef %.0.i18.i.i) #19
  br label %percpu_arena_update.exit.i

percpu_arena_update.exit.i:                       ; preds = %bb.r, %arena_get.exit.i.i, %bb.o
  %i.ar = load ptr, ptr %i.g, align 8, !tbaa !127
  br label %bb.s

bb.s:                                             ; preds = %percpu_arena_update.exit.i, %percpu_arena_choose.exit.i
  %.1.i = phi ptr [ %i.ar, %percpu_arena_update.exit.i ], [ %.0.i, %percpu_arena_choose.exit.i ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  store ptr %0, ptr %i.as, align 16, !tbaa !141
  br label %arena_choose_impl.exit

arena_choose_impl.exit:                           ; preds = %bb.a, %bb.c, %bb.d, %bb.k, %percpu_arena_ind_limit.exit.i, %bb.l, %bb.s
  %.037.i = phi ptr [ %1, %bb.a ], [ %.0.i, %percpu_arena_ind_limit.exit.i ], [ %.0.i, %bb.k ], [ %.1.i, %bb.s ], [ %.0.i, %bb.l ], [ %i.f, %bb.d ], [ %i.d, %bb.c ]
  ret ptr %.037.i
}

declare ptr @je_arena_choose_hard(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @je_tcache_arena_reassociate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @je_tcache_arena_associate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @sched_getcpu() local_unnamed_addr #12

declare void @je_arena_migrate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @je_bin_malloc_no_fresh_slab(ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @je_bin_malloc_with_fresh_slab(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @je_tcache_bin_flush_stashed(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare ptr @je_tcache_alloc_small_hard(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @je_bin_dalloc_locked_handle_newly_empty(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @je_bin_dalloc_locked_handle_newly_nonempty(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #17

declare void @je_large_dalloc_prep_locked(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @je_large_dalloc_finish(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @arena_sdalloc_no_tcache(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #15 {
bb.a:
  %i.a = icmp ult i64 %2, 4097
  br i1 %i.a, label %bb.b, label %bb.c, !prof !102

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %2, 7
  %i.c = lshr i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !103
  %i.f = zext i8 %i.e to i32
  br label %sz_size2index.exit

bb.c:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.g, label %emap_alloc_ctx_usize_get.exit, label %bb.d, !prof !104

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %2, 1
  %i.i = add i64 %i.h, -1
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.i, i1 true) ; 3 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = sub nuw nsw i64 60, %i.j
  %i.m = ashr exact i64 -1152921504606846976, %i.j
  %i.n = add nsw i64 %2, -1
  %i.o = and i64 %i.m, %i.n
  %i.p = lshr i64 %i.o, %i.l
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.q, 3
  %i.s = shl nuw nsw i32 %i.k, 2
  %reass.sub = sub nsw i32 %i.r, %i.s
  %i.t = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.d, %bb.b
  %.0.i = phi i32 [ %i.f, %bb.b ], [ %i.t, %bb.d ]
  %i.u = icmp samesign ult i32 %.0.i, 36
  br i1 %i.u, label %bb.e, label %emap_alloc_ctx_usize_get.exit, !prof !140

bb.e:                                             ; preds = %sz_size2index.exit
  tail call void @je_arena_dalloc_small(ptr noundef %0, ptr noundef %1)
  br label %bb.f

emap_alloc_ctx_usize_get.exit:                    ; preds = %bb.c, %sz_size2index.exit
  tail call fastcc void @arena_dalloc_large_no_tcache(ptr noundef %0, ptr noundef %1)
  br label %bb.f

bb.f:                                             ; preds = %emap_alloc_ctx_usize_get.exit, %bb.e
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @arena_dalloc_large_no_tcache(ptr noundef %0, ptr noundef %1) unnamed_addr #15 {
bb.a:
  %2 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %3 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c, !prof !104

bb.b:                                             ; preds = %bb.a
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %2) #19
  br label %tsdn_rtree_ctx.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %2, %bb.b ], [ %i.b, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.c = ptrtoint ptr %1 to i64
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %0, ptr noundef nonnull %.0.i, i64 noundef %i.c)
  %i.d = load ptr, ptr %3, align 8, !tbaa !132
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @je_large_dalloc(ptr noundef %0, ptr noundef %i.d) #19
  ret void
}

declare void @je_tcache_bin_flush_small(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @je_tsd_slow_update(ptr noundef) local_unnamed_addr #3

declare ptr @je_arena_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_2
