inline.NumInlined: 13
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@mbedtls_pkcs5_pbes2_ext:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  br label %.critedge

pkcs5_parse_pbkdf2_params.exit:                   ; preds = %bb.l, %bb.j, %bb.h, %bb.g
  %.0.i.in = phi i32 [ %i.ap, %bb.h ], [ %i.as, %bb.j ], [ %i.ak, %bb.g ], [ %i.av, %bb.l ]
  %.0.i = add nsw i32 %.0.i.in, -12032            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  %.not44 = icmp eq i32 %.0.i, 0
  br i1 %.not44, label %bb.o, label %.critedge

bb.o:                                             ; preds = %pkcs5_parse_pbkdf2_params.exit.thread, %pkcs5_parse_pbkdf2_params.exit
  %i.ay = call i32 @mbedtls_asn1_get_alg(ptr noundef nonnull %i.d, ptr noundef %i.m, ptr noundef nonnull %11, ptr noundef nonnull %13) #6 ; 2 uses
  %.not45 = icmp eq i32 %i.ay, 0
  br i1 %.not45, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = add nsw i32 %i.ay, -12032
  br label %.critedge

bb.q:                                             ; preds = %bb.o
  %i.ba = call i32 @mbedtls_oid_get_cipher_alg(ptr noundef nonnull %11, ptr noundef nonnull %i.h) #6
  %.not46 = icmp eq i32 %i.ba, 0
  br i1 %.not46, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.bb = load i32, ptr %i.h, align 4, !tbaa !4
  %i.bc = call ptr @mbedtls_cipher_info_from_type(i32 noundef %i.bb) #6 ; 3 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = getelementptr i8, ptr %i.bc, i64 8      ; 2 uses
  %.val = load i32, ptr %i.be, align 8
  %i.bf = lshr i32 %.val, 5
  %i.bg = and i32 %i.bf, 120
  store i32 %i.bg, ptr %i.c, align 4, !tbaa !4
  %i.bh = load i32, ptr %13, align 8, !tbaa !16
  %.not47 = icmp eq i32 %i.bh, 4
  br i1 %.not47, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !15
  %.val54 = load i32, ptr %i.be, align 8          ; 2 uses
  %i.bk = lshr i32 %.val54, 3
  %i.bl = and i32 %i.bk, 28
  %i.bm = zext nneg i32 %i.bl to i64
  %.not48 = icmp eq i64 %i.bj, %i.bm
  br i1 %.not48, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.bn = icmp eq i32 %1, 0
  %i.bo = icmp ult i64 %7, %5
  %or.cond = and i1 %i.bn, %i.bo
  br i1 %or.cond, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = icmp eq i32 %1, 1
  br i1 %i.bp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bq = and i32 %.val54, 31                     ; 2 uses
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = urem i64 %5, %i.br
  %i.bt = trunc nuw nsw i64 %i.bs to i32
  %i.bu = sub nsw i32 %i.bq, %i.bt
  %i.bv = zext i32 %i.bu to i64
  %i.bw = add i64 %5, %i.bv
  %i.bx = icmp ult i64 %7, %i.bw
  br i1 %i.bx, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  call void @mbedtls_cipher_init(ptr noundef nonnull %15) #6
  %i.by = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !10
  %i.ca = load i64, ptr %i.bi, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.g, ptr align 1 %i.bz, i64 %i.ca, i1 false)
  %i.cb = load i32, ptr %i.e, align 4, !tbaa !4
  %i.cc = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !10
  %i.ce = load i64, ptr %i.aj, align 8, !tbaa !15
  %i.cf = load i32, ptr %i.b, align 4, !tbaa !4
  %i.cg = load i32, ptr %i.c, align 4, !tbaa !4
  %i.ch = call i32 @mbedtls_pkcs5_pbkdf2_hmac_ext(i32 noundef %i.cb, ptr noundef %2, i64 noundef %3, ptr noundef %i.cd, i64 noundef %i.ce, i32 noundef %i.cf, i32 noundef %i.cg, ptr noundef nonnull %i.f) ; 2 uses
  %.not49 = icmp eq i32 %i.ch, 0
  br i1 %.not49, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.ci = call i32 @mbedtls_cipher_setup(ptr noundef nonnull %15, ptr noundef nonnull %i.bc) #6 ; 2 uses
  %.not50 = icmp eq i32 %i.ci, 0
  br i1 %.not50, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.cj = load i32, ptr %i.c, align 4, !tbaa !4
  %i.ck = shl nsw i32 %i.cj, 3
  %i.cl = call i32 @mbedtls_cipher_setkey(ptr noundef nonnull %15, ptr noundef nonnull %i.f, i32 noundef %i.ck, i32 noundef %1) #6 ; 2 uses
  %.not51 = icmp eq i32 %i.cl, 0
  br i1 %.not51, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.cm = call i32 @mbedtls_cipher_set_padding_mode(ptr noundef nonnull %15, i32 noundef 0) #6 ; 2 uses
  %.not52 = icmp eq i32 %i.cm, 0
  br i1 %.not52, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cn = load i64, ptr %i.bi, align 8, !tbaa !15
  %i.co = call i32 @mbedtls_cipher_crypt(ptr noundef nonnull %15, ptr noundef nonnull %i.g, i64 noundef %i.cn, ptr noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef %8) #6
  %.not53 = icmp eq i32 %i.co, 0
  %spec.store.select = select i1 %.not53, i32 0, i32 -11776
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.ab
  %.033 = phi i32 [ %i.ch, %bb.x ], [ %i.ci, %bb.y ], [ %i.cl, %bb.z ], [ %spec.store.select, %bb.ab ], [ %i.cm, %bb.aa ]
  call void @mbedtls_cipher_free(ptr noundef nonnull %15) #6
  br label %.critedge

