Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/api?download=true
inline.NumInlined: 44
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@test_wc_GetPkcs8TraditionalOffset:bb.a
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %.thread380, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ck = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 22069) ; 0 uses
  %i.cl = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite327 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.cl) ; 0 uses
  %i.cm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, ptr noundef nonnull @.str.1998, ptr noundef nonnull @.str.43) ; 0 uses
  %i.cn = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite328 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.cn) ; 0 uses
  %i.co = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i32 noundef %i.ci, i32 noundef 0) ; 0 uses
  %i.cp = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite329 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.cp) ; 0 uses
  %i.cq = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.cr = call i32 @fflush(ptr noundef %i.cq)     ; 0 uses
  br label %.thread380

.thread380:                                       ; preds = %bb.g, %bb.h, %bb.i, %bb.e, %bb.c, %.thread358, %bb.f, %bb.j, %bb.k, %bb.l
  %.15 = phi i32 [ 0, %bb.j ], [ 0, %bb.l ], [ 1, %bb.k ], [ 0, %bb.f ], [ 0, %.thread358 ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i32 %.15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @test_wc_SetSubjectRaw() #9 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @test_wc_GetSubjectRaw() #9 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @test_wc_SetIssuerRaw() #9 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @test_wc_SetIssueBuffer() #9 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @test_wc_SetSubjectKeyId() #9 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @test_wc_SetSubject() #9 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @test_CheckCertSignature() #9 {
bb.a:
  ret i32 3
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_wc_ParseCert() #0 {
bb.a:
  %0 = alloca %struct.DecodedCert, align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #24
  call void @wc_InitDecodedCert(ptr noundef nonnull %0, ptr noundef nonnull @client_cert_der_2048, i32 noundef 1313, ptr noundef null) #24
  %i.a = call i32 @wc_ParseCert(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, ptr noundef null) #24 ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 22306) ; 0 uses
  %i.d = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.d) ; 0 uses
  %i.e = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.2003, ptr noundef nonnull @.str.43) ; 0 uses
  %i.f = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite87 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.f) ; 0 uses
  %i.g = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.a, i32 noundef 0) ; 0 uses
  br label %.critedge97.sink.split

.critedge:                                        ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !172
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  %i.j = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 22309) ; 0 uses
  %i.k = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite89 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.k) ; 0 uses
  %i.l = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull @.str.2004) ; 0 uses
  %i.m = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite90 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.m) ; 0 uses
  %i.n = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2005) ; 0 uses
  br label %.critedge97.sink.split

bb.d:                                             ; preds = %.critedge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !173  ; 2 uses
  %.not92 = icmp eq ptr %i.p, null
  br i1 %.not92, label %.critedge97, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 22310) ; 0 uses
  %i.r = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite93 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.r) ; 0 uses
  %i.s = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2006, ptr noundef nonnull @.str.2007) ; 0 uses
  %i.t = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite94 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.t) ; 0 uses
  %i.u = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2008, ptr noundef nonnull %i.p) ; 0 uses
  br label %.critedge97.sink.split

.critedge97.sink.split:                           ; preds = %bb.e, %bb.c, %bb.b
  %i.v = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite88 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.v) ; 0 uses
  %i.w = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.x = call i32 @fflush(ptr noundef %i.w)       ; 0 uses
  br label %.critedge97

.critedge97:                                      ; preds = %.critedge97.sink.split, %bb.d
  %.4 = phi i32 [ 1, %bb.d ], [ 0, %.critedge97.sink.split ]
  call void @wc_FreeDecodedCert(ptr noundef nonnull %0) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #24
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_wc_ParseCert_Error() #0 {
bb.a:
  %0 = alloca %struct.DecodedCert, align 8        ; 21 uses
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [9 x i8], align 1                 ; 5 uses
  %i.e = alloca [5 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 140746114991152, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 140746148545584, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 140746148546096, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.d, ptr noundef nonnull align 1 dereferenceable(9) @__const.test_wc_ParseCert_Error.c3, i64 9, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.e, ptr noundef nonnull align 1 dereferenceable(5) @__const.test_wc_ParseCert_Error.c4, i64 5, i1 false)
  call void @wc_InitDecodedCert(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 8, ptr noundef null) #24
  %i.f = call i32 @wc_ParseCert(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, ptr noundef null) #24 ; 2 uses
  %i.g = icmp eq i32 %i.f, -140                   ; 2 uses
  br i1 %i.g, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 22357) ; 0 uses
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.i) ; 0 uses
  %i.j = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.2003, ptr noundef nonnull @.str.2009) ; 0 uses
  %i.k = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite45 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.k) ; 0 uses
  %i.l = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.f, i32 noundef -140) ; 0 uses
  %i.m = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite46 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.m) ; 0 uses
  %i.n = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.o = call i32 @fflush(ptr noundef %i.n)       ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %.242 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  call void @wc_FreeDecodedCert(ptr noundef nonnull %0) #24
  call void @wc_InitDecodedCert(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef 8, ptr noundef null) #24
  br i1 %i.g, label %bb.c, label %.thread.1

bb.c:                                             ; preds = %.thread
  %i.p = call i32 @wc_ParseCert(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, ptr noundef null) #24 ; 2 uses
  %i.q = icmp eq i32 %i.p, -140
  br i1 %i.q, label %.thread.1, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 22357) ; 0 uses
  %i.s = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite.1 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.s) ; 0 uses
  %i.t = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.2003, ptr noundef nonnull @.str.2009) ; 0 uses
  %i.u = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite45.1 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.u) ; 0 uses
  %i.v = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.p, i32 noundef -140) ; 0 uses
  %i.w = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite46.1 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.w) ; 0 uses
  %i.x = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.y = call i32 @fflush(ptr noundef %i.x)       ; 0 uses
  br label %.thread.1

.thread.1:                                        ; preds = %bb.c, %bb.d, %.thread
  %.242.1 = phi i32 [ %.242, %.thread ], [ 0, %bb.d ], [ 1, %bb.c ]
  call void @wc_FreeDecodedCert(ptr noundef nonnull %0) #24
  call void @wc_InitDecodedCert(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i32 noundef 8, ptr noundef null) #24
  %i.z = icmp eq i32 %.242.1, 0
  br i1 %i.z, label %.thread.3.critedge, label %bb.e

bb.e:                                             ; preds = %.thread.1
  %i.aa = call i32 @wc_ParseCert(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, ptr noundef null) #24 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, -140
  br i1 %i.ab, label %.thread.2, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 22357) ; 0 uses
  %i.ad = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite.2 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ad) ; 0 uses
  %i.ae = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.2003, ptr noundef nonnull @.str.2009) ; 0 uses
  %i.af = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite45.2 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.af) ; 0 uses
  %i.ag = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.aa, i32 noundef -140) ; 0 uses
  %i.ah = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite46.2 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.ah) ; 0 uses
  %i.ai = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.aj = call i32 @fflush(ptr noundef %i.ai)     ; 0 uses
  br label %.thread.3.critedge

.thread.2:                                        ; preds = %bb.e
  call void @wc_FreeDecodedCert(ptr noundef nonnull %0) #24
  call void @wc_InitDecodedCert(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i32 noundef 9, ptr noundef null) #24
  %i.ak = call i32 @wc_ParseCert(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, ptr noundef null) #24 ; 2 uses
  %i.al = icmp eq i32 %i.ak, -140
  br i1 %i.al, label %.thread.3, label %bb.g

