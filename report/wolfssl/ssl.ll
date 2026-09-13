Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/ssl?download=true
inline.NumInlined: 157
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@TLSX_SNI_GetFromBuffer

; Function Attrs: nounwind uwtable
define i32 @wolfSSL_UseSupportedCurve(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i32 @isValidCurveGroup(i16 noundef zeroext %1)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = or i64 %i.d, 17592186044416
  store i64 %i.e, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !149
  %i.i = trunc i64 %i.d to i32
  %i.j = lshr i32 %i.i, 4
  %i.k = and i32 %i.j, 3
  %i.l = tail call i32 @TLSX_UseSupportedCurve(ptr noundef nonnull %i.f, i16 noundef zeroext %1, ptr noundef %i.h, i32 noundef %i.k) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.l, %bb.c ], [ -173, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc range(i32 0, 2) i32 @isValidCurveGroup(i16 noundef zeroext %0) unnamed_addr #7 {
bb.a:
  switch i16 %0, label %bb.b [
    i16 15, label %bb.c
    i16 16, label %bb.c
    i16 17, label %bb.c
    i16 18, label %bb.c
    i16 19, label %bb.c
    i16 20, label %bb.c
    i16 21, label %bb.c
    i16 22, label %bb.c
    i16 23, label %bb.c
    i16 24, label %bb.c
    i16 25, label %bb.c
    i16 26, label %bb.c
    i16 27, label %bb.c
    i16 28, label %bb.c
    i16 41, label %bb.c
    i16 29, label %bb.c
    i16 30, label %bb.c
    i16 31, label %bb.c
    i16 32, label %bb.c
    i16 33, label %bb.c
    i16 256, label %bb.c
    i16 257, label %bb.c
    i16 258, label %bb.c
    i16 259, label %bb.c
    i16 260, label %bb.c
    i16 4589, label %bb.c
    i16 4588, label %bb.c
    i16 4587, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ]
  ret i32 %.0
}