.critedge:                                        ; preds = %pkcs5_parse_pbkdf2_params.exit.thread58, %bb.a, %bb.d, %bb.w, %bb.u, %bb.s, %bb.t, %bb.r, %bb.q, %pkcs5_parse_pbkdf2_params.exit, %bb.e, %bb.ac, %bb.p, %bb.c
  %.0 = phi i32 [ -12032, %bb.t ], [ %i.p, %bb.c ], [ -11904, %bb.d ], [ -11904, %bb.e ], [ %i.az, %bb.p ], [ %.0.i, %pkcs5_parse_pbkdf2_params.exit ], [ -11904, %bb.q ], [ -11904, %bb.r ], [ -12032, %bb.s ], [ -108, %bb.u ], [ %.033, %bb.ac ], [ -108, %bb.w ], [ -12130, %bb.a ], [ %.0.i.ph, %pkcs5_parse_pbkdf2_params.exit.thread58 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @mbedtls_asn1_get_alg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @mbedtls_oid_get_cipher_alg(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @mbedtls_cipher_info_from_type(i32 noundef) local_unnamed_addr #2

declare void @mbedtls_cipher_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define i32 @mbedtls_pkcs5_pbkdf2_hmac_ext(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef writeonly captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.mbedtls_md_context_t, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #6
  %i.a = tail call ptr @mbedtls_md_info_from_type(i32 noundef %0) #6 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @mbedtls_md_init(ptr noundef nonnull %8) #6
  %i.c = call i32 @mbedtls_md_setup(ptr noundef nonnull %8, ptr noundef nonnull %i.a, i32 noundef 1) #6 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = call fastcc i32 @pkcs5_pbkdf2_hmac(ptr noundef nonnull %8, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  call void @mbedtls_md_free(ptr noundef nonnull %8) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.011 = phi i32 [ %.0, %bb.d ], [ -11904, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  ret i32 %.011
}

declare i32 @mbedtls_cipher_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @mbedtls_cipher_setkey(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @mbedtls_cipher_set_padding_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @mbedtls_cipher_crypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mbedtls_cipher_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @mbedtls_pkcs5_pbkdf2_hmac(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef writeonly captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @pkcs5_pbkdf2_hmac(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @pkcs5_pbkdf2_hmac(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef writeonly captures(none) %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 12 uses
  %i.b = alloca [64 x i8], align 16               ; 14 uses
  %i.c = alloca [4 x i8], align 4                 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.d = load ptr, ptr %0, align 8, !tbaa !17
  %i.e = tail call zeroext i8 @mbedtls_md_get_size(ptr noundef %i.d) #6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 16777216, ptr %i.c, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 4 uses
  %i.g = tail call i32 @mbedtls_md_hmac_starts(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #6 ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.preheader64, label %bb.t

.preheader64:                                     ; preds = %bb.a
  %.not5273 = icmp eq i32 %6, 0
  br i1 %.not5273, label %.loopexit, label %.lr.ph76

.lr.ph76:                                         ; preds = %.preheader64
  %i.h = zext i8 %i.e to i64                      ; 8 uses
  %i.i = icmp ugt i32 %5, 1
  %.not.i67 = icmp ult i8 %i.e, 8
  %i.j = zext i8 %i.e to i32                      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 4 uses
  br i1 %i.i, label %.lr.ph76.split.us.preheader, label %.lr.ph76.split

.lr.ph76.split.us.preheader:                      ; preds = %.lr.ph76
  %i.m = add nsw i64 %i.h, -8                     ; 2 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check135 = icmp ult i64 %i.m, 24
  %n.vec138 = and i64 %i.o, 4611686018427387900   ; 3 uses
  %i.p = shl i64 %n.vec138, 3                     ; 3 uses
  %i.q = or disjoint i64 %i.p, 8
  %cmp.n147 = icmp eq i64 %i.o, %n.vec138
  br label %.lr.ph76.split.us

.lr.ph76.split.us:                                ; preds = %.lr.ph76.split.us.preheader, %bb.k
  %.075.us = phi ptr [ %i.bm, %bb.k ], [ %7, %.lr.ph76.split.us.preheader ] ; 2 uses
  %.03774.us = phi i32 [ %i.bl, %bb.k ], [ %6, %.lr.ph76.split.us.preheader ] ; 2 uses
  %i.r = call i32 @mbedtls_md_hmac_update(ptr noundef nonnull %0, ptr noundef %3, i64 noundef %4) #6 ; 2 uses
  %.not53.us = icmp eq i32 %i.r, 0
  br i1 %.not53.us, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph76.split.us
  %i.s = call i32 @mbedtls_md_hmac_update(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 4) #6 ; 2 uses
  %.not54.us = icmp eq i32 %i.s, 0
  br i1 %.not54.us, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.t = call i32 @mbedtls_md_hmac_finish(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #6 ; 2 uses
  %.not55.us = icmp eq i32 %i.t, 0
  br i1 %.not55.us, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.u = call i32 @mbedtls_md_hmac_reset(ptr noundef nonnull %0) #6 ; 2 uses
  %.not56.us = icmp eq i32 %i.u, 0
  br i1 %.not56.us, label %.lr.ph72.us, label %.loopexit

.lr.ph72.us:                                      ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 16 %i.b, i64 %i.h, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph72.us, %mbedtls_xor.exit.us
  %.03871.us = phi i32 [ 1, %.lr.ph72.us ], [ %i.aj, %mbedtls_xor.exit.us ]
  %i.v = call i32 @mbedtls_md_hmac_update(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %i.h) #6 ; 2 uses
  %.not59.us = icmp eq i32 %i.v, 0
  br i1 %.not59.us, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.w = call i32 @mbedtls_md_hmac_finish(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #6 ; 2 uses
  %.not60.us = icmp eq i32 %i.w, 0
  br i1 %.not60.us, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.x = call i32 @mbedtls_md_hmac_reset(ptr noundef nonnull %0) #6 ; 2 uses
  %.not61.us = icmp eq i32 %i.x, 0
  br i1 %.not61.us, label %.preheader63.us.a, label %.loopexit

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader149, %.lr.ph.us
  %i.y = phi i64 [ %i.ac, %.lr.ph.us ], [ %.ph, %.lr.ph.us.preheader149 ] ; 3 uses
  %.0.i68.us = phi i64 [ %i.y, %.lr.ph.us ], [ %.0.i68.us.ph, %.lr.ph.us.preheader149 ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.i68.us ; 2 uses
  %.0.copyload.i62.us = load i64, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.i68.us
  %.0.copyload.i.us = load i64, ptr %i.aa, align 1
  %i.ab = xor i64 %.0.copyload.i.us, %.0.copyload.i62.us
  store i64 %i.ab, ptr %i.z, align 1
  %i.ac = add nuw nsw i64 %i.y, 8                 ; 2 uses
  %.not.i.us = icmp samesign ugt i64 %i.ac, %i.h
  br i1 %.not.i.us, label %.preheader.us, label %.lr.ph.us, !llvm.loop !20

.lr.ph70.us:                                      ; preds = %.lr.ph70.us.preheader, %.lr.ph70.us
  %.1.i69.us = phi i64 [ %i.ai, %.lr.ph70.us ], [ %.1.i69.us.ph, %.lr.ph70.us.preheader ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 %.1.i69.us ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !24
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1.i69.us
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !24
  %i.ah = xor i8 %i.ag, %i.ae
  store i8 %i.ah, ptr %i.ad, align 1, !tbaa !24
  %i.ai = add nuw nsw i64 %.1.i69.us, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.ai, %i.h
  br i1 %exitcond.not, label %mbedtls_xor.exit.us, label %.lr.ph70.us, !llvm.loop !25

mbedtls_xor.exit.us:                              ; preds = %.lr.ph70.us, %middle.block, %vec.epilog.middle.block, %.preheader.us
  %i.aj = add nuw i32 %.03871.us, 1               ; 2 uses
  %exitcond96.not = icmp eq i32 %i.aj, %5
  br i1 %exitcond96.not, label %._crit_edge.us, label %bb.e, !llvm.loop !26

bb.h:                                             ; preds = %._crit_edge.us
  %i.ak = load i8, ptr %i.k, align 2, !tbaa !24
  %i.al = add i8 %i.ak, 1                         ; 2 uses
  store i8 %i.al, ptr %i.k, align 2, !tbaa !24
  %.not58.us.1 = icmp eq i8 %i.al, 0
  br i1 %.not58.us.1, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.am = load i8, ptr %i.l, align 1, !tbaa !24
  %i.an = add i8 %i.am, 1                         ; 2 uses
  store i8 %i.an, ptr %i.l, align 1, !tbaa !24
  %.not58.us.2 = icmp eq i8 %i.an, 0
  br i1 %.not58.us.2, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = load i8, ptr %i.c, align 4, !tbaa !24
  %i.ap = add i8 %i.ao, 1
  store i8 %i.ap, ptr %i.c, align 4, !tbaa !24
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %._crit_edge.us
  %.not52.us = icmp eq i32 %i.bl, 0
  br i1 %.not52.us, label %.loopexit, label %.lr.ph76.split.us, !llvm.loop !27

.preheader.us:                                    ; preds = %.lr.ph.us, %middle.block146, %.preheader63.us.a
  %.0.i.lcssa.us = phi i64 [ 0, %.preheader63.us.a ], [ %i.p, %middle.block146 ], [ %i.y, %.lr.ph.us ] ; 7 uses
  %i.aq = icmp samesign ult i64 %.0.i.lcssa.us, %i.h
  br i1 %i.aq, label %iter.check, label %mbedtls_xor.exit.us

iter.check:                                       ; preds = %.preheader.us
  %i.ar = sub nuw i64 %i.h, %.0.i.lcssa.us        ; 7 uses
  %min.iters.check = icmp samesign ult i64 %i.ar, 8
  br i1 %min.iters.check, label %.lr.ph70.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check123 = icmp samesign ult i64 %i.ar, 32
  br i1 %min.iters.check123, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ar, 24
  %n.vec = and i64 %i.ar, 224                     ; 4 uses
  %i.as = add i64 %.0.i.lcssa.us, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = add nuw i64 %.0.i.lcssa.us, %index      ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.at ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.au, align 1, !tbaa !24
  %wide.load124 = load <16 x i8>, ptr %i.av, align 1, !tbaa !24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.at ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %wide.load125 = load <16 x i8>, ptr %i.aw, align 1, !tbaa !24
  %wide.load126 = load <16 x i8>, ptr %i.ax, align 1, !tbaa !24
  %i.ay = xor <16 x i8> %wide.load125, %wide.load
  %i.az = xor <16 x i8> %wide.load126, %wide.load124
  store <16 x i8> %i.ay, ptr %i.au, align 1, !tbaa !24
  store <16 x i8> %i.az, ptr %i.av, align 1, !tbaa !24
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %mbedtls_xor.exit.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph70.us.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec128 = and i64 %i.ar, 248                  ; 3 uses
  %i.bb = add i64 %.0.i.lcssa.us, %n.vec128
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index129 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next132, %vec.epilog.vector.body ] ; 2 uses
  %i.bc = add nuw i64 %.0.i.lcssa.us, %index129   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bc ; 2 uses
  %wide.load130 = load <8 x i8>, ptr %i.bd, align 1, !tbaa !24
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bc
  %wide.load131 = load <8 x i8>, ptr %i.be, align 1, !tbaa !24
  %i.bf = xor <8 x i8> %wide.load131, %wide.load130
  store <8 x i8> %i.bf, ptr %i.bd, align 1, !tbaa !24
  %index.next132 = add nuw i64 %index129, 8       ; 2 uses
  %i.bg = icmp eq i64 %index.next132, %n.vec128
  br i1 %i.bg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !30

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n133 = icmp eq i64 %i.ar, %n.vec128
  br i1 %cmp.n133, label %mbedtls_xor.exit.us, label %.lr.ph70.us.preheader

.lr.ph70.us.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1.i69.us.ph = phi i64 [ %.0.i.lcssa.us, %iter.check ], [ %i.as, %vec.epilog.iter.check ], [ %i.bb, %vec.epilog.middle.block ]
  br label %.lr.ph70.us

.preheader63.us.a:                                ; preds = %bb.g
  br i1 %.not.i67, label %.preheader.us, label %.lr.ph.us.preheader.a

.lr.ph.us.preheader.a:                            ; preds = %.preheader63.us.a
  br i1 %min.iters.check135, label %.lr.ph.us.preheader149, label %vector.body139.a

vector.body139.a:                                 ; preds = %.lr.ph.us.preheader.a, %vector.body139.a
  %index140 = phi i64 [ %index.next145, %vector.body139.a ], [ 0, %.lr.ph.us.preheader.a ] ; 2 uses
  %8 = shl i64 %index140, 3                       ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.b, i64 %8 ; 3 uses
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %wide.load141.a = load <2 x i64>, ptr %9, align 16
  %wide.load142.a = load <2 x i64>, ptr %10, align 16
  %11 = getelementptr inbounds nuw i8, ptr %i.a, i64 %8 ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %wide.load143.a = load <2 x i64>, ptr %11, align 16
  %wide.load144.a = load <2 x i64>, ptr %12, align 16
  %i.bh = xor <2 x i64> %wide.load143.a, %wide.load141.a
  %i.bi = xor <2 x i64> %wide.load144.a, %wide.load142.a
  store <2 x i64> %i.bh, ptr %9, align 16
  store <2 x i64> %i.bi, ptr %10, align 16
  %index.next145 = add nuw i64 %index140, 4       ; 2 uses
  %13 = icmp eq i64 %index.next145, %n.vec138
  br i1 %13, label %middle.block146, label %vector.body139.a, !llvm.loop !31

middle.block146:                                  ; preds = %vector.body139.a
  br i1 %cmp.n147, label %.preheader.us, label %.lr.ph.us.preheader149

.lr.ph.us.preheader149:                           ; preds = %.lr.ph.us.preheader.a, %middle.block146
  %.ph = phi i64 [ 8, %.lr.ph.us.preheader.a ], [ %i.q, %middle.block146 ]
  %.0.i68.us.ph = phi i64 [ 0, %.lr.ph.us.preheader.a ], [ %i.p, %middle.block146 ]
  br label %.lr.ph.us

._crit_edge.us:                                   ; preds = %mbedtls_xor.exit.us
  %i.bj = call i32 @llvm.umin.i32(i32 %.03774.us, i32 %i.j) ; 2 uses
  %i.bk = zext nneg i32 %i.bj to i64              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.075.us, ptr nonnull align 16 %i.b, i64 %i.bk, i1 false)
  %i.bl = sub i32 %.03774.us, %i.bj               ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.075.us, i64 %i.bk
  %i.bn = load i8, ptr %i.f, align 1, !tbaa !24
  %i.bo = add i8 %i.bn, 1                         ; 2 uses
  store i8 %i.bo, ptr %i.f, align 1, !tbaa !24
  %.not58.us = icmp eq i8 %i.bo, 0
  br i1 %.not58.us, label %bb.h, label %bb.k

.lr.ph76.split:                                   ; preds = %.lr.ph76, %bb.s
  %.075 = phi ptr [ %i.bw, %bb.s ], [ %7, %.lr.ph76 ] ; 2 uses
  %.03774 = phi i32 [ %i.bv, %bb.s ], [ %6, %.lr.ph76 ] ; 2 uses
  %i.bp = call i32 @mbedtls_md_hmac_update(ptr noundef nonnull %0, ptr noundef %3, i64 noundef %4) #6 ; 2 uses
  %.not53 = icmp eq i32 %i.bp, 0
  br i1 %.not53, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %.lr.ph76.split
  %i.bq = call i32 @mbedtls_md_hmac_update(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 4) #6 ; 2 uses
  %.not54 = icmp eq i32 %i.bq, 0
  br i1 %.not54, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.br = call i32 @mbedtls_md_hmac_finish(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #6 ; 2 uses
  %.not55 = icmp eq i32 %i.br, 0
  br i1 %.not55, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.bs = call i32 @mbedtls_md_hmac_reset(ptr noundef nonnull %0) #6 ; 2 uses
  %.not56 = icmp eq i32 %i.bs, 0
  br i1 %.not56, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 16 %i.b, i64 %i.h, i1 false)
  %i.bt = call i32 @llvm.umin.i32(i32 %.03774, i32 %i.j) ; 2 uses
  %i.bu = zext nneg i32 %i.bt to i64              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.075, ptr nonnull align 16 %i.b, i64 %i.bu, i1 false)
  %i.bv = sub i32 %.03774, %i.bt                  ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.075, i64 %i.bu
  %i.bx = load i8, ptr %i.f, align 1, !tbaa !24
  %i.by = add i8 %i.bx, 1                         ; 2 uses
  store i8 %i.by, ptr %i.f, align 1, !tbaa !24
  %.not58 = icmp eq i8 %i.by, 0
  br i1 %.not58, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.bz = load i8, ptr %i.k, align 2, !tbaa !24
  %i.ca = add i8 %i.bz, 1                         ; 2 uses
  store i8 %i.ca, ptr %i.k, align 2, !tbaa !24
  %.not58.1 = icmp eq i8 %i.ca, 0
  br i1 %.not58.1, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cb = load i8, ptr %i.l, align 1, !tbaa !24
  %i.cc = add i8 %i.cb, 1                         ; 2 uses
  store i8 %i.cc, ptr %i.l, align 1, !tbaa !24
  %.not58.2 = icmp eq i8 %i.cc, 0
  br i1 %.not58.2, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cd = load i8, ptr %i.c, align 4, !tbaa !24
  %i.ce = add i8 %i.cd, 1
  store i8 %i.ce, ptr %i.c, align 4, !tbaa !24
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %.not52 = icmp eq i32 %i.bv, 0
  br i1 %.not52, label %.loopexit, label %.lr.ph76.split, !llvm.loop !27

.loopexit:                                        ; preds = %.lr.ph76.split, %bb.l, %bb.m, %bb.n, %bb.s, %.lr.ph76.split.us, %bb.b, %bb.c, %bb.d, %bb.k, %bb.g, %bb.f, %bb.e, %.preheader64
  %.2 = phi i32 [ 0, %.preheader64 ], [ %i.u, %bb.d ], [ %i.v, %bb.e ], [ %i.x, %bb.g ], [ %i.w, %bb.f ], [ 0, %bb.k ], [ %i.r, %.lr.ph76.split.us ], [ %i.s, %bb.b ], [ %i.t, %bb.c ], [ %i.bp, %.lr.ph76.split ], [ 0, %bb.s ], [ %i.bs, %bb.n ], [ %i.br, %bb.m ], [ %i.bq, %bb.l ]
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.b, i64 noundef 64) #6
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.a, i64 noundef 64) #6
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %.loopexit
  %.036 = phi i32 [ %.2, %.loopexit ], [ %i.g, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.036
}

declare ptr @mbedtls_md_info_from_type(i32 noundef) local_unnamed_addr #2

declare void @mbedtls_md_init(ptr noundef) local_unnamed_addr #2

declare i32 @mbedtls_md_setup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @mbedtls_md_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @mbedtls_pkcs5_self_test(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.mbedtls_md_context_t, align 8 ; 74 uses
  %i.a = alloca [64 x i8], align 16               ; 32 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %.not19 = icmp eq i32 %0, 0                     ; 2 uses
  br i1 %.not19, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %i.b = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  %i.c = tail call ptr @mbedtls_md_info_from_type(i32 noundef 5) #6 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.loopexit, label %bb.m

.split.us.preheader:                              ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  %i.e = tail call ptr @mbedtls_md_info_from_type(i32 noundef 5) #6 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.split.us.preheader
  call void @mbedtls_md_init(ptr noundef nonnull %1) #6
  %i.g = call i32 @mbedtls_md_setup(ptr noundef nonnull %1, ptr noundef nonnull %i.e, i32 noundef 1) #6
  %.not.i.us = icmp eq i32 %i.g, 0
  br i1 %.not.i.us, label %mbedtls_pkcs5_pbkdf2_hmac_ext.exit.us, label %mbedtls_pkcs5_pbkdf2_hmac_ext.exit.thread25

mbedtls_pkcs5_pbkdf2_hmac_ext.exit.us:            ; preds = %bb.b
  %i.h = call fastcc i32 @pkcs5_pbkdf2_hmac(ptr noundef nonnull %1, ptr noundef nonnull @password_test_data, i64 noundef 8, ptr noundef nonnull @salt_test_data, i64 noundef 4, i32 noundef 1, i32 noundef 20, ptr noundef nonnull %i.a)
  call void @mbedtls_md_free(ptr noundef nonnull %1) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  %.not20.us = icmp eq i32 %i.h, 0
  br i1 %.not20.us, label %bb.c, label %.critedge

bb.c:                                             ; preds = %mbedtls_pkcs5_pbkdf2_hmac_ext.exit.us
  %i.i = load i128, ptr %i.a, align 16
  %i.j = xor i128 8070790305774591188915737843429040140, %i.i
  %i.k = getelementptr i8, ptr %i.a, i64 16
  %i.l = load i32, ptr %i.k, align 16
  %i.m = zext i32 %i.l to i128
  %i.n = xor i128 2788679727, %i.m
  %i.o = or i128 %i.j, %i.n
  %i.p = icmp ne i128 %i.o, 0
  %i.q = zext i1 %i.p to i32
  %.not21.us = icmp eq i32 %i.q, 0
  br i1 %.not21.us, label %.split.us.1, label %.critedge

.split.us.1:                                      ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  %i.r = call ptr @mbedtls_md_info_from_type(i32 noundef 5) #6 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.split.us.1
  call void @mbedtls_md_init(ptr noundef nonnull %1) #6
  %i.t = call i32 @mbedtls_md_setup(ptr noundef nonnull %1, ptr noundef nonnull %i.r, i32 noundef 1) #6
  %.not.i.us.1 = icmp eq i32 %i.t, 0
  br i1 %.not.i.us.1, label %mbedtls_pkcs5_pbkdf2_hmac_ext.exit.us.1, label %mbedtls_pkcs5_pbkdf2_hmac_ext.exit.thread25

mbedtls_pkcs5_pbkdf2_hmac_ext.exit.us.1:          ; preds = %bb.d
  %i.u = call fastcc i32 @pkcs5_pbkdf2_hmac(ptr noundef nonnull %1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @password_test_data, i64 32), i64 noundef 8, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @salt_test_data, i64 40), i64 noundef 4, i32 noundef 2, i32 noundef 20, ptr noundef nonnull %i.a)
  call void @mbedtls_md_free(ptr noundef nonnull %1) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  %.not20.us.1 = icmp eq i32 %i.u, 0
  br i1 %.not20.us.1, label %bb.e, label %.critedge

bb.e:                                             ; preds = %mbedtls_pkcs5_pbkdf2_hmac_ext.exit.us.1
  %i.v = load i128, ptr %i.a, align 16
  %i.w = xor i128 -20929544112613053555661346123840131862, %i.v
  %i.x = getelementptr i8, ptr %i.a, i64 16
  %i.y = load i32, ptr %i.x, align 16
  %i.z = zext i32 %i.y to i128
  %i.aa = xor i128 1468653272, %i.z
  %i.ab = or i128 %i.w, %i.aa
  %i.ac = icmp ne i128 %i.ab, 0
  %i.ad = zext i1 %i.ac to i32
  %.not21.us.1 = icmp eq i32 %i.ad, 0
  br i1 %.not21.us.1, label %.split.us.2, label %.critedge

.split.us.2:                                      ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  %i.ae = call ptr @mbedtls_md_info_from_type(i32 noundef 5) #6 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.split.us.2
  call void @mbedtls_md_init(ptr noundef nonnull %1) #6
  %i.ag = call i32 @mbedtls_md_setup(ptr noundef nonnull %1, ptr noundef nonnull %i.ae, i32 noundef 1) #6
  %.not.i.us.2 = icmp eq i32 %i.ag, 0
  br i1 %.not.i.us.2, label %mbedtls_pkcs5_pbkdf2_hmac_ext.exit.us.2, label %mbedtls_pkcs5_pbkdf2_hmac_ext.exit.thread25

mbedtls_pkcs5_pbkdf2_hmac_ext.exit.us.2:          ; preds = %bb.f
  %i.ah = call fastcc i32 @pkcs5_pbkdf2_hmac(ptr noundef nonnull %1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @password_test_data, i64 64), i64 noundef 8, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @salt_test_data, i64 80), i64 noundef 4, i32 noundef 4096, i32 noundef 20, ptr noundef nonnull %i.a)
  call void @mbedtls_md_free(ptr noundef nonnull %1) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  %.not20.us.2 = icmp eq i32 %i.ah, 0
  br i1 %.not20.us.2, label %bb.g, label %.critedge

bb.g:                                             ; preds = %mbedtls_pkcs5_pbkdf2_hmac_ext.exit.us.2
  %i.ai = load i128, ptr %i.a, align 16
  %i.aj = xor i128 -63626585168254715881537783175544504245, %i.ai
  %i.ak = getelementptr i8, ptr %i.a, i64 16
  %i.al = load i32, ptr %i.ak, align 16
  %i.am = zext i32 %i.al to i128
end_hunk_0
begin_hunk_1_@mbedtls_pkcs5_self_test:bb.a
  %i.cn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 2) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  %i.co = call ptr @mbedtls_md_info_from_type(i32 noundef 5) #6 ; 2 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %.split.2
  call void @mbedtls_md_init(ptr noundef nonnull %1) #6
  %i.cq = call i32 @mbedtls_md_setup(ptr noundef nonnull %1, ptr noundef nonnull %i.co, i32 noundef 1) #6
  %.not.i.2 = icmp eq i32 %i.cq, 0
  br i1 %.not.i.2, label %mbedtls_pkcs5_pbkdf2_hmac_ext.exit.2, label %mbedtls_pkcs5_pbkdf2_hmac_ext.exit.thread25

mbedtls_pkcs5_pbkdf2_hmac_ext.exit.2:             ; preds = %bb.q
  %i.cr = call fastcc i32 @pkcs5_pbkdf2_hmac(ptr noundef nonnull %1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @password_test_data, i64 64), i64 noundef 8, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @salt_test_data, i64 80), i64 noundef 4, i32 noundef 4096, i32 noundef 20, ptr noundef nonnull %i.a)
  call void @mbedtls_md_free(ptr noundef nonnull %1) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  %.not20.2 = icmp eq i32 %i.cr, 0
  br i1 %.not20.2, label %bb.r, label %.critedge36