bb.g:                                             ; preds = %.thread.2
  %i.am = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 22357) ; 0 uses
  %i.an = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite.3 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.an) ; 0 uses
  %i.ao = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.2003, ptr noundef nonnull @.str.2009) ; 0 uses
  %i.ap = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite45.3 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.ap) ; 0 uses
  %i.aq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.ak, i32 noundef -140) ; 0 uses
  %i.ar = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite46.3 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.ar) ; 0 uses
  %i.as = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.at = call i32 @fflush(ptr noundef %i.as)     ; 0 uses
  br label %.thread.4.critedge

.thread.3.critedge:                               ; preds = %bb.f, %.thread.1
  call void @wc_FreeDecodedCert(ptr noundef nonnull %0) #24
  call void @wc_InitDecodedCert(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i32 noundef 9, ptr noundef null) #24
  br label %.thread.4.critedge

.thread.3:                                        ; preds = %.thread.2
  call void @wc_FreeDecodedCert(ptr noundef nonnull %0) #24
  call void @wc_InitDecodedCert(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i32 noundef 5, ptr noundef null) #24
  %i.au = call i32 @wc_ParseCert(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, ptr noundef null) #24 ; 2 uses
  %i.av = icmp eq i32 %i.au, -140
  br i1 %i.av, label %.thread.4, label %bb.h

bb.h:                                             ; preds = %.thread.3
  %i.aw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 22357) ; 0 uses
  %i.ax = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite.4 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ax) ; 0 uses
  %i.ay = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.2003, ptr noundef nonnull @.str.2009) ; 0 uses
  %i.az = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite45.4 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.az) ; 0 uses
  %i.ba = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.au, i32 noundef -140) ; 0 uses
  %i.bb = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite46.4 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.bb) ; 0 uses
  %i.bc = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.bd = call i32 @fflush(ptr noundef %i.bc)     ; 0 uses
  br label %.thread.4

.thread.4.critedge:                               ; preds = %bb.g, %.thread.3.critedge
  call void @wc_FreeDecodedCert(ptr noundef nonnull %0) #24
  call void @wc_InitDecodedCert(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i32 noundef 5, ptr noundef null) #24
  br label %.thread.4

.thread.4:                                        ; preds = %.thread.4.critedge, %.thread.3, %bb.h
  %.242.4 = phi i32 [ 0, %.thread.4.critedge ], [ 0, %bb.h ], [ 1, %.thread.3 ]
  call void @wc_FreeDecodedCert(ptr noundef nonnull %0) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #24
  ret i32 %.242.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @test_MakeCertWithPathLen() #9 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @test_PathLenSelfIssued() #9 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @test_PathLenSelfIssuedAllowed() #9 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @test_PathLenNoKeyUsage() #9 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @test_NameConstraints_OtherName() #9 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @test_NameConstraints_DnsUriWildcard() #9 {
bb.a:
  ret i32 3
}

; Function Attrs: nounwind uwtable
define internal range(i32 5, 4) i32 @test_ParseSerial0FixtureMatrix() #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %0 = alloca %struct.DecodedCert, align 8        ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.ad
  %.0242.fr440 = phi i32 [ 0, %bb.a ], [ %.0242.fr, %bb.ad ] ; 9 uses
  %.0243.fr439 = phi i32 [ 3, %bb.a ], [ %.0243.fr, %bb.ad ] ; 4 uses
  %.0241437 = phi i64 [ 0, %bb.a ], [ %i.co, %bb.ad ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr null, ptr %i.a, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 0, ptr %i.b, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #24
  %i.c = icmp eq i32 %.0243.fr439, 4              ; 2 uses
  %i.d = add i32 %.0243.fr439, -1
  %i.e = icmp ult i32 %i.d, 4
  br i1 %i.e, label %bb.c, label %.thread340.thread.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw [16 x i8], ptr @__const.test_ParseSerial0FixtureMatrix.cases, i64 %.0241437
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !176
  %i.h = call fastcc i32 @load_file(ptr noundef %i.g, ptr noundef %i.a, ptr noundef %i.b) ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i32 %.0243.fr439, label %.thread.thread393 [
    i32 4, label %.thread
    i32 2, label %.thread
  ]

.thread.thread393:                                ; preds = %bb.d
  %i.j = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 22806) ; 0 uses
  %i.k = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.k) ; 0 uses
  %i.l = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.2014, ptr noundef nonnull @.str.43) ; 0 uses
  %i.m = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite265 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.m) ; 0 uses
  %i.n = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.h, i32 noundef 0) ; 0 uses
  %i.o = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite266 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.o) ; 0 uses
  %i.p = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.q = call i32 @fflush(ptr noundef %i.p)       ; 0 uses
  br label %.thread340.thread.thread

bb.e:                                             ; preds = %bb.c
  %i.r = sext i1 %i.c to i32
  %spec.select = add i32 %.0242.fr440, %i.r
  %spec.select416 = select i1 %i.c, i32 2, i32 1
  br label %.thread.thread

.thread:                                          ; preds = %bb.d, %bb.d
  %i.s = icmp eq i32 %.0242.fr440, 2
  %spec.select417 = select i1 %i.s, i32 1, i32 %.0242.fr440 ; 2 uses
  %.pre444 = add i32 %.0242.fr440, -1
  %i.t = icmp ult i32 %.pre444, 4
  %i.u = icmp eq i32 %.0242.fr440, 4
  br i1 %i.t, label %.thread.thread, label %.thread340.thread.thread

.thread.thread:                                   ; preds = %bb.e, %.thread
  %i.v = phi i1 [ false, %bb.e ], [ %i.u, %.thread ] ; 2 uses
  %.2310 = phi i32 [ %spec.select, %bb.e ], [ %spec.select417, %.thread ] ; 8 uses
  %.2245308 = phi i32 [ %spec.select416, %bb.e ], [ %.0242.fr440, %.thread ]
  %i.w = load i64, ptr %i.b, align 8, !tbaa !60   ; 2 uses
  %i.x = call ptr @wolfSSL_Malloc(i64 noundef %i.w) #24 ; 6 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.thread.thread
  switch i32 %.2245308, label %bb.g [
    i32 4, label %.thread315
    i32 2, label %.thread315
  ]

bb.g:                                             ; preds = %bb.f
  %i.y = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 22808) ; 0 uses
end_hunk_0
begin_hunk_1_@test_tls_multi_handshakes_one_record:bb.a

.critedge518.a:                                   ; preds = %.critedge516.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65536) %i.e, i8 0, i64 65536, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 3
  %.val = load i8, ptr %i.av, align 1, !tbaa !16
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val538.a = load i8, ptr %i.aw, align 4, !tbaa !16
  %i.ax = zext i8 %.val to i16
  %i.ay = shl nuw i16 %i.ax, 8
  %i.az = zext i8 %.val538.a to i16
  %i.ba = or disjoint i16 %i.ay, %i.az            ; 3 uses
  %i.bb = zext i16 %i.ba to i32
  %i.bc = add nuw nsw i32 %i.bb, 5                ; 7 uses
  %i.bd = icmp ult i16 %i.ba, -4
  br i1 %i.bd, label %.critedge522, label %bb.d

bb.d:                                             ; preds = %.critedge518.a
  %i.be = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 32320) ; 0 uses
  %i.bf = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite486 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.bf) ; 0 uses
  %i.bg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1962, ptr noundef nonnull @.str.2432, ptr noundef nonnull @.str.2433) ; 0 uses
  %i.bh = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite487 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.bh) ; 0 uses
  %i.bi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1965, i32 noundef %i.bc, i32 noundef 65536) ; 0 uses
  %i.bj = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite488 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.bj) ; 0 uses
  %i.bk = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.bl = call i32 @fflush(ptr noundef %i.bk)     ; 0 uses
  br label %.critedge523

