Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/pair?download=true
inline.NumInlined: 7
inline.NumDeleted: 4
begin_hunk_0_@BIO_new_bio_pair:bb.a

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !18
  %.not34.i = icmp eq ptr %i.j, null
  br i1 %.not34.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @ERR_put_error(i32 noundef 17, i32 noundef 0, i32 noundef 105, ptr noundef nonnull @.str.2, i32 noundef 264) #6
  br label %bio_make_pair.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %.not35.i = icmp eq i64 %1, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  br i1 %.not35.i, label %._crit_edge.i, label %bb.g

._crit_edge.i:                                    ; preds = %bb.f
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !20
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  store i64 %1, ptr %.phi.trans.insert.i, align 8, !tbaa !20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i
  %i.n = phi i64 [ %.pre.i, %._crit_edge.i ], [ %1, %bb.g ]
  %i.o = tail call ptr @OPENSSL_malloc(i64 noundef %i.n) #6 ; 2 uses
  store ptr %i.o, ptr %i.k, align 8, !tbaa !19
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bio_make_pair.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.k, label %bio_make_pair.exit

bb.k:                                             ; preds = %bb.j
  %.not36.i = icmp eq i64 %3, 0
  %.phi.trans.insert38.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  br i1 %.not36.i, label %._crit_edge37.i, label %bb.l

._crit_edge37.i:                                  ; preds = %bb.k
  %.pre39.i = load i64, ptr %.phi.trans.insert38.i, align 8, !tbaa !20
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  store i64 %3, ptr %.phi.trans.insert38.i, align 8, !tbaa !20
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge37.i
  %i.u = phi i64 [ %.pre39.i, %._crit_edge37.i ], [ %3, %bb.l ]
  %i.v = tail call ptr @OPENSSL_malloc(i64 noundef %i.u) #6 ; 2 uses
  store ptr %i.v, ptr %i.r, align 8, !tbaa !19
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bio_make_pair.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  br label %bio_make_pair.exit

bio_make_pair.exit:                               ; preds = %bb.j, %bb.n
  store ptr %i.b, ptr %i.f, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 0, ptr %i.y, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i64 0, ptr %i.z, align 8, !tbaa !22
  store ptr %i.a, ptr %i.h, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 0, ptr %i.aa, align 8, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i64 0, ptr %i.ab, align 8, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 1, ptr %i.ac, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 1, ptr %i.ad, align 8, !tbaa !23
  br label %bb.o

bio_make_pair.exit.thread:                        ; preds = %bb.m, %bb.h, %bb.d, %bb.a
  %i.ae = tail call i32 @BIO_free(ptr noundef %i.a) #6 ; 0 uses
  %i.af = tail call i32 @BIO_free(ptr noundef %i.b) #6 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bio_make_pair.exit, %bio_make_pair.exit.thread
  %storemerge17 = phi ptr [ null, %bio_make_pair.exit.thread ], [ %i.a, %bio_make_pair.exit ]
  %storemerge = phi ptr [ null, %bio_make_pair.exit.thread ], [ %i.b, %bio_make_pair.exit ]
  %.0 = phi i32 [ 0, %bio_make_pair.exit.thread ], [ 1, %bio_make_pair.exit ]
  store ptr %storemerge17, ptr %0, align 8, !tbaa !27
  store ptr %storemerge, ptr %2, align 8, !tbaa !27
  ret i32 %.0
}

declare ptr @BIO_new(ptr noundef) local_unnamed_addr #1