bb.r:                                             ; preds = %mbedtls_pkcs5_pbkdf2_hmac_ext.exit.2
  %i.cs = load i128, ptr %i.a, align 16
  %i.ct = xor i128 -63626585168254715881537783175544504245, %i.cs
  %i.cu = getelementptr i8, ptr %i.a, i64 16
  %i.cv = load i32, ptr %i.cu, align 16
  %i.cw = zext i32 %i.cv to i128
  %i.cx = xor i128 3240731749, %i.cw
  %i.cy = or i128 %i.ct, %i.cx
  %i.cz = icmp ne i128 %i.cy, 0
  %i.da = zext i1 %i.cz to i32
  %.not21.2 = icmp eq i32 %i.da, 0
  br i1 %.not21.2, label %.split.3, label %.critedge36

.split.3:                                         ; preds = %bb.r
  %puts.2 = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.db = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 3) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  %i.dc = call ptr @mbedtls_md_info_from_type(i32 noundef 5) #6 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %.split.3
  call void @mbedtls_md_init(ptr noundef nonnull %1) #6
  %i.de = call i32 @mbedtls_md_setup(ptr noundef nonnull %1, ptr noundef nonnull %i.dc, i32 noundef 1) #6
  %.not.i.3 = icmp eq i32 %i.de, 0
  br i1 %.not.i.3, label %mbedtls_pkcs5_pbkdf2_hmac_ext.exit.3, label %mbedtls_pkcs5_pbkdf2_hmac_ext.exit.thread25

