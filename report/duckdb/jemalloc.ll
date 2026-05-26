inline.NumInlined: 641
inline.NumDeleted: 71
begin_hunk_0_@duckdb_je_sdallocx_default:bb.a
  %i.hp = zext i16 %.val70 to i32
  %i.hq = load i32, ptr @duckdb_je_opt_lg_tcache_flush_large_div, align 4, !tbaa !3
  %i.hr = lshr i32 %i.hp, %i.hq
  call void @duckdb_je_tcache_bin_flush_large(ptr noundef nonnull %.0.i30, ptr noundef nonnull %.0.i105, ptr noundef nonnull %i.hg, i32 noundef %.0.i.i3595, i32 noundef %i.hr) #21
  %i.hs = load ptr, ptr %i.hg, align 8, !tbaa !86 ; 2 uses
  %i.ht = ptrtoint ptr %i.hs to i64
  %i.hu = load i16, ptr %i.hk, align 2, !tbaa !131
  %i.hv = trunc i64 %i.ht to i16
  %i.hw = icmp eq i16 %i.hu, %i.hv
  br i1 %i.hw, label %arena_sdalloc.exit, label %bb.ar, !prof !7

bb.ar:                                            ; preds = %cache_bin_dalloc_easy.exit12.i.i
  %i.hx = getelementptr inbounds i8, ptr %i.hs, i64 -8 ; 2 uses
  store ptr %i.hx, ptr %i.hg, align 8, !tbaa !86
  store ptr %0, ptr %i.hx, align 8, !tbaa !92
  br label %arena_sdalloc.exit

tsdn_rtree_ctx.exit52:                            ; preds = %bb.ap, %sz_size2index.exit.i.thread
  %i.hy = getelementptr inbounds nuw i8, ptr %.0.i30, i64 440
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull %.0.i30, ptr noundef nonnull %i.hy, i64 noundef %i.ff)
  %i.hz = load ptr, ptr %6, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @duckdb_je_large_dalloc(ptr noundef nonnull %.0.i30, ptr noundef %i.hz) #21
  br label %arena_sdalloc.exit

arena_sdalloc.exit:                               ; preds = %tsdn_rtree_ctx.exit52, %cache_bin_dalloc_easy.exit12.i.i, %bb.ar, %cache_bin_dalloc_easy.exit12.i.i.thread, %bb.am, %cache_bin_dalloc_easy.exit18.i.thread, %bb.ao, %bb.an, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store i8 0, ptr %3, align 8, !tbaa !109
  %i.ia = getelementptr inbounds nuw i8, ptr %.0.i30, i64 848 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ia, ptr %i.ib, align 8, !tbaa !112
  %i.ic = getelementptr inbounds nuw i8, ptr %.0.i30, i64 24
  %i.id = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ic, ptr %i.id, align 8, !tbaa !113
  %i.ie = getelementptr inbounds nuw i8, ptr %.0.i30, i64 32 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.ie, ptr %i.if, align 8, !tbaa !114
  %i.ig = getelementptr inbounds nuw i8, ptr %.0.i30, i64 856
  %i.ih = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.ig, ptr %i.ih, align 8, !tbaa !115
  %i.ii = load i64, ptr %i.ia, align 8, !tbaa !23 ; 2 uses
  %i.ij = add i64 %i.ii, %storemerge.i
  store i64 %i.ij, ptr %i.ia, align 8, !tbaa !23
  %i.ik = load i64, ptr %i.ie, align 8, !tbaa !23
  %i.il = sub i64 %i.ik, %i.ii
  %i.im = icmp ult i64 %storemerge.i, %i.il
  br i1 %i.im, label %te_event_advance.exit53, label %bb.as, !prof !9

bb.as:                                            ; preds = %arena_sdalloc.exit
  call void @duckdb_je_te_event_trigger(ptr noundef nonnull %.0.i30, ptr noundef nonnull %3) #21
  br label %te_event_advance.exit53

te_event_advance.exit53:                          ; preds = %arena_sdalloc.exit, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.at

