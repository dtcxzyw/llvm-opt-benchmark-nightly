Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/test_tls_ext?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@test_tls13_hrr_cipher_suite_mismatch:bb.a
  %i.bq = call i32 @wolfSSL_get_error(ptr noundef %i.bp, i32 noundef 0) #8
  %.not = icmp eq i32 %i.bq, -425
  br i1 %.not, label %.critedge328, label %bb.d

bb.d:                                             ; preds = %.critedge329
  %i.br = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.bs = call i32 @wolfSSL_get_error(ptr noundef %i.br, i32 noundef 0) #8 ; 2 uses
  %i.bt = icmp eq i32 %i.bs, -425
  br i1 %i.bt, label %.critedge328, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 702) ; 0 uses
  %i.bv = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite313 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.bv) ; 0 uses
  %i.bw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.40) ; 0 uses
  %i.bx = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite314 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.bx) ; 0 uses
  %i.by = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.bs, i32 noundef -425) ; 0 uses
  br label %.critedge328.sink.split

.critedge328.sink.split:                          ; preds = %bb.e, %bb.b, %bb.c, %.critedge317, %.critedge320, %.critedge322, %.critedge324, %.critedge326
  %i.bz = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite312 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.bz) ; 0 uses
  %i.ca = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.cb = call i32 @fflush(ptr noundef %i.ca)     ; 0 uses
  br label %.critedge328

.critedge328:                                     ; preds = %.critedge328.sink.split, %.critedge329, %bb.d
  %.15 = phi i32 [ 1, %bb.d ], [ 1, %.critedge329 ], [ 0, %.critedge328.sink.split ]
  %i.cc = load ptr, ptr %i.c, align 8, !tbaa !13
  call void @wolfSSL_free(ptr noundef %i.cc) #8
  %i.cd = load ptr, ptr %i.d, align 8, !tbaa !13
  call void @wolfSSL_free(ptr noundef %i.cd) #8
  %i.ce = load ptr, ptr %i.a, align 8, !tbaa !11
  call void @wolfSSL_CTX_free(ptr noundef %i.ce) #8
  %i.cf = load ptr, ptr %i.b, align 8, !tbaa !11
  call void @wolfSSL_CTX_free(ptr noundef %i.cf) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #8
  ret i32 %.15
}

declare ptr @wolfTLSv1_3_client_method() #4

declare ptr @wolfTLSv1_3_server_method() #4

declare i32 @wolfSSL_NoKeyShares(ptr noundef) local_unnamed_addr #4

declare i32 @wolfSSL_connect(ptr noundef) local_unnamed_addr #4

declare i32 @wolfSSL_accept(ptr noundef) local_unnamed_addr #4

declare i32 @wolfSSL_set_cipher_list(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @test_tls13_ticket_age_out_of_window() local_unnamed_addr #0 {
bb.a:
  ret i32 3
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @test_wolfSSL_DisableExtendedMasterSecret() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @wolfSSLv23_client_method() #8
  %i.b = tail call ptr @wolfSSL_CTX_new(ptr noundef %i.a) #8 ; 4 uses
  %i.c = tail call ptr @wolfSSL_new(ptr noundef %i.b) #8 ; 3 uses
  %.not.not = icmp eq ptr %i.b, null
  br i1 %.not.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 788) ; 0 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.e) ; 0 uses
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.41) ; 0 uses
  %i.g = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite184 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.g) ; 0 uses
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42) ; 0 uses
  br label %.critedge209.sink.split

.critedge:                                        ; preds = %bb.a
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  %i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 789) ; 0 uses
  %i.j = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite186 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.j) ; 0 uses
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.43) ; 0 uses
  %i.l = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite187 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.l) ; 0 uses
  %i.m = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44) ; 0 uses
  br label %.critedge209.sink.split

bb.d:                                             ; preds = %.critedge
  %i.n = tail call i32 @wolfSSL_CTX_DisableExtendedMasterSecret(ptr noundef null) #8
  %.not189.not = icmp eq i32 %i.n, 1
  br i1 %.not189.not, label %.critedge204, label %.critedge206

