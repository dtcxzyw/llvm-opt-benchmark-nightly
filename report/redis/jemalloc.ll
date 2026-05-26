inline.NumInlined: 520
inline.NumDeleted: 74
begin_hunk_0_@je_sdallocx:bb.a
  store ptr %i.w, ptr %i.p, align 8, !tbaa !92
  store ptr %0, ptr %i.w, align 8, !tbaa !97
  store i64 %i.n, ptr %i.g, align 8, !tbaa !27
  br label %bb.e

.split5:                                          ; preds = %bb.b, %bb.c, %bb.d
  tail call void @je_sdallocx_default(ptr noundef %0, i64 noundef %1, i32 noundef 0)
  br label %bb.e

bb.e:                                             ; preds = %free_fastpath.exit, %.split, %.split5
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_je_sdallocx_noflags(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.b = icmp ugt i64 %1, 4096
  br i1 %i.b, label %bb.d, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = add nuw nsw i64 %1, 7
  %i.d = lshr i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 856 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 864
  %i.j = load i64, ptr %i.i, align 8, !tbaa !27
  %i.k = zext i8 %i.f to i64                      ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !27
  %i.n = add i64 %i.m, %i.h                       ; 2 uses
  %.not34.i = icmp ult i64 %i.n, %i.j
  br i1 %.not34.i, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 880
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.k ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !92   ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 18
  %i.t = load i16, ptr %i.s, align 2, !tbaa !132
  %i.u = trunc i64 %i.r to i16
  %i.v = icmp eq i16 %i.t, %i.u
  br i1 %i.v, label %bb.d, label %free_fastpath.exit, !prof !11

free_fastpath.exit:                               ; preds = %bb.c
  %i.w = getelementptr inbounds i8, ptr %i.q, i64 -8 ; 2 uses
  store ptr %i.w, ptr %i.p, align 8, !tbaa !92
  store ptr %0, ptr %i.w, align 8, !tbaa !97
  store i64 %i.n, ptr %i.g, align 8, !tbaa !27
  br label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  tail call void @je_sdallocx_default(ptr noundef %0, i64 noundef %1, i32 noundef 0)
  br label %bb.e

bb.e:                                             ; preds = %free_fastpath.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local range(i64 0, 8070450532247928833) i64 @je_nallocx(i64 noundef %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = load i32, ptr @je_malloc_init_state, align 4, !tbaa !7
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %malloc_init.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.c, label %malloc_init.exit.thread, label %malloc_init.exit

malloc_init.exit:                                 ; preds = %bb.b, %bb.a
  %i.d = load i8, ptr @je_tsd_booted, align 1, !tbaa !104, !range !105, !noundef !106
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %tsdn_fetch.exit

bb.c:                                             ; preds = %malloc_init.exit
  %i.f = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 832
  %i.h = load i8, ptr %i.g, align 8, !tbaa !14
  %.not.i = icmp eq i8 %i.h, 0
  br i1 %.not.i, label %tsdn_fetch.exit, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.f, i1 noundef zeroext false) #20 ; 0 uses
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
  br i1 %i.o, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %bb.e
  %i.p = add nuw nsw i64 %0, 7
  %i.q = lshr i64 %i.p, 3
  %i.r = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !14
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !27
  br label %aligned_usize_get.exit

bb.g:                                             ; preds = %bb.e
  %i.w = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.w, label %malloc_init.exit.thread, label %bb.h, !prof !11

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
  br i1 %i.aj, label %bb.k, label %sz_s2u_compute.exit.i, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.ak = add nuw nsw i64 %i.ai, 6
  %i.al = lshr i64 %i.ak, 3
  %i.am = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !14
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !27
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
  br i1 %i.ay, label %malloc_init.exit.thread, label %bb.m, !prof !122

bb.m:                                             ; preds = %bb.l
  %i.az = icmp ult i64 %0, 16385
  br i1 %i.az, label %.thread15, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.ba, label %sz_s2u_compute.exit29.i, label %bb.o, !prof !11

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
  %i.bi = load i64, ptr @je_sz_large_pad, align 8, !tbaa !27
  %i.bj = add nuw i64 %i.l, 4094
  %i.bk = and i64 %i.bj, 9223372036854771712
  %i.bl = add nsw i64 %i.bk, -4096
  %i.bm = add i64 %i.bl, %.0.i13
  %i.bn = add i64 %i.bm, %i.bi
  %i.bo = icmp ult i64 %i.bn, %.0.i13
  %cond.fr = freeze i1 %i.bo
  br i1 %cond.fr, label %malloc_init.exit.thread, label %aligned_usize_get.exit

aligned_usize_get.exit:                           ; preds = %.thread15, %bb.f, %bb.h
  %storemerge.i = phi i64 [ %.0.i13, %.thread15 ], [ %i.v, %bb.f ], [ %i.ac, %bb.h ] ; 2 uses
  %i.bp = icmp ugt i64 %storemerge.i, 8070450532247928832
  %spec.select = select i1 %i.bp, i64 0, i64 %storemerge.i, !prof !155
  br label %malloc_init.exit.thread

malloc_init.exit.thread:                          ; preds = %aligned_usize_get.exit, %.thread15, %sz_s2u_compute.exit29.i, %sz_s2u.exit25.i, %bb.l, %bb.g, %bb.b
  %.0 = phi i64 [ %spec.select, %aligned_usize_get.exit ], [ 0, %.thread15 ], [ 0, %bb.b ], [ 0, %bb.g ], [ 0, %sz_s2u_compute.exit29.i ], [ %.0.i24.i, %sz_s2u.exit25.i ], [ 0, %bb.l ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @je_mallctl(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
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
end_hunk_0
begin_hunk_1_@je_batch_alloc:bb.a
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
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i125142, i64 840 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i125142, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i125142, <4 x i64> <i64 840, i64 8, i64 16, i64 848>
  br label %bb.r

bb.r:                                             ; preds = %select.unfold170, %bb.q
  %.0 = phi ptr [ null, %bb.q ], [ %.5139, %select.unfold170 ] ; 3 uses
  %.090 = phi ptr [ null, %bb.q ], [ %.494, %select.unfold170 ] ; 4 uses
  %.089 = phi i64 [ 0, %bb.q ], [ %.5, %select.unfold170 ] ; 8 uses
  %i.dg = icmp ult i64 %.089, %1
  br i1 %i.dg, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.dh = sub nuw i64 %1, %.089                   ; 6 uses
  %.not = icmp ult i64 %i.dh, %.095
  %or.cond = select i1 %i.cn, i1 true, i1 %.not, !prof !157
  br i1 %or.cond, label %bb.w, label %bb.t, !prof !157

bb.t:                                             ; preds = %bb.s
  %i.di = icmp eq ptr %.0, null
  br i1 %i.di, label %bb.u, label %arena_get_from_ind.exit.thread158

bb.u:                                             ; preds = %bb.t
  br i1 %.not.i, label %arena_get_from_ind.exit, label %mallocx_arena_get.exit, !prof !13

mallocx_arena_get.exit:                           ; preds = %bb.u
  %i.dj = load atomic ptr, ptr %i.cv acquire, align 8 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %arena_get.exit, label %arena_get_from_ind.exit.thread158, !prof !11

arena_get.exit:                                   ; preds = %mallocx_arena_get.exit
  %i.dl = call ptr @je_arena_init(ptr noundef nonnull %.0.i125142, i32 noundef %i.ct, ptr noundef nonnull @je_arena_config_default), !inline_history !15 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.v, label %arena_get_from_ind.exit.thread158, !prof !12

bb.v:                                             ; preds = %arena_get.exit
  %i.dn = load i32, ptr @je_narenas_auto, align 4, !tbaa !7
  %.not.i120 = icmp ult i32 %i.ct, %i.dn
  br i1 %.not.i120, label %arena_get_from_ind.exit, label %.critedge

arena_get_from_ind.exit:                          ; preds = %bb.v, %bb.u
  %i.do = call fastcc ptr @arena_choose(ptr noundef nonnull %.0.i125142, ptr noundef null) ; 2 uses
  %.not192 = icmp eq ptr %i.do, null
  br i1 %.not192, label %select.unfold170, label %arena_get_from_ind.exit.thread158

arena_get_from_ind.exit.thread158:                ; preds = %mallocx_arena_get.exit, %arena_get.exit, %arena_get_from_ind.exit, %bb.t
  %.3138 = phi ptr [ %i.do, %arena_get_from_ind.exit ], [ %.0, %bb.t ], [ %i.dl, %arena_get.exit ], [ %i.dj, %mallocx_arena_get.exit ] ; 2 uses
  %i.dp = urem i64 %i.dh, %.095
  %i.dq = sub i64 %i.dh, %i.dp
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.089
  %i.ds = call i64 @je_arena_fill_small_fresh(ptr noundef nonnull %.0.i125142, ptr noundef nonnull %.3138, i32 noundef %.0.i118, ptr noundef %i.dr, i64 noundef %i.dq, i1 noundef zeroext %.0.i116) #20 ; 2 uses
  %i.dt = add i64 %i.ds, %.089
  br label %bb.w

bb.w:                                             ; preds = %arena_get_from_ind.exit.thread158, %bb.s
  %.4 = phi ptr [ %.0, %bb.s ], [ %.3138, %arena_get_from_ind.exit.thread158 ] ; 2 uses
  %.097 = phi i64 [ 0, %bb.s ], [ %i.ds, %arena_get_from_ind.exit.thread158 ] ; 8 uses
  %.1 = phi i64 [ %.089, %bb.s ], [ %i.dt, %arena_get_from_ind.exit.thread158 ] ; 7 uses
  %i.du = load i32, ptr @je_nhbins, align 4, !tbaa !7
  %i.dv = icmp ult i32 %.0.i118, %i.du
  %i.dw = icmp ult i64 %.097, %i.dh
  %or.cond112 = select i1 %i.dv, i1 %i.dw, i1 false, !prof !16
  br i1 %or.cond112, label %bb.x, label %tcache_get_from_ind.exit.thread, !prof !16

bb.x:                                             ; preds = %bb.w
  %i.dx = icmp eq ptr %.090, null
  br i1 %i.dx, label %bb.y, label %tcache_get_from_ind.exit.thread179

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
  %i.dy = load i8, ptr %.0.i125142, align 1, !tbaa !104, !range !105, !noundef !106
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %tcache_get_from_ind.exit.thread179, label %tcache_get_from_ind.exit.thread

bb.z:                                             ; preds = %mallocx_tcache_get.exit
  %i.ea = load ptr, ptr @je_tcaches, align 8, !tbaa !143
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.db ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !14 ; 2 uses
  %magicptr.i = ptrtoint ptr %i.ec to i64
  switch i64 %magicptr.i, label %tcache_get_from_ind.exit [
    i64 0, label %bb.aa
    i64 1, label %bb.ab
  ], !prof !145

bb.aa:                                            ; preds = %bb.z
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.153, i32 noundef range(i32 0, -2) %i.cy) #20
  call void @abort() #21
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.ed = call ptr @je_tcache_create_explicit(ptr noundef nonnull %.0.i125142) #20 ; 2 uses
  store ptr %i.ed, ptr %i.eb, align 8, !tbaa !14
  br label %tcache_get_from_ind.exit

tcache_get_from_ind.exit:                         ; preds = %bb.ab, %bb.z
  %i.ee = phi ptr [ %i.ed, %bb.ab ], [ %i.ec, %bb.z ]
  %.fr = freeze ptr %i.ee                         ; 2 uses
  %.not107 = icmp eq ptr %.fr, null
  %i.ef = getelementptr inbounds nuw i8, ptr %.fr, i64 8
  %i.eg = getelementptr inbounds nuw [24 x i8], ptr %i.ef, i64 %i.cm
  br i1 %.not107, label %tcache_get_from_ind.exit.thread, label %tcache_get_from_ind.exit.thread179

tcache_get_from_ind.exit.thread179:               ; preds = %mallocx_tcache_get.exit.thread, %tcache_get_from_ind.exit, %bb.x
  %.292.ph = phi ptr [ %.090, %bb.x ], [ %i.eg, %tcache_get_from_ind.exit ], [ %i.da, %mallocx_tcache_get.exit.thread ] ; 7 uses
  %i.eh = sub i64 %i.dh, %.097
  %i.ei = getelementptr [8 x i8], ptr %0, i64 %.1 ; 10 uses
  %.292.val = load ptr, ptr %.292.ph, align 8, !tbaa !92 ; 2 uses
  %i.ej = getelementptr i8, ptr %.292.ph, i64 20  ; 2 uses
  %.292.val128 = load i16, ptr %i.ej, align 4, !tbaa !99
  %i.ek = ptrtoint ptr %.292.val to i64
  %i.el = trunc i64 %i.ek to i16
  %i.em = sub i16 %.292.val128, %i.el
  %i.en = lshr i16 %i.em, 3
  %i.eo = zext nneg i16 %i.en to i64
  %spec.select.i121193 = call i64 @llvm.umin.i64(i64 %i.eh, i64 %i.eo) ; 9 uses
  %i.ep = shl nuw nsw i64 %spec.select.i121193, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ei, ptr align 8 %.292.val, i64 %i.ep, i1 false)
  %i.eq = load ptr, ptr %.292.ph, align 8, !tbaa !92
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %spec.select.i121193 ; 2 uses
  store ptr %i.er, ptr %.292.ph, align 8, !tbaa !92
  %.val3.i = load i16, ptr %i.ej, align 4, !tbaa !99 ; 2 uses
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = trunc i64 %i.es to i16                  ; 2 uses
  %i.eu = sub i16 %.val3.i, %i.et
  %i.ev = lshr i16 %i.eu, 3
  %i.ew = getelementptr i8, ptr %.292.ph, i64 16  ; 2 uses
  %.val4.i = load i16, ptr %i.ew, align 8, !tbaa !98
  %i.ex = sub i16 %.val3.i, %.val4.i
  %i.ey = lshr i16 %i.ex, 3
  %i.ez = icmp samesign ult i16 %i.ev, %i.ey
  br i1 %i.ez, label %bb.ac, label %cache_bin_low_water_adjust.exit

bb.ac:                                            ; preds = %tcache_get_from_ind.exit.thread179
  store i16 %i.et, ptr %i.ew, align 8, !tbaa !98
  br label %cache_bin_low_water_adjust.exit

cache_bin_low_water_adjust.exit:                  ; preds = %tcache_get_from_ind.exit.thread179, %bb.ac
  %i.fa = getelementptr inbounds nuw i8, ptr %.292.ph, i64 8 ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !107
  %i.fc = add i64 %i.fb, %spec.select.i121193
  store i64 %i.fc, ptr %i.fa, align 8, !tbaa !107
  %i.fd = icmp ne i64 %spec.select.i121193, 0
  %or.cond195 = and i1 %.0.i116, %i.fd
  br i1 %or.cond195, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %cache_bin_low_water_adjust.exit
  %xtraiter = and i64 %spec.select.i121193, 7     ; 3 uses
  %i.fe = icmp samesign ult i64 %spec.select.i121193, 8
  br i1 %i.fe, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %spec.select.i121193, 8184
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.088194 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.gc, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.ff = getelementptr [8 x i8], ptr %i.ei, i64 %.088194
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !97
  call void @llvm.memset.p0.i64(ptr align 1 %i.fg, i8 0, i64 %storemerge.i, i1 false)
  %i.fh = getelementptr [8 x i8], ptr %i.ei, i64 %.088194
  %i.fi = getelementptr i8, ptr %i.fh, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !97
  call void @llvm.memset.p0.i64(ptr align 1 %i.fj, i8 0, i64 %storemerge.i, i1 false)
  %i.fk = getelementptr [8 x i8], ptr %i.ei, i64 %.088194
  %i.fl = getelementptr i8, ptr %i.fk, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !97
  call void @llvm.memset.p0.i64(ptr align 1 %i.fm, i8 0, i64 %storemerge.i, i1 false)
  %i.fn = getelementptr [8 x i8], ptr %i.ei, i64 %.088194
  %i.fo = getelementptr i8, ptr %i.fn, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !97
  call void @llvm.memset.p0.i64(ptr align 1 %i.fp, i8 0, i64 %storemerge.i, i1 false)
  %i.fq = getelementptr [8 x i8], ptr %i.ei, i64 %.088194
  %i.fr = getelementptr i8, ptr %i.fq, i64 32
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !97
  call void @llvm.memset.p0.i64(ptr align 1 %i.fs, i8 0, i64 %storemerge.i, i1 false)
  %i.ft = getelementptr [8 x i8], ptr %i.ei, i64 %.088194
  %i.fu = getelementptr i8, ptr %i.ft, i64 40
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !97
  call void @llvm.memset.p0.i64(ptr align 1 %i.fv, i8 0, i64 %storemerge.i, i1 false)
  %i.fw = getelementptr [8 x i8], ptr %i.ei, i64 %.088194
  %i.fx = getelementptr i8, ptr %i.fw, i64 48
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !97
  call void @llvm.memset.p0.i64(ptr align 1 %i.fy, i8 0, i64 %storemerge.i, i1 false)
  %i.fz = getelementptr [8 x i8], ptr %i.ei, i64 %.088194
  %i.ga = getelementptr i8, ptr %i.fz, i64 56
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !97
  call void @llvm.memset.p0.i64(ptr align 1 %i.gb, i8 0, i64 %storemerge.i, i1 false)
  %i.gc = add nuw nsw i64 %.088194, 8             ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !158

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.088194.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.gc, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod211 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod211)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.088194.epil = phi i64 [ %i.gf, %.lr.ph.epil ], [ %.088194.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.gd = getelementptr [8 x i8], ptr %i.ei, i64 %.088194.epil
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !97
  call void @llvm.memset.p0.i64(ptr align 1 %i.ge, i8 0, i64 %storemerge.i, i1 false)
  %i.gf = add nuw nsw i64 %.088194.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !159

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %cache_bin_low_water_adjust.exit
  %i.gg = add i64 %spec.select.i121193, %.097
  %i.gh = add i64 %spec.select.i121193, %.1
  br label %tcache_get_from_ind.exit.thread

tcache_get_from_ind.exit.thread:                  ; preds = %bb.y, %mallocx_tcache_get.exit.thread, %mallocx_tcache_get.exit, %tcache_get_from_ind.exit, %.loopexit, %bb.w
  %.198 = phi i64 [ %i.gg, %.loopexit ], [ %.097, %bb.w ], [ %.097, %tcache_get_from_ind.exit ], [ %.097, %mallocx_tcache_get.exit ], [ %.097, %mallocx_tcache_get.exit.thread ], [ %.097, %bb.y ] ; 2 uses
  %.393 = phi ptr [ %.292.ph, %.loopexit ], [ %.090, %bb.w ], [ null, %tcache_get_from_ind.exit ], [ null, %mallocx_tcache_get.exit ], [ null, %mallocx_tcache_get.exit.thread ], [ null, %bb.y ] ; 2 uses
  %.2 = phi i64 [ %i.gh, %.loopexit ], [ %.1, %bb.w ], [ %.1, %tcache_get_from_ind.exit ], [ %.1, %mallocx_tcache_get.exit ], [ %.1, %mallocx_tcache_get.exit.thread ], [ %.1, %bb.y ] ; 4 uses
  %i.gi = mul i64 %.198, %storemerge.i            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store i8 1, ptr %4, align 8, !tbaa !109
  store <4 x ptr> %i.df, ptr %i.dd, align 8, !tbaa !161
  %i.gj = load i64, ptr %i.dc, align 8, !tbaa !27 ; 2 uses
  %i.gk = add i64 %i.gj, %i.gi
  store i64 %i.gk, ptr %i.dc, align 8, !tbaa !27
  %i.gl = load i64, ptr %i.de, align 8, !tbaa !27
  %i.gm = sub i64 %i.gl, %i.gj
  %i.gn = icmp ult i64 %i.gi, %i.gm
  br i1 %i.gn, label %te_event_advance.exit, label %bb.ad, !prof !13

bb.ad:                                            ; preds = %tcache_get_from_ind.exit.thread
  call void @je_te_event_trigger(ptr noundef nonnull %.0.i125142, ptr noundef nonnull %4) #20
  br label %te_event_advance.exit

te_event_advance.exit:                            ; preds = %tcache_get_from_ind.exit.thread, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.go = icmp ult i64 %.198, %i.dh
  br i1 %i.go, label %bb.ae, label %select.unfold170

bb.ae:                                            ; preds = %te_event_advance.exit
  %i.gp = call noalias ptr @je_mallocx(i64 noundef %2, i32 noundef %3) #23 ; 2 uses
  %.not109 = icmp eq ptr %i.gp, null
  br i1 %.not109, label %.critedge, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gq = add i64 %.2, 1
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.2
  store ptr %i.gp, ptr %i.gr, align 8, !tbaa !97
  br label %select.unfold170

select.unfold170:                                 ; preds = %bb.af, %te_event_advance.exit, %arena_get_from_ind.exit
  %.5139 = phi ptr [ %.4, %bb.af ], [ %.4, %te_event_advance.exit ], [ null, %arena_get_from_ind.exit ]
  %i.gs = phi i1 [ true, %bb.af ], [ true, %te_event_advance.exit ], [ false, %arena_get_from_ind.exit ]
  %.494 = phi ptr [ %.393, %bb.af ], [ %.393, %te_event_advance.exit ], [ %.090, %arena_get_from_ind.exit ]
  %.5 = phi i64 [ %i.gq, %bb.af ], [ %.2, %te_event_advance.exit ], [ %.089, %arena_get_from_ind.exit ] ; 2 uses
  br i1 %i.gs, label %bb.r, label %.critedge

.critedge:                                        ; preds = %bb.ae, %bb.v, %select.unfold170, %bb.r, %sz_s2u_compute.exit29.i, %bb.j, %bb.e, %tsd_fetch_impl.exit, %aligned_usize_get.exit, %tsd_fetch_impl.exit.thread
  %.6 = phi i64 [ 0, %tsd_fetch_impl.exit.thread ], [ 0, %aligned_usize_get.exit ], [ 0, %bb.e ], [ 0, %bb.j ], [ 0, %tsd_fetch_impl.exit ], [ 0, %sz_s2u_compute.exit29.i ], [ %.2, %bb.ae ], [ %.089, %bb.v ], [ %.5, %select.unfold170 ], [ %.089, %bb.r ]
  ret i64 %.6
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @arena_choose(ptr noundef %0, ptr noundef readnone captures(address_is_null, ret: address, provenance) %1) unnamed_addr #9 {
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
end_hunk_1
begin_hunk_2_@malloc_init_hard_a0_locked:bb.a
  %i.bm = call zeroext i1 (...) @je_hpa_supported() #20
  br i1 %i.bm, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bn = load i8, ptr @je_opt_abort_conf, align 1, !tbaa !104, !range !105, !noundef !106
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = select i1 %i.bo, ptr @.str.67, ptr @.str.68
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.66, ptr noundef nonnull %i.bp) #20
  %i.bq = load i8, ptr @je_opt_abort_conf, align 1, !tbaa !104, !range !105, !noundef !106
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.146) #20
  call void @abort() #21
  unreachable

