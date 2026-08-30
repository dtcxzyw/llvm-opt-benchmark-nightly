Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/test_tls13?download=true
begin_hunk_0_@test_tls13_serverhello_bad_cipher_suites:bb.a
  %i.ku = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.kt) ; 0 uses
  %i.kv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.120) ; 0 uses
  %i.kw = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.kx = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.kw) ; 0 uses
  %i.ky = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.kq, i32 noundef 2) ; 0 uses
  %i.kz = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.la = call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %i.kz) ; 0 uses
  %i.lb = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.lc = call i32 @fflush(ptr noundef %i.lb)     ; 0 uses
  br label %.critedge919

bb.o:                                             ; preds = %.critedge915
  %i.ld = load i8, ptr %i.hh, align 1, !tbaa !69  ; 3 uses
  %i.le = zext i8 %i.ld to i32                    ; 2 uses
  %i.lf = add nuw nsw i32 %i.le, 44               ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 65536
  %i.lh = load i32, ptr %i.lg, align 8, !tbaa !79 ; 2 uses
  %i.li = add nuw nsw i32 %i.le, 45               ; 2 uses
  %i.lj = icmp sgt i32 %i.lh, %i.li
  br i1 %i.lj, label %.critedge922, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.lk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6364) ; 0 uses
  %i.ll = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.lm = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.ll) ; 0 uses
  %i.ln = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.146, ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.192) ; 0 uses
  %i.lo = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.lp = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.lo) ; 0 uses
  %i.lq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.148, i32 noundef %i.lh, i32 noundef %i.li) ; 0 uses
  %i.lr = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.ls = call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %i.lr) ; 0 uses
  %i.lt = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.lu = call i32 @fflush(ptr noundef %i.lt)     ; 0 uses
  %i.lv = zext nneg i32 %i.lf to i64
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 %i.lv
  store i8 19, ptr %i.lw, align 1, !tbaa !69
  %i.lx = zext i8 %i.ld to i64
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 %i.lx
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 45
  store i8 2, ptr %i.lz, align 1, !tbaa !69
  br label %.critedge919

.critedge922:                                     ; preds = %bb.o
  %i.ma = zext nneg i32 %i.lf to i64
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ma
  store i8 19, ptr %i.mb, align 1, !tbaa !69
  %i.mc = zext i8 %i.ld to i64
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 %i.mc
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 45
  store i8 2, ptr %i.me, align 1, !tbaa !69
  %i.mf = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.mg = call i32 @wolfSSL_connect(ptr noundef %i.mf) #11
  %.not877.not = icmp eq i32 %i.mg, 1
  br i1 %.not877.not, label %.critedge918, label %.critedge920

.critedge918:                                     ; preds = %.critedge922
  %i.mh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6369) ; 0 uses
  %i.mi = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.mj = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.mi) ; 0 uses
  %i.mk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.164, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.15) ; 0 uses
  %i.ml = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.mm = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.ml) ; 0 uses
  %i.mn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.165, i32 noundef 1, i32 noundef 1) ; 0 uses
  %i.mo = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.mp = call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %i.mo) ; 0 uses
  %i.mq = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.mr = call i32 @fflush(ptr noundef %i.mq)     ; 0 uses
  br label %.critedge919

.critedge920:                                     ; preds = %.critedge922
  %i.ms = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.mt = call i32 @wolfSSL_get_error(ptr noundef %i.ms, i32 noundef -1) #11 ; 2 uses
  %i.mu = icmp eq i32 %i.mt, -425
  br i1 %i.mu, label %.critedge919, label %bb.q

bb.q:                                             ; preds = %.critedge920
  %i.mv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6371) ; 0 uses
  %i.mw = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.mx = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.mw) ; 0 uses
  %i.my = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.195) ; 0 uses
  %i.mz = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.na = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.mz) ; 0 uses
  %i.nb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.mt, i32 noundef -425) ; 0 uses
  %i.nc = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.nd = call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %i.nc) ; 0 uses
  %i.ne = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.nf = call i32 @fflush(ptr noundef %i.ne)     ; 0 uses
  br label %.critedge919

