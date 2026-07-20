inline.NumInlined: 3
inline.NumDeleted: 2
begin_hunk_0_@mbedtls_pem_read_buffer:bb.a
  br i1 %i.cd, label %bb.au, label %bb.z

bb.z:                                             ; preds = %.thread158, %bb.y
  %.2162 = phi i32 [ %.1, %.thread158 ], [ %.0119, %bb.y ]
  %.4161 = phi ptr [ %i.dx, %.thread158 ], [ %.3128, %bb.y ] ; 2 uses
  %i.dy = load i8, ptr %.4161, align 1, !tbaa !8
  %i.dz = icmp eq i8 %i.dy, 13
  %spec.select157.idx = zext i1 %i.dz to i64
  %spec.select157 = getelementptr inbounds nuw i8, ptr %.4161, i64 %spec.select157.idx ; 2 uses
  %i.ea = load i8, ptr %spec.select157, align 1, !tbaa !8
  %i.eb = icmp eq i8 %i.ea, 10
  br i1 %i.eb, label %bb.aa, label %bb.au

bb.aa:                                            ; preds = %bb.z
  %i.ec = getelementptr inbounds nuw i8, ptr %spec.select157, i64 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.f, %bb.e
  %.not152 = phi i1 [ false, %bb.aa ], [ true, %bb.f ], [ true, %bb.e ]
  %.6 = phi ptr [ %i.ec, %bb.aa ], [ %i.o, %bb.f ], [ %i.o, %bb.e ] ; 4 uses
  %.3 = phi i32 [ %.2162, %bb.aa ], [ 0, %bb.f ], [ 0, %bb.e ]
  %.not150 = icmp ult ptr %.6, %i.f
  br i1 %.not150, label %bb.ac, label %bb.au

bb.ac:                                            ; preds = %bb.ab
  %i.ed = ptrtoint ptr %.6 to i64
  %i.ee = sub i64 %i.aa, %i.ed                    ; 2 uses
  %i.ef = call i32 @mbedtls_base64_decode(ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %.6, i64 noundef %i.ee) #10
  %i.eg = icmp eq i32 %i.ef, -44
  br i1 %i.eg, label %bb.au, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eh = load i64, ptr %i.a, align 8, !tbaa !9   ; 3 uses
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %bb.au, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ej = call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.eh) #12 ; 14 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %bb.au, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.el = call i32 @mbedtls_base64_decode(ptr noundef nonnull %i.ej, i64 noundef %i.eh, ptr noundef nonnull %i.a, ptr noundef nonnull %.6, i64 noundef %i.ee) #10 ; 2 uses
  %.not151 = icmp eq i32 %i.el, 0
  br i1 %.not151, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.em = load i64, ptr %i.a, align 8, !tbaa !9
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.ej, i64 noundef %i.em) #10
  %i.en = add nsw i32 %i.el, -4352
  br label %bb.au

bb.ah:                                            ; preds = %bb.af
  br i1 %.not152, label %._crit_edge, label %bb.ai

._crit_edge:                                      ; preds = %bb.ah
  %.pre = load i64, ptr %i.a, align 8, !tbaa !9
  br label %.thread175

bb.ai:                                            ; preds = %bb.ah
  %i.eo = icmp eq ptr %4, null
  br i1 %i.eo, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ep = load i64, ptr %i.a, align 8, !tbaa !9
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.ej, i64 noundef %i.ep) #10
  br label %bb.au

bb.ak:                                            ; preds = %bb.ai
  switch i32 %.3, label %.thread165 [
    i32 37, label %bb.al
    i32 33, label %bb.am
    i32 5, label %bb.an
    i32 6, label %bb.ao
    i32 7, label %bb.ap
  ]

bb.al:                                            ; preds = %bb.ak
  %i.eq = load i64, ptr %i.a, align 8, !tbaa !9
  %i.er = call fastcc i32 @pem_des3_decrypt(ptr noundef %i.b, ptr noundef %i.ej, i64 noundef %i.eq, ptr noundef %4, i64 noundef %5)
  br label %.thread163