.critedge204:                                     ; preds = %bb.d
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 792) ; 0 uses
  %i.p = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite190 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.p) ; 0 uses
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.45) ; 0 uses
  %i.r = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite191 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.r) ; 0 uses
  %i.s = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef 1, i32 noundef 1) ; 0 uses
  br label %.critedge209.sink.split

.critedge206:                                     ; preds = %bb.d
  %i.t = tail call i32 @wolfSSL_DisableExtendedMasterSecret(ptr noundef null) #8
  %.not193.not = icmp eq i32 %i.t, 1
  br i1 %.not193.not, label %.critedge205, label %.critedge208

.critedge205:                                     ; preds = %.critedge206
  %i.u = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 793) ; 0 uses
  %i.v = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite194 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.v) ; 0 uses
  %i.w = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.46) ; 0 uses
  %i.x = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite195 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.x) ; 0 uses
  %i.y = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef 1, i32 noundef 1) ; 0 uses
  br label %.critedge209.sink.split

.critedge208:                                     ; preds = %.critedge206
  %i.z = tail call i32 @wolfSSL_CTX_DisableExtendedMasterSecret(ptr noundef nonnull %i.b) #8 ; 2 uses
  %i.aa = icmp eq i32 %i.z, 1
  br i1 %i.aa, label %.critedge210, label %.critedge207

.critedge207:                                     ; preds = %.critedge208
  %i.ab = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 796) ; 0 uses
  %i.ac = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite197 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ac) ; 0 uses
  %i.ad = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.47) ; 0 uses
  %i.ae = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite198 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ae) ; 0 uses
  %i.af = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef 1, i32 noundef %i.z) ; 0 uses
  br label %.critedge209.sink.split

.critedge210:                                     ; preds = %.critedge208
  %i.ag = tail call i32 @wolfSSL_DisableExtendedMasterSecret(ptr noundef nonnull %i.c) #8 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %.critedge209, label %bb.e

bb.e:                                             ; preds = %.critedge210
  %i.ai = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 797) ; 0 uses
  %i.aj = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite200 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.aj) ; 0 uses
  %i.ak = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.48) ; 0 uses
  %i.al = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite201 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.al) ; 0 uses
  %i.am = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef 1, i32 noundef %i.ag) ; 0 uses
  br label %.critedge209.sink.split

.critedge209.sink.split:                          ; preds = %bb.e, %bb.c, %bb.b, %.critedge204, %.critedge205, %.critedge207
  %i.an = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite199 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.an) ; 0 uses
  %i.ao = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.ap = tail call i32 @fflush(ptr noundef %i.ao) ; 0 uses
  br label %.critedge209

.critedge209:                                     ; preds = %.critedge209.sink.split, %.critedge210
  %.9 = phi i32 [ 1, %.critedge210 ], [ 0, %.critedge209.sink.split ]
  tail call void @wolfSSL_free(ptr noundef %i.c) #8
  tail call void @wolfSSL_CTX_free(ptr noundef %i.b) #8
  ret i32 %.9
}

declare ptr @wolfSSL_CTX_new(ptr noundef) local_unnamed_addr #4

declare ptr @wolfSSLv23_client_method() local_unnamed_addr #4

declare ptr @wolfSSL_new(ptr noundef) local_unnamed_addr #4

