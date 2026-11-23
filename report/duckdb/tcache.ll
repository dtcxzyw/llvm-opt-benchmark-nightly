Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/tcache?download=true
inline.NumInlined: 257
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@duckdb_je_tcache_enabled_set
define void @duckdb_je_tcache_enabled_set(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 !guid !183 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !30, !range !31, !noundef !32
  %i.b = trunc nuw i8 %i.a to i1
  %.not = xor i1 %i.b, true                       ; 2 uses
  %or.cond = and i1 %1, %.not
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @duckdb_je_tsd_tcache_data_init(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @opt_tcache_ncached_max)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %or.cond4 = or i1 %1, %.not
  br i1 %or.cond4, label %bb.d, label %duckdb_je_tcache_cleanup.exit

duckdb_je_tcache_cleanup.exit:                    ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 864
  tail call fastcc void @tcache_destroy(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i1 noundef zeroext true)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 872
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1752) %i.d, i8 0, i64 1752, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %duckdb_je_tcache_cleanup.exit, %bb.b
  %i.e = zext i1 %1 to i8
  store i8 %i.e, ptr %0, align 1, !tbaa !30
  tail call void @duckdb_je_tsd_slow_update(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define void @duckdb_je_tcache_cleanup(ptr noundef %0) local_unnamed_addr #0 !guid !184 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !30, !range !31, !noundef !32
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 864
  tail call fastcc void @tcache_destroy(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i1 noundef zeroext true)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 872
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1752) %i.d, i8 0, i64 1752, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @duckdb_je_thread_tcache_max_set(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 !guid !185 {
bb.a:
  %2 = alloca [73 x %struct.cache_bin_info_s], align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(146) %2, i8 0, i64 146, i1 false)
  %i.c = load i8, ptr %0, align 8, !tbaa !30, !range !31, !noundef !32
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.i
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.i = getelementptr i8, ptr %i.h, i64 30
  %.val.i = load i16, ptr %i.i, align 2, !tbaa !53
  call void @duckdb_je_cache_bin_info_init(ptr noundef nonnull %i.g, i16 noundef zeroext %.val.i) #15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 73
  br i1 %exitcond.not.i, label %tcache_bin_settings_backup.exit, label %bb.c

tcache_bin_settings_backup.exit:                  ; preds = %bb.c
  %i.j = load i8, ptr %0, align 8, !tbaa !30, !range !31, !noundef !32
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %duckdb_je_tcache_cleanup.exit

bb.d:                                             ; preds = %tcache_bin_settings_backup.exit
  call fastcc void @tcache_destroy(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i1 noundef zeroext true)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 872
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1752) %i.l, i8 0, i64 1752, i1 false)
  br label %duckdb_je_tcache_cleanup.exit

duckdb_je_tcache_cleanup.exit:                    ; preds = %tcache_bin_settings_backup.exit, %bb.d
  %i.m = icmp ult i64 %1, 4097
  br i1 %i.m, label %bb.e, label %bb.f, !prof !137

bb.e:                                             ; preds = %duckdb_je_tcache_cleanup.exit
  %i.n = add nuw nsw i64 %1, 7
  %i.o = lshr i64 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !52
  %i.r = zext i8 %i.q to i32
  br label %tcache_max_set.exit

bb.f:                                             ; preds = %duckdb_je_tcache_cleanup.exit
  %i.s = call fastcc i32 @sz_size2index_compute(i64 noundef %1)
  br label %tcache_max_set.exit

tcache_max_set.exit:                              ; preds = %bb.e, %bb.f
  %.0.i.i = phi i32 [ %i.r, %bb.e ], [ %i.s, %bb.f ]
  %i.t = add nuw nsw i32 %.0.i.i, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 %i.t, ptr %i.u, align 8, !tbaa !54
  call fastcc void @duckdb_je_tsd_tcache_data_init(ptr noundef nonnull %0, ptr noundef %i.f, ptr noundef nonnull %2)
  br label %bb.i

.critedge:                                        ; preds = %bb.a
  %i.v = icmp ult i64 %1, 4097
  br i1 %i.v, label %bb.g, label %bb.h, !prof !137

