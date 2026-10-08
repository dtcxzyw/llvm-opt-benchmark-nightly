Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/jemalloc?download=true
inline.NumInlined: 639
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@je_free_default:bb.a
bb.ab:                                            ; preds = %bb.aa
  %i.fc = ptrtoint ptr %.val to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 18 ; 2 uses
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !139
  %i.ff = trunc i64 %i.fc to i16
  %i.fg = icmp eq i16 %i.fe, %i.ff
  br i1 %i.fg, label %cache_bin_dalloc_easy.exit12.i, label %cache_bin_dalloc_easy.exit12.i.thread, !prof !21

cache_bin_dalloc_easy.exit12.i.thread:            ; preds = %bb.ab
  %i.fh = getelementptr inbounds i8, ptr %.val, i64 -8 ; 2 uses
  store ptr %i.fh, ptr %i.ez, align 8, !tbaa !108
  store ptr %0, ptr %i.fh, align 8, !tbaa !109
  br label %arena_dalloc.exit

cache_bin_dalloc_easy.exit12.i:                   ; preds = %bb.ab
  %.val68 = load i16, ptr %i.fb, align 2, !tbaa !140
  %i.fi = zext i16 %.val68 to i32
  %i.fj = load i32, ptr @je_opt_lg_tcache_flush_large_div, align 4, !tbaa !20
  %i.fk = lshr i32 %i.fi, %i.fj
  call void @je_tcache_bin_flush_large(ptr noundef nonnull %i.e, ptr noundef nonnull %.0.i, ptr noundef nonnull %i.ez, i32 noundef %i.cx, i32 noundef %i.fk) #20
  %i.fl = load ptr, ptr %i.ez, align 8, !tbaa !108 ; 2 uses
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = load i16, ptr %i.fd, align 2, !tbaa !139
  %i.fo = trunc i64 %i.fm to i16
  %i.fp = icmp eq i16 %i.fn, %i.fo
  br i1 %i.fp, label %arena_dalloc.exit, label %bb.ac, !prof !21

bb.ac:                                            ; preds = %cache_bin_dalloc_easy.exit12.i
  %i.fq = getelementptr inbounds i8, ptr %i.fl, i64 -8 ; 2 uses
  store ptr %i.fq, ptr %i.ez, align 8, !tbaa !108
  store ptr %0, ptr %i.fq, align 8, !tbaa !109
  br label %arena_dalloc.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.aa, %emap_alloc_ctx_usize_get.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull %i.e, ptr noundef nonnull %i.cv, i64 noundef %i.cu)
  %i.fr = load ptr, ptr %3, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @je_large_dalloc(ptr noundef nonnull %i.e, ptr noundef %i.fr) #20
  br label %arena_dalloc.exit

arena_dalloc.exit:                                ; preds = %bb.z, %bb.y, %cache_bin_dalloc_easy.exit33.thread, %bb.x, %cache_bin_dalloc_easy.exit12.i.thread, %bb.ac, %cache_bin_dalloc_easy.exit12.i, %tsdn_rtree_ctx.exit, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store i8 0, ptr %2, align 8, !tbaa !125
  %i.fs = getelementptr inbounds nuw i8, ptr %i.e, i64 944 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.fs, ptr %i.ft, align 8, !tbaa !126
  %i.fu = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.fu, ptr %i.fv, align 8, !tbaa !127
  %i.fw = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.fw, ptr %i.fx, align 8, !tbaa !128
  %i.fy = getelementptr inbounds nuw i8, ptr %i.e, i64 952
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.fy, ptr %i.fz, align 8, !tbaa !129
  %i.ga = load i64, ptr %i.fs, align 8, !tbaa !41 ; 2 uses
  %i.gb = add i64 %i.ga, %.0.i20
  store i64 %i.gb, ptr %i.fs, align 8, !tbaa !41
  %i.gc = load i64, ptr %i.fw, align 8, !tbaa !41
  %i.gd = sub i64 %i.gc, %i.ga
  %i.ge = icmp ult i64 %.0.i20, %i.gd
  br i1 %i.ge, label %te_event_advance.exit, label %bb.ad, !prof !23

bb.ad:                                            ; preds = %arena_dalloc.exit
  call void @je_te_event_trigger(ptr noundef nonnull %i.e, ptr noundef nonnull %2) #20
  br label %te_event_advance.exit

te_event_advance.exit:                            ; preds = %arena_dalloc.exit, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.ae

bb.ae:                                            ; preds = %te_event_advance.exit53, %te_event_advance.exit, %bb.a
  ret void
}

declare void @je_hook_invoke_dalloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @free(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 536
  %i.c = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.d = lshr i64 %i.c, 30
  %i.e = and i64 %i.d, 15
  %i.f = and i64 %i.c, -1073741824
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.e ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !143
  %.not.i.i.not = icmp eq i64 %i.h, %i.f
  br i1 %.not.i.i.not, label %emap_alloc_ctx_try_lookup_fast.exit, label %emap_alloc_ctx_try_lookup_fast.exit.thread, !prof !23

emap_alloc_ctx_try_lookup_fast.exit:              ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !144
  %i.k = lshr i64 %i.c, 12
  %i.l = and i64 %i.k, 262143
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.l
  %i.n = load atomic ptr, ptr %i.m monotonic, align 8, !noalias !164
  %i.o = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %.critedge.i, label %emap_alloc_ctx_try_lookup_fast.exit.thread, !prof !165

.critedge.i:                                      ; preds = %emap_alloc_ctx_try_lookup_fast.exit
  %i.q = lshr i64 %i.o, 48                        ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !41
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 944 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !41
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 952
  %i.w = load i64, ptr %i.v, align 8, !tbaa !41
  %i.x = add i64 %i.u, %i.s                       ; 2 uses
  %.not26.i = icmp ult i64 %i.x, %i.w
  br i1 %.not26.i, label %bb.b, label %emap_alloc_ctx_try_lookup_fast.exit.thread, !prof !23

bb.b:                                             ; preds = %.critedge.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 968
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.q ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !108 ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 18
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !139
  %i.ae = trunc i64 %i.ab to i16
  %i.af = icmp eq i16 %i.ad, %i.ae
  br i1 %i.af, label %emap_alloc_ctx_try_lookup_fast.exit.thread, label %free_fastpath.exit, !prof !21

free_fastpath.exit:                               ; preds = %bb.b
  %i.ag = getelementptr inbounds i8, ptr %i.aa, i64 -8 ; 2 uses
  store ptr %i.ag, ptr %i.z, align 8, !tbaa !108
  store ptr %0, ptr %i.ag, align 8, !tbaa !109
  store i64 %i.x, ptr %i.t, align 8, !tbaa !41
  br label %je_free_impl.exit

emap_alloc_ctx_try_lookup_fast.exit.thread:       ; preds = %bb.a, %emap_alloc_ctx_try_lookup_fast.exit, %.critedge.i, %bb.b
  tail call void @je_free_default(ptr noundef %0)
  br label %je_free_impl.exit

je_free_impl.exit:                                ; preds = %free_fastpath.exit, %emap_alloc_ctx_try_lookup_fast.exit.thread
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_sized(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.b = icmp ugt i64 %1, 4096
  br i1 %i.b, label %bb.c, label %sz_size2index_usize_fastpath.exit.i, !prof !21

sz_size2index_usize_fastpath.exit.i:              ; preds = %bb.a
  %i.c = add nuw nsw i64 %1, 7
  %i.d = lshr i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !24    ; 2 uses
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 944 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 952
  %i.m = load i64, ptr %i.l, align 8, !tbaa !41
  %i.n = add i64 %i.k, %i.i                       ; 2 uses
  %.not26.i = icmp ult i64 %i.n, %i.m
  br i1 %.not26.i, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %sz_size2index_usize_fastpath.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 968
  %i.p = zext i8 %i.f to i64
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.p ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !108  ; 2 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 18
  %i.u = load i16, ptr %i.t, align 2, !tbaa !139
  %i.v = trunc i64 %i.s to i16
  %i.w = icmp eq i16 %i.u, %i.v
  br i1 %i.w, label %bb.c, label %free_fastpath.exit, !prof !21

free_fastpath.exit:                               ; preds = %bb.b
  %i.x = getelementptr inbounds i8, ptr %i.r, i64 -8 ; 2 uses
  store ptr %i.x, ptr %i.q, align 8, !tbaa !108
  store ptr %0, ptr %i.x, align 8, !tbaa !109
  store i64 %i.n, ptr %i.j, align 8, !tbaa !41
  br label %je_sdallocx_noflags.exit

bb.c:                                             ; preds = %bb.a, %sz_size2index_usize_fastpath.exit.i, %bb.b
  tail call void @je_sdallocx_default(ptr noundef %0, i64 noundef %1, i32 noundef 0)
  br label %je_sdallocx_noflags.exit

je_sdallocx_noflags.exit:                         ; preds = %free_fastpath.exit, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_aligned_sized(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i64 %1, 2147483647
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not5 = icmp eq i64 %1, 0
  br i1 %.not5, label %.split.i.i, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = lshr i64 %1, 32                          ; 2 uses
  %i.c = trunc nuw i64 %i.b to i32
  %cttz = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.c, i1 true)
  %.not = icmp eq i64 %i.b, 0
  %i.d = or disjoint i32 %cttz, 32
  %i.e = select i1 %.not, i32 31, i32 %i.d
  br label %.split.i.i

bb.d:                                             ; preds = %bb.b
  %i.f = trunc nuw nsw i64 %1 to i32
  %cttz4 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.f, i1 true) ; 2 uses
  %.not.i.i = icmp eq i32 %cttz4, 0
  br i1 %.not.i.i, label %bb.e, label %.split.i.i

.split.i.i:                                       ; preds = %bb.b, %bb.c, %bb.d
  %i.g = phi i32 [ %cttz4, %bb.d ], [ %i.e, %bb.c ], [ -1, %bb.b ]
  tail call void @je_sdallocx_default(ptr noundef %0, i64 noundef %2, i32 noundef %i.g)
  br label %sdallocx.exit

bb.e:                                             ; preds = %bb.d
  %i.h = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.i = icmp ugt i64 %2, 4096
  br i1 %i.i, label %.split5.i.i, label %sz_size2index_usize_fastpath.exit.i.i, !prof !21

sz_size2index_usize_fastpath.exit.i.i:            ; preds = %bb.e
  %i.j = add nuw nsw i64 %2, 7
  %i.k = lshr i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !24    ; 2 uses
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8, !tbaa !41
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 944 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !41
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 952
  %i.t = load i64, ptr %i.s, align 8, !tbaa !41
  %i.u = add i64 %i.r, %i.p                       ; 2 uses
  %.not26.i.i = icmp ult i64 %i.u, %i.t
  br i1 %.not26.i.i, label %bb.f, label %.split5.i.i, !prof !23

bb.f:                                             ; preds = %sz_size2index_usize_fastpath.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 968
  %i.w = zext i8 %i.m to i64
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.w ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !108  ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 18
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !139
  %i.ac = trunc i64 %i.z to i16
  %i.ad = icmp eq i16 %i.ab, %i.ac
  br i1 %i.ad, label %.split5.i.i, label %free_fastpath.exit.i, !prof !21

free_fastpath.exit.i:                             ; preds = %bb.f
  %i.ae = getelementptr inbounds i8, ptr %i.y, i64 -8 ; 2 uses
  store ptr %i.ae, ptr %i.x, align 8, !tbaa !108
  store ptr %0, ptr %i.ae, align 8, !tbaa !109
  store i64 %i.u, ptr %i.q, align 8, !tbaa !41
  br label %sdallocx.exit

.split5.i.i:                                      ; preds = %bb.f, %sz_size2index_usize_fastpath.exit.i.i, %bb.e
  tail call void @je_sdallocx_default(ptr noundef %0, i64 noundef %2, i32 noundef 0)
  br label %sdallocx.exit

sdallocx.exit:                                    ; preds = %.split.i.i, %free_fastpath.exit.i, %.split5.i.i
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @sdallocx(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %bb.b, label %.split.i

.split.i:                                         ; preds = %bb.a
  tail call void @je_sdallocx_default(ptr noundef %0, i64 noundef %1, i32 noundef %2)
  br label %je_sdallocx_impl.exit

bb.b:                                             ; preds = %bb.a
  %i.a = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.b = icmp ugt i64 %1, 4096
  br i1 %i.b, label %.split5.i, label %sz_size2index_usize_fastpath.exit.i, !prof !21

sz_size2index_usize_fastpath.exit.i:              ; preds = %bb.b
  %i.c = add nuw nsw i64 %1, 7
  %i.d = lshr i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !24    ; 2 uses
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 944 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 952
  %i.m = load i64, ptr %i.l, align 8, !tbaa !41
  %i.n = add i64 %i.k, %i.i                       ; 2 uses
  %.not26.i = icmp ult i64 %i.n, %i.m
  br i1 %.not26.i, label %bb.c, label %.split5.i, !prof !23

bb.c:                                             ; preds = %sz_size2index_usize_fastpath.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 968
  %i.p = zext i8 %i.f to i64
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.p ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !108  ; 2 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 18
  %i.u = load i16, ptr %i.t, align 2, !tbaa !139
  %i.v = trunc i64 %i.s to i16
  %i.w = icmp eq i16 %i.u, %i.v
  br i1 %i.w, label %.split5.i, label %free_fastpath.exit, !prof !21

free_fastpath.exit:                               ; preds = %bb.c
  %i.x = getelementptr inbounds i8, ptr %i.r, i64 -8 ; 2 uses
  store ptr %i.x, ptr %i.q, align 8, !tbaa !108
  store ptr %0, ptr %i.x, align 8, !tbaa !109
  store i64 %i.n, ptr %i.j, align 8, !tbaa !41
  br label %je_sdallocx_impl.exit

.split5.i:                                        ; preds = %bb.b, %sz_size2index_usize_fastpath.exit.i, %bb.c
  tail call void @je_sdallocx_default(ptr noundef %0, i64 noundef %1, i32 noundef 0)
  br label %je_sdallocx_impl.exit

je_sdallocx_impl.exit:                            ; preds = %free_fastpath.exit, %.split.i, %.split5.i
  ret void
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @memalign(i64 noundef %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %2 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %3 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %i.a = alloca [3 x i64], align 16               ; 6 uses
  %i.b = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 920
  %i.d = load i8, ptr %i.c, align 8, !tbaa !24
  %.not.i86 = icmp eq i8 %i.d, 0
  br i1 %.not.i86, label %compute_size_with_overflow.exit35, label %tsd_fetch_impl.exit, !prof !23

tsd_fetch_impl.exit:                              ; preds = %bb.a
  %i.e = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.b, i1 noundef zeroext false) #20 ; 12 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 920
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !24
  %i.f = icmp eq i8 %.pre, 0
  br i1 %i.f, label %compute_size_with_overflow.exit35, label %bb.q, !prof !100

compute_size_with_overflow.exit35:                ; preds = %bb.a, %tsd_fetch_impl.exit
  %.0.i87279 = phi ptr [ %i.e, %tsd_fetch_impl.exit ], [ %i.b, %bb.a ] ; 7 uses
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %0)
  %or.cond47.i.not = icmp eq i64 %i.g, 1
  br i1 %or.cond47.i.not, label %bb.b, label %imalloc.exit, !prof !136

bb.b:                                             ; preds = %compute_size_with_overflow.exit35
  %i.h = icmp eq i64 %1, 0
  br i1 %i.h, label %bb.c, label %bb.d, !prof !132

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.017.i.i = phi i64 [ 1, %bb.c ], [ %1, %bb.b ] ; 7 uses
  %i.i = icmp ult i64 %.017.i.i, 14337
  %i.j = icmp ult i64 %0, 4097
  %or.cond.i101 = and i1 %i.j, %i.i
  br i1 %or.cond.i101, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.k = add nsw i64 %0, -1
  %i.l = add nuw nsw i64 %i.k, %.017.i.i
  %i.m = sub nsw i64 0, %0
  %i.n = and i64 %i.l, %i.m                       ; 5 uses
  %i.o = icmp samesign ult i64 %i.n, 4097
  br i1 %i.o, label %bb.f, label %bb.g, !prof !23

bb.f:                                             ; preds = %bb.e
  %i.p = add nuw nsw i64 %i.n, 7
  %i.q = lshr i64 %i.p, 3
  %i.r = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !24
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !41
  br label %sz_s2u.exit25.i113

bb.g:                                             ; preds = %bb.e
  %i.w = icmp samesign ugt i64 %i.n, 14336
  %i.x = load i8, ptr @je_opt_disable_large_size_classes, align 1, !range !38
  %i.y = trunc nuw i8 %i.x to i1
  %or.cond = select i1 %i.w, i1 %i.y, i1 false
  br i1 %or.cond, label %.thread231, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = shl nuw nsw i64 %i.n, 1
  %i.aa = add nsw i64 %i.z, -1
  %i.ab = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.aa, i1 true) ; 2 uses
  %notmask.i29.i110 = ashr exact i64 -1152921504606846976, %i.ab
  %i.ac = lshr i64 1152921504606846975, %i.ab
  %i.ad = add nuw nsw i64 %i.n, %i.ac
  %i.ae = and i64 %i.ad, %notmask.i29.i110
  br label %sz_s2u.exit25.i113

sz_s2u.exit25.i113:                               ; preds = %bb.h, %bb.f
  %.0.i24.i114 = phi i64 [ %i.v, %bb.f ], [ %i.ae, %bb.h ] ; 2 uses
  %i.af = icmp ult i64 %.0.i24.i114, 16384
  br i1 %i.af, label %aligned_usize_get.exit.i, label %.thread231

bb.i:                                             ; preds = %bb.d
  %i.ag = icmp ugt i64 %0, 8070450532247928832
end_hunk_0
begin_hunk_1_@mallocx:bb.a
sz_s2u.exit.i48:                                  ; preds = %bb.df, %bb.dh, %bb.di, %bb.de
  %.0.i32.i = phi i64 [ %i.nn, %bb.de ], [ %i.nx, %bb.dh ], [ %i.nz, %bb.di ], [ 0, %bb.df ]
  %i.oa = tail call ptr @je_large_malloc(ptr noundef nonnull %i.s, ptr noundef nonnull %i.ne, i64 noundef %.0.i32.i, i1 noundef zeroext %.0.i.i18) #20 ; 2 uses
  %i.ob = icmp eq ptr %i.oa, null
  br i1 %i.ob, label %aligned_usize_get.exit.i22.thread283, label %bb.dl

bb.dj:                                            ; preds = %bb.da, %bb.dc
  br i1 %.0.i.i18, label %bb.dk, label %bb.dl, !prof !21

bb.dk:                                            ; preds = %bb.dj
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.ms
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.mu, i8 0, i64 %i.od, i1 false)
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj, %sz_s2u.exit.i48
  %.021.i.i = phi ptr [ %i.oa, %sz_s2u.exit.i48 ], [ %i.mu, %bb.dk ], [ %i.mu, %bb.dj ]
  %i.oe = getelementptr inbounds nuw i8, ptr %i.mt, i64 8 ; 2 uses
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !112
  %i.og = add i64 %i.of, 1
  store i64 %i.og, ptr %i.oe, align 8, !tbaa !112
  br label %imalloc_no_sample.exit

.critedge.i.i:                                    ; preds = %bb.cy, %bb.cx, %iallocztm_explicit_slab.exit.i
  %i.oh = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %i.s, ptr noundef %.1233.ph, i64 noundef %0, i32 noundef %.0230280, i1 noundef zeroext %.0.i.i18, i1 noundef zeroext %i.kx) #20
  br label %imalloc_no_sample.exit

imalloc_no_sample.exit:                           ; preds = %.critedge.i.i, %.thread310, %bb.cw, %bb.dl, %ipallocztm_explicit_slab.exit
  %.0.i45 = phi ptr [ %.021.i.i, %bb.dl ], [ %i.lo, %ipallocztm_explicit_slab.exit ], [ %i.oh, %.critedge.i.i ], [ %.0.i24.i.ph, %.thread310 ], [ %.132.i.i, %bb.cw ] ; 4 uses
  %i.oi = icmp eq ptr %.0.i45, null
  br i1 %i.oi, label %aligned_usize_get.exit.i22.thread283, label %bb.dm, !prof !133

bb.dm:                                            ; preds = %imalloc_no_sample.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i8 1, ptr %3, align 8, !tbaa !125
  %i.oj = getelementptr inbounds nuw i8, ptr %i.s, i64 928 ; 3 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.oj, ptr %i.ok, align 8, !tbaa !126
  %i.ol = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.om = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ol, ptr %i.om, align 8, !tbaa !127
  %i.on = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.on, ptr %i.oo, align 8, !tbaa !128
  %i.op = getelementptr inbounds nuw i8, ptr %i.s, i64 936
  %i.oq = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.op, ptr %i.oq, align 8, !tbaa !129
  %i.or = load i64, ptr %i.oj, align 8, !tbaa !41 ; 2 uses
  %i.os = add i64 %i.or, %.0229281
  store i64 %i.os, ptr %i.oj, align 8, !tbaa !41
  %i.ot = load i64, ptr %i.on, align 8, !tbaa !41
  %i.ou = sub i64 %i.ot, %i.or
  %i.ov = icmp ult i64 %.0229281, %i.ou
  br i1 %i.ov, label %bb.do, label %bb.dn, !prof !23

