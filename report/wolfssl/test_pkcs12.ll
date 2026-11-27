Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/test_pkcs12?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@test_wc_PKCS12_encrypted_content_bounds:bb.a
  br i1 %i.di, label %.critedge721, label %.critedge726.sink.split

.critedge721:                                     ; preds = %bb.p
  %i.dj = call i32 @wc_AesInit(ptr noundef nonnull %1, ptr noundef null, i32 noundef -2) #8 ; 2 uses
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %.critedge723, label %.critedge726.sink.split

.critedge723:                                     ; preds = %.critedge721
  %i.dl = call i32 @wc_AesSetKey(ptr noundef nonnull %1, ptr noundef nonnull %i.i, i32 noundef 32, ptr noundef nonnull @test_wc_PKCS12_encrypted_content_bounds.regIv, i32 noundef 0) #8 ; 2 uses
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %.critedge725, label %.critedge726.sink.split

.critedge725:                                     ; preds = %.critedge723
  %i.dn = call i32 @wc_AesCbcEncrypt(ptr noundef nonnull %1, ptr noundef nonnull %i.j, ptr noundef nonnull @test_wc_PKCS12_encrypted_content_bounds.regPlaintext, i32 noundef 16) #8 ; 2 uses
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %.critedge727, label %.critedge724

.critedge724:                                     ; preds = %.critedge725
  %i.dp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.2, i32 noundef 448) ; 0 uses
  %i.dq = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite688 = call i64 @fwrite(ptr nonnull @.str.3, i64 15, i64 1, ptr %i.dq) ; 0 uses
  %i.dr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.11) ; 0 uses
  %i.ds = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite689 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ds) ; 0 uses
  %i.dt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.dn, i32 noundef 0) ; 0 uses
  %i.du = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite690 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.du) ; 0 uses
  %i.dv = load ptr, ptr @stdout, align 8, !tbaa !12
  %i.dw = call i32 @fflush(ptr noundef %i.dv)     ; 0 uses
  call void @wc_AesFree(ptr noundef nonnull %1) #8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.h, i64 154
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.dx, ptr noundef nonnull align 16 dereferenceable(16) %i.j, i64 16, i1 false)
  br label %.critedge729

.critedge727:                                     ; preds = %.critedge725
  call void @wc_AesFree(ptr noundef nonnull %1) #8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.h, i64 154
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.dy, ptr noundef nonnull align 16 dereferenceable(16) %i.j, i64 16, i1 false)
  %i.dz = call ptr @wc_PKCS12_new_ex(ptr noundef null) #8 ; 6 uses
  %.not691 = icmp eq ptr %i.dz, null
  br i1 %.not691, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.critedge727
  %i.ea = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.2, i32 noundef 457) ; 0 uses
  %i.eb = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite692 = call i64 @fwrite(ptr nonnull @.str.3, i64 15, i64 1, ptr %i.eb) ; 0 uses
  %i.ec = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.60) ; 0 uses
  %i.ed = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite693 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ed) ; 0 uses
  %i.ee = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.61) ; 0 uses
  %i.ef = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite694 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.ef) ; 0 uses
  %i.eg = load ptr, ptr @stdout, align 8, !tbaa !12
  %i.eh = call i32 @fflush(ptr noundef %i.eg)     ; 0 uses
  br label %.critedge729