bb.g:                                             ; preds = %.critedge
  %i.w = add nuw nsw i64 %1, 7
  %i.x = lshr i64 %i.w, 3
  %i.y = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !52
  %i.aa = zext i8 %i.z to i32
  br label %tcache_max_set.exit12

bb.h:                                             ; preds = %.critedge
  %i.ab = tail call fastcc i32 @sz_size2index_compute(i64 noundef %1)
  br label %tcache_max_set.exit12

tcache_max_set.exit12:                            ; preds = %bb.g, %bb.h
  %.0.i.i11 = phi i32 [ %i.aa, %bb.g ], [ %i.ab, %bb.h ]
  %i.ac = add nuw nsw i32 %.0.i.i11, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !54
  br label %bb.i

bb.i:                                             ; preds = %tcache_max_set.exit12, %tcache_max_set.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @tcache_bin_info_default_init(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 !guid !186 {
bb.a:
  %i.a = tail call fastcc zeroext i1 @tcache_bin_info_settings_parse(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @opt_tcache_ncached_max, ptr noundef nonnull @opt_tcache_ncached_max_set)
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @tcache_bin_info_settings_parse(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) unnamed_addr #0 !guid !187 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 8 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !189
  store i64 %1, ptr %i.b, align 8, !tbaa !28
  %.not15 = icmp eq ptr %3, null
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  %i.f = call zeroext i1 @duckdb_je_multi_setting_parse_next(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #15 ; 2 uses
  br i1 %i.f, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.d, align 8              ; 2 uses
  %i.h = icmp ugt i64 %i.g, 8388608
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 8388608, ptr %i.d, align 8, !tbaa !28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = phi i64 [ 8388608, %bb.d ], [ %i.g, %bb.c ] ; 4 uses
  %i.j = load i64, ptr %i.c, align 8, !tbaa !28   ; 5 uses
  %i.k = icmp ugt i64 %i.j, 8388608
  %i.l = icmp ugt i64 %i.j, %i.i
  %or.cond = or i1 %i.k, %i.l
  br i1 %or.cond, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = icmp samesign ult i64 %i.j, 9
  br i1 %i.m, label %sz_size2index_compute.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = shl nuw nsw i64 %i.j, 1
  %i.o = add nsw i64 %i.n, -1
  %i.p = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.o, i1 true)
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = xor i32 %i.q, 63                         ; 2 uses
  %i.s = call i32 @llvm.usub.sat.i32(i32 %i.r, i32 6)
  %i.t = shl nuw nsw i32 %i.s, 2
  %i.u = call i32 @llvm.umax.i32(i32 %i.r, i32 7)
  %i.v = add nsw i32 %i.u, -3
  %i.w = zext nneg i32 %i.v to i64
  %i.x = add nsw i64 %i.j, -1
  %i.y = lshr i64 %i.x, %i.w
  %i.z = trunc nuw nsw i64 %i.y to i32
  %i.aa = and i32 %i.z, 3
  %i.ab = or disjoint i32 %i.t, 1
  %i.ac = add nuw nsw i32 %i.ab, %i.aa
  br label %sz_size2index_compute.exit

sz_size2index_compute.exit:                       ; preds = %bb.g, %bb.f
  %.0.i = phi i32 [ %i.ac, %bb.g ], [ 0, %bb.f ]  ; 3 uses
  %i.ad = icmp samesign ult i64 %i.i, 9
  br i1 %i.ad, label %sz_size2index_compute.exit19, label %bb.h

bb.h:                                             ; preds = %sz_size2index_compute.exit
  %i.ae = shl nuw nsw i64 %i.i, 1
  %i.af = add nsw i64 %i.ae, -1
  %i.ag = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.af, i1 true)
  %i.ah = trunc nuw nsw i64 %i.ag to i32
  %i.ai = xor i32 %i.ah, 63                       ; 2 uses
  %i.aj = call i32 @llvm.usub.sat.i32(i32 %i.ai, i32 6)
  %i.ak = shl nuw nsw i32 %i.aj, 2
  %i.al = call i32 @llvm.umax.i32(i32 %i.ai, i32 7)
  %i.am = add nsw i32 %i.al, -3
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = add nsw i64 %i.i, -1
  %i.ap = lshr i64 %i.ao, %i.an
  %i.aq = trunc nuw nsw i64 %i.ap to i32
  %i.ar = and i32 %i.aq, 3
  %i.as = or disjoint i32 %i.ak, 1
  %i.at = add nuw nsw i32 %i.as, %i.ar
  br label %sz_size2index_compute.exit19

sz_size2index_compute.exit19:                     ; preds = %sz_size2index_compute.exit, %bb.h
  %.0.i18 = phi i32 [ %i.at, %bb.h ], [ 0, %sz_size2index_compute.exit ] ; 3 uses
  %i.au = load i64, ptr %i.e, align 8, !tbaa !28
  %i.av = icmp ugt i64 %i.au, 8191
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %sz_size2index_compute.exit19
  store i64 8191, ptr %i.e, align 8, !tbaa !28
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %sz_size2index_compute.exit19
  %.not23 = icmp samesign ugt i32 %.0.i, %.0.i18
  br i1 %.not23, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  br i1 %.not15, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.024.us = phi i32 [ %i.ba, %.lr.ph.split.us ], [ %.0.i, %.lr.ph ] ; 3 uses
  %i.aw = zext nneg i32 %.024.us to i64
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.aw
  %i.ay = load i64, ptr %i.e, align 8, !tbaa !28
  %i.az = trunc i64 %i.ay to i16
  call void @duckdb_je_cache_bin_info_init(ptr noundef %i.ax, i16 noundef zeroext %i.az) #15
  %i.ba = add nuw nsw i32 %.024.us, 1
  %.not.us.not = icmp ult i32 %.024.us, %.0.i18
  br i1 %.not.us.not, label %.lr.ph.split.us, label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.024 = phi i32 [ %i.bg, %.lr.ph.split ], [ %.0.i, %.lr.ph ] ; 3 uses
  %i.bb = zext nneg i32 %.024 to i64              ; 2 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bb
  %i.bd = load i64, ptr %i.e, align 8, !tbaa !28
  %i.be = trunc i64 %i.bd to i16
  call void @duckdb_je_cache_bin_info_init(ptr noundef %i.bc, i16 noundef zeroext %i.be) #15
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 %i.bb
  store i8 1, ptr %i.bf, align 1, !tbaa !30
  %i.bg = add nuw nsw i32 %.024, 1
  %.not.not = icmp ult i32 %.024, %.0.i18
  br i1 %.not.not, label %.lr.ph.split, label %.loopexit

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %.loopexit21

.loopexit:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.j, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  %i.bh = load i64, ptr %i.b, align 8, !tbaa !28
  %.not16 = icmp eq i64 %i.bh, 0
  br i1 %.not16, label %.loopexit21, label %bb.b

.loopexit21:                                      ; preds = %.loopexit, %bb.k
  ret i1 %i.f
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @duckdb_je_tcache_bins_ncached_max_write(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 !guid !190 {
bb.a:
  %3 = alloca [73 x %struct.cache_bin_info_s], align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.i
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.d = getelementptr i8, ptr %i.c, i64 30
  %.val.i = load i16, ptr %i.d, align 2, !tbaa !53
  call void @duckdb_je_cache_bin_info_init(ptr noundef nonnull %i.b, i16 noundef zeroext %.val.i) #15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 73
  br i1 %exitcond.not.i, label %tcache_bin_settings_backup.exit, label %bb.b

tcache_bin_settings_backup.exit:                  ; preds = %bb.b
  %i.e = call fastcc zeroext i1 @tcache_bin_info_settings_parse(ptr noundef %1, i64 noundef %2, ptr noundef nonnull %3, ptr noundef null) ; 2 uses
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %tcache_bin_settings_backup.exit
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !58
  %i.i = load i8, ptr %0, align 8, !tbaa !30, !range !31, !noundef !32
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %duckdb_je_tcache_cleanup.exit

bb.d:                                             ; preds = %bb.c
  call fastcc void @tcache_destroy(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i1 noundef zeroext true)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 872
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1752) %i.k, i8 0, i64 1752, i1 false)
  br label %duckdb_je_tcache_cleanup.exit

duckdb_je_tcache_cleanup.exit:                    ; preds = %bb.c, %bb.d
  call fastcc void @duckdb_je_tsd_tcache_data_init(ptr noundef nonnull %0, ptr noundef %i.h, ptr noundef nonnull %3)
  br label %bb.e

bb.e:                                             ; preds = %tcache_bin_settings_backup.exit, %duckdb_je_tcache_cleanup.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i1 %i.e
}

