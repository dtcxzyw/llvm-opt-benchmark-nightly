Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/ssltestlib?download=true
inline.NumInlined: 31
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@bio_f_tls_dump_filter_free:bb.a
}

declare void @BIO_meth_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @bio_s_mempacket_test() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @meth_mem, align 8, !tbaa !9 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @BIO_meth_new(i32 noundef 129, ptr noundef nonnull @.str.3) #14 ; 2 uses
  store ptr %i.c, ptr @meth_mem, align 8, !tbaa !9
  %i.d = tail call i32 @test_ptr(ptr noundef nonnull @.str.1, i32 noundef 285, ptr noundef nonnull @.str.2, ptr noundef %i.c) #14
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @meth_mem, align 8, !tbaa !9
  %i.f = tail call i32 @BIO_meth_set_write(ptr noundef %i.e, ptr noundef nonnull @mempacket_test_write) #14
  %i.g = icmp ne i32 %i.f, 0
  %i.h = zext i1 %i.g to i32
  %i.i = tail call i32 @test_true(ptr noundef nonnull @.str.1, i32 noundef 286, ptr noundef nonnull @.str.4, i32 noundef %i.h) #14
  %.not1 = icmp eq i32 %i.i, 0
  br i1 %.not1, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr @meth_mem, align 8, !tbaa !9
  %i.k = tail call i32 @BIO_meth_set_read(ptr noundef %i.j, ptr noundef nonnull @mempacket_test_read) #14
  %i.l = icmp ne i32 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = tail call i32 @test_true(ptr noundef nonnull @.str.1, i32 noundef 287, ptr noundef nonnull @.str.5, i32 noundef %i.m) #14
  %.not2 = icmp eq i32 %i.n, 0
  br i1 %.not2, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr @meth_mem, align 8, !tbaa !9
  %i.p = tail call i32 @BIO_meth_set_puts(ptr noundef %i.o, ptr noundef nonnull @mempacket_test_puts) #14
  %i.q = icmp ne i32 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %i.s = tail call i32 @test_true(ptr noundef nonnull @.str.1, i32 noundef 288, ptr noundef nonnull @.str.6, i32 noundef %i.r) #14
  %.not3 = icmp eq i32 %i.s, 0
  br i1 %.not3, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr @meth_mem, align 8, !tbaa !9
  %i.u = tail call i32 @BIO_meth_set_gets(ptr noundef %i.t, ptr noundef nonnull @mempacket_test_gets) #14
  %i.v = icmp ne i32 %i.u, 0
  %i.w = zext i1 %i.v to i32
  %i.x = tail call i32 @test_true(ptr noundef nonnull @.str.1, i32 noundef 289, ptr noundef nonnull @.str.7, i32 noundef %i.w) #14
  %.not4 = icmp eq i32 %i.x, 0
  br i1 %.not4, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr @meth_mem, align 8, !tbaa !9
  %i.z = tail call i32 @BIO_meth_set_ctrl(ptr noundef %i.y, ptr noundef nonnull @mempacket_test_ctrl) #14
  %i.aa = icmp ne i32 %i.z, 0
  %i.ab = zext i1 %i.aa to i32
  %i.ac = tail call i32 @test_true(ptr noundef nonnull @.str.1, i32 noundef 290, ptr noundef nonnull @.str.8, i32 noundef %i.ab) #14
  %.not5 = icmp eq i32 %i.ac, 0
  br i1 %.not5, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr @meth_mem, align 8, !tbaa !9
  %i.ae = tail call i32 @BIO_meth_set_create(ptr noundef %i.ad, ptr noundef nonnull @mempacket_test_new) #14
  %i.af = icmp ne i32 %i.ae, 0
  %i.ag = zext i1 %i.af to i32
  %i.ah = tail call i32 @test_true(ptr noundef nonnull @.str.1, i32 noundef 291, ptr noundef nonnull @.str.9, i32 noundef %i.ag) #14
  %.not6 = icmp eq i32 %i.ah, 0
  br i1 %.not6, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr @meth_mem, align 8, !tbaa !9
  %i.aj = tail call i32 @BIO_meth_set_destroy(ptr noundef %i.ai, ptr noundef nonnull @mempacket_test_free) #14
  %i.ak = icmp ne i32 %i.aj, 0
  %i.al = zext i1 %i.ak to i32
  %i.am = tail call i32 @test_true(ptr noundef nonnull @.str.1, i32 noundef 292, ptr noundef nonnull @.str.10, i32 noundef %i.al) #14
  %.not7 = icmp eq i32 %i.am, 0
  %.pre = load ptr, ptr @meth_mem, align 8
  %spec.select = select i1 %.not7, ptr null, ptr %.pre
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.0 = phi ptr [ null, %bb.b ], [ %spec.select, %bb.i ], [ null, %bb.h ], [ null, %bb.g ], [ null, %bb.f ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ %i.a, %bb.a ]
  ret ptr %.0
}

