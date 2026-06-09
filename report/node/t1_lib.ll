inline.NumInlined: 100
inline.NumDeleted: 33
begin_hunk_0_@tls_group_allowed:bb.a
  %i.i = getelementptr inbounds nuw [56 x i8], ptr %i.g, i64 %.09.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.k = load i16, ptr %i.j, align 4, !tbaa !113
  %i.l = icmp eq i16 %i.k, %1
  br i1 %i.l, label %bb.d, label %bb.b

tls1_group_id_lookup.exit.thread:                 ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.m = lshr i16 %1, 8
  %i.n = trunc nuw i16 %i.m to i8
  store i8 %i.n, ptr %i.a, align 1, !tbaa !136
  %i.o = trunc i16 %1 to i8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.o, ptr %i.p, align 1, !tbaa !136
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !137
  %i.s = tail call i32 @tls1_group_id2nid(i16 noundef zeroext %1, i32 noundef 0)
  %i.t = call i32 @ssl_security(ptr noundef %0, i32 noundef %2, i32 noundef %i.r, i32 noundef %i.s, ptr noundef nonnull %i.a) #14
  br label %bb.e

bb.e:                                             ; preds = %tls1_group_id_lookup.exit.thread, %bb.d
  %.0 = phi i32 [ %i.t, %bb.d ], [ 0, %tls1_group_id_lookup.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0
}