.critedge517:                                     ; preds = %.critedge513, %.critedge510, %bb.c, %bb.b
  %i.bm = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite482 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.bm) ; 0 uses
  %i.bn = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.bo = call i32 @fflush(ptr noundef %i.bn)     ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65536) %i.e, i8 0, i64 65536, i1 false)
  br label %.critedge523

.critedge522:                                     ; preds = %.critedge518.a
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 65536
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !76 ; 6 uses
  %.not.not = icmp sgt i32 %i.bc, %i.bq
  br i1 %.not.not, label %.critedge520, label %.critedge524

.critedge520:                                     ; preds = %.critedge522
  %i.br = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 32321) ; 0 uses
  %i.bs = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite489 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.bs) ; 0 uses
  %i.bt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1962, ptr noundef nonnull @.str.2432, ptr noundef nonnull @.str.2392) ; 0 uses
  %i.bu = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite490 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.bu) ; 0 uses
  %i.bv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1965, i32 noundef %i.bc, i32 noundef %i.bq) ; 0 uses
  %i.bw = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite491 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.bw) ; 0 uses
  %i.bx = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.by = call i32 @fflush(ptr noundef %i.bx)     ; 0 uses
  br label %.critedge523

.critedge524:                                     ; preds = %.critedge522
  %i.bz = zext i16 %i.ba to i64
  %i.ca = add nuw nsw i64 %i.bz, 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.ca, i1 false)
  %.not499554 = icmp samesign ult i32 %i.bc, %i.bq
  br i1 %.not499554, label %.lr.ph, label %.critedge531.a

.lr.ph:                                           ; preds = %.critedge524, %.critedge530
  %.0556 = phi i32 [ %i.cl, %.critedge530 ], [ %i.bc, %.critedge524 ] ; 2 uses
  %.0432555 = phi i32 [ %i.cu, %.critedge530 ], [ %i.bc, %.critedge524 ] ; 2 uses
  %i.cb = sext i32 %.0556 to i64
  %i.cc = getelementptr inbounds i8, ptr %0, i64 %i.cb ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 3
  %.val541 = load i8, ptr %i.cd, align 1, !tbaa !16
  %i.ce = getelementptr i8, ptr %i.cc, i64 4
  %.val542 = load i8, ptr %i.ce, align 1, !tbaa !16
  %i.cf = zext i8 %.val541 to i16
  %i.cg = shl nuw i16 %i.cf, 8
  %i.ch = zext i8 %.val542 to i16
  %i.ci = or disjoint i16 %i.cg, %i.ch            ; 2 uses
  %i.cj = add nsw i32 %.0556, 5                   ; 2 uses
  %i.ck = zext i16 %i.ci to i32                   ; 2 uses
  %i.cl = add nsw i32 %i.cj, %i.ck                ; 4 uses
  %.not492.not = icmp sgt i32 %i.cl, %i.bq
  br i1 %.not492.not, label %bb.e, label %.critedge526

bb.e:                                             ; preds = %.lr.ph
  %i.cm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 32333) ; 0 uses
  %i.cn = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite493 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.cn) ; 0 uses
  %i.co = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1962, ptr noundef nonnull @.str.2434, ptr noundef nonnull @.str.2392) ; 0 uses
  %i.cp = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite494 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.cp) ; 0 uses
  %i.cq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1965, i32 noundef %i.cl, i32 noundef %i.bq) ; 0 uses
  %i.cr = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite495 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.cr) ; 0 uses
  %i.cs = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.ct = call i32 @fflush(ptr noundef %i.cs)     ; 0 uses
  br label %.critedge523

.critedge526:                                     ; preds = %.lr.ph
  %i.cu = add nuw nsw i32 %.0432555, %i.ck        ; 4 uses
  %i.cv = icmp samesign ult i32 %i.cu, 65537
  br i1 %i.cv, label %.critedge530, label %bb.f

bb.f:                                             ; preds = %.critedge526
  %i.cw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 32334) ; 0 uses
  %i.cx = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite496 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.cx) ; 0 uses
  %i.cy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1962, ptr noundef nonnull @.str.2435, ptr noundef nonnull @.str.2433) ; 0 uses
  %i.cz = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite497 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.cz) ; 0 uses
  %i.da = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1965, i32 noundef %i.cu, i32 noundef 65536) ; 0 uses
  %i.db = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite498 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.db) ; 0 uses
  %i.dc = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.dd = call i32 @fflush(ptr noundef %i.dc)     ; 0 uses
  br label %.critedge523

.critedge530:                                     ; preds = %.critedge526
  %i.de = zext nneg i32 %.0432555 to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.de
  %i.dg = sext i32 %i.cj to i64
  %i.dh = getelementptr inbounds i8, ptr %0, i64 %i.dg
  %i.di = zext i16 %i.ci to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.df, ptr nonnull align 1 %i.dh, i64 %i.di, i1 false)
  %.not499 = icmp slt i32 %i.cl, %i.bq
  br i1 %.not499, label %.lr.ph, label %.critedge531.a, !llvm.loop !187

.critedge531.a:                                   ; preds = %.critedge530, %.critedge524
  %.0432.lcssa = phi i32 [ %i.bc, %.critedge524 ], [ %i.cu, %.critedge530 ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %i.dk = trunc i32 %.0432.lcssa to i16
  %i.dl = add i16 %i.dk, -5                       ; 2 uses
  %i.dm = lshr i16 %i.dl, 8
  %i.dn = trunc nuw i16 %i.dm to i8
  store i8 %i.dn, ptr %i.dj, align 1, !tbaa !16
  %i.do = trunc i16 %i.dl to i8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i8 %i.do, ptr %i.dp, align 4, !tbaa !16
  call void @test_memio_clear_buffer(ptr noundef nonnull %0, i32 noundef 1) #24
  %i.dq = call i32 @test_memio_inject_message(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %i.e, i32 noundef %.0432.lcssa) #24 ; 0 uses
  %i.dr = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.ds = call i32 @wolfSSL_connect(ptr noundef %i.dr) #24 ; 2 uses
  %i.dt = icmp eq i32 %i.ds, -1
  br i1 %i.dt, label %.critedge533.a, label %bb.g

bb.g:                                             ; preds = %.critedge531.a
  %i.du = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 32356) ; 0 uses
  %i.dv = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite500 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.dv) ; 0 uses
  %i.dw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.2378, ptr noundef nonnull @.str.2395) ; 0 uses
  %i.dx = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite501 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.dx) ; 0 uses
  %i.dy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.ds, i32 noundef -1) ; 0 uses
  %i.dz = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite502 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.dz) ; 0 uses
  %i.ea = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.eb = call i32 @fflush(ptr noundef %i.ea)     ; 0 uses
  br label %.critedge523

.critedge533.a:                                   ; preds = %.critedge531.a
  %i.ec = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.ed = call i32 @wolfSSL_get_error(ptr noundef %i.ec, i32 noundef -1) #24 ; 2 uses
  %i.ee = icmp eq i32 %i.ed, 2
  br i1 %i.ee, label %.critedge537, label %bb.h

bb.h:                                             ; preds = %.critedge533.a
  %i.ef = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 32357) ; 0 uses
  %i.eg = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite503 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.eg) ; 0 uses
  %i.eh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.2399, ptr noundef nonnull @.str.2380) ; 0 uses
  %i.ei = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite504 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.ei) ; 0 uses
  %i.ej = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.ed, i32 noundef 2) ; 0 uses
  %i.ek = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite505 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.ek) ; 0 uses
  %i.el = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.em = call i32 @fflush(ptr noundef %i.el)     ; 0 uses
  br label %.critedge523