.critedge919:                                     ; preds = %.critedge900, %bb.n, %.critedge903, %.critedge906, %.critedge908, %.critedge910, %.critedge912, %.critedge914, %bb.p, %.critedge918, %.critedge920, %bb.q
  %.48 = phi i32 [ 1, %.critedge920 ], [ 0, %.critedge918 ], [ 0, %bb.q ], [ 0, %.critedge914 ], [ 0, %bb.p ], [ 0, %.critedge912 ], [ 0, %.critedge910 ], [ 0, %.critedge908 ], [ 0, %.critedge906 ], [ 0, %.critedge903 ], [ 0, %bb.n ], [ 0, %.critedge900 ]
  %i.ng = load ptr, ptr %i.c, align 8, !tbaa !64
  call void @wolfSSL_free(ptr noundef %i.ng) #11
  %i.nh = load ptr, ptr %i.a, align 8, !tbaa !63
  call void @wolfSSL_CTX_free(ptr noundef %i.nh) #11
  %i.ni = load ptr, ptr %i.d, align 8, !tbaa !64
  call void @wolfSSL_free(ptr noundef %i.ni) #11
  %i.nj = load ptr, ptr %i.b, align 8, !tbaa !63
  call void @wolfSSL_CTX_free(ptr noundef %i.nj) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.48
}

declare i32 @wolfSSL_set_cipher_list(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @test_tls13_ticket_peer_cert_reverify() local_unnamed_addr #4 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @test_tls13_clear_preserves_psk_dhe() local_unnamed_addr #4 {
bb.a:
  ret i32 3
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @test_tls13_cipher_fuzz_aes128_gcm_sha256() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.WC_RNG, align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %i.a = call i32 @wc_InitRng(ptr noundef nonnull %0) #11 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.critedge82, label %bb.c

.critedge82:                                      ; preds = %bb.a
  %i.b = call fastcc i32 @test_tls13_cipher_fuzz_cs(ptr noundef %0, ptr noundef nonnull @.str.189)
  %.not86 = icmp eq i32 %i.b, 0
  br i1 %.not86, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.critedge82
  %i.c = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6695) ; 0 uses
  %i.d = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.e = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.d) ; 0 uses
  %i.f = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.197, ptr noundef nonnull @.str.81) ; 0 uses
  %i.g = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.h = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.g) ; 0 uses
  %i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.j = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.k = call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %i.j) ; 0 uses
  %i.l = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.m = call i32 @fflush(ptr noundef %i.l)       ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6690) ; 0 uses
  %i.o = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.p = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.o) ; 0 uses
  %i.q = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.29) ; 0 uses
  %i.r = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.s = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.r) ; 0 uses
  %i.t = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.a, i32 noundef 0) ; 0 uses
  %i.u = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.v = call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %i.u) ; 0 uses
  %i.w = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.x = call i32 @fflush(ptr noundef %i.w)       ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %.critedge82, %bb.b
  %.3.ph = phi i32 [ 1, %.critedge82 ], [ 0, %bb.b ]
  %i.y = call i32 @wc_FreeRng(ptr noundef nonnull %0) #11 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.384 = phi i32 [ %.3.ph, %bb.d ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #11
  ret i32 %.384
}

declare i32 @wc_InitRng(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @test_tls13_cipher_fuzz_cs(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 12 uses
  %i.d = alloca ptr, align 8                      ; 11 uses
  %2 = alloca %struct.test_memio_ctx, align 8     ; 11 uses
  %i.e = alloca i8, align 1                       ; 6 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %.sink769.i.sroa.gep = getelementptr inbounds nuw i8, ptr %2, i64 131088
  %.sink769.i.sroa.gep79 = getelementptr inbounds nuw i8, ptr %2, i64 65536
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 65544
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 131096
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 65552
  br label %.critedge5.preheader

.critedge5.preheader:                             ; preds = %bb.a, %.critedge11
  %.0103 = phi i32 [ 3, %bb.a ], [ 1, %.critedge11 ]
  %.not675710.i = phi i1 [ true, %bb.a ], [ false, %.critedge11 ] ; 3 uses
  %.075102 = phi i32 [ 0, %bb.a ], [ 1, %.critedge11 ]
  br label %bb.b

bb.b:                                             ; preds = %.critedge5.preheader, %.critedge5
  %.1101 = phi i32 [ %.0103, %.critedge5.preheader ], [ %.2, %.critedge5 ] ; 2 uses
  %.076100 = phi i32 [ 0, %.critedge5.preheader ], [ %i.hf, %.critedge5 ] ; 2 uses
  %i.j = add nsw i32 %.1101, -1
  %i.k = icmp ult i32 %i.j, 3
  br i1 %i.k, label %.critedge13, label %.critedge

.critedge13:                                      ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store ptr null, ptr %i.b, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store ptr null, ptr %i.c, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store ptr null, ptr %i.d, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(131384) %2, i8 0, i64 131384, i1 false)
  store ptr %1, ptr %i.g, align 8, !tbaa !85
  store ptr %1, ptr %i.h, align 8, !tbaa !86
  %i.l = call i32 @test_memio_setup(ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull @wolfTLSv1_3_client_method, ptr noundef nonnull @wolfTLSv1_3_server_method) #11 ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.critedge679.i, label %bb.c

bb.c:                                             ; preds = %.critedge13
  %i.n = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6555) ; 0 uses
  %i.o = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.p = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.o) ; 0 uses
  %i.q = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.29) ; 0 uses
  %i.r = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.s = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.r) ; 0 uses
  %i.t = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.l, i32 noundef 0) ; 0 uses
  br label %test_tls13_cipher_fuzz_once.exit.sink.split