declare i32 @BIO_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @BIO_destroy_bio_pair(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bio_destroy_pair.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16   ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bio_destroy_pair.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !18   ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bio_destroy_pair.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16   ; 2 uses
  store ptr null, ptr %i.h, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i32 0, ptr %i.i, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store ptr null, ptr %i.c, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.k, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  br label %bio_destroy_pair.exit

bio_destroy_pair.exit:                            ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 1, %bb.c ], [ 1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i64 @BIO_ctrl_get_read_request(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @BIO_ctrl(ptr noundef %0, i32 noundef 141, i64 noundef 0, ptr noundef null) #6
  ret i64 %i.a
}

declare i64 @BIO_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i64 @BIO_ctrl_get_write_guarantee(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @BIO_ctrl(ptr noundef %0, i32 noundef 140, i64 noundef 0, ptr noundef null) #6
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define i32 @BIO_shutdown_wr(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @BIO_ctrl(ptr noundef %0, i32 noundef 142, i64 noundef 0, ptr noundef null) #6
  %i.b = trunc i64 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define internal i32 @bio_write(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = sext i32 %2 to i64
  tail call void @BIO_clear_retry_flags(ptr noundef %0) #6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !23
  %i.d = icmp eq i32 %i.c, 0
  %i.e = icmp eq ptr %1, null
  %or.cond = or i1 %i.e, %i.d
  %i.f = icmp eq i32 %2, 0
  %or.cond3 = or i1 %i.f, %or.cond
  br i1 %or.cond3, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i64 0, ptr %i.i, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !21
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_put_error(i32 noundef 17, i32 noundef 0, i32 noundef 101, ptr noundef nonnull @.str.2, i32 noundef 199) #6
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !24   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !20   ; 2 uses
  %i.p = icmp eq i64 %i.m, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @BIO_set_retry_write(ptr noundef nonnull %0) #6
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.q = sub i64 %i.o, %i.m
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.a) ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  br label %bb.g

bb.g:                                             ; preds = %OPENSSL_memcpy.exit, %bb.f
  %i.t = phi i64 [ %i.m, %bb.f ], [ %i.ab, %OPENSSL_memcpy.exit ] ; 2 uses
  %.048 = phi ptr [ %1, %bb.f ], [ %i.ad, %OPENSSL_memcpy.exit ] ; 2 uses
  %.045.a = phi i64 [ %spec.select, %bb.f ], [ %i.ac, %OPENSSL_memcpy.exit ] ; 3 uses
  %3 = load i64, ptr %i.r, align 8, !tbaa !25
  %4 = add i64 %i.t, %3                           ; 2 uses
  %5 = load i64, ptr %i.n, align 8, !tbaa !20     ; 4 uses
  %.not58 = icmp ult i64 %4, %5
  %i.u = select i1 %.not58, i64 0, i64 %5
  %spec.select61 = sub nuw i64 %4, %i.u           ; 3 uses
  %i.v = add i64 %spec.select61, %.045.a
  %.not59 = icmp ugt i64 %i.v, %5
  %i.w = sub i64 %5, %spec.select61
  %.0 = select i1 %.not59, i64 %i.w, i64 %.045.a  ; 5 uses
  %i.x = icmp eq i64 %.0, 0
  br i1 %i.x, label %OPENSSL_memcpy.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %spec.select61
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr readonly align 1 %.048, i64 %.0, i1 false)
  %.pre.a = load i64, ptr %i.l, align 8, !tbaa !24
  br label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %bb.g, %bb.h
  %i.aa = phi i64 [ %i.t, %bb.g ], [ %.pre.a, %bb.h ]
  %i.ab = add i64 %i.aa, %.0                      ; 2 uses
  store i64 %i.ab, ptr %i.l, align 8, !tbaa !24
  %i.ac = sub i64 %.045.a, %.0                    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.048, i64 %.0
  %.not60 = icmp eq i64 %i.ac, 0
  br i1 %.not60, label %bb.i, label %bb.g, !llvm.loop !28

bb.i:                                             ; preds = %OPENSSL_memcpy.exit
  %i.ae = trunc i64 %spec.select to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i, %bb.e, %bb.c
  %.047 = phi i32 [ %i.ae, %bb.i ], [ -1, %bb.c ], [ -1, %bb.e ], [ 0, %bb.a ]
  ret i32 %.047
}

; Function Attrs: nounwind uwtable
define internal i32 @bio_read(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = sext i32 %2 to i64                       ; 2 uses
  tail call void @BIO_clear_retry_flags(ptr noundef %0) #6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !23
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16   ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  store i64 0, ptr %i.i, align 8, !tbaa !22
  %i.j = icmp eq ptr %1, null
  %i.k = icmp eq i32 %2, 0
  %or.cond = or i1 %i.j, %i.k
  br i1 %or.cond, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !24   ; 3 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !21
  %.not60 = icmp eq i32 %i.p, 0
  br i1 %.not60, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  tail call void @BIO_set_retry_read(ptr noundef nonnull %0) #6
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !20
  %. = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.a)
  store i64 %., ptr %i.i, align 8, !tbaa !22
  br label %bb.l

bb.f:                                             ; preds = %bb.c
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.a) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.pre.a = load i64, ptr %i.s, align 8, !tbaa !25
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %bb.f
  %i.v = phi i64 [ %i.m, %bb.f ], [ %i.ac, %bb.j ]
  %i.w = phi i64 [ %.pre.a, %bb.f ], [ %spec.store.select.sink, %bb.j ] ; 3 uses
  %.050 = phi ptr [ %1, %bb.f ], [ %.1, %bb.j ]   ; 3 uses
  %.047.a = phi i64 [ %spec.select, %bb.f ], [ %i.ah, %bb.j ] ; 3 uses
  %3 = add i64 %i.w, %.047.a
  %4 = load i64, ptr %i.t, align 8, !tbaa !20     ; 2 uses
  %.not57 = icmp ugt i64 %3, %4
  %i.x = sub i64 %4, %i.w
  %.0 = select i1 %.not57, i64 %i.x, i64 %.047.a  ; 7 uses
  %i.y = icmp eq i64 %.0, 0
  br i1 %i.y, label %OPENSSL_memcpy.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.050, ptr readonly align 1 %i.aa, i64 %.0, i1 false)
  %.pre62.a = load i64, ptr %i.l, align 8, !tbaa !24
  br label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %bb.g, %bb.h
  %i.ab = phi i64 [ %i.v, %bb.g ], [ %.pre62.a, %bb.h ] ; 2 uses
  %i.ac = sub i64 %i.ab, %.0                      ; 2 uses
  store i64 %i.ac, ptr %i.l, align 8, !tbaa !24
  %.not58 = icmp eq i64 %i.ab, %.0
  br i1 %.not58, label %bb.j, label %bb.i

