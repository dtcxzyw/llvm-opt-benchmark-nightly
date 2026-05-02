inline.NumInlined: 22
inline.NumDeleted: 1
begin_hunk_0_@mbedtls_camellia_setkey_enc:bb.a
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 88 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(272) %i.b, i8 0, i64 272, i1 false)
  switch i32 %2, label %.loopexit [
end_hunk_0
begin_hunk_1_@mbedtls_camellia_setkey_enc:bb.a

.lr.ph.preheader:                                 ; preds = %bb.b, %.thread
  %i.e = phi i64 [ 16, %.thread ], [ %i.d, %bb.b ]
  %.0150448 = phi i32 [ 0, %.thread ], [ 1, %bb.b ] ; 4 uses
  %.not160.1.not446 = phi i1 [ true, %.thread ], [ false, %bb.b ] ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %1, i64 %i.e, i1 false), !tbaa !10
  %i.f = icmp eq i32 %2, 192
end_hunk_1
begin_hunk_2_@mbedtls_camellia_setkey_enc:bb.a
  %i.qh = tail call i32 @llvm.fshl.i32(i32 %i.i, i32 %i.j, i32 28) ; 3 uses
  %i.qi = tail call i32 @llvm.fshl.i32(i32 %i.j, i32 %i.k, i32 28) ; 3 uses
  %i.qj = tail call i32 @llvm.fshl.i32(i32 %i.k, i32 %i.h, i32 28) ; 3 uses
  %i.qk = getelementptr inbounds nuw [80 x i8], ptr @indexes, i64 %i.pt ; 66 uses
  %i.ql = load i8, ptr %i.qk, align 16, !tbaa !10
  %i.qm = sext i8 %i.ql to i64
  %i.qn = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.qm
end_hunk_2
begin_hunk_3_@mbedtls_camellia_setkey_enc:bb.a
  %i.tr = tail call i32 @llvm.fshl.i32(i32 %i.m, i32 %i.n, i32 30)
  %i.ts = tail call i32 @llvm.fshl.i32(i32 %i.n, i32 %i.o, i32 30)
  %i.tt = tail call i32 @llvm.fshl.i32(i32 %i.o, i32 %i.l, i32 30)
  %3 = trunc nuw i32 %.0150448 to i1              ; 0 uses
  %i.tu = tail call i32 @llvm.fshl.i32(i32 %i.l, i32 %i.m, i32 28) ; 2 uses
  %i.tv = tail call i32 @llvm.fshl.i32(i32 %i.m, i32 %i.n, i32 28) ; 2 uses
  %i.tw = tail call i32 @llvm.fshl.i32(i32 %i.n, i32 %i.o, i32 28) ; 2 uses
end_hunk_3
begin_hunk_4_@mbedtls_camellia_setkey_enc:bb.a
  %i.ye = sext i8 %i.yd to i64
  %i.yf = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ye
  store i32 %i.wb, ptr %i.yf, align 4, !tbaa !4
  br i1 %.not160.1.not446, label %.thread1502.sink.split.sink.split, label %.thread710

.thread1502.sink.split.sink.split:                ; preds = %bb.i
  %4 = getelementptr inbounds nuw i8, ptr %i.qk, i64 53
  %.sink1554 = load i8, ptr %4, align 1, !tbaa !10
  %5 = sext i8 %.sink1554 to i64
  %6 = getelementptr inbounds [4 x i8], ptr %i.b, i64 %5
  store i32 %i.wd, ptr %6, align 4, !tbaa !4
  %7 = getelementptr inbounds nuw i8, ptr %i.qk, i64 54
  %8 = load i8, ptr %7, align 1, !tbaa !10
  %9 = sext i8 %8 to i64
  %10 = getelementptr inbounds [4 x i8], ptr %i.b, i64 %9
  store i32 %i.we, ptr %10, align 4, !tbaa !4
  br label %.thread991.sink.split

.thread710:                                       ; preds = %bb.i
  %i.yg = getelementptr inbounds nuw i8, ptr %i.qk, i64 52