declare i32 @test_ptr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @test_true(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 13, 0) i32 @mempacket_test_write(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @mempacket_test_inject(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef -1, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal i32 @mempacket_test_read(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @BIO_get_data(ptr noundef %0) #14 ; 9 uses
  tail call void @BIO_clear_flags(ptr noundef %0, i32 noundef 15) #14
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = tail call ptr @OPENSSL_sk_value(ptr noundef %i.b, i32 noundef 0) #14 ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !24
  %.not = icmp eq i32 %i.f, %i.h
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @BIO_set_flags(ptr noundef %0, i32 noundef 9) #14
  br label %.loopexit79

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.j = tail call ptr @OPENSSL_sk_shift(ptr noundef %i.i) #14 ; 0 uses
  %i.k = load i32, ptr %i.g, align 8, !tbaa !24
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.g, align 8, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !25   ; 4 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.n) ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !26
  %.not75 = icmp eq i32 %i.p, 2
  br i1 %.not75, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !27
  %.not76 = icmp eq i32 %i.r, 0
  br i1 %.not76, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.t = load i32, ptr %i.s, align 4, !tbaa !28
  %i.u = icmp sgt i32 %i.t, -1
  %i.v = icmp sgt i32 %i.n, 0
  %or.cond = select i1 %i.u, i1 %i.v, i1 false
  br i1 %or.cond, label %.lr.ph, label %.loopexit

bb.g:                                             ; preds = %bb.e
  %.old = icmp sgt i32 %i.n, 0
  br i1 %.old, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.t
  %.06383 = phi i32 [ %i.n, %.lr.ph ], [ %i.br, %bb.t ] ; 5 uses
  %.06482 = phi ptr [ %i.w, %.lr.ph ], [ %.1, %bb.t ] ; 10 uses
  %.16681 = phi i32 [ %spec.select, %.lr.ph ], [ %.2, %bb.t ] ; 2 uses
  %i.ab = icmp samesign ult i32 %.06383, 13
  br i1 %i.ab, label %.loopexit79, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %.06482, i64 3
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !12
  %i.ae = zext i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.06482, i64 4
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !12
  %i.ai = zext i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.af, %i.ai            ; 3 uses
  %i.ak = load i16, ptr %i.x, align 8, !tbaa !30
  %i.al = zext i16 %i.ak to i32
  %.not77 = icmp eq i32 %i.aj, %i.al
  br i1 %.not77, label %._crit_edge, label %bb.j

._crit_edge:                                      ; preds = %bb.i
  %.pre = load i32, ptr %i.y, align 4, !tbaa !31
  br label %.preheader

bb.j:                                             ; preds = %bb.i
  %i.am = trunc nuw i32 %i.aj to i16
  store i16 %i.am, ptr %i.x, align 8, !tbaa !30
  store i32 0, ptr %i.y, align 4, !tbaa !31
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %bb.j
  %.062.ph = phi i32 [ 0, %bb.j ], [ %.pre, %._crit_edge ]
  br label %bb.k

bb.k:                                             ; preds = %.preheader, %bb.k
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.k ], [ 0, %.preheader ] ; 2 uses
  %.062 = phi i32 [ %i.aq, %bb.k ], [ %.062.ph, %.preheader ] ; 2 uses
  %i.an = trunc i32 %.062 to i8
  %i.ao = sub nsw i64 10, %indvars.iv
  %3 = and i64 %i.ao, 4294967295
  %i.ap = getelementptr inbounds nuw i8, ptr %.06482, i64 %3
  store i8 %i.an, ptr %i.ap, align 1, !tbaa !12
  %i.aq = lshr i32 %.062, 8                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not78 = icmp eq i32 %i.aq, 0
  br i1 %.not78, label %bb.l, label %bb.k, !llvm.loop !32

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %.06482, i64 11
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !12
  %i.at = zext i8 %i.as to i32
  %i.au = shl nuw nsw i32 %i.at, 8
  %i.av = getelementptr inbounds nuw i8, ptr %.06482, i64 12
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !12
  %i.ax = zext i8 %i.aw to i32
  %i.ay = or disjoint i32 %i.au, %i.ax
  %i.az = add nuw nsw i32 %i.ay, 13               ; 7 uses
  %i.ba = icmp samesign ult i32 %.06383, %i.az
  br i1 %i.ba, label %.loopexit79, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = load i32, ptr %i.z, align 4, !tbaa !28
  %i.bc = load i32, ptr %i.y, align 4, !tbaa !31
  %i.bd = icmp eq i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.be = load i32, ptr %i.aa, align 8, !tbaa !33
  %i.bf = icmp eq i32 %i.be, %i.aj
  br i1 %i.bf, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.bg = icmp samesign ugt i32 %.06383, %i.az
  br i1 %i.bg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bh = zext nneg i32 %i.az to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %.06482, i64 %i.bh
  %i.bj = sub nuw nsw i32 %.06383, %i.az
  %i.bk = zext nneg i32 %i.bj to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.06482, ptr nonnull align 1 %i.bi, i64 %i.bk, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bl = sub i32 %.16681, %i.az                  ; 2 uses
  store i32 -1, ptr %i.z, align 4, !tbaa !28
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  tail call void @BIO_set_flags(ptr noundef %0, i32 noundef 9) #14
  br label %bb.t

bb.s:                                             ; preds = %bb.n, %bb.m
  %i.bn = zext nneg i32 %i.az to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.06482, i64 %i.bn
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.r, %bb.s
  %.2 = phi i32 [ 0, %bb.r ], [ %i.bl, %bb.q ], [ %.16681, %bb.s ] ; 2 uses
  %.1 = phi ptr [ %.06482, %bb.r ], [ %.06482, %bb.q ], [ %i.bo, %bb.s ]
  %i.bp = load i32, ptr %i.y, align 4, !tbaa !31
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %i.y, align 4, !tbaa !31
  %i.br = sub nsw i32 %.06383, %i.az              ; 2 uses
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %bb.h, label %.loopexit, !llvm.loop !34

.loopexit:                                        ; preds = %bb.t, %bb.g, %bb.f, %bb.d
  %.3 = phi i32 [ %spec.select, %bb.d ], [ %spec.select, %bb.f ], [ %spec.select, %bb.g ], [ %.2, %bb.t ] ; 2 uses
  %i.bt = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.bu = sext i32 %.3 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.bt, i64 %i.bu, i1 false)
  %i.bv = load ptr, ptr %i.c, align 8, !tbaa !29  ; 2 uses
  %.not.i = icmp eq ptr %i.bv, null
  br i1 %.not.i, label %mempacket_free.exit, label %bb.u