bb.am:                                            ; preds = %bb.ak
  %i.es = load i64, ptr %i.a, align 8, !tbaa !9
  %i.et = call fastcc i32 @pem_des_decrypt(ptr noundef %i.b, ptr noundef %i.ej, i64 noundef %i.es, ptr noundef %4, i64 noundef %5)
  br label %.thread163

bb.an:                                            ; preds = %bb.ak
  %i.eu = load i64, ptr %i.a, align 8, !tbaa !9
  %i.ev = call fastcc i32 @pem_aes_decrypt(ptr noundef %i.b, i32 noundef 16, ptr noundef %i.ej, i64 noundef %i.eu, ptr noundef %4, i64 noundef %5)
  br label %.thread163

bb.ao:                                            ; preds = %bb.ak
  %i.ew = load i64, ptr %i.a, align 8, !tbaa !9
  %i.ex = call fastcc i32 @pem_aes_decrypt(ptr noundef %i.b, i32 noundef 24, ptr noundef %i.ej, i64 noundef %i.ew, ptr noundef %4, i64 noundef %5)
  br label %.thread163

bb.ap:                                            ; preds = %bb.ak
  %i.ey = load i64, ptr %i.a, align 8, !tbaa !9
  %i.ez = call fastcc i32 @pem_aes_decrypt(ptr noundef %i.b, i32 noundef 32, ptr noundef %i.ej, i64 noundef %i.ey, ptr noundef %4, i64 noundef %5)
  br label %.thread163

.thread163:                                       ; preds = %bb.al, %bb.am, %bb.ao, %bb.ap, %bb.an
  %.1130 = phi i32 [ %i.ev, %bb.an ], [ %i.ex, %bb.ao ], [ %i.ez, %bb.ap ], [ %i.et, %bb.am ], [ %i.er, %bb.al ] ; 2 uses
  %.not153 = icmp eq i32 %.1130, 0
  br i1 %.not153, label %.thread165, label %bb.aq

bb.aq:                                            ; preds = %.thread163
  %i.fa = load i64, ptr %i.a, align 8, !tbaa !9
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.ej, i64 noundef %i.fa) #10
  br label %bb.au

.thread165:                                       ; preds = %bb.ak, %.thread163
  %i.fb = load i64, ptr %i.a, align 8, !tbaa !9   ; 6 uses
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %.loopexit, label %bb.ar

bb.ar:                                            ; preds = %.thread165
  %i.fd = getelementptr i8, ptr %i.ej, i64 %i.fb
  %i.fe = getelementptr i8, ptr %i.fd, i64 -1
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !8   ; 3 uses
  %i.fg = zext i8 %i.ff to i64                    ; 2 uses
  %i.fh = icmp ult i64 %i.fb, %i.fg
  br i1 %i.fh, label %.loopexit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fi = sub nuw i64 %i.fb, %i.fg                ; 3 uses
  %.not21.i = icmp eq i8 %i.ff, 0
  br i1 %.not21.i, label %.thread175, label %.lr.ph.i

bb.at:                                            ; preds = %.lr.ph.i
  %i.fj = add nuw i64 %.018.i, 1                  ; 2 uses
  %i.fk = icmp ult i64 %i.fj, %i.fb
  br i1 %i.fk, label %.lr.ph.i, label %.thread175, !llvm.loop !11

.lr.ph.i:                                         ; preds = %bb.as, %bb.at
  %.018.i = phi i64 [ %i.fj, %bb.at ], [ %i.fi, %bb.as ] ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.018.i
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !8
  %.not.i = icmp eq i8 %i.fm, %i.ff
  br i1 %.not.i, label %bb.at, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i, %bb.ar, %.thread165
  %.1.i.ph = phi i32 [ -4352, %.thread165 ], [ -4992, %bb.ar ], [ -4992, %.lr.ph.i ]
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.ej, i64 noundef %i.fb) #10
  br label %bb.au

.thread175:                                       ; preds = %bb.at, %bb.as, %._crit_edge
  %i.fn = phi i64 [ %.pre, %._crit_edge ], [ %i.fi, %bb.as ], [ %i.fi, %bb.at ]
  store ptr %i.ej, ptr %0, align 8, !tbaa !13
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.fn, ptr %i.fo, align 8, !tbaa !17
  br label %bb.au