.critedge537:                                     ; preds = %.critedge533.a
  %i.en = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.eo = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.ep = call i32 @test_memio_do_handshake(ptr noundef %i.en, ptr noundef %i.eo, i32 noundef 10, ptr noundef null) #24 ; 2 uses
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %.critedge523, label %bb.i

bb.i:                                             ; preds = %.critedge537
  %i.er = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 32359) ; 0 uses
  %i.es = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite506 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.es) ; 0 uses
  %i.et = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.2302, ptr noundef nonnull @.str.43) ; 0 uses
  %i.eu = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite507 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.eu) ; 0 uses
  %i.ev = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.ep, i32 noundef 0) ; 0 uses
  %i.ew = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite508 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.ew) ; 0 uses
  %i.ex = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.ey = call i32 @fflush(ptr noundef %i.ex)     ; 0 uses
  br label %.critedge523

.critedge523:                                     ; preds = %.critedge517, %.critedge515, %.critedge520, %bb.d, %bb.f, %bb.e, %bb.h, %bb.g, %.critedge537, %bb.i
  %.25 = phi i32 [ 1, %.critedge537 ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.i ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %.critedge520 ], [ 0, %.critedge515 ], [ 0, %.critedge517 ]
  %i.ez = load ptr, ptr %i.c, align 8, !tbaa !70
  call void @wolfSSL_free(ptr noundef %i.ez) #24
  %i.fa = load ptr, ptr %i.d, align 8, !tbaa !70
  call void @wolfSSL_free(ptr noundef %i.fa) #24
  %i.fb = load ptr, ptr %i.a, align 8, !tbaa !69
  call void @wolfSSL_CTX_free(ptr noundef %i.fb) #24
  %i.fc = load ptr, ptr %i.b, align 8, !tbaa !69
  call void @wolfSSL_CTX_free(ptr noundef %i.fc) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #24
  ret i32 %.25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @test_write_dup() #9 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @test_write_dup_want_write() #9 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @test_write_dup_want_write_simul() #9 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @test_write_dup_oom() #9 {
bb.a:
  ret i32 3
}

; Function Attrs: nounwind uwtable
define internal range(i32 5, 4) i32 @test_read_write_hs() #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 16 uses
  %i.d = alloca ptr, align 8                      ; 17 uses
  %0 = alloca %struct.test_memio_ctx, align 8     ; 9 uses
  %i.e = alloca [16 x i8], align 16               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr null, ptr %i.a, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store ptr null, ptr %i.b, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store ptr null, ptr %i.c, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store ptr null, ptr %i.d, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 65536 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 65530 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.thread1385
  %.0849.fr1725 = phi i32 [ 0, %bb.a ], [ %.0849.fr, %.thread1385 ] ; 9 uses
  %.0850.fr1724 = phi i32 [ 3, %bb.a ], [ %.0850.fr, %.thread1385 ] ; 4 uses
  %i.h = phi i1 [ true, %bb.a ], [ false, %.thread1385 ] ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(131384) %0, i8 0, i64 131384, i1 false)
  %i.i = icmp eq i32 %.0850.fr1724, 4             ; 2 uses
  %i.j = add i32 %.0850.fr1724, -1
  %i.k = icmp ult i32 %i.j, 4
  br i1 %i.k, label %bb.c, label %.thread1064

bb.c:                                             ; preds = %bb.b
  %i.l = call i32 @test_memio_setup(ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef nonnull @wolfTLSv1_2_client_method, ptr noundef nonnull @wolfTLSv1_2_server_method) #24 ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i32 %.0850.fr1724, label %.thread.thread1395 [
    i32 4, label %.thread
    i32 2, label %.thread
  ]

.thread.thread1395:                               ; preds = %bb.d
  %i.n = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 33032) ; 0 uses
  %i.o = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.o) ; 0 uses
  %i.p = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.2383, ptr noundef nonnull @.str.43) ; 0 uses
  %i.q = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite922 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.q) ; 0 uses
  %i.r = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.l, i32 noundef 0) ; 0 uses
  %i.s = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite923 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.s) ; 0 uses
  %i.t = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.u = call i32 @fflush(ptr noundef %i.t)       ; 0 uses
  br label %.thread1064

bb.e:                                             ; preds = %bb.c
  %i.v = sext i1 %i.i to i32
  %spec.select = add i32 %.0849.fr1725, %i.v
  %spec.select1640 = select i1 %i.i, i32 2, i32 1
  br label %.thread.thread

.thread:                                          ; preds = %bb.d, %bb.d
  %i.w = icmp eq i32 %.0849.fr1725, 2
  %spec.select1641 = select i1 %i.w, i32 1, i32 %.0849.fr1725 ; 2 uses
  %.pre1730 = add i32 %.0849.fr1725, -1
  %i.x = icmp ult i32 %.pre1730, 4
  %i.y = icmp eq i32 %.0849.fr1725, 4
  br i1 %i.x, label %.thread.thread, label %.thread1064

.thread.thread:                                   ; preds = %bb.e, %.thread
  %i.z = phi i1 [ false, %bb.e ], [ %i.y, %.thread ] ; 2 uses
  %.21060 = phi i32 [ %spec.select, %bb.e ], [ %spec.select1641, %.thread ] ; 5 uses
  %.28521059 = phi i32 [ %spec.select1640, %bb.e ], [ %.0849.fr1725, %.thread ]
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.ab = call i32 @wolfSSL_set_group_messages(ptr noundef %i.aa) #24 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.thread.thread
  switch i32 %.28521059, label %bb.g [
    i32 4, label %bb.i
    i32 2, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.ad = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 33033) ; 0 uses
  %i.ae = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite924 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ae) ; 0 uses
  %i.af = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.2436, ptr noundef nonnull @.str.15) ; 0 uses
  %i.ag = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite925 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.ag) ; 0 uses
  %i.ah = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.ab, i32 noundef 1) ; 0 uses
  %i.ai = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite926 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.ai) ; 0 uses
  %i.aj = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.ak = call i32 @fflush(ptr noundef %i.aj)     ; 0 uses
  br label %.thread1064

bb.h:                                             ; preds = %.thread.thread
  %spec.select1642 = select i1 %i.z, i32 2, i32 1
  %i.al = sext i1 %i.z to i32
  %spec.select1643 = add nsw i32 %.21060, %i.al
  br label %.thread1064

bb.i:                                             ; preds = %bb.f, %bb.f
  %i.am = icmp eq i32 %.21060, 2
  %spec.select1644 = select i1 %i.am, i32 1, i32 %.21060
  br label %.thread1064