declare i32 @wolfSSL_CTX_DisableExtendedMasterSecret(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @test_certificate_authorities_certificate_request() local_unnamed_addr #0 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @test_TLSX_TCA_Find() local_unnamed_addr #0 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @test_certificate_authorities_client_hello() local_unnamed_addr #0 {
bb.a:
  ret i32 3
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @test_TLSX_SNI_GetSize_overflow() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @wolfSSLv23_client_method() #8
  %i.b = tail call ptr @wolfSSL_CTX_new(ptr noundef %i.a) #8 ; 11 uses
  %.not.not = icmp eq ptr %i.b, null
  br i1 %.not.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1240) ; 0 uses
  %i.d = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.d) ; 0 uses
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.49) ; 0 uses
  %i.f = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite262 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.f) ; 0 uses
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50) ; 0 uses
  %i.h = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite263 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.h) ; 0 uses
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.j = tail call i32 @fflush(ptr noundef %i.i)  ; 0 uses
  br label %.critedge.thread

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @wolfSSL_new(ptr noundef nonnull %i.b) #8 ; 11 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1241) ; 0 uses
  %i.m = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite264 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.m) ; 0 uses
  %i.n = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.51) ; 0 uses
  %i.o = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite265 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.o) ; 0 uses
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52) ; 0 uses
  %i.q = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite266 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.q) ; 0 uses
  %i.r = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.s = tail call i32 @fflush(ptr noundef %i.r)  ; 0 uses
  br label %.critedge.thread

bb.d:                                             ; preds = %bb.b
  %i.t = tail call i32 @wolfSSL_UseSNI(ptr noundef nonnull %i.k, i8 noundef zeroext 0, ptr noundef nonnull @.str.53, i16 noundef zeroext 1) #8 ; 2 uses
  %i.u = icmp eq i32 %i.t, 1
  br i1 %i.u, label %.critedge294, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1245) ; 0 uses
  %i.w = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite267 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.w) ; 0 uses
  %i.x = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.54) ; 0 uses
  %i.y = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite268 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.y) ; 0 uses
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef 1, i32 noundef %i.t) ; 0 uses
  %i.aa = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite269 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.aa) ; 0 uses
  %i.ab = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.ac = tail call i32 @fflush(ptr noundef %i.ab) ; 0 uses
  br label %.critedge.thread

.critedge294:                                     ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 1384
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !53
  %i.af = tail call ptr @TLSX_Find(ptr noundef %i.ae, i32 noundef 0) #8 ; 3 uses
  %.not270.not = icmp eq ptr %i.af, null
  br i1 %.not270.not, label %bb.f, label %.critedge292

bb.f:                                             ; preds = %.critedge294
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1250) ; 0 uses
  %i.ah = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite271 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ah) ; 0 uses
  %i.ai = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.55) ; 0 uses
  %i.aj = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite272 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.aj) ; 0 uses
  %i.ak = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.56) ; 0 uses
  %i.al = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite273 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.al) ; 0 uses
  %i.am = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.an = tail call i32 @fflush(ptr noundef %i.am) ; 0 uses
  br label %.critedge.thread

.critedge292:                                     ; preds = %.critedge294
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !67 ; 2 uses
  %.not274 = icmp eq ptr %i.ap, null
  br i1 %.not274, label %bb.g, label %.lr.ph

bb.g:                                             ; preds = %.critedge292
  %i.aq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1255) ; 0 uses
  %i.ar = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite275 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ar) ; 0 uses
  %i.as = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.57) ; 0 uses
  %i.at = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite276 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.at) ; 0 uses
  %i.au = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.58) ; 0 uses
  %i.av = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite277 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.av) ; 0 uses
  %i.aw = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.ax = tail call i32 @fflush(ptr noundef %i.aw) ; 0 uses
  br label %.critedge.thread

.lr.ph:                                           ; preds = %.critedge292
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.k
  %.0316 = phi i32 [ 1, %.lr.ph ], [ %i.bz, %bb.k ] ; 2 uses
  %i.az = tail call ptr @wolfSSL_Malloc(i64 noundef 32) #8 ; 7 uses
  %.not281.not = icmp eq ptr %i.az, null
  br i1 %.not281.not, label %.thread331, label %bb.i