declare i32 @ssl_security(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @tls1_get0_implemented_groups(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %2, null
  %i.b = icmp eq ptr %5, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @OPENSSL_sk_new(ptr noundef nonnull @tls_group_ix_cmp) #14 ; 10 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.r, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not75 = icmp eq i64 %3, 0
  br i1 %.not75, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = icmp sgt i32 %1, 0
  %i.f = icmp sgt i32 %0, 0                       ; 2 uses
  br i1 %i.e, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.f, label %.lr.ph.split.us.split, label %.lr.ph.split.us.split.us

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %bb.d
  %.059.us.us = phi i64 [ %i.l, %bb.d ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.04558.us.us = phi ptr [ %i.m, %bb.d ], [ %2, %.lr.ph.split.us ] ; 2 uses
  %i.g = tail call noalias ptr @CRYPTO_malloc(i64 noundef 16, ptr noundef nonnull @.str.2, i32 noundef 970) #14 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us.split.us
  store ptr %.04558.us.us, ptr %i.g, align 8, !tbaa !138
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.059.us.us, ptr %i.i, align 8, !tbaa !140
  %i.j = tail call i32 @OPENSSL_sk_push(ptr noundef nonnull %i.c, ptr noundef nonnull %i.g) #14
  %i.k = icmp slt i32 %i.j, 1
  br i1 %i.k, label %.split.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add nuw i64 %.059.us.us, 1               ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.04558.us.us, i64 56
  %exitcond.not = icmp eq i64 %i.l, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.us.split.us, !llvm.loop !141

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %bb.g
  %.059.us = phi i64 [ %i.w, %bb.g ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.04558.us = phi ptr [ %i.x, %bb.g ], [ %2, %.lr.ph.split.us ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.04558.us, i64 36
  %i.o = load i32, ptr %i.n, align 4, !tbaa !142  ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  %i.q = icmp slt i32 %i.o, %0
  %or.cond55.us = and i1 %i.q, %i.p
  br i1 %or.cond55.us, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us.split
  %i.r = tail call noalias ptr @CRYPTO_malloc(i64 noundef 16, ptr noundef nonnull @.str.2, i32 noundef 970) #14 ; 5 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %.04558.us, ptr %i.r, align 8, !tbaa !138
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.059.us, ptr %i.t, align 8, !tbaa !140
  %i.u = tail call i32 @OPENSSL_sk_push(ptr noundef nonnull %i.c, ptr noundef nonnull %i.r) #14
  %i.v = icmp slt i32 %i.u, 1
  br i1 %i.v, label %.split.us, label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.us.split
  %i.w = add nuw i64 %.059.us, 1                  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.04558.us, i64 56
  %exitcond94.not = icmp eq i64 %i.w, %3
  br i1 %exitcond94.not, label %._crit_edge, label %.lr.ph.split.us.split, !llvm.loop !141

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.f, label %.lr.ph.split.split, label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.j
  %.059.us60 = phi i64 [ %i.af, %bb.j ], [ 0, %.lr.ph.split ] ; 2 uses
  %.04558.us61 = phi ptr [ %i.ag, %bb.j ], [ %2, %.lr.ph.split ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.04558.us61, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !143
  %or.cond54.us = icmp sgt i32 %i.z, %1
  br i1 %or.cond54.us, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.split.us
  %i.aa = tail call noalias ptr @CRYPTO_malloc(i64 noundef 16, ptr noundef nonnull @.str.2, i32 noundef 970) #14 ; 5 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %.04558.us61, ptr %i.aa, align 8, !tbaa !138
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %.059.us60, ptr %i.ac, align 8, !tbaa !140
  %i.ad = tail call i32 @OPENSSL_sk_push(ptr noundef nonnull %i.c, ptr noundef nonnull %i.aa) #14
  %i.ae = icmp slt i32 %i.ad, 1
  br i1 %i.ae, label %.split.us, label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.split.split.us
  %i.af = add nuw i64 %.059.us60, 1               ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.04558.us61, i64 56
  %exitcond95.not = icmp eq i64 %i.af, %3
  br i1 %exitcond95.not, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !141

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.n
  %.059 = phi i64 [ %i.as, %bb.n ], [ 0, %.lr.ph.split ] ; 2 uses
  %.04558 = phi ptr [ %i.at, %bb.n ], [ %2, %.lr.ph.split ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.04558, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !143
  %or.cond54 = icmp sgt i32 %i.ai, %1
  br i1 %or.cond54, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split.split
  %i.aj = getelementptr inbounds nuw i8, ptr %.04558, i64 36
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !142 ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  %i.am = icmp slt i32 %i.ak, %0
  %or.cond55 = and i1 %i.am, %i.al
  br i1 %or.cond55, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = tail call noalias ptr @CRYPTO_malloc(i64 noundef 16, ptr noundef nonnull @.str.2, i32 noundef 970) #14 ; 5 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %.04558, ptr %i.an, align 8, !tbaa !138
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %.059, ptr %i.ap, align 8, !tbaa !140
  %i.aq = tail call i32 @OPENSSL_sk_push(ptr noundef nonnull %i.c, ptr noundef nonnull %i.an) #14
  %i.ar = icmp slt i32 %i.aq, 1
  br i1 %i.ar, label %.split.us, label %bb.n

.split.us:                                        ; preds = %bb.c, %bb.f, %bb.i, %bb.m
  %.us-phi = phi ptr [ %i.an, %bb.m ], [ %i.aa, %bb.i ], [ %i.r, %bb.f ], [ %i.g, %bb.c ]
  tail call void @CRYPTO_free(ptr noundef nonnull %.us-phi, ptr noundef nonnull @.str.2, i32 noundef 975) #14
  br label %.loopexit

bb.n:                                             ; preds = %bb.k, %.lr.ph.split.split, %bb.m
  %i.as = add nuw i64 %.059, 1                    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.04558, i64 56
  %exitcond96.not = icmp eq i64 %i.as, %3
  br i1 %exitcond96.not, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !141

._crit_edge:                                      ; preds = %bb.d, %bb.g, %bb.j, %bb.n, %.preheader
  tail call void @OPENSSL_sk_sort(ptr noundef nonnull %i.c) #14
  %i.au = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.c) #14 ; 2 uses
  %i.av = sext i32 %i.au to i64                   ; 2 uses
  %.not76 = icmp eq i32 %i.au, 0
  br i1 %.not76, label %.loopexit, label %.lr.ph70

.lr.ph70:                                         ; preds = %._crit_edge
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %.lr.ph70.split.us, label %.lr.ph70.split

.lr.ph70.split.us:                                ; preds = %.lr.ph70, %bb.p
  %.168.us = phi i64 [ %i.bf, %bb.p ], [ 0, %.lr.ph70 ] ; 2 uses
  %.04267.us = phi i16 [ %.143.us, %bb.p ], [ 0, %.lr.ph70 ] ; 2 uses
  %i.aw = trunc i64 %.168.us to i32
  %i.ax = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %i.c, i32 noundef %i.aw) #14
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !138 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 28
  %i.ba = load i16, ptr %i.az, align 4, !tbaa !113 ; 2 uses
  %i.bb = icmp eq i16 %i.ba, %.04267.us
  br i1 %i.bb, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph70.split.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %5) ]
  %i.bc = load ptr, ptr %i.ay, align 8, !tbaa !115
  %i.bd = tail call i32 @OPENSSL_sk_push(ptr noundef nonnull %5, ptr noundef %i.bc) #14
  %i.be = icmp slt i32 %i.bd, 1
  br i1 %i.be, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph70.split.us
  %.143.us = phi i16 [ %i.ba, %bb.o ], [ %.04267.us, %.lr.ph70.split.us ]
  %i.bf = add nuw i64 %.168.us, 1                 ; 2 uses
  %exitcond98.not = icmp eq i64 %i.bf, %i.av
  br i1 %exitcond98.not, label %.loopexit, label %.lr.ph70.split.us, !llvm.loop !144

.lr.ph70.split:                                   ; preds = %.lr.ph70, %bb.q
  %.168 = phi i64 [ %i.bm, %bb.q ], [ 0, %.lr.ph70 ] ; 2 uses
  %i.bg = trunc i64 %.168 to i32
  %i.bh = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %i.c, i32 noundef %i.bg) #14
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !138
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %5) ]
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !115
  %i.bk = tail call i32 @OPENSSL_sk_push(ptr noundef nonnull %5, ptr noundef %i.bj) #14
  %i.bl = icmp slt i32 %i.bk, 1
  br i1 %i.bl, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %.lr.ph70.split
  %i.bm = add nuw i64 %.168, 1                    ; 2 uses
  %exitcond97.not = icmp eq i64 %i.bm, %i.av
  br i1 %exitcond97.not, label %.loopexit, label %.lr.ph70.split, !llvm.loop !144

