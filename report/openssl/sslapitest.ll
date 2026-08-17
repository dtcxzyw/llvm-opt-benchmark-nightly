inline.NumInlined: 120
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@alpn_select_cb2:bb.a

.sink.split.sink.split:                           ; preds = %bb.a, %bb.b
  %.sink7 = phi ptr [ getelementptr inbounds nuw (i8, ptr @barprot, i64 1), %bb.b ], [ getelementptr inbounds nuw (i8, ptr @fooprot, i64 1), %bb.a ]
  store ptr %.sink7, ptr %1, align 8, !tbaa !14
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.a
  %.sink = phi i8 [ 0, %bb.a ], [ 3, %.sink.split.sink.split ]
  store i8 %.sink, ptr %2, align 1, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ 2, %bb.a ], [ 0, %.sink.split ]
  ret i32 %.0
}

declare void @SSL_get0_alpn_selected(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @crypto_send_cb(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(none) %4) #1 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !142    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8208 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !150
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !19
  %i.h = tail call ptr @SSL_get_ex_data(ptr noundef %0, i32 noundef 0) #24
  %i.i = tail call i32 @SSL_is_server(ptr noundef %0) #24
  %.not.i = icmp eq i32 %i.i, 0
  %i.j = select i1 %.not.i, ptr @clientquicdata, ptr @serverquicdata
  %i.k = icmp eq ptr %i.j, %i.h
  %i.l = zext i1 %i.k to i32
  %i.m = tail call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 13815, ptr noundef nonnull @.str.1452, i32 noundef %i.l) #24
  %.not4.i.not = icmp eq i32 %i.m, 0
  br i1 %.not4.i.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8596
  store i32 1, ptr %i.n, align 4, !tbaa !146
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.o = sub i64 2048, %i.g
  %spec.select = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.o) ; 4 uses
  %i.p = icmp eq i64 %spec.select, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %3, align 8, !tbaa !19
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = load i32, ptr %i.c, align 4, !tbaa !150
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw [2048 x i8], ptr %i.q, i64 %i.s
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.s
  %i.v = load i64, ptr %i.u, align 8, !tbaa !19
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %1, i64 %spec.select, i1 false)
  %i.x = load i32, ptr %i.c, align 4, !tbaa !150
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.y ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !19
  %i.ab = add i64 %i.aa, %spec.select
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !19
  store i64 %spec.select, ptr %3, align 8, !tbaa !19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ 1, %bb.d ], [ 1, %bb.e ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @crypto_recv_rcd_cb(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noundef %3) #1 {
bb.a:
  %i.a = tail call ptr @SSL_get_ex_data(ptr noundef %0, i32 noundef 0) #24
  %i.b = tail call i32 @SSL_is_server(ptr noundef %0) #24
  %.not.i = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not.i, ptr @clientquicdata, ptr @serverquicdata
  %i.d = icmp eq ptr %i.c, %i.a
  %i.e = zext i1 %i.d to i32
  %i.f = tail call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 13815, ptr noundef nonnull @.str.1452, i32 noundef %i.e) #24
  %.not4.i.not = icmp eq i32 %i.f, 0
  br i1 %.not4.i.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8596
  store i32 1, ptr %i.g, align 4, !tbaa !146
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8208
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !149
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !19
  store i64 %i.m, ptr %2, align 8, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw [2048 x i8], ptr %i.n, i64 %i.k
  store ptr %i.o, ptr %1, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @crypto_release_rcd_cb(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2) #1 {