mbedtls_pkcs5_pbkdf2_hmac_ext.exit.3:             ; preds = %bb.s
  %i.df = call fastcc i32 @pkcs5_pbkdf2_hmac(ptr noundef nonnull %1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @password_test_data, i64 96), i64 noundef 24, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @salt_test_data, i64 120), i64 noundef 36, i32 noundef 4096, i32 noundef 25, ptr noundef nonnull %i.a)
  call void @mbedtls_md_free(ptr noundef nonnull %1) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  %.not20.3 = icmp eq i32 %i.df, 0
  br i1 %.not20.3, label %bb.t, label %.critedge36

bb.t:                                             ; preds = %mbedtls_pkcs5_pbkdf2_hmac_ext.exit.3
  %i.dg = load i128, ptr %i.a, align 16
  %i.dh = xor i128 99550617375807808165888480179825421885, %i.dg
  %i.di = getelementptr i8, ptr %i.a, i64 9
  %i.dj = load i128, ptr %i.di, align 1
  %i.dk = xor i128 75023191987333717597126623409154218184, %i.dj
  %i.dl = or i128 %i.dh, %i.dk
  %i.dm = icmp ne i128 %i.dl, 0
  %i.dn = zext i1 %i.dm to i32
  %.not21.3 = icmp eq i32 %i.dn, 0
  br i1 %.not21.3, label %.split.4, label %.critedge36