bb.af:                                            ; preds = %bb.ad
  store i8 0, ptr @je_opt_hpa, align 1, !tbaa !104
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ac, %bb.ab
  %i.bs = call ptr @je_b0get() #20
  %i.bt = load i8, ptr @je_opt_hpa, align 1, !tbaa !104, !range !105, !noundef !106
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = call zeroext i1 @je_arena_boot(ptr noundef nonnull %0, ptr noundef %i.bs, i1 noundef zeroext %i.bu) #20
  br i1 %i.bv, label %bb.aq, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bw = call ptr @je_b0get() #20
  %i.bx = call zeroext i1 @je_tcache_boot(ptr noundef null, ptr noundef %i.bw) #20
  br i1 %i.bx, label %bb.aq, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.by = call zeroext i1 @je_malloc_mutex_init(ptr noundef nonnull @je_arenas_lock, ptr noundef nonnull @.str.69, i32 noundef 4, i32 noundef 0) #20
  br i1 %i.by, label %bb.aq, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bz = call zeroext i1 (...) @je_hook_boot() #20 ; 0 uses
  store i32 1, ptr @je_narenas_auto, align 4, !tbaa !7
  store i32 2, ptr @je_manual_arena_base, align 4, !tbaa !7
  store i64 0, ptr @je_arenas, align 64
  %i.ca = call ptr @je_arena_init(ptr noundef null, i32 noundef 0, ptr noundef nonnull @je_arena_config_default)
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.aq, label %arena_get.exit