declare i32 @TLSX_UseSupportedCurve(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @wolfSSL_CTX_UseSupportedCurve(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i32 @isValidCurveGroup(i16 noundef zeroext %1)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i8 1, ptr %i.c, align 8, !tbaa !283
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !120
  %i.g = load ptr, ptr %0, align 8, !tbaa !111
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.i = load i8, ptr %i.h, align 1, !tbaa !113
  %i.j = zext i8 %i.i to i32
  %i.k = tail call i32 @TLSX_UseSupportedCurve(ptr noundef nonnull %i.d, i16 noundef zeroext %1, ptr noundef %i.f, i32 noundef %i.j) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.k, %bb.c ], [ -173, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -173, 2) i32 @wolfSSL_CTX_DisableExtendedMasterSecret(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 173 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1
  %i.d = and i8 %i.c, -2
  store i8 %i.d, ptr %i.b, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -173, 2) i32 @wolfSSL_DisableExtendedMasterSecret(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, -2199023255553
  store i64 %i.d, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @wolfSSL_CTX_set_servername_callback(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr %1, ptr %i.a, align 8, !tbaa !284
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 0, 2) i32 @wolfSSL_CTX_set_servername_arg(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr %1, ptr %i.a, align 8, !tbaa !285
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @wolfSSL_X509_check_host(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca [1 x %struct.DecodedCert], align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond.not46 = and i1 %i.a, %i.b
  %i.c = and i32 %3, 14
  %i.d = icmp eq i32 %i.c, 0
  %or.cond40 = and i1 %or.cond.not46, %i.d
  br i1 %or.cond40, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !174  ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !35
  call void @InitDecodedCert(ptr noundef nonnull %5, ptr noundef %i.g, i32 noundef %i.i, ptr noundef null) #23
  %i.j = call i32 @ParseCertRelative(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null) #23
  %.not35 = icmp eq i32 %i.j, 0
  br i1 %.not35, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %2, 0
  br i1 %i.k, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %.not36 = icmp ne i64 %2, 1
  %i.l = add i64 %2, -1
  br label %.lr.ph

bb.d:                                             ; preds = %bb.c
  %i.m = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  br label %.loopexit

bb.e:                                             ; preds = %.lr.ph
  %i.n = add nuw i64 %.047, 1                     ; 2 uses
  %6 = icmp ugt i64 %i.l, %i.n
  %7 = select i1 %.not36, i1 %6, i1 false
  br i1 %7, label %.lr.ph, label %.loopexit, !llvm.loop !286

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %.047 = phi i64 [ %i.n, %bb.e ], [ 0, %.preheader ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.047
  %i.p = load i8, ptr %i.o, align 1, !tbaa !52
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %.thread, label %bb.e

.loopexit:                                        ; preds = %bb.e, %bb.d
  %.028 = phi i64 [ %i.m, %bb.d ], [ %2, %bb.e ]  ; 4 uses
  %i.r = icmp ugt i64 %.028, 1
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit
  %i.s = getelementptr i8, ptr %1, i64 %.028
  %i.t = getelementptr i8, ptr %i.s, i64 -1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !52
  %i.v = icmp eq i8 %i.u, 0
  %i.w = sext i1 %i.v to i64
  %spec.select = add i64 %.028, %i.w
  br label %bb.g

.thread:                                          ; preds = %.lr.ph, %bb.b
  call void @FreeDecodedCert(ptr noundef nonnull %5) #23
  br label %bb.h

bb.g:                                             ; preds = %.loopexit, %bb.f
  %.1 = phi i64 [ %.028, %.loopexit ], [ %spec.select, %bb.f ]
  %i.x = call i32 @CheckHostName(ptr noundef nonnull %5, ptr noundef nonnull %1, i64 noundef %.1, i32 noundef %3, i8 noundef zeroext 0) #23
  %.fr = freeze i32 %i.x
  %i.y = icmp eq i32 %.fr, 0
  call void @FreeDecodedCert(ptr noundef nonnull %5) #23
  %spec.select43 = zext i1 %i.y to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread, %bb.a
  %.027 = phi i32 [ 0, %bb.a ], [ 0, %.thread ], [ %spec.select43, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret i32 %.027
}

declare i32 @CheckHostName(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @wolfSSL_X509_check_ip_asc(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %struct.DecodedCert], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !174  ; 3 uses
  %i.d = icmp ne ptr %i.c, null
  %i.e = icmp ne ptr %1, null
  %or.cond.not = and i1 %i.e, %i.d
  br i1 %or.cond.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !35
  call void @InitDecodedCert(ptr noundef nonnull %3, ptr noundef %i.f, i32 noundef %i.h, ptr noundef null) #23
  %i.i = call i32 @ParseCertRelative(ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null) #23
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = call i32 @CheckIPAddr(ptr noundef nonnull %3, ptr noundef nonnull %1) #23
  %.not11 = icmp eq i32 %i.j, 0
  %. = zext i1 %.not11 to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ 0, %bb.c ], [ %., %bb.d ]
  call void @FreeDecodedCert(ptr noundef nonnull %3) #23
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.e, %bb.b
  %.2 = phi i32 [ %.1, %bb.e ], [ 0, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i32 %.2
}

declare i32 @CheckIPAddr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @wolfSSL_X509_STORE_CTX_new_ex(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @wolfSSL_Malloc(i64 noundef 72) #23 ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %i.b, align 8, !tbaa !287
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define void @wolfSSL_X509_STORE_CTX_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @wolfSSL_Free(ptr noundef nonnull %0) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @wolfSSL_X509_STORE_CTX_get_error(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !288
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @wolfSSL_X509_STORE_CTX_get_error_depth(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !289
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

declare i32 @wc_FreeMutex(ptr noundef) local_unnamed_addr #2

declare ptr @wolfTLSv1_2_client_method_ex(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #6

declare void @InitDecodedCert_ex(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_CheckPrivateKeyCert(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SendData(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ReceiveData(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @AllocCopyDer(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @GetSequence_ex(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_RsaPrivateKeyValidate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_ecc_init_ex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_EccPrivateKeyDecode(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_ecc_size(ptr noundef) local_unnamed_addr #2

declare i32 @wc_ecc_free(ptr noundef) local_unnamed_addr #2

declare i32 @DecodeToKey(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_RsaPublicKeyDecode_ex(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_ecc_get_curve_size_from_id(i32 noundef) local_unnamed_addr #2

declare i32 @wc_ReadDirFirst(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_ReadDirNext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @wc_ReadDirClose(ptr noundef) local_unnamed_addr #2

declare i32 @wc_InitDhKey(ptr noundef) local_unnamed_addr #2

declare i32 @wc_DhSetCheckKey(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_FreeDhKey(ptr noundef) local_unnamed_addr #2

end_hunk_0