.split.4:                                         ; preds = %bb.t
  %puts.3 = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.do = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  %i.dp = call ptr @mbedtls_md_info_from_type(i32 noundef 5) #6 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %.split.4
  call void @mbedtls_md_init(ptr noundef nonnull %1) #6
  %i.dr = call i32 @mbedtls_md_setup(ptr noundef nonnull %1, ptr noundef nonnull %i.dp, i32 noundef 1) #6
  %.not.i.4 = icmp eq i32 %i.dr, 0
  br i1 %.not.i.4, label %mbedtls_pkcs5_pbkdf2_hmac_ext.exit.4, label %mbedtls_pkcs5_pbkdf2_hmac_ext.exit.thread25

mbedtls_pkcs5_pbkdf2_hmac_ext.exit.4:             ; preds = %bb.u
  %i.ds = call fastcc i32 @pkcs5_pbkdf2_hmac(ptr noundef nonnull %1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @password_test_data, i64 128), i64 noundef 9, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @salt_test_data, i64 160), i64 noundef 5, i32 noundef 4096, i32 noundef 16, ptr noundef nonnull %i.a)
  call void @mbedtls_md_free(ptr noundef nonnull %1) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  %.not20.4 = icmp eq i32 %i.ds, 0
  br i1 %.not20.4, label %bb.v, label %.critedge36

