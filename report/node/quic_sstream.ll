inline.NumInlined: 22
inline.NumDeleted: 11
begin_hunk_0_@ossl_quic_sstream_get_stream_frame:bb.a
bb.h:                                             ; preds = %bb.g
  %i.af = load i64, ptr %i.ab, align 8, !tbaa !15
  %i.ag = icmp ult i64 %i.ad, %i.af
  br i1 %i.ag, label %ring_buf_get_buf_at.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = load i64, ptr %i.ac, align 8, !tbaa !13 ; 3 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %ring_buf_get_buf_at.exit.thread64, label %ring_buf_get_buf_at.exit

ring_buf_get_buf_at.exit:                         ; preds = %bb.i
  %i.aj = urem i64 %i.ad, %i.ah                   ; 2 uses
  %i.ak = sub i64 %i.aa, %i.ad
  %i.al = sub i64 %i.ah, %i.aj
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 %i.al) ; 3 uses
  %i.am = icmp eq i64 %spec.select.i, 0
  br i1 %i.am, label %ring_buf_get_buf_at.exit.thread64, label %bb.j

bb.j:                                             ; preds = %ring_buf_get_buf_at.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aj
  %i.ao = add i64 %spec.select.i, %.04872
  %i.ap = icmp ugt i64 %i.ao, %i.x
  %i.aq = sub i64 %i.x, %.04872
  %spec.select = select i1 %i.ap, i64 %i.aq, i64 %spec.select.i ; 2 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.04971 ; 2 uses
  store ptr %i.an, ptr %i.ar, align 8, !tbaa !33
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %spec.select, ptr %i.as, align 8, !tbaa !35
  %i.at = add i64 %spec.select, %.04872           ; 3 uses
  %i.au = add i64 %.04971, 1                      ; 2 uses
  %.not = icmp ult i64 %i.at, %i.x
  br i1 %.not, label %bb.g, label %ring_buf_get_buf_at.exit.thread64

