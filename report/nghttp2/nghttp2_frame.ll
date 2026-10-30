Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nghttp2/original/nghttp2_frame?download=true
inline.NumInlined: 42
inline.NumDeleted: 2
begin_hunk_0_@nghttp2_frame_pack_priority_update:bb.a
  tail call void @nghttp2_put_uint32be(ptr noundef %i.ab, i32 noundef %i.ac) #18
  %i.ad = load ptr, ptr %i.f, align 8, !tbaa !63
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store ptr %i.ae, ptr %i.f, align 8, !tbaa !63
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !55
  %i.ah = load i64, ptr %i.k, align 8, !tbaa !74
  %i.ai = tail call i32 @nghttp2_bufs_add(ptr noundef nonnull %0, ptr noundef %i.ag, i64 noundef %i.ah) #18
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 929, ptr noundef nonnull @__PRETTY_FUNCTION__.nghttp2_frame_pack_priority_update) #19
  unreachable

bb.e:                                             ; preds = %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @nghttp2_frame_unpack_priority_update_payload(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %2, 3
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 937, ptr noundef nonnull @__PRETTY_FUNCTION__.nghttp2_frame_unpack_priority_update_payload) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44   ; 3 uses
  %i.d = tail call i32 @nghttp2_get_uint32(ptr noundef %1) #18
  %i.e = and i32 %i.d, 2147483647
  store i32 %i.e, ptr %i.c, align 8, !tbaa !75
  %.not = icmp eq i64 %2, 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = add i64 %2, -4
  %.sink10 = select i1 %.not, ptr null, ptr %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sink10, ptr %i.h, align 8, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.g, ptr %i.i, align 8, !tbaa !74
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @nghttp2_frame_iv_copy(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = shl i64 %1, 3                            ; 3 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @nghttp2_mem_malloc(ptr noundef %2, i64 noundef %i.a) #18 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.c, ptr align 4 %0, i64 %i.a, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.c, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @nghttp2_nv_equal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !77   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !77
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !78   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !78
  %.not23 = icmp eq i64 %i.f, %i.h
  br i1 %.not23, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !79     ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %1, align 8, !tbaa !79     ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = icmp eq i64 %i.b, 0
  br i1 %i.m, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 979, ptr noundef nonnull @__PRETTY_FUNCTION__.nghttp2_nv_equal) #19
  unreachable

bb.g:                                             ; preds = %bb.d
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.i, ptr nonnull %i.k, i64 %i.b)
  %.not24 = icmp eq i32 %bcmp, 0
  br i1 %.not24, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.e, %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !80   ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !80   ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.t = icmp eq i64 %i.f, 0
  br i1 %i.t, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 986, ptr noundef nonnull @__PRETTY_FUNCTION__.nghttp2_nv_equal) #19
  unreachable