.critedge726.sink.split:                          ; preds = %.critedge723, %.critedge721, %bb.p
  %.sink778 = phi i32 [ 444, %.critedge721 ], [ 441, %bb.p ], [ 446, %.critedge723 ]
  %.str.58.sink = phi ptr [ @.str.57, %.critedge721 ], [ @.str.56, %bb.p ], [ @.str.58, %.critedge723 ]
  %.sink = phi i32 [ %i.dj, %.critedge721 ], [ %i.dh, %bb.p ], [ %i.dl, %.critedge723 ]
  %i.ei = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.2, i32 noundef %.sink778) ; 0 uses
  %i.ej = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite685 = call i64 @fwrite(ptr nonnull @.str.3, i64 15, i64 1, ptr %i.ej) ; 0 uses
  %i.ek = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull %.str.58.sink, ptr noundef nonnull @.str.11) ; 0 uses
  %i.el = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite686 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.el) ; 0 uses
  %i.em = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %.sink, i32 noundef 0) ; 0 uses
  %i.en = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite687 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.en) ; 0 uses
  %i.eo = load ptr, ptr @stdout, align 8, !tbaa !12
  %i.ep = call i32 @fflush(ptr noundef %i.eo)     ; 0 uses
  br label %.critedge726

.critedge726:                                     ; preds = %.critedge726.sink.split, %bb.o
  call void @wc_AesFree(ptr noundef nonnull %1) #8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.h, i64 154
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.eq, i8 0, i64 16, i1 false)
  br label %.critedge729

bb.r:                                             ; preds = %.critedge727
  %i.er = call i32 @wc_d2i_PKCS12(ptr noundef nonnull %i.h, i32 noundef 170, ptr noundef nonnull %i.dz) #8 ; 2 uses
  %i.es = icmp sgt i32 %i.er, -1
  br i1 %i.es, label %.critedge731, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.et = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.2, i32 noundef 458) ; 0 uses
  %i.eu = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite695 = call i64 @fwrite(ptr nonnull @.str.3, i64 15, i64 1, ptr %i.eu) ; 0 uses
  %i.ev = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.11) ; 0 uses
  %i.ew = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite696 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ew) ; 0 uses
  %i.ex = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40, i32 noundef %i.er, i32 noundef 0) ; 0 uses
  %i.ey = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite697 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.ey) ; 0 uses
  %i.ez = load ptr, ptr @stdout, align 8, !tbaa !12
  %i.fa = call i32 @fflush(ptr noundef %i.ez)     ; 0 uses
  br label %.critedge729

.critedge731:                                     ; preds = %bb.r
  %i.fb = call i32 @wc_PKCS12_parse(ptr noundef nonnull %i.dz, ptr noundef nonnull @test_wc_PKCS12_encrypted_content_bounds.regPassword, ptr noundef nonnull %i.k, ptr noundef nonnull %i.m, ptr noundef nonnull %i.l, ptr noundef nonnull %i.n, ptr noundef null) #8 ; 2 uses
  %i.fc = icmp slt i32 %i.fb, 0
  br i1 %i.fc, label %.critedge729, label %bb.t

bb.t:                                             ; preds = %.critedge731
  %i.fd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.2, i32 noundef 460) ; 0 uses
  %i.fe = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite698 = call i64 @fwrite(ptr nonnull @.str.3, i64 15, i64 1, ptr %i.fe) ; 0 uses
  %i.ff = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.63, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.11) ; 0 uses
  %i.fg = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite699 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.fg) ; 0 uses
  %i.fh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.65, i32 noundef %i.fb, i32 noundef 0) ; 0 uses
  %i.fi = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite700 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.fi) ; 0 uses
  %i.fj = load ptr, ptr @stdout, align 8, !tbaa !12
  %i.fk = call i32 @fflush(ptr noundef %i.fj)     ; 0 uses
  br label %.critedge729