bb.a:
  %i.a = tail call ptr @SSL_get_ex_data(ptr noundef %0, i32 noundef 0) #24
  %i.b = tail call i32 @SSL_is_server(ptr noundef %0) #24
  %.not.i = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not.i, ptr @clientquicdata, ptr @serverquicdata
  %i.d = icmp eq ptr %i.c, %i.a
  %i.e = zext i1 %i.d to i32
  %i.f = tail call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 13815, ptr noundef nonnull @.str.1452, i32 noundef %i.e) #24
  %.not4.i.not = icmp eq i32 %i.f, 0
  br i1 %.not4.i.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8596
  store i32 1, ptr %i.g, align 4, !tbaa !146
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8600 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !145
  %.not13 = icmp eq i32 %i.i, 0
  br i1 %.not13, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.h, align 8, !tbaa !145
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8596
  store i32 1, ptr %i.j, align 4, !tbaa !146
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8208 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !149
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8, !tbaa !19
  %i.q = tail call i32 @test_size_t_eq(ptr noundef nonnull @.str.14, i32 noundef 13881, ptr noundef nonnull @.str.1453, ptr noundef nonnull @.str.1454, i64 noundef %1, i64 noundef %i.p) #24
  %.not14 = icmp eq i32 %i.q, 0
  br i1 %.not14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = tail call i32 @test_size_t_gt(ptr noundef nonnull @.str.14, i32 noundef 13882, ptr noundef nonnull @.str.1453, ptr noundef nonnull @.str.242, i64 noundef %1, i64 noundef 0) #24
  %.not15 = icmp eq i32 %i.r, 0
  br i1 %.not15, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8596
  store i32 1, ptr %i.s, align 4, !tbaa !146
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.t = load i32, ptr %i.l, align 8, !tbaa !149
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.u
  store i64 0, ptr %i.v, align 8, !tbaa !19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.d ], [ 1, %bb.h ], [ 0, %bb.g ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @yield_secret_cb(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef captures(none) %5) #1 {
bb.a:
  %i.a = tail call ptr @SSL_get_ex_data(ptr noundef %0, i32 noundef 0) #24
  %i.b = tail call i32 @SSL_is_server(ptr noundef %0) #24
  %.not.i = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not.i, ptr @clientquicdata, ptr @serverquicdata
  %i.d = icmp eq ptr %i.c, %i.a
  %i.e = zext i1 %i.d to i32
  %i.f = tail call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 13815, ptr noundef nonnull @.str.1452, i32 noundef %i.e) #24
  %.not4.i.not = icmp eq i32 %i.f, 0
  %i.g = add i32 %1, -4
  %or.cond = icmp ult i32 %i.g, -3
  %or.cond34 = or i1 %or.cond, %.not4.i.not
  br i1 %or.cond34, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %2, label %bb.f [
    i32 0, label %bb.c
    i32 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @test_size_t_le(ptr noundef nonnull @.str.14, i32 noundef 13994, ptr noundef nonnull @.str.1455, ptr noundef nonnull @.str.1456, i64 noundef %4, i64 noundef 144) #24
  %.not33 = icmp eq i32 %i.h, 0
  br i1 %.not33, label %bb.f, label %6

6:                                                ; preds = %bb.c
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %1, ptr %7, align 8, !tbaa !149
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = tail call i32 @test_size_t_le(ptr noundef nonnull @.str.14, i32 noundef 14002, ptr noundef nonnull @.str.1455, ptr noundef nonnull @.str.1457, i64 noundef %4, i64 noundef 144) #24
  %.not32 = icmp eq i32 %i.i, 0
  br i1 %.not32, label %bb.f, label %8

8:                                                ; preds = %bb.d
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %1, ptr %9, align 4, !tbaa !150
  br label %bb.e

bb.e:                                             ; preds = %8, %6
  %.sink41 = phi i64 [ 8408, %8 ], [ 8240, %6 ]
  %.sink = phi i64 [ 8552, %8 ], [ 8384, %6 ]
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 %.sink41
  %i.k = add nsw i32 %1, -1
  %i.l = zext nneg i32 %i.k to i64                ; 2 uses
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.j, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr align 1 %3, i64 %4, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 %.sink
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.l
  store i64 %4, ptr %i.o, align 8, !tbaa !19
  %i.p = load i32, ptr @secret_history_idx, align 4, !tbaa !17 ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [24 x i8], ptr @secret_history, i64 %i.q ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 %2, ptr %i.s, align 8, !tbaa !194
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 %1, ptr %i.t, align 4, !tbaa !196
  store i8 1, ptr %i.r, align 8, !tbaa !197
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %0, ptr %i.u, align 8, !tbaa !198
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8604
  %i.w = load i32, ptr %i.v, align 4, !tbaa !151
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 %i.w, ptr %i.x, align 4, !tbaa !199
  %i.y = add nsw i32 %i.p, 1
  store i32 %i.y, ptr @secret_history_idx, align 4, !tbaa !17
  br label %bb.g

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8596
  store i32 1, ptr %i.z, align 4, !tbaa !146
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i32 [ 0, %bb.f ], [ 1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @got_transport_params_cb(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) #1 {
bb.a:
  %i.a = tail call ptr @SSL_get_ex_data(ptr noundef %0, i32 noundef 0) #24
  %i.b = tail call i32 @SSL_is_server(ptr noundef %0) #24
  %.not.i = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not.i, ptr @clientquicdata, ptr @serverquicdata
  %i.d = icmp eq ptr %i.c, %i.a
  %i.e = zext i1 %i.d to i32
  %i.f = tail call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 13815, ptr noundef nonnull @.str.1452, i32 noundef %i.e) #24
  %.not4.i.not = icmp eq i32 %i.f, 0
  br i1 %.not4.i.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8596
  store i32 1, ptr %i.g, align 4, !tbaa !146
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = tail call i32 @test_size_t_le(ptr noundef nonnull @.str.14, i32 noundef 14052, ptr noundef nonnull @.str.1458, ptr noundef nonnull @.str.1459, i64 noundef %2, i64 noundef 3) #24
  %.not10 = icmp eq i32 %i.h, 0
  br i1 %.not10, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8596
  store i32 1, ptr %i.i, align 4, !tbaa !146
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8576
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr align 1 %1, i64 %2, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8584
  store i64 %2, ptr %i.k, align 8, !tbaa !148
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ 1, %bb.e ], [ 0, %bb.d ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @alert_cb(ptr noundef %0, i8 zeroext %1, ptr nofree noundef writeonly captures(none) %2) #1 {
bb.a:
  %i.a = tail call ptr @SSL_get_ex_data(ptr noundef %0, i32 noundef 0) #24
  %i.b = tail call i32 @SSL_is_server(ptr noundef %0) #24
  %.not.i = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not.i, ptr @clientquicdata, ptr @serverquicdata
  %i.d = icmp eq ptr %i.c, %i.a
  %i.e = zext i1 %i.d to i32
  %i.f = tail call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 13815, ptr noundef nonnull @.str.1452, i32 noundef %i.e) #24
  %.not4.i.not = icmp eq i32 %i.f, 0
  br i1 %.not4.i.not, label %3, label %5