.thread1064:                                      ; preds = %bb.b, %bb.i, %bb.h, %bb.g, %.thread.thread1395, %.thread
  %.4854 = phi i32 [ %.0849.fr1725, %.thread ], [ 0, %.thread.thread1395 ], [ 0, %bb.g ], [ %.21060, %bb.i ], [ %spec.select1642, %bb.h ], [ %.0850.fr1724, %bb.b ] ; 6 uses
  %.4 = phi i32 [ %spec.select1641, %.thread ], [ %.0849.fr1725, %.thread.thread1395 ], [ %.21060, %bb.g ], [ %spec.select1644, %bb.i ], [ %spec.select1643, %bb.h ], [ %.0849.fr1725, %bb.b ]
  %.4.fr = freeze i32 %.4                         ; 12 uses
  %i.an = icmp eq i32 %.4854, 4                   ; 4 uses
  %i.ao = add i32 %.4854, -1
  %i.ap = icmp ult i32 %i.ao, 4                   ; 2 uses
  br i1 %i.h, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.thread1064
  br i1 %i.ap, label %bb.k, label %.thread1075

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.ar = call i32 @wolfSSL_write(ptr noundef %i.aq, ptr noundef nonnull @.str.2437, i32 noundef 5) #24 ; 2 uses
  %i.as = icmp eq i32 %i.ar, -1
  br i1 %i.as, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  switch i32 %.4854, label %.thread1573 [
    i32 4, label %bb.n
    i32 2, label %bb.n
  ]

.thread1573:                                      ; preds = %bb.l
  %i.at = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 33036) ; 0 uses
  %i.au = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite930 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.au) ; 0 uses
  %i.av = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.2438, ptr noundef nonnull @.str.2395) ; 0 uses
  %i.aw = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite931 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.aw) ; 0 uses
  %i.ax = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.ar, i32 noundef -1) ; 0 uses
  %i.ay = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite932 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.ay) ; 0 uses
  %i.az = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.ba = call i32 @fflush(ptr noundef %i.az)     ; 0 uses
  br label %.thread1181

bb.m:                                             ; preds = %bb.k
  %i.bb = sext i1 %i.an to i32
  %spec.select1645 = add nsw i32 %.4.fr, %i.bb
  %spec.select1646 = select i1 %i.an, i32 2, i32 1
  br label %.thread1095

bb.n:                                             ; preds = %bb.l, %bb.l
  %i.bc = icmp eq i32 %.4.fr, 2
  %spec.select1647 = select i1 %i.bc, i32 1, i32 %.4.fr
end_hunk_1
begin_hunk_2_@test_wolfSSL_SSLDisableRead:bb.a
  call void @wolfSSL_SSLEnableRead(ptr noundef %i.am) #24
  br label %.critedge196

.critedge194:                                     ; preds = %.critedge192
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !70
  call void @wolfSSL_SSLEnableRead(ptr noundef %i.an) #24
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.ap = call i32 @wolfSSL_negotiate(ptr noundef %i.ao) #24 ; 2 uses
  %i.aq = icmp eq i32 %i.ap, -1
  br i1 %i.aq, label %.critedge198, label %bb.d

bb.d:                                             ; preds = %.critedge194
  %i.ar = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 33606) ; 0 uses
  %i.as = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite183 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.as) ; 0 uses
  %i.at = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.2470, ptr noundef nonnull @.str.2395) ; 0 uses
  %i.au = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite184 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.au) ; 0 uses
  %i.av = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.ap, i32 noundef -1) ; 0 uses
  %i.aw = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite185 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.aw) ; 0 uses
  %i.ax = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.ay = call i32 @fflush(ptr noundef %i.ax)     ; 0 uses
  br label %.critedge196

.critedge193:                                     ; preds = %bb.c, %bb.b
  %i.az = load ptr, ptr %i.b, align 8, !tbaa !70
  call void @wolfSSL_SSLEnableRead(ptr noundef %i.az) #24
  br label %.critedge196

.critedge198:                                     ; preds = %.critedge194
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.bb = call i32 @wolfSSL_get_error(ptr noundef %i.ba, i32 noundef -1) #24 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, -308
  br i1 %i.bc, label %.critedge196, label %bb.e

bb.e:                                             ; preds = %.critedge198
  %i.bd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 33607) ; 0 uses
  %i.be = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite186 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.be) ; 0 uses
  %i.bf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.2399, ptr noundef nonnull @.str.2478) ; 0 uses
  %i.bg = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite187 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.bg) ; 0 uses
  %i.bh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.bb, i32 noundef -308) ; 0 uses
  %i.bi = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite188 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.bi) ; 0 uses
  %i.bj = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.bk = call i32 @fflush(ptr noundef %i.bj)     ; 0 uses
  br label %.critedge196

.critedge196:                                     ; preds = %bb.d, %.critedge190, %.critedge193, %.critedge198, %bb.e
  %.9 = phi i32 [ 1, %.critedge198 ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %.critedge190 ], [ 0, %.critedge193 ]
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !70
  call void @wolfSSL_free(ptr noundef %i.bl) #24
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !69
  call void @wolfSSL_CTX_free(ptr noundef %i.bm) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i32 %.9
}

; Function Attrs: nounwind uwtable
define internal i32 @test_wolfSSL_inject() #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %0 = alloca %struct.test_memio_ctx, align 8     ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 131088
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 65552
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 65536
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.thread398
  %.0264.fr447 = phi i32 [ 0, %bb.a ], [ %.0264.fr, %.thread398 ] ; 5 uses
  %i.h = phi i1 [ true, %bb.a ], [ false, %.thread398 ]
  %.0263446 = phi i64 [ 0, %bb.a ], [ 1, %.thread398 ]
  %.0266445 = phi i32 [ 3, %bb.a ], [ %.17283, %.thread398 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr null, ptr %i.a, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store ptr null, ptr %i.b, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store ptr null, ptr %i.c, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store ptr null, ptr %i.d, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #24
  %i.i = getelementptr inbounds nuw [24 x i8], ptr @__const.test_wolfSSL_inject.params, i64 %.0263446 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !107
  %i.l = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2468, ptr noundef %i.k) ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(131384) %0, i8 0, i64 131384, i1 false)
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !108
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !109
  %i.p = call i32 @test_memio_setup(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %i.m, ptr noundef %i.o) #24 ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %.0266445, label %bb.d [
    i32 4, label %bb.f
    i32 2, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.r = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 33668) ; 0 uses
  %i.s = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.s) ; 0 uses
  %i.t = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.2469, ptr noundef nonnull @.str.43) ; 0 uses
  %i.u = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite291 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.u) ; 0 uses
  %i.v = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.p, i32 noundef 0) ; 0 uses
  %i.w = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite292 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.w) ; 0 uses
  %i.x = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.y = call i32 @fflush(ptr noundef %i.x)       ; 0 uses
  br label %.thread.preheader

bb.e:                                             ; preds = %bb.b
  %i.z = icmp eq i32 %.0266445, 4                 ; 2 uses
  %spec.select = select i1 %i.z, i32 2, i32 1
  %i.aa = sext i1 %i.z to i32
  %spec.select411 = add i32 %.0264.fr447, %i.aa
  br label %.thread.preheader

bb.f:                                             ; preds = %bb.c, %bb.c
  %i.ab = icmp eq i32 %.0264.fr447, 2
  %spec.select412 = select i1 %i.ab, i32 1, i32 %.0264.fr447
  br label %.thread.preheader

.thread.preheader:                                ; preds = %bb.f, %bb.e, %bb.d
  %.3.fr444.ph = phi i32 [ %spec.select411, %bb.e ], [ %spec.select412, %bb.f ], [ %.0264.fr447, %bb.d ]
  %.3269.fr443.ph = phi i32 [ %spec.select, %bb.e ], [ %.0264.fr447, %bb.f ], [ 0, %bb.d ]
  br label %.thread