bb.au:                                            ; preds = %.loopexit, %bb.ac, %bb.ae, %bb.ad, %bb.ab, %bb.z, %bb.y, %bb.w, %bb.x, %bb.v, %bb.s, %bb.n, %bb.o, %bb.j, %bb.k, %bb.g, %bb.d, %bb.c, %bb.b, %bb.a, %.thread175, %bb.aq, %bb.aj, %bb.ag
  %.1124 = phi i32 [ -4224, %bb.c ], [ -5248, %bb.a ], [ -4224, %bb.b ], [ -4352, %bb.g ], [ -4608, %bb.n ], [ -4736, %bb.v ], [ -4608, %bb.w ], [ -4352, %bb.z ], [ -4480, %bb.ae ], [ -4352, %bb.ab ], [ -5248, %bb.ad ], [ %i.en, %bb.ag ], [ -4864, %bb.aj ], [ %.1130, %bb.aq ], [ 0, %.thread175 ], [ %.1.i.ph, %.loopexit ], [ -4736, %bb.y ], [ -4736, %bb.s ], [ -4608, %bb.j ], [ -4224, %bb.d ], [ -4608, %bb.k ], [ -4608, %bb.o ], [ -4608, %bb.x ], [ -4396, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.1124
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 -4608, 1) i32 @pem_get_iv(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i64 noundef range(i64 8, 17) %2) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, i8 0, i64 %2, i1 false)
  %i.a = shl nuw nsw i64 %2, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.e
  %.02432 = phi i64 [ 0, %bb.a ], [ %i.p, %bb.e ] ; 3 uses
  %.02531 = phi ptr [ %0, %bb.a ], [ %i.q, %bb.e ] ; 2 uses
  %i.b = load i8, ptr %.02531, align 1, !tbaa !8  ; 4 uses
  %i.c = zext i8 %i.b to i64
  %i.d = add i8 %i.b, -48
  %or.cond = icmp ult i8 %i.d, 10
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add i8 %i.b, -65
  %or.cond29 = icmp ult i8 %i.e, 6
  br i1 %or.cond29, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = add i8 %i.b, -97
  %or.cond30 = icmp ult i8 %i.f, 6
  br i1 %or.cond30, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sink = phi i64 [ 4294967248, %bb.b ], [ 4294967241, %bb.c ], [ 4294967209, %bb.d ]
  %i.g = add nuw nsw i64 %.sink, %i.c
  %i.h = shl nuw nsw i64 %.02432, 2
  %3 = and i64 %i.h, 4
  %i.i = xor i64 %3, 4
  %i.j = shl nuw nsw i64 %i.g, %i.i
  %i.k = lshr i64 %.02432, 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.k ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !8
  %i.n = trunc i64 %i.j to i8
  %i.o = or i8 %i.m, %i.n
  store i8 %i.o, ptr %i.l, align 1, !tbaa !8
  %i.p = add nuw nsw i64 %.02432, 1               ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.02531, i64 1
  %exitcond.not = icmp eq i64 %i.p, %i.a
  br i1 %exitcond.not, label %bb.f, label %bb.b, !llvm.loop !18

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ -4608, %bb.d ], [ 0, %bb.e ]
  ret i32 %.0
}