bb.dn:                                            ; preds = %bb.dm
  call void @je_te_event_trigger(ptr noundef nonnull %i.s, ptr noundef nonnull %3) #20
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.not.i26 = xor i1 %.0.i.i18, true
  %i.ow = load i8, ptr @je_opt_junk_alloc, align 1, !range !38
  %i.ox = trunc nuw i8 %i.ow to i1
  %or.cond45.i27 = select i1 %.not.i26, i1 %i.ox, i1 false, !prof !132
  br i1 %or.cond45.i27, label %bb.dp, label %aligned_usize_get.exit.i22.thread283, !prof !132

bb.dp:                                            ; preds = %bb.do
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0.i45, i8 -91, i64 %.0229281, i1 false)
  br label %aligned_usize_get.exit.i22.thread283

aligned_usize_get.exit.i22.thread283:             ; preds = %sz_s2u.exit.i48, %cache_bin_alloc_impl.exit31.i, %bb.cu, %bb.cm, %sz_s2u_compute.exit28.i, %bb.cb, %bb.bn, %sz_size2index.exit.i28, %aligned_usize_get.exit.i22, %imalloc_no_sample.exit, %bb.do, %bb.dp
  %.0236.ph = phi ptr [ null, %sz_s2u.exit.i48 ], [ %.0.i45, %bb.dp ], [ null, %bb.bn ], [ null, %sz_s2u_compute.exit28.i ], [ null, %aligned_usize_get.exit.i22 ], [ null, %imalloc_no_sample.exit ], [ %.0.i45, %bb.do ], [ null, %sz_size2index.exit.i28 ], [ null, %bb.cb ], [ null, %bb.cm ], [ null, %bb.cu ], [ null, %cache_bin_alloc_impl.exit31.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 %0, ptr %i.c, align 16, !tbaa !41
  %i.oy = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.oz = sext i32 %1 to i64
  store i64 %i.oz, ptr %i.oy, align 8, !tbaa !41
  %.ptr = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.ptr, align 16, !tbaa !41
  %i.pa = ptrtoint ptr %.0236.ph to i64
  call void @je_hook_invoke_alloc(i32 noundef 7, ptr noundef %.0236.ph, i64 noundef %i.pa, ptr noundef nonnull %i.c) #20
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
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @do_rallocx(ptr noundef %0, i64 noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %5 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %6 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %7 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %8 = alloca %struct.rtree_ctx_s, align 8        ; 5 uses
  %9 = alloca %struct.rtree_contents_s, align 8   ; 6 uses
  %10 = alloca %struct.hook_ralloc_args_s, align 8 ; 9 uses
  %i.a = zext i1 %3 to i8
  %i.b = and i32 %2, 63
  %i.c = zext nneg i32 %i.b to i64
  %i.d = shl nuw i64 1, %i.c                      ; 3 uses
  %i.e = and i64 %i.d, -2                         ; 10 uses
  %i.f = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 920
  %i.h = load i8, ptr %i.g, align 8, !tbaa !24
  %.not.i53 = icmp eq i8 %i.h, 0
  br i1 %.not.i53, label %tsd_fetch_impl.exit, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.f, i1 noundef zeroext false) #20
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %bb.a, %bb.b
  %.0.i54 = phi ptr [ %i.i, %bb.b ], [ %i.f, %bb.a ] ; 26 uses
  %i.j = and i32 %2, 64
  %i.k = icmp ne i32 %i.j, 0
  %i.l = load i8, ptr @je_opt_zero, align 1, !range !38
  %i.m = trunc nuw i8 %i.l to i1
  %.0.i45 = or i1 %i.k, %i.m                      ; 3 uses
  %.not.i = icmp ult i32 %2, 1048576
  br i1 %.not.i, label %mallocx_arena_get.exit.thread, label %mallocx_arena_get.exit, !prof !23

mallocx_arena_get.exit:                           ; preds = %tsd_fetch_impl.exit
  %i.n = lshr i32 %2, 20
  %i.o = add nsw i32 %i.n, -1                     ; 3 uses
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.p
  %i.r = load atomic ptr, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %arena_get.exit, label %mallocx_arena_get.exit.thread, !prof !21

arena_get.exit:                                   ; preds = %mallocx_arena_get.exit
  %i.t = tail call ptr @je_arena_init(ptr noundef %.0.i54, i32 noundef %i.o, ptr noundef nonnull @je_arena_config_default), !inline_history !0 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.c, label %mallocx_arena_get.exit.thread, !prof !22

bb.c:                                             ; preds = %arena_get.exit
  %i.v = load i32, ptr @je_narenas_auto, align 4, !tbaa !20
  %.not.i50 = icmp ult i32 %i.o, %i.v
  br i1 %.not.i50, label %mallocx_arena_get.exit.thread, label %arena_get_from_ind.exit

mallocx_arena_get.exit.thread:                    ; preds = %bb.c, %mallocx_arena_get.exit, %tsd_fetch_impl.exit, %arena_get.exit
  %.1.ph = phi ptr [ %i.r, %mallocx_arena_get.exit ], [ null, %tsd_fetch_impl.exit ], [ null, %bb.c ], [ %i.t, %arena_get.exit ] ; 2 uses
  %i.w = and i32 %2, 1048320                      ; 2 uses
  switch i32 %i.w, label %mallocx_tcache_get.exit [
    i32 0, label %mallocx_tcache_get.exit.thread
    i32 256, label %tcache_get_from_ind.exit
  ], !prof !145

mallocx_tcache_get.exit:                          ; preds = %mallocx_arena_get.exit.thread
  %i.x = lshr exact i32 %i.w, 8
  %i.y = add nsw i32 %i.x, -2                     ; 3 uses
  switch i32 %i.y, label %bb.d [
    i32 -2, label %mallocx_tcache_get.exit.thread
    i32 -1, label %tcache_get_from_ind.exit
  ]

mallocx_tcache_get.exit.thread:                   ; preds = %mallocx_arena_get.exit.thread, %mallocx_tcache_get.exit
  %i.z = load i8, ptr %.0.i54, align 1, !tbaa !40, !range !38, !noundef !39
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i54, i64 960
  %spec.select = select i1 %i.aa, ptr %i.ab, ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  br label %bb.h

bb.d:                                             ; preds = %mallocx_tcache_get.exit
  %i.ac = load ptr, ptr @je_tcaches, align 8, !tbaa !147
  %i.ad = zext nneg i32 %i.y to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ad ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !24 ; 2 uses
  %magicptr.i = ptrtoint ptr %i.af to i64
  switch i64 %magicptr.i, label %tcache_get_from_ind.exit [
    i64 0, label %bb.e
    i64 1, label %bb.f
  ], !prof !148

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.92, i32 noundef range(i32 0, -2) %i.y) #20
  tail call void @abort() #21
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ag = tail call ptr @je_tcache_create_explicit(ptr noundef %.0.i54) #20 ; 2 uses
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !24
  br label %tcache_get_from_ind.exit

tcache_get_from_ind.exit:                         ; preds = %bb.f, %bb.d, %mallocx_arena_get.exit.thread, %mallocx_tcache_get.exit
  %.0.i = phi ptr [ null, %mallocx_tcache_get.exit ], [ null, %mallocx_arena_get.exit.thread ], [ %i.af, %bb.d ], [ %i.ag, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.ah = icmp eq ptr %.0.i54, null
  br i1 %i.ah, label %bb.g, label %bb.h, !prof !166

bb.g:                                             ; preds = %tcache_get_from_ind.exit
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %8) #20
  br label %tsdn_rtree_ctx.exit86

bb.h:                                             ; preds = %mallocx_tcache_get.exit.thread, %tcache_get_from_ind.exit
  %.0.i111 = phi ptr [ %spec.select, %mallocx_tcache_get.exit.thread ], [ %.0.i, %tcache_get_from_ind.exit ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i54, i64 536
  br label %tsdn_rtree_ctx.exit86

tsdn_rtree_ctx.exit86:                            ; preds = %bb.g, %bb.h
  %i.aj = phi i1 [ true, %bb.g ], [ false, %bb.h ]
  %.0.i110 = phi ptr [ %.0.i, %bb.g ], [ %.0.i111, %bb.h ] ; 8 uses
  %.0.i85 = phi ptr [ %8, %bb.g ], [ %i.ai, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.ak = ptrtoint ptr %0 to i64                  ; 4 uses
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef %.0.i54, ptr noundef nonnull %.0.i85, i64 noundef %i.ak)
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !36 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 17
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !37, !range !38, !noundef !39
  %i.ap = icmp eq i32 %i.am, 232
  %i.aq = load ptr, ptr %9, align 8               ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  %or.cond.i = select i1 %i.ap, i1 true, i1 %i.ar
  br i1 %or.cond.i, label %emap_alloc_ctx_lookup.exit, label %bb.i

bb.i:                                             ; preds = %tsdn_rtree_ctx.exit86
  %.val.i = load i64, ptr %i.aq, align 8, !tbaa !35
  %i.as = trunc i64 %.val.i to i32
  %i.at = lshr i32 %i.as, 20
  %i.au = and i32 %i.at, 255                      ; 2 uses
  %i.av = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !40, !range !38, !noundef !39
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = icmp samesign ugt i32 %i.au, 35
  %or.cond.not.i = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %or.cond.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = zext nneg i32 %i.au to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !41
  br label %emap_alloc_ctx_lookup.exit

bb.k:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !24
  %i.bd = and i64 %i.bc, -4096
  %i.be = load i64, ptr @je_sz_large_pad, align 8, !tbaa !41
  %i.bf = sub i64 %i.bd, %i.be
  br label %emap_alloc_ctx_lookup.exit

emap_alloc_ctx_lookup.exit:                       ; preds = %bb.k, %bb.j, %tsdn_rtree_ctx.exit86
  %i.bg = phi i64 [ 0, %tsdn_rtree_ctx.exit86 ], [ %i.ba, %bb.j ], [ %i.bf, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.bh = trunc nuw i8 %i.ao to i1
  br i1 %i.bh, label %bb.l, label %emap_alloc_ctx_usize_get.exit

bb.l:                                             ; preds = %emap_alloc_ctx_lookup.exit
  %i.bi = zext i32 %i.am to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !41
  br label %emap_alloc_ctx_usize_get.exit

emap_alloc_ctx_usize_get.exit:                    ; preds = %emap_alloc_ctx_lookup.exit, %bb.l
  %.0.i46 = phi i64 [ %i.bk, %bb.l ], [ %i.bg, %emap_alloc_ctx_lookup.exit ] ; 13 uses
  %i.bl = icmp eq i64 %i.e, 0                     ; 2 uses
  br i1 %i.bl, label %bb.m, label %bb.s

bb.m:                                             ; preds = %emap_alloc_ctx_usize_get.exit
  %i.bm = icmp ult i64 %1, 4097
  br i1 %i.bm, label %bb.n, label %bb.o, !prof !23

bb.n:                                             ; preds = %bb.m
  %i.bn = add nuw nsw i64 %1, 7
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !24
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !41
  br label %aligned_usize_get.exit

bb.o:                                             ; preds = %bb.m
  %i.bu = icmp ugt i64 %1, 8070450532247928832
  br i1 %i.bu, label %arena_get_from_ind.exit, label %bb.p, !prof !21

bb.p:                                             ; preds = %bb.o
  %i.bv = icmp samesign ugt i64 %1, 14336
  %i.bw = load i8, ptr @je_opt_disable_large_size_classes, align 1, !range !38
  %i.bx = trunc nuw i8 %i.bw to i1
  %or.cond144 = select i1 %i.bv, i1 %i.bx, i1 false
  br i1 %or.cond144, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = shl nuw i64 %1, 1
  %i.bz = add i64 %i.by, -1
  %i.ca = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.bz, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.ca
  %i.cb = lshr i64 1152921504606846975, %i.ca
  %i.cc = add nuw nsw i64 %1, %i.cb
  %i.cd = and i64 %i.cc, %notmask.i
  br label %aligned_usize_get.exit

bb.r:                                             ; preds = %bb.p
  %i.ce = add nuw nsw i64 %1, 4095
  %i.cf = and i64 %i.ce, 9223372036854771712
  br label %aligned_usize_get.exit

bb.s:                                             ; preds = %emap_alloc_ctx_usize_get.exit
  %i.cg = icmp ult i64 %1, 14337
  %i.ch = icmp ult i64 %i.e, 4097
  %or.cond.i64 = and i1 %i.cg, %i.ch
  br i1 %or.cond.i64, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.ci = add nsw i64 %i.e, -1
  %i.cj = add nuw nsw i64 %i.ci, %1
  %i.ck = sub nsw i64 0, %i.e
  %i.cl = and i64 %i.cj, %i.ck                    ; 5 uses
  %i.cm = icmp samesign ult i64 %i.cl, 4097
  br i1 %i.cm, label %bb.u, label %bb.v, !prof !23

bb.u:                                             ; preds = %bb.t
  %i.cn = add nuw nsw i64 %i.cl, 6
  %i.co = lshr i64 %i.cn, 3
  %i.cp = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !24
  %i.cr = zext i8 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !41
  br label %sz_s2u.exit25.i75

bb.v:                                             ; preds = %bb.t
  %i.cu = icmp samesign ugt i64 %i.cl, 14336
  %i.cv = load i8, ptr @je_opt_disable_large_size_classes, align 1, !range !38
  %i.cw = trunc nuw i8 %i.cv to i1
  %or.cond146 = select i1 %i.cu, i1 %i.cw, i1 false
  br i1 %or.cond146, label %.thread113, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cx = shl nuw nsw i64 %i.cl, 1
  %i.cy = add nsw i64 %i.cx, -1
  %i.cz = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.cy, i1 true) ; 2 uses
  %notmask.i29.i72 = ashr exact i64 -1152921504606846976, %i.cz
  %i.da = lshr i64 1152921504606846975, %i.cz
  %i.db = add nuw nsw i64 %i.cl, %i.da
  %i.dc = and i64 %i.db, %notmask.i29.i72
  br label %sz_s2u.exit25.i75

sz_s2u.exit25.i75:                                ; preds = %bb.w, %bb.u
  %.0.i24.i76 = phi i64 [ %i.ct, %bb.u ], [ %i.dc, %bb.w ] ; 2 uses
  %i.dd = icmp ult i64 %.0.i24.i76, 16384
  br i1 %i.dd, label %aligned_usize_get.exit, label %.thread113

bb.x:                                             ; preds = %bb.s
  %i.de = icmp ugt i64 %i.e, 8070450532247928832
  br i1 %i.de, label %arena_get_from_ind.exit, label %bb.y, !prof !137

bb.y:                                             ; preds = %bb.x
  %i.df = icmp ult i64 %1, 16385
  br i1 %i.df, label %.thread113, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dg = icmp ugt i64 %1, 8070450532247928832
  br i1 %i.dg, label %sz_s2u_compute.exit28.i66, label %bb.aa, !prof !21

bb.aa:                                            ; preds = %bb.z
  %i.dh = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !40, !range !38, !noundef !39
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dj = shl nuw i64 %1, 1
  %i.dk = add i64 %i.dj, -1
  %i.dl = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.dk, i1 true) ; 2 uses
  %notmask.i.i65 = ashr exact i64 -1152921504606846976, %i.dl
  %i.dm = lshr i64 1152921504606846975, %i.dl
  %i.dn = add nuw nsw i64 %1, %i.dm
  %i.do = and i64 %i.dn, %notmask.i.i65
  br label %sz_s2u_compute.exit28.i66

bb.ac:                                            ; preds = %bb.aa
  %i.dp = add nuw nsw i64 %1, 4095
  %i.dq = and i64 %i.dp, 9223372036854771712
  br label %sz_s2u_compute.exit28.i66

sz_s2u_compute.exit28.i66:                        ; preds = %bb.ac, %bb.ab, %bb.z
  %.0.i27.i67 = phi i64 [ %i.do, %bb.ab ], [ %i.dq, %bb.ac ], [ 0, %bb.z ] ; 2 uses
  %i.dr = icmp ult i64 %.0.i27.i67, %1
  br i1 %i.dr, label %arena_get_from_ind.exit, label %.thread113

.thread113:                                       ; preds = %bb.v, %sz_s2u.exit25.i75, %sz_s2u_compute.exit28.i66, %bb.y
  %.0.i69 = phi i64 [ %.0.i27.i67, %sz_s2u_compute.exit28.i66 ], [ 16384, %bb.y ], [ 16384, %bb.v ], [ 16384, %sz_s2u.exit25.i75 ] ; 3 uses
  %i.ds = load i64, ptr @je_sz_large_pad, align 8, !tbaa !41
  %i.dt = add nuw i64 %i.d, 4094
  %i.du = and i64 %i.dt, 9223372036854771712
  %i.dv = add nsw i64 %i.du, -4096
  %i.dw = add i64 %i.dv, %.0.i69
  %i.dx = add i64 %i.dw, %i.ds
  %i.dy = icmp ult i64 %i.dx, %.0.i69
  %..0.i70 = select i1 %i.dy, i64 0, i64 %.0.i69
  br label %aligned_usize_get.exit

aligned_usize_get.exit:                           ; preds = %.thread113, %sz_s2u.exit25.i75, %bb.n, %bb.q, %bb.r
  %storemerge.i = phi i64 [ %.0.i24.i76, %sz_s2u.exit25.i75 ], [ %i.bt, %bb.n ], [ %i.cd, %bb.q ], [ %i.cf, %bb.r ], [ %..0.i70, %.thread113 ] ; 6 uses
  %i.dz = add i64 %storemerge.i, -8070450532247928833
  %spec.select.i = icmp ult i64 %i.dz, -8070450532247928832
  br i1 %spec.select.i, label %arena_get_from_ind.exit, label %tsdn_witness_tsdp_get.exit.i

tsdn_witness_tsdp_get.exit.i:                     ; preds = %aligned_usize_get.exit
  store i8 %i.a, ptr %10, align 8, !tbaa !168
  %i.ea = getelementptr inbounds nuw i8, ptr %10, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ea, i8 0, i64 7, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i64 %i.ak, ptr %i.eb, align 8, !tbaa !41
  %i.ec = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %1, ptr %i.ec, align 8, !tbaa !41
  %i.ed = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ee = sext i32 %2 to i64
  store i64 %i.ee, ptr %i.ed, align 8, !tbaa !41
  %i.ef = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 0, ptr %i.ef, align 8, !tbaa !41
  %i.eg = icmp samesign ult i64 %storemerge.i, 14337 ; 2 uses
  br i1 %i.bl, label %iralloct_explicit_slab.exit, label %bb.ad

bb.ad:                                            ; preds = %tsdn_witness_tsdp_get.exit.i
  %i.eh = add nsw i64 %i.e, -1                    ; 2 uses
  %i.ei = and i64 %i.eh, %i.ak
  %.not25.i = icmp eq i64 %i.ei, 0
  br i1 %.not25.i, label %iralloct_explicit_slab.exit, label %tsdn_witness_tsdp_get.exit.i58

tsdn_witness_tsdp_get.exit.i58:                   ; preds = %bb.ad
  %i.ej = icmp samesign ult i64 %1, 14337
  %i.ek = icmp samesign ult i64 %i.e, 4097
  %or.cond.i61 = and i1 %i.ej, %i.ek
  br i1 %or.cond.i61, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %tsdn_witness_tsdp_get.exit.i58
  %i.el = add nuw nsw i64 %i.eh, %1
  %i.em = sub nsw i64 0, %i.e
  %i.en = and i64 %i.el, %i.em                    ; 5 uses
  %i.eo = icmp samesign ult i64 %i.en, 4097
  br i1 %i.eo, label %bb.af, label %bb.ag, !prof !23

bb.af:                                            ; preds = %bb.ae
  %i.ep = add nuw nsw i64 %i.en, 6
  %i.eq = lshr i64 %i.ep, 3
  %i.er = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !24
  %i.et = zext i8 %i.es to i64
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.et
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !41
  br label %sz_s2u.exit25.i

bb.ag:                                            ; preds = %bb.ae
  %i.ew = icmp samesign ugt i64 %i.en, 14336
  %i.ex = load i8, ptr @je_opt_disable_large_size_classes, align 1, !range !38
  %i.ey = trunc nuw i8 %i.ex to i1
  %or.cond148 = select i1 %i.ew, i1 %i.ey, i1 false
  br i1 %or.cond148, label %.thread118, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ez = shl nuw nsw i64 %i.en, 1
  %i.fa = add nsw i64 %i.ez, -1
  %i.fb = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.fa, i1 true) ; 2 uses
  %notmask.i29.i = ashr exact i64 -1152921504606846976, %i.fb
  %i.fc = lshr i64 1152921504606846975, %i.fb
  %i.fd = add nuw nsw i64 %i.en, %i.fc
  %i.fe = and i64 %i.fd, %notmask.i29.i
  br label %sz_s2u.exit25.i

sz_s2u.exit25.i:                                  ; preds = %bb.ah, %bb.af
  %.0.i24.i = phi i64 [ %i.ev, %bb.af ], [ %i.fe, %bb.ah ] ; 2 uses
  %i.ff = icmp ult i64 %.0.i24.i, 16384
  br i1 %i.ff, label %sz_sa2u.exit, label %.thread118

bb.ai:                                            ; preds = %tsdn_witness_tsdp_get.exit.i58
  %i.fg = icmp samesign ult i64 %1, 16385
  br i1 %i.fg, label %.thread118, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fh = icmp samesign ugt i64 %1, 8070450532247928832
  br i1 %i.fh, label %sz_s2u_compute.exit28.i, label %bb.ak, !prof !21

bb.ak:                                            ; preds = %bb.aj
  %i.fi = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !40, !range !38, !noundef !39
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fk = shl nuw i64 %1, 1
  %i.fl = add i64 %i.fk, -1
  %i.fm = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.fl, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.fm
  %i.fn = lshr i64 1152921504606846975, %i.fm
  %i.fo = add nuw nsw i64 %1, %i.fn
  %i.fp = and i64 %i.fo, %notmask.i.i
  br label %sz_s2u_compute.exit28.i