.thread:                                          ; preds = %.thread.preheader, %bb.ah
  %.3.fr444 = phi i32 [ %.13, %bb.ah ], [ %.3.fr444.ph, %.thread.preheader ] ; 8 uses
  %.3269.fr443 = phi i32 [ %.13279, %bb.ah ], [ %.3269.fr443.ph, %.thread.preheader ] ; 6 uses
  %.0442 = phi i32 [ %.1, %bb.ah ], [ 0, %.thread.preheader ]
  %.0260441 = phi i32 [ %.1261, %bb.ah ], [ 0, %.thread.preheader ]
  %.0262440 = phi i32 [ %i.cy, %bb.ah ], [ 0, %.thread.preheader ]
  %i.ac = icmp eq i32 %.3269.fr443, 4             ; 2 uses
  %i.ad = add i32 %.3269.fr443, -1
  %i.ae = icmp ult i32 %i.ad, 4
  br i1 %i.ae, label %.critedge25, label %.thread398

.critedge25:                                      ; preds = %.thread
  %.not = icmp eq i32 %.0260441, 0
  br i1 %.not, label %bb.g, label %.thread338

bb.g:                                             ; preds = %.critedge25
  call void @wolfSSL_SetLoggingPrefix(ptr noundef nonnull @.str.38) #24
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.ag = call i32 @wolfSSL_negotiate(ptr noundef %i.af) #24
  %.not299 = icmp eq i32 %i.ag, 1
  br i1 %.not299, label %.thread338, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.ai = call i32 @wolfSSL_get_error(ptr noundef %i.ah, i32 noundef -1) #24 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 2
  br i1 %i.aj, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  switch i32 %.3269.fr443, label %bb.j [
    i32 4, label %bb.l
    i32 2, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.ak = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 33675) ; 0 uses
  %i.al = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite300 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.al) ; 0 uses
  %i.am = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.2399, ptr noundef nonnull @.str.2380) ; 0 uses
  %i.an = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite301 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.an) ; 0 uses
  %i.ao = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.ai, i32 noundef 2) ; 0 uses
  %i.ap = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite302 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.ap) ; 0 uses
  %i.aq = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.ar = call i32 @fflush(ptr noundef %i.aq)     ; 0 uses
  br label %.thread338

bb.k:                                             ; preds = %bb.h
  %spec.select413 = select i1 %i.ac, i32 2, i32 1
  %i.as = sext i1 %i.ac to i32
  %spec.select414 = add i32 %.3.fr444, %i.as
  br label %.thread338

bb.l:                                             ; preds = %bb.i, %bb.i
  %i.at = icmp eq i32 %.3.fr444, 2
  %spec.select415 = select i1 %i.at, i32 1, i32 %.3.fr444
  br label %.thread338

.thread338:                                       ; preds = %bb.l, %bb.k, %bb.j, %bb.g, %.critedge25
  %.5271 = phi i32 [ %.3269.fr443, %.critedge25 ], [ %.3269.fr443, %bb.g ], [ 0, %bb.j ], [ %.3.fr444, %bb.l ], [ %spec.select413, %bb.k ] ; 6 uses
  %.5 = phi i32 [ %.3.fr444, %.critedge25 ], [ %.3.fr444, %bb.g ], [ %.3.fr444, %bb.j ], [ %spec.select415, %bb.l ], [ %spec.select414, %bb.k ] ; 8 uses
  %.not311 = phi i1 [ false, %.critedge25 ], [ false, %bb.g ], [ true, %bb.j ], [ true, %bb.l ], [ true, %bb.k ] ; 2 uses
  %.1261 = phi i32 [ 1, %.critedge25 ], [ 1, %bb.g ], [ 0, %bb.j ], [ 0, %bb.l ], [ 0, %bb.k ]
  %.not303 = icmp eq i32 %.0442, 0
  br i1 %.not303, label %bb.m, label %.thread360

bb.m:                                             ; preds = %.thread338
  call void @wolfSSL_SetLoggingPrefix(ptr noundef nonnull @.str.40) #24
  %i.au = load i32, ptr %i.e, align 8, !tbaa !77  ; 2 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.aw = icmp eq i32 %.5271, 4                   ; 2 uses
  %i.ax = add i32 %.5271, -1
  %i.ay = icmp ult i32 %i.ax, 4
  br i1 %i.ay, label %bb.o, label %.thread349

bb.o:                                             ; preds = %bb.n
  %i.az = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.ba = call i32 @wolfSSL_inject(ptr noundef %i.az, ptr noundef nonnull %i.f, i32 noundef %i.au) #24 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 1
  br i1 %i.bb, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  switch i32 %.5271, label %bb.q [
    i32 4, label %bb.s
    i32 2, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  %i.bc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 33684) ; 0 uses
  %i.bd = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite304 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.bd) ; 0 uses
  %i.be = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.2479, ptr noundef nonnull @.str.22) ; 0 uses
  %i.bf = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite305 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.bf) ; 0 uses
  %i.bg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.ba, i32 noundef 1) ; 0 uses
  %i.bh = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite306 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.bh) ; 0 uses
  %i.bi = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.bj = call i32 @fflush(ptr noundef %i.bi)     ; 0 uses
  br label %.thread349

bb.r:                                             ; preds = %bb.o
  %spec.select416 = select i1 %i.aw, i32 2, i32 1
  %i.bk = sext i1 %i.aw to i32
  %spec.select417 = add nsw i32 %.5, %i.bk
  br label %.thread349

bb.s:                                             ; preds = %bb.p, %bb.p
  %i.bl = icmp eq i32 %.5, 2
  %spec.select418 = select i1 %i.bl, i32 1, i32 %.5
  br label %.thread349

.thread349:                                       ; preds = %bb.s, %bb.r, %bb.q, %bb.n
  %.7273 = phi i32 [ %.5271, %bb.n ], [ 0, %bb.q ], [ %.5, %bb.s ], [ %spec.select416, %bb.r ]
  %.7 = phi i32 [ %.5, %bb.n ], [ %.5, %bb.q ], [ %spec.select418, %bb.s ], [ %spec.select417, %bb.r ]
  call void @test_memio_clear_buffer(ptr noundef nonnull %0, i32 noundef 0) #24
  %i.bm = freeze i32 %.7
  br label %bb.t

bb.t:                                             ; preds = %.thread349, %bb.m
  %.8274 = phi i32 [ %.7273, %.thread349 ], [ %.5271, %bb.m ] ; 5 uses
  %.8 = phi i32 [ %i.bm, %.thread349 ], [ %.5, %bb.m ] ; 7 uses
  %i.bn = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.bo = call i32 @wolfSSL_negotiate(ptr noundef %i.bn) #24
  %.not307 = icmp eq i32 %i.bo, 1
  br i1 %.not307, label %.thread360, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = icmp eq i32 %.8274, 4                   ; 2 uses
  %i.bq = add i32 %.8274, -1
  %i.br = icmp ult i32 %i.bq, 4
  br i1 %i.br, label %bb.v, label %.thread360

bb.v:                                             ; preds = %bb.u
  %i.bs = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.bt = call i32 @wolfSSL_get_error(ptr noundef %i.bs, i32 noundef -1) #24 ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 2
  br i1 %i.bu, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  switch i32 %.8274, label %bb.x [
    i32 4, label %bb.z
    i32 2, label %bb.z
  ]

bb.x:                                             ; preds = %bb.w
  %i.bv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 33689) ; 0 uses
  %i.bw = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite308 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.bw) ; 0 uses
  %i.bx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.2431, ptr noundef nonnull @.str.2380) ; 0 uses
  %i.by = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite309 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.by) ; 0 uses
  %i.bz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.bt, i32 noundef 2) ; 0 uses
  %i.ca = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite310 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.ca) ; 0 uses
  %i.cb = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.cc = call i32 @fflush(ptr noundef %i.cb)     ; 0 uses
  br label %.thread360