arena_get.exit:                                   ; preds = %bb.aj
  %i.cc = load atomic ptr, ptr @je_arenas acquire, align 64
  store ptr %i.cc, ptr @a0, align 8, !tbaa !36
  %i.cd = load i8, ptr @je_opt_hpa, align 1, !tbaa !104, !range !105, !noundef !106
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.ak, label %.thread

bb.ak:                                            ; preds = %arena_get.exit
  %i.cf = call zeroext i1 (...) @je_hpa_supported() #20
  br i1 %i.cf, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cg = load i8, ptr @je_opt_abort_conf, align 1, !tbaa !104, !range !105, !noundef !106
  %i.ch = trunc nuw i8 %i.cg to i1
  %i.ci = select i1 %i.ch, ptr @.str.67, ptr @.str.68
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.66, ptr noundef nonnull %i.ci) #20
  %i.cj = load i8, ptr @je_opt_abort_conf, align 1, !tbaa !104, !range !105, !noundef !106
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.146) #20
  call void @abort() #21
  unreachable

bb.an:                                            ; preds = %bb.al
  store i8 0, ptr @je_opt_hpa, align 1, !tbaa !104
  br label %.thread

bb.ao:                                            ; preds = %bb.ak
  %.pre = load i8, ptr @je_opt_hpa, align 1, !tbaa !104, !range !105
  %i.cl = trunc nuw i8 %.pre to i1
  br i1 %i.cl, label %bb.ap, label %.thread

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) @je_opt_hpa_opts, i64 40, i1 false), !tbaa.struct !188
  %i.cm = load atomic i8, ptr @je_background_thread_enabled_state monotonic, align 1, !range !105, !noundef !106
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i8 %i.cm, ptr %i.cn, align 4, !tbaa !189
  %i.co = load ptr, ptr @a0, align 8, !tbaa !36
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 10648
  %i.cq = call zeroext i1 @je_pa_shard_enable_hpa(ptr noundef null, ptr noundef nonnull %i.cp, ptr noundef nonnull %1, ptr noundef nonnull @je_opt_hpa_sec_opts) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br i1 %i.cq, label %bb.aq, label %.thread