.loopexit:                                        ; preds = %.lr.ph.split.us.split.us, %bb.e, %bb.h, %bb.l, %.lr.ph70.split, %bb.q, %bb.o, %bb.p, %._crit_edge, %.split.us
  %.041 = phi i32 [ 0, %bb.h ], [ 0, %.split.us ], [ 0, %bb.e ], [ 1, %._crit_edge ], [ 0, %.lr.ph70.split ], [ 0, %bb.l ], [ 0, %bb.o ], [ 1, %bb.p ], [ 1, %bb.q ], [ 0, %.lr.ph.split.us.split.us ]
  tail call void @OPENSSL_sk_pop_free(ptr noundef nonnull %i.c, ptr noundef nonnull @free_wrapper) #14
  br label %bb.r

bb.r:                                             ; preds = %bb.b, %bb.a, %.loopexit
  %.044 = phi i32 [ %.041, %.loopexit ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.044
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @tls_group_ix_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !145    ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.d = load i16, ptr %i.c, align 4, !tbaa !113  ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !145    ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !138
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.h = load i16, ptr %i.g, align 4, !tbaa !113  ; 2 uses
  %.not16 = icmp eq i16 %i.h, %i.d
  br i1 %.not16, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @llvm.ucmp.i32.i16(i16 %i.d, i16 %i.h)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !140
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !140
  %i.n = tail call i32 @llvm.ucmp.i32.i64(i64 %i.m, i64 %i.k)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.i, %bb.b ], [ %i.n, %bb.c ]
  ret i32 %.0
}

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare i32 @OPENSSL_sk_push(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define internal void @free_wrapper(ptr noundef %0) #2 {
bb.a:
  tail call void @CRYPTO_free(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef 930) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i16 @tls1_shared_group(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !119  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load i32, ptr %i.d, align 8, !tbaa !146
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %tls1_group_id_lookup.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %1, -2
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2176
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !120
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.k = load i32, ptr %i.j, align 4, !tbaa !121
  %i.l = and i32 %i.k, 196608
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !147
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !148  ; 2 uses
  %switch.selectcmp = icmp eq i32 %i.p, 50380844
  %switch.select = select i1 %switch.selectcmp, i16 24, i16 0
  %switch.selectcmp62 = icmp eq i32 %i.p, 50380843
  %switch.select63 = select i1 %switch.selectcmp62, i16 23, i16 %switch.select
  br label %tls1_group_id_lookup.exit.thread

bb.e:                                             ; preds = %bb.c, %bb.b
  %.043 = phi i32 [ %1, %bb.b ], [ 0, %bb.c ]     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2480
  %i.r = load i64, ptr %i.q, align 8, !tbaa !150
  %i.s = and i64 %i.r, 4194304
  %.not53 = icmp eq i64 %i.s, 0
  br i1 %.not53, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2176
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !120
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !121
  %i.x = lshr i32 %i.w, 16
  %i.y = and i32 %i.x, 3
  switch i32 %i.y, label %default.unreachable [
    i32 3, label %tls1_get_supported_groups.exit
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 0, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  br label %tls1_get_supported_groups.exit

bb.h:                                             ; preds = %bb.f
  br label %tls1_get_supported_groups.exit

default.unreachable:                              ; preds = %bb.l, %bb.f
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2704
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !125 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 664
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !126
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 656
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !127
  br label %tls1_get_supported_groups.exit

bb.k:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2696
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !128
  br label %tls1_get_supported_groups.exit

tls1_get_supported_groups.exit:                   ; preds = %bb.f, %bb.g, %bb.h, %bb.j, %bb.k
  %.179 = phi ptr [ %i.aa, %bb.k ], [ @suiteb_curves, %bb.g ], [ getelementptr inbounds nuw (i8, ptr @suiteb_curves, i64 2), %bb.h ], [ %i.ad, %bb.j ], [ @suiteb_curves, %bb.f ]
  %.sink.i = phi i64 [ %i.ah, %bb.k ], [ 1, %bb.g ], [ 1, %bb.h ], [ %i.af, %bb.j ], [ 2, %bb.f ]
  %i.ai = getelementptr i8, ptr %0, i64 2712
  %.val65 = load i64, ptr %i.ai, align 8, !tbaa !151
  %i.aj = getelementptr i8, ptr %0, i64 2720
  %.val66 = load ptr, ptr %i.aj, align 8, !tbaa !152
  br label %tls1_get_supported_groups.exit69

bb.l:                                             ; preds = %bb.e
  %i.ak = getelementptr i8, ptr %0, i64 2712
  %.val = load i64, ptr %i.ak, align 8, !tbaa !151 ; 5 uses
  %i.al = getelementptr i8, ptr %0, i64 2720
  %.val64 = load ptr, ptr %i.al, align 8, !tbaa !152 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2176
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !120
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !121
  %i.aq = lshr i32 %i.ap, 16
  %i.ar = and i32 %i.aq, 3
  switch i32 %i.ar, label %default.unreachable [
    i32 3, label %tls1_get_supported_groups.exit69
    i32 1, label %bb.m
    i32 2, label %bb.n
    i32 0, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  br label %tls1_get_supported_groups.exit69

bb.n:                                             ; preds = %bb.l
  br label %tls1_get_supported_groups.exit69

bb.o:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2704
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !125 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 664
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !126
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 656
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !127
  br label %tls1_get_supported_groups.exit69

bb.q:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2696
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !128
  br label %tls1_get_supported_groups.exit69

tls1_get_supported_groups.exit69:                 ; preds = %bb.q, %bb.p, %bb.n, %bb.m, %bb.l, %tls1_get_supported_groups.exit
  %.078 = phi ptr [ %.179, %tls1_get_supported_groups.exit ], [ %.val64, %bb.l ], [ %.val64, %bb.m ], [ %.val64, %bb.n ], [ %.val64, %bb.p ], [ %.val64, %bb.q ]
  %.076 = phi ptr [ %.val66, %tls1_get_supported_groups.exit ], [ @suiteb_curves, %bb.l ], [ @suiteb_curves, %bb.m ], [ getelementptr inbounds nuw (i8, ptr @suiteb_curves, i64 2), %bb.n ], [ %i.aw, %bb.p ], [ %i.at, %bb.q ]
end_hunk_0
begin_hunk_1_@get_sigorhash:bb.a
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 6, ptr %0, align 4, !tbaa !5
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %2, ptr noundef nonnull @.str.106) #14
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %2, ptr noundef nonnull @.str.107) #14
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 912, ptr %0, align 4, !tbaa !5
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.g = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %2, ptr noundef nonnull @.str.14) #14
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 116, ptr %0, align 4, !tbaa !5
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.i = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %2, ptr noundef nonnull @.str.108) #14
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 408, ptr %0, align 4, !tbaa !5
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.k = tail call i32 @OBJ_sn2nid(ptr noundef nonnull %2) #14 ; 2 uses
  store i32 %i.k, ptr %1, align 4, !tbaa !5
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.m = tail call i32 @OBJ_ln2nid(ptr noundef nonnull %2) #14
  store i32 %i.m, ptr %1, align 4, !tbaa !5
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.i, %bb.k, %bb.j, %bb.g, %bb.b
  ret void
}