bb.am:                                            ; preds = %bb.ak
  %i.fq = add nuw nsw i64 %1, 4095
  %i.fr = and i64 %i.fq, 9223372036854771712
  br label %sz_s2u_compute.exit28.i

sz_s2u_compute.exit28.i:                          ; preds = %bb.am, %bb.al, %bb.aj
  %.0.i27.i = phi i64 [ %i.fp, %bb.al ], [ %i.fr, %bb.am ], [ 0, %bb.aj ] ; 2 uses
  %i.fs = icmp samesign ult i64 %.0.i27.i, %1
  br i1 %i.fs, label %arena_get_from_ind.exit, label %.thread118

.thread118:                                       ; preds = %bb.ag, %sz_s2u.exit25.i, %sz_s2u_compute.exit28.i, %bb.ai
  %.0.i63 = phi i64 [ %.0.i27.i, %sz_s2u_compute.exit28.i ], [ 16384, %bb.ai ], [ 16384, %sz_s2u.exit25.i ], [ 16384, %bb.ag ] ; 3 uses
  %i.ft = load i64, ptr @je_sz_large_pad, align 8, !tbaa !41
  %i.fu = add nuw i64 %i.d, 4094
  %i.fv = and i64 %i.fu, 9223372036854771712
  %i.fw = add nsw i64 %i.fv, -4096
  %i.fx = add i64 %i.fw, %.0.i63
  %i.fy = add i64 %i.fx, %i.ft
  %i.fz = icmp ult i64 %i.fy, %.0.i63
  %..0.i = select i1 %i.fz, i64 0, i64 %.0.i63
  br label %sz_sa2u.exit

sz_sa2u.exit:                                     ; preds = %sz_s2u.exit25.i, %.thread118
  %.018.i = phi i64 [ %..0.i, %.thread118 ], [ %.0.i24.i, %sz_s2u.exit25.i ] ; 2 uses
  %i.ga = add nsw i64 %.018.i, -8070450532247928833
  %i.gb = icmp ult i64 %i.ga, -8070450532247928832
  br i1 %i.gb, label %arena_get_from_ind.exit, label %ipallocztm_explicit_slab.exit.i, !prof !100

ipallocztm_explicit_slab.exit.i:                  ; preds = %sz_sa2u.exit
  %i.gc = call ptr @je_arena_palloc(ptr noundef %.0.i54, ptr noundef %.1.ph, i64 noundef %.018.i, i64 noundef range(i64 0, -9223372036854775807) %i.e, i1 noundef zeroext %.0.i45, i1 noundef zeroext %i.eg, ptr noundef %.0.i110) #20 ; 13 uses
  %i.gd = icmp eq ptr %i.gc, null
  br i1 %i.gd, label %arena_get_from_ind.exit, label %isdalloct.exit

isdalloct.exit:                                   ; preds = %ipallocztm_explicit_slab.exit.i
  %i.ge = call i64 @llvm.umin.i64(i64 %1, i64 %.0.i46)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gc, ptr align 1 %0, i64 %i.ge, i1 false)
  %i.gf = load i8, ptr %10, align 8, !tbaa !168, !range !38, !noundef !39
  %i.gg = trunc nuw i8 %i.gf to i1
  %i.gh = select i1 %i.gg, i32 8, i32 9
  %i.gi = ptrtoint ptr %i.gc to i64
  call void @je_hook_invoke_alloc(i32 noundef %i.gh, ptr noundef nonnull %i.gc, i64 noundef %i.gi, ptr noundef nonnull %i.eb) #20
  %i.gj = load i8, ptr %10, align 8, !tbaa !168, !range !38, !noundef !39
  %i.gk = trunc nuw i8 %i.gj to i1
  %i.gl = select i1 %i.gk, i32 3, i32 4
  call void @je_hook_invoke_dalloc(i32 noundef %i.gl, ptr noundef %0, ptr noundef nonnull %i.eb) #20
  %i.gm = icmp eq ptr %.0.i110, null
  br i1 %i.gm, label %bb.an, label %bb.ao, !prof !21

bb.an:                                            ; preds = %isdalloct.exit
  call fastcc void @arena_sdalloc_no_tcache(ptr noundef %.0.i54, ptr noundef %0, i64 noundef %.0.i46)
  br label %iralloct_explicit_slab.exit.thread

bb.ao:                                            ; preds = %isdalloct.exit
  %i.gn = icmp ult i64 %.0.i46, 4097
  br i1 %i.gn, label %sz_size2index.exit.i, label %bb.ap, !prof !23

bb.ap:                                            ; preds = %bb.ao
  %i.go = icmp ugt i64 %.0.i46, 8070450532247928832
  br i1 %i.go, label %sz_s2u.exit.i, label %sz_size2index.exit.i.thread127, !prof !21

sz_size2index.exit.i:                             ; preds = %bb.ao
  %i.gp = add nuw nsw i64 %.0.i46, 7
  %i.gq = lshr i64 %i.gp, 3
  %i.gr = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !24  ; 2 uses
  %i.gt = zext i8 %i.gs to i32                    ; 2 uses
  %i.gu = icmp ult i8 %i.gs, 36
  br i1 %i.gu, label %bb.aq, label %sz_s2u.exit.i, !prof !149

sz_size2index.exit.i.thread127:                   ; preds = %bb.ap
  %i.gv = shl nuw i64 %.0.i46, 1
  %i.gw = add i64 %i.gv, -1
  %i.gx = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.gw, i1 true) ; 3 uses
  %i.gy = trunc nuw nsw i64 %i.gx to i32
  %i.gz = shl nuw nsw i32 %i.gy, 2
  %i.ha = sub nuw nsw i64 60, %i.gx
  %i.hb = ashr exact i64 -1152921504606846976, %i.gx
  %i.hc = add nsw i64 %.0.i46, -1
  %i.hd = and i64 %i.hb, %i.hc
  %i.he = lshr i64 %i.hd, %i.ha
  %i.hf = trunc i64 %i.he to i32
  %i.hg = and i32 %i.hf, 3
  %reass.sub.i = sub nsw i32 %i.hg, %i.gz         ; 2 uses
  %i.hh = add nsw i32 %reass.sub.i, 229           ; 2 uses
  %i.hi = icmp slt i32 %reass.sub.i, -193
  br i1 %i.hi, label %bb.aq, label %sz_s2u.exit.i, !prof !149

bb.aq:                                            ; preds = %sz_size2index.exit.i.thread127, %sz_size2index.exit.i
  %.0.i.i80129 = phi i32 [ %i.hh, %sz_size2index.exit.i.thread127 ], [ %i.gt, %sz_size2index.exit.i ] ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.0.i110, i64 8
  %i.hk = zext nneg i32 %.0.i.i80129 to i64
  %i.hl = getelementptr inbounds nuw [24 x i8], ptr %i.hj, i64 %i.hk ; 7 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !108 ; 3 uses
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 18 ; 2 uses
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !139
  %i.hq = trunc i64 %i.hn to i16
  %i.hr = icmp eq i16 %i.hp, %i.hq
  br i1 %i.hr, label %cache_bin_dalloc_easy.exit21.i, label %cache_bin_dalloc_easy.exit21.i.thread, !prof !21

cache_bin_dalloc_easy.exit21.i.thread:            ; preds = %bb.aq
  %i.hs = getelementptr inbounds i8, ptr %i.hm, i64 -8 ; 2 uses
  store ptr %i.hs, ptr %i.hl, align 8, !tbaa !108
  store ptr %0, ptr %i.hs, align 8, !tbaa !109
  br label %iralloct_explicit_slab.exit.thread

cache_bin_dalloc_easy.exit21.i:                   ; preds = %bb.aq
  %i.ht = icmp eq ptr %i.hm, @je_disabled_bin
  br i1 %i.ht, label %bb.ar, label %bb.as, !prof !21

bb.ar:                                            ; preds = %cache_bin_dalloc_easy.exit21.i
  call void @je_arena_dalloc_small(ptr noundef %.0.i54, ptr noundef %0) #20
  br label %iralloct_explicit_slab.exit.thread

bb.as:                                            ; preds = %cache_bin_dalloc_easy.exit21.i
  %i.hu = getelementptr i8, ptr %i.hl, i64 22
  %.val94 = load i16, ptr %i.hu, align 2, !tbaa !140
  %i.hv = zext i16 %.val94 to i32
  %i.hw = load i32, ptr @je_opt_lg_tcache_flush_small_div, align 4, !tbaa !20
  %i.hx = lshr i32 %i.hv, %i.hw
  call void @je_tcache_bin_flush_small(ptr noundef %.0.i54, ptr noundef nonnull %.0.i110, ptr noundef nonnull %i.hl, i32 noundef %.0.i.i80129, i32 noundef %i.hx) #20
  %i.hy = load ptr, ptr %i.hl, align 8, !tbaa !108 ; 2 uses
  %i.hz = ptrtoint ptr %i.hy to i64
  %i.ia = load i16, ptr %i.ho, align 2, !tbaa !139
  %i.ib = trunc i64 %i.hz to i16
  %i.ic = icmp eq i16 %i.ia, %i.ib
  br i1 %i.ic, label %iralloct_explicit_slab.exit.thread, label %bb.at, !prof !21

bb.at:                                            ; preds = %bb.as
  %i.id = getelementptr inbounds i8, ptr %i.hy, i64 -8 ; 2 uses
  store ptr %i.id, ptr %i.hl, align 8, !tbaa !108
  store ptr %0, ptr %i.id, align 8, !tbaa !109
  br label %iralloct_explicit_slab.exit.thread

sz_s2u.exit.i:                                    ; preds = %sz_size2index.exit.i.thread127, %sz_size2index.exit.i, %bb.ap
  %.0.i.i80121125 = phi i32 [ 232, %bb.ap ], [ %i.gt, %sz_size2index.exit.i ], [ %i.hh, %sz_size2index.exit.i.thread127 ] ; 3 uses
  %i.ie = load ptr, ptr %.0.i110, align 8, !tbaa !114
  %i.if = getelementptr i8, ptr %i.ie, i64 48
  %.val91 = load i32, ptr %i.if, align 8, !tbaa !121
  %i.ig = icmp ult i32 %.0.i.i80121125, %.val91
  br i1 %i.ig, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %sz_s2u.exit.i
  %i.ih = getelementptr inbounds nuw i8, ptr %.0.i110, i64 8
  %i.ii = zext nneg i32 %.0.i.i80121125 to i64
  %i.ij = getelementptr inbounds nuw [24 x i8], ptr %i.ih, i64 %i.ii ; 7 uses
  %.val88 = load ptr, ptr %i.ij, align 8, !tbaa !108 ; 3 uses
  %i.ik = icmp eq ptr %.val88, @je_disabled_bin
  %i.il = getelementptr i8, ptr %i.ij, i64 22
  br i1 %i.ik, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.im = ptrtoint ptr %.val88 to i64
  %i.in = getelementptr inbounds nuw i8, ptr %i.ij, i64 18 ; 2 uses
  %i.io = load i16, ptr %i.in, align 2, !tbaa !139
  %i.ip = trunc i64 %i.im to i16
  %i.iq = icmp eq i16 %i.io, %i.ip
  br i1 %i.iq, label %cache_bin_dalloc_easy.exit12.i.i, label %cache_bin_dalloc_easy.exit12.i.i.thread, !prof !21

cache_bin_dalloc_easy.exit12.i.i.thread:          ; preds = %bb.av
  %i.ir = getelementptr inbounds i8, ptr %.val88, i64 -8 ; 2 uses
  store ptr %i.ir, ptr %i.ij, align 8, !tbaa !108
  store ptr %0, ptr %i.ir, align 8, !tbaa !109
  br label %iralloct_explicit_slab.exit.thread

cache_bin_dalloc_easy.exit12.i.i:                 ; preds = %bb.av
  %.val95 = load i16, ptr %i.il, align 2, !tbaa !140
  %i.is = zext i16 %.val95 to i32
  %i.it = load i32, ptr @je_opt_lg_tcache_flush_large_div, align 4, !tbaa !20
  %i.iu = lshr i32 %i.is, %i.it
  call void @je_tcache_bin_flush_large(ptr noundef %.0.i54, ptr noundef nonnull %.0.i110, ptr noundef nonnull %i.ij, i32 noundef %.0.i.i80121125, i32 noundef %i.iu) #20
  %i.iv = load ptr, ptr %i.ij, align 8, !tbaa !108 ; 2 uses
  %i.iw = ptrtoint ptr %i.iv to i64
  %i.ix = load i16, ptr %i.in, align 2, !tbaa !139
  %i.iy = trunc i64 %i.iw to i16
  %i.iz = icmp eq i16 %i.ix, %i.iy
  br i1 %i.iz, label %iralloct_explicit_slab.exit.thread, label %bb.aw, !prof !21

bb.aw:                                            ; preds = %cache_bin_dalloc_easy.exit12.i.i
  %i.ja = getelementptr inbounds i8, ptr %i.iv, i64 -8 ; 2 uses
  store ptr %i.ja, ptr %i.ij, align 8, !tbaa !108
  store ptr %0, ptr %i.ja, align 8, !tbaa !109
  br label %iralloct_explicit_slab.exit.thread

bb.ax:                                            ; preds = %bb.au, %sz_s2u.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  br i1 %i.aj, label %bb.ay, label %bb.az, !prof !21

bb.ay:                                            ; preds = %bb.ax
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %6) #20
  br label %tsdn_rtree_ctx.exit

bb.az:                                            ; preds = %bb.ax
  %i.jb = getelementptr inbounds nuw i8, ptr %.0.i54, i64 536
  br label %tsdn_rtree_ctx.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.ay, %bb.az
  %.0.i84 = phi ptr [ %6, %bb.ay ], [ %i.jb, %bb.az ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef %.0.i54, ptr noundef nonnull %.0.i84, i64 noundef %i.ak)
  %i.jc = load ptr, ptr %7, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @je_large_dalloc(ptr noundef %.0.i54, ptr noundef %i.jc) #20
  br label %iralloct_explicit_slab.exit.thread

iralloct_explicit_slab.exit:                      ; preds = %tsdn_witness_tsdp_get.exit.i, %bb.ad
  %i.jd = call ptr @je_arena_ralloc(ptr noundef %.0.i54, ptr noundef %.1.ph, ptr noundef %0, i64 noundef %.0.i46, i64 noundef %1, i64 noundef range(i64 0, -9223372036854775807) %i.e, i1 noundef zeroext %.0.i45, i1 noundef zeroext %i.eg, ptr noundef %.0.i110, ptr noundef nonnull %10) #20 ; 2 uses
  %i.je = icmp eq ptr %i.jd, null
  br i1 %i.je, label %arena_get_from_ind.exit, label %iralloct_explicit_slab.exit.thread, !prof !100

iralloct_explicit_slab.exit.thread:               ; preds = %bb.an, %bb.as, %bb.at, %cache_bin_dalloc_easy.exit21.i.thread, %bb.ar, %cache_bin_dalloc_easy.exit12.i.i.thread, %bb.aw, %cache_bin_dalloc_easy.exit12.i.i, %tsdn_rtree_ctx.exit, %iralloct_explicit_slab.exit
  %.0.i57139 = phi ptr [ %i.jd, %iralloct_explicit_slab.exit ], [ %i.gc, %tsdn_rtree_ctx.exit ], [ %i.gc, %cache_bin_dalloc_easy.exit12.i.i ], [ %i.gc, %bb.aw ], [ %i.gc, %cache_bin_dalloc_easy.exit12.i.i.thread ], [ %i.gc, %bb.ar ], [ %i.gc, %cache_bin_dalloc_easy.exit21.i.thread ], [ %i.gc, %bb.at ], [ %i.gc, %bb.as ], [ %i.gc, %bb.an ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store i8 1, ptr %4, align 8, !tbaa !125
  %i.jf = getelementptr inbounds nuw i8, ptr %.0.i54, i64 928 ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.jf, ptr %i.jg, align 8, !tbaa !126
  %i.jh = getelementptr inbounds nuw i8, ptr %.0.i54, i64 8
  %i.ji = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.jh, ptr %i.ji, align 8, !tbaa !127
  %i.jj = getelementptr inbounds nuw i8, ptr %.0.i54, i64 16 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.jj, ptr %i.jk, align 8, !tbaa !128
  %i.jl = getelementptr inbounds nuw i8, ptr %.0.i54, i64 936
  %i.jm = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.jl, ptr %i.jm, align 8, !tbaa !129
  %i.jn = load i64, ptr %i.jf, align 8, !tbaa !41 ; 2 uses
  %i.jo = add i64 %i.jn, %storemerge.i
  store i64 %i.jo, ptr %i.jf, align 8, !tbaa !41
  %i.jp = load i64, ptr %i.jj, align 8, !tbaa !41
  %i.jq = sub i64 %i.jp, %i.jn
  %i.jr = icmp ult i64 %storemerge.i, %i.jq
  br i1 %i.jr, label %te_event_advance.exit87, label %bb.ba, !prof !23

bb.ba:                                            ; preds = %iralloct_explicit_slab.exit.thread
  call void @je_te_event_trigger(ptr noundef nonnull %.0.i54, ptr noundef nonnull %4) #20
  br label %te_event_advance.exit87

te_event_advance.exit87:                          ; preds = %iralloct_explicit_slab.exit.thread, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
end_hunk_1
begin_hunk_2_@realloc:bb.a
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
  %.val128 = load ptr, ptr %i.cj, align 8, !tbaa !108 ; 4 uses
  %.not302 = icmp eq ptr %.val128, @je_disabled_bin
  br i1 %.not302, label %.critedge.i.i61, label %bb.x, !prof !21

bb.x:                                             ; preds = %bb.w
  %i.ck = load ptr, ptr %.val128, align 8, !tbaa !109 ; 2 uses
  %i.cl = ptrtoint ptr %.val128 to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %.val128, i64 8 ; 3 uses
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
  %.ph333 = icmp ult i64 %.0234.ph, 14337
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
  %.val129 = load ptr, ptr %i.gs, align 8, !tbaa !108
  %i.hg = icmp eq ptr %.val129, @je_disabled_bin
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
  %.not301 = icmp eq i8 %i.hj, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br i1 %.not301, label %sz_size2index.exit.i32.thread, label %cache_bin_alloc_impl.exit.i.thread

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
  %.ph336 = phi i1 [ %.ph333, %iallocztm_explicit_slab.exit.i.thread ], [ false, %bb.bm ], [ false, %bb.bl ]
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
atomic_fetch_add_zu.exit:
  %1 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %2 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %3 = alloca %struct.rtree_contents_s, align 8   ; 6 uses
  %i.a = alloca [3 x i64], align 16               ; 5 uses
  %i.b = atomicrmw add ptr @je_zero_realloc_count, i64 1 monotonic, align 8 ; 0 uses
  %i.c = load i32, ptr @je_opt_zero_realloc_action, align 4, !tbaa !20
  switch i32 %i.c, label %bb.t [
    i32 0, label %bb.a
    i32 1, label %bb.b
  ]

bb.a:                                             ; preds = %atomic_fetch_add_zu.exit
  %i.d = tail call fastcc ptr @do_rallocx(ptr noundef nonnull %0, i64 noundef 1, i32 noundef 256, i1 noundef zeroext true)
  br label %bb.u

bb.b:                                             ; preds = %atomic_fetch_add_zu.exit
  %i.e = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 920
  %i.g = load i8, ptr %i.f, align 8, !tbaa !24
  %.not.i = icmp eq i8 %i.g, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.e, i1 noundef zeroext false) #20
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %bb.b, %bb.c
  %.0.i21 = phi ptr [ %i.h, %bb.c ], [ %i.e, %bb.b ] ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i21, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !24
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.d, label %tcache_get_from_ind.exit, !prof !23

bb.d:                                             ; preds = %tsd_fetch_impl.exit
  %i.l = load i8, ptr %.0.i21, align 1, !tbaa !40, !range !38, !noundef !39
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i21, i64 960
  %spec.select = select i1 %i.m, ptr %i.n, ptr null
  br label %tcache_get_from_ind.exit

tcache_get_from_ind.exit:                         ; preds = %bb.d, %tsd_fetch_impl.exit
  %.0.i = phi ptr [ null, %tsd_fetch_impl.exit ], [ %spec.select, %bb.d ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.o = ptrtoint ptr %0 to i64                   ; 3 uses
  store i64 %i.o, ptr %i.a, align 16, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  call void @je_hook_invoke_dalloc(i32 noundef 3, ptr noundef nonnull %0, ptr noundef nonnull %i.a) #20
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i21, i64 536 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull %.0.i21, ptr noundef nonnull %i.q, i64 noundef %i.o)
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !36   ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 17
  %i.u = load i8, ptr %i.t, align 1, !tbaa !37, !range !38, !noundef !39
  %i.v = icmp eq i32 %i.s, 232
  %i.w = load ptr, ptr %3, align 8                ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  %or.cond.i = select i1 %i.v, i1 true, i1 %i.x
  br i1 %or.cond.i, label %emap_alloc_ctx_lookup.exit, label %bb.e

bb.e:                                             ; preds = %tcache_get_from_ind.exit
  %.val.i = load i64, ptr %i.w, align 8, !tbaa !35
  %i.y = trunc i64 %.val.i to i32
  %i.z = lshr i32 %i.y, 20
  %i.aa = and i32 %i.z, 255                       ; 2 uses
  %i.ab = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !40, !range !38, !noundef !39
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = icmp samesign ugt i32 %i.aa, 35
  %or.cond.not.i = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %or.cond.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = zext nneg i32 %i.aa to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !41
  br label %emap_alloc_ctx_lookup.exit