; Function Attrs: nounwind uwtable
define void @duckdb_je_tcache_flush(ptr noundef %0) local_unnamed_addr #0 !guid !191 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.c = getelementptr i8, ptr %i.b, i64 48       ; 2 uses
  %.val1820.i = load i32, ptr %i.c, align 8, !tbaa !54
  %.not.i = icmp eq i32 %.val1820.i, 0
  br i1 %.not.i, label %tcache_flush_cache.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 872
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 4 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %indvars.iv.i ; 3 uses
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.f = icmp eq ptr %.val.i, @duckdb_je_disabled_bin
  br i1 %i.f, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp samesign ult i64 %indvars.iv.i, 36
  %i.h = trunc nuw i64 %indvars.iv.i to i32       ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @duckdb_je_tcache_bin_flush_small(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, i32 noundef %i.h, i32 noundef 0)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @duckdb_je_tcache_bin_flush_large(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, i32 noundef %i.h, i32 noundef 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val18.i = load i32, ptr %i.c, align 8, !tbaa !54
  %i.i = zext i32 %.val18.i to i64
  %i.j = icmp samesign ult i64 %indvars.iv.next.i, %i.i
  br i1 %i.j, label %bb.b, label %tcache_flush_cache.exit

tcache_flush_cache.exit:                          ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @tcache_destroy(ptr noundef %0, ptr nofree noundef captures(none) %1, i1 noundef zeroext %2) unnamed_addr #0 !guid !192 {
bb.a:
  %3 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %4 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %5 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %6 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !56     ; 5 uses
  %i.b = getelementptr i8, ptr %i.a, i64 48       ; 2 uses
  %.val1820.i = load i32, ptr %i.b, align 8, !tbaa !54
  %.not.i = icmp eq i32 %.val1820.i, 0
  br i1 %.not.i, label %tcache_flush_cache.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 4 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %indvars.iv.i ; 3 uses
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.e = icmp eq ptr %.val.i, @duckdb_je_disabled_bin
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i64 %indvars.iv.i, 36
  %i.g = trunc nuw i64 %indvars.iv.i to i32       ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @duckdb_je_tcache_bin_flush_small(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.d, i32 noundef %i.g, i32 noundef 0)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @duckdb_je_tcache_bin_flush_large(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.d, i32 noundef %i.g, i32 noundef 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val18.i = load i32, ptr %i.b, align 8, !tbaa !54
  %i.h = zext i32 %.val18.i to i64
  %i.i = icmp samesign ult i64 %indvars.iv.next.i, %i.h
  br i1 %i.i, label %bb.b, label %tcache_flush_cache.exit

end_hunk_0
begin_hunk_1_@tcache_bin_flush_edatas_lookup:bb.a
  br i1 %i.ab, label %bb.g, label %.preheader6.1, !prof !137

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !159 ; 2 uses
  store i64 %i.r, ptr %i.b, align 8, !tbaa !158
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !159
  store ptr %i.ae, ptr %i.c, align 8, !tbaa !159
  store i64 %i.p, ptr %i.q, align 8, !tbaa !158
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !159
  %i.af = lshr i64 %i.m, 12
  %i.ag = and i64 %i.af, 262143
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ag
  br label %rtree_leaf_elm_lookup.exit.i

.preheader6.1:                                    ; preds = %.preheader6.preheader
  %i.ai = load i64, ptr %i.e, align 8, !tbaa !158
  %i.aj = icmp eq i64 %i.ai, %i.p
  br i1 %i.aj, label %bb.g, label %.preheader6.2, !prof !137

.preheader6.2:                                    ; preds = %.preheader6.1
  %i.ak = load i64, ptr %i.f, align 8, !tbaa !158
  %i.al = icmp eq i64 %i.ak, %i.p
  br i1 %i.al, label %bb.g, label %.preheader6.3, !prof !137

.preheader6.3:                                    ; preds = %.preheader6.2
  %i.am = load i64, ptr %i.g, align 8, !tbaa !158
  %i.an = icmp eq i64 %i.am, %i.p
  br i1 %i.an, label %bb.g, label %.preheader6.4, !prof !137

.preheader6.4:                                    ; preds = %.preheader6.3
  %i.ao = load i64, ptr %i.h, align 8, !tbaa !158
  %i.ap = icmp eq i64 %i.ao, %i.p
  br i1 %i.ap, label %bb.g, label %.preheader6.5, !prof !137

.preheader6.5:                                    ; preds = %.preheader6.4
  %i.aq = load i64, ptr %i.i, align 8, !tbaa !158
  %i.ar = icmp eq i64 %i.aq, %i.p
  br i1 %i.ar, label %bb.g, label %.preheader6.6, !prof !137

.preheader6.6:                                    ; preds = %.preheader6.5
  %i.as = load i64, ptr %i.j, align 8, !tbaa !158
  %i.at = icmp eq i64 %i.as, %i.p
  br i1 %i.at, label %bb.g, label %bb.f, !prof !137

bb.f:                                             ; preds = %.preheader6.6
  %i.au = tail call ptr @duckdb_je_rtree_leaf_elm_lookup_hard(ptr noundef nonnull %0, ptr noundef nonnull @duckdb_je_arena_emap_global, ptr noundef nonnull %i.a, i64 noundef %i.m, i1 noundef zeroext true, i1 noundef zeroext false) #15
  br label %rtree_leaf_elm_lookup.exit.i

bb.g:                                             ; preds = %.preheader6.6, %.preheader6.5, %.preheader6.4, %.preheader6.3, %.preheader6.2, %.preheader6.1, %.preheader6.preheader
  %.lcssa = phi ptr [ %i.d, %.preheader6.preheader ], [ %i.e, %.preheader6.1 ], [ %i.f, %.preheader6.2 ], [ %i.g, %.preheader6.3 ], [ %i.h, %.preheader6.4 ], [ %i.i, %.preheader6.5 ], [ %i.j, %.preheader6.6 ] ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !159 ; 2 uses
  %i.ax = getelementptr i8, ptr %.lcssa, i64 -16  ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !158
  store i64 %i.ay, ptr %.lcssa, align 8, !tbaa !158
  %i.az = getelementptr i8, ptr %.lcssa, i64 -8   ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !159
  store ptr %i.ba, ptr %i.av, align 8, !tbaa !159
  store i64 %i.r, ptr %i.ax, align 8, !tbaa !158
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !159
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !159
  store i64 %i.p, ptr %i.q, align 8, !tbaa !158
  store ptr %i.aw, ptr %i.bb, align 8, !tbaa !159
  %i.bd = lshr i64 %i.m, 12
  %i.be = and i64 %i.bd, 262143
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.be
  br label %rtree_leaf_elm_lookup.exit.i

rtree_leaf_elm_lookup.exit.i:                     ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  %.1.i.i = phi ptr [ %i.x, %bb.c ], [ %i.ah, %bb.e ], [ %i.au, %bb.f ], [ %i.bf, %bb.g ]
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.025.i8
  store ptr %.1.i.i, ptr %i.bg, align 8, !tbaa !52
  %i.bh = add nuw nsw i64 %.025.i8, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.bh, %1
  br i1 %exitcond.not, label %.lr.ph10.preheader, label %bb.b

.lr.ph10.preheader:                               ; preds = %rtree_leaf_elm_lookup.exit.i
  %xtraiter = and i64 %1, 1
  %i.bi = icmp eq i64 %1, 1
  br i1 %i.bi, label %.lr.ph10.epil.preheader, label %.lr.ph10.preheader.new

.lr.ph10.preheader.new:                           ; preds = %.lr.ph10.preheader
  %unroll_iter = and i64 %1, 4294967294
  br label %.lr.ph10

.lr.ph10:                                         ; preds = %.lr.ph10, %.lr.ph10.preheader.new
  %.0.i9 = phi i64 [ 0, %.lr.ph10.preheader.new ], [ %i.cc, %.lr.ph10 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph10.preheader.new ], [ %niter.next.1, %.lr.ph10 ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.0.i9 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !52
  %i.bl = load atomic ptr, ptr %i.bk monotonic, align 8, !noalias !210
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = shl i64 %i.bm, 16
  %i.bo = ashr exact i64 %i.bn, 16
  %i.bp = and i64 %i.bo, -128
  %i.bq = inttoptr i64 %i.bp to ptr               ; 3 uses
  store ptr %i.bq, ptr %i.bj, align 8, !tbaa !52
  tail call void @llvm.prefetch.p0(ptr readonly %i.bq, i32 1, i32 3, i32 1)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %i.br, i32 1, i32 3, i32 1)
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.0.i9
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !52
  %i.bv = load atomic ptr, ptr %i.bu monotonic, align 8, !noalias !210
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = shl i64 %i.bw, 16
  %i.by = ashr exact i64 %i.bx, 16
  %i.bz = and i64 %i.by, -128
  %i.ca = inttoptr i64 %i.bz to ptr               ; 3 uses
  store ptr %i.ca, ptr %i.bt, align 8, !tbaa !52
  tail call void @llvm.prefetch.p0(ptr readonly %i.ca, i32 1, i32 3, i32 1)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %i.cb, i32 1, i32 3, i32 1)
  %i.cc = add nuw nsw i64 %.0.i9, 2               ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %emap_edata_lookup_batch.exit.loopexit.unr-lcssa, label %.lr.ph10

emap_edata_lookup_batch.exit.loopexit.unr-lcssa:  ; preds = %.lr.ph10
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %emap_edata_lookup_batch.exit, label %.lr.ph10.epil.preheader

.lr.ph10.epil.preheader:                          ; preds = %emap_edata_lookup_batch.exit.loopexit.unr-lcssa, %.lr.ph10.preheader
  %.0.i9.epil.init = phi i64 [ 0, %.lr.ph10.preheader ], [ %i.cc, %emap_edata_lookup_batch.exit.loopexit.unr-lcssa ]
  %lcmp.mod1 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1)
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.0.i9.epil.init ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !52
  %i.cf = load atomic ptr, ptr %i.ce monotonic, align 8, !noalias !210
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = shl i64 %i.cg, 16
  %i.ci = ashr exact i64 %i.ch, 16
  %i.cj = and i64 %i.ci, -128
  %i.ck = inttoptr i64 %i.cj to ptr               ; 3 uses
  store ptr %i.ck, ptr %i.cd, align 8, !tbaa !52
  tail call void @llvm.prefetch.p0(ptr readonly %i.ck, i32 1, i32 3, i32 1)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %i.cl, i32 1, i32 3, i32 1)
  br label %emap_edata_lookup_batch.exit

