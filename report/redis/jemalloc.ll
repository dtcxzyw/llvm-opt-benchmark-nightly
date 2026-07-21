inline.NumInlined: 520
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 13
begin_hunk_0_@je_mallctl:bb.a
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %malloc_init.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.c, label %malloc_init.exit.thread, label %malloc_init.exit

malloc_init.exit:                                 ; preds = %bb.b, %bb.a
  %i.d = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 832
  %i.f = load i8, ptr %i.e, align 8, !tbaa !14
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.c, !prof !13

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

declare i32 @je_ctl_byname(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @je_mallctlnametomib(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr @je_malloc_init_state, align 4, !tbaa !7
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %malloc_init.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.c, label %malloc_init.exit.thread, label %malloc_init.exit

malloc_init.exit:                                 ; preds = %bb.b, %bb.a
  %i.d = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 832
  %i.f = load i8, ptr %i.e, align 8, !tbaa !14
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.c, !prof !13

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

declare i32 @je_ctl_nametomib(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @je_mallctlbymib(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr @je_malloc_init_state, align 4, !tbaa !7
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %malloc_init.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.c, label %malloc_init.exit.thread, label %malloc_init.exit

malloc_init.exit:                                 ; preds = %bb.b, %bb.a
  %i.d = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 832
  %i.f = load i8, ptr %i.e, align 8, !tbaa !14
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.c, !prof !13

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

declare i32 @je_ctl_bymib(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @je_malloc_stats_print(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.buf_writer_t, align 8       ; 5 uses
  %i.a = load i8, ptr @je_tsd_booted, align 1, !tbaa !104, !range !105, !noundef !106
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %tsdn_fetch.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 832
  %i.e = load i8, ptr %i.d, align 8, !tbaa !14
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %tsdn_fetch.exit, label %bb.c, !prof !13

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

declare zeroext i1 @je_buf_writer_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @je_stats_print(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @je_buf_writer_cb(ptr noundef, ptr noundef) #4

declare void @je_buf_writer_terminate(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @je_malloc_usable_size(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct.rtree_ctx_s, align 8        ; 5 uses
  %i.a = load i8, ptr @je_tsd_booted, align 1, !tbaa !104, !range !105, !noundef !106
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %tsdn_fetch.exit.i.thread

bb.b:                                             ; preds = %bb.a
  %i.c = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 832
  %i.e = load i8, ptr %i.d, align 8, !tbaa !14
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %tsdn_fetch.exit.i, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false) #20
  br label %tsdn_fetch.exit.i

tsdn_fetch.exit.i:                                ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.c, %bb.b ], [ %i.f, %bb.c ] ; 3 uses
  %i.g = icmp eq ptr %0, null
  br i1 %i.g, label %je_malloc_usable_size_impl.exit, label %bb.d, !prof !11

tsdn_fetch.exit.i.thread:                         ; preds = %bb.a
  %i.h = icmp eq ptr %0, null
  br i1 %i.h, label %je_malloc_usable_size_impl.exit, label %.thread, !prof !11

.thread:                                          ; preds = %tsdn_fetch.exit.i.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  br label %bb.e

bb.d:                                             ; preds = %tsdn_fetch.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.i = icmp eq ptr %.0.i.i, null
  br i1 %i.i, label %bb.e, label %bb.f, !prof !90

bb.e:                                             ; preds = %.thread, %bb.d
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %1) #20
  br label %arena_salloc.exit

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 448
  br label %arena_salloc.exit

arena_salloc.exit:                                ; preds = %bb.e, %bb.f
  %.0.i.i46 = phi ptr [ null, %bb.e ], [ %.0.i.i, %bb.f ]
  %.0.i.i2 = phi ptr [ %1, %bb.e ], [ %i.j, %bb.f ]
  %i.k = ptrtoint ptr %0 to i64
  %i.l = call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef %.0.i.i46, ptr noundef nonnull %.0.i.i2, i64 noundef %i.k)
  %.fca.0.extract.i.i = extractvalue { i64, i32 } %i.l, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.m = and i64 %.fca.0.extract.i.i, 4294967295
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !27
  br label %je_malloc_usable_size_impl.exit

je_malloc_usable_size_impl.exit:                  ; preds = %tsdn_fetch.exit.i.thread, %tsdn_fetch.exit.i, %arena_salloc.exit
  %.0.i = phi i64 [ %i.o, %arena_salloc.exit ], [ 0, %tsdn_fetch.exit.i ], [ 0, %tsdn_fetch.exit.i.thread ]
  ret i64 %.0.i
}

; Function Attrs: nounwind uwtable
define hidden i64 @je_batch_alloc(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.te_ctx_s, align 8           ; 6 uses
  %i.a = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 832
  %i.c = load i8, ptr %i.b, align 8, !tbaa !14
  %.not.i124 = icmp eq i8 %i.c, 0
  br i1 %.not.i124, label %tsd_fetch_impl.exit.thread, label %tsd_fetch_impl.exit, !prof !13

tsd_fetch_impl.exit:                              ; preds = %bb.a
  %i.d = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false) #20 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.critedge, label %tsd_fetch_impl.exit.thread, !prof !12

tsd_fetch_impl.exit.thread:                       ; preds = %bb.a, %tsd_fetch_impl.exit
  %.0.i125142 = phi ptr [ %i.d, %tsd_fetch_impl.exit ], [ %i.a, %bb.a ] ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i125142, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !14
  %i.h = icmp sgt i8 %i.g, 0
  br i1 %i.h, label %.critedge, label %bb.b, !prof !11

bb.b:                                             ; preds = %tsd_fetch_impl.exit.thread
  %i.i = and i32 %3, 63
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw i64 1, %i.j                      ; 2 uses
  %i.l = and i64 %i.k, -2                         ; 5 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ult i64 %2, 4097
  br i1 %i.n, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.o = add nuw nsw i64 %2, 7
  %i.p = lshr i64 %i.o, 3
  %i.q = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !14
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8, !tbaa !27
  br label %aligned_usize_get.exit

bb.e:                                             ; preds = %bb.c
  %i.v = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.v, label %.critedge, label %bb.f, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.w = shl nuw i64 %2, 1
  %i.x = add i64 %i.w, -1
  %i.y = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.x, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.y
  %i.z = lshr i64 1152921504606846975, %i.y
  %i.aa = add nuw nsw i64 %2, %i.z
  %i.ab = and i64 %i.aa, %notmask.i
  br label %aligned_usize_get.exit

bb.g:                                             ; preds = %bb.b
  %i.ac = icmp ult i64 %2, 14337
  %i.ad = icmp ult i64 %i.l, 4097
  %or.cond.i = and i1 %i.ac, %i.ad
  br i1 %or.cond.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ae = add nsw i64 %2, -1
  %i.af = add nsw i64 %i.ae, %i.l
  %i.ag = sub nsw i64 0, %i.l
  %i.ah = and i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp samesign ult i64 %i.ah, 4097
  br i1 %i.ai, label %bb.i, label %sz_s2u_compute.exit.i, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.aj = add nuw nsw i64 %i.ah, 6
  %i.ak = lshr i64 %i.aj, 3
  %i.al = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !14
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !27
  br label %sz_s2u.exit25.i

sz_s2u_compute.exit.i:                            ; preds = %bb.h
  %i.aq = shl nuw nsw i64 %i.ah, 1
  %i.ar = add nsw i64 %i.aq, -1
  %i.as = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ar, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.as
  %i.at = lshr i64 1152921504606846975, %i.as
  %i.au = add nuw nsw i64 %i.ah, %i.at
  %i.av = and i64 %i.au, %notmask.i.i
  br label %sz_s2u.exit25.i

sz_s2u.exit25.i:                                  ; preds = %sz_s2u_compute.exit.i, %bb.i
  %.0.i24.i = phi i64 [ %i.ap, %bb.i ], [ %i.av, %sz_s2u_compute.exit.i ] ; 2 uses
  %i.aw = icmp ult i64 %.0.i24.i, 16384
  br i1 %i.aw, label %aligned_usize_get.exit, label %.thread143

bb.j:                                             ; preds = %bb.g
  %i.ax = icmp ugt i64 %i.l, 8070450532247928832
  br i1 %i.ax, label %.critedge, label %bb.k, !prof !122

bb.k:                                             ; preds = %bb.j
  %i.ay = icmp ult i64 %2, 16385
  br i1 %i.ay, label %.thread143, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.az, label %sz_s2u_compute.exit29.i, label %bb.m, !prof !11

bb.m:                                             ; preds = %bb.l
  %i.ba = shl nuw i64 %2, 1
  %i.bb = add i64 %i.ba, -1
  %i.bc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.bb, i1 true) ; 2 uses
  %notmask.i27.i = ashr exact i64 -1152921504606846976, %i.bc
  %i.bd = lshr i64 1152921504606846975, %i.bc
  %i.be = add nuw nsw i64 %2, %i.bd
  %i.bf = and i64 %i.be, %notmask.i27.i
  br label %sz_s2u_compute.exit29.i

sz_s2u_compute.exit29.i:                          ; preds = %bb.m, %bb.l
  %.0.i28.i = phi i64 [ %i.bf, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.bg = icmp ult i64 %.0.i28.i, %2
  br i1 %i.bg, label %.critedge, label %.thread143

.thread143:                                       ; preds = %sz_s2u.exit25.i, %sz_s2u_compute.exit29.i, %bb.k
  %.0.i127 = phi i64 [ %.0.i28.i, %sz_s2u_compute.exit29.i ], [ 16384, %bb.k ], [ 16384, %sz_s2u.exit25.i ] ; 3 uses
  %i.bh = load i64, ptr @je_sz_large_pad, align 8, !tbaa !27
  %i.bi = add nuw i64 %i.k, 4094
  %i.bj = and i64 %i.bi, 9223372036854771712
  %i.bk = add nsw i64 %i.bj, -4096
  %i.bl = add i64 %i.bk, %.0.i127
  %i.bm = add i64 %i.bl, %i.bh
  %i.bn = icmp ult i64 %i.bm, %.0.i127
  %..0.i = select i1 %i.bn, i64 0, i64 %.0.i127
  br label %aligned_usize_get.exit

aligned_usize_get.exit:                           ; preds = %.thread143, %sz_s2u.exit25.i, %bb.d, %bb.f
  %storemerge.i = phi i64 [ %.0.i24.i, %sz_s2u.exit25.i ], [ %i.u, %bb.d ], [ %i.ab, %bb.f ], [ %..0.i, %.thread143 ] ; 15 uses
  %i.bo = add i64 %storemerge.i, -8070450532247928833
  %spec.select.i = icmp ult i64 %i.bo, -8070450532247928832
  br i1 %spec.select.i, label %.critedge, label %bb.n

bb.n:                                             ; preds = %aligned_usize_get.exit
  %i.bp = icmp samesign ult i64 %storemerge.i, 4097
  br i1 %i.bp, label %bb.o, label %sz_size2index_compute.exit, !prof !13

bb.o:                                             ; preds = %bb.n
  %i.bq = add nuw nsw i64 %storemerge.i, 7
  %i.br = lshr i64 %i.bq, 3
  %i.bs = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !14
  %i.bu = zext i8 %i.bt to i32
  br label %sz_size2index.exit

sz_size2index_compute.exit:                       ; preds = %bb.n
  %i.bv = shl nuw i64 %storemerge.i, 1
  %i.bw = add i64 %i.bv, -1
  %i.bx = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.bw, i1 true) ; 3 uses
  %i.by = trunc nuw nsw i64 %i.bx to i32
  %i.bz = sub nuw nsw i64 60, %i.bx
  %i.ca = ashr exact i64 -1152921504606846976, %i.bx
  %i.cb = add nsw i64 %storemerge.i, -1
  %i.cc = and i64 %i.ca, %i.cb
  %i.cd = lshr i64 %i.cc, %i.bz
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = and i32 %i.ce, 3
  %i.cg = shl nuw nsw i32 %i.by, 2
  %reass.sub = sub nsw i32 %i.cf, %i.cg
  %i.ch = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.o, %sz_size2index_compute.exit
  %.0.i118 = phi i32 [ %i.bu, %bb.o ], [ %i.ch, %sz_size2index_compute.exit ] ; 4 uses
  %i.ci = and i32 %3, 64
  %i.cj = icmp ne i32 %i.ci, 0
  %i.ck = load i8, ptr @je_opt_zero, align 1, !range !105
  %i.cl = trunc nuw i8 %i.ck to i1
  %.0.i116 = or i1 %i.cj, %i.cl                   ; 2 uses
  %i.cm = zext nneg i32 %.0.i118 to i64           ; 3 uses
  %i.cn = icmp samesign ugt i32 %.0.i118, 38      ; 2 uses
  br i1 %i.cn, label %bb.q, label %bb.p, !prof !11

bb.p:                                             ; preds = %sz_size2index.exit
  %i.co = getelementptr inbounds nuw [40 x i8], ptr @je_bin_infos, i64 %i.cm
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !156
  %i.cr = zext i32 %i.cq to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %sz_size2index.exit
  %.095 = phi i64 [ %i.cr, %bb.p ], [ 0, %sz_size2index.exit ] ; 2 uses
  %.not.i = icmp ult i32 %3, 1048576
  %i.cs = lshr i32 %3, 20
  %i.ct = add nsw i32 %i.cs, -1                   ; 3 uses
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.cu
  %i.cw = and i32 %3, 1048320                     ; 2 uses
  %i.cx = lshr exact i32 %i.cw, 8
  %i.cy = add nsw i32 %i.cx, -2                   ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i125142, i64 880
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %i.cz, i64 %i.cm
  %i.db = zext nneg i32 %i.cy to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i125142, i64 840 ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i125142, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i125142, i64 16 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %7 = getelementptr inbounds nuw i8, ptr %.0.i125142, i64 848
  %8 = insertelement <2 x ptr> poison, ptr %i.dc, i64 0
  %9 = insertelement <2 x ptr> %8, ptr %i.dd, i64 1
  %10 = insertelement <2 x ptr> poison, ptr %i.de, i64 0
  %11 = insertelement <2 x ptr> %10, ptr %7, i64 1
  br label %bb.r

bb.r:                                             ; preds = %select.unfold170, %bb.q
  %.0 = phi ptr [ null, %bb.q ], [ %.5139, %select.unfold170 ] ; 3 uses
  %.090 = phi ptr [ null, %bb.q ], [ %.494, %select.unfold170 ] ; 4 uses
  %.089 = phi i64 [ 0, %bb.q ], [ %.5, %select.unfold170 ] ; 8 uses
  %i.df = icmp ult i64 %.089, %1
  br i1 %i.df, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.dg = sub nuw i64 %1, %.089                   ; 6 uses
  %.not = icmp ult i64 %i.dg, %.095
  %or.cond = select i1 %i.cn, i1 true, i1 %.not, !prof !157
  br i1 %or.cond, label %bb.w, label %bb.t, !prof !157

bb.t:                                             ; preds = %bb.s
  %i.dh = icmp eq ptr %.0, null
  br i1 %i.dh, label %bb.u, label %arena_get_from_ind.exit.thread158

bb.u:                                             ; preds = %bb.t
  br i1 %.not.i, label %arena_get_from_ind.exit, label %mallocx_arena_get.exit, !prof !13

mallocx_arena_get.exit:                           ; preds = %bb.u
  %i.di = load atomic ptr, ptr %i.cv acquire, align 8 ; 2 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %arena_get.exit, label %arena_get_from_ind.exit.thread158, !prof !11

arena_get.exit:                                   ; preds = %mallocx_arena_get.exit
  %i.dk = call ptr @je_arena_init(ptr noundef nonnull %.0.i125142, i32 noundef %i.ct, ptr noundef nonnull @je_arena_config_default), !inline_history !15 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %bb.v, label %arena_get_from_ind.exit.thread158, !prof !12

bb.v:                                             ; preds = %arena_get.exit
  %i.dm = load i32, ptr @je_narenas_auto, align 4, !tbaa !7
  %.not.i120 = icmp ult i32 %i.ct, %i.dm
  br i1 %.not.i120, label %arena_get_from_ind.exit, label %.critedge

arena_get_from_ind.exit:                          ; preds = %bb.v, %bb.u
  %i.dn = call fastcc ptr @arena_choose(ptr noundef nonnull %.0.i125142, ptr noundef null) ; 2 uses
  %.not190 = icmp eq ptr %i.dn, null
  br i1 %.not190, label %select.unfold170, label %arena_get_from_ind.exit.thread158

arena_get_from_ind.exit.thread158:                ; preds = %mallocx_arena_get.exit, %arena_get.exit, %arena_get_from_ind.exit, %bb.t
  %.3138 = phi ptr [ %i.dn, %arena_get_from_ind.exit ], [ %.0, %bb.t ], [ %i.dk, %arena_get.exit ], [ %i.di, %mallocx_arena_get.exit ] ; 2 uses
  %i.do = urem i64 %i.dg, %.095
  %i.dp = sub i64 %i.dg, %i.do
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.089
  %i.dr = call i64 @je_arena_fill_small_fresh(ptr noundef nonnull %.0.i125142, ptr noundef nonnull %.3138, i32 noundef %.0.i118, ptr noundef %i.dq, i64 noundef %i.dp, i1 noundef zeroext %.0.i116) #20 ; 2 uses
  %i.ds = add i64 %i.dr, %.089
  br label %bb.w

bb.w:                                             ; preds = %arena_get_from_ind.exit.thread158, %bb.s
  %.4 = phi ptr [ %.0, %bb.s ], [ %.3138, %arena_get_from_ind.exit.thread158 ] ; 2 uses
  %.097 = phi i64 [ 0, %bb.s ], [ %i.dr, %arena_get_from_ind.exit.thread158 ] ; 8 uses
  %.1 = phi i64 [ %.089, %bb.s ], [ %i.ds, %arena_get_from_ind.exit.thread158 ] ; 7 uses
  %i.dt = load i32, ptr @je_nhbins, align 4, !tbaa !7
  %i.du = icmp ult i32 %.0.i118, %i.dt
  %i.dv = icmp ult i64 %.097, %i.dg
  %or.cond112 = select i1 %i.du, i1 %i.dv, i1 false, !prof !16
  br i1 %or.cond112, label %bb.x, label %tcache_get_from_ind.exit.thread, !prof !16

bb.x:                                             ; preds = %bb.w
  %i.dw = icmp eq ptr %.090, null
  br i1 %i.dw, label %bb.y, label %tcache_get_from_ind.exit.thread178

bb.y:                                             ; preds = %bb.x
  switch i32 %i.cw, label %mallocx_tcache_get.exit [
    i32 0, label %mallocx_tcache_get.exit.thread
    i32 256, label %tcache_get_from_ind.exit.thread
  ], !prof !142

mallocx_tcache_get.exit:                          ; preds = %bb.y
  switch i32 %i.cy, label %bb.z [
    i32 -2, label %mallocx_tcache_get.exit.thread
    i32 -1, label %tcache_get_from_ind.exit.thread
  ]

mallocx_tcache_get.exit.thread:                   ; preds = %bb.y, %mallocx_tcache_get.exit
  %i.dx = load i8, ptr %.0.i125142, align 1, !tbaa !104, !range !105, !noundef !106
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %tcache_get_from_ind.exit.thread178, label %tcache_get_from_ind.exit.thread

bb.z:                                             ; preds = %mallocx_tcache_get.exit
  %i.dz = load ptr, ptr @je_tcaches, align 8, !tbaa !143
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.db ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !14 ; 2 uses
  %magicptr.i = ptrtoint ptr %i.eb to i64
  switch i64 %magicptr.i, label %tcache_get_from_ind.exit [
    i64 0, label %bb.aa
    i64 1, label %bb.ab
  ], !prof !145

bb.aa:                                            ; preds = %bb.z
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.153, i32 noundef range(i32 0, -2) %i.cy) #20
  call void @abort() #21
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.ec = call ptr @je_tcache_create_explicit(ptr noundef nonnull %.0.i125142) #20 ; 2 uses
  store ptr %i.ec, ptr %i.ea, align 8, !tbaa !14
  br label %tcache_get_from_ind.exit

tcache_get_from_ind.exit:                         ; preds = %bb.ab, %bb.z
  %i.ed = phi ptr [ %i.ec, %bb.ab ], [ %i.eb, %bb.z ] ; 2 uses
  %.not107 = icmp eq ptr %i.ed, null
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = getelementptr inbounds nuw [24 x i8], ptr %i.ee, i64 %i.cm
  br i1 %.not107, label %tcache_get_from_ind.exit.thread, label %tcache_get_from_ind.exit.thread178

tcache_get_from_ind.exit.thread178:               ; preds = %mallocx_tcache_get.exit.thread, %tcache_get_from_ind.exit, %bb.x
  %.292.ph = phi ptr [ %.090, %bb.x ], [ %i.ef, %tcache_get_from_ind.exit ], [ %i.da, %mallocx_tcache_get.exit.thread ] ; 7 uses
  %i.eg = sub i64 %i.dg, %.097
  %i.eh = getelementptr [8 x i8], ptr %0, i64 %.1 ; 10 uses
  %.292.val = load ptr, ptr %.292.ph, align 8, !tbaa !92 ; 2 uses
  %i.ei = getelementptr i8, ptr %.292.ph, i64 20  ; 2 uses
  %.292.val128 = load i16, ptr %i.ei, align 4, !tbaa !99
  %i.ej = ptrtoint ptr %.292.val to i64
  %i.ek = trunc i64 %i.ej to i16
  %i.el = sub i16 %.292.val128, %i.ek
  %i.em = lshr i16 %i.el, 3
  %i.en = zext nneg i16 %i.em to i64
  %spec.select.i121191 = call i64 @llvm.umin.i64(i64 %i.eg, i64 %i.en) ; 9 uses
  %i.eo = shl nuw nsw i64 %spec.select.i121191, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.eh, ptr align 8 %.292.val, i64 %i.eo, i1 false)
  %i.ep = load ptr, ptr %.292.ph, align 8, !tbaa !92
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %spec.select.i121191 ; 2 uses
  store ptr %i.eq, ptr %.292.ph, align 8, !tbaa !92
  %.val3.i = load i16, ptr %i.ei, align 4, !tbaa !99 ; 2 uses
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = trunc i64 %i.er to i16                  ; 2 uses
  %i.et = sub i16 %.val3.i, %i.es
  %i.eu = lshr i16 %i.et, 3
  %i.ev = getelementptr i8, ptr %.292.ph, i64 16  ; 2 uses
  %.val4.i = load i16, ptr %i.ev, align 8, !tbaa !98
  %i.ew = sub i16 %.val3.i, %.val4.i
  %i.ex = lshr i16 %i.ew, 3
  %i.ey = icmp samesign ult i16 %i.eu, %i.ex
  br i1 %i.ey, label %bb.ac, label %cache_bin_low_water_adjust.exit

bb.ac:                                            ; preds = %tcache_get_from_ind.exit.thread178
  store i16 %i.es, ptr %i.ev, align 8, !tbaa !98
  br label %cache_bin_low_water_adjust.exit

cache_bin_low_water_adjust.exit:                  ; preds = %tcache_get_from_ind.exit.thread178, %bb.ac
  %i.ez = getelementptr inbounds nuw i8, ptr %.292.ph, i64 8 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !107
  %i.fb = add i64 %i.fa, %spec.select.i121191
  store i64 %i.fb, ptr %i.ez, align 8, !tbaa !107
  %i.fc = icmp ne i64 %spec.select.i121191, 0
  %or.cond193 = and i1 %.0.i116, %i.fc
  br i1 %or.cond193, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %cache_bin_low_water_adjust.exit
  %xtraiter = and i64 %spec.select.i121191, 7     ; 3 uses
  %i.fd = icmp samesign ult i64 %spec.select.i121191, 8
  br i1 %i.fd, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %spec.select.i121191, 8184
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.088192 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.gb, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.fe = getelementptr [8 x i8], ptr %i.eh, i64 %.088192
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !97
  call void @llvm.memset.p0.i64(ptr align 1 %i.ff, i8 0, i64 %storemerge.i, i1 false)
  %i.fg = getelementptr [8 x i8], ptr %i.eh, i64 %.088192
  %i.fh = getelementptr i8, ptr %i.fg, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !97
  call void @llvm.memset.p0.i64(ptr align 1 %i.fi, i8 0, i64 %storemerge.i, i1 false)
  %i.fj = getelementptr [8 x i8], ptr %i.eh, i64 %.088192
  %i.fk = getelementptr i8, ptr %i.fj, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !97
  call void @llvm.memset.p0.i64(ptr align 1 %i.fl, i8 0, i64 %storemerge.i, i1 false)
  %i.fm = getelementptr [8 x i8], ptr %i.eh, i64 %.088192
  %i.fn = getelementptr i8, ptr %i.fm, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !97
  call void @llvm.memset.p0.i64(ptr align 1 %i.fo, i8 0, i64 %storemerge.i, i1 false)
  %i.fp = getelementptr [8 x i8], ptr %i.eh, i64 %.088192
  %i.fq = getelementptr i8, ptr %i.fp, i64 32
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !97
  call void @llvm.memset.p0.i64(ptr align 1 %i.fr, i8 0, i64 %storemerge.i, i1 false)
  %i.fs = getelementptr [8 x i8], ptr %i.eh, i64 %.088192
  %i.ft = getelementptr i8, ptr %i.fs, i64 40
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !97
  call void @llvm.memset.p0.i64(ptr align 1 %i.fu, i8 0, i64 %storemerge.i, i1 false)
  %i.fv = getelementptr [8 x i8], ptr %i.eh, i64 %.088192
  %i.fw = getelementptr i8, ptr %i.fv, i64 48
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !97
  call void @llvm.memset.p0.i64(ptr align 1 %i.fx, i8 0, i64 %storemerge.i, i1 false)
  %i.fy = getelementptr [8 x i8], ptr %i.eh, i64 %.088192
  %i.fz = getelementptr i8, ptr %i.fy, i64 56
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !97
  call void @llvm.memset.p0.i64(ptr align 1 %i.ga, i8 0, i64 %storemerge.i, i1 false)
  %i.gb = add nuw nsw i64 %.088192, 8             ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !158

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.088192.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.gb, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod209 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod209)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.088192.epil = phi i64 [ %i.ge, %.lr.ph.epil ], [ %.088192.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.gc = getelementptr [8 x i8], ptr %i.eh, i64 %.088192.epil
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !97
  call void @llvm.memset.p0.i64(ptr align 1 %i.gd, i8 0, i64 %storemerge.i, i1 false)
  %i.ge = add nuw nsw i64 %.088192.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !159

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %cache_bin_low_water_adjust.exit
  %i.gf = add i64 %spec.select.i121191, %.097
  %i.gg = add i64 %spec.select.i121191, %.1
  br label %tcache_get_from_ind.exit.thread

tcache_get_from_ind.exit.thread:                  ; preds = %bb.y, %mallocx_tcache_get.exit.thread, %mallocx_tcache_get.exit, %tcache_get_from_ind.exit, %.loopexit, %bb.w
  %.198 = phi i64 [ %i.gf, %.loopexit ], [ %.097, %bb.w ], [ %.097, %tcache_get_from_ind.exit ], [ %.097, %mallocx_tcache_get.exit ], [ %.097, %mallocx_tcache_get.exit.thread ], [ %.097, %bb.y ] ; 2 uses
  %.393 = phi ptr [ %.292.ph, %.loopexit ], [ %.090, %bb.w ], [ null, %tcache_get_from_ind.exit ], [ null, %mallocx_tcache_get.exit ], [ null, %mallocx_tcache_get.exit.thread ], [ null, %bb.y ] ; 2 uses
  %.2 = phi i64 [ %i.gg, %.loopexit ], [ %.1, %bb.w ], [ %.1, %tcache_get_from_ind.exit ], [ %.1, %mallocx_tcache_get.exit ], [ %.1, %mallocx_tcache_get.exit.thread ], [ %.1, %bb.y ] ; 4 uses
  %i.gh = mul i64 %.198, %storemerge.i            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store i8 1, ptr %4, align 8, !tbaa !109
  store <2 x ptr> %9, ptr %5, align 8, !tbaa !161
  store <2 x ptr> %11, ptr %6, align 8, !tbaa !161
  %i.gi = load i64, ptr %i.dc, align 8, !tbaa !27 ; 2 uses
  %i.gj = add i64 %i.gi, %i.gh
  store i64 %i.gj, ptr %i.dc, align 8, !tbaa !27
  %i.gk = load i64, ptr %i.de, align 8, !tbaa !27
  %i.gl = sub i64 %i.gk, %i.gi
  %i.gm = icmp ult i64 %i.gh, %i.gl
  br i1 %i.gm, label %te_event_advance.exit, label %bb.ad, !prof !13

bb.ad:                                            ; preds = %tcache_get_from_ind.exit.thread
  call void @je_te_event_trigger(ptr noundef nonnull %.0.i125142, ptr noundef nonnull %4) #20
  br label %te_event_advance.exit

te_event_advance.exit:                            ; preds = %tcache_get_from_ind.exit.thread, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.gn = icmp ult i64 %.198, %i.dg
  br i1 %i.gn, label %bb.ae, label %select.unfold170

bb.ae:                                            ; preds = %te_event_advance.exit
  %i.go = call noalias ptr @je_mallocx(i64 noundef %2, i32 noundef %3) #23 ; 2 uses
  %.not109 = icmp eq ptr %i.go, null
  br i1 %.not109, label %.critedge, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gp = add i64 %.2, 1
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.2
  store ptr %i.go, ptr %i.gq, align 8, !tbaa !97
  br label %select.unfold170

select.unfold170:                                 ; preds = %bb.af, %te_event_advance.exit, %arena_get_from_ind.exit
  %.5139 = phi ptr [ %.4, %bb.af ], [ %.4, %te_event_advance.exit ], [ null, %arena_get_from_ind.exit ]
  %i.gr = phi i1 [ true, %bb.af ], [ true, %te_event_advance.exit ], [ false, %arena_get_from_ind.exit ]
  %.494 = phi ptr [ %.393, %bb.af ], [ %.393, %te_event_advance.exit ], [ %.090, %arena_get_from_ind.exit ]
  %.5 = phi i64 [ %i.gp, %bb.af ], [ %.2, %te_event_advance.exit ], [ %.089, %arena_get_from_ind.exit ] ; 2 uses
  br i1 %i.gr, label %bb.r, label %.critedge

.critedge:                                        ; preds = %bb.ae, %bb.v, %select.unfold170, %bb.r, %sz_s2u_compute.exit29.i, %bb.j, %bb.e, %tsd_fetch_impl.exit, %aligned_usize_get.exit, %tsd_fetch_impl.exit.thread
  %.6 = phi i64 [ 0, %tsd_fetch_impl.exit.thread ], [ 0, %aligned_usize_get.exit ], [ 0, %bb.e ], [ 0, %bb.j ], [ 0, %tsd_fetch_impl.exit ], [ 0, %sz_s2u_compute.exit29.i ], [ %.2, %bb.ae ], [ %.089, %bb.v ], [ %.5, %select.unfold170 ], [ %.089, %bb.r ]
  ret i64 %.6
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @arena_choose(ptr noundef %0, ptr nofree noundef readnone captures(address_is_null, ret: address, provenance) %1) unnamed_addr #9 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %arena_choose_impl.exit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !14
  %i.c = icmp sgt i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.e, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = load atomic ptr, ptr @je_arenas acquire, align 64 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %arena_choose_impl.exit, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @je_arena_init(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @je_arena_config_default), !inline_history !15
  br label %arena_choose_impl.exit

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !36   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.k, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr @je_arena_choose_hard(ptr noundef nonnull %0, i1 noundef zeroext false) ; 7 uses
  %i.k = load i8, ptr %0, align 8, !tbaa !104, !range !105, !noundef !106
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !162  ; 2 uses
  %.not43.i = icmp eq ptr %i.p, null
  br i1 %.not43.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not44.i = icmp eq ptr %i.p, %i.j
  br i1 %.not44.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @je_tcache_arena_reassociate(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef %i.j) #20
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  tail call void @je_tcache_arena_associate(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef %i.j) #20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e
  %.037.i = phi ptr [ %i.h, %bb.e ], [ %i.j, %bb.f ], [ %i.j, %bb.h ], [ %i.j, %bb.i ], [ %i.j, %bb.j ] ; 6 uses
  %i.q = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !7 ; 2 uses
  %i.r = icmp ult i32 %i.q, 3
  br i1 %i.r, label %arena_choose_impl.exit, label %percpu_arena_ind_limit.exit.i

percpu_arena_ind_limit.exit.i:                    ; preds = %bb.k
  %i.s = getelementptr i8, ptr %.037.i, i64 78928 ; 2 uses
  %.037.val48.i = load i32, ptr %i.s, align 8, !tbaa !38
  %i.t = icmp eq i32 %i.q, 4
  %i.u = load i32, ptr @je_ncpus, align 4         ; 4 uses
  %i.v = icmp ugt i32 %i.u, 1
  %or.cond.i.i = and i1 %i.t, %i.v
  %i.w = and i32 %i.u, 1
  %i.x = lshr i32 %i.u, 1
  %spec.select.i = add nuw i32 %i.x, %i.w
  %.0.i47.i = select i1 %or.cond.i.i, i32 %spec.select.i, i32 %i.u
  %i.y = icmp ult i32 %.037.val48.i, %.0.i47.i
  br i1 %i.y, label %bb.l, label %arena_choose_impl.exit

bb.l:                                             ; preds = %percpu_arena_ind_limit.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %.037.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !169
  %.not45.i = icmp eq ptr %i.aa, %0
  br i1 %.not45.i, label %arena_choose_impl.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = tail call i32 @sched_getcpu() #20       ; 3 uses
  %i.ac = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !7
  %i.ad = icmp eq i32 %i.ac, 3
  br i1 %i.ad, label %percpu_arena_choose.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = load i32, ptr @je_ncpus, align 4, !tbaa !7
  %i.af = lshr i32 %i.ae, 1                       ; 2 uses
  %i.ag = icmp ult i32 %i.ab, %i.af
  %i.ah = select i1 %i.ag, i32 0, i32 %i.af
  %spec.select.i.i = sub nuw i32 %i.ab, %i.ah
  br label %percpu_arena_choose.exit.i

percpu_arena_choose.exit.i:                       ; preds = %bb.n, %bb.m
  %.0.i.i = phi i32 [ %i.ab, %bb.m ], [ %spec.select.i.i, %bb.n ] ; 4 uses
  %.037.val.i = load i32, ptr %i.s, align 8, !tbaa !38
  %.not46.i = icmp eq i32 %.037.val.i, %.0.i.i
  br i1 %.not46.i, label %bb.t, label %bb.o

bb.o:                                             ; preds = %percpu_arena_choose.exit.i
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !36  ; 4 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 78928
  %.val.i.i = load i32, ptr %i.aj, align 8, !tbaa !38
  %.not.i50.i = icmp eq i32 %.val.i.i, %.0.i.i
  br i1 %.not.i50.i, label %percpu_arena_update.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = zext i32 %.0.i.i to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.ak
  %i.am = load atomic ptr, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.q, label %arena_get.exit.i.i, !prof !11

bb.q:                                             ; preds = %bb.p
  %i.ao = tail call ptr @je_arena_init(ptr noundef nonnull %0, i32 noundef %.0.i.i, ptr noundef nonnull @je_arena_config_default), !inline_history !15
  br label %arena_get.exit.i.i

arena_get.exit.i.i:                               ; preds = %bb.q, %bb.p
  %.0.i18.i.i = phi ptr [ %i.ao, %bb.q ], [ %i.am, %bb.p ] ; 3 uses
  tail call void @je_arena_nthreads_dec(ptr noundef nonnull %i.ai, i1 noundef zeroext false) #20
  tail call void @je_arena_nthreads_inc(ptr noundef %.0.i18.i.i, i1 noundef zeroext false) #20
  store ptr %.0.i18.i.i, ptr %i.g, align 8, !tbaa !36
  %i.ap = tail call i32 @je_arena_nthreads_get(ptr noundef nonnull %i.ai, i1 noundef zeroext false) #20
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.r, label %je_arena_migrate.exit.i.i

bb.r:                                             ; preds = %arena_get.exit.i.i
  tail call void @je_arena_decay(ptr noundef nonnull %0, ptr noundef nonnull %i.ai, i1 noundef zeroext false, i1 noundef zeroext true) #20
  br label %je_arena_migrate.exit.i.i

je_arena_migrate.exit.i.i:                        ; preds = %bb.r, %arena_get.exit.i.i
  %i.ar = load i8, ptr %0, align 8, !tbaa !104, !range !105, !noundef !106
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.s, label %percpu_arena_update.exit.i

bb.s:                                             ; preds = %je_arena_migrate.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @je_tcache_arena_reassociate(ptr noundef nonnull %0, ptr noundef nonnull %i.au, ptr noundef nonnull %i.at, ptr noundef %.0.i18.i.i) #20
  br label %percpu_arena_update.exit.i

percpu_arena_update.exit.i:                       ; preds = %bb.s, %je_arena_migrate.exit.i.i, %bb.o
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !36
  br label %bb.t

bb.t:                                             ; preds = %percpu_arena_update.exit.i, %percpu_arena_choose.exit.i
  %.1.i = phi ptr [ %i.av, %percpu_arena_update.exit.i ], [ %.037.i, %percpu_arena_choose.exit.i ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  store ptr %0, ptr %i.aw, align 8, !tbaa !169
  br label %arena_choose_impl.exit

arena_choose_impl.exit:                           ; preds = %bb.a, %bb.c, %bb.d, %bb.k, %percpu_arena_ind_limit.exit.i, %bb.l, %bb.t
  %.0.i = phi ptr [ %1, %bb.a ], [ %.037.i, %percpu_arena_ind_limit.exit.i ], [ %.037.i, %bb.k ], [ %.1.i, %bb.t ], [ %.037.i, %bb.l ], [ %i.f, %bb.d ], [ %i.d, %bb.c ]
  ret ptr %.0.i
}

declare i64 @je_arena_fill_small_fresh(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11
end_hunk_0