bb.u:                                             ; preds = %.loopexit
  tail call void @CRYPTO_free(ptr noundef nonnull %i.bv, ptr noundef nonnull @.str.1, i32 noundef 256) #14
  br label %mempacket_free.exit

mempacket_free.exit:                              ; preds = %.loopexit, %bb.u
  tail call void @CRYPTO_free(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.1, i32 noundef 257) #14
  br label %.loopexit79

.loopexit79:                                      ; preds = %bb.l, %bb.h, %mempacket_free.exit, %bb.c
  %.067 = phi i32 [ -1, %bb.c ], [ %.3, %mempacket_free.exit ], [ -1, %bb.h ], [ -1, %bb.l ]
  ret i32 %.067
}

; Function Attrs: nounwind uwtable
define internal range(i32 13, 0) i32 @mempacket_test_puts(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15
  %i.b = trunc i64 %i.a to i32
  %i.c = tail call range(i32 13, 0) i32 @mempacket_test_inject(ptr noundef %0, ptr noundef nonnull readonly %1, i32 noundef %i.b, i32 noundef -1, i32 noundef 0)
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @mempacket_test_gets(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2) #2 {
bb.a:
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define internal range(i64 -2147483648, 2147483648) i64 @mempacket_test_ctrl(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call ptr @BIO_get_data(ptr noundef %0) #14 ; 6 uses
  switch i32 %1, label %bb.k [
    i32 2, label %bb.b
    i32 8, label %bb.c
    i32 9, label %bb.d
    i32 131072, label %bb.j
    i32 10, label %bb.e
    i32 11, label %bb.l
    i32 32768, label %bb.g
    i32 65536, label %bb.h
    i32 98304, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = tail call i32 @OPENSSL_sk_num(ptr noundef %i.b) #14
  %i.d = icmp eq i32 %i.c, 0
  %i.e = zext i1 %i.d to i64
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = tail call i32 @BIO_get_shutdown(ptr noundef %0) #14
  %i.g = sext i32 %i.f to i64
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.h = trunc i64 %2 to i32
  tail call void @BIO_set_shutdown(ptr noundef %0, i32 noundef %i.h) #14
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.j = tail call ptr @OPENSSL_sk_value(ptr noundef %i.i, i32 noundef 0) #14 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !25
  %i.n = sext i32 %i.m to i64
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.o = trunc i64 %2 to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 %i.o, ptr %i.p, align 8, !tbaa !33
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  %i.q = trunc i64 %2 to i32
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 %i.q, ptr %i.r, align 4, !tbaa !28
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.t = load i32, ptr %i.s, align 4, !tbaa !28
  %i.u = sext i32 %i.t to i64
  br label %bb.l

bb.j:                                             ; preds = %bb.a
  %i.v = trunc i64 %2 to i32
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 %i.v, ptr %i.w, align 8, !tbaa !35
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.e, %bb.f, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ 0, %bb.k ], [ %i.e, %bb.b ], [ %i.g, %bb.c ], [ 1, %bb.d ], [ 1, %bb.j ], [ %i.u, %bb.i ], [ %i.n, %bb.f ], [ 0, %bb.e ], [ 1, %bb.g ], [ 1, %bb.h ], [ 1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @mempacket_test_new(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 48, ptr noundef nonnull @.str.1, i32 noundef 307) #14 ; 6 uses
  %i.b = tail call i32 @test_ptr(ptr noundef nonnull @.str.1, i32 noundef 307, ptr noundef nonnull @.str.106, ptr noundef %i.a) #14
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @OPENSSL_sk_new_null() #14
  %i.d = tail call ptr @OPENSSL_sk_set_thunks(ptr noundef %i.c, ptr noundef nonnull @sk_MEMPACKET_freefunc_thunk) #14 ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !17
  %i.e = tail call i32 @test_ptr(ptr noundef nonnull @.str.1, i32 noundef 309, ptr noundef nonnull @.str.107, ptr noundef %i.d) #14
  %.not7 = icmp eq i32 %i.e, 0
  br i1 %.not7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @CRYPTO_free(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.1, i32 noundef 310) #14
  br label %bb.e
end_hunk_0