bb.y:                                             ; preds = %bb.v
  %spec.select419 = select i1 %i.bp, i32 2, i32 1
  %i.cd = sext i1 %i.bp to i32
  %spec.select420 = add nsw i32 %.8, %i.cd
  br label %.thread360

bb.z:                                             ; preds = %bb.w, %bb.w
  %i.ce = icmp eq i32 %.8, 2
  %spec.select421 = select i1 %i.ce, i32 1, i32 %.8
  br label %.thread360

.thread360:                                       ; preds = %bb.z, %bb.y, %bb.x, %bb.t, %bb.u, %.thread338
  %.10276 = phi i32 [ %.5271, %.thread338 ], [ %.8274, %bb.t ], [ %.8274, %bb.u ], [ 0, %bb.x ], [ %.8, %bb.z ], [ %spec.select419, %bb.y ]
  %.10 = phi i32 [ %.5, %.thread338 ], [ %.8, %bb.t ], [ %.8, %bb.u ], [ %.8, %bb.x ], [ %spec.select421, %bb.z ], [ %spec.select420, %bb.y ]
  %i.cf = phi i1 [ false, %.thread338 ], [ false, %bb.t ], [ true, %bb.u ], [ true, %bb.x ], [ true, %bb.z ], [ true, %bb.y ]
  %.1 = phi i32 [ 1, %.thread338 ], [ 1, %bb.t ], [ 0, %bb.u ], [ 0, %bb.x ], [ 0, %bb.z ], [ 0, %bb.y ]
  %.10276.fr = freeze i32 %.10276                 ; 6 uses
  %.10.fr = freeze i32 %.10                       ; 8 uses
  br i1 %.not311, label %bb.aa, label %bb.ah

bb.aa:                                            ; preds = %.thread360
  call void @wolfSSL_SetLoggingPrefix(ptr noundef nonnull @.str.38) #24
  %i.cg = load i32, ptr %i.g, align 8, !tbaa !76  ; 2 uses
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  %i.ci = icmp eq i32 %.10276.fr, 4               ; 2 uses
  %i.cj = add i32 %.10276.fr, -1
  %i.ck = icmp ult i32 %i.cj, 4
  br i1 %i.ck, label %bb.ac, label %.thread371

bb.ac:                                            ; preds = %bb.ab
  %i.cl = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.cm = call i32 @wolfSSL_inject(ptr noundef %i.cl, ptr noundef nonnull %0, i32 noundef %i.cg) #24 ; 2 uses
  %i.cn = icmp eq i32 %i.cm, 1
  br i1 %i.cn, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  switch i32 %.10276.fr, label %bb.ae [
    i32 4, label %bb.ag
    i32 2, label %bb.ag
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.co = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 33698) ; 0 uses
  %i.cp = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite312 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.cp) ; 0 uses
  %i.cq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.2480, ptr noundef nonnull @.str.22) ; 0 uses
  %i.cr = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite313 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.cr) ; 0 uses
  %i.cs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.cm, i32 noundef 1) ; 0 uses
  %i.ct = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite314 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.ct) ; 0 uses
  %i.cu = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.cv = call i32 @fflush(ptr noundef %i.cu)     ; 0 uses
  br label %.thread371

bb.af:                                            ; preds = %bb.ac
  %spec.select422 = select i1 %i.ci, i32 2, i32 1
  %i.cw = sext i1 %i.ci to i32
  %spec.select423 = add i32 %.10.fr, %i.cw
  br label %.thread371

bb.ag:                                            ; preds = %bb.ad, %bb.ad
  %i.cx = icmp eq i32 %.10.fr, 2
  %spec.select424 = select i1 %i.cx, i32 1, i32 %.10.fr
  br label %.thread371

.thread371:                                       ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ab
  %.12278 = phi i32 [ %.10276.fr, %bb.ab ], [ 0, %bb.ae ], [ %.10.fr, %bb.ag ], [ %spec.select422, %bb.af ]
  %.12 = phi i32 [ %.10.fr, %bb.ab ], [ %.10.fr, %bb.ae ], [ %spec.select424, %bb.ag ], [ %spec.select423, %bb.af ]
  call void @test_memio_clear_buffer(ptr noundef nonnull %0, i32 noundef 1) #24
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aa, %.thread371, %.thread360
  %.13279 = phi i32 [ %.10276.fr, %.thread360 ], [ %.12278, %.thread371 ], [ %.10276.fr, %bb.aa ] ; 5 uses
  %.13 = phi i32 [ %.10.fr, %.thread360 ], [ %.12, %.thread371 ], [ %.10.fr, %bb.aa ] ; 10 uses
  call void @wolfSSL_SetLoggingPrefix(ptr noundef null) #24
  %i.cy = add nuw nsw i32 %.0262440, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.cy, 10
  br i1 %exitcond.not, label %.critedge23, label %.thread, !llvm.loop !196

.critedge23:                                      ; preds = %bb.ah
  %i.cz = icmp eq i32 %.13279, 4                  ; 2 uses
  %i.da = add i32 %.13279, -1
  %i.db = icmp ult i32 %i.da, 4
  br i1 %i.db, label %bb.ai, label %.thread398

bb.ai:                                            ; preds = %.critedge23
  br i1 %.not311, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  switch i32 %.13279, label %.critedge23.thread.thread408 [
    i32 4, label %.critedge23.thread
    i32 2, label %.critedge23.thread
  ]

.critedge23.thread.thread408:                     ; preds = %bb.aj
  %i.dc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 33704) ; 0 uses
  %i.dd = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite293 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.dd) ; 0 uses
  %i.de = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.2481, ptr noundef nonnull @.str.22) ; 0 uses
  %i.df = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite294 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.df) ; 0 uses
  %i.dg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.dh = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite295 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.dh) ; 0 uses
  %i.di = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.dj = call i32 @fflush(ptr noundef %i.di)     ; 0 uses
  br label %.thread398

bb.ak:                                            ; preds = %bb.ai
  %i.dk = sext i1 %i.cz to i32
  %spec.select425 = add i32 %.13, %i.dk
  %spec.select426 = select i1 %i.cz, i32 2, i32 1
  br label %.critedge23.thread.thread

.critedge23.thread:                               ; preds = %bb.aj, %bb.aj
  %i.dl = icmp eq i32 %.13, 2
  %spec.select427 = select i1 %i.dl, i32 1, i32 %.13 ; 2 uses
  %.pre = add i32 %.13, -1
  %i.dm = icmp ult i32 %.pre, 4
  %i.dn = icmp eq i32 %.13, 4
  br i1 %i.dm, label %.critedge23.thread.thread, label %.thread398

.critedge23.thread.thread:                        ; preds = %bb.ak, %.critedge23.thread
  %i.do = phi i1 [ false, %bb.ak ], [ %i.dn, %.critedge23.thread ] ; 2 uses
  %.15394 = phi i32 [ %spec.select425, %bb.ak ], [ %spec.select427, %.critedge23.thread ] ; 5 uses
  %.15281393 = phi i32 [ %spec.select426, %bb.ak ], [ %.13, %.critedge23.thread ]
  br i1 %i.cf, label %bb.al, label %bb.an

bb.al:                                            ; preds = %.critedge23.thread.thread
  switch i32 %.15281393, label %bb.am [
    i32 4, label %bb.ao
    i32 2, label %bb.ao
  ]