.critedge679.i:                                   ; preds = %.critedge13
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.v = call i32 @wolfSSL_connect(ptr noundef %i.u) #11
  %.not.not.i = icmp eq i32 %i.v, 1
  br i1 %.not.not.i, label %bb.d, label %.critedge683.i

bb.d:                                             ; preds = %.critedge679.i
  %i.w = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6564) ; 0 uses
  %i.x = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.y = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.x) ; 0 uses
  %i.z = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.164, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.15) ; 0 uses
  %i.aa = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.ab = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.aa) ; 0 uses
  %i.ac = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.165, i32 noundef 1, i32 noundef 1) ; 0 uses
  br label %test_tls13_cipher_fuzz_once.exit.sink.split

.critedge683.i:                                   ; preds = %.critedge679.i
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.ae = call i32 @wolfSSL_get_error(ptr noundef %i.ad, i32 noundef -1) #11 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 2
  br i1 %i.af, label %.critedge685.i, label %.critedge681.i

.critedge681.i:                                   ; preds = %.critedge683.i
  %i.ag = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6565) ; 0 uses
  %i.ah = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.ai = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.ah) ; 0 uses
  %i.aj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.120) ; 0 uses
  %i.ak = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.al = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.ak) ; 0 uses
  %i.am = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.ae, i32 noundef 2) ; 0 uses
  br label %test_tls13_cipher_fuzz_once.exit.sink.split

.critedge685.i:                                   ; preds = %.critedge683.i
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.ao = call i32 @wolfSSL_accept(ptr noundef %i.an) #11
  %.not671.not.i = icmp eq i32 %i.ao, 1
  br i1 %.not671.not.i, label %.critedge684.i, label %.critedge687.i

.critedge684.i:                                   ; preds = %.critedge685.i
  %i.ap = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6566) ; 0 uses
  %i.aq = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.ar = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.aq) ; 0 uses
  %i.as = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.164, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.15) ; 0 uses
  %i.at = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.au = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.at) ; 0 uses
  %i.av = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.165, i32 noundef 1, i32 noundef 1) ; 0 uses
  br label %test_tls13_cipher_fuzz_once.exit.sink.split

.critedge687.i:                                   ; preds = %.critedge685.i
  %i.aw = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.ax = call i32 @wolfSSL_get_error(ptr noundef %i.aw, i32 noundef -1) #11 ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 2
  br i1 %i.ay, label %.critedge686.i, label %bb.e

bb.e:                                             ; preds = %.critedge687.i
  %i.az = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6567) ; 0 uses
  %i.ba = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.bb = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.ba) ; 0 uses
  %i.bc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.120) ; 0 uses
  %i.bd = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.be = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.bd) ; 0 uses
  %i.bf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.ax, i32 noundef 2) ; 0 uses
  br label %test_tls13_cipher_fuzz_once.exit.sink.split

.critedge686.i:                                   ; preds = %.critedge687.i
  %i.bg = call i32 @test_memio_msg_is_hello_retry_request(ptr noundef nonnull %2) #11
  %.not672.i = icmp eq i32 %i.bg, 0
  br i1 %.not672.i, label %.critedge694.thread752.i, label %bb.f