.thread331:                                       ; preds = %bb.h
  %i.ba = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1261) ; 0 uses
  %i.bb = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite282 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.bb) ; 0 uses
  %i.bc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.59) ; 0 uses
  %i.bd = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite283 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.bd) ; 0 uses
  %i.be = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.60) ; 0 uses
  %i.bf = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite284 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.bf) ; 0 uses
  %i.bg = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.bh = tail call i32 @fflush(ptr noundef %i.bg) ; 0 uses
  br label %.critedge.thread

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.az, i8 0, i64 32, i1 false)
  %i.bi = tail call ptr @wolfSSL_Malloc(i64 noundef 2) #8 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 3 uses
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !22
  %.not286 = icmp ne ptr %i.bi, null              ; 3 uses
  br i1 %.not286, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1266) ; 0 uses
  %i.bl = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite287 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.bl) ; 0 uses
  %i.bm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.61) ; 0 uses
  %i.bn = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite288 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.bn) ; 0 uses
  %i.bo = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.62) ; 0 uses
  %i.bp = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite289 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.bp) ; 0 uses
  %i.bq = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.br = tail call i32 @fflush(ptr noundef %i.bq) ; 0 uses
  %.pr = load ptr, ptr %i.bj, align 8, !tbaa !22  ; 2 uses
  %.not290 = icmp eq ptr %.pr, null
  br i1 %.not290, label %.thread335, label %bb.k

.thread335:                                       ; preds = %bb.j
  %i.bs = load ptr, ptr %i.ay, align 8, !tbaa !70
  %i.bt = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !70
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !70
  br label %.critedge.thread

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bu = phi ptr [ %.pr, %bb.j ], [ %i.bi, %bb.i ]
  store i8 97, ptr %i.bu, align 1, !tbaa !22
  %i.bv = load ptr, ptr %i.bj, align 8, !tbaa !22
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store i8 0, ptr %i.bw, align 1, !tbaa !22
  %i.bx = load ptr, ptr %i.ay, align 8, !tbaa !70
  %i.by = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !70
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !70
  %i.bz = add nuw nsw i32 %.0316, 1
  %i.ca = icmp samesign ult i32 %.0316, 16384
  %or.cond101 = select i1 %.not286, i1 %i.ca, i1 false
  br i1 %or.cond101, label %bb.h, label %.critedge, !llvm.loop !65

.critedge:                                        ; preds = %bb.k
  br i1 %.not286, label %bb.l, label %.critedge.thread

bb.l:                                             ; preds = %.critedge
  %i.cb = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !67
  %i.cd = tail call zeroext i16 @TLSX_SNI_GetSize(ptr noundef %i.cc) #8 ; 2 uses
  %i.ce = icmp eq i16 %i.cd, 0
  br i1 %i.ce, label %.critedge.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cf = zext i16 %i.cd to i32
  %i.cg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1278) ; 0 uses
  %i.ch = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite278 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ch) ; 0 uses
  %i.ci = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.5) ; 0 uses
  %i.cj = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite279 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.cj) ; 0 uses
  %i.ck = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.cf, i32 noundef 0) ; 0 uses
  %i.cl = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite280 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.cl) ; 0 uses
  %i.cm = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.cn = tail call i32 @fflush(ptr noundef %i.cm) ; 0 uses
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.thread, %bb.c, %bb.f, %bb.e, %bb.g, %.thread335, %.thread331, %bb.l, %bb.m, %.critedge
  %.0242296300307329343 = phi ptr [ %i.b, %.critedge ], [ %i.b, %bb.m ], [ %i.b, %bb.l ], [ %i.b, %.thread331 ], [ %i.b, %.thread335 ], [ null, %.thread ], [ %i.b, %bb.c ], [ %i.b, %bb.f ], [ %i.b, %bb.e ], [ %i.b, %bb.g ]
  %.0241301306330342 = phi ptr [ %i.k, %.critedge ], [ %i.k, %bb.m ], [ %i.k, %bb.l ], [ %i.k, %.thread331 ], [ %i.k, %.thread335 ], [ null, %.thread ], [ null, %bb.c ], [ %i.k, %bb.f ], [ %i.k, %bb.e ], [ %i.k, %bb.g ]
  %.13 = phi i32 [ 0, %.critedge ], [ 0, %bb.m ], [ 1, %bb.l ], [ 0, %.thread331 ], [ 0, %.thread335 ], [ 0, %.thread ], [ 0, %bb.c ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.g ]
  tail call void @wolfSSL_free(ptr noundef %.0241301306330342) #8
  tail call void @wolfSSL_CTX_free(ptr noundef %.0242296300307329343) #8
  ret i32 %.13
}