.critedge729:                                     ; preds = %.critedge724, %.critedge726, %bb.q, %bb.s, %.critedge731, %bb.t
  %.0750 = phi ptr [ %i.dz, %.critedge731 ], [ %i.dz, %bb.s ], [ %i.dz, %bb.t ], [ null, %bb.q ], [ null, %.critedge726 ], [ null, %.critedge724 ]
  %.33 = phi i32 [ 1, %.critedge731 ], [ 0, %bb.s ], [ 0, %bb.t ], [ 0, %bb.q ], [ 0, %.critedge726 ], [ 0, %.critedge724 ]
  %i.fl = load ptr, ptr %i.k, align 8, !tbaa !14  ; 2 uses
  %.not701 = icmp eq ptr %i.fl, null
  br i1 %.not701, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.critedge729
  call void @wolfSSL_Free(ptr noundef nonnull %i.fl) #8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.critedge729
  %i.fm = load ptr, ptr %i.l, align 8, !tbaa !14  ; 2 uses
  %.not702 = icmp eq ptr %i.fm, null
  br i1 %.not702, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @wolfSSL_Free(ptr noundef nonnull %i.fm) #8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  call void @wc_PKCS12_free(ptr noundef %.0750) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #8
  ret i32 %.33
}

declare ptr @wc_PKCS12_create(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @wc_PKCS12_new_ex(ptr noundef) local_unnamed_addr #3

declare i32 @wc_PKCS12_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

declare void @wc_FreeCertList(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare i32 @wc_PBKDF2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @wc_AesInit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @wc_AesSetKey(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @wc_AesCbcEncrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @wc_AesFree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @test_wc_PKCS12_truncated_mac_bypass() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [28 x i8], align 16               ; 7 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  %i.c = alloca [32 x i8], align 16               ; 5 uses
  %0 = alloca %struct.Hmac, align 16              ; 7 uses
  %i.d = alloca [64 x i8], align 16               ; 13 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store <8 x i16> <i16 30464, i16 28416, i16 27648, i16 26112, i16 21248, i16 21248, i16 19456, i16 8192>, ptr %i.a, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <4 x i16> <i16 29696, i16 25856, i16 29440, i16 29696>, ptr %i.i, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 0, ptr %i.j, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  store i8 0, ptr %i.k, align 1, !tbaa !20
  %i.l = call i32 @wc_PKCS12_PBKDF_ex(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef 26, ptr noundef nonnull @test_wc_PKCS12_truncated_mac_bypass.salt, i32 noundef 8, i32 noundef 1, i32 noundef 32, i32 noundef 6, i32 noundef 3, ptr noundef null) #8 ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.2, i32 noundef 513) ; 0 uses
  %i.o = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite = call i64 @fwrite(ptr nonnull @.str.3, i64 15, i64 1, ptr %i.o) ; 0 uses
  %i.p = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.11) ; 0 uses
  %i.q = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite357 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.q) ; 0 uses
  %i.r = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.l, i32 noundef 0) ; 0 uses
  %i.s = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite358 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.s) ; 0 uses
  %i.t = load ptr, ptr @stdout, align 8, !tbaa !12
  %i.u = call i32 @fflush(ptr noundef %i.t)       ; 0 uses
  br label %.critedge384

.critedge:                                        ; preds = %bb.a
  %i.v = call i32 @wc_HmacInit(ptr noundef nonnull %0, ptr noundef null, i32 noundef -2) #8 ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.x = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.2, i32 noundef 516) ; 0 uses
  %i.y = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite359 = call i64 @fwrite(ptr nonnull @.str.3, i64 15, i64 1, ptr %i.y) ; 0 uses
  %i.z = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.11) ; 0 uses
  %i.aa = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite360 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.aa) ; 0 uses
  %i.ab = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.v, i32 noundef 0) ; 0 uses
  %i.ac = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite361 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.ac) ; 0 uses
  %i.ad = load ptr, ptr @stdout, align 8, !tbaa !12
  %i.ae = call i32 @fflush(ptr noundef %i.ad)     ; 0 uses
  br label %.critedge384

bb.d:                                             ; preds = %.critedge
  %i.af = call i32 @wc_HmacSetKey(ptr noundef nonnull %0, i32 noundef 6, ptr noundef nonnull %i.b, i32 noundef 32) #8 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %.critedge383, label %.sink.split

.critedge383:                                     ; preds = %bb.d
  %i.ah = call i32 @wc_HmacUpdate(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, i32 noundef 2) #8 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.critedge385, label %.sink.split