bb.at:                                            ; preds = %te_event_advance.exit53, %te_event_advance.exit
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define range(i64 0, 8070450532247928833) i64 @duckdb_je_nallocx(i64 noundef %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = load i32, ptr @duckdb_je_malloc_init_state, align 4, !tbaa !3
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %malloc_init.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.c, label %malloc_init.exit.thread, label %malloc_init.exit

malloc_init.exit:                                 ; preds = %bb.b, %bb.a
  %i.d = load i8, ptr @duckdb_je_tsd_booted, align 1, !tbaa !95, !range !96, !noundef !97
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %tsdn_fetch.exit

bb.c:                                             ; preds = %malloc_init.exit
  %i.f = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 824
  %i.h = load i8, ptr %i.g, align 8, !tbaa !10
  %.not.i = icmp eq i8 %i.h, 0
  br i1 %.not.i, label %tsdn_fetch.exit, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.f, i1 noundef zeroext false) #21 ; 0 uses
  br label %tsdn_fetch.exit

tsdn_fetch.exit:                                  ; preds = %bb.d, %bb.c, %malloc_init.exit
  %i.j = and i32 %1, 63
  %i.k = zext nneg i32 %i.j to i64
  %i.l = shl nuw i64 1, %i.k                      ; 2 uses
  %i.m = and i64 %i.l, -2                         ; 5 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.i

bb.e:                                             ; preds = %tsdn_fetch.exit
  %i.o = icmp ult i64 %0, 4097
  br i1 %i.o, label %bb.f, label %bb.g, !prof !9

bb.f:                                             ; preds = %bb.e
  %i.p = add nuw nsw i64 %0, 7
  %i.q = lshr i64 %i.p, 3
  %i.r = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !10
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !23
  br label %aligned_usize_get.exit

bb.g:                                             ; preds = %bb.e
  %i.w = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.w, label %malloc_init.exit.thread, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.x = shl nuw i64 %0, 1
  %i.y = add i64 %i.x, -1
  %i.z = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.y, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.z
  %i.aa = lshr i64 1152921504606846975, %i.z
  %i.ab = add nuw nsw i64 %0, %i.aa
  %i.ac = and i64 %i.ab, %notmask.i
  br label %aligned_usize_get.exit

bb.i:                                             ; preds = %tsdn_fetch.exit
  %i.ad = icmp ult i64 %0, 14337
  %i.ae = icmp ult i64 %i.m, 4097
  %or.cond.i = and i1 %i.ad, %i.ae
  br i1 %or.cond.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.af = add nsw i64 %0, -1
  %i.ag = add nsw i64 %i.af, %i.m
  %i.ah = sub nsw i64 0, %i.m
  %i.ai = and i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp samesign ult i64 %i.ai, 4097
  br i1 %i.aj, label %bb.k, label %sz_s2u_compute.exit.i, !prof !9

bb.k:                                             ; preds = %bb.j
  %i.ak = add nuw nsw i64 %i.ai, 6
  %i.al = lshr i64 %i.ak, 3
  %i.am = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !10
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !23
  br label %sz_s2u.exit25.i

sz_s2u_compute.exit.i:                            ; preds = %bb.j
  %i.ar = shl nuw nsw i64 %i.ai, 1
  %i.as = add nsw i64 %i.ar, -1
  %i.at = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.as, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.at
  %i.au = lshr i64 1152921504606846975, %i.at
  %i.av = add nuw nsw i64 %i.ai, %i.au
  %i.aw = and i64 %i.av, %notmask.i.i
  br label %sz_s2u.exit25.i

sz_s2u.exit25.i:                                  ; preds = %sz_s2u_compute.exit.i, %bb.k
  %.0.i24.i = phi i64 [ %i.aq, %bb.k ], [ %i.aw, %sz_s2u_compute.exit.i ] ; 2 uses
  %i.ax = icmp ult i64 %.0.i24.i, 16384
  br i1 %i.ax, label %malloc_init.exit.thread, label %.thread15

bb.l:                                             ; preds = %bb.i
  %i.ay = icmp ugt i64 %i.m, 8070450532247928832
  br i1 %i.ay, label %malloc_init.exit.thread, label %bb.m, !prof !121

bb.m:                                             ; preds = %bb.l
  %i.az = icmp ult i64 %0, 16385
  br i1 %i.az, label %.thread15, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.ba, label %sz_s2u_compute.exit29.i, label %bb.o, !prof !7

bb.o:                                             ; preds = %bb.n
  %i.bb = shl nuw i64 %0, 1
  %i.bc = add i64 %i.bb, -1
  %i.bd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.bc, i1 true) ; 2 uses
  %notmask.i27.i = ashr exact i64 -1152921504606846976, %i.bd
  %i.be = lshr i64 1152921504606846975, %i.bd
  %i.bf = add nuw nsw i64 %0, %i.be
  %i.bg = and i64 %i.bf, %notmask.i27.i
  br label %sz_s2u_compute.exit29.i