bb.am:                                            ; preds = %bb.al
  %i.dp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 33705) ; 0 uses
  %i.dq = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite296 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.dq) ; 0 uses
  %i.dr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.2482, ptr noundef nonnull @.str.22) ; 0 uses
  %i.ds = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite297 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.ds) ; 0 uses
  %i.dt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.du = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite298 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.du) ; 0 uses
  %i.dv = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.dw = call i32 @fflush(ptr noundef %i.dv)     ; 0 uses
  br label %.thread398

bb.an:                                            ; preds = %.critedge23.thread.thread
  %spec.select428 = select i1 %i.do, i32 2, i32 1
  %i.dx = sext i1 %i.do to i32
  %spec.select429 = add nsw i32 %.15394, %i.dx
  br label %.thread398

bb.ao:                                            ; preds = %bb.al, %bb.al
  %i.dy = icmp eq i32 %.15394, 2
  %spec.select430 = select i1 %i.dy, i32 1, i32 %.15394
  br label %.thread398

.thread398:                                       ; preds = %.thread, %.critedge23, %bb.ao, %bb.an, %bb.am, %.critedge23.thread.thread408, %.critedge23.thread
  %.17283 = phi i32 [ %.13, %.critedge23.thread ], [ 0, %.critedge23.thread.thread408 ], [ 0, %bb.am ], [ %.15394, %bb.ao ], [ %spec.select428, %bb.an ], [ %.13279, %.critedge23 ], [ %.3269.fr443, %.thread ] ; 5 uses
  %.17 = phi i32 [ %spec.select427, %.critedge23.thread ], [ %.13, %.critedge23.thread.thread408 ], [ %.15394, %bb.am ], [ %spec.select430, %bb.ao ], [ %spec.select429, %bb.an ], [ %.13, %.critedge23 ], [ %.3.fr444, %.thread ]
  %i.dz = load ptr, ptr %i.c, align 8, !tbaa !70
  call void @wolfSSL_free(ptr noundef %i.dz) #24
  %i.ea = load ptr, ptr %i.d, align 8, !tbaa !70
  call void @wolfSSL_free(ptr noundef %i.ea) #24
  %i.eb = load ptr, ptr %i.a, align 8, !tbaa !69
  call void @wolfSSL_CTX_free(ptr noundef %i.eb) #24
  %i.ec = load ptr, ptr %i.b, align 8, !tbaa !69
  call void @wolfSSL_CTX_free(ptr noundef %i.ec) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %.0264.fr = freeze i32 %.17
  %i.ed = add i32 %.17283, -1
  %i.ee = icmp ult i32 %i.ed, 4
  %or.cond = select i1 %i.h, i1 %i.ee, i1 false
  br i1 %or.cond, label %bb.b, label %.critedge, !llvm.loop !197

.critedge:                                        ; preds = %.thread398
  %i.ef = icmp eq i32 %.17283, 2
  %i.eg = icmp eq i32 %.17283, 4
  %i.eh = select i1 %i.eg, i32 3, i32 %.17283
  %i.ei = select i1 %i.ef, i32 1, i32 %i.eh
  ret i32 %i.ei
}

declare i32 @test_ocsp_status_callback() #2

declare i32 @test_ocsp_basic_verify() #2

declare i32 @test_ocsp_ancestor_responder_rejected() #2

declare i32 @test_ocsp_responder_keyhash_binding() #2

declare i32 @test_ocsp_response_parsing() #2

declare i32 @test_ocsp_certid_enc_dec() #2

declare i32 @test_ocsp_certid_dup() #2

declare i32 @test_ocsp_resp_find_status_serial_prefix() #2

declare i32 @test_ocsp_tls_cert_cb() #2

declare i32 @test_ocsp_cert_unknown_crl_fallback() #2

declare i32 @test_ocsp_cert_unknown_crl_fallback_nonleaf() #2

declare i32 @test_tls13_nonblock_ocsp_low_mfl() #2

declare i32 @test_ocsp_responder() #2

declare i32 @test_utils_memio_move_message() #2

declare i32 @test_tls12_unexpected_ccs() #2

declare i32 @test_tls13_unexpected_ccs() #2

declare i32 @test_tls12_curve_intersection() #2

declare i32 @test_tls12_dhe_rsa_pss_sigalg() #2

declare i32 @test_tls13_curve_intersection() #2

declare i32 @test_tls_certreq_order() #2

declare i32 @test_tls12_certreq_odd_sigalgs() #2

declare i32 @test_tls12_bad_cv_sig_alg() #2

declare i32 @test_tls12_no_null_compression() #2

declare i32 @test_tls12_ec_point_formats_no_uncompressed() #2

declare i32 @test_tls12_ec_point_formats_no_uncompressed_non_ecc() #2

declare i32 @test_tls12_etm_failed_resumption() #2

declare i32 @test_tls12_resume_ticket_wrong_suite() #2

declare i32 @test_tls12_resume_ticket_decline_fallback() #2

declare i32 @test_tls_set_session_min_downgrade() #2

declare i32 @test_tls12_session_id_resumption_sni_mismatch() #2

declare i32 @test_tls13_session_resumption_sni_mismatch() #2

declare i32 @test_tls13_resumption_with_alpn() #2

declare i32 @test_tls12_session_id_resumption_alpn_mismatch() #2

declare i32 @test_tls13_session_resumption_alpn_mismatch() #2

declare i32 @test_tls_set_curves_list_ecc_fallback() #2

declare i32 @test_tls12_corrupted_finished() #2

declare i32 @test_tls12_peerauth_failsafe() #2

declare i32 @test_tls12_ecdhe_ecdsa_rsa_client_cert() #2

declare i32 @test_tls12_ecdhe_rsa_ecdsa_client_cert() #2

declare i32 @test_wolfSSL_alert_type_string() #2

declare i32 @test_wolfSSL_alert_desc_string() #2

declare i32 @test_record_size_matches_build_message() #2

declare i32 @test_record_size_cache_invalidated_on_renegotiation() #2

declare i32 @test_wolfSSL_get_shared_ciphers() #2

declare i32 @test_wolfSSL_CTX_add_session() #2

declare i32 @test_wolfSSL_CTX_add_session_ext_tls13() #2

declare i32 @test_wolfSSL_CTX_add_session_ext_dtls13() #2

declare i32 @test_wolfSSL_CTX_add_session_ext_tls12() #2

declare i32 @test_wolfSSL_CTX_add_session_ext_dtls12() #2

declare i32 @test_wolfSSL_CTX_add_session_ext_tls11() #2

declare i32 @test_wolfSSL_CTX_add_session_ext_dtls1() #2

declare i32 @test_wolfSSL_SESSION() #2

declare i32 @test_wolfSSL_SESSION_expire_downgrade() #2

declare i32 @test_wolfSSL_CTX_sess_set_remove_cb() #2

declare i32 @test_wolfSSL_ticket_keys() #2

declare i32 @test_wolfSSL_SESSION_get_ex_new_index() #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_wc_DhSetNamedKey() #0 {
bb.a:
  %i.a = tail call ptr @wolfSSL_Malloc(i64 noundef 3136) #24 ; 5 uses
  %.not.not = icmp eq ptr %i.a, null
  br i1 %.not.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.b = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 4242) ; 0 uses
  %i.c = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.c) ; 0 uses
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull @.str.2483) ; 0 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite97 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.e) ; 0 uses
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2484) ; 0 uses
  %i.g = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite98 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.g) ; 0 uses
  %i.h = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.i = tail call i32 @fflush(ptr noundef %i.h)  ; 0 uses
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i32 @wc_InitDhKey_ex(ptr noundef nonnull %i.a, ptr noundef null, i32 noundef -2) #24
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.f

end_hunk_2