bb.g:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !24
  %i.aj = and i64 %i.ai, -4096
  %i.ak = load i64, ptr @je_sz_large_pad, align 8, !tbaa !41
  %i.al = sub i64 %i.aj, %i.ak
  br label %emap_alloc_ctx_lookup.exit

emap_alloc_ctx_lookup.exit:                       ; preds = %bb.g, %bb.f, %tcache_get_from_ind.exit
  %i.am = phi i64 [ 0, %tcache_get_from_ind.exit ], [ %i.ag, %bb.f ], [ %i.al, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.an = trunc nuw i8 %i.u to i1                 ; 2 uses
  br i1 %i.an, label %bb.h, label %emap_alloc_ctx_usize_get.exit

bb.h:                                             ; preds = %emap_alloc_ctx_lookup.exit
  %i.ao = zext i32 %i.s to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !41
  br label %emap_alloc_ctx_usize_get.exit

emap_alloc_ctx_usize_get.exit:                    ; preds = %emap_alloc_ctx_lookup.exit, %bb.h
  %.0.i13 = phi i64 [ %i.aq, %bb.h ], [ %i.am, %emap_alloc_ctx_lookup.exit ] ; 3 uses
  %i.ar = load i8, ptr @je_opt_junk_free, align 1, !range !38
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.i, label %idalloctm.exit

bb.i:                                             ; preds = %emap_alloc_ctx_usize_get.exit
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %0, i8 90, i64 %.0.i13, i1 false)
  br label %idalloctm.exit

idalloctm.exit:                                   ; preds = %emap_alloc_ctx_usize_get.exit, %bb.i
  %i.at = icmp eq ptr %.0.i, null
  br i1 %i.at, label %bb.j, label %bb.k, !prof !21

bb.j:                                             ; preds = %idalloctm.exit
  call fastcc void @arena_dalloc_no_tcache(ptr noundef nonnull %.0.i21, ptr noundef nonnull %0)
  br label %arena_dalloc.exit

bb.k:                                             ; preds = %idalloctm.exit
  br i1 %i.an, label %bb.l, label %emap_alloc_ctx_usize_get.exit.i, !prof !23

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.av = zext i32 %i.s to i64
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %i.av ; 7 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !108 ; 3 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 18 ; 2 uses
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !139
  %i.bb = trunc i64 %i.ay to i16
  %i.bc = icmp eq i16 %i.ba, %i.bb
  br i1 %i.bc, label %cache_bin_dalloc_easy.exit19, label %cache_bin_dalloc_easy.exit19.thread, !prof !21

cache_bin_dalloc_easy.exit19.thread:              ; preds = %bb.l
  %i.bd = getelementptr inbounds i8, ptr %i.ax, i64 -8 ; 2 uses
end_hunk_2
begin_hunk_3_@je_sdallocx_default:bb.a
  store ptr %i.iq, ptr %i.ir, align 8, !tbaa !127
  %i.is = getelementptr inbounds nuw i8, ptr %.0.i30, i64 32 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.is, ptr %i.it, align 8, !tbaa !128
  %i.iu = getelementptr inbounds nuw i8, ptr %.0.i30, i64 952
  %i.iv = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.iu, ptr %i.iv, align 8, !tbaa !129
  %i.iw = load i64, ptr %i.io, align 8, !tbaa !41 ; 2 uses
  %i.ix = add i64 %i.iw, %storemerge.i
  store i64 %i.ix, ptr %i.io, align 8, !tbaa !41
  %i.iy = load i64, ptr %i.is, align 8, !tbaa !41
  %i.iz = sub i64 %i.iy, %i.iw
  %i.ja = icmp ult i64 %storemerge.i, %i.iz
  br i1 %i.ja, label %te_event_advance.exit60, label %bb.av, !prof !23

bb.av:                                            ; preds = %arena_sdalloc.exit
  call void @je_te_event_trigger(ptr noundef nonnull %.0.i30, ptr noundef nonnull %3) #20
  br label %te_event_advance.exit60

te_event_advance.exit60:                          ; preds = %arena_sdalloc.exit, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.aw

bb.aw:                                            ; preds = %te_event_advance.exit60, %te_event_advance.exit
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local range(i64 0, 8070450532247928833) i64 @nallocx(i64 noundef %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = load i32, ptr @je_malloc_init_state, align 4, !tbaa !20
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %malloc_init.exit, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.c, label %malloc_init.exit.thread, label %malloc_init.exit

malloc_init.exit:                                 ; preds = %bb.b, %bb.a
  %i.d = load i8, ptr @je_tsd_booted, align 1, !tbaa !40, !range !38, !noundef !39
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %tsdn_fetch.exit

bb.c:                                             ; preds = %malloc_init.exit
  %i.f = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 920
  %i.h = load i8, ptr %i.g, align 8, !tbaa !24
  %.not.i = icmp eq i8 %i.h, 0
  br i1 %.not.i, label %tsdn_fetch.exit, label %bb.d, !prof !23

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.f, i1 noundef zeroext false) #20 ; 0 uses
  br label %tsdn_fetch.exit

tsdn_fetch.exit:                                  ; preds = %bb.d, %bb.c, %malloc_init.exit
  %i.j = and i32 %1, 63
  %i.k = zext nneg i32 %i.j to i64
  %i.l = shl nuw i64 1, %i.k                      ; 2 uses
  %i.m = and i64 %i.l, -2                         ; 5 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.k

bb.e:                                             ; preds = %tsdn_fetch.exit
  %i.o = icmp ult i64 %0, 4097
  br i1 %i.o, label %bb.f, label %bb.g, !prof !23

bb.f:                                             ; preds = %bb.e
  %i.p = add nuw nsw i64 %0, 7
  %i.q = lshr i64 %i.p, 3
  %i.r = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !24
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !41
  br label %aligned_usize_get.exit

bb.g:                                             ; preds = %bb.e
  %i.w = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.w, label %malloc_init.exit.thread, label %bb.h, !prof !21

bb.h:                                             ; preds = %bb.g
  %i.x = icmp samesign ugt i64 %0, 14336
  %i.y = load i8, ptr @je_opt_disable_large_size_classes, align 1, !range !38
  %i.z = trunc nuw i8 %i.y to i1
  %or.cond = select i1 %i.x, i1 %i.z, i1 false
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = shl nuw i64 %0, 1
  %i.ab = add i64 %i.aa, -1
  %i.ac = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.ab, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.ac
  %i.ad = lshr i64 1152921504606846975, %i.ac
  %i.ae = add nuw nsw i64 %0, %i.ad
  %i.af = and i64 %i.ae, %notmask.i
  br label %aligned_usize_get.exit

bb.j:                                             ; preds = %bb.h
  %i.ag = add nuw nsw i64 %0, 4095
  %i.ah = and i64 %i.ag, 9223372036854771712
  br label %aligned_usize_get.exit

bb.k:                                             ; preds = %tsdn_fetch.exit
  %i.ai = icmp ult i64 %0, 14337
  %i.aj = icmp ult i64 %i.m, 4097
  %or.cond.i = and i1 %i.ai, %i.aj
  br i1 %or.cond.i, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ak = add nsw i64 %0, -1
  %i.al = add nsw i64 %i.ak, %i.m
  %i.am = sub nsw i64 0, %i.m
  %i.an = and i64 %i.al, %i.am                    ; 5 uses
  %i.ao = icmp samesign ult i64 %i.an, 4097
  br i1 %i.ao, label %bb.m, label %bb.n, !prof !23

bb.m:                                             ; preds = %bb.l
  %i.ap = add nuw nsw i64 %i.an, 6
  %i.aq = lshr i64 %i.ap, 3
  %i.ar = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !24
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !41
  br label %sz_s2u.exit25.i

bb.n:                                             ; preds = %bb.l
  %i.aw = icmp samesign ugt i64 %i.an, 14336
  %i.ax = load i8, ptr @je_opt_disable_large_size_classes, align 1, !range !38
  %i.ay = trunc nuw i8 %i.ax to i1
  %or.cond21 = select i1 %i.aw, i1 %i.ay, i1 false
  br i1 %or.cond21, label %.thread16, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = shl nuw nsw i64 %i.an, 1
  %i.ba = add nsw i64 %i.az, -1
  %i.bb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.ba, i1 true) ; 2 uses
  %notmask.i29.i = ashr exact i64 -1152921504606846976, %i.bb
  %i.bc = lshr i64 1152921504606846975, %i.bb
  %i.bd = add nuw nsw i64 %i.an, %i.bc
  %i.be = and i64 %i.bd, %notmask.i29.i
  br label %sz_s2u.exit25.i

sz_s2u.exit25.i:                                  ; preds = %bb.o, %bb.m
  %.0.i24.i = phi i64 [ %i.av, %bb.m ], [ %i.be, %bb.o ] ; 2 uses
  %i.bf = icmp ult i64 %.0.i24.i, 16384
  br i1 %i.bf, label %malloc_init.exit.thread, label %.thread16

bb.p:                                             ; preds = %bb.k
  %i.bg = icmp ugt i64 %i.m, 8070450532247928832
  br i1 %i.bg, label %malloc_init.exit.thread, label %bb.q, !prof !137

bb.q:                                             ; preds = %bb.p
  %i.bh = icmp ult i64 %0, 16385
  br i1 %i.bh, label %.thread16, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.bi, label %sz_s2u_compute.exit28.i, label %bb.s, !prof !21

bb.s:                                             ; preds = %bb.r
  %i.bj = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !40, !range !38, !noundef !39
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = shl nuw i64 %0, 1
  %i.bm = add i64 %i.bl, -1
  %i.bn = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.bm, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.bn
  %i.bo = lshr i64 1152921504606846975, %i.bn
  %i.bp = add nuw nsw i64 %0, %i.bo
  %i.bq = and i64 %i.bp, %notmask.i.i
  br label %sz_s2u_compute.exit28.i

bb.u:                                             ; preds = %bb.s
  %i.br = add nuw nsw i64 %0, 4095
  %i.bs = and i64 %i.br, 9223372036854771712
  br label %sz_s2u_compute.exit28.i

sz_s2u_compute.exit28.i:                          ; preds = %bb.u, %bb.t, %bb.r
  %.0.i27.i = phi i64 [ %i.bq, %bb.t ], [ %i.bs, %bb.u ], [ 0, %bb.r ] ; 2 uses
  %i.bt = icmp ult i64 %.0.i27.i, %0
  br i1 %i.bt, label %malloc_init.exit.thread, label %.thread16

.thread16:                                        ; preds = %bb.n, %sz_s2u.exit25.i, %sz_s2u_compute.exit28.i, %bb.q
  %.0.i13 = phi i64 [ %.0.i27.i, %sz_s2u_compute.exit28.i ], [ 16384, %bb.q ], [ 16384, %bb.n ], [ 16384, %sz_s2u.exit25.i ] ; 3 uses
  %i.bu = load i64, ptr @je_sz_large_pad, align 8, !tbaa !41
  %i.bv = add nuw i64 %i.l, 4094
  %i.bw = and i64 %i.bv, 9223372036854771712
  %i.bx = add nsw i64 %i.bw, -4096
  %i.by = add i64 %i.bx, %.0.i13
  %i.bz = add i64 %i.by, %i.bu
  %i.ca = icmp ult i64 %i.bz, %.0.i13
  br i1 %i.ca, label %malloc_init.exit.thread, label %aligned_usize_get.exit

aligned_usize_get.exit:                           ; preds = %.thread16, %bb.f, %bb.i, %bb.j
  %storemerge.i = phi i64 [ %.0.i13, %.thread16 ], [ %i.v, %bb.f ], [ %i.af, %bb.i ], [ %i.ah, %bb.j ] ; 2 uses
  %i.cb = icmp ugt i64 %storemerge.i, 8070450532247928832
  %spec.select = select i1 %i.cb, i64 0, i64 %storemerge.i, !prof !171
  br label %malloc_init.exit.thread

malloc_init.exit.thread:                          ; preds = %aligned_usize_get.exit, %.thread16, %sz_s2u_compute.exit28.i, %sz_s2u.exit25.i, %bb.p, %bb.g, %bb.b
  %.0 = phi i64 [ %spec.select, %aligned_usize_get.exit ], [ 0, %.thread16 ], [ 0, %bb.b ], [ 0, %bb.g ], [ 0, %sz_s2u_compute.exit28.i ], [ %.0.i24.i, %sz_s2u.exit25.i ], [ 0, %bb.p ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @mallctl(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @je_malloc_init_state, align 4, !tbaa !20
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %malloc_init.exit, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.c, label %malloc_init.exit.thread, label %malloc_init.exit

malloc_init.exit:                                 ; preds = %bb.b, %bb.a
  %i.d = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 920
  %i.f = load i8, ptr %i.e, align 8, !tbaa !24
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.c, !prof !23

bb.c:                                             ; preds = %malloc_init.exit
  %i.g = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.d, i1 noundef zeroext false) #20
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %malloc_init.exit, %bb.c
  %.0.i9 = phi ptr [ %i.g, %bb.c ], [ %i.d, %malloc_init.exit ]
  %i.h = tail call i32 @je_ctl_byname(ptr noundef %.0.i9, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) #20
  br label %malloc_init.exit.thread

malloc_init.exit.thread:                          ; preds = %bb.b, %tsd_fetch_impl.exit
  %.0 = phi i32 [ %i.h, %tsd_fetch_impl.exit ], [ 11, %bb.b ]
  ret i32 %.0
}

declare i32 @je_ctl_byname(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @mallctlnametomib(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @je_malloc_init_state, align 4, !tbaa !20
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %malloc_init.exit, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.c, label %malloc_init.exit.thread, label %malloc_init.exit

malloc_init.exit:                                 ; preds = %bb.b, %bb.a
  %i.d = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 920
  %i.f = load i8, ptr %i.e, align 8, !tbaa !24
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.c, !prof !23

bb.c:                                             ; preds = %malloc_init.exit
  %i.g = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.d, i1 noundef zeroext false) #20
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %malloc_init.exit, %bb.c
  %.0.i7 = phi ptr [ %i.g, %bb.c ], [ %i.d, %malloc_init.exit ]
  %i.h = tail call i32 @je_ctl_nametomib(ptr noundef %.0.i7, ptr noundef %0, ptr noundef %1, ptr noundef %2) #20
  br label %malloc_init.exit.thread

malloc_init.exit.thread:                          ; preds = %bb.b, %tsd_fetch_impl.exit
  %.0 = phi i32 [ %i.h, %tsd_fetch_impl.exit ], [ 11, %bb.b ]
  ret i32 %.0
}

declare i32 @je_ctl_nametomib(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @mallctlbymib(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @je_malloc_init_state, align 4, !tbaa !20
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %malloc_init.exit, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.c, label %malloc_init.exit.thread, label %malloc_init.exit

malloc_init.exit:                                 ; preds = %bb.b, %bb.a
  %i.d = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 920
  %i.f = load i8, ptr %i.e, align 8, !tbaa !24
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.c, !prof !23

bb.c:                                             ; preds = %malloc_init.exit
  %i.g = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.d, i1 noundef zeroext false) #20
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %malloc_init.exit, %bb.c
  %.0.i10 = phi ptr [ %i.g, %bb.c ], [ %i.d, %malloc_init.exit ]
  %i.h = tail call i32 @je_ctl_bymib(ptr noundef %.0.i10, ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) #20
  br label %malloc_init.exit.thread

malloc_init.exit.thread:                          ; preds = %bb.b, %tsd_fetch_impl.exit
  %.0 = phi i32 [ %i.h, %tsd_fetch_impl.exit ], [ 11, %bb.b ]
  ret i32 %.0
}