sz_s2u_compute.exit29.i:                          ; preds = %bb.o, %bb.n
  %.0.i28.i = phi i64 [ %i.bg, %bb.o ], [ 0, %bb.n ] ; 2 uses
  %i.bh = icmp ult i64 %.0.i28.i, %0
  br i1 %i.bh, label %malloc_init.exit.thread, label %.thread15

.thread15:                                        ; preds = %sz_s2u.exit25.i, %sz_s2u_compute.exit29.i, %bb.m
  %.0.i13 = phi i64 [ %.0.i28.i, %sz_s2u_compute.exit29.i ], [ 16384, %bb.m ], [ 16384, %sz_s2u.exit25.i ] ; 3 uses
  %i.bi = load i64, ptr @duckdb_je_sz_large_pad, align 8, !tbaa !23
  %i.bj = add nuw i64 %i.l, 4094
  %i.bk = and i64 %i.bj, 9223372036854771712
  %i.bl = add nsw i64 %i.bk, -4096
  %i.bm = add i64 %i.bl, %.0.i13
  %i.bn = add i64 %i.bm, %i.bi
  %i.bo = icmp ult i64 %i.bn, %.0.i13
  br i1 %i.bo, label %malloc_init.exit.thread, label %aligned_usize_get.exit

aligned_usize_get.exit:                           ; preds = %.thread15, %bb.f, %bb.h
  %storemerge.i = phi i64 [ %.0.i13, %.thread15 ], [ %i.v, %bb.f ], [ %i.ac, %bb.h ] ; 2 uses
  %i.bp = icmp ugt i64 %storemerge.i, 8070450532247928832
  %spec.select = select i1 %i.bp, i64 0, i64 %storemerge.i, !prof !153
  br label %malloc_init.exit.thread

malloc_init.exit.thread:                          ; preds = %aligned_usize_get.exit, %.thread15, %sz_s2u_compute.exit29.i, %sz_s2u.exit25.i, %bb.l, %bb.g, %bb.b
  %.0 = phi i64 [ %spec.select, %aligned_usize_get.exit ], [ 0, %.thread15 ], [ 0, %bb.b ], [ 0, %bb.g ], [ 0, %sz_s2u_compute.exit29.i ], [ %.0.i24.i, %sz_s2u.exit25.i ], [ 0, %bb.l ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i32 @duckdb_je_mallctl(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @duckdb_je_malloc_init_state, align 4, !tbaa !3
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %malloc_init.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.c, label %malloc_init.exit.thread, label %malloc_init.exit

malloc_init.exit:                                 ; preds = %bb.b, %bb.a
  %i.d = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 824
  %i.f = load i8, ptr %i.e, align 8, !tbaa !10
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.c, !prof !9

bb.c:                                             ; preds = %malloc_init.exit
  %i.g = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.d, i1 noundef zeroext false) #21
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %malloc_init.exit, %bb.c
  %.0.i9 = phi ptr [ %i.g, %bb.c ], [ %i.d, %malloc_init.exit ]
  %i.h = tail call i32 @duckdb_je_ctl_byname(ptr noundef %.0.i9, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) #21
  br label %malloc_init.exit.thread

malloc_init.exit.thread:                          ; preds = %bb.b, %tsd_fetch_impl.exit
  %.0 = phi i32 [ %i.h, %tsd_fetch_impl.exit ], [ 11, %bb.b ]
  ret i32 %.0
}

declare i32 @duckdb_je_ctl_byname(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i32 @duckdb_je_mallctlnametomib(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @duckdb_je_malloc_init_state, align 4, !tbaa !3
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %malloc_init.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.c, label %malloc_init.exit.thread, label %malloc_init.exit

malloc_init.exit:                                 ; preds = %bb.b, %bb.a
  %i.d = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 824
  %i.f = load i8, ptr %i.e, align 8, !tbaa !10
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.c, !prof !9

bb.c:                                             ; preds = %malloc_init.exit
  %i.g = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.d, i1 noundef zeroext false) #21
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %malloc_init.exit, %bb.c
  %.0.i7 = phi ptr [ %i.g, %bb.c ], [ %i.d, %malloc_init.exit ]
  %i.h = tail call i32 @duckdb_je_ctl_nametomib(ptr noundef %.0.i7, ptr noundef %0, ptr noundef %1, ptr noundef %2) #21
  br label %malloc_init.exit.thread

malloc_init.exit.thread:                          ; preds = %bb.b, %tsd_fetch_impl.exit
  %.0 = phi i32 [ %i.h, %tsd_fetch_impl.exit ], [ 11, %bb.b ]
  ret i32 %.0
}