bb.i:                                             ; preds = %OPENSSL_memcpy.exit
  %i.ad = load i64, ptr %i.s, align 8, !tbaa !25
  %i.ae = add i64 %i.ad, %.0                      ; 2 uses
  %5 = load i64, ptr %i.t, align 8, !tbaa !20
  %i.af = icmp eq i64 %i.ae, %5
  %spec.store.select = select i1 %i.af, i64 0, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %.050, i64 %.0
  br label %bb.j

bb.j:                                             ; preds = %OPENSSL_memcpy.exit, %bb.i
  %spec.store.select.sink = phi i64 [ %spec.store.select, %bb.i ], [ 0, %OPENSSL_memcpy.exit ] ; 2 uses
  %.1 = phi ptr [ %i.ag, %bb.i ], [ %.050, %OPENSSL_memcpy.exit ]
  store i64 %spec.store.select.sink, ptr %i.s, align 8
  %i.ah = sub i64 %.047.a, %.0                    ; 2 uses
  %.not59 = icmp eq i64 %i.ah, 0
  br i1 %.not59, label %bb.k, label %bb.g, !llvm.loop !29

bb.k:                                             ; preds = %bb.j
  %i.ai = trunc i64 %spec.select to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %bb.b, %bb.a, %bb.k, %bb.e
  %.049 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ -1, %bb.e ], [ %i.ai, %bb.k ], [ 0, %bb.d ]
  ret i32 %.049
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i64 @bio_ctrl(ptr nofree noundef captures(none) %0, i32 noundef %1, i64 noundef %2, ptr nofree readnone captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 12 uses
  switch i32 %1, label %bb.r [
    i32 137, label %bb.b
    i32 140, label %bb.c
    i32 141, label %bb.f
    i32 147, label %bb.g
    i32 142, label %bb.h
    i32 8, label %bb.i
    i32 9, label %bb.j
    i32 10, label %bb.k
    i32 13, label %bb.m
    i32 11, label %bb.s
    i32 2, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !21
  %.not26 = icmp eq i32 %i.h, 0
  br i1 %.not26, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !24
  %i.m = sub i64 %i.j, %i.l
  br label %bb.s

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.o = load i64, ptr %i.n, align 8, !tbaa !22
  br label %bb.s

bb.g:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 0, ptr %i.p, align 8, !tbaa !22
  br label %bb.s

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.q, align 8, !tbaa !21
  br label %bb.s

bb.i:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.s = load i32, ptr %i.r, align 4, !tbaa !30
  %i.t = sext i32 %i.s to i64
  br label %bb.s

bb.j:                                             ; preds = %bb.a
  %i.u = trunc i64 %2 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.u, ptr %i.v, align 4, !tbaa !30
  br label %bb.s

bb.k:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %.not25 = icmp eq ptr %i.w, null
  br i1 %.not25, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !16
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !24
  br label %bb.s

bb.m:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !19
  %.not24 = icmp eq ptr %i.ac, null
  br i1 %.not24, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !24
  br label %bb.s

bb.o:                                             ; preds = %bb.a
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !18  ; 2 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !24
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !21
  %i.an = icmp ne i32 %i.am, 0
  %i.ao = zext i1 %i.an to i64
  br label %bb.s

bb.r:                                             ; preds = %bb.a
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.a, %bb.k, %bb.c, %bb.d, %bb.o, %bb.m, %bb.n, %bb.l, %bb.e, %bb.r, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.b
  %.0 = phi i64 [ 0, %bb.r ], [ %i.d, %bb.b ], [ 1, %bb.o ], [ %i.m, %bb.e ], [ %i.o, %bb.f ], [ 1, %bb.g ], [ 1, %bb.h ], [ %i.t, %bb.i ], [ 1, %bb.j ], [ %i.aa, %bb.l ], [ 0, %bb.c ], [ %i.ae, %bb.n ], [ 0, %bb.m ], [ 0, %bb.k ], [ 1, %bb.a ], [ 0, %bb.d ], [ 0, %bb.p ], [ %i.ao, %bb.q ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @bio_new(ptr nofree noundef writeonly captures(none) %0) #0 {
bb.a:
  %i.a = tail call ptr @OPENSSL_zalloc(i64 noundef 56) #6 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 17408, ptr %i.c, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.a, ptr %i.d, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @bio_free(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bio_destroy_pair.exit

bio_destroy_pair.exit:                            ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 0, ptr %i.f, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store ptr null, ptr %i.b, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.h, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bio_destroy_pair.exit, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19
  tail call void @OPENSSL_free(ptr noundef %i.k) #6
  tail call void @OPENSSL_free(ptr noundef nonnull %i.b) #6
  ret i32 1
}

declare void @BIO_clear_retry_flags(ptr noundef) local_unnamed_addr #1

declare void @ERR_put_error(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @BIO_set_retry_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare void @BIO_set_retry_read(ptr noundef) local_unnamed_addr #1

declare ptr @OPENSSL_zalloc(i64 noundef) local_unnamed_addr #1

declare void @OPENSSL_free(ptr noundef) local_unnamed_addr #1

declare ptr @OPENSSL_malloc(i64 noundef) local_unnamed_addr #1
end_hunk_0
