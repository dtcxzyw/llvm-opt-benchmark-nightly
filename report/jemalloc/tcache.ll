Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/tcache?download=true
inline.NumInlined: 196
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@je_tcache_arena_associate:bb.a
  %i.al = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.b) #13 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_tcache_arena_reassociate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @tcache_arena_dissociate(ptr noundef %0, ptr noundef %1)
  tail call void @je_tcache_arena_associate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @tcache_arena_dissociate(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12064 ; 2 uses
  %i.d = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.c) #13
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %malloc_mutex_trylock_final.exit.i, label %bb.b

malloc_mutex_trylock_final.exit.i:                ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 12056
  store atomic i8 1, ptr %i.e monotonic, align 1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 11992
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.f) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %malloc_mutex_trylock_final.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12048 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !65
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.g, align 8, !tbaa !65
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 12040 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !66
  %.not.i.i = icmp eq ptr %i.k, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.j, align 8, !tbaa !66
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 12032 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !67
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.l, align 8, !tbaa !67
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 11976 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !113  ; 2 uses
  %i.q = icmp eq ptr %i.p, %1
  br i1 %i.q, label %bb.e, label %.thread

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !68   ; 2 uses
  store ptr %i.r, ptr %i.o, align 8, !tbaa !113
  %i.s = icmp eq ptr %i.r, %1
  br i1 %i.s, label %bb.f, label %.thread

.thread:                                          ; preds = %malloc_mutex_lock.exit, %bb.e
  %i.t = load ptr, ptr %1, align 8, !tbaa !68
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !69   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !69   ; 2 uses
  store ptr %i.v, ptr %i.x, align 8, !tbaa !68
  %i.y = load ptr, ptr %1, align 8, !tbaa !68     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.z, align 8, !tbaa !69
  store ptr %i.v, ptr %i.w, align 8, !tbaa !69
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !69
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !68
  store ptr %1, ptr %i.v, align 8, !tbaa !68
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %i.o, align 8, !tbaa !113
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 11984 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 16, !tbaa !116 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.h, label %.thread7

bb.h:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !114 ; 2 uses
  store ptr %i.af, ptr %i.ab, align 16, !tbaa !116
  %i.ag = icmp eq ptr %i.af, %i.ad
  br i1 %i.ag, label %bb.i, label %.thread7

.thread7:                                         ; preds = %bb.g, %bb.h
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !118
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !115 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !117 ; 2 uses
  store ptr %i.aj, ptr %i.al, align 8, !tbaa !114
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !118 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  store ptr %i.al, ptr %i.an, align 8, !tbaa !115
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !117
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !115
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !114
  store ptr %i.ad, ptr %i.aj, align 8, !tbaa !114
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %i.ab, align 16, !tbaa !116
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread7
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !119
  tail call void @je_tcache_stats_merge(ptr noundef %0, ptr noundef %i.aq, ptr noundef nonnull %i.b)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 12056
  store atomic i8 0, ptr %i.ar monotonic, align 8
  %i.as = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.c) #13 ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !60
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @tcache_stack_alloc_impl(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.rtree_ctx_s, align 8        ; 5 uses
  %4 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %5 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %6 = alloca %struct.rtree_contents_s, align 8   ; 6 uses
  %i.a = tail call zeroext i1 @je_cache_bin_stack_use_thp() #13
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @je_b0_alloc_tcache_stack(ptr noundef %0, i64 noundef %1) #13
  br label %ipallocztm_explicit_slab.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %1, 14337
  %i.d = icmp ult i64 %2, 4097
  %or.cond.i = and i1 %i.c, %i.d
  br i1 %or.cond.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.e = add nsw i64 %1, -1
  %i.f = add nsw i64 %i.e, %2
  %i.g = sub nsw i64 0, %2
  %i.h = and i64 %i.f, %i.g                       ; 6 uses
  %i.i = icmp ult i64 %i.h, 4097
  br i1 %i.i, label %bb.e, label %bb.f, !prof !61

bb.e:                                             ; preds = %bb.d
  %i.j = add nuw nsw i64 %i.h, 7
  %i.k = lshr i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !29
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8, !tbaa !28
  br label %sz_s2u.exit

bb.f:                                             ; preds = %bb.d
  %i.q = icmp ugt i64 %i.h, 8070450532247928832
  br i1 %i.q, label %sz_sa2u.exit, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.r = icmp samesign ugt i64 %i.h, 14336
  %i.s = load i8, ptr @je_opt_disable_large_size_classes, align 1, !range !21
  %i.t = trunc nuw i8 %i.s to i1
  %or.cond = select i1 %i.r, i1 %i.t, i1 false
  br i1 %or.cond, label %.thread23, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = shl nuw i64 %i.h, 1
  %i.v = add nsw i64 %i.u, -1
  %i.w = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.v, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.w
  %i.x = lshr i64 1152921504606846975, %i.w
  %i.y = add nuw nsw i64 %i.h, %i.x
  %i.z = and i64 %i.y, %notmask.i
  br label %sz_s2u.exit

sz_s2u.exit:                                      ; preds = %bb.h, %bb.e
  %.0.i7 = phi i64 [ %i.p, %bb.e ], [ %i.z, %bb.h ] ; 2 uses
  %i.aa = icmp ult i64 %.0.i7, 16384
  br i1 %i.aa, label %sz_sa2u.exit, label %.thread23

bb.i:                                             ; preds = %bb.c
  %i.ab = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.ab, label %sz_sa2u.exit, label %bb.j, !prof !120

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp ult i64 %1, 16385
  br i1 %i.ac, label %.thread23, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = icmp ugt i64 %1, 8070450532247928832
  br i1 %i.ad, label %sz_sa2u.exit, label %bb.l, !prof !13

bb.l:                                             ; preds = %bb.k
  %i.ae = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !27, !range !21, !noundef !22
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %sz_s2u.exit9, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = shl nuw i64 %1, 1
  %i.ah = add i64 %i.ag, -1
  %i.ai = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.ah, i1 true) ; 2 uses
  %notmask.i17 = ashr exact i64 -1152921504606846976, %i.ai
  %i.aj = lshr i64 1152921504606846975, %i.ai
  br label %sz_s2u.exit9