declare i32 @OBJ_sn2nid(ptr noundef) local_unnamed_addr #0

declare i32 @OBJ_ln2nid(ptr noundef) local_unnamed_addr #0

declare i32 @X509_self_signed(ptr noundef, i32 noundef) local_unnamed_addr #0

declare i32 @X509_get_signature_nid(ptr noundef) local_unnamed_addr #0

declare i32 @OBJ_find_sigid_algs(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare ptr @X509_get0_pubkey(ptr noundef) local_unnamed_addr #0

declare ptr @X509_get_issuer_name(ptr noundef) local_unnamed_addr #0

declare i32 @X509_NAME_cmp(ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @ssl_ctx_security(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

declare i32 @X509_get_extension_flags(ptr noundef) local_unnamed_addr #0

declare i32 @X509_get_signature_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @check_cert_usable(ptr nofree noundef readonly captures(none) %0, i32 %.20.val, ptr noundef %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !119  ; 2 uses
  %.not = icmp eq i32 %.20.val, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @OBJ_nid2sn(i32 noundef %.20.val) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.019 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !79
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !182
  %i.i = tail call i32 @EVP_PKEY_digestsign_supports_digest(ptr noundef %2, ptr noundef %i.f, ptr noundef %.019, ptr noundef %i.h) #14
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1000 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !236
  %.not23 = icmp eq ptr %i.l, null
  br i1 %.not23, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = call i32 @X509_get_signature_info(ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef null) #14
  %.not24 = icmp eq i32 %i.m, 0
  br i1 %.not24, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.o = load i64, ptr %i.n, align 8, !tbaa !350  ; 2 uses
  %.not6 = icmp eq i64 %i.o, 0
  br i1 %.not6, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !119  ; 2 uses
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !236
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 1616
  %i.s = load i64, ptr %i.r, align 8, !tbaa !197  ; 2 uses
  %.not14.i = icmp eq i64 %i.s, 0
  %i.t = load i32, ptr %i.a, align 4
  %i.u = load i32, ptr %i.b, align 4
  br i1 %.not14.i, label %.loopexit, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 1632
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !196
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.split, %tls1_lookup_sigalg.exit.thread
  %.0203 = phi i64 [ 0, %.lr.ph.split ], [ %i.am, %tls1_lookup_sigalg.exit.thread ] ; 2 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.0203
  %i.y = load i16, ptr %i.x, align 2, !tbaa !153
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.preheader.i
  %.013.i = phi ptr [ %i.ae, %bb.g ], [ %i.w, %.lr.ph.preheader.i ] ; 5 uses
  %.0912.i = phi i64 [ %i.af, %bb.g ], [ 0, %.lr.ph.preheader.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i, i64 16
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !186
  %i.ab = icmp eq i16 %i.aa, %i.y
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i, i64 44
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !180
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %tls1_lookup_sigalg.exit.thread, label %tls1_lookup_sigalg.exit

bb.g:                                             ; preds = %.lr.ph.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i, i64 72
  %i.af = add nuw i64 %.0912.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.af, %i.s
  br i1 %exitcond.not.i, label %tls1_lookup_sigalg.exit.thread, label %.lr.ph.i, !llvm.loop !209

tls1_lookup_sigalg.exit:                          ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !176
  %i.ai = icmp eq i32 %i.t, %i.ah
  br i1 %i.ai, label %bb.h, label %tls1_lookup_sigalg.exit.thread

bb.h:                                             ; preds = %tls1_lookup_sigalg.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i, i64 28
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !181
  %i.al = icmp eq i32 %i.u, %i.ak
  br i1 %i.al, label %.loopexit, label %tls1_lookup_sigalg.exit.thread

tls1_lookup_sigalg.exit.thread:                   ; preds = %bb.g, %bb.f, %tls1_lookup_sigalg.exit, %bb.h
  %i.am = add nuw i64 %.0203, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.am, %i.o
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.preheader.i, !llvm.loop !351

.loopexit:                                        ; preds = %bb.h, %tls1_lookup_sigalg.exit.thread, %.lr.ph, %.preheader, %bb.d, %bb.e, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.e ], [ 1, %bb.d ], [ 0, %.preheader ], [ 0, %.lr.ph ], [ 1, %bb.h ], [ 0, %tls1_lookup_sigalg.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0
}

declare ptr @OBJ_nid2sn(i32 noundef) local_unnamed_addr #0

declare i32 @EVP_PKEY_digestsign_supports_digest(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

declare i32 @EVP_PKEY_get_size(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i16(i16, i16) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

attributes #0 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !13, i64 24}
!10 = !{!"ssl_st", !6, i64 0, !11, i64 8, !13, i64 16, !13, i64 24, !14, i64 32, !12, i64 40, !15, i64 48}
!11 = !{!"p1 _ZTS10ssl_ctx_st", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS13ssl_method_st", !12, i64 0}
!14 = !{!"", !7, i64 0}
!15 = !{!"crypto_ex_data_st", !16, i64 0, !17, i64 8}
!16 = !{!"p1 _ZTS15ossl_lib_ctx_st", !12, i64 0}
!17 = !{!"p1 _ZTS13stack_st_void", !12, i64 0}
!18 = !{!19, !12, i64 48}
!19 = !{!"ssl_method_st", !6, i64 0, !6, i64 4, !20, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !12, i64 208, !21, i64 216, !12, i64 224, !12, i64 232, !12, i64 240}
!20 = !{!"long", !7, i64 0}
!21 = !{!"p1 _ZTS15ssl3_enc_method", !12, i64 0}
!22 = !{!10, !6, i64 0}
!23 = !{!24, !62, i64 2760}
!24 = !{!"ssl_connection_st", !10, i64 0, !25, i64 64, !6, i64 72, !26, i64 80, !26, i64 88, !26, i64 96, !6, i64 104, !12, i64 112, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !27, i64 136, !27, i64 144, !28, i64 152, !6, i64 240, !29, i64 248, !12, i64 256, !20, i64 264, !20, i64 272, !20, i64 280, !30, i64 288, !12, i64 336, !31, i64 344, !32, i64 352, !46, i64 1264, !12, i64 1272, !12, i64 1280, !6, i64 1288, !47, i64 1296, !48, i64 1304, !54, i64 1368, !54, i64 1376, !54, i64 1384, !54, i64 1392, !6, i64 1400, !7, i64 1404, !7, i64 1468, !7, i64 1532, !7, i64 1596, !7, i64 1660, !7, i64 1724, !7, i64 1788, !7, i64 1852, !7, i64 1916, !7, i64 1980, !7, i64 2044, !7, i64 2108, !55, i64 2176, !7, i64 2184, !20, i64 2248, !6, i64 2256, !20, i64 2264, !7, i64 2272, !56, i64 2304, !56, i64 2312, !37, i64 2320, !20, i64 2328, !12, i64 2336, !7, i64 2344, !20, i64 2376, !6, i64 2384, !12, i64 2392, !12, i64 2400, !6, i64 2408, !6, i64 2412, !12, i64 2416, !12, i64 2424, !12, i64 2432, !12, i64 2440, !51, i64 2448, !20, i64 2456, !38, i64 2464, !38, i64 2472, !20, i64 2480, !6, i64 2488, !6, i64 2492, !6, i64 2496, !20, i64 2504, !6, i64 2512, !6, i64 2516, !20, i64 2520, !20, i64 2528, !20, i64 2536, !57, i64 2544, !12, i64 2904, !6, i64 2912, !12, i64 2920, !12, i64 2928, !63, i64 2936, !6, i64 2944, !11, i64 2952, !64, i64 2960, !65, i64 2968, !6, i64 2976, !6, i64 2980, !6, i64 2984, !6, i64 2988, !37, i64 2992, !20, i64 3000, !6, i64 3008, !33, i64 3016, !66, i64 3024, !12, i64 3152, !68, i64 3160, !12, i64 5400, !12, i64 5408, !73, i64 5416, !74, i64 5424, !20, i64 5432, !6, i64 5440, !6, i64 5444, !6, i64 5448, !20, i64 5456, !20, i64 5464, !20, i64 5472, !12, i64 5480, !12, i64 5488, !12, i64 5496, !12, i64 5504, !75, i64 5512, !20, i64 5520, !37, i64 5528, !20, i64 5536, !37, i64 5544, !20, i64 5552}
!25 = !{!"p1 _ZTS6ssl_st", !12, i64 0}
!26 = !{!"p1 _ZTS6bio_st", !12, i64 0}
!27 = !{!"", !20, i64 0}
!28 = !{!"ossl_statem_st", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !6, i64 80}
!29 = !{!"p1 _ZTS10buf_mem_st", !12, i64 0}
!30 = !{!"ossl_quic_tls_callbacks_st", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40}
!31 = !{!"p1 _ZTS11quic_tls_st", !12, i64 0}
!32 = !{!"", !20, i64 0, !7, i64 8, !7, i64 40, !26, i64 72, !33, i64 80, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !7, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !34, i64 128, !7, i64 704, !20, i64 768, !7, i64 776, !20, i64 840, !6, i64 848, !6, i64 852, !37, i64 856, !20, i64 864, !37, i64 872, !20, i64 880, !6, i64 888, !7, i64 892, !7, i64 893, !45, i64 894, !36, i64 896, !45, i64 904}
!33 = !{!"p1 _ZTS13evp_md_ctx_st", !12, i64 0}
!34 = !{!"", !7, i64 0, !20, i64 128, !7, i64 136, !20, i64 264, !20, i64 272, !6, i64 280, !35, i64 288, !36, i64 296, !7, i64 304, !7, i64 336, !20, i64 344, !6, i64 352, !37, i64 360, !20, i64 368, !38, i64 376, !20, i64 384, !37, i64 392, !39, i64 400, !40, i64 408, !6, i64 416, !20, i64 424, !37, i64 432, !6, i64 440, !37, i64 448, !20, i64 456, !37, i64 464, !20, i64 472, !37, i64 480, !20, i64 488, !41, i64 496, !42, i64 504, !43, i64 512, !43, i64 520, !20, i64 528, !20, i64 536, !41, i64 544, !44, i64 552, !6, i64 560, !6, i64 564, !6, i64 568, !6, i64 572}
!35 = !{!"p1 _ZTS13ssl_cipher_st", !12, i64 0}
!36 = !{!"p1 _ZTS11evp_pkey_st", !12, i64 0}
!37 = !{!"p1 omnipotent char", !12, i64 0}
!38 = !{!"p1 _ZTS18stack_st_X509_NAME", !12, i64 0}
!39 = !{!"p1 _ZTS13evp_cipher_st", !12, i64 0}
!40 = !{!"p1 _ZTS9evp_md_st", !12, i64 0}
!41 = !{!"p1 _ZTS16sigalg_lookup_st", !12, i64 0}
!42 = !{!"p1 _ZTS12cert_pkey_st", !12, i64 0}
!43 = !{!"p1 short", !12, i64 0}
!44 = !{!"p1 int", !12, i64 0}
!45 = !{!"short", !7, i64 0}
!46 = !{!"p1 _ZTS14dtls1_state_st", !12, i64 0}
!47 = !{!"p1 _ZTS20X509_VERIFY_PARAM_st", !12, i64 0}
!48 = !{!"ssl_dane_st", !49, i64 0, !50, i64 8, !51, i64 16, !52, i64 24, !53, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !20, i64 56}
!49 = !{!"p1 _ZTS11dane_ctx_st", !12, i64 0}
!50 = !{!"p1 _ZTS23stack_st_danetls_record", !12, i64 0}
!51 = !{!"p1 _ZTS13stack_st_X509", !12, i64 0}
!52 = !{!"p1 _ZTS17danetls_record_st", !12, i64 0}
!53 = !{!"p1 _ZTS7x509_st", !12, i64 0}
!54 = !{!"p1 _ZTS19stack_st_SSL_CIPHER", !12, i64 0}
!55 = !{!"p1 _ZTS7cert_st", !12, i64 0}
!56 = !{!"p1 _ZTS14ssl_session_st", !12, i64 0}
!57 = !{!"", !7, i64 0, !12, i64 32, !12, i64 40, !37, i64 48, !6, i64 56, !37, i64 64, !45, i64 72, !6, i64 76, !58, i64 80, !6, i64 112, !6, i64 116, !20, i64 120, !37, i64 128, !20, i64 136, !37, i64 144, !20, i64 152, !43, i64 160, !20, i64 168, !43, i64 176, !20, i64 184, !43, i64 192, !20, i64 200, !61, i64 208, !62, i64 216, !12, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !37, i64 256, !20, i64 264, !37, i64 272, !20, i64 280, !6, i64 288, !6, i64 292, !6, i64 296, !6, i64 300, !37, i64 304, !20, i64 312, !6, i64 320, !7, i64 324, !6, i64 328, !7, i64 332, !6, i64 348, !7, i64 352, !7, i64 353, !7, i64 354, !7, i64 355}
!58 = !{!"", !59, i64 0, !60, i64 8, !37, i64 16, !20, i64 24}
!59 = !{!"p1 _ZTS20stack_st_OCSP_RESPID", !12, i64 0}
!60 = !{!"p1 _ZTS23stack_st_X509_EXTENSION", !12, i64 0}
!61 = !{!"p1 long", !12, i64 0}
!62 = !{!"p1 _ZTS25tls_session_ticket_ext_st", !12, i64 0}
!63 = !{!"p1 _ZTS12stack_st_SCT", !12, i64 0}
!64 = !{!"p1 _ZTS32stack_st_SRTP_PROTECTION_PROFILE", !12, i64 0}
!65 = !{!"p1 _ZTS26srtp_protection_profile_st", !12, i64 0}
!66 = !{!"srp_ctx_st", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !37, i64 32, !67, i64 40, !67, i64 48, !67, i64 56, !67, i64 64, !67, i64 72, !67, i64 80, !67, i64 88, !67, i64 96, !37, i64 104, !6, i64 112, !20, i64 120}
!67 = !{!"p1 _ZTS9bignum_st", !12, i64 0}
!68 = !{!"record_layer_st", !69, i64 0, !70, i64 8, !12, i64 16, !70, i64 24, !70, i64 32, !71, i64 40, !71, i64 48, !26, i64 56, !20, i64 64, !6, i64 72, !20, i64 80, !7, i64 88, !20, i64 96, !20, i64 104, !7, i64 112, !37, i64 120, !6, i64 128, !72, i64 136, !12, i64 144, !12, i64 152, !20, i64 160, !20, i64 168, !20, i64 176, !20, i64 184, !7, i64 192}
!69 = !{!"p1 _ZTS17ssl_connection_st", !12, i64 0}
!70 = !{!"p1 _ZTS21ossl_record_method_st", !12, i64 0}
!71 = !{!"p1 _ZTS20ossl_record_layer_st", !12, i64 0}
!72 = !{!"p1 _ZTS20dtls_record_layer_st", !12, i64 0}
!73 = !{!"p1 _ZTS12async_job_st", !12, i64 0}
!74 = !{!"p1 _ZTS17async_wait_ctx_st", !12, i64 0}
!75 = !{!"p2 _ZTS16sigalg_lookup_st", !76, i64 0}
!76 = !{!"any p2 pointer", !12, i64 0}
!77 = !{!19, !6, i64 0}
!78 = !{!24, !6, i64 72}
!79 = !{!80, !16, i64 0}
!80 = !{!"ssl_ctx_st", !16, i64 0, !13, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !81, i64 40, !82, i64 48, !20, i64 56, !56, i64 64, !56, i64 72, !6, i64 80, !27, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !83, i64 120, !14, i64 164, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !12, i64 232, !15, i64 240, !40, i64 256, !40, i64 264, !51, i64 272, !84, i64 280, !12, i64 288, !38, i64 296, !38, i64 304, !20, i64 312, !6, i64 320, !6, i64 324, !6, i64 328, !20, i64 336, !55, i64 344, !12, i64 352, !6, i64 360, !12, i64 368, !12, i64 376, !6, i64 384, !20, i64 392, !7, i64 400, !12, i64 432, !12, i64 440, !47, i64 448, !6, i64 456, !85, i64 464, !12, i64 472, !12, i64 480, !20, i64 488, !20, i64 496, !20, i64 504, !20, i64 512, !86, i64 520, !12, i64 528, !12, i64 536, !12, i64 544, !12, i64 552, !87, i64 560, !12, i64 800, !12, i64 808, !12, i64 816, !12, i64 824, !66, i64 832, !89, i64 960, !64, i64 992, !12, i64 1000, !12, i64 1008, !12, i64 1016, !6, i64 1024, !6, i64 1028, !12, i64 1032, !12, i64 1040, !20, i64 1048, !20, i64 1056, !12, i64 1064, !12, i64 1072, !12, i64 1080, !20, i64 1088, !12, i64 1096, !12, i64 1104, !6, i64 1112, !12, i64 1120, !12, i64 1128, !37, i64 1136, !7, i64 1144, !7, i64 1200, !7, i64 1392, !7, i64 1504, !20, i64 1616, !20, i64 1624, !41, i64 1632, !43, i64 1640, !91, i64 1648, !20, i64 1656, !20, i64 1664, !92, i64 1672, !20, i64 1680, !20, i64 1688, !6, i64 1696, !6, i64 1700, !6, i64 1704, !6, i64 1708, !37, i64 1712, !20, i64 1720, !37, i64 1728, !20, i64 1736, !20, i64 1744, !93, i64 1752, !37, i64 1760}
!81 = !{!"p1 _ZTS13x509_store_st", !12, i64 0}
!82 = !{!"p1 _ZTS20lhash_st_SSL_SESSION", !12, i64 0}
!83 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40}
!84 = !{!"p1 _ZTS17stack_st_SSL_COMP", !12, i64 0}
!85 = !{!"p1 _ZTS14ctlog_store_st", !12, i64 0}
!86 = !{!"p1 _ZTS9engine_st", !12, i64 0}
!87 = !{!"", !12, i64 0, !12, i64 8, !7, i64 16, !88, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !6, i64 72, !7, i64 76, !20, i64 80, !37, i64 88, !20, i64 96, !43, i64 104, !20, i64 112, !43, i64 120, !20, i64 128, !61, i64 136, !12, i64 144, !12, i64 152, !37, i64 160, !20, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !7, i64 208}
!88 = !{!"p1 _ZTS21ssl_ctx_ext_secure_st", !12, i64 0}
!89 = !{!"dane_ctx_st", !90, i64 0, !37, i64 8, !7, i64 16, !20, i64 24}
!90 = !{!"p2 _ZTS9evp_md_st", !76, i64 0}
!91 = !{!"p1 _ZTS17tls_group_info_st", !12, i64 0}
!92 = !{!"p1 _ZTS18tls_sigalg_info_st", !12, i64 0}
!93 = !{!"p1 _ZTS18ssl_token_store_st", !12, i64 0}
!94 = !{!95, !11, i64 0}
!95 = !{!"provider_ctx_data_st", !11, i64 0, !96, i64 8}
!96 = !{!"p1 _ZTS16ossl_provider_st", !12, i64 0}
!97 = !{!95, !96, i64 8}
!98 = !{!80, !20, i64 1680}
!99 = !{!80, !12, i64 352}
!100 = !{!80, !92, i64 1672}
!101 = !{!102, !37, i64 64}
!102 = !{!"tls_sigalg_info_st", !37, i64 0, !45, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96}
!103 = !{!102, !37, i64 32}
!104 = !{!102, !37, i64 16}
!105 = !{!106, !6, i64 0}
!106 = !{!"", !6, i64 0, !6, i64 4}
!107 = !{!106, !6, i64 4}
!108 = distinct !{!108, !109}
!109 = !{!"llvm.loop.mustprogress"}
!110 = !{!80, !20, i64 1656}
!111 = !{!80, !91, i64 1648}
!112 = distinct !{!112, !109}
!113 = !{!114, !45, i64 28}
!114 = !{!"tls_group_info_st", !37, i64 0, !37, i64 8, !37, i64 16, !6, i64 24, !45, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !7, i64 48}
!115 = !{!114, !37, i64 0}
!116 = !{!117, !6, i64 0}
!117 = !{!"", !6, i64 0, !45, i64 4}
!118 = !{!117, !45, i64 4}
!119 = !{!24, !11, i64 8}
!120 = !{!24, !55, i64 2176}
!121 = !{!122, !6, i64 28}
!122 = !{!"cert_st", !42, i64 0, !36, i64 8, !12, i64 16, !6, i64 24, !6, i64 28, !42, i64 32, !20, i64 40, !37, i64 48, !20, i64 56, !43, i64 64, !20, i64 72, !43, i64 80, !20, i64 88, !12, i64 96, !12, i64 104, !81, i64 112, !81, i64 120, !123, i64 128, !12, i64 144, !6, i64 152, !12, i64 160, !37, i64 168, !14, i64 176}
!123 = !{!"", !12, i64 0, !20, i64 8}
!124 = !{!43, !43, i64 0}
!125 = !{!24, !43, i64 2704}
!126 = !{!80, !43, i64 664}
!127 = !{!80, !20, i64 656}
!128 = !{!24, !20, i64 2696}
!129 = !{!20, !20, i64 0}
!130 = !{!61, !61, i64 0}
!131 = !{!24, !13, i64 24}
!132 = !{!19, !21, i64 216}
!133 = !{!134, !6, i64 80}
!134 = !{!"ssl3_enc_method", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !37, i64 32, !20, i64 40, !37, i64 48, !20, i64 56, !12, i64 64, !12, i64 72, !6, i64 80, !12, i64 88, !12, i64 96, !12, i64 104}
!135 = !{!114, !37, i64 16}
!136 = !{!7, !7, i64 0}
!137 = !{!114, !6, i64 24}
!138 = !{!139, !91, i64 0}
!139 = !{!"", !91, i64 0, !20, i64 8}
!140 = !{!139, !20, i64 8}
!141 = distinct !{!141, !109}
!142 = !{!114, !6, i64 36}
!143 = !{!114, !6, i64 32}
!144 = distinct !{!144, !109}
!145 = !{!12, !12, i64 0}
!146 = !{!24, !6, i64 120}
!147 = !{!24, !35, i64 768}
!148 = !{!149, !6, i64 24}
!149 = !{!"ssl_cipher_st", !6, i64 0, !37, i64 8, !37, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72}
!150 = !{!24, !20, i64 2480}
!151 = !{!24, !20, i64 2712}
!152 = !{!24, !43, i64 2720}
!153 = !{!45, !45, i64 0}
!154 = distinct !{!154, !109}
!155 = distinct !{!155, !109}
!156 = distinct !{!156, !109}
!157 = !{!158, !20, i64 80}
!158 = !{!"", !11, i64 0, !20, i64 8, !20, i64 16, !43, i64 24, !20, i64 32, !20, i64 40, !61, i64 48, !20, i64 56, !20, i64 64, !43, i64 72, !20, i64 80, !6, i64 88}
!159 = !{!158, !20, i64 8}
!160 = !{!158, !20, i64 32}
!161 = !{!158, !20, i64 56}
!162 = !{!158, !11, i64 0}
!163 = !{!158, !43, i64 24}
!164 = !{!158, !61, i64 48}
!165 = !{!158, !43, i64 72}
!166 = distinct !{!166, !109}
!167 = !{!158, !20, i64 40}
!168 = distinct !{!168, !109}
!169 = !{!158, !20, i64 64}
!170 = !{!158, !20, i64 16}
!171 = !{!24, !37, i64 2672}
!172 = !{!37, !37, i64 0}
!173 = !{!24, !20, i64 2664}
!174 = !{!80, !13, i64 8}
!175 = !{i64 0, i64 8, !172, i64 8, i64 8, !172, i64 16, i64 2, !153, i64 20, i64 4, !5, i64 24, i64 4, !5, i64 28, i64 4, !5, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 4, !5, i64 44, i64 4, !5, i64 48, i64 4, !5, i64 52, i64 4, !5, i64 56, i64 4, !5, i64 60, i64 4, !5, i64 64, i64 4, !5}
!176 = !{!177, !6, i64 20}
!177 = !{!"sigalg_lookup_st", !37, i64 0, !37, i64 8, !45, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64}
end_hunk_1