bb.v:                                             ; preds = %mbedtls_pkcs5_pbkdf2_hmac_ext.exit.4
  %i.dt = load i128, ptr %i.a, align 16
  %i.du = icmp ne i128 -79919078603011696091842192881564845482, %i.dt
  %i.dv = zext i1 %i.du to i32
  %.not21.4 = icmp eq i32 %i.dv, 0
  br i1 %.not21.4, label %.split.5, label %.critedge36

.split.5:                                         ; preds = %bb.v
  %puts.4 = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.dw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 5) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  %i.dx = call ptr @mbedtls_md_info_from_type(i32 noundef 5) #6 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %.split.5
  call void @mbedtls_md_init(ptr noundef nonnull %1) #6
  %i.dz = call i32 @mbedtls_md_setup(ptr noundef nonnull %1, ptr noundef nonnull %i.dx, i32 noundef 1) #6
  %.not.i.5 = icmp eq i32 %i.dz, 0
  br i1 %.not.i.5, label %mbedtls_pkcs5_pbkdf2_hmac_ext.exit.5, label %mbedtls_pkcs5_pbkdf2_hmac_ext.exit.thread25

mbedtls_pkcs5_pbkdf2_hmac_ext.exit.5:             ; preds = %bb.w
  %i.ea = call fastcc i32 @pkcs5_pbkdf2_hmac(ptr noundef nonnull %1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @password_test_data, i64 160), i64 noundef 0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @salt_test_data, i64 200), i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a)
  call void @mbedtls_md_free(ptr noundef nonnull %1) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  %.not20.5 = icmp eq i32 %i.ea, 0
  br i1 %.not20.5, label %bb.x, label %.critedge36