sz_s2u.exit9:                                     ; preds = %bb.l, %bb.m
  %.sink39 = phi i64 [ %i.aj, %bb.m ], [ 4095, %bb.l ]
  %.sink38 = phi i64 [ %notmask.i17, %bb.m ], [ 9223372036854771712, %bb.l ]
  %7 = add nuw nsw i64 %1, %.sink39
  %8 = and i64 %7, %.sink38                       ; 2 uses
  %i.ak = icmp samesign ult i64 %8, %1
  br i1 %i.ak, label %sz_sa2u.exit, label %.thread23

.thread23:                                        ; preds = %bb.g, %sz_s2u.exit, %sz_s2u.exit9, %bb.j
  %.0.i = phi i64 [ %8, %sz_s2u.exit9 ], [ 16384, %bb.j ], [ 16384, %bb.g ], [ 16384, %sz_s2u.exit ] ; 3 uses
  %i.al = load i64, ptr @je_sz_large_pad, align 8, !tbaa !28
  %i.am = add nuw nsw i64 %2, 4095
  %i.an = and i64 %i.am, 9223372036854771712
  %i.ao = add nsw i64 %i.an, -4096
  %i.ap = add i64 %i.ao, %.0.i
  %i.aq = add i64 %i.ap, %i.al
  %i.ar = icmp ult i64 %i.aq, %.0.i
  %..0.i = select i1 %i.ar, i64 0, i64 %.0.i
  br label %sz_sa2u.exit

sz_sa2u.exit:                                     ; preds = %bb.k, %bb.f, %sz_s2u.exit, %bb.i, %sz_s2u.exit9, %.thread23
  %.018.i = phi i64 [ 0, %bb.i ], [ %.0.i7, %sz_s2u.exit ], [ %..0.i, %.thread23 ], [ 0, %sz_s2u.exit9 ], [ 0, %bb.f ], [ 0, %bb.k ] ; 3 uses
  %i.as = load atomic ptr, ptr @je_arenas acquire, align 8 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.n, label %arena_get.exit, !prof !13

bb.n:                                             ; preds = %sz_sa2u.exit
  %i.au = tail call ptr @je_arena_init(ptr noundef null, i32 noundef 0, ptr noundef nonnull @je_arena_config_default) #13
  br label %arena_get.exit

arena_get.exit:                                   ; preds = %sz_sa2u.exit, %bb.n
  %.0.i18 = phi ptr [ %i.au, %bb.n ], [ %i.as, %sz_sa2u.exit ] ; 2 uses
  %i.av = icmp samesign ult i64 %.018.i, 14337    ; 2 uses
  %i.aw = icmp eq ptr %0, null                    ; 2 uses
  br i1 %i.aw, label %tsdn_witness_tsdp_get.exit.i, label %tsdn_witness_tsdp_get.exit.i.thread