declare i32 @wolfSSL_UseSNI(ptr noundef, i8 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

declare ptr @TLSX_Find(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @wolfSSL_Malloc(i64 noundef) local_unnamed_addr #4

declare zeroext i16 @TLSX_SNI_GetSize(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @test_TLSX_ECH_msg_type_validation() local_unnamed_addr #0 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @test_TLSX_SRTP_msg_type_validation() local_unnamed_addr #0 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @test_TLSX_ALPN_server_response_count() local_unnamed_addr #0 {
bb.a:
  ret i32 3
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @test_TLSX_SupportedCurve_empty_or_unsupported() local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [6 x i8], align 1                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [6 x i8], align 1                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.a, ptr noundef nonnull align 1 dereferenceable(6) @__const.test_TLSX_SupportedCurve_empty_or_unsupported.emptyListEE, i64 6, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i64 -1230043449135199744, ptr %i.b, align 8
  %i.d = tail call ptr @wolfTLSv1_2_client_method() #8
  %i.e = tail call ptr @wolfSSL_CTX_new(ptr noundef %i.d) #8 ; 5 uses
  %.not.not = icmp eq ptr %i.e, null
  br i1 %.not.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @wolfSSL_new(ptr noundef nonnull %i.e) #8 ; 6 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55   ; 2 uses
  %.not302 = icmp eq ptr %i.h, null
  br i1 %.not302, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.f, align 16, !tbaa !56
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !61
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0262.ph = phi ptr [ %i.h, %bb.c ], [ %i.k, %bb.d ]
  %i.l = call i32 @TLSX_Parse(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, i16 noundef zeroext 6, i8 noundef zeroext 1, ptr noundef %.0262.ph) #8 ; 2 uses
  %i.m = icmp eq i32 %i.l, -328
  br i1 %i.m, label %.critedge336, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1418) ; 0 uses
  %i.o = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite303 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.o) ; 0 uses
  %i.p = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67) ; 0 uses
  %i.q = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite304 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.q) ; 0 uses
  %i.r = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.l, i32 noundef -328) ; 0 uses
  %i.s = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite305 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.s) ; 0 uses
  %i.t = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.u = call i32 @fflush(ptr noundef %i.t)       ; 0 uses
  call void @wolfSSL_free(ptr noundef nonnull %i.f) #8
  br label %.critedge343

.critedge336:                                     ; preds = %bb.e
  call void @wolfSSL_free(ptr noundef nonnull %i.f) #8
  %i.v = call ptr @wolfSSL_new(ptr noundef nonnull %i.e) #8 ; 9 uses
  %.not306 = icmp eq ptr %i.v, null
  br i1 %.not306, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.critedge336
  %i.w = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1425) ; 0 uses
  %i.x = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite307 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.x) ; 0 uses
  %i.y = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.51) ; 0 uses
  %i.z = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite308 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.z) ; 0 uses
  %i.aa = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52) ; 0 uses
  %i.ab = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite309 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.ab) ; 0 uses
  %i.ac = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.ad = call i32 @fflush(ptr noundef %i.ac)     ; 0 uses
  br label %.critedge343

.critedge:                                        ; preds = %bb.b, %bb.a
  %.sink = phi i32 [ 1412, %bb.a ], [ 1413, %bb.b ]
  %.str.64.sink = phi ptr [ @.str.64, %bb.a ], [ @.str.51, %bb.b ]
  %.str.65.sink = phi ptr [ @.str.65, %bb.a ], [ @.str.52, %bb.b ]
  %i.ae = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef %.sink) ; 0 uses
  %i.af = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.af) ; 0 uses
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull %.str.64.sink) ; 0 uses
  %i.ah = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite296 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ah) ; 0 uses
  %i.ai = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.65.sink) ; 0 uses
  %i.aj = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite297 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.aj) ; 0 uses
  %i.ak = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.al = tail call i32 @fflush(ptr noundef %i.ak) ; 0 uses
  tail call void @wolfSSL_free(ptr noundef null) #8
  br label %.critedge343