.critedge385:                                     ; preds = %.critedge383
  %i.aj = call i32 @wc_HmacFinal(ptr noundef nonnull %0, ptr noundef nonnull %i.c) #8 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.e, label %.sink.split

.sink.split:                                      ; preds = %.critedge385, %.critedge383, %bb.d
  %.sink420 = phi i32 [ 519, %bb.d ], [ 520, %.critedge383 ], [ 521, %.critedge385 ]
  %.str.69.sink = phi ptr [ @.str.68, %bb.d ], [ @.str.69, %.critedge383 ], [ @.str.70, %.critedge385 ]
  %.sink = phi i32 [ %i.af, %bb.d ], [ %i.ah, %.critedge383 ], [ %i.aj, %.critedge385 ]
  %i.al = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.2, i32 noundef %.sink420) ; 0 uses
  %i.am = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite365 = call i64 @fwrite(ptr nonnull @.str.3, i64 15, i64 1, ptr %i.am) ; 0 uses
  %i.an = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull %.str.69.sink, ptr noundef nonnull @.str.11) ; 0 uses
  %i.ao = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite366 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ao) ; 0 uses
  %i.ap = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %.sink, i32 noundef 0) ; 0 uses
  %i.aq = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite367 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.aq) ; 0 uses
  %i.ar = load ptr, ptr @stdout, align 8, !tbaa !12
  %i.as = call i32 @fflush(ptr noundef %i.ar)     ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %.critedge385
  %.9344.ph = phi i1 [ true, %.critedge385 ], [ false, %.sink.split ]
  call void @wc_HmacFree(ptr noundef nonnull %0) #8
  %.pre = load i8, ptr %i.c, align 16, !tbaa !20
  %1 = freeze i8 %.pre
  %2 = zext i8 %1 to i64
  %3 = shl nuw nsw i64 %2, 40
  %4 = or disjoint i64 %3, 577586656572343553
  br label %.critedge384

.critedge384:                                     ; preds = %bb.c, %bb.b, %bb.e
  %5 = phi i64 [ %4, %bb.e ], [ 577586656572343553, %bb.b ], [ 577586656572343553, %bb.c ]
  %.9344390 = phi i1 [ %.9344.ph, %bb.e ], [ false, %bb.b ], [ false, %bb.c ]
  store i64 437183428291606832, ptr %i.d, align 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 75988924849596937, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 13513015162831111, ptr %i.au, align 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 650221696316350768, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 145244820330808928, ptr %i.aw, align 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %5, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 578437695752307201, ptr %i.ay, align 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i16 258, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 58
  store i8 1, ptr %i.ba, align 2, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  store ptr null, ptr %i.e, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  store i32 0, ptr %i.f, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  store ptr null, ptr %i.g, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  store i32 0, ptr %i.h, align 4, !tbaa !10
  br i1 %.9344390, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.critedge384
  %i.bb = call ptr @wc_PKCS12_new() #8            ; 6 uses
  %.not = icmp eq ptr %i.bb, null
  br i1 %.not, label %bb.g, label %.thread392

bb.g:                                             ; preds = %bb.f
  %i.bc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.2, i32 noundef 577) ; 0 uses
  %i.bd = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite371 = call i64 @fwrite(ptr nonnull @.str.3, i64 15, i64 1, ptr %i.bd) ; 0 uses
  %i.be = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.14) ; 0 uses
  %i.bf = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite372 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.bf) ; 0 uses
  %i.bg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15) ; 0 uses
  %i.bh = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite373 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.bh) ; 0 uses
  %i.bi = load ptr, ptr @stdout, align 8, !tbaa !12
  %i.bj = call i32 @fflush(ptr noundef %i.bi)     ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.critedge384, %bb.g
  %i.bk = call i32 @wc_d2i_PKCS12(ptr noundef nonnull %i.d, i32 noundef 59, ptr noundef null) #8 ; 0 uses
  br label %bb.k