tsdn_witness_tsdp_get.exit.i:                     ; preds = %arena_get.exit
  %i.ax = tail call ptr @je_arena_palloc(ptr noundef null, ptr noundef %.0.i18, i64 noundef %.018.i, i64 noundef %2, i1 noundef zeroext true, i1 noundef zeroext %i.av, ptr noundef null) #13 ; 2 uses
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %ipallocztm_explicit_slab.exit, label %bb.o, !prof !13

tsdn_witness_tsdp_get.exit.i.thread:              ; preds = %arena_get.exit
  %i.ay = tail call ptr @je_arena_palloc(ptr noundef nonnull %0, ptr noundef %.0.i18, i64 noundef %.018.i, i64 noundef %2, i1 noundef zeroext true, i1 noundef zeroext %i.av, ptr noundef null) #13 ; 2 uses
  %.not.i24 = icmp eq ptr %i.ay, null
  br i1 %.not.i24, label %ipallocztm_explicit_slab.exit, label %bb.p, !prof !13

bb.o:                                             ; preds = %tsdn_witness_tsdp_get.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %3) #13
  br label %emap_edata_lookup.exit

bb.p:                                             ; preds = %tsdn_witness_tsdp_get.exit.i.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %emap_edata_lookup.exit

emap_edata_lookup.exit:                           ; preds = %bb.o, %bb.p
  %i.ba = phi ptr [ %i.ax, %bb.o ], [ %i.ay, %bb.p ] ; 2 uses
  %.0.i.i13 = phi ptr [ %3, %bb.o ], [ %i.az, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.bb = ptrtoint ptr %i.ba to i64               ; 2 uses
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef %0, ptr noundef nonnull %.0.i.i13, i64 noundef %i.bb)
  %i.bc = load ptr, ptr %4, align 8, !tbaa !121
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %.val = load i64, ptr %i.bc, align 8, !tbaa !26
  %i.bd = and i64 %.val, 4095
  %i.be = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.bd
  %i.bf = load atomic ptr, ptr %i.be monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  br i1 %i.aw, label %bb.q, label %bb.r, !prof !13

bb.q:                                             ; preds = %emap_edata_lookup.exit
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %5) #13
  br label %tsdn_rtree_ctx.exit.i

bb.r:                                             ; preds = %emap_edata_lookup.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit.i

tsdn_rtree_ctx.exit.i:                            ; preds = %bb.r, %bb.q
  %.0.i2.i = phi ptr [ %5, %bb.q ], [ %i.bg, %bb.r ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef %0, ptr noundef nonnull %.0.i2.i, i64 noundef %i.bb)
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !19 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 17
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !20, !range !21, !noundef !22
  %i.bl = icmp eq i32 %i.bi, 232
  %i.bm = load ptr, ptr %6, align 8               ; 3 uses
  %i.bn = icmp eq ptr %i.bm, null
  %or.cond.i.i = select i1 %i.bl, i1 true, i1 %i.bn
  br i1 %or.cond.i.i, label %emap_alloc_ctx_lookup.exit.i, label %bb.s

bb.s:                                             ; preds = %tsdn_rtree_ctx.exit.i
  %.val.i = load i64, ptr %i.bm, align 8, !tbaa !26
  %i.bo = trunc i64 %.val.i to i32
  %i.bp = lshr i32 %i.bo, 20
  %i.bq = and i32 %i.bp, 255                      ; 2 uses
  %i.br = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !27, !range !21, !noundef !22
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = icmp samesign ugt i32 %i.bq, 35
  %or.cond.not.i = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %or.cond.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = zext nneg i32 %i.bq to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !28
  br label %emap_alloc_ctx_lookup.exit.i

bb.u:                                             ; preds = %bb.s
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !29
  %i.bz = and i64 %i.by, -4096
  %i.ca = load i64, ptr @je_sz_large_pad, align 8, !tbaa !28
  %i.cb = sub i64 %i.bz, %i.ca
  br label %emap_alloc_ctx_lookup.exit.i