bb.h:                                             ; preds = %.critedge336
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !55 ; 2 uses
  %.not311 = icmp eq ptr %i.an, null
  br i1 %.not311, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.v, align 16, !tbaa !56
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 152
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !61
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1.ph = phi ptr [ %i.an, %bb.h ], [ %i.aq, %bb.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 1384 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !53
  %i.at = call ptr @TLSX_Find(ptr noundef %i.as, i32 noundef 10) #8 ; 2 uses
  %.not312 = icmp eq ptr %i.at, null
  br i1 %.not312, label %.critedge340, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1429) ; 0 uses
  %i.av = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite313 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.av) ; 0 uses
  %i.aw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.68, ptr noundef nonnull @.str.69) ; 0 uses
  %i.ax = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite314 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ax) ; 0 uses
  %i.ay = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.70, ptr noundef nonnull %i.at) ; 0 uses
  %i.az = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite315 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.az) ; 0 uses
  %i.ba = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.bb = call i32 @fflush(ptr noundef %i.ba)     ; 0 uses
  br label %.critedge343

.critedge340:                                     ; preds = %bb.j
  %i.bc = call i32 @TLSX_Parse(ptr noundef nonnull %i.v, ptr noundef nonnull %i.b, i16 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef %.1.ph) #8 ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %.critedge342, label %.critedge338

.critedge338:                                     ; preds = %.critedge340
  %i.be = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1431) ; 0 uses
  %i.bf = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite316 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.bf) ; 0 uses
  %i.bg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.5) ; 0 uses
  %i.bh = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite317 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.bh) ; 0 uses
  %i.bi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.bc, i32 noundef 0) ; 0 uses
  %i.bj = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite318 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.bj) ; 0 uses
  %i.bk = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.bl = call i32 @fflush(ptr noundef %i.bk)     ; 0 uses
  br label %.critedge343

.critedge342:                                     ; preds = %.critedge340
  %i.bm = load ptr, ptr %i.ar, align 8, !tbaa !53
  %i.bn = call ptr @TLSX_Find(ptr noundef %i.bm, i32 noundef 10) #8
  %.not319 = icmp eq ptr %i.bn, null
  br i1 %.not319, label %bb.l, label %.critedge341

bb.l:                                             ; preds = %.critedge342
  %i.bo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1433) ; 0 uses
  %i.bp = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite320 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.bp) ; 0 uses
  %i.bq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.69) ; 0 uses
  %i.br = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite321 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.br) ; 0 uses
  %i.bs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.72) ; 0 uses
  %i.bt = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite322 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.bt) ; 0 uses
  %i.bu = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.bv = call i32 @fflush(ptr noundef %i.bu)     ; 0 uses
  br label %.critedge343

.critedge341:                                     ; preds = %.critedge342
  call void @wolfSSL_free(ptr noundef nonnull %i.v) #8
  call void @wolfSSL_CTX_free(ptr noundef nonnull %i.e) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.c, ptr noundef nonnull align 1 dereferenceable(6) @__const.test_TLSX_SupportedCurve_empty_or_unsupported.emptyListEE, i64 6, i1 false)
  %i.bw = call ptr @wolfTLSv1_3_client_method() #8
  %i.bx = call ptr @wolfSSL_CTX_new(ptr noundef %i.bw) #8 ; 5 uses
  %.not323 = icmp eq ptr %i.bx, null
  br i1 %.not323, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.critedge341
  %i.by = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1449) ; 0 uses
  %i.bz = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite324 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.bz) ; 0 uses
  %i.ca = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.73) ; 0 uses
  %i.cb = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite325 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.cb) ; 0 uses
  %i.cc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.74) ; 0 uses
  %i.cd = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite326 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.cd) ; 0 uses
  %i.ce = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.cf = call i32 @fflush(ptr noundef %i.ce)     ; 0 uses
  br label %.thread381