bb.f:                                             ; preds = %.critedge686.i
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.bi = call i32 @wolfSSL_connect(ptr noundef %i.bh) #11
  %.not673.not.i = icmp eq i32 %i.bi, 1
  br i1 %.not673.not.i, label %bb.g, label %.critedge689.i

bb.g:                                             ; preds = %bb.f
  %i.bj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6573) ; 0 uses
  %i.bk = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.bl = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.bk) ; 0 uses
  %i.bm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.164, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.15) ; 0 uses
  %i.bn = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.bo = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.bn) ; 0 uses
  %i.bp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.165, i32 noundef 1, i32 noundef 1) ; 0 uses
  br label %test_tls13_cipher_fuzz_once.exit.sink.split

.critedge689.i:                                   ; preds = %bb.f
  %i.bq = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.br = call i32 @wolfSSL_get_error(ptr noundef %i.bq, i32 noundef -1) #11 ; 2 uses
  %i.bs = icmp eq i32 %i.br, 2
  br i1 %i.bs, label %.critedge693.i, label %bb.h

bb.h:                                             ; preds = %.critedge689.i
  %i.bt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6574) ; 0 uses
  %i.bu = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.bv = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.bu) ; 0 uses
  %i.bw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.120) ; 0 uses
  %i.bx = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.by = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.bx) ; 0 uses
  %i.bz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.br, i32 noundef 2) ; 0 uses
  br label %test_tls13_cipher_fuzz_once.exit.sink.split

.critedge693.i:                                   ; preds = %.critedge689.i
  %i.ca = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.cb = call i32 @wolfSSL_accept(ptr noundef %i.ca) #11
  %.not674.not.i = icmp eq i32 %i.cb, 1
  br i1 %.not674.not.i, label %.critedge691.i, label %.critedge695.i

.critedge691.i:                                   ; preds = %.critedge693.i
  %i.cc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6575) ; 0 uses
  %i.cd = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.ce = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.cd) ; 0 uses
  %i.cf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.164, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.15) ; 0 uses
  %i.cg = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.ch = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.cg) ; 0 uses
  %i.ci = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.165, i32 noundef 1, i32 noundef 1) ; 0 uses
  br label %test_tls13_cipher_fuzz_once.exit.sink.split

.critedge695.i:                                   ; preds = %.critedge693.i
  %i.cj = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.ck = call i32 @wolfSSL_get_error(ptr noundef %i.cj, i32 noundef -1) #11 ; 2 uses
  %i.cl = icmp eq i32 %i.ck, 2
  br i1 %i.cl, label %.critedge694.thread.i, label %bb.i

bb.i:                                             ; preds = %.critedge695.i
  %i.cm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6576) ; 0 uses
  %i.cn = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.co = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.cn) ; 0 uses
  %i.cp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.120) ; 0 uses
  %i.cq = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.cr = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.cq) ; 0 uses
  %i.cs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.ck, i32 noundef 2) ; 0 uses
  br label %test_tls13_cipher_fuzz_once.exit.sink.split

.critedge694.thread752.i:                         ; preds = %.critedge686.i
  br i1 %.not675710.i, label %.thread, label %.thread.i

.critedge694.thread.i:                            ; preds = %.critedge695.i
  br i1 %.not675710.i, label %.thread, label %.thread.i

.thread.i:                                        ; preds = %.critedge694.thread.i, %.critedge694.thread752.i
  %i.ct = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.cu = call i32 @wolfSSL_connect(ptr noundef %i.ct) #11 ; 2 uses
  %i.cv = icmp eq i32 %i.cu, 1
  br i1 %i.cv, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.thread.i
  %i.cw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6579) ; 0 uses
  %i.cx = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.cy = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.cx) ; 0 uses
  %i.cz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.15) ; 0 uses
  %i.da = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.db = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.da) ; 0 uses
  %i.dc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.cu, i32 noundef 1) ; 0 uses
  br label %test_tls13_cipher_fuzz_once.exit.sink.split

.thread:                                          ; preds = %.critedge694.thread752.i, %.critedge694.thread.i
  %i.dd = load i32, ptr %.sink769.i.sroa.gep79, align 8, !tbaa !62
  br label %.preheader.i