ring_buf_get_buf_at.exit.thread64:                ; preds = %bb.j, %ring_buf_get_buf_at.exit, %bb.i, %bb.f
  %.049.lcssa = phi i64 [ 0, %bb.f ], [ %.04971, %bb.i ], [ %.04971, %ring_buf_get_buf_at.exit ], [ %i.au, %bb.j ]
  %.048.lcssa = phi i64 [ 0, %bb.f ], [ %.04872, %bb.i ], [ %.04872, %ring_buf_get_buf_at.exit ], [ %i.at, %bb.j ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.v, ptr %i.av, align 8, !tbaa !24
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %.048.lcssa, ptr %i.aw, align 8, !tbaa !27
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ay = load i8, ptr %i.ax, align 8
  %i.az = and i8 %i.ay, 1
  %.not53 = icmp eq i8 %i.az, 0
  br i1 %.not53, label %bb.l, label %bb.k

bb.k:                                             ; preds = %ring_buf_get_buf_at.exit.thread64
  %i.ba = add i64 %.048.lcssa, %i.v
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !21
  %i.bd = icmp eq i64 %i.ba, %i.bc
  %i.be = select i1 %i.bd, i8 2, i8 0
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %ring_buf_get_buf_at.exit.thread64
  %i.bf = phi i8 [ 0, %ring_buf_get_buf_at.exit.thread64 ], [ %i.be, %bb.k ]
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 8
  %i.bi = and i8 %i.bh, -3
  %i.bj = or disjoint i8 %i.bi, %i.bf
  store i8 %i.bj, ptr %i.bg, align 8
  br label %ring_buf_get_buf_at.exit.thread.sink.split

ring_buf_get_buf_at.exit.thread.sink.split:       ; preds = %bb.e, %bb.l
  %.049.lcssa.sink = phi i64 [ %.049.lcssa, %bb.l ], [ 0, %bb.e ]
  store i64 %.049.lcssa.sink, ptr %4, align 8, !tbaa !16
  br label %ring_buf_get_buf_at.exit.thread

ring_buf_get_buf_at.exit.thread:                  ; preds = %bb.g, %bb.h, %ring_buf_get_buf_at.exit.thread.sink.split, %bb.d, %bb.c, %bb.a
  %.046 = phi i32 [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.c ], [ 1, %ring_buf_get_buf_at.exit.thread.sink.split ], [ 0, %bb.h ], [ 0, %bb.g ]
  ret i32 %.046
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_sstream_has_pending(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %1 = alloca %struct.ossl_quic_frame_stream_st, align 8 ; 3 uses
  %2 = alloca [2 x %struct.ossl_qtx_iovec_st], align 16 ; 3 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 2, ptr %i.a, align 8, !tbaa !16
  %i.b = call i32 @ossl_quic_sstream_get_stream_frame(ptr noundef %0, i64 noundef 0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @ossl_quic_sstream_get_cur_size(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21
  ret i64 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_sstream_mark_transmitted(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.uint_range_st, align 8      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store i64 %1, ptr %3, align 8, !tbaa !36
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = call i32 @ossl_uint_set_remove(ptr noundef nonnull %i.b, ptr noundef nonnull %3) #11
  %.not = icmp ne i32 %i.c, 0
  %. = zext i1 %.not to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret i32 %.
}

declare i32 @ossl_uint_set_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_sstream_mark_transmitted_fin(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8               ; 2 uses
  %i.c = and i8 %i.b, 1
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !21
  %.not4 = icmp eq i64 %1, %i.e
  br i1 %.not4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = or i8 %i.b, 2
  store i8 %i.f, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_sstream_mark_lost(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.uint_range_st, align 8      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store i64 %1, ptr %3, align 8, !tbaa !36
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = call i32 @ossl_uint_set_insert(ptr noundef nonnull %i.b, ptr noundef nonnull %3) #11
  %.not = icmp ne i32 %i.c, 0
  %. = zext i1 %.not to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret i32 %.
}

declare i32 @ossl_uint_set_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_sstream_mark_lost_fin(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8               ; 2 uses
  %i.c = and i8 %i.b, 4
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i8 %i.b, -7
  store i8 %i.d, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_sstream_mark_acked(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.uint_range_st, align 8      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store i64 %1, ptr %3, align 8, !tbaa !36
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = call i32 @ossl_uint_set_insert(ptr noundef nonnull %i.b, ptr noundef nonnull %3) #11
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %qss_cull.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !38 ; 3 uses
  %.not.i = icmp eq ptr %.val.i, null
  br i1 %.not.i, label %qss_cull.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !28   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !15   ; 4 uses
  %i.j = icmp ugt i64 %i.e, %i.i
  %i.k = icmp ugt i64 %i.g, 4611686018427387903
  %or.cond.i.i = or i1 %i.k, %i.j
  br i1 %or.cond.i.i, label %qss_cull.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load i8, ptr %i.l, align 8
  %i.n = and i8 %i.m, 8
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !13   ; 3 uses
  %.not45.i.i = icmp ne i64 %i.p, 0
  %i.q = icmp ugt i64 %i.g, %i.i
  %or.cond49.i.i = and i1 %i.q, %.not45.i.i
  br i1 %or.cond49.i.i, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.r = urem i64 %i.i, %i.p                      ; 4 uses
  %i.s = add nuw nsw i64 %i.g, 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !14
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.s, i64 %i.u)
  %i.v = sub nsw i64 %spec.select.i.i, %i.i       ; 3 uses
  %i.w = sub i64 %i.p, %i.r                       ; 2 uses
  %i.x = icmp ugt i64 %i.v, %i.w
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %0, align 8, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.r
  call void @OPENSSL_cleanse(ptr noundef %i.z, i64 noundef %i.w) #11
  %i.aa = load i64, ptr %i.o, align 8, !tbaa !13
  %.neg.i.i = add nsw i64 %i.v, %i.r
  %i.ab = sub i64 %.neg.i.i, %i.aa
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.036.i.i = phi i64 [ 0, %bb.g ], [ %i.r, %bb.f ]
  %.0.i.i = phi i64 [ %i.ab, %bb.g ], [ %i.v, %bb.f ] ; 2 uses
  %.not47.i.i = icmp eq i64 %.0.i.i, 0
  br i1 %.not47.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr %0, align 8, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.036.i.i
  call void @OPENSSL_cleanse(ptr noundef %i.ad, i64 noundef %.0.i.i) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.e, %bb.d
  %i.ae = add nuw nsw i64 %i.g, 1                 ; 3 uses
  store i64 %i.ae, ptr %i.h, align 8, !tbaa !15
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !14
  %4 = icmp ult i64 %i.ag, %i.ae
  br i1 %4, label %bb.k, label %qss_cull.exit

bb.k:                                             ; preds = %bb.j
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !14
  br label %qss_cull.exit

qss_cull.exit:                                    ; preds = %bb.k, %bb.j, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 1, %bb.c ], [ 1, %bb.j ], [ 1, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_sstream_mark_acked_fin(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8               ; 2 uses
  %i.c = and i8 %i.b, 1
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = or i8 %i.b, 4
  store i8 %i.d, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ossl_quic_sstream_fin(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8               ; 2 uses
  %i.c = and i8 %i.b, 1
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = or disjoint i8 %i.b, 1
  store i8 %i.d, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_sstream_get_final_size(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8
  %i.c = and i8 %i.b, 1
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not5 = icmp eq ptr %1, null
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !21
  store i64 %i.e, ptr %1, align 8, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_sstream_append(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.uint_range_st, align 8      ; 5 uses
  %.sroa.0 = alloca { ptr, i64 }, align 8         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !39
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !16 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !16 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8
  %i.c = and i8 %i.b, 1
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %.preheader, label %ring_buf_push.exit.thread.thread

.preheader:                                       ; preds = %bb.a
  %.not2933 = icmp eq i64 %2, 0
  br i1 %.not2933, label %ring_buf_push.exit.thread.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.pre = load i64, ptr %i.d, align 8, !tbaa !13
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.val2.i36.i = phi i64 [ %.sroa.5.0.copyload, %.lr.ph ], [ %.val2.i.i, %bb.c ]
  %.val.i35.i = phi i64 [ %.sroa.4.0.copyload, %.lr.ph ], [ %i.o, %bb.c ] ; 3 uses
  %i.e = phi i64 [ %.pre, %.lr.ph ], [ %i.s, %bb.c ] ; 2 uses
  %.02536 = phi ptr [ %1, %.lr.ph ], [ %i.x, %bb.c ] ; 2 uses
  %.02635 = phi i64 [ 0, %.lr.ph ], [ %i.z, %bb.c ] ; 3 uses
  %.02734 = phi i64 [ %2, %.lr.ph ], [ %i.y, %bb.c ] ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !9
  %.neg.i38.i = sub i64 %i.e, %.val.i35.i
  %i.g = add i64 %.neg.i38.i, %.val2.i36.i
  %spec.select39.i = tail call i64 @llvm.umin.i64(i64 range(i64 1, 0) %.02734, i64 %i.g)
  %i.h = sub i64 4611686018427387904, %.val.i35.i
  %.240.i = tail call i64 @llvm.umin.i64(i64 %spec.select39.i, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.240.i, 0
  br i1 %i.i, label %ring_buf_push.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.244.i = phi i64 [ %.2.i, %.lr.ph.i ], [ %.240.i, %bb.b ] ; 2 uses
  %.val.i43.i = phi i64 [ %i.o, %.lr.ph.i ], [ %.val.i35.i, %bb.b ]
  %i.j = phi i64 [ %i.s, %.lr.ph.i ], [ %i.e, %bb.b ] ; 2 uses
  %.042.i = phi ptr [ %i.p, %.lr.ph.i ], [ %.02536, %bb.b ] ; 2 uses
  %.03041.i = phi i64 [ %i.r, %.lr.ph.i ], [ 0, %bb.b ]
  %i.k = urem i64 %.val.i43.i, %i.j               ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %spec.select34.i = tail call i64 @llvm.umin.i64(i64 %.244.i, i64 %i.l) ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %.042.i, i64 %spec.select34.i, i1 false)
  %i.n = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %i.o = add i64 %i.n, %spec.select34.i           ; 5 uses
  store i64 %i.o, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %.042.i, i64 %spec.select34.i
  %i.q = sub i64 %.244.i, %spec.select34.i
  %i.r = add i64 %spec.select34.i, %.03041.i      ; 5 uses
  %i.s = load i64, ptr %i.d, align 8, !tbaa !13   ; 3 uses
  %.val2.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !15 ; 2 uses
  %.neg.i.i = sub i64 %i.s, %i.o
  %i.t = add i64 %.neg.i.i, %.val2.i.i
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.t)
  %i.u = sub i64 4611686018427387904, %i.o
  %.2.i = tail call i64 @llvm.umin.i64(i64 %spec.select.i, i64 %i.u) ; 2 uses
  %i.v = icmp eq i64 %.2.i, 0
  br i1 %i.v, label %ring_buf_push.exit, label %.lr.ph.i

ring_buf_push.exit:                               ; preds = %.lr.ph.i
  %i.w = icmp eq i64 %i.r, 0
  br i1 %i.w, label %ring_buf_push.exit.thread, label %bb.c

bb.c:                                             ; preds = %ring_buf_push.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.02536, i64 %i.r
  %i.y = sub i64 %.02734, %i.r                    ; 2 uses
  %i.z = add i64 %i.r, %.02635                    ; 2 uses
  %.not29 = icmp eq i64 %i.y, 0
  br i1 %.not29, label %ring_buf_push.exit.thread, label %bb.b, !llvm.loop !41

ring_buf_push.exit.thread:                        ; preds = %bb.c, %ring_buf_push.exit, %bb.b
  %.026.lcssa = phi i64 [ %.02635, %bb.b ], [ %i.z, %bb.c ], [ %.02635, %ring_buf_push.exit ] ; 3 uses
  %.not30 = icmp eq i64 %.026.lcssa, 0
  br i1 %.not30, label %ring_buf_push.exit.thread.thread, label %bb.d

bb.d:                                             ; preds = %ring_buf_push.exit.thread
  store i64 %.sroa.4.0.copyload, ptr %4, align 8, !tbaa !36
  %i.aa = add i64 %.sroa.4.0.copyload, -1
  %i.ab = add i64 %i.aa, %.026.lcssa
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !37
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = call i32 @ossl_uint_set_insert(ptr noundef nonnull %i.ad, ptr noundef nonnull %4) #11
  %.not31 = icmp eq i32 %i.ae, 0
  br i1 %.not31, label %bb.e, label %ring_buf_push.exit.thread.thread

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false), !tbaa.struct !39
  store i64 %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !16
  store i64 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !16
  br label %ring_buf_push.exit.thread.thread

ring_buf_push.exit.thread.thread:                 ; preds = %ring_buf_push.exit.thread, %bb.d, %.preheader, %bb.a, %bb.e
  %.026.lcssa47.sink = phi i64 [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %ring_buf_push.exit.thread ], [ %.026.lcssa, %bb.d ], [ 0, %.preheader ]
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.e ], [ 1, %ring_buf_push.exit.thread ], [ 1, %bb.d ], [ 1, %.preheader ]
  store i64 %.026.lcssa47.sink, ptr %3, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_sstream_set_buffer_size(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8
  %i.c = lshr i8 %i.b, 3
  %i.d = and i8 %i.c, 1
  %i.e = zext nneg i8 %i.d to i32
  %i.f = tail call fastcc i32 @ring_buf_resize(ptr noundef %0, i64 noundef %1, i32 noundef %i.e)
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
end_hunk_0
