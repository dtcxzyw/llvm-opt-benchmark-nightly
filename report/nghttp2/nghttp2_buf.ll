Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nghttp2/original/nghttp2_buf?download=true
begin_hunk_0_@nghttp2_bufs_wrap_init:bb.a
  ret i32 %.0
}

declare ptr @nghttp2_mem_malloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden range(i32 -901, 1) i32 @nghttp2_bufs_wrap_init2(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @nghttp2_mem_malloc(ptr noundef %3, i64 noundef 48) #10 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %nghttp2_bufs_wrap_init.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i8 0, i64 48, i1 false)
  br label %nghttp2_bufs_wrap_init.exit.sink.split

bb.d:                                             ; preds = %bb.a
  %i.e = mul i64 %2, 48
  %i.f = tail call ptr @nghttp2_mem_malloc(ptr noundef %3, i64 noundef %i.e) #10 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !33
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %nghttp2_bufs_wrap_init.exit, label %.preheader

.preheader:                                       ; preds = %bb.d, %nghttp2_buf_wrap_init.exit
  %.02330 = phi i64 [ %i.s, %nghttp2_buf_wrap_init.exit ], [ 0, %bb.d ] ; 3 uses
  %.02429 = phi ptr [ %i.h, %nghttp2_buf_wrap_init.exit ], [ %i.a, %bb.d ]
  %.0..0..0..0.25 = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw [48 x i8], ptr %.0..0..0..0.25, i64 %.02330 ; 6 uses
  store ptr null, ptr %i.h, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.02330 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !38   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr %i.k, ptr %i.n, align 8, !tbaa !14
  %i.o = insertelement <4 x ptr> poison, ptr %i.k, i64 0
  %i.p = shufflevector <4 x ptr> %i.o, <4 x ptr> poison, <4 x i32> zeroinitializer
  store <4 x ptr> %i.p, ptr %i.i, align 8, !tbaa !39
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %nghttp2_buf_wrap_init.exit, label %bb.e

bb.e:                                             ; preds = %.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m
  store ptr %i.r, ptr %i.q, align 8, !tbaa !15
  br label %nghttp2_buf_wrap_init.exit

nghttp2_buf_wrap_init.exit:                       ; preds = %.preheader, %bb.e
  store ptr %i.h, ptr %.02429, align 8, !tbaa !33
  %i.s = add nuw i64 %.02330, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %2
  br i1 %exitcond.not, label %bb.f, label %.preheader, !llvm.loop !40

bb.f:                                             ; preds = %nghttp2_buf_wrap_init.exit
  %.0..0..0..0.26 = load ptr, ptr %i.a, align 8, !tbaa !33
  br label %nghttp2_bufs_wrap_init.exit.sink.split

nghttp2_bufs_wrap_init.exit.sink.split:           ; preds = %bb.f, %bb.c
  %.sink38 = phi ptr [ %i.c, %bb.c ], [ %.0..0..0..0.26, %bb.f ] ; 2 uses
  %.sink36 = phi i64 [ 1, %bb.c ], [ %2, %bb.f ]  ; 3 uses
  store ptr %.sink38, ptr %0, align 8, !tbaa !33
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink38, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !33
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !34
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !35
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sink36, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !35
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sink36, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !35
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sink36, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !35
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !35
  br label %nghttp2_bufs_wrap_init.exit

nghttp2_bufs_wrap_init.exit:                      ; preds = %nghttp2_bufs_wrap_init.exit.sink.split, %bb.b, %bb.d
  %.0 = phi i32 [ -901, %bb.d ], [ -901, %bb.b ], [ 0, %nghttp2_bufs_wrap_init.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @nghttp2_bufs_wrap_free(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  tail call void @nghttp2_mem_free(ptr noundef %i.d, ptr noundef nonnull %i.b) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @nghttp2_bufs_seek_last_present(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.07 = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %.not8 = icmp eq ptr %.07, null
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.09 = phi ptr [ %.0, %bb.b ], [ %.07, %bb.a ]  ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.09, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %.09, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  store ptr %.09, ptr %i.a, align 8, !tbaa !22
  %.0 = load ptr, ptr %.09, align 8, !tbaa !33    ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !41

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @nghttp2_bufs_len(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %.067 = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %.not8 = icmp eq ptr %.067, null
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0610 = phi ptr [ %.06, %.lr.ph ], [ %.067, %bb.a ] ; 3 uses
  %.09 = phi i64 [ %i.h, %.lr.ph ], [ 0, %bb.a ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0610, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %.0610, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = add i64 %.09, %i.e
  %i.h = sub i64 %i.g, %i.f                       ; 2 uses
  %.06 = load ptr, ptr %.0610, align 8, !tbaa !33 ; 2 uses
  %.not = icmp eq ptr %.06, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !42

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.h, %.lr.ph ]
  ret i64 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -901, 1) i32 @nghttp2_bufs_add(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not50 = icmp eq i64 %2, 0
  br i1 %.not50, label %.split, label %.outer.split.preheader

.outer.split.preheader:                           ; preds = %bb.a, %.outer
  %.0.ph52 = phi ptr [ %i.o, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.019.ph51 = phi i64 [ %i.p, %.outer ], [ %2, %bb.a ] ; 2 uses
  br label %.outer.split

.outer.split:                                     ; preds = %.outer.split.preheader, %bb.b
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 3 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.b, label %.outer

bb.b:                                             ; preds = %.outer.split
  %i.h = tail call fastcc i32 @bufs_alloc_chain(ptr noundef nonnull %0) ; 2 uses
  %.not22 = icmp eq i32 %i.h, 0
  br i1 %.not22, label %.outer.split, label %.split, !llvm.loop !43

.outer:                                           ; preds = %.outer.split
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub i64 %i.k, %i.j
  %i.m = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 range(i64 1, 0) %.019.ph51) ; 3 uses
  %i.n = tail call ptr @nghttp2_cpymem(ptr noundef %i.f, ptr noundef %.0.ph52, i64 noundef %i.m) #10
  store ptr %i.n, ptr %i.i, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %.0.ph52, i64 %i.m
  %i.p = sub i64 %.019.ph51, %i.m                 ; 2 uses
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %.split, label %.outer.split.preheader, !llvm.loop !43

.split:                                           ; preds = %.outer, %bb.b, %bb.a
  %.018.split = phi i32 [ 0, %bb.a ], [ %i.h, %bb.b ], [ 0, %.outer ]
  ret i32 %.018.split
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -901, 1) i32 @bufs_alloc_chain(ptr nofree noundef captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 8, !tbaa !22
  br label %buf_chain_new.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !27
  %i.h = icmp eq i64 %i.e, %i.g
  br i1 %i.h, label %buf_chain_new.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !26   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16   ; 3 uses
  %i.m = tail call ptr @nghttp2_mem_malloc(ptr noundef %i.l, i64 noundef 48) #10 ; 12 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %buf_chain_new.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.not.i.not.i.i = icmp eq i64 %i.j, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, i8 0, i64 48, i1 false)
  br i1 %.not.i.not.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = tail call ptr @nghttp2_mem_realloc(ptr noundef %i.l, ptr noundef null, i64 noundef %i.j) #10 ; 6 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %nghttp2_buf_init2.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !12
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64                 ; 3 uses
  %i.x = sub i64 %i.v, %i.w
  %i.y = getelementptr inbounds i8, ptr %i.q, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.w
  %i.ad = getelementptr inbounds i8, ptr %i.q, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !14
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.w
  %i.ai = getelementptr inbounds i8, ptr %i.q, i64 %i.ah
  store ptr %i.ai, ptr %i.ae, align 8, !tbaa !14
  store ptr %i.q, ptr %i.o, align 8, !tbaa !12
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.j
  store ptr %i.aj, ptr %i.p, align 8, !tbaa !15
  br label %bb.h

nghttp2_buf_init2.exit.i:                         ; preds = %bb.f
  tail call void @nghttp2_mem_free(ptr noundef %i.l, ptr noundef nonnull %i.m) #10
  br label %buf_chain_new.exit

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.ak = phi ptr [ %i.ad, %bb.g ], [ null, %bb.e ]
  %i.al = phi ptr [ %i.y, %bb.g ], [ null, %bb.e ]
  %i.am = load i64, ptr %i.f, align 8, !tbaa !27
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.f, align 8, !tbaa !27
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !22
  store ptr %i.m, ptr %i.ao, align 8, !tbaa !30
  store ptr %i.m, ptr %i.a, align 8, !tbaa !22
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !20 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aq
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !23
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aq
  store ptr %i.au, ptr %i.at, align 8, !tbaa !25
  br label %buf_chain_new.exit

buf_chain_new.exit:                               ; preds = %nghttp2_buf_init2.exit.i, %bb.d, %bb.c, %bb.h, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.h ], [ -502, %bb.c ], [ -901, %bb.d ], [ -901, %nghttp2_buf_init2.exit.i ]
  ret i32 %.0
}

declare ptr @nghttp2_cpymem(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden range(i32 -901, 1) i32 @nghttp2_bufs_addb(ptr nofree noundef captures(none) %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  %.not.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i, label %bufs_ensure_addb.exit, label %bufs_ensure_addb.exit.thread

bufs_ensure_addb.exit:                            ; preds = %bb.a
  %i.g = tail call fastcc i32 @bufs_alloc_chain(ptr noundef nonnull %0) ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bufs_ensure_addb.exit.bufs_ensure_addb.exit.thread_crit_edge, label %bb.b

bufs_ensure_addb.exit.bufs_ensure_addb.exit.thread_crit_edge: ; preds = %bufs_ensure_addb.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %.pre8 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !25
  br label %bufs_ensure_addb.exit.thread

bufs_ensure_addb.exit.thread:                     ; preds = %bufs_ensure_addb.exit.bufs_ensure_addb.exit.thread_crit_edge, %bb.a
  %i.h = phi ptr [ %.pre8, %bufs_ensure_addb.exit.bufs_ensure_addb.exit.thread_crit_edge ], [ %i.f, %bb.a ] ; 2 uses
  %i.i = phi ptr [ %.pre, %bufs_ensure_addb.exit.bufs_ensure_addb.exit.thread_crit_edge ], [ %i.b, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store ptr %i.k, ptr %i.j, align 8, !tbaa !25
  store i8 %1, ptr %i.h, align 1, !tbaa !44
  br label %bb.b

bb.b:                                             ; preds = %bufs_ensure_addb.exit, %bufs_ensure_addb.exit.thread
  %.0 = phi i32 [ 0, %bufs_ensure_addb.exit.thread ], [ %i.g, %bufs_ensure_addb.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -901, 1) i32 @nghttp2_bufs_addb_hold(ptr nofree noundef captures(none) %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  %.not.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i, label %bufs_ensure_addb.exit, label %bufs_ensure_addb.exit.thread

bufs_ensure_addb.exit:                            ; preds = %bb.a
  %i.g = tail call fastcc i32 @bufs_alloc_chain(ptr noundef nonnull %0) ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bufs_ensure_addb.exit.bufs_ensure_addb.exit.thread_crit_edge, label %bb.b

bufs_ensure_addb.exit.bufs_ensure_addb.exit.thread_crit_edge: ; preds = %bufs_ensure_addb.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !22
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %.pre8 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !25
  br label %bufs_ensure_addb.exit.thread

bufs_ensure_addb.exit.thread:                     ; preds = %bufs_ensure_addb.exit.bufs_ensure_addb.exit.thread_crit_edge, %bb.a
  %i.h = phi ptr [ %.pre8, %bufs_ensure_addb.exit.bufs_ensure_addb.exit.thread_crit_edge ], [ %i.f, %bb.a ]
  store i8 %1, ptr %i.h, align 1, !tbaa !44
  br label %bb.b

bb.b:                                             ; preds = %bufs_ensure_addb.exit, %bufs_ensure_addb.exit.thread
  %.0 = phi i32 [ 0, %bufs_ensure_addb.exit.thread ], [ %i.g, %bufs_ensure_addb.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -901, 1) i32 @nghttp2_bufs_orb(ptr nofree noundef captures(none) %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  %.not.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i, label %bufs_ensure_addb.exit, label %bufs_ensure_addb.exit.thread

bufs_ensure_addb.exit:                            ; preds = %bb.a
  %i.g = tail call fastcc i32 @bufs_alloc_chain(ptr noundef nonnull %0) ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bufs_ensure_addb.exit.bufs_ensure_addb.exit.thread_crit_edge, label %bb.b

bufs_ensure_addb.exit.bufs_ensure_addb.exit.thread_crit_edge: ; preds = %bufs_ensure_addb.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %.pre8 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !25
  br label %bufs_ensure_addb.exit.thread

bufs_ensure_addb.exit.thread:                     ; preds = %bufs_ensure_addb.exit.bufs_ensure_addb.exit.thread_crit_edge, %bb.a
  %i.h = phi ptr [ %.pre8, %bufs_ensure_addb.exit.bufs_ensure_addb.exit.thread_crit_edge ], [ %i.f, %bb.a ] ; 3 uses
  %i.i = phi ptr [ %.pre, %bufs_ensure_addb.exit.bufs_ensure_addb.exit.thread_crit_edge ], [ %i.b, %bb.a ]
end_hunk_0