bb.k:                                             ; preds = %.thread.i
  %i.de = load i32, ptr %.sink769.i.sroa.gep, align 8, !tbaa !62
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.k, %.thread
  %i.df = phi i32 [ %i.dd, %.thread ], [ %i.de, %bb.k ] ; 4 uses
  %.0642.i87 = phi ptr [ %2, %.thread ], [ %i.i, %bb.k ] ; 2 uses
  %.not675713.i86 = phi i1 [ true, %.thread ], [ false, %bb.k ]
  %.not676732.i = icmp slt i32 %i.df, 5
  br i1 %.not676732.i, label %.thread720.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.l
  %.0655733.i = phi i32 [ %i.dt, %bb.l ], [ 0, %.preheader.i ] ; 2 uses
  %i.dg = zext nneg i32 %.0655733.i to i64
  %i.dh = getelementptr i8, ptr %.0642.i87, i64 %i.dg ; 3 uses
  %i.di = getelementptr i8, ptr %i.dh, i64 3
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !69
  %i.dk = zext i8 %i.dj to i32
  %i.dl = shl nuw nsw i32 %i.dk, 8
  %i.dm = getelementptr i8, ptr %i.dh, i64 4
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !69
  %i.do = zext i8 %i.dn to i32
  %i.dp = or disjoint i32 %i.dl, %i.do            ; 4 uses
  %i.dq = load i8, ptr %i.dh, align 1, !tbaa !69
  %i.dr = icmp eq i8 %i.dq, 23
  %i.ds = add nsw i32 %.0655733.i, 5              ; 3 uses
  br i1 %i.dr, label %.thread720.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.dt = add nuw nsw i32 %i.ds, %i.dp            ; 2 uses
  %i.du = add nuw nsw i32 %i.dt, 5
  %.not676.i = icmp sgt i32 %i.du, %i.df
  br i1 %.not676.i, label %.thread720.thread.i, label %.lr.ph.i

.thread720.i:                                     ; preds = %.lr.ph.i
  %.not.i = icmp eq i32 %i.dp, 0
  br i1 %.not.i, label %.thread720.thread.i, label %.critedge699.i

.thread720.thread.i:                              ; preds = %bb.l, %.thread720.i, %.preheader.i
  %i.dv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6605) ; 0 uses
  %i.dw = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.dx = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.dw) ; 0 uses
  %i.dy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.146, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.29) ; 0 uses
  %i.dz = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.ea = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.dz) ; 0 uses
  %i.eb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.148, i32 noundef 0, i32 noundef 0) ; 0 uses
  br label %test_tls13_cipher_fuzz_once.exit.sink.split

.critedge699.i:                                   ; preds = %.thread720.i
  %i.ec = add nsw i32 %i.dp, %i.ds                ; 2 uses
  %.not677.not.i = icmp sgt i32 %i.ec, %i.df
  br i1 %.not677.not.i, label %.critedge697.i, label %.critedge701.i

.critedge697.i:                                   ; preds = %.critedge699.i
  %i.ed = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6606) ; 0 uses
  %i.ee = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.ef = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.ee) ; 0 uses
  %i.eg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.149, ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.216) ; 0 uses
  %i.eh = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.ei = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.eh) ; 0 uses
  %i.ej = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.151, i32 noundef %i.ec, i32 noundef %i.df) ; 0 uses
  br label %test_tls13_cipher_fuzz_once.exit.sink.split

.critedge701.i:                                   ; preds = %.critedge699.i
  store i32 0, ptr %i.f, align 4, !tbaa !62
  %i.ek = call i32 @wc_RNG_GenerateBlock(ptr noundef nonnull %0, ptr noundef nonnull %i.f, i32 noundef 4) #11 ; 2 uses
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.m, label %.critedge700.loopexit.i

bb.m:                                             ; preds = %.critedge701.i
  %i.em = load i32, ptr %i.f, align 4, !tbaa !62
  %i.en = urem i32 %i.em, %i.dp
  %i.eo = add nsw i32 %i.en, %i.ds
  %i.ep = sext i32 %i.eo to i64
  %i.eq = call i32 @wc_RNG_GenerateByte(ptr noundef nonnull %0, ptr noundef nonnull %i.e) #11 ; 2 uses
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %bb.m
  %i.es = load i8, ptr %i.e, align 1              ; 2 uses
  %i.et = icmp eq i8 %i.es, 0
  br i1 %i.et, label %.peel.next.i, label %.critedge704.i

.peel.next.i:                                     ; preds = %bb.n, %bb.o
  %i.eu = call i32 @wc_RNG_GenerateByte(ptr noundef nonnull %0, ptr noundef nonnull %i.e) #11 ; 2 uses
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %bb.o, label %.loopexit.i