emap_edata_lookup_batch.exit:                     ; preds = %.lr.ph10.epil.preheader, %emap_edata_lookup_batch.exit.loopexit.unr-lcssa, %bb.a
  ret void
}

declare i64 @duckdb_je_batcher_push_begin(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @batcher_push_end(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @duckdb_je_arena_slab_dalloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #10

; Function Attrs: nounwind
declare i32 @pthread_mutex_trylock(ptr noundef) local_unnamed_addr #11

declare void @duckdb_je_arena_dalloc_bin_locked_handle_newly_empty(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @duckdb_je_arena_dalloc_bin_locked_handle_newly_nonempty(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i64 @duckdb_je_batcher_pop_begin(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i64 @duckdb_je_batcher_pop_get_pushes(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @batcher_pop_end(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @duckdb_je_arena_decay(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

declare void @duckdb_je_large_dalloc_prep_locked(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @duckdb_je_large_dalloc_finish(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc range(i32 0, 233) i32 @sz_size2index_compute(i64 noundef %0) unnamed_addr #12 !guid !211 {
bb.a:
  %i.a = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.a, label %pow2_ceil_zu.exit, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i64 %0, 9
  br i1 %i.b, label %pow2_ceil_zu.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = shl nuw i64 %0, 1
  %i.d = add i64 %i.c, -1
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.d, i1 true)
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = xor i32 %i.f, 63                         ; 2 uses
  %i.h = tail call i32 @llvm.usub.sat.i32(i32 %i.g, i32 6)
  %i.i = shl nuw nsw i32 %i.h, 2
  %i.j = tail call i32 @llvm.umax.i32(i32 %i.g, i32 7)
  %i.k = add nsw i32 %i.j, -3
  %i.l = zext nneg i32 %i.k to i64
  %i.m = add nsw i64 %0, -1
  %i.n = lshr i64 %i.m, %i.l
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.o, 3
  %i.q = or disjoint i32 %i.i, 1
  %i.r = add nuw nsw i32 %i.q, %i.p
  br label %pow2_ceil_zu.exit

pow2_ceil_zu.exit:                                ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.r, %bb.c ], [ 232, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #13

declare void @duckdb_je_malloc_mutex_lock_slow(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #11

declare ptr @duckdb_je_arena_palloc(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @rtree_read(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 18)) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #7 !guid !216 {
bb.a:
  %i.a = lshr i64 %3, 30
  %i.b = and i64 %i.a, 15
  %i.c = and i64 %3, -1073741824                  ; 11 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.b ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !158  ; 3 uses
  %i.f = icmp eq i64 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %bb.c, !prof !137

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !159
  %i.i = lshr i64 %3, 12
  %i.j = and i64 %i.i, 262143
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  br label %atomic_load_p.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !158
  %i.n = icmp eq i64 %i.m, %i.c
  br i1 %i.n, label %bb.d, label %.preheader.preheader, !prof !137

.preheader.preheader:                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !158
  %i.q = icmp eq i64 %i.p, %i.c
  br i1 %i.q, label %bb.f, label %.preheader.1, !prof !137

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !159  ; 2 uses
  store i64 %i.e, ptr %i.l, align 8, !tbaa !158
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !159
  store ptr %i.u, ptr %i.r, align 8, !tbaa !159
  store i64 %i.c, ptr %i.d, align 8, !tbaa !158
  store ptr %i.s, ptr %i.t, align 8, !tbaa !159
  %i.v = lshr i64 %3, 12
  %i.w = and i64 %i.v, 262143
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.w
  br label %atomic_load_p.exit

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !158
  %i.aa = icmp eq i64 %i.z, %i.c
  br i1 %i.aa, label %bb.f, label %.preheader.2, !prof !137

.preheader.2:                                     ; preds = %.preheader.1
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !158
  %i.ad = icmp eq i64 %i.ac, %i.c
  br i1 %i.ad, label %bb.f, label %.preheader.3, !prof !137

.preheader.3:                                     ; preds = %.preheader.2
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 320 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !158
  %i.ag = icmp eq i64 %i.af, %i.c
  br i1 %i.ag, label %bb.f, label %.preheader.4, !prof !137

.preheader.4:                                     ; preds = %.preheader.3
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 336 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !158
  %i.aj = icmp eq i64 %i.ai, %i.c
  br i1 %i.aj, label %bb.f, label %.preheader.5, !prof !137

.preheader.5:                                     ; preds = %.preheader.4
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 352 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !158
  %i.am = icmp eq i64 %i.al, %i.c
  br i1 %i.am, label %bb.f, label %.preheader.6, !prof !137

.preheader.6:                                     ; preds = %.preheader.5
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 368 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !158
  %i.ap = icmp eq i64 %i.ao, %i.c
  br i1 %i.ap, label %bb.f, label %bb.e, !prof !137

bb.e:                                             ; preds = %.preheader.6
  %i.aq = tail call ptr @duckdb_je_rtree_leaf_elm_lookup_hard(ptr noundef %1, ptr noundef nonnull @duckdb_je_arena_emap_global, ptr noundef nonnull %2, i64 noundef %3, i1 noundef zeroext true, i1 noundef zeroext false) #15
  br label %atomic_load_p.exit

bb.f:                                             ; preds = %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.lcssa = phi ptr [ %i.o, %.preheader.preheader ], [ %i.y, %.preheader.1 ], [ %i.ab, %.preheader.2 ], [ %i.ae, %.preheader.3 ], [ %i.ah, %.preheader.4 ], [ %i.ak, %.preheader.5 ], [ %i.an, %.preheader.6 ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !159 ; 2 uses
  %i.at = getelementptr i8, ptr %.lcssa, i64 -16  ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !158
  store i64 %i.au, ptr %.lcssa, align 8, !tbaa !158
  %i.av = getelementptr i8, ptr %.lcssa, i64 -8   ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !159
  store ptr %i.aw, ptr %i.ar, align 8, !tbaa !159
  store i64 %i.e, ptr %i.at, align 8, !tbaa !158
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !159
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !159
  store i64 %i.c, ptr %i.d, align 8, !tbaa !158
  store ptr %i.as, ptr %i.ax, align 8, !tbaa !159
  %i.az = lshr i64 %3, 12
  %i.ba = and i64 %i.az, 262143
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ba
  br label %atomic_load_p.exit

atomic_load_p.exit:                               ; preds = %bb.f, %bb.b, %bb.d, %bb.e
  %.1.i = phi ptr [ %i.k, %bb.b ], [ %i.x, %bb.d ], [ %i.aq, %bb.e ], [ %i.bb, %bb.f ]
  %i.bc = load atomic ptr, ptr %.1.i monotonic, align 8, !noalias !217
  %i.bd = ptrtoint ptr %i.bc to i64               ; 4 uses
  %i.be = lshr i64 %i.bd, 48
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bf, ptr %i.bg, align 8, !tbaa !218, !alias.scope !219
  %i.bh = trunc i64 %i.bd to i8                   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.bj = and i8 %i.bh, 1
  store i8 %i.bj, ptr %i.bi, align 1, !tbaa !220, !alias.scope !219
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = lshr i8 %i.bh, 1
  %i.bm = and i8 %i.bl, 1
  store i8 %i.bm, ptr %i.bk, align 8, !tbaa !221, !alias.scope !219
  %i.bn = trunc i64 %i.bd to i32
  %i.bo = lshr i32 %i.bn, 2
  %i.bp = and i32 %i.bo, 7
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !222, !alias.scope !219
  %i.br = shl i64 %i.bd, 16
  %i.bs = ashr exact i64 %i.br, 16
  %i.bt = and i64 %i.bs, -128
  %i.bu = inttoptr i64 %i.bt to ptr
  store ptr %i.bu, ptr %0, align 8, !tbaa !150, !alias.scope !219
  ret void
}

declare ptr @duckdb_je_arena_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @duckdb_je_cache_bin_preincrement(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @duckdb_je_cache_bin_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @cache_bin_init_disabled(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

declare void @duckdb_je_cache_bin_postincrement(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @duckdb_je_arena_choose_hard(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare zeroext i1 @duckdb_je_cache_bin_stack_use_thp() local_unnamed_addr #4

declare ptr @duckdb_je_b0_alloc_tcache_stack(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @duckdb_je_cache_bin_info_init(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

declare zeroext i1 @duckdb_je_multi_setting_parse_next(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @duckdb_je_b0_dalloc_tcache_stack(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @duckdb_je_arena_nthreads_get(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare void @duckdb_je_arena_dalloc_small(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @arena_dalloc_large_no_tcache(ptr noundef %0, ptr noundef %1) unnamed_addr #7 !guid !223 {
bb.a:
  %2 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %3 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c, !prof !26

bb.b:                                             ; preds = %bb.a
  call void @duckdb_je_rtree_ctx_data_init(ptr noundef nonnull %2) #15
  br label %emap_edata_lookup.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 440
  br label %emap_edata_lookup.exit

emap_edata_lookup.exit:                           ; preds = %bb.b, %bb.c
end_hunk_1