.critedge343:                                     ; preds = %bb.f, %.critedge, %bb.g, %.critedge338, %bb.k, %bb.l
  %.1264369376 = phi ptr [ %i.v, %.critedge338 ], [ %i.v, %bb.k ], [ %i.v, %bb.l ], [ null, %bb.f ], [ null, %.critedge ], [ null, %bb.g ]
  call void @wolfSSL_free(ptr noundef %.1264369376) #8
  call void @wolfSSL_CTX_free(ptr noundef %i.e) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.c, ptr noundef nonnull align 1 dereferenceable(6) @__const.test_TLSX_SupportedCurve_empty_or_unsupported.emptyListEE, i64 6, i1 false)
  br label %.thread381

bb.n:                                             ; preds = %.critedge341
  %i.cg = call ptr @wolfSSL_new(ptr noundef nonnull %i.bx) #8 ; 6 uses
  %.not327 = icmp eq ptr %i.cg, null
  br i1 %.not327, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ch = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1450) ; 0 uses
  %i.ci = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite328 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ci) ; 0 uses
  %i.cj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.75) ; 0 uses
  %i.ck = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite329 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ck) ; 0 uses
  %i.cl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76) ; 0 uses
  %i.cm = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite330 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.cm) ; 0 uses
  %i.cn = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.co = call i32 @fflush(ptr noundef %i.cn)     ; 0 uses
  br label %.thread381

bb.p:                                             ; preds = %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 726
  store i8 3, ptr %i.cp, align 2, !tbaa !71
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cg, i64 727
  store i8 4, ptr %i.cq, align 1, !tbaa !72
  %i.cr = call i32 @TLSX_Parse(ptr noundef nonnull %i.cg, ptr noundef nonnull %i.c, i16 noundef zeroext 6, i8 noundef zeroext 8, ptr noundef null) #8 ; 2 uses
  %i.cs = icmp eq i32 %i.cr, -328
  br i1 %i.cs, label %.thread381, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ct = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1459) ; 0 uses
  %i.cu = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite332 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.cu) ; 0 uses
  %i.cv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.67) ; 0 uses
  %i.cw = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite333 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.cw) ; 0 uses
  %i.cx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.cr, i32 noundef -328) ; 0 uses
  %i.cy = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite334 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.cy) ; 0 uses
  %i.cz = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.da = call i32 @fflush(ptr noundef %i.cz)     ; 0 uses
  br label %.thread381

.thread381:                                       ; preds = %.critedge343, %bb.m, %bb.o, %bb.p, %bb.q
  %.0261383389396 = phi ptr [ %i.bx, %bb.p ], [ %i.bx, %bb.q ], [ %i.bx, %bb.o ], [ null, %bb.m ], [ null, %.critedge343 ]
  %.0390395 = phi ptr [ %i.cg, %bb.p ], [ %i.cg, %bb.q ], [ null, %bb.o ], [ null, %bb.m ], [ null, %.critedge343 ]
  %.13 = phi i32 [ 1, %bb.p ], [ 0, %bb.q ], [ 0, %bb.o ], [ 0, %bb.m ], [ 0, %.critedge343 ]
  call void @wolfSSL_free(ptr noundef %.0390395) #8
  call void @wolfSSL_CTX_free(ptr noundef %.0261383389396) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.13
}