3:                                                ; preds = %bb.a
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 8596
  store i32 1, ptr %4, align 4, !tbaa !146
  br label %7

5:                                                ; preds = %bb.a
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8592
  store i32 1, ptr %6, align 8, !tbaa !147
  br label %7

7:                                                ; preds = %5, %3
  %.0 = phi i32 [ 1, %5 ], [ 0, %3 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @yield_secret_cb_fail(ptr nofree readnone captures(none) %0, i32 %1, i32 %2, ptr nofree readnone captures(none) %3, i64 %4, ptr nofree readnone captures(none) %5) #0 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @add_old_ext(ptr nofree readnone captures(none) %0, i32 %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3, ptr nofree readnone captures(none) %4, ptr nofree readnone captures(none) %5) #9 {
bb.a:
  %i.a = load i32, ptr @add_ext_cb_called, align 4, !tbaa !17
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr @add_ext_cb_called, align 4, !tbaa !17
  store ptr @add_old_ext.data, ptr %2, align 8, !tbaa !14
  store i64 1, ptr %3, align 8, !tbaa !19
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @free_old_ext(ptr nofree readnone captures(none) %0, i32 %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @parse_old_ext(ptr nofree readnone captures(none) %0, i32 %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree readnone captures(none) %5) #15 {
bb.a:
  %i.a = load i32, ptr @parse_ext_cb_called, align 4, !tbaa !17
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr @parse_ext_cb_called, align 4, !tbaa !17
  %.not = icmp eq i64 %3, 1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %2, align 1, !tbaa !29
  %.not3 = icmp eq i8 %i.c, -1
  br i1 %.not3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i32 50, ptr %4, align 4, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  ret i32 %.0
}

declare i32 @SSL_set_ex_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @SSL_set_quic_tls_cbs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @SSL_set_quic_tls_transport_params(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @create_ssl_connection_ex(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @check_secret_history(ptr noundef %0) unnamed_addr #1 {
bb.a:
  tail call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str.14, i32 noundef 13919, ptr noundef nonnull @.str.1460, ptr noundef %0) #24
  %i.a = load i8, ptr @secret_history, align 16, !tbaa !197
  %i.b = icmp eq i8 %i.a, 1
  br i1 %i.b, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %bb.a ] ; 2 uses
  %.034 = phi i32 [ %.1, %bb.i ], [ 0, %bb.a ]    ; 2 uses
  %.02533 = phi i32 [ %.126, %bb.i ], [ 0, %bb.a ] ; 3 uses
  %.02732 = phi i32 [ %.128, %bb.i ], [ 2, %bb.a ] ; 4 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr @secret_history, i64 %indvars.iv ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !198
  %.not = icmp eq ptr %i.e, %0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !194  ; 2 uses
  %i.h = icmp eq i32 %i.g, 1
  %i.i = select i1 %i.h, ptr @.str.1462, ptr @.str.1463
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !196
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !199
  tail call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str.14, i32 noundef 13926, ptr noundef nonnull @.str.1461, ptr noundef nonnull %i.i, i32 noundef %i.g, i32 noundef %i.k, i32 noundef %.02533, i32 noundef %.02732, i32 noundef %i.m) #24
  %i.n = icmp eq i32 %.02732, 2
  %i.o = load i32, ptr %i.f, align 8, !tbaa !194  ; 3 uses
  br i1 %i.n, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %i.o, label %bb.h [
    i32 1, label %bb.d
    i32 0, label %.sink.split
  ]

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr %i.j, align 4, !tbaa !196
  %i.q = icmp eq i32 %.02533, %i.p
  %i.r = icmp eq i32 %.02732, 0
  %or.cond = select i1 %i.q, i1 %i.r, i1 false
  br i1 %or.cond, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %i.l, align 4, !tbaa !199
  %i.t = icmp eq i32 %.034, %i.s
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str.14, i32 noundef 13953, ptr noundef nonnull @.str.1464) #24
  %.pre = load i32, ptr %i.f, align 8, !tbaa !194
  br label %.sink.split

