Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/ssltestlib?download=true
inline.NumInlined: 31
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@mempacket_test_new:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 0, ptr %i.f, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 -1, ptr %i.g, align 4, !tbaa !24
  tail call void @BIO_set_init(ptr noundef %0, i32 noundef 1) #14
  tail call void @BIO_set_data(ptr noundef %0, ptr noundef nonnull %i.a) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mempacket_test_free(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @BIO_get_data(ptr noundef %0) #14 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = tail call ptr @OPENSSL_sk_set_thunks(ptr noundef %i.b, ptr noundef nonnull @sk_MEMPACKET_freefunc_thunk) #14
  tail call void @OPENSSL_sk_pop_free(ptr noundef %i.c, ptr noundef nonnull @mempacket_free) #14
  tail call void @CRYPTO_free(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.1, i32 noundef 325) #14
  tail call void @BIO_set_data(ptr noundef %0, ptr noundef null) #14
  tail call void @BIO_set_init(ptr noundef %0, i32 noundef 0) #14
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local void @bio_s_mempacket_test_free() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @meth_mem, align 8, !tbaa !11
  tail call void @BIO_meth_free(ptr noundef %i.a) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @mempacket_swap_epoch(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @BIO_get_data(ptr noundef %0) #14 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = tail call i32 @OPENSSL_sk_num(ptr noundef %i.b) #14 ; 3 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.f = add nsw i32 %i.c, -1
  %i.g = tail call ptr @OPENSSL_sk_value(ptr noundef %i.e, i32 noundef %i.f) #14 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !21   ; 2 uses
  %i.k = icmp slt i32 %i.j, 13
  br i1 %i.k, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.l
  %.066 = phi ptr [ null, %.lr.ph ], [ %.05065, %bb.l ] ; 3 uses
  %.05065 = phi ptr [ %i.l, %.lr.ph ], [ %i.bb, %bb.l ] ; 7 uses
  %.05164 = phi i32 [ 0, %.lr.ph ], [ %i.v, %bb.l ] ; 3 uses
  %.05263 = phi i32 [ %i.j, %.lr.ph ], [ %i.az, %bb.l ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05065, i64 11
  %i.o = load i8, ptr %i.n, align 1, !tbaa !12
  %i.p = zext i8 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 8
  %i.r = getelementptr inbounds nuw i8, ptr %.05065, i64 12
  %i.s = load i8, ptr %i.r, align 1, !tbaa !12
  %i.t = zext i8 %i.s to i32
  %i.u = or disjoint i32 %i.q, %i.t
  %i.v = add nuw nsw i32 %i.u, 13                 ; 4 uses
  %i.w = icmp samesign ult i32 %.05263, %i.v
  br i1 %i.w, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %.05065, i64 3
  %i.y = load i8, ptr %i.x, align 1, !tbaa !12
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.05065, i64 4
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !12
  %i.ad = zext i8 %i.ac to i32
  %i.ae = or disjoint i32 %i.aa, %i.ad
  %i.af = load i16, ptr %i.m, align 8, !tbaa !26
  %i.ag = zext i16 %i.af to i32
  %.not = icmp eq i32 %i.ae, %i.ag
  br i1 %.not, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = icmp eq ptr %.066, null
  br i1 %i.ah, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = zext nneg i32 %.05164 to i64            ; 2 uses
  %i.aj = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.ai, ptr noundef nonnull @.str.1, i32 noundef 451) #14 ; 5 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull align 1 %.066, i64 %i.ai, i1 false)
  %i.al = zext nneg i32 %.05263 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.066, ptr nonnull align 1 %.05065, i64 %i.al, i1 false)
  %i.am = load i32, ptr %i.i, align 8, !tbaa !21
  %i.an = sub nsw i32 %i.am, %.05164
  store i32 %i.an, ptr %i.i, align 8, !tbaa !21
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !20
  %i.aq = tail call noalias ptr @CRYPTO_malloc(i64 noundef 24, ptr noundef nonnull @.str.1, i32 noundef 468) #14 ; 7 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @CRYPTO_free(ptr noundef nonnull %i.aj, ptr noundef nonnull @.str.1, i32 noundef 470) #14
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i32 1, ptr %i.as, align 8, !tbaa !22
  store ptr %i.aj, ptr %i.aq, align 8, !tbaa !25
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i32 %.05164, ptr %i.at, align 8, !tbaa !21
  %i.au = add nsw i32 %i.ap, 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i32 %i.au, ptr %i.av, align 4, !tbaa !20
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.ax = tail call i32 @OPENSSL_sk_insert(ptr noundef %i.aw, ptr noundef nonnull %i.aq, i32 noundef %i.c) #14
  %i.ay = icmp slt i32 %i.ax, 1
  br i1 %i.ay, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  tail call void @CRYPTO_free(ptr noundef nonnull %i.aj, ptr noundef nonnull @.str.1, i32 noundef 478) #14
  tail call void @CRYPTO_free(ptr noundef nonnull %i.aq, ptr noundef nonnull @.str.1, i32 noundef 479) #14
  br label %.loopexit

bb.l:                                             ; preds = %bb.e
  %i.az = sub nuw nsw i32 %.05263, %i.v           ; 2 uses
  %i.ba = zext nneg i32 %i.v to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %.05065, i64 %i.ba
  %i.bc = icmp slt i32 %i.az, 13
  br i1 %i.bc, label %.loopexit, label %bb.d, !llvm.loop !43

.loopexit:                                        ; preds = %bb.d, %bb.l, %bb.c, %bb.j, %bb.g, %bb.f, %bb.b, %bb.a, %bb.k, %bb.i
  %.053 = phi i32 [ 1, %bb.j ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.k ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.i ], [ 0, %bb.c ], [ 0, %bb.l ], [ 0, %bb.d ]
  ret i32 %.053
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare ptr @BIO_get_data(ptr noundef) local_unnamed_addr #1

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @mempacket_move_packet(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @BIO_get_data(ptr noundef %0) #14 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = tail call i32 @OPENSSL_sk_num(ptr noundef %i.b) #14
  %.not = icmp slt i32 %1, %2
  %.not29 = icmp sgt i32 %i.c, %2
  %or.cond = select i1 %.not, i1 %.not29, i1 false
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.e = tail call ptr @OPENSSL_sk_value(ptr noundef %i.d, i32 noundef %2) #14 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.h = tail call ptr @OPENSSL_sk_delete(ptr noundef %i.g, i32 noundef %2) #14
  %.not30 = icmp eq ptr %i.h, %i.e
  br i1 %.not30, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %.neg = sub i32 %1, %2
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !20
  %i.k = add i32 %.neg, %i.j
  store i32 %i.k, ptr %i.i, align 4, !tbaa !20
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.m = tail call i32 @OPENSSL_sk_insert(ptr noundef %i.l, ptr noundef nonnull %i.e, i32 noundef %1) #14
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.0.in34 = phi i32 [ %.0, %.lr.ph ], [ %1, %bb.d ]
  %.0 = add nsw i32 %.0.in34, 1                   ; 3 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.p = tail call ptr @OPENSSL_sk_value(ptr noundef %i.o, i32 noundef %.0) #14
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 12 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !20
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !20
  %exitcond.not = icmp eq i32 %.0, %2
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !44

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.c, %bb.b, %bb.a
  %.025 = phi i32 [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ 1, %.lr.ph ]
  ret i32 %.025
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @mempacket_dup_last_packet(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @BIO_get_data(ptr noundef %0) #14 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = tail call i32 @OPENSSL_sk_num(ptr noundef %i.b) #14 ; 3 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.f = add nsw i32 %i.c, -1
  %i.g = tail call ptr @OPENSSL_sk_value(ptr noundef %i.e, i32 noundef %i.f) #14 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noalias ptr @CRYPTO_malloc(i64 noundef 24, ptr noundef nonnull @.str.1, i32 noundef 543) #14 ; 7 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !tbaa.struct !46
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !21
  %i.n = sext i32 %i.m to i64
  %i.o = tail call ptr @CRYPTO_memdup(ptr noundef %i.k, i64 noundef %i.n, ptr noundef nonnull @.str.1, i32 noundef 548) #14 ; 2 uses
  store ptr %i.o, ptr %i.i, align 8, !tbaa !25
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !20
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !20
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.u = tail call i32 @OPENSSL_sk_insert(ptr noundef %i.t, ptr noundef nonnull %i.i, i32 noundef %i.c) #14
  %i.v = icmp slt i32 %i.u, 1
  br i1 %i.v, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !25   ; 2 uses
  %.not.i22 = icmp eq ptr %i.w, null
  br i1 %.not.i22, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @CRYPTO_free(ptr noundef nonnull %i.w, ptr noundef nonnull @.str.1, i32 noundef 256) #14
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.f, %bb.d
  tail call void @CRYPTO_free(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.1, i32 noundef 257) #14
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.e, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.e ], [ 0, %.sink.split ]
  ret i32 %.0
}

declare ptr @CRYPTO_memdup(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @mempacket_free(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @CRYPTO_free(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.1, i32 noundef 256) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @CRYPTO_free(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, i32 noundef 257) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 13, 0) i32 @mempacket_test_inject(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 6 uses
  %i.b = tail call ptr @BIO_get_data(ptr noundef %0) #14 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.d = load i8, ptr %i.c, align 1, !tbaa !12
  %i.e = zext i8 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = load i8, ptr %i.g, align 1, !tbaa !12
  %i.i = zext i8 %i.h to i32
  %i.j = or disjoint i32 %i.f, %i.i
  %i.k = add nuw nsw i32 %i.j, 13                 ; 4 uses
  %i.l = zext nneg i32 %i.k to i64                ; 2 uses
  %i.m = icmp eq ptr %i.b, null
  br i1 %i.m, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = sext i32 %2 to i64                       ; 3 uses
  %i.o = icmp ult i32 %2, %i.k
  br i1 %i.o, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = icmp eq i32 %2, %i.k
  br i1 %i.p, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !28
  %i.s = icmp sgt i32 %i.r, 0                     ; 2 uses
  %i.t = icmp ne i32 %3, -1
  %or.cond = and i1 %i.t, %i.s
  br i1 %or.cond, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %.0107 = phi i1 [ %i.s, %bb.d ], [ false, %bb.c ] ; 2 uses
  %i.u = icmp sgt i32 %3, -1                      ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 2 uses
  br i1 %i.u, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.thread
  %i.w = load i32, ptr %i.v, align 4, !tbaa !51
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 1, ptr %i.x, align 8, !tbaa !23
  br label %bb.h

bb.g:                                             ; preds = %.thread
  store i32 1, ptr %i.v, align 4, !tbaa !51
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.l
  %i.z = sub nsw i64 %i.n, %i.l
  %i.aa = sub nuw nsw i32 %2, %i.k
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 8 uses
  %wide.trip.count = select i1 %.0107, i64 3, i64 1 ; 3 uses
  br label %bb.i

.preheader111:                                    ; preds = %bb.p
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ah, i64 12 ; 2 uses
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.ae = tail call i32 @OPENSSL_sk_num(ptr noundef %i.ad) #14
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader111
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  br label %bb.r

bb.i:                                             ; preds = %bb.h, %bb.p
  %indvars.iv = phi i64 [ 0, %bb.h ], [ %indvars.iv.next, %bb.p ] ; 4 uses
  %i.ah = tail call noalias ptr @CRYPTO_malloc(i64 noundef 24, ptr noundef nonnull @.str.1, i32 noundef 597) #14 ; 9 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !53
  %i.aj = tail call i32 @test_ptr(ptr noundef nonnull @.str.1, i32 noundef 597, ptr noundef nonnull @.str.11, ptr noundef %i.ah) #14
  %.not103 = icmp eq i32 %i.aj, 0
  br i1 %.not103, label %.loopexit110, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.n, ptr noundef nonnull @.str.1, i32 noundef 601) #14 ; 2 uses
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !25
  %i.al = tail call i32 @test_ptr(ptr noundef nonnull @.str.1, i32 noundef 601, ptr noundef nonnull @.str.12, ptr noundef %i.ak) #14
  %.not104 = icmp eq i32 %i.al, 0
  br i1 %.not104, label %.loopexit110, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = icmp ne i64 %indvars.iv, 2
  %or.cond3 = and i1 %.0107, %i.am
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !25 ; 2 uses
  br i1 %or.cond3, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr nonnull align 1 %i.y, i64 %i.z, i1 false)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %1, i64 %i.n, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sink = phi i32 [ %i.aa, %bb.l ], [ %2, %bb.m ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i32 %.sink, ptr %i.ao, align 8, !tbaa !21
  br i1 %i.u, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = load i32, ptr %i.ab, align 4, !tbaa !54
  %i.aq = trunc nuw nsw i64 %indvars.iv to i32
  %i.ar = add i32 %i.ap, %i.aq
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.as = phi i32 [ %i.ar, %bb.o ], [ %3, %bb.n ]
end_hunk_0
