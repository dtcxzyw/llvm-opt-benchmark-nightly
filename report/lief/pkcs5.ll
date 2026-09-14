Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/pkcs5?download=true
inline.NumInlined: 13
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@mbedtls_pkcs5_pbes2_ext:bb.a
  store i32 %i.be, ptr %i.c, align 4, !tbaa !10
  %i.bf = load i32, ptr %13, align 8, !tbaa !18
  %.not47 = icmp eq i32 %i.bf, 4
  br i1 %.not47, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !17
  %.val54 = load i32, ptr %i.bc, align 8          ; 2 uses
  %i.bi = lshr i32 %.val54, 3
  %i.bj = and i32 %i.bi, 28
  %i.bk = zext nneg i32 %i.bj to i64
  %.not48 = icmp eq i64 %i.bh, %i.bk
  br i1 %.not48, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.bl = icmp eq i32 %1, 0
  %i.bm = icmp ult i64 %7, %5
  %or.cond = and i1 %i.bl, %i.bm
  br i1 %or.cond, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = icmp eq i32 %1, 1
  br i1 %i.bn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bo = and i32 %.val54, 31                     ; 2 uses
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = urem i64 %5, %i.bp
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = sub nuw nsw i32 %i.bo, %i.br
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = add i64 %5, %i.bt
  %i.bv = icmp ult i64 %7, %i.bu
  br i1 %i.bv, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @mbedtls_cipher_init(ptr noundef nonnull %15) #7
  %i.bw = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !15
  %i.by = load i64, ptr %i.bg, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.g, ptr align 1 %i.bx, i64 %i.by, i1 false)
  %i.bz = load i32, ptr %i.e, align 4, !tbaa !10
  %i.ca = load ptr, ptr %i.al, align 8, !tbaa !15
  %i.cb = load i64, ptr %i.ai, align 8, !tbaa !17
  %i.cc = load i32, ptr %i.b, align 4, !tbaa !10
  %i.cd = load i32, ptr %i.c, align 4, !tbaa !10
  %i.ce = call i32 @mbedtls_pkcs5_pbkdf2_hmac_ext(i32 noundef %i.bz, ptr noundef %2, i64 noundef %3, ptr noundef %i.ca, i64 noundef %i.cb, i32 noundef %i.cc, i32 noundef %i.cd, ptr noundef nonnull %i.f) ; 2 uses
  %.not49 = icmp eq i32 %i.ce, 0
  br i1 %.not49, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.cf = call i32 @mbedtls_cipher_setup(ptr noundef nonnull %15, ptr noundef nonnull %i.ba) #7 ; 2 uses
  %.not50 = icmp eq i32 %i.cf, 0
  br i1 %.not50, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.cg = load i32, ptr %i.c, align 4, !tbaa !10
  %i.ch = shl nsw i32 %i.cg, 3
  %i.ci = call i32 @mbedtls_cipher_setkey(ptr noundef nonnull %15, ptr noundef nonnull %i.f, i32 noundef %i.ch, i32 noundef %1) #7 ; 2 uses
  %.not51 = icmp eq i32 %i.ci, 0
  br i1 %.not51, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.cj = call i32 @mbedtls_cipher_set_padding_mode(ptr noundef nonnull %15, i32 noundef 0) #7 ; 2 uses
  %.not52 = icmp eq i32 %i.cj, 0
  br i1 %.not52, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ck = load i64, ptr %i.bg, align 8, !tbaa !17
  %i.cl = call i32 @mbedtls_cipher_crypt(ptr noundef nonnull %15, ptr noundef nonnull %i.g, i64 noundef %i.ck, ptr noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef %8) #7
  %.not53 = icmp eq i32 %i.cl, 0
  %spec.store.select = select i1 %.not53, i32 0, i32 -11776
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.y
  %.032 = phi i32 [ %i.ce, %bb.u ], [ %i.cf, %bb.v ], [ %i.ci, %bb.w ], [ %spec.store.select, %bb.y ], [ %i.cj, %bb.x ]
  call void @mbedtls_cipher_free(ptr noundef nonnull %15) #7
  br label %.critedge

