inline.NumInlined: 31
inline.NumDeleted: 9
begin_hunk_0_@TXT_DB_read:bb.a
  br label %bb.z

bb.z:                                             ; preds = %.thread116, %bb.y, %bb.x
  %.0 = phi ptr [ %i.d, %bb.x ], [ null, %bb.y ], [ null, %.thread116 ]
  ret ptr %.0
}

declare ptr @BUF_MEM_new() local_unnamed_addr #1

declare i64 @BUF_MEM_grow(ptr noundef, i64 noundef) local_unnamed_addr #1

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @BUF_MEM_grow_clean(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @BIO_gets(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @BUF_MEM_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @TXT_DB_get_by_index(ptr nofree noundef captures(none) initializes((32, 40)) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !9
  %.not = icmp slt i32 %1, %i.a
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @OPENSSL_LH_retrieve(ptr noundef nonnull %i.f, ptr noundef %2) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sink = phi i64 [ 0, %bb.c ], [ 3, %bb.a ], [ 4, %bb.b ]
  %.0 = phi ptr [ %i.h, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sink, ptr %i.i, align 8, !tbaa !33
  ret ptr %.0
}

declare ptr @OPENSSL_LH_retrieve(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @TXT_DB_create_index(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !9
  %.not = icmp slt i32 %1, %i.a
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 3, ptr %i.b, align 8, !tbaa !33
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @OPENSSL_LH_new(ptr noundef %3, ptr noundef %4) #5 ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 1, ptr %i.e, align 8, !tbaa !33
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.h = tail call i32 @OPENSSL_sk_num(ptr noundef %i.g) #5 ; 3 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %.not41 = icmp eq ptr %2, null
  br i1 %.not41, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.g
  %.03646.us = phi i32 [ %i.o, %bb.g ], [ 0, %.lr.ph ] ; 3 uses
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.k = tail call ptr @OPENSSL_sk_value(ptr noundef %i.j, i32 noundef %.03646.us) #5 ; 2 uses
  %i.l = tail call ptr @OPENSSL_LH_insert(ptr noundef nonnull %i.c, ptr noundef %i.k) #5 ; 2 uses
  %.not42.us = icmp eq ptr %i.l, null
  br i1 %.not42.us, label %bb.f, label %.split.us

bb.f:                                             ; preds = %.lr.ph.split.us
  %i.m = tail call ptr @OPENSSL_LH_retrieve(ptr noundef nonnull %i.c, ptr noundef %i.k) #5
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.split49.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = add nuw nsw i32 %.03646.us, 1            ; 2 uses
  %exitcond61.not = icmp eq i32 %i.o, %i.h
  br i1 %exitcond61.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !34

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.j
  %.03646 = phi i32 [ %i.ae, %bb.j ], [ 0, %.lr.ph ] ; 3 uses
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.q = tail call ptr @OPENSSL_sk_value(ptr noundef %i.p, i32 noundef %.03646) #5 ; 3 uses
  %i.r = tail call i32 %2(ptr noundef %i.q) #5
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split
  %i.t = tail call ptr @OPENSSL_LH_insert(ptr noundef nonnull %i.c, ptr noundef %i.q) #5 ; 2 uses
  %.not42 = icmp eq ptr %i.t, null
  br i1 %.not42, label %bb.i, label %.split.us

.split.us:                                        ; preds = %bb.h, %.lr.ph.split.us
  %.us-phi = phi ptr [ %i.l, %.lr.ph.split.us ], [ %i.t, %bb.h ]
  %.us-phi47 = phi i32 [ %.03646.us, %.lr.ph.split.us ], [ %.03646, %bb.h ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 2, ptr %i.u, align 8, !tbaa !33
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.w = tail call i32 @OPENSSL_sk_find(ptr noundef %i.v, ptr noundef nonnull %.us-phi) #5
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.x, ptr %i.y, align 8, !tbaa !35
  %i.z = zext nneg i32 %.us-phi47 to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !36
  tail call void @OPENSSL_LH_free(ptr noundef nonnull %i.c) #5
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ab = tail call ptr @OPENSSL_LH_retrieve(ptr noundef nonnull %i.c, ptr noundef %i.q) #5
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.split49.us, label %bb.j

.split49.us:                                      ; preds = %bb.i, %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 1, ptr %i.ad, align 8, !tbaa !33
  tail call void @OPENSSL_LH_free(ptr noundef nonnull %i.c) #5
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %.lr.ph.split
  %i.ae = add nuw nsw i32 %.03646, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ae, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !34

._crit_edge:                                      ; preds = %bb.j, %bb.g, %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !18
  %i.ah = sext i32 %1 to i64                      ; 3 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !20
  tail call void @OPENSSL_LH_free(ptr noundef %i.aj) #5
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !18
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ah
  store ptr %i.c, ptr %i.al, align 8, !tbaa !20
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !19
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ah
  store ptr %2, ptr %i.ao, align 8, !tbaa !22
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %.split49.us, %.split.us, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %.split.us ], [ 0, %.split49.us ], [ 1, %._crit_edge ]
  ret i32 %.0
}

declare ptr @OPENSSL_LH_new(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @OPENSSL_LH_insert(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @OPENSSL_LH_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @TXT_DB_write(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @BUF_MEM_new() #5          ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.loopexit59, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.e = tail call i32 @OPENSSL_sk_num(ptr noundef %i.d) #5 ; 2 uses
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = load i32, ptr %1, align 8, !tbaa !9
  %.fr103 = freeze i32 %i.g                       ; 3 uses
  %i.h = sext i32 %.fr103 to i64                  ; 3 uses
  %i.i = icmp sgt i32 %i.e, 0
  br i1 %i.i, label %.lr.ph71, label %.loopexit59

.lr.ph71:                                         ; preds = %bb.b
  %i.j = icmp sgt i32 %.fr103, 0
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  br i1 %i.j, label %.lr.ph.us.us, label %.lr.ph71.split.split

.lr.ph.us.us:                                     ; preds = %.lr.ph71, %bb.c
  %.04369.us.us = phi i64 [ %i.o, %bb.c ], [ 0, %.lr.ph71 ] ; 2 uses
  %.04568.us.us = phi i64 [ %3, %bb.c ], [ 0, %.lr.ph71 ]
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.m = trunc i64 %.04369.us.us to i32
  %i.n = tail call ptr @OPENSSL_sk_value(ptr noundef %i.l, i32 noundef %i.m) #5 ; 2 uses
  br label %4

.lr.ph65.us.us.a:                                 ; preds = %._crit_edge.us.us
  %2 = load ptr, ptr %i.k, align 8, !tbaa !28
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge66.us.us
  %3 = add nsw i64 %i.ag, %.04568.us.us           ; 2 uses
  %i.o = add nuw nsw i64 %.04369.us.us, 1         ; 2 uses
  %exitcond117.not.a = icmp eq i64 %i.o, %i.f
  br i1 %exitcond117.not.a, label %.loopexit59, label %.lr.ph.us.us, !llvm.loop !37

bb.d:                                             ; preds = %.loopexit.us.us, %.lr.ph65.us.us.a
  %.04463.us.us = phi ptr [ %2, %.lr.ph65.us.us.a ], [ %i.w, %.loopexit.us.us ] ; 2 uses
  %.14962.us.us = phi i64 [ 0, %.lr.ph65.us.us.a ], [ %i.x, %.loopexit.us.us ] ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.14962.us.us
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !32   ; 2 uses
  %.not57.us.us = icmp eq ptr %i.q, null
  br i1 %.not57.us.us, label %.loopexit.us.us, label %.preheader.us.us

.preheader.us.us:                                 ; preds = %bb.d, %bb.f
  %.1.us.us = phi ptr [ %i.v, %bb.f ], [ %.04463.us.us, %bb.d ] ; 4 uses
  %.042.us.us = phi ptr [ %i.u, %bb.f ], [ %i.q, %bb.d ] ; 3 uses
  %i.r = load i8, ptr %.042.us.us, align 1, !tbaa !31 ; 2 uses
  switch i8 %i.r, label %bb.f [
    i8 0, label %.loopexit.us.us
    i8 9, label %bb.e
  ]

bb.e:                                             ; preds = %.preheader.us.us
  %i.s = getelementptr inbounds nuw i8, ptr %.1.us.us, i64 1
  store i8 92, ptr %.1.us.us, align 1, !tbaa !31
  %.pre = load i8, ptr %.042.us.us, align 1, !tbaa !31
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.preheader.us.us
  %i.t = phi i8 [ %.pre, %bb.e ], [ %i.r, %.preheader.us.us ]
  %.2.us.us = phi ptr [ %i.s, %bb.e ], [ %.1.us.us, %.preheader.us.us ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.042.us.us, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %.2.us.us, i64 1
  store i8 %i.t, ptr %.2.us.us, align 1, !tbaa !31
  br label %.preheader.us.us

.loopexit.us.us:                                  ; preds = %.preheader.us.us, %bb.d
  %.3.us.us = phi ptr [ %.04463.us.us, %bb.d ], [ %.1.us.us, %.preheader.us.us ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.3.us.us, i64 1 ; 2 uses
  store i8 9, ptr %.3.us.us, align 1, !tbaa !31
  %i.x = add nuw nsw i64 %.14962.us.us, 1         ; 2 uses
  %exitcond116.not = icmp eq i64 %i.x, %i.h
  br i1 %exitcond116.not, label %._crit_edge66.us.us, label %bb.d, !llvm.loop !38

4:                                                ; preds = %.lr.ph.us.us, %bb.g
  %.04661.us.us = phi i64 [ 0, %.lr.ph.us.us ], [ %.147.us.us, %bb.g ] ; 2 uses
  %.04860.us.us = phi i64 [ 0, %.lr.ph.us.us ], [ %i.y, %bb.g ] ; 2 uses
  %5 = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.04860.us.us
  %6 = load ptr, ptr %5, align 8, !tbaa !32       ; 2 uses
  %.not58.us.us = icmp eq ptr %6, null
  br i1 %.not58.us.us, label %bb.g, label %7

7:                                                ; preds = %4
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #6
  %9 = add i64 %8, %.04661.us.us
  br label %bb.g

bb.g:                                             ; preds = %7, %4
  %.147.us.us = phi i64 [ %9, %7 ], [ %.04661.us.us, %4 ] ; 2 uses
  %i.y = add nuw nsw i64 %.04860.us.us, 1         ; 2 uses
  %exitcond115.not = icmp eq i64 %i.y, %i.h
  br i1 %exitcond115.not, label %._crit_edge.us.us, label %4, !llvm.loop !39

._crit_edge.us.us:                                ; preds = %bb.g
  %.046.tr.us.us = trunc i64 %.147.us.us to i32
  %i.z = shl i32 %.046.tr.us.us, 1
  %i.aa = add i32 %i.z, %.fr103
  %i.ab = sext i32 %i.aa to i64
  %i.ac = tail call i64 @BUF_MEM_grow_clean(ptr noundef nonnull %i.a, i64 noundef %i.ab) #5
  %.not.us.us = icmp eq i64 %i.ac, 0
  br i1 %.not.us.us, label %.loopexit59, label %.lr.ph65.us.us.a

._crit_edge66.us.us:                              ; preds = %.loopexit.us.us
  store i8 10, ptr %.3.us.us, align 1, !tbaa !31
  %i.ad = load ptr, ptr %i.k, align 8, !tbaa !28  ; 2 uses
  %i.ae = ptrtoint ptr %i.w to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 3 uses
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = tail call i32 @BIO_write(ptr noundef %0, ptr noundef %i.ad, i32 noundef %i.ah) #5
  %i.aj = sext i32 %i.ai to i64
  %.not56.us.us = icmp eq i64 %i.ag, %i.aj
  br i1 %.not56.us.us, label %bb.c, label %.loopexit59

.lr.ph71.split.split:                             ; preds = %.lr.ph71, %bb.i
  %.04369 = phi i64 [ %i.ay, %bb.i ], [ 0, %.lr.ph71 ] ; 2 uses
  %.04568 = phi i64 [ %i.ax, %bb.i ], [ 0, %.lr.ph71 ]
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.al = trunc i64 %.04369 to i32
  %i.am = tail call ptr @OPENSSL_sk_value(ptr noundef %i.ak, i32 noundef %i.al) #5 ; 0 uses
  %i.an = tail call i64 @BUF_MEM_grow_clean(ptr noundef nonnull %i.a, i64 noundef %i.h) #5
  %.not = icmp eq i64 %i.an, 0
  br i1 %.not, label %.loopexit59, label %bb.h

bb.h:                                             ; preds = %.lr.ph71.split.split
  %i.ao = load ptr, ptr %i.k, align 8, !tbaa !28  ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -1
  store i8 10, ptr %i.ap, align 1, !tbaa !31
  %i.aq = load ptr, ptr %i.k, align 8, !tbaa !28  ; 2 uses
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 3 uses
  %i.au = trunc i64 %i.at to i32
  %i.av = tail call i32 @BIO_write(ptr noundef %0, ptr noundef %i.aq, i32 noundef %i.au) #5
  %i.aw = sext i32 %i.av to i64
  %.not56 = icmp eq i64 %i.at, %i.aw
  br i1 %.not56, label %bb.i, label %.loopexit59

bb.i:                                             ; preds = %bb.h
  %i.ax = add nsw i64 %i.at, %.04568              ; 2 uses
  %i.ay = add nuw nsw i64 %.04369, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ay, %i.f
  br i1 %exitcond.not, label %.loopexit59, label %.lr.ph71.split.split, !llvm.loop !37

.loopexit59:                                      ; preds = %.lr.ph71.split.split, %bb.h, %bb.i, %._crit_edge.us.us, %._crit_edge66.us.us, %bb.c, %bb.b, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ -1, %._crit_edge.us.us ], [ 0, %bb.b ], [ -1, %._crit_edge66.us.us ], [ %3, %bb.c ], [ -1, %bb.h ], [ -1, %.lr.ph71.split.split ], [ %i.ax, %bb.i ]
  tail call void @BUF_MEM_free(ptr noundef %i.a) #5
  ret i64 %.0
}

declare i32 @BIO_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @TXT_DB_insert(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !9
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

.preheader:                                       ; preds = %bb.g
  %i.e = icmp sgt i32 %i.u, 0
  br i1 %i.e, label %.lr.ph67, label %._crit_edge

.lr.ph67:                                         ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.h

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 5 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20   ; 2 uses
  %.not58 = icmp eq ptr %i.j, null
  br i1 %.not58, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22   ; 2 uses
  %.not59 = icmp eq ptr %i.m, null
  br i1 %.not59, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = tail call i32 %i.m(ptr noundef %1) #5
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.g, label %._crit_edge81

._crit_edge81:                                    ; preds = %bb.d
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !18
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv
  %.pre82 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !20
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge81, %bb.c
  %i.p = phi ptr [ %.pre82, %._crit_edge81 ], [ %i.j, %bb.c ]
  %i.q = tail call ptr @OPENSSL_LH_retrieve(ptr noundef %i.p, ptr noundef %1) #5 ; 2 uses
  %.not60 = icmp eq ptr %i.q, null
  br i1 %.not60, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 2, ptr %i.r, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %indvars.iv, ptr %i.s, align 8, !tbaa !35
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.q, ptr %i.t, align 8, !tbaa !40
  br label %.loopexit

bb.g:                                             ; preds = %bb.b, %bb.e, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = load i32, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = icmp slt i64 %indvars.iv.next, %i.v
  br i1 %i.w, label %bb.b, label %.preheader, !llvm.loop !41

bb.h:                                             ; preds = %.lr.ph67, %bb.l
  %indvars.iv75 = phi i64 [ 0, %.lr.ph67 ], [ %indvars.iv.next76, %bb.l ] ; 6 uses
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv75
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !20   ; 2 uses
  %.not54 = icmp eq ptr %i.z, null
  br i1 %.not54, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv75
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !22 ; 2 uses
  %.not55 = icmp eq ptr %i.ac, null
  br i1 %.not55, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call i32 %i.ac(ptr noundef %1) #5
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.l, label %._crit_edge83

._crit_edge83:                                    ; preds = %bb.j
  %.pre84 = load ptr, ptr %i.f, align 8, !tbaa !18
  %.phi.trans.insert85 = getelementptr inbounds nuw [8 x i8], ptr %.pre84, i64 %indvars.iv75
  %.pre86 = load ptr, ptr %.phi.trans.insert85, align 8, !tbaa !20
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge83, %bb.i
  %i.af = phi ptr [ %.pre86, %._crit_edge83 ], [ %i.z, %bb.i ]
  %i.ag = tail call ptr @OPENSSL_LH_insert(ptr noundef %i.af, ptr noundef %1) #5 ; 0 uses
  %i.ah = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv75
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !20
  %i.ak = tail call ptr @OPENSSL_LH_retrieve(ptr noundef %i.aj, ptr noundef %1) #5
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %.loopexit61.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 3 uses
  %i.am = load i32, ptr %0, align 8, !tbaa !9
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp slt i64 %indvars.iv.next76, %i.an
  br i1 %i.ao, label %bb.h, label %._crit_edge.loopexit, !llvm.loop !42

._crit_edge.loopexit:                             ; preds = %bb.l
  %i.ap = trunc nuw nsw i64 %indvars.iv.next76 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.loopexit, %.preheader
  %.1.lcssa = phi i32 [ 0, %.preheader ], [ %i.ap, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !17
  %i.as = tail call i32 @OPENSSL_sk_push(ptr noundef %i.ar, ptr noundef %1) #5
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %.loopexit61, label %.loopexit

.loopexit61.loopexit:                             ; preds = %bb.k
  %i.at = trunc nuw nsw i64 %indvars.iv75 to i32
  br label %.loopexit61

.loopexit61:                                      ; preds = %.loopexit61.loopexit, %._crit_edge
  %.163 = phi i32 [ %.1.lcssa, %._crit_edge ], [ %i.at, %.loopexit61.loopexit ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 1, ptr %i.au, align 8, !tbaa !33
  %.not102 = icmp eq i32 %.163, 0
  br i1 %.not102, label %.loopexit, label %.lr.ph69

.lr.ph69:                                         ; preds = %.loopexit61
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = zext nneg i32 %.163 to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph69, %.backedge
  %indvars.iv78 = phi i64 [ %i.ax, %.lr.ph69 ], [ %indvars.iv.next79, %.backedge ] ; 2 uses
  %indvars.iv.next79 = add nsw i64 %indvars.iv78, -1 ; 4 uses
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next79
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !20 ; 2 uses
  %.not56 = icmp eq ptr %i.ba, null
  br i1 %.not56, label %.backedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = load ptr, ptr %i.aw, align 8, !tbaa !19
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next79
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !22 ; 2 uses
  %.not57 = icmp eq ptr %i.bd, null
  br i1 %.not57, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = tail call i32 %i.bd(ptr noundef %1) #5
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %.backedge, label %._crit_edge87

._crit_edge87:                                    ; preds = %bb.o
  %.pre88 = load ptr, ptr %i.av, align 8, !tbaa !18
  %.phi.trans.insert89 = getelementptr inbounds nuw [8 x i8], ptr %.pre88, i64 %indvars.iv.next79
  %.pre90 = load ptr, ptr %.phi.trans.insert89, align 8, !tbaa !20
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge87, %bb.n
  %i.bg = phi ptr [ %.pre90, %._crit_edge87 ], [ %i.ba, %bb.n ]
  %i.bh = tail call ptr @OPENSSL_LH_delete(ptr noundef %i.bg, ptr noundef %1) #5 ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.m, %bb.p, %bb.o
  %i.bi = icmp samesign ugt i64 %indvars.iv78, 1
  br i1 %i.bi, label %bb.m, label %.loopexit, !llvm.loop !43

.loopexit:                                        ; preds = %.backedge, %.loopexit61, %bb.f, %._crit_edge
  %.0 = phi i32 [ 1, %._crit_edge ], [ 0, %bb.f ], [ 0, %.loopexit61 ], [ 0, %.backedge ]
  ret i32 %.0
}

declare ptr @OPENSSL_LH_delete(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @TXT_DB_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %.not = icmp eq ptr %i.c, null
end_hunk_0