declare i32 @TLSX_Parse(ptr noundef, ptr noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @test_TLSX_PointFormat_uncompressed_required() local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [6 x i8], align 1                 ; 4 uses
  %i.b = alloca [6 x i8], align 1                 ; 4 uses
  %i.c = alloca [7 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.a, ptr noundef nonnull align 1 dereferenceable(6) @__const.test_TLSX_PointFormat_uncompressed_required.withUncomp, i64 6, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.b, ptr noundef nonnull align 1 dereferenceable(6) @__const.test_TLSX_PointFormat_uncompressed_required.noUncomp, i64 6, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.c, ptr noundef nonnull align 1 dereferenceable(7) @__const.test_TLSX_PointFormat_uncompressed_required.noUncomp2, i64 7, i1 false)
  %i.d = tail call ptr @wolfTLSv1_2_client_method() #8
  %i.e = tail call ptr @wolfSSL_CTX_new(ptr noundef %i.d) #8 ; 5 uses
  %.not.not = icmp eq ptr %i.e, null
  br i1 %.not.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1503) ; 0 uses
  %i.g = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.g) ; 0 uses
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.64) ; 0 uses
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite354 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.i) ; 0 uses
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.65) ; 0 uses
  %i.k = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite355 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.k) ; 0 uses
  %i.l = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.m = tail call i32 @fflush(ptr noundef %i.l)  ; 0 uses
  br label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.n = tail call ptr @wolfSSL_new(ptr noundef nonnull %i.e) #8 ; 10 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1507) ; 0 uses
  %i.p = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite356 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.p) ; 0 uses
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.51) ; 0 uses
  %i.r = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite357 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.r) ; 0 uses
  %i.s = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52) ; 0 uses
  %i.t = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite358 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.t) ; 0 uses
  %i.u = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.v = tail call i32 @fflush(ptr noundef %i.u)  ; 0 uses
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !55   ; 2 uses
  %.not360 = icmp eq ptr %i.x, null
  br i1 %.not360, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.n, align 16, !tbaa !56
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 152
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !61
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.ph = phi ptr [ %i.x, %bb.d ], [ %i.aa, %bb.e ]
  %i.ab = call i32 @TLSX_Parse(ptr noundef nonnull %i.n, ptr noundef nonnull %i.a, i16 noundef zeroext 6, i8 noundef zeroext 1, ptr noundef %.0.ph) #8 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1511) ; 0 uses
  %i.ae = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite361 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ae) ; 0 uses
  %i.af = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.5) ; 0 uses
  %i.ag = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite362 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ag) ; 0 uses
  %i.ah = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.ab, i32 noundef 0) ; 0 uses
  %i.ai = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite363 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.ai) ; 0 uses
  %i.aj = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.ak = call i32 @fflush(ptr noundef %i.aj)     ; 0 uses
  br label %.critedge

bb.h:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 1040
  %i.am = load i64, ptr %i.al, align 8
  %i.an = and i64 %i.am, 35184372088832
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1513) ; 0 uses
  %i.aq = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite364 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.aq) ; 0 uses
  %i.ar = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.5) ; 0 uses
  %i.as = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite365 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.as) ; 0 uses
  %i.at = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.au = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite366 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.au) ; 0 uses
  %i.av = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.aw = call i32 @fflush(ptr noundef %i.av)     ; 0 uses
  br label %.critedge

bb.j:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.n, i64 1384
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !53
  %i.az = call ptr @TLSX_Find(ptr noundef %i.ay, i32 noundef 11) #8
  %.not367 = icmp eq ptr %i.az, null
  br i1 %.not367, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ba = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1514) ; 0 uses
  %i.bb = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite368 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.bb) ; 0 uses
  %i.bc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.80) ; 0 uses
  %i.bd = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite369 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.bd) ; 0 uses
  %i.be = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.81) ; 0 uses
  %i.bf = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite370 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.bf) ; 0 uses
  %i.bg = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.bh = call i32 @fflush(ptr noundef %i.bg)     ; 0 uses
  br label %.critedge

bb.l:                                             ; preds = %bb.j
  call void @wolfSSL_free(ptr noundef nonnull %i.n) #8
  %i.bi = call ptr @wolfSSL_new(ptr noundef nonnull %i.e) #8 ; 8 uses
  %.not371 = icmp eq ptr %i.bi, null
  br i1 %.not371, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1519) ; 0 uses
  %i.bk = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite372 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.bk) ; 0 uses
  %i.bl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.51) ; 0 uses
  %i.bm = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite373 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.bm) ; 0 uses
  %i.bn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52) ; 0 uses
end_hunk_0