declare i32 @je_ctl_bymib(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @malloc_stats_print(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.buf_writer_t, align 8       ; 5 uses
  %i.a = load i8, ptr @je_tsd_booted, align 1, !tbaa !40, !range !38, !noundef !39
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %tsdn_fetch.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 920
  %i.e = load i8, ptr %i.d, align 8, !tbaa !24
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %tsdn_fetch.exit, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false) #20
  br label %tsdn_fetch.exit

tsdn_fetch.exit:                                  ; preds = %bb.c, %bb.b, %bb.a
  %.0.i = phi ptr [ null, %bb.a ], [ %i.f, %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.g = call zeroext i1 @je_buf_writer_init(ptr noundef %.0.i, ptr noundef nonnull %3, ptr noundef %0, ptr noundef %1, ptr noundef null, i64 noundef 65536) #20 ; 0 uses
  call void @je_stats_print(ptr noundef nonnull @je_buf_writer_cb, ptr noundef nonnull %3, ptr noundef %2) #20
  call void @je_buf_writer_terminate(ptr noundef %.0.i, ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

declare zeroext i1 @je_buf_writer_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @je_stats_print(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @je_buf_writer_cb(ptr noundef, ptr noundef) #5

declare void @je_buf_writer_terminate(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i64 @malloc_usable_size(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.rtree_ctx_s, align 8        ; 5 uses
  %2 = alloca %struct.rtree_contents_s, align 8   ; 6 uses
  %i.a = load i8, ptr @je_tsd_booted, align 1, !tbaa !40, !range !38, !noundef !39
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %tsdn_fetch.exit.i.thread

bb.b:                                             ; preds = %bb.a
  %i.c = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 920
  %i.e = load i8, ptr %i.d, align 8, !tbaa !24
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %tsdn_fetch.exit.i, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false) #20
  br label %tsdn_fetch.exit.i

tsdn_fetch.exit.i:                                ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.c, %bb.b ], [ %i.f, %bb.c ] ; 3 uses
  %i.g = icmp eq ptr %0, null
  br i1 %i.g, label %je_malloc_usable_size_impl.exit, label %bb.d, !prof !21

tsdn_fetch.exit.i.thread:                         ; preds = %bb.a
  %i.h = icmp eq ptr %0, null
  br i1 %i.h, label %je_malloc_usable_size_impl.exit, label %.thread, !prof !21

.thread:                                          ; preds = %tsdn_fetch.exit.i.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  br label %bb.e

bb.d:                                             ; preds = %tsdn_fetch.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.i = icmp eq ptr %.0.i.i, null
  br i1 %i.i, label %bb.e, label %bb.f, !prof !100

bb.e:                                             ; preds = %.thread, %bb.d
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %1) #20
  br label %tsdn_rtree_ctx.exit.i

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 536
  br label %tsdn_rtree_ctx.exit.i

tsdn_rtree_ctx.exit.i:                            ; preds = %bb.f, %bb.e
  %.0.i.i57 = phi ptr [ null, %bb.e ], [ %.0.i.i, %bb.f ]
  %.0.i2.i = phi ptr [ %1, %bb.e ], [ %i.j, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.k = ptrtoint ptr %0 to i64
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef %.0.i.i57, ptr noundef nonnull %.0.i2.i, i64 noundef %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !36   ; 2 uses
end_hunk_3
begin_hunk_4_@je_batch_alloc:bb.a

tsd_fetch_impl.exit.thread:                       ; preds = %bb.a, %tsd_fetch_impl.exit
  %.0.i132151 = phi ptr [ %i.d, %tsd_fetch_impl.exit ], [ %i.a, %bb.a ] ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i132151, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !24
  %i.h = icmp sgt i8 %i.g, 0
  br i1 %i.h, label %.critedge, label %bb.b, !prof !21

bb.b:                                             ; preds = %tsd_fetch_impl.exit.thread
  %i.i = and i32 %3, 63
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw i64 1, %i.j                      ; 2 uses
  %i.l = and i64 %i.k, -2                         ; 5 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ult i64 %2, 4097
  br i1 %i.n, label %bb.d, label %bb.e, !prof !23

bb.d:                                             ; preds = %bb.c
  %i.o = add nuw nsw i64 %2, 7
  %i.p = lshr i64 %i.o, 3
  %i.q = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !24
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8, !tbaa !41
  br label %aligned_usize_get.exit

bb.e:                                             ; preds = %bb.c
  %i.v = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.v, label %.critedge, label %bb.f, !prof !21

bb.f:                                             ; preds = %bb.e
  %i.w = icmp samesign ugt i64 %2, 14336
  %i.x = load i8, ptr @je_opt_disable_large_size_classes, align 1, !range !38
  %i.y = trunc nuw i8 %i.x to i1
  %or.cond197 = select i1 %i.w, i1 %i.y, i1 false
  br i1 %or.cond197, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = shl nuw i64 %2, 1
  %i.aa = add i64 %i.z, -1
  %i.ab = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.aa, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.ab
  %i.ac = lshr i64 1152921504606846975, %i.ab
  %i.ad = add nuw nsw i64 %2, %i.ac
  %i.ae = and i64 %i.ad, %notmask.i
  br label %aligned_usize_get.exit

bb.h:                                             ; preds = %bb.f
  %i.af = add nuw nsw i64 %2, 4095
  %i.ag = and i64 %i.af, 9223372036854771712
  br label %aligned_usize_get.exit

bb.i:                                             ; preds = %bb.b
  %i.ah = icmp ult i64 %2, 14337
  %i.ai = icmp ult i64 %i.l, 4097
  %or.cond.i = and i1 %i.ah, %i.ai
  br i1 %or.cond.i, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.aj = add nsw i64 %2, -1
  %i.ak = add nsw i64 %i.aj, %i.l
  %i.al = sub nsw i64 0, %i.l
  %i.am = and i64 %i.ak, %i.al                    ; 5 uses
  %i.an = icmp samesign ult i64 %i.am, 4097
  br i1 %i.an, label %bb.k, label %bb.l, !prof !23

bb.k:                                             ; preds = %bb.j
  %i.ao = add nuw nsw i64 %i.am, 6
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !24
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !41
  br label %sz_s2u.exit25.i

bb.l:                                             ; preds = %bb.j
  %i.av = icmp samesign ugt i64 %i.am, 14336
  %i.aw = load i8, ptr @je_opt_disable_large_size_classes, align 1, !range !38
  %i.ax = trunc nuw i8 %i.aw to i1
  %or.cond199 = select i1 %i.av, i1 %i.ax, i1 false
  br i1 %or.cond199, label %.thread153, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = shl nuw nsw i64 %i.am, 1
  %i.az = add nsw i64 %i.ay, -1
  %i.ba = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.az, i1 true) ; 2 uses
  %notmask.i29.i = ashr exact i64 -1152921504606846976, %i.ba
  %i.bb = lshr i64 1152921504606846975, %i.ba
  %i.bc = add nuw nsw i64 %i.am, %i.bb
  %i.bd = and i64 %i.bc, %notmask.i29.i
  br label %sz_s2u.exit25.i

sz_s2u.exit25.i:                                  ; preds = %bb.m, %bb.k
  %.0.i24.i = phi i64 [ %i.au, %bb.k ], [ %i.bd, %bb.m ] ; 2 uses
  %i.be = icmp ult i64 %.0.i24.i, 16384
  br i1 %i.be, label %aligned_usize_get.exit, label %.thread153

bb.n:                                             ; preds = %bb.i
  %i.bf = icmp ugt i64 %i.l, 8070450532247928832
  br i1 %i.bf, label %.critedge, label %bb.o, !prof !137

bb.o:                                             ; preds = %bb.n
  %i.bg = icmp ult i64 %2, 16385
  br i1 %i.bg, label %.thread153, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.bh, label %sz_s2u_compute.exit28.i, label %bb.q, !prof !21

bb.q:                                             ; preds = %bb.p
  %i.bi = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !40, !range !38, !noundef !39
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = shl nuw i64 %2, 1
  %i.bl = add i64 %i.bk, -1
  %i.bm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.bl, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.bm
  %i.bn = lshr i64 1152921504606846975, %i.bm
  %i.bo = add nuw nsw i64 %2, %i.bn
  %i.bp = and i64 %i.bo, %notmask.i.i
  br label %sz_s2u_compute.exit28.i

bb.s:                                             ; preds = %bb.q
  %i.bq = add nuw nsw i64 %2, 4095
  %i.br = and i64 %i.bq, 9223372036854771712
  br label %sz_s2u_compute.exit28.i

sz_s2u_compute.exit28.i:                          ; preds = %bb.s, %bb.r, %bb.p
  %.0.i27.i = phi i64 [ %i.bp, %bb.r ], [ %i.br, %bb.s ], [ 0, %bb.p ] ; 2 uses
  %i.bs = icmp ult i64 %.0.i27.i, %2
  br i1 %i.bs, label %.critedge, label %.thread153

.thread153:                                       ; preds = %bb.l, %sz_s2u.exit25.i, %sz_s2u_compute.exit28.i, %bb.o
  %.0.i134 = phi i64 [ %.0.i27.i, %sz_s2u_compute.exit28.i ], [ 16384, %bb.o ], [ 16384, %bb.l ], [ 16384, %sz_s2u.exit25.i ] ; 3 uses
  %i.bt = load i64, ptr @je_sz_large_pad, align 8, !tbaa !41
  %i.bu = add nuw i64 %i.k, 4094
  %i.bv = and i64 %i.bu, 9223372036854771712
  %i.bw = add nsw i64 %i.bv, -4096
  %i.bx = add i64 %i.bw, %.0.i134
  %i.by = add i64 %i.bx, %i.bt
  %i.bz = icmp ult i64 %i.by, %.0.i134
  %..0.i = select i1 %i.bz, i64 0, i64 %.0.i134
  br label %aligned_usize_get.exit

aligned_usize_get.exit:                           ; preds = %.thread153, %sz_s2u.exit25.i, %bb.d, %bb.g, %bb.h
  %storemerge.i = phi i64 [ %.0.i24.i, %sz_s2u.exit25.i ], [ %i.u, %bb.d ], [ %i.ae, %bb.g ], [ %i.ag, %bb.h ], [ %..0.i, %.thread153 ] ; 15 uses
  %i.ca = add i64 %storemerge.i, -8070450532247928833
  %spec.select.i = icmp ult i64 %i.ca, -8070450532247928832
  br i1 %spec.select.i, label %.critedge, label %bb.t

bb.t:                                             ; preds = %aligned_usize_get.exit
  %i.cb = icmp samesign ult i64 %storemerge.i, 4097
  br i1 %i.cb, label %bb.u, label %sz_size2index_compute.exit, !prof !23

bb.u:                                             ; preds = %bb.t
  %i.cc = add nuw nsw i64 %storemerge.i, 7
  %i.cd = lshr i64 %i.cc, 3
  %i.ce = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !24
  %i.cg = zext i8 %i.cf to i32
  br label %sz_size2index.exit

sz_size2index_compute.exit:                       ; preds = %bb.t
  %i.ch = shl nuw i64 %storemerge.i, 1
  %i.ci = add i64 %i.ch, -1
  %i.cj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.ci, i1 true) ; 3 uses
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = sub nuw nsw i64 60, %i.cj
  %i.cm = ashr exact i64 -1152921504606846976, %i.cj
  %i.cn = add nsw i64 %storemerge.i, -1
  %i.co = and i64 %i.cm, %i.cn
  %i.cp = lshr i64 %i.co, %i.cl
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = and i32 %i.cq, 3
  %i.cs = shl nuw nsw i32 %i.ck, 2
  %reass.sub = sub nsw i32 %i.cr, %i.cs
  %i.ct = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.u, %sz_size2index_compute.exit
  %.0.i125 = phi i32 [ %i.cg, %bb.u ], [ %i.ct, %sz_size2index_compute.exit ] ; 4 uses
  %i.cu = and i32 %3, 64
  %i.cv = icmp ne i32 %i.cu, 0
  %i.cw = load i8, ptr @je_opt_zero, align 1, !range !38
  %i.cx = trunc nuw i8 %i.cw to i1
  %.0.i123 = or i1 %i.cv, %i.cx                   ; 2 uses
  %i.cy = zext nneg i32 %.0.i125 to i64           ; 2 uses
  %i.cz = icmp samesign ugt i32 %.0.i125, 35      ; 2 uses
  br i1 %i.cz, label %bb.w, label %bb.v, !prof !21

bb.v:                                             ; preds = %sz_size2index.exit
  %i.da = getelementptr inbounds nuw [40 x i8], ptr @je_bin_infos, i64 %i.cy
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !174
  %i.dd = zext i32 %i.dc to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %sz_size2index.exit
  %.098 = phi i64 [ %i.dd, %bb.v ], [ 0, %sz_size2index.exit ] ; 2 uses
  %.not.i = icmp ult i32 %3, 1048576
  %i.de = lshr i32 %3, 20
  %i.df = add nsw i32 %i.de, -1                   ; 3 uses
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.dg
  %i.di = and i32 %3, 1048320                     ; 2 uses
  %i.dj = lshr exact i32 %i.di, 8
  %i.dk = add nsw i32 %i.dj, -2                   ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i132151, i64 960
  %i.dm = zext nneg i32 %i.dk to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i132151, i64 928 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.i132151, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.i132151, i64 16 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i132151, i64 936
  %i.dt = insertelement <2 x ptr> poison, ptr %i.dn, i64 0
  %i.du = insertelement <2 x ptr> %i.dt, ptr %i.dp, i64 1
  %i.dv = insertelement <2 x ptr> poison, ptr %i.dq, i64 0
  %i.dw = insertelement <2 x ptr> %i.dv, ptr %i.ds, i64 1
  br label %bb.x

bb.x:                                             ; preds = %select.unfold, %bb.w
  %.0145 = phi ptr [ null, %bb.w ], [ %.5, %select.unfold ] ; 3 uses
  %.0103 = phi i64 [ 0, %bb.w ], [ %.6, %select.unfold ] ; 8 uses
  %.099 = phi ptr [ null, %bb.w ], [ %.3102, %select.unfold ] ; 9 uses
  %i.dx = icmp ult i64 %.0103, %1
  br i1 %i.dx, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  %i.dy = sub nuw i64 %1, %.0103                  ; 6 uses
  %.not = icmp ult i64 %i.dy, %.098
  %or.cond = select i1 %i.cz, i1 true, i1 %.not, !prof !175
  br i1 %or.cond, label %bb.ac, label %bb.z, !prof !175

bb.z:                                             ; preds = %bb.y
  %i.dz = icmp eq ptr %.0145, null
  br i1 %i.dz, label %bb.aa, label %arena_get_from_ind.exit.thread169

bb.aa:                                            ; preds = %bb.z
  br i1 %.not.i, label %arena_get_from_ind.exit, label %mallocx_arena_get.exit, !prof !23

mallocx_arena_get.exit:                           ; preds = %bb.aa
  %i.ea = load atomic ptr, ptr %i.dh acquire, align 8 ; 2 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %arena_get.exit, label %arena_get_from_ind.exit.thread169, !prof !21

arena_get.exit:                                   ; preds = %mallocx_arena_get.exit
  %i.ec = call ptr @je_arena_init(ptr noundef nonnull %.0.i132151, i32 noundef %i.df, ptr noundef nonnull @je_arena_config_default), !inline_history !0 ; 2 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %bb.ab, label %arena_get_from_ind.exit.thread169, !prof !22

bb.ab:                                            ; preds = %arena_get.exit
  %i.ee = load i32, ptr @je_narenas_auto, align 4, !tbaa !20
  %.not.i127 = icmp ult i32 %i.df, %i.ee
  br i1 %.not.i127, label %arena_get_from_ind.exit, label %.critedge

arena_get_from_ind.exit:                          ; preds = %bb.ab, %bb.aa
  %i.ef = call fastcc ptr @arena_choose(ptr noundef nonnull %.0.i132151, ptr noundef null) ; 2 uses
  %.not200 = icmp eq ptr %i.ef, null
  br i1 %.not200, label %select.unfold, label %arena_get_from_ind.exit.thread169

arena_get_from_ind.exit.thread169:                ; preds = %mallocx_arena_get.exit, %arena_get.exit, %arena_get_from_ind.exit, %bb.z
  %.3147 = phi ptr [ %i.ef, %arena_get_from_ind.exit ], [ %.0145, %bb.z ], [ %i.ec, %arena_get.exit ], [ %i.ea, %mallocx_arena_get.exit ] ; 2 uses
  %i.eg = urem i64 %i.dy, %.098
  %i.eh = sub nuw i64 %i.dy, %i.eg
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0103
  %i.ej = call i64 @je_arena_fill_small_fresh(ptr noundef nonnull %.0.i132151, ptr noundef nonnull %.3147, i32 noundef %.0.i125, ptr noundef %i.ei, i64 noundef %i.eh, i1 noundef zeroext %.0.i123) #20 ; 2 uses
  %i.ek = add i64 %i.ej, %.0103
  br label %bb.ac

bb.ac:                                            ; preds = %arena_get_from_ind.exit.thread169, %bb.y
  %.4 = phi ptr [ %.0145, %bb.y ], [ %.3147, %arena_get_from_ind.exit.thread169 ] ; 2 uses
  %.1104 = phi i64 [ %.0103, %bb.y ], [ %i.ek, %arena_get_from_ind.exit.thread169 ] ; 8 uses
  %.095 = phi i64 [ 0, %bb.y ], [ %i.ej, %arena_get_from_ind.exit.thread169 ] ; 9 uses
  switch i32 %i.di, label %mallocx_tcache_get.exit [
    i32 0, label %mallocx_tcache_get.exit.thread
    i32 256, label %.critedge119
  ], !prof !145

mallocx_tcache_get.exit:                          ; preds = %bb.ac
  switch i32 %i.dk, label %bb.ad [
    i32 -2, label %mallocx_tcache_get.exit.thread
    i32 -1, label %.critedge119
  ]

mallocx_tcache_get.exit.thread:                   ; preds = %bb.ac, %mallocx_tcache_get.exit
  %i.el = load i8, ptr %.0.i132151, align 1, !tbaa !40, !range !38, !noundef !39
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %tcache_get_from_ind.exit.thread178, label %.critedge119

bb.ad:                                            ; preds = %mallocx_tcache_get.exit
  %i.en = load ptr, ptr @je_tcaches, align 8, !tbaa !147
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.dm ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !24 ; 2 uses
  %magicptr.i = ptrtoint ptr %i.ep to i64
  switch i64 %magicptr.i, label %tcache_get_from_ind.exit [
    i64 0, label %bb.ae
    i64 1, label %bb.af
  ], !prof !148

bb.ae:                                            ; preds = %bb.ad
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.92, i32 noundef range(i32 0, -2) %i.dk) #20
  call void @abort() #21
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.eq = call ptr @je_tcache_create_explicit(ptr noundef nonnull %.0.i132151) #20 ; 2 uses
  store ptr %i.eq, ptr %i.eo, align 8, !tbaa !24
  br label %tcache_get_from_ind.exit

tcache_get_from_ind.exit:                         ; preds = %bb.af, %bb.ad
  %i.er = phi ptr [ %i.eq, %bb.af ], [ %i.ep, %bb.ad ] ; 2 uses
  %.not113 = icmp eq ptr %i.er, null
  br i1 %.not113, label %.critedge119, label %tcache_get_from_ind.exit.thread178, !prof !100

tcache_get_from_ind.exit.thread178:               ; preds = %mallocx_tcache_get.exit.thread, %tcache_get_from_ind.exit
  %.0.i181 = phi ptr [ %i.er, %tcache_get_from_ind.exit ], [ %i.dl, %mallocx_tcache_get.exit.thread ] ; 2 uses
  %i.es = load ptr, ptr %.0.i181, align 8, !tbaa !114
  %i.et = getelementptr i8, ptr %i.es, i64 48
  %.val136 = load i32, ptr %i.et, align 8, !tbaa !121
  %i.eu = icmp ult i32 %.0.i125, %.val136
  br i1 %i.eu, label %bb.ag, label %.critedge119, !prof !23

bb.ag:                                            ; preds = %tcache_get_from_ind.exit.thread178
  %i.ev = getelementptr inbounds nuw i8, ptr %.0.i181, i64 8
  %i.ew = getelementptr inbounds nuw [24 x i8], ptr %i.ev, i64 %i.cy ; 2 uses
  %.val = load ptr, ptr %i.ew, align 8, !tbaa !108
  %i.ex = icmp ne ptr %.val, @je_disabled_bin
  %i.ey = icmp ult i64 %.095, %i.dy
  %or.cond120 = select i1 %i.ex, i1 %i.ey, i1 false, !prof !25
  br i1 %or.cond120, label %bb.ah, label %.critedge119, !prof !25

bb.ah:                                            ; preds = %bb.ag
  %i.ez = icmp eq ptr %.099, null
  %.1100 = select i1 %i.ez, ptr %i.ew, ptr %.099  ; 7 uses
  %i.fa = sub nuw i64 %i.dy, %.095
  %i.fb = getelementptr [8 x i8], ptr %0, i64 %.1104 ; 10 uses
  %.1100.val = load ptr, ptr %.1100, align 8, !tbaa !108 ; 2 uses
  %i.fc = getelementptr i8, ptr %.1100, i64 20    ; 2 uses
  %.1100.val138 = load i16, ptr %i.fc, align 4, !tbaa !111
  %i.fd = ptrtoint ptr %.1100.val to i64
  %i.fe = trunc i64 %i.fd to i16
  %i.ff = sub i16 %.1100.val138, %i.fe
  %i.fg = lshr i16 %i.ff, 3
  %i.fh = zext nneg i16 %i.fg to i64
  %spec.select.i128201 = call i64 @llvm.umin.i64(i64 %i.fa, i64 %i.fh) ; 9 uses
  %i.fi = shl nuw nsw i64 %spec.select.i128201, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.fb, ptr align 8 %.1100.val, i64 %i.fi, i1 false)
  %i.fj = load ptr, ptr %.1100, align 8, !tbaa !108
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %spec.select.i128201 ; 2 uses
  store ptr %i.fk, ptr %.1100, align 8, !tbaa !108
  %.val3.i = load i16, ptr %i.fc, align 4, !tbaa !111 ; 2 uses
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = trunc i64 %i.fl to i16                  ; 2 uses
  %i.fn = sub i16 %.val3.i, %i.fm
  %i.fo = lshr i16 %i.fn, 3
  %i.fp = getelementptr i8, ptr %.1100, i64 16    ; 2 uses
  %.val4.i = load i16, ptr %i.fp, align 8, !tbaa !110
  %i.fq = sub i16 %.val3.i, %.val4.i
  %i.fr = lshr i16 %i.fq, 3
  %i.fs = icmp samesign ult i16 %i.fo, %i.fr
  br i1 %i.fs, label %bb.ai, label %cache_bin_low_water_adjust.exit

bb.ai:                                            ; preds = %bb.ah
  store i16 %i.fm, ptr %i.fp, align 8, !tbaa !110
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
  %i.w = and i32 %i.u, 1
  %i.x = lshr i32 %i.u, 1
  %spec.select.i = add nuw i32 %i.x, %i.w
  %.0.i47.i = select i1 %or.cond.i.i, i32 %spec.select.i, i32 %i.u
  %i.y = icmp ult i32 %.0.val48.i, %.0.i47.i
  br i1 %i.y, label %bb.l, label %arena_choose_impl.exit

bb.l:                                             ; preds = %percpu_arena_ind_limit.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 16, !tbaa !184
  %.not45.i = icmp eq ptr %i.aa, %0
  br i1 %.not45.i, label %arena_choose_impl.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = tail call i32 @sched_getcpu() #20, !inline_history !179 ; 3 uses
  %i.ac = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !20
  %i.ad = icmp eq i32 %i.ac, 3
  br i1 %i.ad, label %percpu_arena_choose.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = load i32, ptr @je_ncpus, align 4, !tbaa !20
  %i.af = lshr i32 %i.ae, 1                       ; 2 uses
  %i.ag = icmp ult i32 %i.ab, %i.af
  %i.ah = select i1 %i.ag, i32 0, i32 %i.af
  %spec.select.i.i = sub nuw i32 %i.ab, %i.ah
  br label %percpu_arena_choose.exit.i

percpu_arena_choose.exit.i:                       ; preds = %bb.n, %bb.m
  %.0.i.i = phi i32 [ %i.ab, %bb.m ], [ %spec.select.i.i, %bb.n ] ; 4 uses
  %.0.val.i = load i32, ptr %i.s, align 64, !tbaa !96
  %.not46.i = icmp eq i32 %.0.val.i, %.0.i.i
  br i1 %.not46.i, label %bb.u, label %bb.o

bb.o:                                             ; preds = %percpu_arena_choose.exit.i
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !50  ; 4 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 80640
  %.val.i.i = load i32, ptr %i.aj, align 64, !tbaa !96
  %.not.i50.i = icmp eq i32 %.val.i.i, %.0.i.i
  br i1 %.not.i50.i, label %percpu_arena_update.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = zext i32 %.0.i.i to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.ak
  %i.am = load atomic ptr, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.q, label %arena_get.exit.i.i, !prof !21

bb.q:                                             ; preds = %bb.p
  %i.ao = tail call ptr @je_arena_init(ptr noundef nonnull %0, i32 noundef %.0.i.i, ptr noundef nonnull @je_arena_config_default), !inline_history !180
  br label %arena_get.exit.i.i

arena_get.exit.i.i:                               ; preds = %bb.q, %bb.p
  %.0.i18.i.i = phi ptr [ %i.ao, %bb.q ], [ %i.am, %bb.p ] ; 3 uses
  tail call void @je_arena_nthreads_dec(ptr noundef nonnull %i.ai, i1 noundef zeroext false) #20, !inline_history !181
  tail call void @je_arena_nthreads_inc(ptr noundef %.0.i18.i.i, i1 noundef zeroext false) #20, !inline_history !181
  store ptr %.0.i18.i.i, ptr %i.g, align 8, !tbaa !50
  %i.ap = tail call i32 @je_arena_nthreads_get(ptr noundef nonnull %i.ai, i1 noundef zeroext false) #20, !inline_history !181
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.r, label %je_arena_migrate.exit.i.i

bb.r:                                             ; preds = %arena_get.exit.i.i
  %i.ar = load atomic i8, ptr @je_background_thread_enabled_state monotonic, align 1, !range !38, !noundef !39
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %je_arena_migrate.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @je_arena_decay(ptr noundef nonnull %0, ptr noundef nonnull %i.ai, i1 noundef zeroext false, i1 noundef zeroext true) #20, !inline_history !181
  br label %je_arena_migrate.exit.i.i

je_arena_migrate.exit.i.i:                        ; preds = %bb.s, %bb.r, %arena_get.exit.i.i
  %i.at = load i8, ptr %0, align 8, !tbaa !40, !range !38, !noundef !39
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.t, label %percpu_arena_update.exit.i

bb.t:                                             ; preds = %je_arena_migrate.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @je_tcache_arena_reassociate(ptr noundef nonnull %0, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.av, ptr noundef %.0.i18.i.i) #20, !inline_history !182
  br label %percpu_arena_update.exit.i

percpu_arena_update.exit.i:                       ; preds = %bb.t, %je_arena_migrate.exit.i.i, %bb.o
  %i.ax = load ptr, ptr %i.g, align 8, !tbaa !50
  br label %bb.u