declare i32 @duckdb_je_ctl_nametomib(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i32 @duckdb_je_mallctlbymib(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @duckdb_je_malloc_init_state, align 4, !tbaa !3
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %malloc_init.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.c, label %malloc_init.exit.thread, label %malloc_init.exit

malloc_init.exit:                                 ; preds = %bb.b, %bb.a
  %i.d = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 824
  %i.f = load i8, ptr %i.e, align 8, !tbaa !10
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.c, !prof !9

bb.c:                                             ; preds = %malloc_init.exit
  %i.g = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.d, i1 noundef zeroext false) #21
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %malloc_init.exit, %bb.c
  %.0.i10 = phi ptr [ %i.g, %bb.c ], [ %i.d, %malloc_init.exit ]
  %i.h = tail call i32 @duckdb_je_ctl_bymib(ptr noundef %.0.i10, ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) #21
  br label %malloc_init.exit.thread

malloc_init.exit.thread:                          ; preds = %bb.b, %tsd_fetch_impl.exit
  %.0 = phi i32 [ %i.h, %tsd_fetch_impl.exit ], [ 11, %bb.b ]
  ret i32 %.0
}

declare i32 @duckdb_je_ctl_bymib(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @duckdb_je_malloc_stats_print(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.buf_writer_t, align 8       ; 5 uses
  %i.a = load i8, ptr @duckdb_je_tsd_booted, align 1, !tbaa !95, !range !96, !noundef !97
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %tsdn_fetch.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 824
  %i.e = load i8, ptr %i.d, align 8, !tbaa !10
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %tsdn_fetch.exit, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false) #21
  br label %tsdn_fetch.exit

tsdn_fetch.exit:                                  ; preds = %bb.c, %bb.b, %bb.a
  %.0.i = phi ptr [ null, %bb.a ], [ %i.f, %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.g = call zeroext i1 @duckdb_je_buf_writer_init(ptr noundef %.0.i, ptr noundef nonnull %3, ptr noundef %0, ptr noundef %1, ptr noundef null, i64 noundef 65536) #21 ; 0 uses
  call void @duckdb_je_stats_print(ptr noundef nonnull @duckdb_je_buf_writer_cb, ptr noundef nonnull %3, ptr noundef %2) #21
  call void @duckdb_je_buf_writer_terminate(ptr noundef %.0.i, ptr noundef nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void
}

declare zeroext i1 @duckdb_je_buf_writer_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @duckdb_je_stats_print(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_buf_writer_cb(ptr noundef, ptr noundef) #5

declare void @duckdb_je_buf_writer_terminate(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i64 @duckdb_je_malloc_usable_size(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.rtree_ctx_s, align 8        ; 5 uses
  %i.a = load i8, ptr @duckdb_je_tsd_booted, align 1, !tbaa !95, !range !96, !noundef !97
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %tsdn_fetch.exit.i.thread

bb.b:                                             ; preds = %bb.a
  %i.c = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 824
  %i.e = load i8, ptr %i.d, align 8, !tbaa !10
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %tsdn_fetch.exit.i, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false) #21
  br label %tsdn_fetch.exit.i

tsdn_fetch.exit.i:                                ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.c, %bb.b ], [ %i.f, %bb.c ] ; 3 uses
  %i.g = icmp eq ptr %0, null
  br i1 %i.g, label %je_malloc_usable_size_impl.exit, label %bb.d, !prof !7

tsdn_fetch.exit.i.thread:                         ; preds = %bb.a
  %i.h = icmp eq ptr %0, null
  br i1 %i.h, label %je_malloc_usable_size_impl.exit, label %.thread, !prof !7

.thread:                                          ; preds = %tsdn_fetch.exit.i.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  br label %bb.e

bb.d:                                             ; preds = %tsdn_fetch.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.i = icmp eq ptr %.0.i.i, null
  br i1 %i.i, label %bb.e, label %bb.f, !prof !84

bb.e:                                             ; preds = %.thread, %bb.d
  call void @duckdb_je_rtree_ctx_data_init(ptr noundef nonnull %1) #21
  br label %arena_salloc.exit

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 440
  br label %arena_salloc.exit

arena_salloc.exit:                                ; preds = %bb.e, %bb.f
  %.0.i.i46 = phi ptr [ null, %bb.e ], [ %.0.i.i, %bb.f ]
  %.0.i.i2 = phi ptr [ %1, %bb.e ], [ %i.j, %bb.f ]
  %i.k = ptrtoint ptr %0 to i64
end_hunk_0
begin_hunk_1_@malloc_init_hard_a0_locked:bb.a
  call void @abort()
  unreachable

bb.ae:                                            ; preds = %bb.ac
  store i8 0, ptr @duckdb_je_opt_hpa, align 1, !tbaa !95
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ab, %bb.aa
  %i.br = call ptr @duckdb_je_b0get() #21
  %i.bs = load i8, ptr @duckdb_je_opt_hpa, align 1, !tbaa !95, !range !96, !noundef !97
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = call zeroext i1 @duckdb_je_arena_boot(ptr noundef nonnull %0, ptr noundef %i.br, i1 noundef zeroext %i.bt) #21
  br i1 %i.bu, label %bb.ar, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bv = call ptr @duckdb_je_b0get() #21
  %i.bw = call zeroext i1 @duckdb_je_tcache_boot(ptr noundef null, ptr noundef %i.bv) #21
  br i1 %i.bw, label %bb.ar, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bx = call zeroext i1 @duckdb_je_malloc_mutex_init(ptr noundef nonnull @duckdb_je_arenas_lock, ptr noundef nonnull @.str.84, i32 noundef 4, i32 noundef 0) #21
  br i1 %i.bx, label %bb.ar, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.by = call zeroext i1 @duckdb_je_hook_boot() #21 ; 0 uses
  store i32 1, ptr @duckdb_je_narenas_auto, align 4, !tbaa !3
  store i32 2, ptr @duckdb_je_manual_arena_base, align 4, !tbaa !3
  store i64 0, ptr @duckdb_je_arenas, align 64
  %i.bz = call ptr @duckdb_je_arena_init(ptr noundef null, i32 noundef 0, ptr noundef nonnull @duckdb_je_arena_config_default)
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.ar, label %arena_get.exit

arena_get.exit:                                   ; preds = %bb.ai
  %i.cb = load atomic ptr, ptr @duckdb_je_arenas acquire, align 64
  store ptr %i.cb, ptr @a0, align 8, !tbaa !32
  %i.cc = load i8, ptr @duckdb_je_opt_hpa, align 1, !tbaa !95, !range !96, !noundef !97
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %arena_get.exit
  %i.ce = call zeroext i1 @duckdb_je_hpa_supported() #21
  br i1 %i.ce, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cf = load i8, ptr @duckdb_je_opt_abort_conf, align 1, !tbaa !95, !range !96, !noundef !97
  %i.cg = trunc nuw i8 %i.cf to i1
  %i.ch = select i1 %i.cg, ptr @.str.82, ptr @.str.83
  call void (ptr, ...) @duckdb_je_malloc_printf(ptr noundef nonnull @.str.81, ptr noundef nonnull %i.ch) #21
  %i.ci = load i8, ptr @duckdb_je_opt_abort_conf, align 1, !tbaa !95, !range !96, !noundef !97
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void (ptr, ...) @duckdb_je_malloc_printf(ptr noundef nonnull @.str.176) #21
  call void @abort()
  unreachable

bb.am:                                            ; preds = %bb.ak
  store i8 0, ptr @duckdb_je_opt_hpa, align 1, !tbaa !95
  br label %.thread

bb.an:                                            ; preds = %bb.aj
  %.pre = load i8, ptr @duckdb_je_opt_hpa, align 1, !tbaa !95, !range !96
  %i.ck = trunc nuw i8 %.pre to i1
  br i1 %i.ck, label %bb.ao, label %.thread

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) @duckdb_je_opt_hpa_opts, i64 48, i1 false), !tbaa.struct !162
  %i.cl = load atomic i8, ptr @duckdb_je_background_thread_enabled_state monotonic, align 1, !range !96, !noundef !97
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i8 %i.cl, ptr %i.cm, align 4, !tbaa !163
  %i.cn = load ptr, ptr @a0, align 8, !tbaa !32
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 10664
  %i.cp = call zeroext i1 @duckdb_je_pa_shard_enable_hpa(ptr noundef null, ptr noundef nonnull %i.co, ptr noundef nonnull %1, ptr noundef nonnull @duckdb_je_opt_hpa_sec_opts) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %i.cp, label %bb.ar, label %.thread

.thread:                                          ; preds = %arena_get.exit, %bb.an, %bb.ao, %bb.am
  store i32 2, ptr @duckdb_je_malloc_init_state, align 4, !tbaa !3
  %i.cq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #25 ; 2 uses
  %.not9 = icmp eq i64 %i.cq, 0
  br i1 %.not9, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %.thread
  %i.cr = add i64 %i.cq, 1                        ; 2 uses
  %i.cs = call fastcc ptr @a0ialloc(i64 noundef %i.cr, i1 noundef zeroext false, i1 noundef zeroext true) ; 3 uses
  %.not10 = icmp eq ptr %i.cs, null
  br i1 %.not10, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cs, ptr nonnull align 16 %i.h, i64 %i.cr, i1 false)
  store ptr %i.cs, ptr @duckdb_je_opt_malloc_conf_symlink, align 8, !tbaa !160
  br label %bb.ar