.loopexit.i:                                      ; preds = %.peel.next.i, %bb.m
  %.lcssa.i = phi i32 [ %i.eq, %bb.m ], [ %i.eu, %.peel.next.i ]
  %i.ew = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6620) ; 0 uses
  %i.ex = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.ey = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.ex) ; 0 uses
  %i.ez = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.29) ; 0 uses
  %i.fa = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.fb = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.fa) ; 0 uses
  %i.fc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %.lcssa.i, i32 noundef 0) ; 0 uses
  br label %test_tls13_cipher_fuzz_once.exit.sink.split

bb.o:                                             ; preds = %.peel.next.i
  %i.fd = load i8, ptr %i.e, align 1              ; 2 uses
  %i.fe = icmp eq i8 %i.fd, 0
  br i1 %i.fe, label %.peel.next.i, label %.critedge704.i, !llvm.loop !87

.critedge704.i:                                   ; preds = %bb.o, %bb.n
  %.lcssa739.i = phi i8 [ %i.es, %bb.n ], [ %i.fd, %bb.o ]
  %i.ff = getelementptr inbounds i8, ptr %.0642.i87, i64 %i.ep ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !69
  %i.fh = xor i8 %i.fg, %.lcssa739.i
  store i8 %i.fh, ptr %i.ff, align 1, !tbaa !69
  br i1 %.not675713.i86, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.critedge704.i
  %i.fi = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.fj = call i32 @wolfSSL_accept(ptr noundef %i.fi) #11
  br label %bb.r

bb.q:                                             ; preds = %.critedge704.i
  %i.fk = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.fl = call i32 @wolfSSL_connect(ptr noundef %i.fk) #11
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sink771.i = phi ptr [ %i.d, %bb.p ], [ %i.c, %bb.q ]
  %.sink770.i = phi i32 [ %i.fj, %bb.p ], [ %i.fl, %bb.q ] ; 3 uses
  %i.fm = load ptr, ptr %.sink771.i, align 8, !tbaa !64
  %i.fn = call i32 @wolfSSL_get_error(ptr noundef %i.fm, i32 noundef %.sink770.i) #11
  %i.fo = icmp eq i32 %.sink770.i, -1
  br i1 %i.fo, label %.critedge706.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6638) ; 0 uses
  %i.fq = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.fr = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.fq) ; 0 uses
  %i.fs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.168) ; 0 uses
  %i.ft = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.fu = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.ft) ; 0 uses
  %i.fv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %.sink770.i, i32 noundef -1) ; 0 uses
  br label %test_tls13_cipher_fuzz_once.exit.sink.split

.critedge706.i:                                   ; preds = %bb.r
  switch i32 %i.fn, label %bb.t [
    i32 -180, label %test_tls13_cipher_fuzz_once.exit
    i32 -181, label %test_tls13_cipher_fuzz_once.exit
    i32 -305, label %test_tls13_cipher_fuzz_once.exit
  ]

bb.t:                                             ; preds = %.critedge706.i
  %i.fw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6641) ; 0 uses
  %i.fx = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.fy = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.fx) ; 0 uses
  %i.fz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.92, ptr noundef nonnull @.str.219) ; 0 uses
  %i.ga = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.gb = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.ga) ; 0 uses
  %i.gc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.220) ; 0 uses
  br label %test_tls13_cipher_fuzz_once.exit.sink.split

.critedge700.loopexit.i:                          ; preds = %.critedge701.i
  %i.gd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6615) ; 0 uses
  %i.ge = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.gf = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.ge) ; 0 uses
  %i.gg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.29) ; 0 uses
  %i.gh = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.gi = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.gh) ; 0 uses
  %i.gj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.ek, i32 noundef 0) ; 0 uses
  br label %test_tls13_cipher_fuzz_once.exit.sink.split

test_tls13_cipher_fuzz_once.exit.sink.split:      ; preds = %.thread720.thread.i, %.critedge697.i, %.loopexit.i, %bb.s, %bb.t, %.critedge700.loopexit.i, %bb.c, %bb.d, %.critedge681.i, %.critedge684.i, %bb.e, %bb.g, %bb.h, %.critedge691.i, %bb.i, %bb.j
  %i.gk = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.gl = call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %i.gk) ; 0 uses
  %i.gm = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.gn = call i32 @fflush(ptr noundef %i.gm)     ; 0 uses
  br label %test_tls13_cipher_fuzz_once.exit