.thread392:                                       ; preds = %bb.f
  %i.bl = call i32 @wc_d2i_PKCS12(ptr noundef nonnull %i.d, i32 noundef 59, ptr noundef nonnull %i.bb) #8
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.thread392
  %i.bn = call i32 @wc_PKCS12_parse(ptr noundef nonnull %i.bb, ptr noundef nonnull @test_wc_PKCS12_truncated_mac_bypass.password, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef null) #8
  %.not374 = icmp eq i32 %i.bn, 0
  br i1 %.not374, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.2, i32 noundef 587) ; 0 uses
  %i.bp = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite375 = call i64 @fwrite(ptr nonnull @.str.3, i64 15, i64 1, ptr %i.bp) ; 0 uses
  %i.bq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.11) ; 0 uses
  %i.br = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite376 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.br) ; 0 uses
  %i.bs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.bt = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite377 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.bt) ; 0 uses
  %i.bu = load ptr, ptr @stdout, align 8, !tbaa !12
  %i.bv = call i32 @fflush(ptr noundef %i.bu)     ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %.thread392, %bb.i, %bb.j
  %.0395 = phi ptr [ %i.bb, %.thread392 ], [ %i.bb, %bb.j ], [ %i.bb, %bb.i ], [ null, %bb.h ]
  %.13 = phi i32 [ 1, %.thread392 ], [ 0, %bb.j ], [ 1, %bb.i ], [ 0, %bb.h ]
  %i.bw = load ptr, ptr %i.e, align 8, !tbaa !14  ; 2 uses
  %.not378 = icmp eq ptr %i.bw, null
  br i1 %.not378, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @wolfSSL_Free(ptr noundef nonnull %i.bw) #8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bx = load ptr, ptr %i.g, align 8, !tbaa !14  ; 2 uses
  %.not379 = icmp eq ptr %i.bx, null
  br i1 %.not379, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @wolfSSL_Free(ptr noundef nonnull %i.bx) #8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @wc_PKCS12_free(ptr noundef %.0395) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.13
}

declare i32 @wc_PKCS12_PBKDF_ex(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @wc_HmacInit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @wc_HmacSetKey(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @wc_HmacUpdate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @wc_HmacFinal(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @wc_HmacFree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @test_wc_PKCS12_PBKDF() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = tail call i32 @wc_PKCS12_PBKDF(ptr noundef null, ptr noundef nonnull @test_wc_PKCS12_PBKDF.passwd, i32 noundef 10, ptr noundef nonnull @test_wc_PKCS12_PBKDF.salt, i32 noundef 8, i32 noundef 1, i32 noundef 24, i32 noundef 6, i32 noundef 1) #8
  %.not.not = icmp eq i32 %i.b, 0
  br i1 %.not.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.2, i32 noundef 634) ; 0 uses
  %i.d = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.3, i64 15, i64 1, ptr %i.d) ; 0 uses
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.11) ; 0 uses
  %i.f = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite315 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.f) ; 0 uses
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.h = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite316 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.h) ; 0 uses
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !12
  %i.j = tail call i32 @fflush(ptr noundef %i.i)  ; 0 uses
  br label %.critedge356

.critedge:                                        ; preds = %bb.a
  %i.k = call i32 @wc_PKCS12_PBKDF(ptr noundef nonnull %i.a, ptr noundef nonnull @test_wc_PKCS12_PBKDF.passwd, i32 noundef 0, ptr noundef nonnull @test_wc_PKCS12_PBKDF.salt, i32 noundef 8, i32 noundef 1, i32 noundef 24, i32 noundef 6, i32 noundef 1) #8
  %.not.not358 = icmp eq i32 %i.k, 0
  br i1 %.not.not358, label %bb.c, label %.critedge345