bb.g:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.14, i32 noundef 13955, ptr noundef nonnull @.str.1465) #24
  br label %.loopexit

bb.h:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.14, i32 noundef 13966, ptr noundef nonnull @.str.1466) #24
  br label %.loopexit

.sink.split:                                      ; preds = %bb.c, %bb.f, %bb.d, %bb.b
  %.128.ph = phi i32 [ %i.o, %bb.b ], [ 1, %bb.d ], [ %.pre, %bb.f ], [ %i.o, %bb.c ]
  %.126.ph = load i32, ptr %i.j, align 4, !tbaa !196
  %i.u = load i32, ptr %i.l, align 4, !tbaa !199
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %.lr.ph
  %.128 = phi i32 [ %.02732, %.lr.ph ], [ %.128.ph, %.sink.split ]
  %.126 = phi i32 [ %.02533, %.lr.ph ], [ %.126.ph, %.sink.split ]
  %.1 = phi i32 [ %.034, %.lr.ph ], [ %i.u, %.sink.split ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr @secret_history, i64 %indvars.iv.next
  %i.w = load i8, ptr %i.v, align 8, !tbaa !197
  %i.x = icmp eq i8 %i.w, 1
  br i1 %i.x, label %.lr.ph, label %.loopexit, !llvm.loop !200

.loopexit:                                        ; preds = %bb.i, %bb.a, %bb.h, %bb.g
  %.029 = phi i32 [ 0, %bb.h ], [ 0, %bb.g ], [ 1, %bb.a ], [ 1, %bb.i ]
  ret i32 %.029
}

declare ptr @SSL_get_ex_data(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @SSL_set_quic_tls_early_data_enabled(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @SSL_set_msg_callback(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define internal void @assert_no_end_of_early_data(i32 %0, i32 %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 %4, ptr nofree readnone captures(none) %5, ptr nofree readnone captures(none) %6) #20 {
bb.a:
  %i.a = icmp eq i32 %2, 22
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %3, align 1, !tbaa !29
  %i.c = icmp eq i8 %i.b, 5
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i1 true, ptr @end_of_early_data, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

declare void @SSL_trace(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #3

declare i32 @compare_with_reference_file(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @BIO_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