end_hunk_4
begin_hunk_5_@mbedtls_camellia_setkey_enc:bb.a
  %i.zb = tail call i32 @llvm.fshl.i32(i32 %.sroa.73.0, i32 %.sroa.77.0, i32 30)
  %i.zc = tail call i32 @llvm.fshl.i32(i32 %.sroa.77.0, i32 %.sroa.81.0, i32 30)
  %i.zd = tail call i32 @llvm.fshl.i32(i32 %.sroa.81.0, i32 %.sroa.69.0, i32 30)
  %11 = trunc nuw i32 %.0150448 to i1             ; 0 uses
  %i.ze = tail call i32 @llvm.fshl.i32(i32 %.sroa.69.0, i32 %.sroa.73.0, i32 28)
  %i.zf = tail call i32 @llvm.fshl.i32(i32 %.sroa.73.0, i32 %.sroa.77.0, i32 28)
  %i.zg = tail call i32 @llvm.fshl.i32(i32 %.sroa.77.0, i32 %.sroa.81.0, i32 28)
end_hunk_5
begin_hunk_6_@mbedtls_camellia_setkey_enc:bb.a
  %i.aar = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aaq
  store i32 %i.za, ptr %i.aar, align 4, !tbaa !4
  %i.aas = getelementptr inbounds nuw i8, ptr %i.qk, i64 69
  %12 = load i8, ptr %i.aas, align 1, !tbaa !10
  %13 = sext i8 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr %i.b, i64 %13
  store i32 %i.zb, ptr %14, align 4, !tbaa !4
  %15 = getelementptr inbounds nuw i8, ptr %i.qk, i64 70
  %16 = load i8, ptr %15, align 2, !tbaa !10
  %17 = sext i8 %16 to i64
  %18 = getelementptr inbounds [4 x i8], ptr %i.b, i64 %17
  store i32 %i.zc, ptr %18, align 4, !tbaa !4
  %19 = getelementptr inbounds nuw i8, ptr %i.qk, i64 71
  %i.aat = load i8, ptr %19, align 1, !tbaa !10
  %i.aau = sext i8 %i.aat to i64
  %i.aav = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aau
  store i32 %i.zd, ptr %i.aav, align 4, !tbaa !4
  br label %.thread991.sink.split

.thread991.sink.split:                            ; preds = %.thread711, %.thread1502.sink.split.sink.split
  %.sink1027 = phi i64 [ 76, %.thread711 ], [ 56, %.thread1502.sink.split.sink.split ]
  %.sroa.130.3664671690697.sink = phi i32 [ %i.ze, %.thread711 ], [ %.sroa.130.3664671690697, %.thread1502.sink.split.sink.split ]
  %.sink1022 = phi i64 [ 77, %.thread711 ], [ 57, %.thread1502.sink.split.sink.split ]
  %.sroa.138.3662673688699.sink = phi i32 [ %i.zf, %.thread711 ], [ %.sroa.138.3662673688699, %.thread1502.sink.split.sink.split ]
  %.sink1017 = phi i64 [ 78, %.thread711 ], [ 58, %.thread1502.sink.split.sink.split ]
  %.sroa.146.3660675686701.sink = phi i32 [ %i.zg, %.thread711 ], [ %.sroa.146.3660675686701, %.thread1502.sink.split.sink.split ]
  %.sink1012 = phi i64 [ 79, %.thread711 ], [ 59, %.thread1502.sink.split.sink.split ]
  %.sroa.154.3658677684703.sink = phi i32 [ %i.zh, %.thread711 ], [ %.sroa.154.3658677684703, %.thread1502.sink.split.sink.split ]
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.qk, i64 %.sink1027
  %i.aax = load i8, ptr %i.aaw, align 1, !tbaa !10
  %i.aay = sext i8 %i.aax to i64
  %i.aaz = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aay
  store i32 %.sroa.130.3664671690697.sink, ptr %i.aaz, align 4, !tbaa !4
end_hunk_6
begin_hunk_7_@mbedtls_camellia_setkey_enc:bb.a
  %i.abd = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.abc
  store i32 %.sroa.138.3662673688699.sink, ptr %i.abd, align 4, !tbaa !4
  %i.abe = getelementptr inbounds nuw i8, ptr %i.qk, i64 %.sink1017
  %i.abf = load i8, ptr %i.abe, align 1, !tbaa !10
  %i.abg = sext i8 %i.abf to i64
  %i.abh = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.abg
  store i32 %.sroa.146.3660675686701.sink, ptr %i.abh, align 4, !tbaa !4
end_hunk_7