bb.u:                                             ; preds = %percpu_arena_update.exit.i, %percpu_arena_choose.exit.i
  %.1.i = phi ptr [ %i.ax, %percpu_arena_update.exit.i ], [ %.0.i, %percpu_arena_choose.exit.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  store ptr %0, ptr %i.ay, align 16, !tbaa !184
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
  tail call void @je_arena_prefork8(ptr noundef %.0.i, ptr noundef nonnull %i.h) #20
  br label %arena_get.exit.thread

default.unreachable:                              ; preds = %arena_get.exit
  unreachable

arena_get.exit.thread:                            ; preds = %bb.c, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !185

._crit_edge:                                      ; preds = %arena_get.exit.thread
  %i.j = add nuw nsw i32 %.03541, 1               ; 2 uses
  %exitcond43.not = icmp eq i32 %i.j, 9
  br i1 %exitcond43.not, label %.split, label %.preheader, !llvm.loop !186

.split:                                           ; preds = %._crit_edge, %tsd_fetch_impl.exit
  tail call void @je_prof_prefork1(ptr noundef %.0.i) #20
  tail call void @je_stats_prefork(ptr noundef %.0.i) #20
  tail call void @je_tsd_prefork(ptr noundef %.0.i) #20
  ret void
}

declare void @je_witness_prefork(ptr noundef) local_unnamed_addr #5

declare void @je_ctl_prefork(ptr noundef) local_unnamed_addr #5

declare void @je_tcache_prefork(ptr noundef) local_unnamed_addr #5

declare void @je_malloc_mutex_prefork(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @je_background_thread_prefork0(ptr noundef) local_unnamed_addr #5

declare void @je_prof_prefork0(ptr noundef) local_unnamed_addr #5

declare void @je_background_thread_prefork1(ptr noundef) local_unnamed_addr #5

declare void @je_arena_prefork0(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @je_arena_prefork1(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @je_arena_prefork2(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @je_arena_prefork3(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @je_arena_prefork4(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @je_arena_prefork5(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @je_arena_prefork6(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @je_arena_prefork7(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @je_arena_prefork8(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @je_prof_prefork1(ptr noundef) local_unnamed_addr #5

declare void @je_stats_prefork(ptr noundef) local_unnamed_addr #5

declare void @je_tsd_prefork(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden void @je_jemalloc_postfork_parent() #2 {
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
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 9 uses
  tail call void @je_tsd_postfork_parent(ptr noundef %.0.i) #20
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i, i64 1952
  tail call void @je_witness_postfork_parent(ptr noundef nonnull %i.e) #20
  tail call void @je_stats_postfork_parent(ptr noundef %.0.i) #20
  %i.f = load atomic i32, ptr @narenas_total acquire, align 4 ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %tsd_fetch_impl.exit
  %wide.trip.count = zext i32 %i.f to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %arena_get.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %arena_get.exit.thread ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %indvars.iv
  %i.h = load atomic ptr, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %arena_get.exit.thread, label %arena_get.exit, !prof !21

arena_get.exit:                                   ; preds = %.lr.ph
  tail call void @je_arena_postfork_parent(ptr noundef %.0.i, ptr noundef nonnull %i.h) #20
  br label %arena_get.exit.thread

arena_get.exit.thread:                            ; preds = %.lr.ph, %arena_get.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !187

._crit_edge:                                      ; preds = %arena_get.exit.thread, %tsd_fetch_impl.exit
  tail call void @je_prof_postfork_parent(ptr noundef %.0.i) #20
  tail call void @je_background_thread_postfork_parent(ptr noundef %.0.i) #20
  tail call void @je_malloc_mutex_postfork_parent(ptr noundef %.0.i, ptr noundef nonnull @arenas_lock) #20
  tail call void @je_tcache_postfork_parent(ptr noundef %.0.i) #20
  tail call void @je_ctl_postfork_parent(ptr noundef %.0.i) #20
  ret void
}

declare void @je_tsd_postfork_parent(ptr noundef) local_unnamed_addr #5

declare void @je_witness_postfork_parent(ptr noundef) local_unnamed_addr #5

declare void @je_stats_postfork_parent(ptr noundef) local_unnamed_addr #5

declare void @je_arena_postfork_parent(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @je_prof_postfork_parent(ptr noundef) local_unnamed_addr #5

declare void @je_background_thread_postfork_parent(ptr noundef) local_unnamed_addr #5

declare void @je_malloc_mutex_postfork_parent(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @je_tcache_postfork_parent(ptr noundef) local_unnamed_addr #5

declare void @je_ctl_postfork_parent(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden void @je_jemalloc_postfork_child() #2 {
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
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 9 uses
  tail call void @je_tsd_postfork_child(ptr noundef %.0.i) #20
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i, i64 1952
  tail call void @je_witness_postfork_child(ptr noundef nonnull %i.e) #20
  tail call void @je_stats_postfork_child(ptr noundef %.0.i) #20
  %i.f = load atomic i32, ptr @narenas_total acquire, align 4 ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %tsd_fetch_impl.exit
  %wide.trip.count = zext i32 %i.f to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %arena_get.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %arena_get.exit.thread ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %indvars.iv
  %i.h = load atomic ptr, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %arena_get.exit.thread, label %arena_get.exit, !prof !21

arena_get.exit:                                   ; preds = %.lr.ph
  tail call void @je_arena_postfork_child(ptr noundef %.0.i, ptr noundef nonnull %i.h) #20
  br label %arena_get.exit.thread

arena_get.exit.thread:                            ; preds = %.lr.ph, %arena_get.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !188

._crit_edge:                                      ; preds = %arena_get.exit.thread, %tsd_fetch_impl.exit
  tail call void @je_prof_postfork_child(ptr noundef %.0.i) #20
  tail call void @je_background_thread_postfork_child(ptr noundef %.0.i) #20
  tail call void @je_malloc_mutex_postfork_child(ptr noundef %.0.i, ptr noundef nonnull @arenas_lock) #20
  tail call void @je_tcache_postfork_child(ptr noundef %.0.i) #20
  tail call void @je_ctl_postfork_child(ptr noundef %.0.i) #20
  ret void
}

declare void @je_tsd_postfork_child(ptr noundef) local_unnamed_addr #5

declare void @je_witness_postfork_child(ptr noundef) local_unnamed_addr #5

declare void @je_stats_postfork_child(ptr noundef) local_unnamed_addr #5

declare void @je_arena_postfork_child(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @je_prof_postfork_child(ptr noundef) local_unnamed_addr #5

declare void @je_background_thread_postfork_child(ptr noundef) local_unnamed_addr #5

declare void @je_malloc_mutex_postfork_child(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @je_tcache_postfork_child(ptr noundef) local_unnamed_addr #5

declare void @je_ctl_postfork_child(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @malloc_init_hard_a0() unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @init_lock, i64 72)) #20, !inline_history !1
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %malloc_mutex_trylock_final.exit.i, label %bb.b

malloc_mutex_trylock_final.exit.i:                ; preds = %bb.a
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 64) monotonic, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @init_lock) #20, !inline_history !2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %malloc_mutex_trylock_final.exit.i
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 56), align 8, !tbaa !46
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 56), align 8, !tbaa !46
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 48), align 8, !tbaa !47
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 48), align 8, !tbaa !47
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 40), align 8, !tbaa !48
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 40), align 8, !tbaa !48
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.g = tail call fastcc zeroext i1 @malloc_init_hard_a0_locked()
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 64) monotonic, align 8
  %i.h = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @init_lock, i64 72)) #20, !inline_history !3 ; 0 uses
  ret i1 %i.g
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @malloc_init_hard_a0_locked() unnamed_addr #2 {
bb.a:
  %0 = alloca %struct.sc_data_s, align 8          ; 8 uses
  %i.a = alloca [36 x i32], align 16              ; 5 uses
  %i.b = alloca [4097 x i8], align 16             ; 6 uses
  %i.c = tail call i64 @pthread_self() #22
  store i64 %i.c, ptr @malloc_initializer, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6576) %0, i8 0, i64 6576, i1 false)
  call void @je_sc_boot(ptr noundef nonnull %0) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @je_bin_shard_sizes_boot(ptr noundef nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i8 0, ptr %i.b, align 16, !tbaa !24
  call void @je_malloc_conf_init(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #20
  %i.d = load i64, ptr @je_opt_lg_san_uaf_align, align 8, !tbaa !41
  call void @je_san_init(i64 noundef %i.d) #20
  %i.e = load i8, ptr @je_opt_cache_oblivious, align 1, !tbaa !40, !range !38, !noundef !39
  %i.f = trunc nuw i8 %i.e to i1
  call void @je_sz_boot(ptr noundef nonnull %0, i1 noundef zeroext %i.f) #20
  call void @je_bin_info_boot(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #20
  %i.g = load i8, ptr @je_opt_stats_print, align 1, !tbaa !40, !range !38, !noundef !39
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = call i32 @atexit(ptr noundef nonnull @stats_print_atexit) #20
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @je_malloc_write(ptr noundef nonnull @.str.85) #20
  %i.j = load i8, ptr @je_opt_abort, align 1, !tbaa !40, !range !38, !noundef !39
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @abort() #21
  unreachable

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.l = call zeroext i1 @je_stats_boot() #20
  br i1 %i.l, label %bb.aa, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = call zeroext i1 @je_pages_boot() #20
  br i1 %i.m, label %bb.aa, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = call zeroext i1 @je_base_boot(ptr noundef null) #20
  br i1 %i.n, label %bb.aa, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = call ptr @je_b0get() #20
  %i.p = call zeroext i1 @je_emap_init(ptr noundef nonnull @je_arena_emap_global, ptr noundef %i.o, i1 noundef zeroext true) #20
  br i1 %i.p, label %bb.aa, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = call zeroext i1 @je_extent_boot() #20
  br i1 %i.q, label %bb.aa, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = call zeroext i1 @je_ctl_boot() #20
  br i1 %i.r, label %bb.aa, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = load i8, ptr @je_opt_hpa, align 1, !tbaa !40, !range !38, !noundef !39
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.u = call zeroext i1 @je_hpa_supported() #20
  br i1 %i.u, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = load i8, ptr @je_opt_abort_conf, align 1, !tbaa !40, !range !38, !noundef !39
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = select i1 %i.w, ptr @.str.87, ptr @.str.88
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.86, ptr noundef nonnull %i.x) #20
  %i.y = load i8, ptr @je_opt_abort_conf, align 1, !tbaa !40, !range !38, !noundef !39
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @je_malloc_abort_invalid_conf() #20
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  store i8 0, ptr @je_opt_hpa, align 1, !tbaa !40
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.l, %bb.k
  %i.aa = call ptr @je_b0get() #20
  %i.ab = load i8, ptr @je_opt_hpa, align 1, !tbaa !40, !range !38, !noundef !39
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = call zeroext i1 @je_arena_boot(ptr noundef nonnull %0, ptr noundef %i.aa, i1 noundef zeroext %i.ac) #20
  br i1 %i.ad, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ae = call ptr @je_b0get() #20
  %i.af = call zeroext i1 @je_tcache_boot(ptr noundef null, ptr noundef %i.ae) #20
  br i1 %i.af, label %bb.aa, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ag = call zeroext i1 @je_malloc_mutex_init(ptr noundef nonnull @arenas_lock, ptr noundef nonnull @.str.89, i32 noundef 4, i32 noundef 0) #20
  br i1 %i.ag, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ah = call zeroext i1 @je_hook_boot() #20     ; 0 uses
  %i.ai = call zeroext i1 @je_experimental_thread_events_boot() #20 ; 0 uses
  store i32 1, ptr @je_narenas_auto, align 4, !tbaa !20
  store i32 2, ptr @je_manual_arena_base, align 4, !tbaa !20
  store i64 0, ptr @je_arenas, align 64
  %i.aj = call ptr @je_arena_init(ptr noundef null, i32 noundef 0, ptr noundef nonnull @je_arena_config_default)
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.aa, label %arena_get.exit

arena_get.exit:                                   ; preds = %bb.s
  %i.al = load atomic ptr, ptr @je_arenas acquire, align 64
  store ptr %i.al, ptr @a0, align 8, !tbaa !50
  %i.am = load i8, ptr @je_opt_hpa, align 1, !tbaa !40, !range !38, !noundef !39
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.t, label %bb.x

bb.t:                                             ; preds = %arena_get.exit
  %i.ao = call zeroext i1 @je_hpa_supported() #20
  br i1 %i.ao, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ap = load i8, ptr @je_opt_abort_conf, align 1, !tbaa !40, !range !38, !noundef !39
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = select i1 %i.aq, ptr @.str.87, ptr @.str.88
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.86, ptr noundef nonnull %i.ar) #20
  %i.as = load i8, ptr @je_opt_abort_conf, align 1, !tbaa !40, !range !38, !noundef !39
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @je_malloc_abort_invalid_conf() #20
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  store i8 0, ptr @je_opt_hpa, align 1, !tbaa !40
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.t, %arena_get.exit
  store i32 2, ptr @je_malloc_init_state, align 4, !tbaa !20
  %i.au = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #24 ; 2 uses
  %.not8 = icmp eq i64 %i.au, 0
  br i1 %.not8, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = add i64 %i.au, 1                        ; 2 uses
  %i.aw = call fastcc ptr @a0ialloc(i64 noundef %i.av, i1 noundef zeroext false, i1 noundef zeroext true) ; 3 uses
  %.not9 = icmp eq ptr %i.aw, null
  br i1 %.not9, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aw, ptr nonnull align 16 %i.b, i64 %i.av, i1 false)
  store ptr %i.aw, ptr @je_opt_malloc_conf_symlink, align 8, !tbaa !190
  br label %bb.aa

bb.aa:                                            ; preds = %bb.x, %bb.z, %bb.y, %bb.s, %bb.r, %bb.q, %bb.p, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.0 = phi i1 [ true, %bb.s ], [ true, %bb.e ], [ true, %bb.f ], [ true, %bb.g ], [ true, %bb.h ], [ true, %bb.i ], [ true, %bb.j ], [ true, %bb.p ], [ true, %bb.q ], [ true, %bb.r ], [ false, %bb.y ], [ false, %bb.z ], [ false, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  ret i1 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @pthread_self() local_unnamed_addr #13

declare void @je_sc_boot(ptr noundef) local_unnamed_addr #5

declare void @je_bin_shard_sizes_boot(ptr noundef) local_unnamed_addr #5

declare void @je_malloc_conf_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @je_san_init(i64 noundef) local_unnamed_addr #5

declare void @je_sz_boot(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare void @je_bin_info_boot(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare i32 @atexit(ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define internal void @stats_print_atexit() #2 {
bb.a:
  %0 = alloca %struct.buf_writer_t, align 8       ; 5 uses
  %i.a = load i8, ptr @je_tsd_booted, align 1, !tbaa !40, !range !38, !noundef !39
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %tsdn_fetch.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 920
  %i.e = load i8, ptr %i.d, align 8, !tbaa !24
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %tsdn_fetch.exit, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false) #20
  br label %tsdn_fetch.exit

tsdn_fetch.exit:                                  ; preds = %bb.c, %bb.b, %bb.a
  %.0.i = phi ptr [ null, %bb.a ], [ %i.f, %bb.c ], [ %i.c, %bb.b ] ; 3 uses
  %i.g = load atomic i32, ptr @narenas_total acquire, align 4 ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph31.preheader

.lr.ph31.preheader:                               ; preds = %tsdn_fetch.exit
  %wide.trip.count = zext i32 %i.g to i64
  br label %.lr.ph31

.lr.ph31:                                         ; preds = %.lr.ph31.preheader, %arena_get.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph31.preheader ], [ %indvars.iv.next, %arena_get.exit.thread ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %indvars.iv
  %i.i = load atomic ptr, ptr %i.h acquire, align 8 ; 10 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %arena_get.exit.thread, label %arena_get.exit, !prof !21

arena_get.exit:                                   ; preds = %.lr.ph31
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 12064 ; 2 uses
  %i.l = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.k) #20, !inline_history !1
  %.not.i24 = icmp eq i32 %i.l, 0
  br i1 %.not.i24, label %malloc_mutex_trylock_final.exit.i, label %bb.d

malloc_mutex_trylock_final.exit.i:                ; preds = %arena_get.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 12056
  store atomic i8 1, ptr %i.m monotonic, align 1
  br label %bb.e

bb.d:                                             ; preds = %arena_get.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 11992
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.n) #20, !inline_history !2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %malloc_mutex_trylock_final.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 12048 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !46
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.o, align 8, !tbaa !46
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 12040 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !47
  %.not.i.i = icmp eq ptr %i.s, %.0.i
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %.0.i, ptr %i.r, align 8, !tbaa !47
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 12032 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !48
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.t, align 8, !tbaa !48
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.e, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 11976 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !192  ; 2 uses
  %.not2028 = icmp eq ptr %i.x, null
  br i1 %.not2028, label %select.unfold._crit_edge, label %select.unfold

select.unfold:                                    ; preds = %malloc_mutex_lock.exit, %select.unfold
  %.029 = phi ptr [ %i.aa, %select.unfold ], [ %i.x, %malloc_mutex_lock.exit ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.029, i64 232
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !193
  tail call void @je_tcache_stats_merge(ptr noundef %.0.i, ptr noundef %i.z, ptr noundef nonnull %i.i) #20
  %i.aa = load ptr, ptr %.029, align 8, !tbaa !194 ; 3 uses
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !192
  %.not21 = icmp eq ptr %i.aa, %i.ab
  %.not2035 = icmp eq ptr %i.aa, null
  %.not20 = or i1 %.not21, %.not2035
  br i1 %.not20, label %select.unfold._crit_edge, label %select.unfold

select.unfold._crit_edge:                         ; preds = %select.unfold, %malloc_mutex_lock.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 12056
  store atomic i8 0, ptr %i.ac monotonic, align 8
  %i.ad = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.k) #20, !inline_history !3 ; 0 uses
  br label %arena_get.exit.thread

arena_get.exit.thread:                            ; preds = %.lr.ph31, %select.unfold._crit_edge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph31, !llvm.loop !191

._crit_edge:                                      ; preds = %arena_get.exit.thread, %tsdn_fetch.exit
  %i.ae = load i8, ptr @je_tsd_booted, align 1, !tbaa !40, !range !38, !noundef !39
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.g, label %malloc_stats_print.exit

bb.g:                                             ; preds = %._crit_edge
  %i.ag = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 920
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !24
  %.not.i.i25 = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i25, label %malloc_stats_print.exit, label %bb.h, !prof !23

bb.h:                                             ; preds = %bb.g
  %i.aj = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.ag, i1 noundef zeroext false) #20, !inline_history !195
  br label %malloc_stats_print.exit

malloc_stats_print.exit:                          ; preds = %._crit_edge, %bb.g, %bb.h
  %.0.i.i = phi ptr [ null, %._crit_edge ], [ %i.aj, %bb.h ], [ %i.ag, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  %i.ak = call zeroext i1 @je_buf_writer_init(ptr noundef %.0.i.i, ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef null, i64 noundef 65536) #20, !inline_history !195 ; 0 uses
  call void @je_stats_print(ptr noundef nonnull @je_buf_writer_cb, ptr noundef nonnull %0, ptr noundef nonnull @je_opt_stats_print_opts) #20, !inline_history !195
  call void @je_buf_writer_terminate(ptr noundef %.0.i.i, ptr noundef nonnull %0) #20, !inline_history !195
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  ret void
}

declare void @je_malloc_write(ptr noundef) local_unnamed_addr #5

declare zeroext i1 @je_stats_boot() local_unnamed_addr #5

declare zeroext i1 @je_pages_boot() local_unnamed_addr #5

declare zeroext i1 @je_base_boot(ptr noundef) local_unnamed_addr #5

declare zeroext i1 @je_emap_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare ptr @je_b0get() local_unnamed_addr #5

declare zeroext i1 @je_extent_boot() local_unnamed_addr #5

declare zeroext i1 @je_ctl_boot() local_unnamed_addr #5

declare zeroext i1 @je_hpa_supported() local_unnamed_addr #5

declare void @je_malloc_printf(ptr noundef, ...) local_unnamed_addr #5

declare void @je_malloc_abort_invalid_conf() local_unnamed_addr #5