emap_alloc_ctx_lookup.exit.i:                     ; preds = %bb.u, %bb.t, %tsdn_rtree_ctx.exit.i
  %i.cc = phi i64 [ 0, %tsdn_rtree_ctx.exit.i ], [ %i.bw, %bb.t ], [ %i.cb, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.cd = trunc nuw i8 %i.bk to i1
  br i1 %i.cd, label %bb.v, label %isalloc.exit

bb.v:                                             ; preds = %emap_alloc_ctx_lookup.exit.i
  %i.ce = zext i32 %i.bi to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !28
  br label %isalloc.exit

isalloc.exit:                                     ; preds = %emap_alloc_ctx_lookup.exit.i, %bb.v
  %.0.i.i10 = phi i64 [ %i.cg, %bb.v ], [ %i.cc, %emap_alloc_ctx_lookup.exit.i ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.ci = atomicrmw add ptr %i.ch, i64 %.0.i.i10 monotonic, align 8 ; 0 uses
  br label %ipallocztm_explicit_slab.exit

ipallocztm_explicit_slab.exit:                    ; preds = %isalloc.exit, %tsdn_witness_tsdp_get.exit.i, %tsdn_witness_tsdp_get.exit.i.thread, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %tsdn_witness_tsdp_get.exit.i.thread ], [ null, %tsdn_witness_tsdp_get.exit.i ], [ %i.ba, %isalloc.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @je_tcache_create_explicit(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.rtree_ctx_s, align 8        ; 5 uses
  %2 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %3 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %4 = alloca %struct.rtree_contents_s, align 8   ; 6 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = load i32, ptr @je_global_do_not_change_tcache_nbins, align 4, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @je_cache_bin_info_compute_alloc(ptr noundef nonnull @opt_tcache_ncached_max, i32 noundef %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #13
  %i.d = load i64, ptr %i.a, align 8, !tbaa !28
  %i.e = add i64 %i.d, 1239
  %i.f = and i64 %i.e, 4294967288                 ; 6 uses
  %i.g = load i64, ptr %i.b, align 8, !tbaa !28   ; 7 uses
  %i.h = icmp samesign ult i64 %i.f, 14337
  %i.i = icmp ult i64 %i.g, 4097
  %or.cond.i = and i1 %i.i, %i.h
  br i1 %or.cond.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i64 %i.g, -1
  %i.k = add nsw i64 %i.j, %i.f
  %i.l = sub nsw i64 0, %i.g
  %i.m = and i64 %i.k, %i.l                       ; 6 uses
  %i.n = icmp ult i64 %i.m, 4097
  br i1 %i.n, label %bb.c, label %bb.d, !prof !61

bb.c:                                             ; preds = %bb.b
  %i.o = add nuw nsw i64 %i.m, 7
  %i.p = lshr i64 %i.o, 3
  %i.q = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !29
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8, !tbaa !28
  br label %sz_s2u.exit

bb.d:                                             ; preds = %bb.b
  %i.v = icmp ugt i64 %i.m, 8070450532247928832
  br i1 %i.v, label %sz_sa2u.exit, label %bb.e, !prof !13

bb.e:                                             ; preds = %bb.d
  %i.w = icmp samesign ugt i64 %i.m, 14336
  %i.x = load i8, ptr @je_opt_disable_large_size_classes, align 1, !range !21
  %i.y = trunc nuw i8 %i.x to i1
  %or.cond = select i1 %i.w, i1 %i.y, i1 false
  br i1 %or.cond, label %.thread35, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = shl nuw i64 %i.m, 1
  %i.aa = add nsw i64 %i.z, -1
  %i.ab = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.aa, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.ab
  %i.ac = lshr i64 1152921504606846975, %i.ab
  %i.ad = add nuw nsw i64 %i.m, %i.ac
  %i.ae = and i64 %i.ad, %notmask.i
  br label %sz_s2u.exit

sz_s2u.exit:                                      ; preds = %bb.f, %bb.c
  %.0.i19 = phi i64 [ %i.u, %bb.c ], [ %i.ae, %bb.f ] ; 2 uses
  %i.af = icmp ult i64 %.0.i19, 16384
  br i1 %i.af, label %sz_sa2u.exit, label %.thread35

bb.g:                                             ; preds = %bb.a
  %i.ag = icmp ugt i64 %i.g, 8070450532247928832
  br i1 %i.ag, label %sz_sa2u.exit, label %bb.h, !prof !120

bb.h:                                             ; preds = %bb.g
  %i.ah = icmp samesign ult i64 %i.f, 16385
  br i1 %i.ah, label %.thread35, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !27, !range !21, !noundef !22
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %sz_s2u.exit21, label %bb.j

end_hunk_0