test_tls13_cipher_fuzz_once.exit:                 ; preds = %test_tls13_cipher_fuzz_once.exit.sink.split, %.critedge706.i, %.critedge706.i, %.critedge706.i
  %cond = phi i1 [ false, %.critedge706.i ], [ false, %.critedge706.i ], [ false, %.critedge706.i ], [ true, %test_tls13_cipher_fuzz_once.exit.sink.split ]
  %i.go = load ptr, ptr %i.c, align 8, !tbaa !64
  call void @wolfSSL_free(ptr noundef %i.go) #11
  %i.gp = load ptr, ptr %i.a, align 8, !tbaa !63
  call void @wolfSSL_CTX_free(ptr noundef %i.gp) #11
  %i.gq = load ptr, ptr %i.d, align 8, !tbaa !64
  call void @wolfSSL_free(ptr noundef %i.gq) #11
  %i.gr = load ptr, ptr %i.b, align 8, !tbaa !63
  call void @wolfSSL_CTX_free(ptr noundef %i.gr) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br i1 %cond, label %bb.u, label %.critedge5

bb.u:                                             ; preds = %test_tls13_cipher_fuzz_once.exit
  %i.gs = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.gt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gs, ptr noundef nonnull @.str.212, ptr noundef %1, i32 noundef %.075102, i32 noundef %.076100) #14 ; 0 uses
  %i.gu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6665) ; 0 uses
  %i.gv = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.gw = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.gv) ; 0 uses
  %i.gx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.81) ; 0 uses
  %i.gy = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.gz = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.gy) ; 0 uses
  %i.ha = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.hb = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.hc = call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %i.hb) ; 0 uses
  %i.hd = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.he = call i32 @fflush(ptr noundef %i.hd)     ; 0 uses
  br label %.critedge5

.critedge5:                                       ; preds = %test_tls13_cipher_fuzz_once.exit, %bb.u
  %.2 = phi i32 [ 0, %bb.u ], [ 1, %test_tls13_cipher_fuzz_once.exit ] ; 3 uses
  %i.hf = add nuw nsw i32 %.076100, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.hf, 5
  br i1 %exitcond.not, label %.critedge11, label %bb.b, !llvm.loop !89

.critedge11:                                      ; preds = %.critedge5
  %.pre = add nsw i32 %.2, -1
  %i.hg = icmp ult i32 %.pre, 3
  %i.hh = and i1 %.not675710.i, %i.hg
  br i1 %i.hh, label %.critedge5.preheader, label %.critedge, !llvm.loop !90

.critedge:                                        ; preds = %.critedge11, %bb.b
  %.1.lcssa126 = phi i32 [ %.1101, %bb.b ], [ %.2, %.critedge11 ]
  ret i32 %.1.lcssa126
}

declare i32 @wc_FreeRng(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @test_tls13_cipher_fuzz_aes256_gcm_sha384() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.WC_RNG, align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %i.a = call i32 @wc_InitRng(ptr noundef nonnull %0) #11 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.critedge82, label %bb.c

.critedge82:                                      ; preds = %bb.a
  %i.b = call fastcc i32 @test_tls13_cipher_fuzz_cs(ptr noundef %0, ptr noundef nonnull @.str.198)
  %.not86 = icmp eq i32 %i.b, 0
  br i1 %.not86, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.critedge82
  %i.c = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6719) ; 0 uses
  %i.d = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.e = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.d) ; 0 uses
  %i.f = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.81) ; 0 uses
  %i.g = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.h = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.g) ; 0 uses
  %i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.j = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.k = call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %i.j) ; 0 uses
  %i.l = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.m = call i32 @fflush(ptr noundef %i.l)       ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6714) ; 0 uses
  %i.o = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.p = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.o) ; 0 uses
  %i.q = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.29) ; 0 uses
  %i.r = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.s = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.r) ; 0 uses
  %i.t = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.a, i32 noundef 0) ; 0 uses
  %i.u = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.v = call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %i.u) ; 0 uses
  %i.w = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.x = call i32 @fflush(ptr noundef %i.w)       ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %.critedge82, %bb.b
  %.3.ph = phi i32 [ 1, %.critedge82 ], [ 0, %bb.b ]
  %i.y = call i32 @wc_FreeRng(ptr noundef nonnull %0) #11 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.384 = phi i32 [ %.3.ph, %bb.d ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #11
  ret i32 %.384
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @test_tls13_cipher_fuzz_chacha20_poly1305_sha256() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.WC_RNG, align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %i.a = call i32 @wc_InitRng(ptr noundef nonnull %0) #11 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.critedge82, label %bb.c