bb.x:                                             ; preds = %mbedtls_pkcs5_pbkdf2_hmac_ext.exit.5
  %puts.5 = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %mbedtls_pkcs5_pbkdf2_hmac_ext.exit.us.5, %bb.c, %mbedtls_pkcs5_pbkdf2_hmac_ext.exit.us, %mbedtls_pkcs5_pbkdf2_hmac_ext.exit.us.1, %bb.e, %mbedtls_pkcs5_pbkdf2_hmac_ext.exit.us.2, %bb.g, %mbedtls_pkcs5_pbkdf2_hmac_ext.exit.us.3, %bb.i, %mbedtls_pkcs5_pbkdf2_hmac_ext.exit.us.4, %bb.k, %.loopexit, %.critedge36, %bb.x
  %.1 = phi i32 [ 1, %bb.c ], [ 0, %bb.x ], [ 1, %.critedge36 ], [ 1, %.loopexit ], [ %spec.select, %mbedtls_pkcs5_pbkdf2_hmac_ext.exit.us.5 ], [ 1, %bb.k ], [ 1, %mbedtls_pkcs5_pbkdf2_hmac_ext.exit.us.4 ], [ 1, %bb.i ], [ 1, %mbedtls_pkcs5_pbkdf2_hmac_ext.exit.us.3 ], [ 1, %bb.g ], [ 1, %mbedtls_pkcs5_pbkdf2_hmac_ext.exit.us.2 ], [ 1, %bb.e ], [ 1, %mbedtls_pkcs5_pbkdf2_hmac_ext.exit.us.1 ], [ 1, %mbedtls_pkcs5_pbkdf2_hmac_ext.exit.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.1
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare i32 @mbedtls_asn1_get_tag(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @mbedtls_asn1_get_int(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @mbedtls_asn1_get_alg_null(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @mbedtls_oid_get_md_hmac(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @mbedtls_md_get_size(ptr noundef) local_unnamed_addr #2

declare i32 @mbedtls_md_hmac_starts(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @mbedtls_md_hmac_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @mbedtls_md_hmac_finish(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @mbedtls_md_hmac_reset(ptr noundef) local_unnamed_addr #2

declare void @mbedtls_platform_zeroize(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !12, i64 16}
!11 = !{!"mbedtls_asn1_buf", !5, i64 0, !9, i64 8, !12, i64 16}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!12, !12, i64 0}
!15 = !{!11, !9, i64 8}
!16 = !{!11, !5, i64 0}
!17 = !{!18, !19, i64 0}
!18 = !{!"mbedtls_md_context_t", !19, i64 0, !13, i64 8, !13, i64 16}
!19 = !{!"p1 _ZTS17mbedtls_md_info_t", !13, i64 0}
!20 = distinct !{!20, !21, !22, !23}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{!6, !6, i64 0}
!25 = distinct !{!25, !21, !22, !23}
!26 = distinct !{!26, !21}
!27 = distinct !{!27, !21}
!28 = distinct !{!28, !21, !23, !22}
!29 = !{!"branch_weights", i32 8, i32 24}
!30 = distinct !{!30, !21, !23, !22}
!31 = distinct !{!31, !21, !23, !22}
end_hunk_1