declare zeroext i1 @je_arena_boot(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare zeroext i1 @je_tcache_boot(ptr noundef, ptr noundef) local_unnamed_addr #5

declare zeroext i1 @je_malloc_mutex_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare zeroext i1 @je_hook_boot() local_unnamed_addr #5

declare zeroext i1 @je_experimental_thread_events_boot() local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare void @je_tcache_stats_merge(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @je_arena_malloc_hard(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

declare void @je_tcache_bin_flush_stashed(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

declare ptr @je_tcache_alloc_small_hard(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare ptr @je_large_malloc(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @arena_dalloc_no_tcache(ptr noundef %0, ptr noundef %1) unnamed_addr #11 {
bb.a:
  %2 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %3 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c, !prof !21

bb.b:                                             ; preds = %bb.a
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %2) #20
  br label %tsdn_rtree_ctx.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.b, %bb.c
  %.0.i6 = phi ptr [ %2, %bb.b ], [ %i.b, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.c = ptrtoint ptr %1 to i64
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %0, ptr noundef nonnull %.0.i6, i64 noundef %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 17
  %i.e = load i8, ptr %i.d, align 1, !tbaa !37, !range !38, !noundef !39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %emap_alloc_ctx_usize_get.exit, !prof !23

bb.d:                                             ; preds = %tsdn_rtree_ctx.exit
  call void @je_arena_dalloc_small(ptr noundef %0, ptr noundef %1) #20
  br label %bb.e

emap_alloc_ctx_usize_get.exit:                    ; preds = %tsdn_rtree_ctx.exit
  call fastcc void @arena_dalloc_large_no_tcache(ptr noundef %0, ptr noundef %1)
  br label %bb.e

bb.e:                                             ; preds = %emap_alloc_ctx_usize_get.exit, %bb.d
  ret void
}

declare void @je_arena_dalloc_small(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @arena_dalloc_large_no_tcache(ptr noundef %0, ptr noundef %1) unnamed_addr #11 {
bb.a:
  %2 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %3 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c, !prof !21

bb.b:                                             ; preds = %bb.a
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %2) #20
  br label %tsdn_rtree_ctx.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %2, %bb.b ], [ %i.b, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.c = ptrtoint ptr %1 to i64
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %0, ptr noundef nonnull %.0.i, i64 noundef %i.c)
  %i.d = load ptr, ptr %3, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @je_large_dalloc(ptr noundef %0, ptr noundef %i.d) #20
  ret void
}

declare void @je_large_dalloc(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @je_tcache_bin_flush_small(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @je_tcache_bin_flush_large(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @je_malloc_mutex_lock_slow(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pthread_mutex_trylock(ptr noundef) local_unnamed_addr #17

declare ptr @je_arena_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #17

declare zeroext i1 @je_background_thread_create(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @sched_getcpu() local_unnamed_addr #17

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #13

declare ptr @je_arena_palloc(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #16

declare ptr @je_tsd_fetch_slow(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare ptr @je_tcache_create_explicit(ptr noundef) local_unnamed_addr #5

declare ptr @je_arena_ralloc(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @arena_sdalloc_no_tcache(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  %i.a = icmp ult i64 %2, 4097
  br i1 %i.a, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %2, 7
  %i.c = lshr i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !24
  %i.f = zext i8 %i.e to i32
  br label %sz_size2index.exit

bb.c:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.g, label %emap_alloc_ctx_usize_get.exit, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %2, 1
  %i.i = add i64 %i.h, -1
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.i, i1 true) ; 3 uses
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
  %.0.i7 = phi i32 [ %i.f, %bb.b ], [ %i.t, %bb.d ]
  %i.u = icmp samesign ult i32 %.0.i7, 36
  br i1 %i.u, label %bb.e, label %emap_alloc_ctx_usize_get.exit, !prof !149

bb.e:                                             ; preds = %sz_size2index.exit
  tail call void @je_arena_dalloc_small(ptr noundef %0, ptr noundef %1) #20
  br label %bb.f

emap_alloc_ctx_usize_get.exit:                    ; preds = %bb.c, %sz_size2index.exit
  tail call fastcc void @arena_dalloc_large_no_tcache(ptr noundef %0, ptr noundef %1)
  br label %bb.f

bb.f:                                             ; preds = %emap_alloc_ctx_usize_get.exit, %bb.e
  ret void
}

declare void @je_safety_check_fail(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @rtree_read(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 18)) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #11 {
bb.a:
  %i.a = lshr i64 %3, 30
  %i.b = and i64 %i.a, 15
  %i.c = and i64 %3, -1073741824                  ; 11 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.b ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !143  ; 3 uses
  %i.f = icmp eq i64 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !144
  %i.i = lshr i64 %3, 12
  %i.j = and i64 %i.i, 262143
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  br label %rtree_leaf_elm_lookup.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !143
  %i.n = icmp eq i64 %i.m, %i.c
  br i1 %i.n, label %bb.d, label %.preheader.preheader, !prof !23

.preheader.preheader:                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !143
  %i.q = icmp eq i64 %i.p, %i.c
  br i1 %i.q, label %bb.f, label %.preheader.1, !prof !23

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !144  ; 2 uses
  store i64 %i.e, ptr %i.l, align 8, !tbaa !143
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !144
  store ptr %i.u, ptr %i.r, align 8, !tbaa !144
  store i64 %i.c, ptr %i.d, align 8, !tbaa !143
  store ptr %i.s, ptr %i.t, align 8, !tbaa !144
  %i.v = lshr i64 %3, 12
  %i.w = and i64 %i.v, 262143
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.w
  br label %rtree_leaf_elm_lookup.exit

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !143
  %i.aa = icmp eq i64 %i.z, %i.c
  br i1 %i.aa, label %bb.f, label %.preheader.2, !prof !23

.preheader.2:                                     ; preds = %.preheader.1
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !143
  %i.ad = icmp eq i64 %i.ac, %i.c
  br i1 %i.ad, label %bb.f, label %.preheader.3, !prof !23

.preheader.3:                                     ; preds = %.preheader.2
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 320 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !143
  %i.ag = icmp eq i64 %i.af, %i.c
  br i1 %i.ag, label %bb.f, label %.preheader.4, !prof !23

.preheader.4:                                     ; preds = %.preheader.3
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 336 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !143
  %i.aj = icmp eq i64 %i.ai, %i.c
  br i1 %i.aj, label %bb.f, label %.preheader.5, !prof !23

.preheader.5:                                     ; preds = %.preheader.4
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 352 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !143
  %i.am = icmp eq i64 %i.al, %i.c
  br i1 %i.am, label %bb.f, label %.preheader.6, !prof !23

.preheader.6:                                     ; preds = %.preheader.5
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 368 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !143
  %i.ap = icmp eq i64 %i.ao, %i.c
  br i1 %i.ap, label %bb.f, label %bb.e, !prof !23

bb.e:                                             ; preds = %.preheader.6
  %i.aq = tail call ptr @je_rtree_leaf_elm_lookup_hard(ptr noundef %1, ptr noundef nonnull @je_arena_emap_global, ptr noundef nonnull %2, i64 noundef %3, i1 noundef zeroext true, i1 noundef zeroext false) #20
  br label %rtree_leaf_elm_lookup.exit

bb.f:                                             ; preds = %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.lcssa = phi ptr [ %i.o, %.preheader.preheader ], [ %i.y, %.preheader.1 ], [ %i.ab, %.preheader.2 ], [ %i.ae, %.preheader.3 ], [ %i.ah, %.preheader.4 ], [ %i.ak, %.preheader.5 ], [ %i.an, %.preheader.6 ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !144 ; 2 uses
  %i.at = getelementptr i8, ptr %.lcssa, i64 -16  ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !143
  store i64 %i.au, ptr %.lcssa, align 8, !tbaa !143
  %i.av = getelementptr i8, ptr %.lcssa, i64 -8   ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !144
  store ptr %i.aw, ptr %i.ar, align 8, !tbaa !144
  store i64 %i.e, ptr %i.at, align 8, !tbaa !143
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !144
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !144
  store i64 %i.c, ptr %i.d, align 8, !tbaa !143
  store ptr %i.as, ptr %i.ax, align 8, !tbaa !144
  %i.az = lshr i64 %3, 12
  %i.ba = and i64 %i.az, 262143
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ba
  br label %rtree_leaf_elm_lookup.exit

rtree_leaf_elm_lookup.exit:                       ; preds = %bb.f, %bb.b, %bb.d, %bb.e
  %.1.i = phi ptr [ %i.k, %bb.b ], [ %i.x, %bb.d ], [ %i.aq, %bb.e ], [ %i.bb, %bb.f ]
  %i.bc = load atomic ptr, ptr %.1.i monotonic, align 8, !noalias !200
  %i.bd = ptrtoint ptr %i.bc to i64               ; 4 uses
  %i.be = lshr i64 %i.bd, 48
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bf, ptr %i.bg, align 8, !tbaa !36, !alias.scope !201
  %i.bh = trunc i64 %i.bd to i8                   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.bj = and i8 %i.bh, 1
  store i8 %i.bj, ptr %i.bi, align 1, !tbaa !37, !alias.scope !201
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = lshr i8 %i.bh, 1
  %i.bm = and i8 %i.bl, 1
  store i8 %i.bm, ptr %i.bk, align 8, !tbaa !202, !alias.scope !201
  %i.bn = trunc i64 %i.bd to i32
  %i.bo = lshr i32 %i.bn, 2
  %i.bp = and i32 %i.bo, 7
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !203, !alias.scope !201
  %i.br = shl i64 %i.bd, 16
  %i.bs = ashr exact i64 %i.br, 16
  %i.bt = and i64 %i.bs, -128
  %i.bu = inttoptr i64 %i.bt to ptr
  store ptr %i.bu, ptr %0, align 8, !tbaa !31, !alias.scope !201
  ret void
}

declare void @je_rtree_ctx_data_init(ptr noundef) local_unnamed_addr #5

declare ptr @je_rtree_leaf_elm_lookup_hard(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

declare zeroext i1 @je_arena_ralloc_no_move(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #5

declare void @je_te_event_trigger(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @malloc_init_hard() unnamed_addr #2 {
bb.a:
  %0 = alloca %struct.cpu_set_t, align 8          ; 4 uses
  %1 = alloca %struct.cpu_set_t, align 8          ; 4 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %2 = alloca %struct.hpa_shard_opts_s, align 8   ; 6 uses
  %i.b = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @init_lock, i64 72)) #20, !inline_history !1
  %.not.i19 = icmp eq i32 %i.b, 0
  br i1 %.not.i19, label %malloc_mutex_trylock_final.exit.i, label %bb.b

malloc_mutex_trylock_final.exit.i:                ; preds = %bb.a
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 64) monotonic, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @init_lock) #20, !inline_history !2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %malloc_mutex_trylock_final.exit.i
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 56), align 8, !tbaa !46
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 56), align 8, !tbaa !46
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 48), align 8, !tbaa !47
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 48), align 8, !tbaa !47
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 40), align 8, !tbaa !48
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 40), align 8, !tbaa !48
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.h = load i32, ptr @je_malloc_init_state, align 4, !tbaa !20 ; 3 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  %i.j = load i64, ptr @malloc_initializer, align 8, !tbaa !41 ; 2 uses
  %i.k = tail call i64 @pthread_self() #22, !inline_history !204
  %i.l = icmp eq i64 %i.j, %i.k                   ; 2 uses
  %i.m = icmp eq i32 %i.h, 1
  %or.cond.i = and i1 %i.m, %i.l
  br i1 %or.cond.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i20 = icmp eq i64 %i.j, 0
  %brmerge.i = or i1 %.not.i20, %i.l
  br i1 %brmerge.i, label %malloc_init_hard_needed.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f, %malloc_mutex_lock.exit.i
  %.sroa.0.0.i = phi i32 [ %.sroa.0.1.i, %malloc_mutex_lock.exit.i ], [ 0, %bb.f ] ; 5 uses
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 64) monotonic, align 8
  %i.n = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @init_lock, i64 72)) #20, !inline_history !205 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = icmp ult i32 %.sroa.0.0.i, 5
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.preheader.i
  store volatile i32 0, ptr %i.a, align 4, !tbaa !20
  %.0..0..0..0..0..0..0..0.5.i.i = load volatile i32, ptr %i.a, align 4, !tbaa !20
  %.0..highbits6.i.i = lshr i32 %.0..0..0..0..0..0..0..0.5.i.i, %.sroa.0.0.i
  %i.p = icmp eq i32 %.0..highbits6.i.i, 0
  br i1 %i.p, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  tail call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #20, !inline_history !206, !srcloc !220
  %.0..0..0..0..0..0..0..0.1.i.i = load volatile i32, ptr %i.a, align 4, !tbaa !20
  %i.q = add i32 %.0..0..0..0..0..0..0..0.1.i.i, 1
  store volatile i32 %i.q, ptr %i.a, align 4, !tbaa !20
  %.0..0..0..0..0..0..0..0..i.i = load volatile i32, ptr %i.a, align 4, !tbaa !20
  %.0..highbits.i.i = lshr i32 %.0..0..0..0..0..0..0..0..i.i, %.sroa.0.0.i
  %i.r = icmp eq i32 %.0..highbits.i.i, 0
  br i1 %i.r, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !207

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.g
  %i.s = add nuw nsw i32 %.sroa.0.0.i, 1
  br label %spin_adaptive.exit.i

bb.h:                                             ; preds = %.preheader.i
  %i.t = tail call i32 @sched_yield() #20, !inline_history !208 ; 0 uses
  br label %spin_adaptive.exit.i

spin_adaptive.exit.i:                             ; preds = %bb.h, %._crit_edge.i.i
  %.sroa.0.1.i = phi i32 [ %i.s, %._crit_edge.i.i ], [ %.sroa.0.0.i, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @init_lock, i64 72)) #20, !inline_history !209
  %.not.i.i21 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i21, label %malloc_mutex_trylock_final.exit.i.i, label %bb.i

malloc_mutex_trylock_final.exit.i.i:              ; preds = %spin_adaptive.exit.i
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 64) monotonic, align 8
  br label %bb.j

bb.i:                                             ; preds = %spin_adaptive.exit.i
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @init_lock) #20, !inline_history !210
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %malloc_mutex_trylock_final.exit.i.i
  %i.v = load i64, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 56), align 8, !tbaa !46
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 56), align 8, !tbaa !46
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 48), align 8, !tbaa !47
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %malloc_mutex_lock.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 48), align 8, !tbaa !47
  %i.y = load i64, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 40), align 8, !tbaa !48
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 40), align 8, !tbaa !48
  br label %malloc_mutex_lock.exit.i

malloc_mutex_lock.exit.i:                         ; preds = %bb.k, %bb.j
  %i.aa = load i32, ptr @je_malloc_init_state, align 4, !tbaa !20
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.loopexit, label %.preheader.i, !llvm.loop !211

.loopexit:                                        ; preds = %malloc_mutex_lock.exit.i, %malloc_mutex_lock.exit, %bb.e
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 64) monotonic, align 8
  %i.ac = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @init_lock, i64 72)) #20, !inline_history !212 ; 0 uses
  br label %malloc_init_hard_cleanup.exit

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
  %i.cm = icmp ne i32 %i.cl, 1
  %i.cn = and i32 %i.ch, 1                        ; 2 uses
  %.not6.i = icmp eq i32 %i.cn, 0
  %or.cond.i31 = or i1 %.not6.i, %i.cm
  br i1 %or.cond.i31, label %percpu_arena_ind_limit.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.98, i32 noundef %i.ch) #20, !inline_history !217
  %i.co = load i8, ptr @je_opt_abort, align 1, !tbaa !40, !range !38, !noundef !39
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.an, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.am
  %.pre.i = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !20
  %.pre17.i = load i32, ptr @je_ncpus, align 4    ; 2 uses
  %.pre = and i32 %.pre17.i, 1
  br label %percpu_arena_ind_limit.exit.i

bb.an:                                            ; preds = %bb.am
  call void @abort() #21, !inline_history !217
  unreachable

percpu_arena_ind_limit.exit.i:                    ; preds = %._crit_edge.i, %bb.al
  %.pre-phi = phi i32 [ %.pre, %._crit_edge.i ], [ %i.cn, %bb.al ]
  %i.cq = phi i32 [ %.pre17.i, %._crit_edge.i ], [ %i.ch, %bb.al ] ; 3 uses
  %i.cr = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.cl, %bb.al ]
  %i.cs = icmp eq i32 %i.cr, 1
  %i.ct = icmp ugt i32 %i.cq, 1
  %or.cond.i.i = and i1 %i.ct, %i.cs
  %i.cu = lshr i32 %i.cq, 1
  %spec.select.i = add nuw i32 %i.cu, %.pre-phi
  %.0.i.i = select i1 %or.cond.i.i, i32 %spec.select.i, i32 %i.cq ; 2 uses
  %i.cv = load i32, ptr @je_opt_narenas, align 4, !tbaa !20 ; 2 uses
  %i.cw = icmp ult i32 %i.cv, %.0.i.i
  br i1 %i.cw, label %thread-pre-split15.sink.split.i, label %bb.ao

thread-pre-split.i:                               ; preds = %malloc_narenas_default.exit.i, %pre_reentrancy.exit
  %.pr.i = load i32, ptr @je_opt_narenas, align 4, !tbaa !20
  br label %bb.ao

bb.ao:                                            ; preds = %thread-pre-split.i, %percpu_arena_ind_limit.exit.i
  %.pr16.i = phi i32 [ %.pr.i, %thread-pre-split.i ], [ %i.cv, %percpu_arena_ind_limit.exit.i ] ; 2 uses
  %i.cx = icmp eq i32 %.pr16.i, 0
  br i1 %i.cx, label %bb.ap, label %thread-pre-split15.i

bb.ap:                                            ; preds = %bb.ao
  %i.cy = load i32, ptr @je_ncpus, align 4, !tbaa !20 ; 2 uses
  %i.cz = icmp ugt i32 %i.cy, 1
  br i1 %i.cz, label %bb.aq, label %thread-pre-split15.sink.split.i

bb.aq:                                            ; preds = %bb.ap
  %i.da = shl i32 %i.cy, 16
  %i.db = load i32, ptr @je_opt_narenas_ratio, align 4, !tbaa !20
  %i.dc = zext i32 %i.da to i64
  %i.dd = zext i32 %i.db to i64
  %i.de = mul nuw i64 %i.dd, %i.dc
  %i.df = lshr exact i64 %i.de, 16
  %i.dg = trunc i64 %i.df to i32                  ; 2 uses
  %i.dh = lshr i32 %i.dg, 15
  %.lobit.i.i12.i = and i32 %i.dh, 1
  %i.di = lshr i32 %i.dg, 16
  %i.dj = add nuw nsw i32 %.lobit.i.i12.i, %i.di
  %..i13.i = call i32 @llvm.umax.i32(i32 %i.dj, i32 1)
  br label %thread-pre-split15.sink.split.i

thread-pre-split15.sink.split.i:                  ; preds = %bb.aq, %bb.ap, %percpu_arena_ind_limit.exit.i
  %.0.i.sink.i = phi i32 [ %.0.i.i, %percpu_arena_ind_limit.exit.i ], [ %..i13.i, %bb.aq ], [ 1, %bb.ap ] ; 2 uses
  store i32 %.0.i.sink.i, ptr @je_opt_narenas, align 4, !tbaa !20
  br label %thread-pre-split15.i

thread-pre-split15.i:                             ; preds = %thread-pre-split15.sink.split.i, %bb.ao
  %i.dk = phi i32 [ %.pr16.i, %bb.ao ], [ %.0.i.sink.i, %thread-pre-split15.sink.split.i ] ; 3 uses
  store i32 %i.dk, ptr @je_narenas_auto, align 4, !tbaa !20
  %i.dl = icmp ugt i32 %i.dk, 4094
  br i1 %i.dl, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %thread-pre-split15.i
  store i32 4094, ptr @je_narenas_auto, align 4, !tbaa !20
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.99, i32 noundef 4094) #20, !inline_history !217
  %.pre18.i = load i32, ptr @je_narenas_auto, align 4, !tbaa !20
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %thread-pre-split15.i
  %i.dm = phi i32 [ %.pre18.i, %bb.ar ], [ %i.dk, %thread-pre-split15.i ]
  store atomic i32 %i.dm, ptr @narenas_total release, align 4
  %i.dn = load ptr, ptr @a0, align 8, !tbaa !50
  %i.do = call zeroext i1 @je_arena_init_huge(ptr noundef nonnull %i.ag, ptr noundef %i.dn) #20, !inline_history !217
  br i1 %i.do, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.dp = atomicrmw add ptr @narenas_total, i32 1 release, align 4 ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.dq = load atomic i32, ptr @narenas_total acquire, align 4
  store i32 %i.dq, ptr @je_manual_arena_base, align 4, !tbaa !20
  %i.dr = call ptr @je_b0get() #20
  %i.ds = call zeroext i1 @je_background_thread_boot1(ptr noundef nonnull %i.ag, ptr noundef %i.dr) #20
  br i1 %i.ds, label %malloc_init_narenas.exit.thread, label %bb.aw

malloc_init_narenas.exit.thread:                  ; preds = %bb.aj, %bb.au
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 64) monotonic, align 8
  %i.dt = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @init_lock, i64 72)) #20, !inline_history !212 ; 0 uses
  %i.du = load i8, ptr %i.bl, align 1, !tbaa !24
  %i.dv = add i8 %i.du, -1                        ; 2 uses
  store i8 %i.dv, ptr %i.bl, align 1, !tbaa !24
  %i.dw = icmp eq i8 %i.dv, 0
  br i1 %i.dw, label %bb.av, label %malloc_init_hard_cleanup.exit

bb.av:                                            ; preds = %malloc_init_narenas.exit.thread
  call void @je_tsd_slow_update(ptr noundef nonnull %i.ag) #20, !inline_history !218
  br label %malloc_init_hard_cleanup.exit

bb.aw:                                            ; preds = %bb.au
  %i.dx = load i8, ptr @je_opt_hpa, align 1, !tbaa !40, !range !38, !noundef !39
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %arena_get.exit, label %bb.ay

arena_get.exit:                                   ; preds = %bb.aw
  %i.dz = load atomic ptr, ptr @je_arenas acquire, align 64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(80) @je_opt_hpa_opts, i64 80, i1 false), !tbaa.struct !221
  %i.ea = load atomic i8, ptr @je_background_thread_enabled_state monotonic, align 1, !range !38, !noundef !39
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i8 %i.ea, ptr %i.eb, align 4, !tbaa !222
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 12288
  %i.ed = call zeroext i1 @je_pa_shard_enable_hpa(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ec, ptr noundef nonnull %2, ptr noundef nonnull @je_opt_hpa_sec_opts) #20
  br i1 %i.ed, label %bb.ax, label %.critedge