declare i32 @mbedtls_base64_decode(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

declare void @mbedtls_zeroize_and_free(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc i32 @pem_des3_decrypt(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2, ptr noundef nonnull %3, i64 noundef %4) unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.mbedtls_des3_context, align 4 ; 6 uses
  %i.a = alloca [24 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @mbedtls_des3_init(ptr noundef nonnull %5) #10
  %i.b = call fastcc i32 @pem_pbkdf1(ptr noundef %i.a, i64 noundef 24, ptr noundef %0, ptr noundef %3, i64 noundef %4) ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 @mbedtls_des3_set3key_dec(ptr noundef nonnull %5, ptr noundef nonnull %i.a) #10 ; 2 uses
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = call i32 @mbedtls_des3_crypt_cbc(ptr noundef nonnull %5, i32 noundef 0, i64 noundef %2, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %1) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.b, %bb.a ], [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  call void @mbedtls_des3_free(ptr noundef nonnull %5) #10
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.a, i64 noundef 24) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @pem_des_decrypt(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2, ptr noundef nonnull %3, i64 noundef %4) unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.mbedtls_des_context, align 4 ; 6 uses
  %i.a = alloca [8 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @mbedtls_des_init(ptr noundef nonnull %5) #10
  %i.b = call fastcc i32 @pem_pbkdf1(ptr noundef %i.a, i64 noundef 8, ptr noundef %0, ptr noundef %3, i64 noundef %4) ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 @mbedtls_des_setkey_dec(ptr noundef nonnull %5, ptr noundef nonnull %i.a) #10 ; 2 uses
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = call i32 @mbedtls_des_crypt_cbc(ptr noundef nonnull %5, i32 noundef 0, i64 noundef %2, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %1) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.b, %bb.a ], [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  call void @mbedtls_des_free(ptr noundef nonnull %5) #10
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.a, i64 noundef 8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @pem_aes_decrypt(ptr noundef nonnull %0, i32 noundef range(i32 16, 33) %1, ptr noundef nonnull %2, i64 noundef %3, ptr noundef nonnull %4, i64 noundef %5) unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.mbedtls_aes_context, align 8 ; 6 uses
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @mbedtls_aes_init(ptr noundef nonnull %6) #10
  %i.b = zext nneg i32 %1 to i64                  ; 2 uses
  %i.c = call fastcc i32 @pem_pbkdf1(ptr noundef %i.a, i64 noundef %i.b, ptr noundef %0, ptr noundef %4, i64 noundef %5) ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = shl nuw nsw i32 %1, 3
  %i.e = call i32 @mbedtls_aes_setkey_dec(ptr noundef nonnull %6, ptr noundef nonnull %i.a, i32 noundef %i.d) #10 ; 2 uses
  %.not12 = icmp eq i32 %i.e, 0
  br i1 %.not12, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = call i32 @mbedtls_aes_crypt_cbc(ptr noundef nonnull %6, i32 noundef 0, i64 noundef %3, ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %2) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.c, %bb.a ], [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  call void @mbedtls_aes_free(ptr noundef nonnull %6) #10
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.a, i64 noundef %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define void @mbedtls_pem_free(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !17
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.b, i64 noundef %i.d) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  tail call void @free(ptr noundef %i.f) #10
  tail call void @mbedtls_platform_zeroize(ptr noundef nonnull %0, i64 noundef 24) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

declare void @mbedtls_platform_zeroize(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define i32 @mbedtls_pem_write_buffer(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = call i32 @mbedtls_base64_encode(ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.a, ptr noundef %2, i64 noundef %3) #10 ; 0 uses
  %i.c = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #11
  %i.d = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #11
  %i.e = load i64, ptr %i.a, align 8, !tbaa !9    ; 5 uses
  %i.f = call i64 @llvm.usub.sat.i64(i64 %i.e, i64 2)
  %i.g = lshr i64 %i.f, 6
  %i.h = add i64 %i.c, 1
  %i.i = add i64 %i.h, %i.d
  %i.j = add i64 %i.i, %i.e
  %i.k = add i64 %i.j, %i.g                       ; 2 uses
  %i.l = icmp ugt i64 %i.k, %5
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.k, ptr %6, align 8, !tbaa !9
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.e) #12 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.044 = phi ptr [ %i.m, %bb.d ], [ null, %bb.c ] ; 4 uses
  %i.o = call i32 @mbedtls_base64_encode(ptr noundef %.044, i64 noundef %i.e, ptr noundef nonnull %i.a, ptr noundef %2, i64 noundef %3) #10 ; 2 uses
  %.not52 = icmp eq i32 %i.o, 0
  br i1 %.not52, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef %.044) #10
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.p = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #11
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr nonnull align 1 %0, i64 %i.p, i1 false)
  %i.q = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #11
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 %i.q ; 2 uses
  %.pr = load i64, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %.not5354 = icmp eq i64 %.pr, 0
  br i1 %.not5354, label %._crit_edge, label %.lr.ph
end_hunk_0