bb.c:                                             ; preds = %.critedge
  %i.l = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.2, i32 noundef 636) ; 0 uses
  %i.m = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite317 = call i64 @fwrite(ptr nonnull @.str.3, i64 15, i64 1, ptr %i.m) ; 0 uses
  %i.n = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.11) ; 0 uses
  %i.o = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite318 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.o) ; 0 uses
  %i.p = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.q = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite319 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.q) ; 0 uses
  %i.r = load ptr, ptr @stdout, align 8, !tbaa !12
  %i.s = call i32 @fflush(ptr noundef %i.r)       ; 0 uses
  br label %.critedge356

.critedge345:                                     ; preds = %.critedge
  %i.t = call i32 @wc_PKCS12_PBKDF(ptr noundef nonnull %i.a, ptr noundef nonnull @test_wc_PKCS12_PBKDF.passwd, i32 noundef 10, ptr noundef nonnull @test_wc_PKCS12_PBKDF.salt, i32 noundef 0, i32 noundef 1, i32 noundef 24, i32 noundef 6, i32 noundef 1) #8
  %.not320.not = icmp eq i32 %i.t, 0
  br i1 %.not320.not, label %.critedge343, label %.critedge347

.critedge343:                                     ; preds = %.critedge345
  %i.u = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.2, i32 noundef 638) ; 0 uses
  %i.v = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite321 = call i64 @fwrite(ptr nonnull @.str.3, i64 15, i64 1, ptr %i.v) ; 0 uses
  %i.w = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.11) ; 0 uses
  %i.x = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite322 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.x) ; 0 uses
  %i.y = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.z = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite323 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.z) ; 0 uses
  %i.aa = load ptr, ptr @stdout, align 8, !tbaa !12
  %i.ab = call i32 @fflush(ptr noundef %i.aa)     ; 0 uses
  br label %.critedge356

.critedge347:                                     ; preds = %.critedge345
  %i.ac = call i32 @wc_PKCS12_PBKDF(ptr noundef nonnull %i.a, ptr noundef nonnull @test_wc_PKCS12_PBKDF.passwd, i32 noundef 10, ptr noundef nonnull @test_wc_PKCS12_PBKDF.salt, i32 noundef 8, i32 noundef 1, i32 noundef 24, i32 noundef 6, i32 noundef 1) #8 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %.critedge349, label %.critedge346

.critedge346:                                     ; preds = %.critedge347
  %i.ae = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.2, i32 noundef 642) ; 0 uses
  %i.af = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite324 = call i64 @fwrite(ptr nonnull @.str.3, i64 15, i64 1, ptr %i.af) ; 0 uses
  %i.ag = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.11) ; 0 uses
  %i.ah = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite325 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ah) ; 0 uses
  %i.ai = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.ac, i32 noundef 0) ; 0 uses
  %i.aj = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite326 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.aj) ; 0 uses
  %i.ak = load ptr, ptr @stdout, align 8, !tbaa !12
  %i.al = call i32 @fflush(ptr noundef %i.ak)     ; 0 uses
  br label %.critedge356

.critedge349:                                     ; preds = %.critedge347
  %i.am = call i32 @memcmp(ptr noundef nonnull dereferenceable(24) %i.a, ptr noundef nonnull dereferenceable(24) @test_wc_PKCS12_PBKDF.verify, i64 noundef 24) #9 ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.critedge351, label %.critedge348

.critedge348:                                     ; preds = %.critedge349
  %i.ao = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.2, i32 noundef 643) ; 0 uses
  %i.ap = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite327 = call i64 @fwrite(ptr nonnull @.str.3, i64 15, i64 1, ptr %i.ap) ; 0 uses
  %i.aq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.11) ; 0 uses
  %i.ar = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite328 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ar) ; 0 uses
  %i.as = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.am, i32 noundef 0) ; 0 uses
  %i.at = load ptr, ptr @stdout, align 8, !tbaa !12
  %fwrite329 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.at) ; 0 uses
end_hunk_0