bb.ax:                                            ; preds = %arena_get.exit
  call fastcc void @malloc_init_hard_cleanup(ptr noundef nonnull %i.ag, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %malloc_init_hard_cleanup.exit

.critedge:                                        ; preds = %arena_get.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.ay

bb.ay:                                            ; preds = %.critedge, %bb.aw
  %i.ee = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !20 ; 2 uses
  %.not.i.i34 = icmp eq i32 %i.ee, 2
  %i.ef = add i32 %i.ee, 3
  %spec.select.i.i = select i1 %.not.i.i34, i32 2, i32 %i.ef
  store i32 %spec.select.i.i, ptr @je_opt_percpu_arena, align 4, !tbaa !20
  %i.eg = call zeroext i1 @je_malloc_mutex_boot() #20, !inline_history !219
  br i1 %i.eg, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call fastcc void @malloc_init_hard_cleanup(ptr noundef nonnull %i.ag, i1 noundef zeroext true)
  br label %malloc_init_hard_cleanup.exit

bb.ba:                                            ; preds = %bb.ay
  store i32 0, ptr @je_malloc_init_state, align 4, !tbaa !20
  %i.eh = load i8, ptr @je_opt_junk_alloc, align 1, !tbaa !40, !range !38, !noundef !39
  %i.ei = load i8, ptr @je_opt_junk_free, align 1, !tbaa !40, !range !38, !noundef !39
  %i.ej = shl nuw nsw i8 %i.ei, 1
  %i.ek = or disjoint i8 %i.ej, %i.eh
  %i.el = load i8, ptr @je_opt_zero, align 1, !tbaa !40, !range !38, !noundef !39
  %i.em = shl nuw nsw i8 %i.el, 2
  %i.en = or disjoint i8 %i.ek, %i.em
  %i.eo = load i8, ptr @je_opt_utrace, align 1, !tbaa !40, !range !38, !noundef !39
  %i.ep = shl nuw nsw i8 %i.eo, 3
  %i.eq = or disjoint i8 %i.en, %i.ep
  %i.er = load i8, ptr @je_opt_xmalloc, align 1, !tbaa !40, !range !38, !noundef !39
  %i.es = shl nuw nsw i8 %i.er, 4
  %i.et = or disjoint i8 %i.eq, %i.es
  %i.eu = load i8, ptr @malloc_slow_flags, align 1, !tbaa !24
  %i.ev = or i8 %i.et, %i.eu                      ; 2 uses
  store i8 %i.ev, ptr @malloc_slow_flags, align 1, !tbaa !24
  %i.ew = icmp ne i8 %i.ev, 0
  %i.ex = zext i1 %i.ew to i8
  store i8 %i.ex, ptr @je_malloc_slow, align 1, !tbaa !40
  %i.ey = load i8, ptr %i.bl, align 1, !tbaa !24
  %i.ez = add i8 %i.ey, -1                        ; 2 uses
  store i8 %i.ez, ptr %i.bl, align 1, !tbaa !24
  %i.fa = icmp eq i8 %i.ez, 0
  br i1 %i.fa, label %bb.bb, label %post_reentrancy.exit

bb.bb:                                            ; preds = %bb.ba
  call void @je_tsd_slow_update(ptr noundef nonnull %i.ag) #20, !inline_history !7
  br label %post_reentrancy.exit

post_reentrancy.exit:                             ; preds = %bb.ba, %bb.bb
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 64) monotonic, align 8
  %i.fb = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @init_lock, i64 72)) #20, !inline_history !3 ; 0 uses
  call void @je_malloc_tsd_boot1() #20
  %i.fc = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 920
  %i.fe = load i8, ptr %i.fd, align 8, !tbaa !24
  %.not.i = icmp eq i8 %i.fe, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.bc, !prof !23

bb.bc:                                            ; preds = %post_reentrancy.exit
  %i.ff = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.fc, i1 noundef zeroext false) #20
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %post_reentrancy.exit, %bb.bc
  %.0.i = phi ptr [ %i.ff, %bb.bc ], [ %i.fc, %post_reentrancy.exit ] ; 2 uses
  %i.fg = load i8, ptr @je_opt_background_thread, align 1, !tbaa !40, !range !38, !noundef !39
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %tsd_fetch_impl.exit
  call void @je_background_thread_ctl_init(ptr noundef %.0.i) #20
  %i.fi = call zeroext i1 @je_background_thread_create(ptr noundef %.0.i, i32 noundef 0) #20
  br i1 %i.fi, label %malloc_init_hard_cleanup.exit, label %bb.be

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
  tail call void @je_tsd_slow_update(ptr noundef nonnull %0) #20, !inline_history !7
  br label %post_reentrancy.exit

post_reentrancy.exit:                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

declare ptr @je_malloc_tsd_boot0() local_unnamed_addr #5

declare zeroext i1 @je_background_thread_boot1(ptr noundef, ptr noundef) local_unnamed_addr #5

declare zeroext i1 @je_pa_shard_enable_hpa(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @je_malloc_tsd_boot1() local_unnamed_addr #5

declare void @je_background_thread_ctl_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @sched_yield() local_unnamed_addr #17

; Function Attrs: nounwind
declare i32 @pthread_atfork(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #17

declare zeroext i1 @je_background_thread_boot0() local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @sched_getaffinity(i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #17

; Function Attrs: nounwind
declare i32 @__sched_cpucount(i64 noundef, ptr noundef) local_unnamed_addr #17

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #17

declare void @je_tsd_slow_update(ptr noundef) local_unnamed_addr #5

declare zeroext i1 @je_arena_init_huge(ptr noundef, ptr noundef) local_unnamed_addr #5

declare zeroext i1 @je_malloc_mutex_boot() local_unnamed_addr #5

declare void @je_tcache_arena_reassociate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @je_tcache_arena_associate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { nounwind willreturn memory(none) }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}
!llvm.errno.tbaa = !{!19}

!0 = distinct !{null}
!1 = distinct !{null, null}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{null}
!5 = distinct !{null}
!6 = distinct !{null}
!7 = distinct !{null, null}
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!14 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!"omnipotent char", !15, i64 0}
!17 = !{!"int", !16, i64 0}
!18 = !{!"__libc_errno", !17, i64 0}
!19 = !{!18, !17, i64 0}
!20 = !{!17, !17, i64 0}
!21 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!22 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!23 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!24 = !{!16, !16, i64 0}
!25 = !{!"branch_weights", i32 2000, i32 2002}
!26 = !{!"any pointer", !16, i64 0}
!27 = !{!"p1 _ZTS7edata_s", !26, i64 0}
!28 = !{!"_Bool", !16, i64 0}
!29 = !{!"rtree_metadata_s", !17, i64 0, !17, i64 4, !28, i64 8, !28, i64 9}
!30 = !{!"rtree_contents_s", !27, i64 0, !29, i64 8}
!31 = !{!30, !27, i64 0}
!32 = !{!"long", !16, i64 0}
!33 = !{!"p1 _ZTS8hpdata_s", !26, i64 0}
!34 = !{!"edata_s", !32, i64 0, !26, i64 8, !16, i64 16, !33, i64 24, !32, i64 32, !16, i64 40, !16, i64 64}
!35 = !{!34, !32, i64 0}
!36 = !{!30, !17, i64 8}
!37 = !{!30, !28, i64 17}
!38 = !{i8 0, i8 2}
!39 = !{}
!40 = !{!28, !28, i64 0}
!41 = !{!32, !32, i64 0}
!42 = !{!"", !32, i64 0}
!43 = !{!"", !17, i64 0}
!44 = !{!"p1 _ZTS6tsdn_s", !26, i64 0}
!45 = !{!"", !42, i64 0, !42, i64 8, !32, i64 16, !32, i64 24, !17, i64 32, !43, i64 36, !32, i64 40, !44, i64 48, !32, i64 56}
!46 = !{!45, !32, i64 56}
!47 = !{!45, !44, i64 48}
!48 = !{!45, !32, i64 40}
!49 = !{!"p1 _ZTS7arena_s", !26, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!"locked_u64_s", !42, i64 0}
!52 = !{!"pac_decay_stats_s", !51, i64 0, !51, i64 8, !51, i64 16}
!53 = !{!"pac_stats_s", !52, i64 0, !52, i64 24, !32, i64 48, !42, i64 56, !42, i64 64}
!54 = !{!"pa_shard_stats_s", !32, i64 0, !53, i64 8}
!55 = !{!"arena_stats_s", !32, i64 0, !32, i64 8, !32, i64 16, !32, i64 24, !32, i64 32, !32, i64 40, !42, i64 48, !32, i64 56, !32, i64 64, !32, i64 72, !32, i64 80, !32, i64 88, !32, i64 96, !54, i64 104, !32, i64 184, !32, i64 192, !16, i64 200, !16, i64 968, !42, i64 11944}
!56 = !{!"p1 _ZTS13tcache_slow_s", !26, i64 0}
!57 = !{!"", !56, i64 0}
!58 = !{!"p1 _ZTS28cache_bin_array_descriptor_s", !26, i64 0}
!59 = !{!"", !58, i64 0}
!60 = !{!"malloc_mutex_s", !16, i64 0}
!61 = !{!"", !27, i64 0}
!62 = !{!"", !61, i64 0}
!63 = !{!"p1 _ZTS12pa_central_s", !26, i64 0}
!64 = !{!"", !28, i64 0}
!65 = !{!"pai_s", !26, i64 0, !26, i64 8, !26, i64 16, !26, i64 24, !26, i64 32}
!66 = !{!"eset_s", !16, i64 0, !16, i64 32, !16, i64 6432, !62, i64 9632, !42, i64 9640, !17, i64 9648}
!67 = !{!"ecache_s", !60, i64 0, !66, i64 112, !66, i64 9768, !17, i64 19424, !17, i64 19428, !28, i64 19432}
!68 = !{!"p1 _ZTS6base_s", !26, i64 0}
!69 = !{!"p1 _ZTS6emap_s", !26, i64 0}
!70 = !{!"p1 _ZTS13edata_cache_s", !26, i64 0}
!71 = !{!"exp_grow_s", !17, i64 0, !17, i64 4}
!72 = !{!"san_bump_alloc_s", !60, i64 0, !27, i64 112}
!73 = !{!"decay_s", !60, i64 0, !28, i64 112, !42, i64 120, !42, i64 128, !42, i64 136, !32, i64 144, !42, i64 152, !32, i64 160, !32, i64 168, !16, i64 176, !32, i64 1776}
!74 = !{!"p1 _ZTS14malloc_mutex_s", !26, i64 0}
!75 = !{!"p1 _ZTS11pac_stats_s", !26, i64 0}
!76 = !{!"pac_s", !65, i64 0, !67, i64 40, !67, i64 19480, !67, i64 38920, !68, i64 58360, !69, i64 58368, !70, i64 58376, !71, i64 58384, !60, i64 58392, !72, i64 58504, !42, i64 58624, !73, i64 58632, !73, i64 60416, !74, i64 62200, !75, i64 62208, !42, i64 62216}
!77 = !{!"p1 _ZTS13hpa_central_s", !26, i64 0}
!78 = !{!"edata_cache_fast_s", !62, i64 0, !70, i64 8, !28, i64 16}
!79 = !{!"sec_opts_s", !32, i64 0, !32, i64 8, !32, i64 16, !32, i64 24}
!80 = !{!"p1 _ZTS9sec_bin_s", !26, i64 0}
!81 = !{!"sec_s", !79, i64 0, !80, i64 32, !17, i64 40}
!82 = !{!"psset_bin_stats_s", !32, i64 0, !32, i64 8, !32, i64 16}
!83 = !{!"psset_stats_s", !82, i64 0, !16, i64 24, !16, i64 72, !16, i64 3144, !16, i64 3192}
!84 = !{!"", !33, i64 0}
!85 = !{!"", !84, i64 0}
!86 = !{!"psset_s", !16, i64 0, !16, i64 1024, !83, i64 1032, !85, i64 4272, !16, i64 4280, !16, i64 5304, !85, i64 5320}
!87 = !{!"hpa_shard_opts_s", !32, i64 0, !32, i64 8, !17, i64 16, !28, i64 20, !32, i64 24, !28, i64 32, !32, i64 40, !32, i64 48, !32, i64 56, !32, i64 64, !17, i64 72}
!88 = !{!"hpa_shard_nonderived_stats_s", !32, i64 0, !32, i64 8, !32, i64 16, !32, i64 24, !32, i64 32}
!89 = !{!"hpa_shard_s", !65, i64 0, !77, i64 40, !60, i64 48, !60, i64 160, !68, i64 272, !78, i64 280, !81, i64 320, !86, i64 368, !32, i64 5696, !17, i64 5704, !69, i64 5712, !87, i64 5720, !32, i64 5800, !88, i64 5808, !42, i64 5848, !42, i64 5856}
!90 = !{!"ph_s", !26, i64 0, !32, i64 8}
!91 = !{!"", !90, i64 0}
!92 = !{!"edata_cache_s", !91, i64 0, !42, i64 16, !60, i64 24, !68, i64 136}
!93 = !{!"p1 _ZTS16pa_shard_stats_s", !26, i64 0}
!94 = !{!"pa_shard_s", !63, i64 0, !42, i64 8, !64, i64 16, !28, i64 17, !76, i64 24, !89, i64 62272, !92, i64 68160, !17, i64 68304, !74, i64 68312, !93, i64 68320, !69, i64 68328, !68, i64 68336}
!95 = !{!"arena_s", !16, i64 0, !43, i64 8, !44, i64 16, !55, i64 24, !57, i64 11976, !59, i64 11984, !60, i64 11992, !43, i64 12104, !62, i64 12112, !60, i64 12120, !94, i64 12288, !17, i64 80640, !68, i64 80648, !42, i64 80656, !16, i64 80664, !16, i64 80704}
!96 = !{!95, !17, i64 80640}
!97 = !{!"llvm.loop.mustprogress"}
!98 = !{!"bitmap_info_s", !32, i64 0, !32, i64 8}
!99 = !{!"bin_info_s", !32, i64 0, !32, i64 8, !17, i64 16, !17, i64 20, !98, i64 24}
!100 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!101 = !{!"branch_weights", !"expected", i32 1072669, i32 2146410979}
!102 = !{!"branch_weights", !"expected", i32 2146678644, i32 805004}
!103 = !{!"any p2 pointer", !26, i64 0}
!104 = !{!"cache_bin_stats_s", !32, i64 0}
!105 = !{!"short", !16, i64 0}
!106 = !{!"cache_bin_info_s", !105, i64 0}
!107 = !{!"cache_bin_s", !103, i64 0, !104, i64 8, !105, i64 16, !105, i64 18, !105, i64 20, !106, i64 22}
!108 = !{!107, !103, i64 0}
!109 = !{!26, !26, i64 0}
!110 = !{!107, !105, i64 16}
!111 = !{!107, !105, i64 20}
!112 = !{!107, !32, i64 8}
!113 = !{!"tcache_s", !56, i64 0, !16, i64 8}
!114 = !{!113, !56, i64 0}
!115 = !{!"", !56, i64 0, !56, i64 8}
!116 = !{!"", !58, i64 0, !58, i64 8}
!117 = !{!"p1 _ZTS11cache_bin_s", !26, i64 0}
!118 = !{!"cache_bin_array_descriptor_s", !116, i64 0, !117, i64 16}
!119 = !{!"p1 _ZTS8tcache_s", !26, i64 0}
!120 = !{!"tcache_slow_s", !115, i64 0, !118, i64 16, !49, i64 40, !17, i64 48, !42, i64 56, !17, i64 64, !17, i64 68, !17, i64 72, !16, i64 76, !16, i64 148, !16, i64 184, !26, i64 224, !119, i64 232}
!121 = !{!120, !17, i64 48}
!122 = !{!"branch_weights", !"expected", i32 805840, i32 2146677808}
!123 = !{!"p1 long", !26, i64 0}
!124 = !{!"te_ctx_s", !28, i64 0, !123, i64 8, !123, i64 16, !123, i64 24, !123, i64 32}
!125 = !{!124, !28, i64 0}
!126 = !{!124, !123, i64 8}
!127 = !{!124, !123, i64 16}
!128 = !{!124, !123, i64 24}
!129 = !{!124, !123, i64 32}
!130 = !{!"branch_weights", i32 1073205, i32 2146410443}
!131 = !{!"branch_weights", !"expected", i32 1072668, i32 2146410980}
!132 = !{!"branch_weights", i32 1, i32 4001}
!133 = !{!"branch_weights", !"expected", i32 470496, i32 2147013152}
!134 = !{!"branch_weights", !"expected", i32 1609874, i32 2145873774}
!135 = !{!"branch_weights", !"expected", i32 737943, i32 2146745705}
!136 = !{!"branch_weights", i32 4000000, i32 4001}
!137 = !{!"branch_weights", !"expected", i32 1609807, i32 2145873841}
!138 = !{!"branch_weights", !"expected", i32 1073741824, i32 1073741824}
!139 = !{!107, !105, i64 18}
!140 = !{!107, !105, i64 22}
!141 = !{!"p1 _ZTS16rtree_leaf_elm_s", !26, i64 0}
!142 = !{!"rtree_ctx_cache_elm_s", !32, i64 0, !141, i64 8}
!143 = !{!142, !32, i64 0}
!144 = !{!142, !141, i64 8}
!145 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!146 = !{!"p1 _ZTS9tcaches_s", !26, i64 0}
!147 = !{!146, !146, i64 0}
!148 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!149 = !{!"branch_weights", !"expected", i32 2146410979, i32 1072669}
!150 = !{!"branch_weights", !"expected", i32 2146410741, i32 1072907}
!151 = !{ptr @arena_dalloc_no_tcache}
!152 = distinct !{!152, !97}
!153 = !{ptr @arena_bind}
!154 = !{!99, !17, i64 20}
!155 = !{!"branch_weights", i32 4001, i32 4000000}
!156 = !{!"branch_weights", !"expected", i32 1609806, i32 2145873842}
!157 = !{!"branch_weights", i32 1321934945, i32 -1321934945}
!158 = !{!"branch_weights", !"expected", i32 1321934945, i32 825548703}
!159 = !{!"branch_weights", !"expected", i32 2146409369, i32 1074279}
!160 = !{!"branch_weights", i32 2144668, i32 -2144668}
!161 = !{!"branch_weights", !"expected", i32 2144668, i32 2145338980}
!162 = distinct !{!162, i1 false, !"rtree_leaf_elm_read"}
!163 = distinct !{!163, !162, !"rtree_leaf_elm_read: argument 0"}
!164 = !{!163}
!165 = !{!"branch_weights", i32 2146410443, i32 1073205}
!166 = !{!"branch_weights", !"expected", i32 1609941, i32 2145873707}
!167 = !{!"hook_ralloc_args_s", !28, i64 0, !16, i64 8}
!168 = !{!167, !28, i64 0}
!169 = !{!"branch_weights", !"expected", i32 1072667, i32 2146410981}
!170 = !{!"branch_weights", !"expected", i32 470505, i32 2147013143}
!171 = !{!"branch_weights", !"expected", i32 1948825, i32 2145534823}
!172 = distinct !{!172, !97}
!173 = distinct !{!173, !176}
!174 = !{!99, !17, i64 16}
!175 = !{!"branch_weights", i32 2002, i32 2000}
!176 = !{!"llvm.loop.unroll.disable"}
!177 = !{!123, !123, i64 0}
!178 = distinct !{null, null}
!179 = distinct !{null}
!180 = distinct !{null, null, null}
!181 = distinct !{null, null, ptr @je_arena_migrate}
!182 = distinct !{null, null}
!183 = !{!120, !49, i64 40}
!184 = !{!95, !44, i64 16}
!185 = distinct !{!185, !97}
!186 = distinct !{!186, !97}
!187 = distinct !{!187, !97}
!188 = distinct !{!188, !97}
!189 = !{!"p1 omnipotent char", !26, i64 0}
!190 = !{!189, !189, i64 0}
!191 = distinct !{!191, !97}
!192 = !{!95, !56, i64 11976}
!193 = !{!120, !119, i64 232}
!194 = !{!120, !56, i64 0}
!195 = !{ptr @malloc_stats_print}
!196 = distinct !{!196, i1 false, !"rtree_leaf_elm_read"}
!197 = distinct !{!197, !196, !"rtree_leaf_elm_read: argument 0"}
!198 = distinct !{!198, i1 false, !"rtree_leaf_elm_bits_decode"}
!199 = distinct !{!199, !198, !"rtree_leaf_elm_bits_decode: argument 0"}
!200 = !{!197}
!201 = !{!199}
!202 = !{!30, !28, i64 16}
!203 = !{!30, !17, i64 12}
!204 = distinct !{null}
!205 = distinct !{null, null}
!206 = distinct !{null, null, null}
!207 = distinct !{!207, !97}
!208 = distinct !{null, null}
!209 = distinct !{null, null, null}
!210 = distinct !{null, null}
!211 = distinct !{!211, !97}
!212 = distinct !{ptr @malloc_init_hard_cleanup, null}
!213 = distinct !{null, null}
!214 = distinct !{null, null}
!215 = distinct !{null}
!216 = distinct !{null, null}
!217 = distinct !{null}
!218 = distinct !{ptr @malloc_init_hard_cleanup, null, null}
!219 = distinct !{null}
!220 = !{i64 2151773858}
!221 = !{i64 0, i64 8, !41, i64 8, i64 8, !41, i64 16, i64 4, !20, i64 20, i64 1, !40, i64 24, i64 8, !41, i64 32, i64 1, !40, i64 40, i64 8, !41, i64 48, i64 8, !41, i64 56, i64 8, !41, i64 64, i64 8, !41, i64 72, i64 4, !20}
!222 = !{!87, !28, i64 20}
end_hunk_4