bb.l:                                             ; preds = %bb.i
  %bcmp25 = tail call i32 @bcmp(ptr nonnull %i.o, ptr nonnull %i.r, i64 %i.f)
  %.not26 = icmp eq i32 %bcmp25, 0
  br i1 %.not26, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.j, %bb.l
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.g, %bb.a, %bb.b, %bb.m
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.m ], [ 0, %bb.g ], [ 0, %bb.b ], [ 0, %bb.l ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @nghttp2_nv_compare_name(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !79     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !77   ; 4 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !79     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !77   ; 3 uses
  %i.g = icmp eq i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @memcmp(ptr noundef readonly %i.a, ptr noundef readonly %i.d, i64 noundef %i.c) #20
  br label %bytes_compar.exit

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %i.c, %i.f
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @memcmp(ptr noundef readonly %i.a, ptr noundef readonly %i.d, i64 noundef %i.c) #20 ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  %..i = select i1 %i.k, i32 -1, i32 %i.j
  br label %bytes_compar.exit

bb.e:                                             ; preds = %bb.c
  %i.l = tail call i32 @memcmp(ptr noundef readonly %i.a, ptr noundef readonly %i.d, i64 noundef %i.f) #20
  %.21.i = tail call i32 @llvm.umax.i32(i32 %i.l, i32 1)
  br label %bytes_compar.exit

bytes_compar.exit:                                ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i32 [ %i.h, %bb.b ], [ %..i, %bb.d ], [ %.21.i, %bb.e ]
  ret i32 %.0.i
}

; Function Attrs: nofree nounwind uwtable
define hidden void @nghttp2_nv_array_sort(ptr noundef %0, i64 noundef %1) local_unnamed_addr #13 {
bb.a:
  tail call void @qsort(ptr noundef %0, i64 noundef %1, i64 noundef 40, ptr noundef nonnull @nv_compar) #18
  ret void
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @nv_compar(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #12 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !79     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !77   ; 4 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !79     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !77   ; 3 uses
  %i.g = icmp eq i64 %i.c, %i.f
  br i1 %i.g, label %2, label %bb.b

2:                                                ; preds = %bb.a
  %3 = tail call i32 @memcmp(ptr noundef readonly %i.a, ptr noundef readonly %i.d, i64 noundef %i.c) #20
  br label %bytes_compar.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.c, %i.f
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @memcmp(ptr noundef readonly %i.a, ptr noundef readonly %i.d, i64 noundef %i.c) #20 ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  %spec.select = select i1 %i.j, i32 -1, i32 %i.i
  br label %bytes_compar.exit

bb.d:                                             ; preds = %bb.b
  %i.k = tail call i32 @memcmp(ptr noundef readonly %i.a, ptr noundef readonly %i.d, i64 noundef %i.f) #20
  %.21.i = tail call i32 @llvm.umax.i32(i32 %i.k, i32 1)
  br label %bytes_compar.exit

bytes_compar.exit:                                ; preds = %bb.c, %2, %bb.d
  %.0.i = phi i32 [ %3, %2 ], [ %spec.select, %bb.c ], [ %.21.i, %bb.d ] ; 2 uses
  %i.l = icmp eq i32 %.0.i, 0
  br i1 %i.l, label %bb.e, label %bytes_compar.exit16

bb.e:                                             ; preds = %bytes_compar.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !80   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !78   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !80   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !78   ; 3 uses
  %i.u = icmp eq i64 %i.p, %i.t
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = tail call i32 @memcmp(ptr noundef readonly %i.n, ptr noundef readonly %i.r, i64 noundef %i.p) #20
  br label %bytes_compar.exit16

bb.g:                                             ; preds = %bb.e
  %i.w = icmp ult i64 %i.p, %i.t
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = tail call i32 @memcmp(ptr noundef readonly %i.n, ptr noundef readonly %i.r, i64 noundef %i.p) #20 ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  %..i15 = select i1 %i.y, i32 -1, i32 %i.x
  br label %bytes_compar.exit16

bb.i:                                             ; preds = %bb.g
  %i.z = tail call i32 @memcmp(ptr noundef readonly %i.n, ptr noundef readonly %i.r, i64 noundef %i.t) #20
  %.21.i13 = tail call i32 @llvm.umax.i32(i32 %i.z, i32 1)
  br label %bytes_compar.exit16

bytes_compar.exit16:                              ; preds = %bb.i, %bb.h, %bb.f, %bytes_compar.exit
  %.0 = phi i32 [ %.0.i, %bytes_compar.exit ], [ %i.v, %bb.f ], [ %..i15, %bb.h ], [ %.21.i13, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -901, 1) i32 @nghttp2_nv_array_copy(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !51
  br label %.loopexit

.preheader:                                       ; preds = %bb.a, %bb.f
  %.08398 = phi i64 [ %.2, %bb.f ], [ 0, %bb.a ]  ; 2 uses
  %.08797 = phi i64 [ %i.q, %bb.f ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %.08797 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i8, ptr %i.c, align 8, !tbaa !106   ; 2 uses
  %i.e = and i8 %i.d, 2
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !77
  %i.i = add i64 %.08398, 1
  %i.j = add i64 %i.i, %i.h
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader
  %.1 = phi i64 [ %i.j, %bb.c ], [ %.08398, %.preheader ] ; 2 uses
  %i.k = and i8 %i.d, 4
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !78
  %i.o = add i64 %.1, 1
  %i.p = add i64 %i.o, %i.n
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.2 = phi i64 [ %i.p, %bb.e ], [ %.1, %bb.d ]   ; 2 uses
  %i.q = add nuw i64 %.08797, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %2
  br i1 %exitcond.not, label %bb.g, label %.preheader, !llvm.loop !104

bb.g:                                             ; preds = %bb.f
  %i.r = mul i64 %2, 40                           ; 2 uses
  %i.s = add i64 %.2, %i.r
  %i.t = tail call ptr @nghttp2_mem_malloc(ptr noundef %3, i64 noundef %i.s) #18 ; 4 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !51
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.s
  %.0101 = phi ptr [ %i.t, %bb.h ], [ %i.bj, %bb.s ] ; 11 uses
  %.084100 = phi ptr [ %i.v, %bb.h ], [ %.286, %bb.s ] ; 5 uses
  %.18899 = phi i64 [ 0, %bb.h ], [ %i.bk, %bb.s ] ; 2 uses
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %.18899 ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !tbaa !106   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0101, i64 32
  store i8 %i.y, ptr %i.z, align 8, !tbaa !106
  %i.aa = and i8 %i.y, 2
  %.not = icmp eq i8 %i.aa, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !79
  store ptr %i.ab, ptr %.0101, align 8, !tbaa !79
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !77
  %i.ae = getelementptr inbounds nuw i8, ptr %.0101, i64 16
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !77
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !77 ; 2 uses
  %.not94 = icmp eq i64 %i.ag, 0
  br i1 %.not94, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !79
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.084100, ptr align 1 %i.ah, i64 %i.ag, i1 false)
  %.pre = load i64, ptr %i.af, align 8, !tbaa !77
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ai = phi i64 [ %.pre, %bb.l ], [ 0, %bb.k ]  ; 2 uses
  store ptr %.084100, ptr %.0101, align 8, !tbaa !79
  %i.aj = getelementptr inbounds nuw i8, ptr %.0101, i64 16 ; 2 uses
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !77
  %i.ak = getelementptr inbounds nuw i8, ptr %.084100, i64 %i.ai
  store i8 0, ptr %i.ak, align 1, !tbaa !13
  %i.al = load ptr, ptr %.0101, align 8, !tbaa !79
  %i.am = load i64, ptr %i.aj, align 8, !tbaa !77
  tail call void @nghttp2_downcase(ptr noundef %i.al, i64 noundef %i.am) #18
  %i.an = load i64, ptr %i.af, align 8, !tbaa !77
  %i.ao = getelementptr i8, ptr %.084100, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 1
  %.pre103 = load i8, ptr %i.x, align 8, !tbaa !106
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %i.aq = phi i8 [ %i.y, %bb.j ], [ %.pre103, %bb.m ]
  %.185 = phi ptr [ %.084100, %bb.j ], [ %i.ap, %bb.m ] ; 5 uses
  %i.ar = and i8 %i.aq, 4
  %.not95 = icmp eq i8 %i.ar, 0
  br i1 %.not95, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !80
  %i.au = getelementptr inbounds nuw i8, ptr %.0101, i64 8
  store ptr %i.at, ptr %i.au, align 8, !tbaa !80
  %i.av = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !78
  %i.ax = getelementptr inbounds nuw i8, ptr %.0101, i64 24
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !78
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 3 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !78 ; 2 uses
  %.not96 = icmp eq i64 %i.az, 0
  br i1 %.not96, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !80
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.185, ptr align 1 %i.bb, i64 %i.az, i1 false)
  %.pre104 = load i64, ptr %i.ay, align 8, !tbaa !78
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bc = phi i64 [ %.pre104, %bb.q ], [ 0, %bb.p ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0101, i64 8
  store ptr %.185, ptr %i.bd, align 8, !tbaa !80
  %i.be = getelementptr inbounds nuw i8, ptr %.0101, i64 24
  store i64 %i.bc, ptr %i.be, align 8, !tbaa !78
  %i.bf = getelementptr inbounds nuw i8, ptr %.185, i64 %i.bc
  store i8 0, ptr %i.bf, align 1, !tbaa !13
  %i.bg = load i64, ptr %i.ay, align 8, !tbaa !78
  %i.bh = getelementptr i8, ptr %.185, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.286 = phi ptr [ %.185, %bb.o ], [ %i.bi, %bb.r ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.0101, i64 40
  %i.bk = add nuw i64 %.18899, 1                  ; 2 uses
  %exitcond102.not = icmp eq i64 %i.bk, %2
  br i1 %exitcond102.not, label %.loopexit, label %bb.i, !llvm.loop !105

.loopexit:                                        ; preds = %bb.s, %bb.g, %bb.b
  %.089 = phi i32 [ 0, %bb.b ], [ -901, %bb.g ], [ 0, %bb.s ]
  ret i32 %.089
}

declare void @nghttp2_downcase(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define hidden range(i32 0, 2) i32 @nghttp2_iv_check(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #15 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %.035 = phi i64 [ %i.o, %bb.g ], [ 0, %bb.a ]   ; 2 uses
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.035 ; 6 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !69
  switch i32 %i.b, label %bb.g [
    i32 9, label %bb.f
    i32 8, label %bb.e
    i32 2, label %bb.b
    i32 4, label %bb.c
    i32 5, label %bb.d
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !70
  %switch = icmp ult i32 %i.d, 2
  br i1 %switch, label %bb.g, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !70
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %._crit_edge, label %bb.g

bb.d:                                             ; preds = %.lr.ph
end_hunk_0