.critedge:                                        ; preds = %select.unfold, %pkcs5_parse_pbkdf2_params.exit.thread, %bb.b, %bb.a, %bb.c, %bb.t, %bb.r, %bb.p, %bb.q, %bb.o, %bb.n, %bb.d, %bb.z
  %.033 = phi i32 [ -12032, %bb.q ], [ -98, %bb.a ], [ -11904, %bb.c ], [ -11904, %bb.d ], [ %i.o, %bb.b ], [ %.0.i.ph, %pkcs5_parse_pbkdf2_params.exit.thread ], [ -11904, %bb.n ], [ -11904, %bb.o ], [ -12032, %bb.p ], [ -138, %bb.r ], [ %.032, %bb.z ], [ -138, %bb.t ], [ %i.ax, %select.unfold ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  ret i32 %.033
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
define hidden i32 @mbedtls_pkcs5_pbkdf2_hmac_ext(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef writeonly captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.mbedtls_md_context_t, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  %i.a = tail call ptr @mbedtls_md_info_from_type(i32 noundef %0) #7 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @mbedtls_md_init(ptr noundef nonnull %8) #7
  %i.c = call i32 @mbedtls_md_setup(ptr noundef nonnull %8, ptr noundef nonnull %i.a, i32 noundef 0) #7 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = call i32 @mbedtls_md_hmac_setup(ptr noundef nonnull %8, ptr noundef nonnull %i.a) #7 ; 2 uses
  %.not16 = icmp eq i32 %i.d, 0
  br i1 %.not16, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = call fastcc i32 @pkcs5_pbkdf2_hmac(ptr noundef nonnull %8, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.0 = phi i32 [ %i.c, %bb.b ], [ %i.d, %bb.c ], [ %i.e, %bb.d ]
  call void @mbedtls_md_free(ptr noundef nonnull %8) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.012 = phi i32 [ %.0, %bb.e ], [ -11904, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  ret i32 %.012
}

declare i32 @mbedtls_cipher_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @mbedtls_cipher_setkey(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @mbedtls_cipher_set_padding_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @mbedtls_cipher_crypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mbedtls_cipher_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_pkcs5_pbkdf2_hmac(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef writeonly captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @pkcs5_pbkdf2_hmac(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @pkcs5_pbkdf2_hmac(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef writeonly captures(none) %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 25 uses
  %i.b = alloca [64 x i8], align 16               ; 28 uses
  %i.c = alloca [4 x i8], align 4                 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.d = load ptr, ptr %0, align 8, !tbaa !27
  %i.e = tail call zeroext i8 @mbedtls_md_get_size(ptr noundef %i.d) #7 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 16777216, ptr %i.c, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 4 uses
  %i.g = tail call i32 @mbedtls_md_hmac_starts(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #7 ; 2 uses
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
  %min.iters.check134 = icmp ult i64 %i.m, 24
  %n.vec136 = and i64 %i.o, 4611686018427387900   ; 8 uses
  %i.p = shl i64 %n.vec136, 3                     ; 2 uses
  %i.q = or disjoint i64 %i.p, 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = icmp eq i64 %n.vec136, 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.y = icmp eq i64 %n.vec136, 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.ad = icmp eq i64 %n.vec136, 12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.ai = icmp eq i64 %n.vec136, 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.an = icmp eq i64 %n.vec136, 20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.as = icmp eq i64 %n.vec136, 24
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %cmp.n145 = icmp eq i64 %i.o, %n.vec136
  br label %.lr.ph76.split.us

.lr.ph76.split.us:                                ; preds = %.lr.ph76.split.us.preheader, %bb.k
  %.075.us = phi ptr [ %i.df, %bb.k ], [ %7, %.lr.ph76.split.us.preheader ] ; 2 uses
  %.04074.us = phi i32 [ %i.de, %bb.k ], [ %6, %.lr.ph76.split.us.preheader ] ; 2 uses
  %i.ax = call i32 @mbedtls_md_hmac_update(ptr noundef nonnull %0, ptr noundef %3, i64 noundef %4) #7 ; 2 uses
  %.not53.us = icmp eq i32 %i.ax, 0
  br i1 %.not53.us, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph76.split.us
  %i.ay = call i32 @mbedtls_md_hmac_update(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 4) #7 ; 2 uses
  %.not54.us = icmp eq i32 %i.ay, 0
  br i1 %.not54.us, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.az = call i32 @mbedtls_md_hmac_finish(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #7 ; 2 uses
  %.not55.us = icmp eq i32 %i.az, 0
  br i1 %.not55.us, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.ba = call i32 @mbedtls_md_hmac_reset(ptr noundef nonnull %0) #7 ; 2 uses
  %.not56.us = icmp eq i32 %i.ba, 0
  br i1 %.not56.us, label %.lr.ph72.us, label %.loopexit

.lr.ph72.us:                                      ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 16 %i.b, i64 %i.h, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph72.us, %mbedtls_xor.exit.us
  %.03671.us = phi i32 [ 1, %.lr.ph72.us ], [ %i.bp, %mbedtls_xor.exit.us ]
  %i.bb = call i32 @mbedtls_md_hmac_update(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %i.h) #7 ; 2 uses
  %.not59.us = icmp eq i32 %i.bb, 0
  br i1 %.not59.us, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.bc = call i32 @mbedtls_md_hmac_finish(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #7 ; 2 uses
  %.not60.us = icmp eq i32 %i.bc, 0
  br i1 %.not60.us, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.bd = call i32 @mbedtls_md_hmac_reset(ptr noundef nonnull %0) #7 ; 2 uses
  %.not61.us = icmp eq i32 %i.bd, 0
  br i1 %.not61.us, label %.preheader63.us, label %.loopexit

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader147, %.lr.ph.us
  %i.be = phi i64 [ %i.bi, %.lr.ph.us ], [ %.ph, %.lr.ph.us.preheader147 ] ; 3 uses
  %.0.i68.us96 = add nsw i64 %i.be, -8            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.i68.us96 ; 2 uses
  %.0.copyload.i62.us = load i64, ptr %i.bf, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.i68.us96
  %.0.copyload.i.us = load i64, ptr %i.bg, align 1
  %i.bh = xor i64 %.0.copyload.i.us, %.0.copyload.i62.us
  store i64 %i.bh, ptr %i.bf, align 1
  %i.bi = add nuw nsw i64 %i.be, 8                ; 2 uses
  %.not.i.us = icmp samesign ugt i64 %i.bi, %i.h
  br i1 %.not.i.us, label %.preheader.us, label %.lr.ph.us, !llvm.loop !19

.lr.ph70.us:                                      ; preds = %.lr.ph70.us.preheader, %.lr.ph70.us
  %.1.i69.us = phi i64 [ %i.bo, %.lr.ph70.us ], [ %.1.i69.us.ph, %.lr.ph70.us.preheader ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 %.1.i69.us ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !30
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1.i69.us
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !30
  %i.bn = xor i8 %i.bm, %i.bk
  store i8 %i.bn, ptr %i.bj, align 1, !tbaa !30
  %i.bo = add nuw nsw i64 %.1.i69.us, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.bo, %i.h
  br i1 %exitcond.not, label %mbedtls_xor.exit.us, label %.lr.ph70.us, !llvm.loop !20

mbedtls_xor.exit.us:                              ; preds = %.lr.ph70.us, %middle.block, %vec.epilog.middle.block, %.preheader.us
  %i.bp = add nuw i32 %.03671.us, 1               ; 2 uses
  %exitcond96.not = icmp eq i32 %i.bp, %5
  br i1 %exitcond96.not, label %._crit_edge.us, label %bb.e, !llvm.loop !21

bb.h:                                             ; preds = %._crit_edge.us
  %i.bq = load i8, ptr %i.k, align 2, !tbaa !30
  %i.br = add i8 %i.bq, 1                         ; 2 uses
  store i8 %i.br, ptr %i.k, align 2, !tbaa !30
  %.not58.us.1 = icmp eq i8 %i.br, 0
  br i1 %.not58.us.1, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bs = load i8, ptr %i.l, align 1, !tbaa !30
  %i.bt = add i8 %i.bs, 1                         ; 2 uses
  store i8 %i.bt, ptr %i.l, align 1, !tbaa !30
  %.not58.us.2 = icmp eq i8 %i.bt, 0
  br i1 %.not58.us.2, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bu = load i8, ptr %i.c, align 4, !tbaa !30
  %i.bv = add i8 %i.bu, 1
  store i8 %i.bv, ptr %i.c, align 4, !tbaa !30
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %._crit_edge.us
  %.not52.us = icmp eq i32 %i.de, 0
  br i1 %.not52.us, label %.loopexit, label %.lr.ph76.split.us, !llvm.loop !22

.preheader.us:                                    ; preds = %.lr.ph.us, %middle.block144, %.preheader63.us
  %.0.i.lcssa.us = phi i64 [ 0, %.preheader63.us ], [ %i.p, %middle.block144 ], [ %i.be, %.lr.ph.us ] ; 7 uses
  %i.bw = icmp samesign ult i64 %.0.i.lcssa.us, %i.h
  br i1 %i.bw, label %iter.check, label %mbedtls_xor.exit.us

iter.check:                                       ; preds = %.preheader.us
  %i.bx = sub nuw i64 %i.h, %.0.i.lcssa.us        ; 7 uses
  %min.iters.check = icmp samesign ult i64 %i.bx, 8
  br i1 %min.iters.check, label %.lr.ph70.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check123 = icmp samesign ult i64 %i.bx, 32
  br i1 %min.iters.check123, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.by = and i64 %i.bx, 24
  %n.vec = and i64 %i.bx, 224                     ; 4 uses
  %i.bz = add i64 %.0.i.lcssa.us, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ca = add nuw i64 %.0.i.lcssa.us, %index      ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ca ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.cb, align 1, !tbaa !30
  %wide.load124 = load <16 x i8>, ptr %i.cc, align 1, !tbaa !30
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ca ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %wide.load125 = load <16 x i8>, ptr %i.cd, align 1, !tbaa !30
  %wide.load126 = load <16 x i8>, ptr %i.ce, align 1, !tbaa !30
  %i.cf = xor <16 x i8> %wide.load125, %wide.load
  %i.cg = xor <16 x i8> %wide.load126, %wide.load124
  store <16 x i8> %i.cf, ptr %i.cb, align 1, !tbaa !30
  store <16 x i8> %i.cg, ptr %i.cc, align 1, !tbaa !30
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bx, %n.vec
  br i1 %cmp.n, label %mbedtls_xor.exit.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.by, 0
  br i1 %min.epilog.iters.check, label %.lr.ph70.us.preheader, label %vec.epilog.ph, !prof !31

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec127 = and i64 %i.bx, 248                  ; 3 uses
  %i.ci = add i64 %.0.i.lcssa.us, %n.vec127
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index128 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next131, %vec.epilog.vector.body ] ; 2 uses
  %i.cj = add nuw i64 %.0.i.lcssa.us, %index128   ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cj ; 2 uses
  %wide.load129 = load <8 x i8>, ptr %i.ck, align 1, !tbaa !30
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cj
  %wide.load130 = load <8 x i8>, ptr %i.cl, align 1, !tbaa !30
  %i.cm = xor <8 x i8> %wide.load130, %wide.load129
  store <8 x i8> %i.cm, ptr %i.ck, align 1, !tbaa !30
  %index.next131 = add nuw i64 %index128, 8       ; 2 uses
  %i.cn = icmp eq i64 %index.next131, %n.vec127
  br i1 %i.cn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !24

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n132 = icmp eq i64 %i.bx, %n.vec127
  br i1 %cmp.n132, label %mbedtls_xor.exit.us, label %.lr.ph70.us.preheader

.lr.ph70.us.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1.i69.us.ph = phi i64 [ %.0.i.lcssa.us, %iter.check ], [ %i.bz, %vec.epilog.iter.check ], [ %i.ci, %vec.epilog.middle.block ]
  br label %.lr.ph70.us

.preheader63.us:                                  ; preds = %bb.g
  br i1 %.not.i67, label %.preheader.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.preheader63.us
  br i1 %min.iters.check134, label %.lr.ph.us.preheader147, label %vector.body137

vector.body137:                                   ; preds = %.lr.ph.us.preheader
  %wide.load139 = load <2 x i64>, ptr %i.b, align 16
  %wide.load140 = load <2 x i64>, ptr %i.r, align 16
  %wide.load141 = load <2 x i64>, ptr %i.a, align 16
  %wide.load142 = load <2 x i64>, ptr %i.s, align 16
  %i.co = xor <2 x i64> %wide.load141, %wide.load139
  %i.cp = xor <2 x i64> %wide.load142, %wide.load140
  store <2 x i64> %i.co, ptr %i.b, align 16
  store <2 x i64> %i.cp, ptr %i.r, align 16
  br i1 %i.t, label %middle.block144, label %vector.body137.1

vector.body137.1:                                 ; preds = %vector.body137
  %wide.load139.1 = load <2 x i64>, ptr %i.u, align 16
  %wide.load140.1 = load <2 x i64>, ptr %i.v, align 16
  %wide.load141.1 = load <2 x i64>, ptr %i.w, align 16
  %wide.load142.1 = load <2 x i64>, ptr %i.x, align 16
  %i.cq = xor <2 x i64> %wide.load141.1, %wide.load139.1
  %i.cr = xor <2 x i64> %wide.load142.1, %wide.load140.1
  store <2 x i64> %i.cq, ptr %i.u, align 16
  store <2 x i64> %i.cr, ptr %i.v, align 16
  br i1 %i.y, label %middle.block144, label %vector.body137.2

vector.body137.2:                                 ; preds = %vector.body137.1
  %wide.load139.2 = load <2 x i64>, ptr %i.z, align 16
  %wide.load140.2 = load <2 x i64>, ptr %i.aa, align 16
  %wide.load141.2 = load <2 x i64>, ptr %i.ab, align 16
  %wide.load142.2 = load <2 x i64>, ptr %i.ac, align 16
  %i.cs = xor <2 x i64> %wide.load141.2, %wide.load139.2
  %i.ct = xor <2 x i64> %wide.load142.2, %wide.load140.2
  store <2 x i64> %i.cs, ptr %i.z, align 16
  store <2 x i64> %i.ct, ptr %i.aa, align 16
  br i1 %i.ad, label %middle.block144, label %vector.body137.3

vector.body137.3:                                 ; preds = %vector.body137.2
  %wide.load139.3 = load <2 x i64>, ptr %i.ae, align 16
  %wide.load140.3 = load <2 x i64>, ptr %i.af, align 16
  %wide.load141.3 = load <2 x i64>, ptr %i.ag, align 16
  %wide.load142.3 = load <2 x i64>, ptr %i.ah, align 16
  %i.cu = xor <2 x i64> %wide.load141.3, %wide.load139.3
  %i.cv = xor <2 x i64> %wide.load142.3, %wide.load140.3
  store <2 x i64> %i.cu, ptr %i.ae, align 16
  store <2 x i64> %i.cv, ptr %i.af, align 16
  br i1 %i.ai, label %middle.block144, label %vector.body137.4

vector.body137.4:                                 ; preds = %vector.body137.3
  %wide.load139.4 = load <2 x i64>, ptr %i.aj, align 16
  %wide.load140.4 = load <2 x i64>, ptr %i.ak, align 16
  %wide.load141.4 = load <2 x i64>, ptr %i.al, align 16
  %wide.load142.4 = load <2 x i64>, ptr %i.am, align 16
  %i.cw = xor <2 x i64> %wide.load141.4, %wide.load139.4
  %i.cx = xor <2 x i64> %wide.load142.4, %wide.load140.4
  store <2 x i64> %i.cw, ptr %i.aj, align 16
  store <2 x i64> %i.cx, ptr %i.ak, align 16
  br i1 %i.an, label %middle.block144, label %vector.body137.5

vector.body137.5:                                 ; preds = %vector.body137.4
  %wide.load139.5 = load <2 x i64>, ptr %i.ao, align 16
  %wide.load140.5 = load <2 x i64>, ptr %i.ap, align 16
  %wide.load141.5 = load <2 x i64>, ptr %i.aq, align 16
  %wide.load142.5 = load <2 x i64>, ptr %i.ar, align 16
  %i.cy = xor <2 x i64> %wide.load141.5, %wide.load139.5
  %i.cz = xor <2 x i64> %wide.load142.5, %wide.load140.5
  store <2 x i64> %i.cy, ptr %i.ao, align 16
  store <2 x i64> %i.cz, ptr %i.ap, align 16
  br i1 %i.as, label %middle.block144, label %vector.body137.6

vector.body137.6:                                 ; preds = %vector.body137.5
  %wide.load139.6 = load <2 x i64>, ptr %i.at, align 16
  %wide.load140.6 = load <2 x i64>, ptr %i.au, align 16
  %wide.load141.6 = load <2 x i64>, ptr %i.av, align 16
  %wide.load142.6 = load <2 x i64>, ptr %i.aw, align 16
  %i.da = xor <2 x i64> %wide.load141.6, %wide.load139.6
  %i.db = xor <2 x i64> %wide.load142.6, %wide.load140.6
  store <2 x i64> %i.da, ptr %i.at, align 16
  store <2 x i64> %i.db, ptr %i.au, align 16
  br label %middle.block144

middle.block144:                                  ; preds = %vector.body137.6, %vector.body137.5, %vector.body137.4, %vector.body137.3, %vector.body137.2, %vector.body137.1, %vector.body137
  br i1 %cmp.n145, label %.preheader.us, label %.lr.ph.us.preheader147

.lr.ph.us.preheader147:                           ; preds = %.lr.ph.us.preheader, %middle.block144
  %.ph = phi i64 [ 8, %.lr.ph.us.preheader ], [ %i.q, %middle.block144 ]
  br label %.lr.ph.us

._crit_edge.us:                                   ; preds = %mbedtls_xor.exit.us
  %i.dc = call i32 @llvm.umin.i32(i32 %.04074.us, i32 %i.j) ; 2 uses
  %i.dd = zext nneg i32 %i.dc to i64              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.075.us, ptr nonnull align 16 %i.b, i64 %i.dd, i1 false)
  %i.de = sub i32 %.04074.us, %i.dc               ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.075.us, i64 %i.dd
  %i.dg = load i8, ptr %i.f, align 1, !tbaa !30
  %i.dh = add i8 %i.dg, 1                         ; 2 uses
  store i8 %i.dh, ptr %i.f, align 1, !tbaa !30
  %.not58.us = icmp eq i8 %i.dh, 0
  br i1 %.not58.us, label %bb.h, label %bb.k

.lr.ph76.split:                                   ; preds = %.lr.ph76, %bb.s
  %.075 = phi ptr [ %i.dp, %bb.s ], [ %7, %.lr.ph76 ] ; 2 uses
  %.04074 = phi i32 [ %i.do, %bb.s ], [ %6, %.lr.ph76 ] ; 2 uses
  %i.di = call i32 @mbedtls_md_hmac_update(ptr noundef nonnull %0, ptr noundef %3, i64 noundef %4) #7 ; 2 uses
  %.not53 = icmp eq i32 %i.di, 0
  br i1 %.not53, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %.lr.ph76.split
  %i.dj = call i32 @mbedtls_md_hmac_update(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 4) #7 ; 2 uses
  %.not54 = icmp eq i32 %i.dj, 0
  br i1 %.not54, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.dk = call i32 @mbedtls_md_hmac_finish(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #7 ; 2 uses
  %.not55 = icmp eq i32 %i.dk, 0
  br i1 %.not55, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.dl = call i32 @mbedtls_md_hmac_reset(ptr noundef nonnull %0) #7 ; 2 uses
  %.not56 = icmp eq i32 %i.dl, 0
  br i1 %.not56, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 16 %i.b, i64 %i.h, i1 false)
  %i.dm = call i32 @llvm.umin.i32(i32 %.04074, i32 %i.j) ; 2 uses
  %i.dn = zext nneg i32 %i.dm to i64              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.075, ptr nonnull align 16 %i.b, i64 %i.dn, i1 false)
  %i.do = sub i32 %.04074, %i.dm                  ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.075, i64 %i.dn
  %i.dq = load i8, ptr %i.f, align 1, !tbaa !30
  %i.dr = add i8 %i.dq, 1                         ; 2 uses
  store i8 %i.dr, ptr %i.f, align 1, !tbaa !30
  %.not58 = icmp eq i8 %i.dr, 0
  br i1 %.not58, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.ds = load i8, ptr %i.k, align 2, !tbaa !30
  %i.dt = add i8 %i.ds, 1                         ; 2 uses
  store i8 %i.dt, ptr %i.k, align 2, !tbaa !30
  %.not58.1 = icmp eq i8 %i.dt, 0
  br i1 %.not58.1, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.du = load i8, ptr %i.l, align 1, !tbaa !30
  %i.dv = add i8 %i.du, 1                         ; 2 uses
  store i8 %i.dv, ptr %i.l, align 1, !tbaa !30
  %.not58.2 = icmp eq i8 %i.dv, 0
  br i1 %.not58.2, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dw = load i8, ptr %i.c, align 4, !tbaa !30
  %i.dx = add i8 %i.dw, 1
  store i8 %i.dx, ptr %i.c, align 4, !tbaa !30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %.not52 = icmp eq i32 %i.do, 0
  br i1 %.not52, label %.loopexit, label %.lr.ph76.split, !llvm.loop !22

.loopexit:                                        ; preds = %.lr.ph76.split, %bb.l, %bb.m, %bb.n, %bb.s, %.lr.ph76.split.us, %bb.b, %bb.c, %bb.d, %bb.k, %bb.g, %bb.f, %bb.e, %.preheader64
  %.2 = phi i32 [ 0, %.preheader64 ], [ %i.ba, %bb.d ], [ %i.bb, %bb.e ], [ %i.bd, %bb.g ], [ %i.bc, %bb.f ], [ 0, %bb.k ], [ %i.ax, %.lr.ph76.split.us ], [ %i.ay, %bb.b ], [ %i.az, %bb.c ], [ %i.di, %.lr.ph76.split ], [ 0, %bb.s ], [ %i.dl, %bb.n ], [ %i.dk, %bb.m ], [ %i.dj, %bb.l ]
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.b, i64 noundef 64) #7
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.a, i64 noundef 64) #7
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %.loopexit
  %.039 = phi i32 [ %.2, %.loopexit ], [ %i.g, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.039
}

declare ptr @mbedtls_md_info_from_type(i32 noundef) local_unnamed_addr #2

declare void @mbedtls_md_init(ptr noundef) local_unnamed_addr #2

declare i32 @mbedtls_md_setup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @mbedtls_md_hmac_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mbedtls_md_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @mbedtls_pkcs5_self_test(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.mbedtls_md_context_t, align 8 ; 9 uses
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %.not19 = icmp eq i32 %0, 0                     ; 3 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.be, %.backedge.backedge ] ; 10 uses
  br i1 %.not19, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.backedge
  %i.b = trunc nuw nsw i64 %indvars.iv to i32
  %i.c = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.b) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.backedge
  %i.d = getelementptr inbounds nuw [32 x i8], ptr @password_test_data, i64 %indvars.iv
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @plen_test_data, i64 %indvars.iv
  %i.f = load i64, ptr %i.e, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw [40 x i8], ptr @salt_test_data, i64 %indvars.iv
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @slen_test_data, i64 %indvars.iv
  %i.i = load i64, ptr %i.h, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @it_cnt_test_data, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !10
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @key_len_test_data, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !10   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  %i.n = call ptr @mbedtls_md_info_from_type(i32 noundef 5) #7 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.loopexit.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @mbedtls_md_init(ptr noundef nonnull %1) #7
  %i.p = call i32 @mbedtls_md_setup(ptr noundef nonnull %1, ptr noundef nonnull %i.n, i32 noundef 0) #7
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.e, label %mbedtls_pkcs5_pbkdf2_hmac_ext.exit.thread25

bb.e:                                             ; preds = %bb.d
  %i.q = call i32 @mbedtls_md_hmac_setup(ptr noundef nonnull %1, ptr noundef nonnull %i.n) #7
  %.not16.i = icmp eq i32 %i.q, 0
  br i1 %.not16.i, label %mbedtls_pkcs5_pbkdf2_hmac_ext.exit, label %mbedtls_pkcs5_pbkdf2_hmac_ext.exit.thread25

mbedtls_pkcs5_pbkdf2_hmac_ext.exit.thread25:      ; preds = %bb.d, %bb.e
  call void @mbedtls_md_free(ptr noundef nonnull %1) #7
  br label %.loopexit.sink.split

mbedtls_pkcs5_pbkdf2_hmac_ext.exit:               ; preds = %bb.e
  %i.r = call fastcc i32 @pkcs5_pbkdf2_hmac(ptr noundef nonnull %1, ptr noundef nonnull %i.d, i64 noundef %i.f, ptr noundef nonnull %i.g, i64 noundef %i.i, i32 noundef %i.k, i32 noundef %i.m, ptr noundef nonnull %i.a)
  call void @mbedtls_md_free(ptr noundef nonnull %1) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  %.not20 = icmp eq i32 %i.r, 0
  br i1 %.not20, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %mbedtls_pkcs5_pbkdf2_hmac_ext.exit
  %i.s = getelementptr inbounds nuw [32 x i8], ptr @result_key_test_data, i64 %indvars.iv
  %i.t = zext i32 %i.m to i64
  %bcmp = call i32 @bcmp(ptr nonnull %i.s, ptr nonnull %i.a, i64 %i.t)
  %.not21 = icmp eq i32 %bcmp, 0
  br i1 %.not21, label %bb.h, label %.loopexit

.loopexit.sink.split:                             ; preds = %bb.c, %mbedtls_pkcs5_pbkdf2_hmac_ext.exit.thread25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %mbedtls_pkcs5_pbkdf2_hmac_ext.exit, %.loopexit.sink.split
  br i1 %.not19, label %.loopexit36, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %puts22 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %.loopexit36

bb.h:                                             ; preds = %bb.f
  br i1 %.not19, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %.loopexit36, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.i, %.thread
  %indvars.iv.be = phi i64 [ %indvars.iv.next, %bb.i ], [ %indvars.iv.next33, %.thread ]
  br label %.backedge, !llvm.loop !32

.thread:                                          ; preds = %bb.h
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not34 = icmp eq i64 %indvars.iv.next33, 6
  br i1 %exitcond.not34, label %bb.j, label %.backedge.backedge

bb.j:                                             ; preds = %.thread
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %.loopexit36

.loopexit36:                                      ; preds = %bb.i, %.loopexit, %bb.g, %bb.j
  %.1 = phi i32 [ 1, %.loopexit ], [ 0, %bb.j ], [ 1, %bb.g ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.1
}

; Function Attrs: nofree nounwind
end_hunk_0