bb.ar:                                            ; preds = %.thread, %bb.aq, %bb.ap, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.ao
  %.1 = phi i1 [ true, %bb.ao ], [ true, %bb.u ], [ true, %bb.v ], [ true, %bb.w ], [ true, %bb.x ], [ true, %bb.y ], [ true, %bb.z ], [ true, %bb.af ], [ true, %bb.ag ], [ true, %bb.ah ], [ true, %bb.ai ], [ false, %bb.ap ], [ false, %bb.aq ], [ false, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #21
  ret i1 %.1
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @pthread_self() local_unnamed_addr #14

declare void @duckdb_je_sc_boot(ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_bin_shard_sizes_boot(ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_san_init(i64 noundef) local_unnamed_addr #5

declare void @duckdb_je_sz_boot(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare void @duckdb_je_bin_info_boot(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare i32 @atexit(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define internal void @stats_print_atexit() #2 {
bb.a:
  %0 = alloca %struct.buf_writer_t, align 8       ; 5 uses
  %i.a = load i8, ptr @duckdb_je_tsd_booted, align 1, !tbaa !95, !range !96, !noundef !97
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %tsdn_fetch.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 824
  %i.e = load i8, ptr %i.d, align 8, !tbaa !10
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %tsdn_fetch.exit, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false) #21
  br label %tsdn_fetch.exit

tsdn_fetch.exit:                                  ; preds = %bb.c, %bb.b, %bb.a
  %.0.i = phi ptr [ null, %bb.a ], [ %i.f, %bb.c ], [ %i.c, %bb.b ] ; 3 uses
  %i.g = load atomic i32, ptr @narenas_total acquire, align 4 ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph32.preheader

.lr.ph32.preheader:                               ; preds = %tsdn_fetch.exit
  %wide.trip.count = zext i32 %i.g to i64
  br label %.lr.ph32

.lr.ph32:                                         ; preds = %.lr.ph32.preheader, %arena_get.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph32.preheader ], [ %indvars.iv.next, %arena_get.exit.thread ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %indvars.iv
  %i.i = load atomic ptr, ptr %i.h acquire, align 8 ; 10 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %arena_get.exit.thread, label %arena_get.exit, !prof !7

arena_get.exit:                                   ; preds = %.lr.ph32
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 10496 ; 2 uses
  %i.l = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.k) #21
  %.not.i24 = icmp eq i32 %i.l, 0
  br i1 %.not.i24, label %bb.d, label %atomic_store_b.exit.i

atomic_store_b.exit.i:                            ; preds = %arena_get.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 10424
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull %i.m) #21
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 10488
  store atomic i8 1, ptr %i.n monotonic, align 1
  br label %bb.d

bb.d:                                             ; preds = %atomic_store_b.exit.i, %arena_get.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 10480 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !24
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.o, align 8, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 10472 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !29
  %.not.i.i = icmp eq ptr %i.s, %.0.i
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %.0.i, ptr %i.r, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 10464 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !30
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.t, align 8, !tbaa !30
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.d, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 10408 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !164  ; 2 uses
  %.not2029 = icmp eq ptr %i.x, null
  br i1 %.not2029, label %select.unfold._crit_edge, label %select.unfold

select.unfold:                                    ; preds = %malloc_mutex_lock.exit, %select.unfold
  %.030 = phi ptr [ %i.aa, %select.unfold ], [ %i.x, %malloc_mutex_lock.exit ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.030, i64 176
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !165
  tail call void @duckdb_je_tcache_stats_merge(ptr noundef %.0.i, ptr noundef %i.z, ptr noundef nonnull %i.i) #21
  %i.aa = load ptr, ptr %.030, align 8, !tbaa !166 ; 3 uses
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !164
  %.not21 = icmp eq ptr %i.aa, %i.ab
  %.not2036 = icmp eq ptr %i.aa, null
  %.not20 = or i1 %.not21, %.not2036
  br i1 %.not20, label %select.unfold._crit_edge, label %select.unfold

select.unfold._crit_edge:                         ; preds = %select.unfold, %malloc_mutex_lock.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 10488
  store atomic i8 0, ptr %i.ac monotonic, align 8
  %i.ad = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.k) #21 ; 0 uses
  br label %arena_get.exit.thread

arena_get.exit.thread:                            ; preds = %.lr.ph32, %select.unfold._crit_edge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph32

._crit_edge:                                      ; preds = %arena_get.exit.thread, %tsdn_fetch.exit
  %i.ae = load i8, ptr @duckdb_je_tsd_booted, align 1, !tbaa !95, !range !96, !noundef !97
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.f, label %duckdb_je_malloc_stats_print.exit

bb.f:                                             ; preds = %._crit_edge
  %i.ag = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 824
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !10
  %.not.i.i26 = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i26, label %duckdb_je_malloc_stats_print.exit, label %bb.g, !prof !9

bb.g:                                             ; preds = %bb.f
  %i.aj = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.ag, i1 noundef zeroext false) #21
  br label %duckdb_je_malloc_stats_print.exit

duckdb_je_malloc_stats_print.exit:                ; preds = %._crit_edge, %bb.f, %bb.g
  %.0.i.i = phi ptr [ null, %._crit_edge ], [ %i.aj, %bb.g ], [ %i.ag, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #21
  %i.ak = call zeroext i1 @duckdb_je_buf_writer_init(ptr noundef %.0.i.i, ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef null, i64 noundef 65536) #21 ; 0 uses
  call void @duckdb_je_stats_print(ptr noundef nonnull @duckdb_je_buf_writer_cb, ptr noundef nonnull %0, ptr noundef nonnull @duckdb_je_opt_stats_print_opts) #21
  call void @duckdb_je_buf_writer_terminate(ptr noundef %.0.i.i, ptr noundef nonnull %0) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #21
  ret void
}

declare void @duckdb_je_malloc_write(ptr noundef) local_unnamed_addr #5

declare zeroext i1 @duckdb_je_stats_boot() local_unnamed_addr #5

declare zeroext i1 @duckdb_je_pages_boot() local_unnamed_addr #5

declare zeroext i1 @duckdb_je_base_boot(ptr noundef) local_unnamed_addr #5

declare zeroext i1 @duckdb_je_emap_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare ptr @duckdb_je_b0get() local_unnamed_addr #5

declare zeroext i1 @duckdb_je_extent_boot() local_unnamed_addr #5

declare zeroext i1 @duckdb_je_ctl_boot() local_unnamed_addr #5

declare zeroext i1 @duckdb_je_hpa_supported() local_unnamed_addr #5

declare void @duckdb_je_malloc_printf(ptr noundef, ...) local_unnamed_addr #5

declare zeroext i1 @duckdb_je_arena_boot(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare zeroext i1 @duckdb_je_tcache_boot(ptr noundef, ptr noundef) local_unnamed_addr #5

declare zeroext i1 @duckdb_je_malloc_mutex_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare zeroext i1 @duckdb_je_hook_boot() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare zeroext i1 @duckdb_je_pa_shard_enable_hpa(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define internal fastcc void @malloc_conf_init_helper(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef nonnull captures(none) %3, ptr noundef %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 100 uses
  %i.c = alloca ptr, align 8                      ; 119 uses
  %i.d = alloca i64, align 8                      ; 99 uses
  %i.e = alloca i64, align 8                      ; 81 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %i.m = alloca ptr, align 8                      ; 4 uses
  %i.n = alloca ptr, align 8                      ; 4 uses
  %i.o = alloca ptr, align 8                      ; 4 uses
  %i.p = alloca ptr, align 8                      ; 4 uses
  %i.q = alloca ptr, align 8                      ; 4 uses
  %i.r = alloca ptr, align 8                      ; 4 uses
  %i.s = alloca ptr, align 8                      ; 4 uses
  %i.t = alloca ptr, align 8                      ; 4 uses
  %i.u = alloca ptr, align 8                      ; 4 uses
  %i.v = alloca ptr, align 8                      ; 4 uses
  %i.w = alloca ptr, align 8                      ; 4 uses
  %i.x = alloca ptr, align 8                      ; 4 uses
  %i.y = alloca ptr, align 8                      ; 4 uses
  %i.z = alloca ptr, align 8                      ; 4 uses
  %i.aa = alloca ptr, align 8                     ; 4 uses
  %i.ab = alloca ptr, align 8                     ; 4 uses
  %i.ac = alloca ptr, align 8                     ; 4 uses
  %i.ad = alloca ptr, align 8                     ; 4 uses
  %i.ae = alloca ptr, align 8                     ; 4 uses
  %i.af = alloca ptr, align 8                     ; 4 uses
  %i.ag = alloca ptr, align 8                     ; 4 uses
  %i.ah = alloca ptr, align 8                     ; 4 uses
  %i.ai = alloca ptr, align 8                     ; 4 uses
  %i.aj = alloca ptr, align 8                     ; 4 uses
  %i.ak = alloca i32, align 4                     ; 4 uses
  %i.al = alloca ptr, align 8                     ; 4 uses
  %i.am = alloca ptr, align 8                     ; 4 uses
  %i.an = alloca ptr, align 8                     ; 4 uses
  %i.ao = alloca i32, align 4                     ; 4 uses
  %i.ap = alloca ptr, align 8                     ; 4 uses
  %i.aq = alloca ptr, align 8                     ; 4 uses
  %i.ar = alloca ptr, align 8                     ; 4 uses
  %i.as = alloca ptr, align 8                     ; 4 uses
  %i.at = alloca ptr, align 8                     ; 4 uses
  %i.au = alloca ptr, align 8                     ; 4 uses
  %i.av = alloca ptr, align 8                     ; 4 uses
  %i.aw = alloca i64, align 8                     ; 5 uses
  %i.ax = alloca i64, align 8                     ; 5 uses
  %i.ay = alloca i64, align 8                     ; 5 uses
  %i.az = alloca i64, align 8                     ; 5 uses
  %i.ba = alloca ptr, align 8                     ; 4 uses
  %i.bb = alloca ptr, align 8                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  %.not937 = xor i1 %2, true                      ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.qs
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.qs ] ; 6 uses
  br i1 %2, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.bc = trunc nuw nsw i64 %indvars.iv to i32
  switch i32 %i.bc, label %bb.k [
    i32 0, label %.thread
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.h
    i32 4, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  %i.bd = load ptr, ptr @duckdb_je_malloc_conf, align 8, !tbaa !160
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.be = tail call ptr @__errno_location() #23   ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bg = call i64 @readlink(ptr noundef nonnull @.str.165, ptr noundef %4, i64 noundef 4096) #21 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, -1
  br i1 %i.bh, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.010.i = phi i64 [ 0, %bb.f ], [ %i.bg, %bb.e ]
  %i.bi = getelementptr inbounds i8, ptr %4, i64 %.010.i
  store i8 0, ptr %i.bi, align 1, !tbaa !10
  br label %.thread

bb.h:                                             ; preds = %bb.c
  %i.bj = call noundef ptr @getenv(ptr noundef nonnull @.str.166) #21 ; 3 uses
  %.not.i = icmp eq ptr %i.bj, null
  br i1 %.not.i, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.bj, ptr @duckdb_je_opt_malloc_conf_env_var, align 8, !tbaa !160
  br label %.thread

bb.j:                                             ; preds = %bb.c
  %i.bk = load ptr, ptr @duckdb_je_malloc_conf_2_conf_harder, align 8, !tbaa !160
  br label %.thread

bb.k:                                             ; preds = %bb.c
  unreachable

.thread:                                          ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.d, %bb.c
  %.1.i = phi ptr [ %i.bk, %bb.j ], [ %i.bd, %bb.d ], [ @.str.91, %bb.c ], [ %4, %bb.g ], [ %i.bj, %bb.i ], [ null, %bb.h ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store ptr %.1.i, ptr %i.bl, align 8, !tbaa !160
  store ptr %.1.i, ptr %i.a, align 8, !tbaa !160
  br label %bb.n

bb.l:                                             ; preds = %bb.b
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
end_hunk_1