.thread:                                          ; preds = %arena_get.exit, %bb.ao, %bb.ap, %bb.an
  store i32 2, ptr @je_malloc_init_state, align 4, !tbaa !7
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.ap, %.thread
  %.1 = phi i1 [ true, %bb.ap ], [ true, %bb.v ], [ true, %bb.w ], [ true, %bb.x ], [ true, %bb.y ], [ true, %bb.z ], [ true, %bb.aa ], [ true, %bb.ag ], [ true, %bb.ah ], [ true, %bb.ai ], [ false, %.thread ], [ true, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  ret i1 %.1
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @pthread_self() local_unnamed_addr #12

declare void @je_sc_boot(ptr noundef) local_unnamed_addr #4

declare void @je_bin_shard_sizes_boot(ptr noundef) local_unnamed_addr #4

declare void @je_san_init(i64 noundef) local_unnamed_addr #4

declare void @je_sz_boot(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare void @je_bin_info_boot(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare i32 @atexit(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define internal void @stats_print_atexit() #1 {
bb.a:
  %0 = alloca %struct.buf_writer_t, align 8       ; 5 uses
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
  %.0.i = phi ptr [ null, %bb.a ], [ %i.f, %bb.c ], [ %i.c, %bb.b ] ; 3 uses
  %i.g = load atomic i32, ptr @narenas_total acquire, align 4 ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph32.preheader

.lr.ph32.preheader:                               ; preds = %tsdn_fetch.exit
  %wide.trip.count = zext i32 %i.g to i64
  br label %.lr.ph32

.lr.ph32:                                         ; preds = %.lr.ph32.preheader, %arena_get.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph32.preheader ], [ %indvars.iv.next, %arena_get.exit.thread ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %indvars.iv
  %i.i = load atomic ptr, ptr %i.h acquire, align 8 ; 10 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %arena_get.exit.thread, label %arena_get.exit, !prof !11

arena_get.exit:                                   ; preds = %.lr.ph32
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 10472 ; 2 uses
  %i.l = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.k) #20
  %.not.i24 = icmp eq i32 %i.l, 0
  br i1 %.not.i24, label %bb.d, label %atomic_store_b.exit.i

atomic_store_b.exit.i:                            ; preds = %arena_get.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 10408
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.m) #20
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 10512
  store atomic i8 1, ptr %i.n monotonic, align 1
  br label %bb.d

bb.d:                                             ; preds = %atomic_store_b.exit.i, %arena_get.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 10464 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !28
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.o, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 10456 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !33
  %.not.i.i = icmp eq ptr %i.s, %.0.i
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %.0.i, ptr %i.r, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 10448 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !34
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.t, align 8, !tbaa !34
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.d, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 10392 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !190  ; 2 uses
  %.not2029 = icmp eq ptr %i.x, null
  br i1 %.not2029, label %select.unfold._crit_edge, label %select.unfold

select.unfold:                                    ; preds = %malloc_mutex_lock.exit, %select.unfold
  %.030 = phi ptr [ %i.aa, %select.unfold ], [ %i.x, %malloc_mutex_lock.exit ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.030, i64 184
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !191
  tail call void @je_tcache_stats_merge(ptr noundef %.0.i, ptr noundef %i.z, ptr noundef nonnull %i.i) #20
  %i.aa = load ptr, ptr %.030, align 8, !tbaa !192 ; 3 uses
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !190
  %.not21 = icmp eq ptr %i.aa, %i.ab
  %cond.fr = freeze i1 %.not21
  %.not2036 = icmp eq ptr %i.aa, null
  %.not20 = select i1 %cond.fr, i1 true, i1 %.not2036
  br i1 %.not20, label %select.unfold._crit_edge, label %select.unfold

select.unfold._crit_edge:                         ; preds = %select.unfold, %malloc_mutex_lock.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 10512
  store atomic i8 0, ptr %i.ac monotonic, align 8
  %i.ad = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.k) #20 ; 0 uses
  br label %arena_get.exit.thread

arena_get.exit.thread:                            ; preds = %.lr.ph32, %select.unfold._crit_edge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph32, !llvm.loop !193

._crit_edge:                                      ; preds = %arena_get.exit.thread, %tsdn_fetch.exit
  %i.ae = load i8, ptr @je_tsd_booted, align 1, !tbaa !104, !range !105, !noundef !106
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.f, label %je_malloc_stats_print.exit

bb.f:                                             ; preds = %._crit_edge
  %i.ag = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 832
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !14
  %.not.i.i26 = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i26, label %je_malloc_stats_print.exit, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.aj = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.ag, i1 noundef zeroext false) #20
  br label %je_malloc_stats_print.exit

je_malloc_stats_print.exit:                       ; preds = %._crit_edge, %bb.f, %bb.g
  %.0.i.i = phi ptr [ null, %._crit_edge ], [ %i.aj, %bb.g ], [ %i.ag, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  %i.ak = call zeroext i1 @je_buf_writer_init(ptr noundef %.0.i.i, ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef null, i64 noundef 65536) #20 ; 0 uses
  call void @je_stats_print(ptr noundef nonnull @je_buf_writer_cb, ptr noundef nonnull %0, ptr noundef nonnull @je_opt_stats_print_opts) #20
  call void @je_buf_writer_terminate(ptr noundef %.0.i.i, ptr noundef nonnull %0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  ret void
}

declare void @je_malloc_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #14

declare zeroext i1 @je_stats_boot() local_unnamed_addr #4

declare zeroext i1 @je_pages_boot() local_unnamed_addr #4

declare zeroext i1 @je_base_boot(ptr noundef) local_unnamed_addr #4

declare zeroext i1 @je_emap_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare ptr @je_b0get() local_unnamed_addr #4

declare zeroext i1 @je_extent_boot() local_unnamed_addr #4

declare zeroext i1 @je_ctl_boot() local_unnamed_addr #4

declare zeroext i1 @je_hpa_supported(...) local_unnamed_addr #4

declare void @je_malloc_printf(ptr noundef, ...) local_unnamed_addr #4

declare zeroext i1 @je_arena_boot(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare zeroext i1 @je_tcache_boot(ptr noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i1 @je_malloc_mutex_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare zeroext i1 @je_hook_boot(...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare zeroext i1 @je_pa_shard_enable_hpa(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @malloc_conf_init_helper(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef nonnull captures(none) %3, ptr noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 87 uses
  %i.e = alloca ptr, align 8                      ; 103 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 70 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca ptr, align 8                      ; 4 uses
  %i.l = alloca ptr, align 8                      ; 4 uses
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
  %i.ac = alloca i32, align 4                     ; 4 uses
  %i.ad = alloca ptr, align 8                     ; 4 uses
  %i.ae = alloca ptr, align 8                     ; 4 uses
  %i.af = alloca ptr, align 8                     ; 4 uses
  %i.ag = alloca i32, align 4                     ; 4 uses
  %i.ah = alloca ptr, align 8                     ; 4 uses
  %i.ai = alloca ptr, align 8                     ; 4 uses
  %i.aj = alloca ptr, align 8                     ; 4 uses
  %i.ak = alloca ptr, align 8                     ; 4 uses
  %i.al = alloca ptr, align 8                     ; 4 uses
  %i.am = alloca ptr, align 8                     ; 4 uses
  %i.an = alloca ptr, align 8                     ; 4 uses
  %i.ao = alloca ptr, align 8                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  %.not886 = xor i1 %2, true                      ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.oo
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.oo ] ; 6 uses
  br i1 %2, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.ap = trunc nuw nsw i64 %indvars.iv to i32
  switch i32 %i.ap, label %bb.j [
    i32 0, label %.thread
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.h
    i32 4, label %bb.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.aq = load ptr, ptr @je_malloc_conf, align 8, !tbaa !184
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.ar = tail call ptr @__errno_location() #22   ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !7
  %i.at = call i64 @readlink(ptr noundef nonnull @.str.138, ptr noundef %4, i64 noundef 4096) #20 ; 2 uses
  %i.au = icmp eq i64 %i.at, -1
  br i1 %i.au, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.09.i = phi i64 [ 0, %bb.f ], [ %i.at, %bb.e ]
  %i.av = getelementptr inbounds i8, ptr %4, i64 %.09.i
  store i8 0, ptr %i.av, align 1, !tbaa !14
  br label %.thread

bb.h:                                             ; preds = %bb.c
  %i.aw = call ptr @secure_getenv(ptr noundef nonnull @.str.139) #20
  br label %.thread

bb.i:                                             ; preds = %bb.c
  %i.ax = load ptr, ptr @je_malloc_conf_2_conf_harder, align 8, !tbaa !184
  br label %.thread

bb.j:                                             ; preds = %bb.c
  unreachable

.thread:                                          ; preds = %bb.i, %bb.h, %bb.g, %bb.d, %bb.c
  %.0.i = phi ptr [ %i.ax, %bb.i ], [ %i.aq, %bb.d ], [ @.str.76, %bb.c ], [ %4, %bb.g ], [ %i.aw, %bb.h ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store ptr %.0.i, ptr %i.ay, align 8, !tbaa !184
  store ptr %.0.i, ptr %i.c, align 8, !tbaa !184
  br label %bb.m

bb.k:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !184 ; 5 uses
  store ptr %i.ba, ptr %i.c, align 8, !tbaa !184
  %i.bb = load i8, ptr @je_opt_confirm_conf, align 1, !range !105
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr @malloc_conf_init_helper.opts_explain, i64 %indvars.iv
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !184
  %.not699 = icmp eq ptr %i.ba, null
  %i.bf = select i1 %.not699, ptr @.str.76, ptr %i.ba
  %i.bg = trunc i64 %indvars.iv to i32
  %i.bh = add i32 %i.bg, 1
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.75, i32 noundef %i.bh, ptr noundef %i.be, ptr noundef nonnull %i.bf) #20
  br label %bb.m

bb.m:                                             ; preds = %.thread, %bb.l, %bb.k
  %i.bi = phi ptr [ %.0.i, %.thread ], [ %i.ba, %bb.l ], [ %i.ba, %bb.k ] ; 2 uses
end_hunk_2