.critedge82:                                      ; preds = %bb.a
  %i.b = call fastcc i32 @test_tls13_cipher_fuzz_cs(ptr noundef %0, ptr noundef nonnull @.str.200)
  %.not86 = icmp eq i32 %i.b, 0
  br i1 %.not86, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.critedge82
  %i.c = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6743) ; 0 uses
  %i.d = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.e = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.d) ; 0 uses
  %i.f = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.81) ; 0 uses
  %i.g = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.h = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.g) ; 0 uses
  %i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.j = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.k = call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %i.j) ; 0 uses
  %i.l = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.m = call i32 @fflush(ptr noundef %i.l)       ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6738) ; 0 uses
  %i.o = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.p = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.o) ; 0 uses
  %i.q = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.29) ; 0 uses
  %i.r = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.s = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.r) ; 0 uses
  %i.t = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.a, i32 noundef 0) ; 0 uses
  %i.u = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.v = call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %i.u) ; 0 uses
  %i.w = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.x = call i32 @fflush(ptr noundef %i.w)       ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %.critedge82, %bb.b
  %.3.ph = phi i32 [ 1, %.critedge82 ], [ 0, %bb.b ]
  %i.y = call i32 @wc_FreeRng(ptr noundef nonnull %0) #11 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.384 = phi i32 [ %.3.ph, %bb.d ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #11
  ret i32 %.384
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @test_tls13_cipher_fuzz_aes128_ccm_sha256() local_unnamed_addr #4 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @test_tls13_cipher_fuzz_aes128_ccm_8_sha256() local_unnamed_addr #4 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @test_tls13_AEAD_limit_macros() local_unnamed_addr #4 {
bb.a:
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @test_tls13_AEAD_limit_KU_aes128_gcm_sha256() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @test_tls13_AEAD_limit_triggers_KeyUpdate_cs(ptr noundef nonnull @.str.189)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6964) ; 0 uses
  %i.c = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.d = tail call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.c) ; 0 uses
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.205, ptr noundef nonnull @.str.81) ; 0 uses
  %i.f = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.g = tail call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.f) ; 0 uses
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.j = tail call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %i.i) ; 0 uses
  %i.k = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.l = tail call i32 @fflush(ptr noundef %i.k)  ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @test_tls13_AEAD_limit_triggers_KeyUpdate_cs(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.test_memio_ctx, align 8     ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 14 uses
  %i.d = alloca ptr, align 8                      ; 19 uses
  %i.e = alloca [18 x i8], align 16               ; 11 uses
  %i.f = alloca [18 x i8], align 16               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store ptr null, ptr %i.b, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store ptr null, ptr %i.c, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store ptr null, ptr %i.d, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(18) %i.e, ptr noundef nonnull align 16 dereferenceable(18) @__const.test_tls13_AEAD_limit_triggers_KeyUpdate_cs.msg, i64 18, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(131384) %1, i8 0, i64 131384, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 65544
  store ptr %0, ptr %i.g, align 8, !tbaa !85
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 131096
  store ptr %0, ptr %i.h, align 8, !tbaa !86
  %i.i = call i32 @test_memio_setup(ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull @wolfTLSv1_3_client_method, ptr noundef nonnull @wolfTLSv1_3_server_method) #11 ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.critedge, label %.thread574

.critedge:                                        ; preds = %bb.a
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.m = call i32 @test_memio_do_handshake(ptr noundef %i.k, ptr noundef %i.l, i32 noundef 10, ptr noundef null) #11 ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.b, label %.thread574

.thread574:                                       ; preds = %.critedge, %bb.a
  %.sink578 = phi i32 [ 6879, %bb.a ], [ 6880, %.critedge ]
  %.str.114.sink = phi ptr [ @.str.111, %bb.a ], [ @.str.114, %.critedge ]
  %.sink = phi i32 [ %i.i, %bb.a ], [ %i.m, %.critedge ]
  %i.o = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef %.sink578) ; 0 uses
end_hunk_0
