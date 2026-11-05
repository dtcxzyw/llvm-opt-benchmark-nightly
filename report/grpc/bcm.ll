Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/bcm?download=true
inline.NumInlined: 5608
inline.NumDeleted: 1017
loop-unroll.NumCompletelyUnrolled: 189
loop-unroll.NumRuntimeUnrolled: 127
loop-unroll.NumUnrolled: 369
begin_hunk_0_@_ZL15ecdsa_sign_implPK11ec_group_stPiPhPmmPK9EC_SCALARS7_PKhm:bb.a
  %i.ek = icmp eq i64 %.lcssa, 0
  %i.el = zext i1 %i.ek to i32
  br label %ec_scalar_is_zero.exit45

.lr.ph.i39:                                       ; preds = %.lr.ph.i39.preheader, %.lr.ph.i39
  %indvars.iv.i40 = phi i64 [ %indvars.iv.next.i42, %.lr.ph.i39 ], [ %indvars.iv.i40.ph, %.lr.ph.i39.preheader ] ; 2 uses
  %.067.i41 = phi i64 [ %i.eo, %.lr.ph.i39 ], [ %.067.i41.ph, %.lr.ph.i39.preheader ]
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv.i40
  %i.en = load i64, ptr %i.em, align 8, !tbaa !96
  %i.eo = or i64 %i.en, %.067.i41                 ; 2 uses
  %indvars.iv.next.i42 = add nuw nsw i64 %indvars.iv.i40, 1 ; 2 uses
  %exitcond.not.i43 = icmp eq i64 %indvars.iv.next.i42, %wide.trip.count.i38
  br i1 %exitcond.not.i43, label %._crit_edge.loopexit.i44, label %.lr.ph.i39, !llvm.loop !1306

ec_scalar_is_zero.exit45:                         ; preds = %ec_scalar_from_montgomery.exit, %._crit_edge.loopexit.i44
  %.06.lcssa.i36 = phi i32 [ 1, %ec_scalar_from_montgomery.exit ], [ %i.el, %._crit_edge.loopexit.i44 ]
  %i.ep = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %.06.lcssa.i36) #38, !srcloc !128
  %.not33 = icmp eq i32 %i.ep, 0
  br i1 %.not33, label %bb.o, label %bb.n

bb.n:                                             ; preds = %ec_scalar_is_zero.exit45
  store i32 1, ptr %1, align 4, !tbaa !82
  br label %bb.p

bb.o:                                             ; preds = %ec_scalar_is_zero.exit45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  call void @ec_scalar_to_bytes(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull %i.c, ptr noundef nonnull %10)
  %i.eq = load i64, ptr %i.c, align 8, !tbaa !96
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 %i.eq
  call void @ec_scalar_to_bytes(ptr noundef nonnull %0, ptr noundef %i.er, ptr noundef nonnull %i.c, ptr noundef nonnull %11)
  store i64 %.0.i.i61, ptr %3, align 8, !tbaa !96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0 = phi i32 [ 0, %bb.n ], [ 1, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  br label %bb.q

bb.q:                                             ; preds = %ec_point_mul_scalar_base.exit.thread, %ec_point_mul_scalar_base.exit, %bb.p, %bb.h
  %.1 = phi i32 [ 0, %bb.h ], [ %.0, %bb.p ], [ 0, %ec_point_mul_scalar_base.exit ], [ 0, %ec_point_mul_scalar_base.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %bb.r

bb.r:                                             ; preds = %bb.f, %bb.q, %BN_num_bits.exit.thread
  %.3 = phi i32 [ 0, %BN_num_bits.exit.thread ], [ 0, %bb.f ], [ %.1, %bb.q ]
  ret i32 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @HKDF(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.c = call ptr @HMAC(ptr noundef %2, ptr noundef %5, i64 noundef %6, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %HKDF_extract.exit.thread, label %bb.b

HKDF_extract.exit.thread:                         ; preds = %bb.a
  call void @ERR_put_error(i32 noundef 31, i32 noundef 0, i32 noundef 28, ptr noundef nonnull @.str.33, i32 noundef 51) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 4, !tbaa !82
  %i.f = zext i32 %i.e to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.g = call i32 @HKDF_expand(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull %i.b, i64 noundef %i.f, ptr noundef %7, i64 noundef %8)
  br label %bb.c

bb.c:                                             ; preds = %HKDF_extract.exit.thread, %bb.b
  %.0 = phi i32 [ 0, %HKDF_extract.exit.thread ], [ %i.g, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @HKDF_extract(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.b = call ptr @HMAC(ptr noundef %2, ptr noundef %5, i64 noundef %6, ptr noundef %3, i64 noundef %4, ptr noundef %0, ptr noundef nonnull %i.a)
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @ERR_put_error(i32 noundef 31, i32 noundef 0, i32 noundef 28, ptr noundef nonnull @.str.33, i32 noundef 51) #36
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.a, align 4, !tbaa !82
  %i.e = zext i32 %i.d to i64
  store i64 %i.e, ptr %1, align 8, !tbaa !96
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @HKDF_expand(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 8 uses
  %i.b = alloca [64 x i8], align 16               ; 7 uses
  %7 = alloca %struct.hmac_ctx_st, align 8        ; 21 uses
  %i.c = alloca i8, align 1                       ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !199
  %i.f = zext i32 %i.e to i64                     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.g = add i64 %1, %i.f                         ; 2 uses
  %i.h = add i64 %i.g, -1                         ; 2 uses
  %i.i = udiv i64 %i.h, %i.f                      ; 3 uses
  %i.j = icmp ult i64 %i.g, %1
  %i.k = icmp ugt i64 %i.i, 255
  %or.cond = or i1 %i.j, %i.k
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 31, i32 noundef 0, i32 noundef 100, ptr noundef nonnull @.str.33, i32 noundef 73) #36
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %7, i8 0, i64 104, i1 false)
  %i.l = call i32 @HMAC_Init_ex(ptr noundef nonnull %7, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %2, ptr poison)
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %.not53 = icmp ult i64 %i.h, %i.f
  br i1 %.not53, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 28 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  store i8 1, ptr %i.c, align 1, !tbaa !80
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !206
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %.pre56 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !209
  call void %.pre56(ptr noundef nonnull %i.m, ptr noundef %5, i64 noundef %6) #36, !inline_history !311
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !206
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !209
  call void %i.r(ptr noundef nonnull %i.m, ptr noundef nonnull %i.c, i64 noundef 1) #36, !inline_history !311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !206
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !211
  call void %i.u(ptr noundef nonnull %i.m, ptr noundef nonnull %i.a) #36, !inline_history !312
  %.pre.i.i.peel = load ptr, ptr %i.m, align 8, !tbaa !206 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.pre.i.i.peel, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !199
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !205
  %i.y = getelementptr inbounds nuw i8, ptr %.pre.i.i.peel, i64 44
  %i.z = load i32, ptr %i.y, align 4, !tbaa !200
  %i.aa = zext i32 %i.z to i64
  call void @OPENSSL_cleanse(ptr noundef %i.x, i64 noundef %i.aa) #36
  %i.ab = call i32 @EVP_MD_CTX_copy_ex(ptr noundef nonnull %i.m, ptr noundef nonnull %i.o) ; 0 uses
  %i.ac = zext i32 %i.w to i64
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !206
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !209
  call void %i.af(ptr noundef nonnull %i.m, ptr noundef nonnull %i.a, i64 noundef %i.ac) #36, !inline_history !313
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !206
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !211
  call void %i.ai(ptr noundef nonnull %i.m, ptr noundef nonnull %i.b) #36, !inline_history !312
  %.pre.i11.i.peel = load ptr, ptr %i.m, align 8, !tbaa !206
  %i.aj = load ptr, ptr %i.n, align 8, !tbaa !205
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre.i11.i.peel, i64 44
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !200
  %i.am = zext i32 %i.al to i64
  call void @OPENSSL_cleanse(ptr noundef %i.aj, i64 noundef %i.am) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %spec.select.peel = call i64 @llvm.umin.i64(i64 %1, i64 %i.f) ; 2 uses
  %i.an = icmp eq i64 %1, 0
  br i1 %i.an, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull readonly align 16 %i.b, i64 %spec.select.peel, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  %i.ao = icmp samesign ugt i64 %i.i, 1
  br i1 %i.ao, label %.peel.next, label %.loopexit

.peel.next:                                       ; preds = %bb.f, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 1, %bb.f ]
  %.03751 = phi i64 [ %i.by, %bb.i ], [ %spec.select.peel, %bb.f ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 3 uses
  %i.ap = trunc i64 %indvars.iv.next to i8
  store i8 %i.ap, ptr %i.c, align 1, !tbaa !80
  %i.aq = call i32 @HMAC_Init_ex(ptr noundef nonnull %7, ptr noundef null, i64 noundef 0, ptr noundef null, ptr poison)
  %.not44 = icmp eq i32 %i.aq, 0
  br i1 %.not44, label %.thread, label %bb.g

bb.g:                                             ; preds = %.peel.next
  %i.ar = load ptr, ptr %i.m, align 8, !tbaa !206
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !209
  call void %i.at(ptr noundef nonnull %i.m, ptr noundef nonnull %i.b, i64 noundef %i.f) #36, !inline_history !311
  %i.au = load ptr, ptr %i.m, align 8, !tbaa !206
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !209
  call void %i.aw(ptr noundef nonnull %i.m, ptr noundef %5, i64 noundef %6) #36, !inline_history !311
  %i.ax = load ptr, ptr %i.m, align 8, !tbaa !206
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !209
  call void %i.az(ptr noundef nonnull %i.m, ptr noundef nonnull %i.c, i64 noundef 1) #36, !inline_history !311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.ba = load ptr, ptr %i.m, align 8, !tbaa !206
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !211
  call void %i.bc(ptr noundef nonnull %i.m, ptr noundef nonnull %i.a) #36, !inline_history !312
  %.pre.i.i = load ptr, ptr %i.m, align 8, !tbaa !206 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !199
  %i.bf = load ptr, ptr %i.n, align 8, !tbaa !205
  %i.bg = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 44
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !200
  %i.bi = zext i32 %i.bh to i64
  call void @OPENSSL_cleanse(ptr noundef %i.bf, i64 noundef %i.bi) #36
  %i.bj = call i32 @EVP_MD_CTX_copy_ex(ptr noundef nonnull %i.m, ptr noundef nonnull %i.o) ; 0 uses
  %i.bk = zext i32 %i.be to i64
  %i.bl = load ptr, ptr %i.m, align 8, !tbaa !206
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !209
  call void %i.bn(ptr noundef nonnull %i.m, ptr noundef nonnull %i.a, i64 noundef %i.bk) #36, !inline_history !313
  %i.bo = load ptr, ptr %i.m, align 8, !tbaa !206
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !211
  call void %i.bq(ptr noundef nonnull %i.m, ptr noundef nonnull %i.b) #36, !inline_history !312
  %.pre.i11.i = load ptr, ptr %i.m, align 8, !tbaa !206
  %i.br = load ptr, ptr %i.n, align 8, !tbaa !205
  %i.bs = getelementptr inbounds nuw i8, ptr %.pre.i11.i, i64 44
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !200
  %i.bu = zext i32 %i.bt to i64
  call void @OPENSSL_cleanse(ptr noundef %i.br, i64 noundef %i.bu) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.bv = sub i64 %1, %.03751
  %spec.select = call i64 @llvm.umin.i64(i64 %i.bv, i64 %i.f) ; 2 uses
  %i.bw = icmp eq i64 %1, %.03751
  br i1 %i.bw, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 %.03751
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bx, ptr nonnull readonly align 16 %i.b, i64 %spec.select, i1 false)
  br label %bb.i

.thread:                                          ; preds = %.peel.next
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  br label %.loopexit

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.by = add i64 %spec.select, %.03751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  %i.bz = icmp ugt i64 %i.i, %indvars.iv.next
  br i1 %i.bz, label %.peel.next, label %.loopexit, !llvm.loop !1307

.loopexit:                                        ; preds = %bb.i, %bb.f, %.preheader, %.thread, %bb.c
  %.not46 = phi i1 [ false, %.thread ], [ false, %bb.c ], [ true, %.preheader ], [ true, %bb.f ], [ true, %bb.i ]
  %.035 = phi i32 [ 0, %.thread ], [ 0, %bb.c ], [ 1, %.preheader ], [ 1, %bb.f ], [ 1, %bb.i ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !205
  call void @OPENSSL_free(ptr noundef %i.cc) #36
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !213 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i, label %EVP_MD_CTX_cleanup.exit.i, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !215
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !216
  call void %i.cf(ptr noundef %i.ch) #36, !inline_history !314
  br label %EVP_MD_CTX_cleanup.exit.i

EVP_MD_CTX_cleanup.exit.i:                        ; preds = %bb.j, %.loopexit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, i8 0, i64 32, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !205
  call void @OPENSSL_free(ptr noundef %i.ck) #36
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !213 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.cm, null
  br i1 %.not.i4.i, label %EVP_MD_CTX_cleanup.exit5.i, label %bb.k

bb.k:                                             ; preds = %EVP_MD_CTX_cleanup.exit.i
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !215
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !216
  call void %i.cn(ptr noundef %i.cp) #36, !inline_history !314
  br label %EVP_MD_CTX_cleanup.exit5.i

EVP_MD_CTX_cleanup.exit5.i:                       ; preds = %bb.k, %EVP_MD_CTX_cleanup.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, i8 0, i64 32, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !205
  call void @OPENSSL_free(ptr noundef %i.cr) #36
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !213 ; 2 uses
  %.not.i6.i = icmp eq ptr %i.ct, null
  br i1 %.not.i6.i, label %HMAC_CTX_cleanup.exit, label %bb.l

bb.l:                                             ; preds = %EVP_MD_CTX_cleanup.exit5.i
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !215
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !216
  call void %i.cu(ptr noundef %i.cw) #36, !inline_history !314
  br label %HMAC_CTX_cleanup.exit

HMAC_CTX_cleanup.exit:                            ; preds = %EVP_MD_CTX_cleanup.exit5.i, %bb.l
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cx, i8 0, i64 32, i1 false)
  call void @OPENSSL_cleanse(ptr noundef nonnull %7, i64 noundef 104) #36
  br i1 %.not46, label %bb.n, label %bb.m

bb.m:                                             ; preds = %HMAC_CTX_cleanup.exit
  call void @ERR_put_error(i32 noundef 31, i32 noundef 0, i32 noundef 28, ptr noundef nonnull @.str.33, i32 noundef 109) #36
  br label %bb.n

bb.n:                                             ; preds = %HMAC_CTX_cleanup.exit, %bb.m, %bb.b
  %.038 = phi i32 [ 0, %bb.b ], [ %.035, %bb.m ], [ %.035, %HMAC_CTX_cleanup.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  ret i32 %.038
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @HMAC(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %7 = alloca %struct.hmac_ctx_st, align 8        ; 30 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %7, i8 0, i64 104, i1 false)
  %i.b = call i32 @HMAC_Init_ex(ptr noundef nonnull %7, ptr noundef %1, i64 noundef %2, ptr noundef %0, ptr poison)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 12 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !209
  call void %i.f(ptr noundef nonnull %i.c, ptr noundef %3, i64 noundef %4) #36, !inline_history !311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !206
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !211
  call void %i.i(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #36, !inline_history !312
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !206 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !199
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !205
  %i.n = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 44
  %i.o = load i32, ptr %i.n, align 4, !tbaa !200
  %i.p = zext i32 %i.o to i64
  call void @OPENSSL_cleanse(ptr noundef %i.m, i64 noundef %i.p) #36
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  %i.r = call i32 @EVP_MD_CTX_copy_ex(ptr noundef nonnull %i.c, ptr noundef nonnull %i.q)
  %.not.i = icmp eq i32 %i.r, 0                   ; 2 uses
  br i1 %.not.i, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = zext i32 %i.k to i64
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !206
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !209
  call void %i.v(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, i64 noundef %i.s) #36, !inline_history !313
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !206
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !211
  call void %i.y(ptr noundef nonnull %i.c, ptr noundef %5) #36, !inline_history !312
  %.not.i.i = icmp eq ptr %6, null
  %.pre.i11.i = load ptr, ptr %i.c, align 8, !tbaa !206 ; 2 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.pre.i11.i, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !199
  store i32 %i.aa, ptr %6, align 4, !tbaa !82
  br label %bb.e

.thread.i:                                        ; preds = %bb.b
  store i32 0, ptr %6, align 4, !tbaa !82
  br label %HMAC_Final.exit

end_hunk_0
begin_hunk_1_@_ZN5mldsa12_GLOBAL__N_120scalar_encode_signedEPhPKNS0_6scalarEij:bb.a
  %i.lm = shl i32 %i.jr, 20
  %i.ln = or i32 %i.ll, %i.lm
  %i.lo = lshr i32 %i.jr, 12
  %i.lp = shl i32 %i.ke, 1
  %i.lq = or i32 %i.lp, %i.lo
  %i.lr = shl i32 %i.kr, 14
  %i.ls = or i32 %i.lq, %i.lr
  %i.lt = shl i32 %i.le, 27
  %i.lu = or i32 %i.ls, %i.lt
  %i.lv = mul nuw nsw i64 %indvars.iv.i20, 13
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 %i.lv ; 4 uses
  store i32 %i.li, ptr %i.lw, align 1
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 4
  store i32 %i.ln, ptr %i.lx, align 1
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  store i32 %i.lu, ptr %i.ly, align 1
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 12
  %i.ma = lshr i64 %i.ld, 5
  %.0.extract.trunc.i29 = trunc i64 %i.ma to i8
  store i8 %.0.extract.trunc.i29, ptr %i.lz, align 1
  %indvars.iv.next.i30 = add nuw nsw i64 %indvars.iv.i20, 1 ; 2 uses
  %exitcond.not.i31 = icmp eq i64 %indvars.iv.next.i30, 32
  br i1 %exitcond.not.i31, label %_ZN5mldsa12_GLOBAL__N_124scalar_encode_signed_3_2EPhPKNS0_6scalarE.exit, label %.preheader, !llvm.loop !1619

_ZN5mldsa12_GLOBAL__N_124scalar_encode_signed_3_2EPhPKNS0_6scalarE.exit: ; preds = %.preheader36, %.preheader34, %.preheader32, %.preheader
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN5mldsa12_GLOBAL__N_134mldsa_verify_internal_no_self_testILi6ELi5EEEiPKNS0_10public_keyIXT_EEEPKhPS6_mS8_mS8_m(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7) unnamed_addr #5 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 6 uses
  %8 = alloca %struct.cbs_st, align 8             ; 6 uses
  %9 = alloca %struct.cbs_st, align 8             ; 6 uses
  %10 = alloca %struct.cbs_st, align 8            ; 7 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  %11 = alloca %struct.BORINGSSL_keccak_st, align 8 ; 15 uses
  %12 = alloca %"struct.mldsa::(anonymous namespace)::scalar", align 4 ; 5 uses
  %i.c = alloca [768 x i8], align 16              ; 9 uses
  %i.d = alloca [48 x i8], align 16               ; 4 uses
  %i.e = tail call ptr @OPENSSL_malloc(i64 noundef 59440) #36 ; 418 uses
  %i.f = ptrtoaddr ptr %i.e to i64                ; 6 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIZN5mldsa12_GLOBAL__N_134mldsa_verify_internal_no_self_testILi6ELi5EEEiPKNS1_10public_keyIXT_EEEPKhPS7_mS9_mS9_mE9values_stNS1_11DeleterFreeISA_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  store ptr %1, ptr %10, align 8, !tbaa !327
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 3309, ptr %i.g, align 8, !tbaa !326
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.h = call i32 @CBS_copy_bytes(ptr noundef nonnull %10, ptr noundef nonnull %i.e, i64 noundef 48) #36
  %.not.i35 = icmp eq i32 %i.h, 0
  br i1 %.not.i35, label %.thread66, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @CBS_get_bytes(ptr noundef nonnull %10, ptr noundef nonnull %8, i64 noundef 3200) #36
  %.not6.i = icmp eq i32 %i.i, 0
  br i1 %.not6.i, label %.thread66, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 3 uses
  %i.k = load ptr, ptr %8, align 8, !tbaa !327    ; 5 uses
  call fastcc void @_ZN5mldsa12_GLOBAL__N_126scalar_decode_signed_20_19EPNS0_6scalarEPKh(ptr noundef nonnull %i.j, ptr noundef readonly %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 1072
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 640
  call fastcc void @_ZN5mldsa12_GLOBAL__N_126scalar_decode_signed_20_19EPNS0_6scalarEPKh(ptr noundef nonnull %i.l, ptr noundef nonnull readonly %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 2096
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 1280
  call fastcc void @_ZN5mldsa12_GLOBAL__N_126scalar_decode_signed_20_19EPNS0_6scalarEPKh(ptr noundef nonnull %i.n, ptr noundef nonnull readonly %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 3120
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 1920
  call fastcc void @_ZN5mldsa12_GLOBAL__N_126scalar_decode_signed_20_19EPNS0_6scalarEPKh(ptr noundef nonnull %i.p, ptr noundef nonnull readonly %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 4144
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 2560
  call fastcc void @_ZN5mldsa12_GLOBAL__N_126scalar_decode_signed_20_19EPNS0_6scalarEPKh(ptr noundef nonnull %i.r, ptr noundef nonnull readonly %i.s)
  %i.t = call i32 @CBS_get_bytes(ptr noundef nonnull %10, ptr noundef nonnull %9, i64 noundef 61) #36
  %.not8.i = icmp eq i32 %i.t, 0
  br i1 %.not8.i, label %.thread66, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 5168 ; 3 uses
  %i.v = load ptr, ptr %9, align 8, !tbaa !327    ; 13 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6144) %i.u, i8 0, i64 6144, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 55
  %i.x = load i8, ptr %i.w, align 1, !tbaa !80    ; 7 uses
  %i.y = zext i8 %i.x to i32
  %i.z = icmp ugt i8 %i.x, 55
  br i1 %i.z, label %.thread66, label %.preheader51.i.i

.preheader51.i.i:                                 ; preds = %bb.e
  %.not5060.not.i.i = icmp eq i8 %i.x, 0
  br i1 %.not5060.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader51.i.i
  %zext.i.i = zext nneg i8 %i.x to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.g ] ; 2 uses
  %.062.i.i = phi i32 [ -1, %.lr.ph.i.i ], [ %i.ac, %bb.g ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.i.i
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !80  ; 2 uses
  %i.ac = zext i8 %i.ab to i32                    ; 2 uses
  %i.ad = icmp slt i32 %.062.i.i, 0
  %.not.i10.i = icmp slt i32 %.062.i.i, %i.ac
  %or.cond.i.i = select i1 %i.ad, i1 true, i1 %.not.i10.i
  br i1 %or.cond.i.i, label %bb.g, label %.thread66

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ae = zext i8 %i.ab to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ae
  store i32 1, ptr %i.af, align 4, !tbaa !82
  %.not96.i.i = icmp eq i64 %indvars.iv.next.i.i, %zext.i.i
  br i1 %.not96.i.i, label %._crit_edge.i.i, label %bb.f, !llvm.loop !1620

._crit_edge.i.i:                                  ; preds = %bb.g, %.preheader51.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !80  ; 4 uses
  %i.ai = zext i8 %i.ah to i32                    ; 2 uses
  %i.aj = icmp ugt i8 %i.x, %i.ah
  %i.ak = icmp ugt i8 %i.ah, 55
  %or.cond49.1.i.i = or i1 %i.ak, %i.aj
  br i1 %or.cond49.1.i.i, label %.thread66, label %.preheader51.1.i.i

.preheader51.1.i.i:                               ; preds = %._crit_edge.i.i
  %.not5060.1.i.i = icmp ult i8 %i.x, %i.ah
  br i1 %.not5060.1.i.i, label %.lr.ph.1.i.i, label %._crit_edge.1.i.i

.lr.ph.1.i.i:                                     ; preds = %.preheader51.1.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 6192
  %i.am = zext nneg i8 %i.x to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.1.i.i
  %indvars.iv.1.i.i = phi i64 [ %i.am, %.lr.ph.1.i.i ], [ %indvars.iv.next.1.i.i, %bb.i ] ; 2 uses
  %.062.1.i.i = phi i32 [ -1, %.lr.ph.1.i.i ], [ %i.ap, %bb.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.1.i.i
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !80  ; 2 uses
  %i.ap = zext i8 %i.ao to i32                    ; 2 uses
  %i.aq = icmp slt i32 %.062.1.i.i, 0
  %.not.1.i13.i = icmp slt i32 %.062.1.i.i, %i.ap
  %or.cond.1.i.i = select i1 %i.aq, i1 true, i1 %.not.1.i13.i
  br i1 %or.cond.1.i.i, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.1.i.i = add nuw nsw i64 %indvars.iv.1.i.i, 1 ; 2 uses
  %i.ar = zext i8 %i.ao to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ar
  store i32 1, ptr %i.as, align 4, !tbaa !82
  %lftr.wideiv.1.i.i = trunc i64 %indvars.iv.next.1.i.i to i32
  %exitcond.1.not.i.i = icmp eq i32 %lftr.wideiv.1.i.i, %i.ai
  br i1 %exitcond.1.not.i.i, label %._crit_edge.1.i.i, label %bb.h, !llvm.loop !1620

._crit_edge.1.i.i:                                ; preds = %bb.i, %.preheader51.1.i.i
  %.132.lcssa.1.i.i = phi i32 [ %i.y, %.preheader51.1.i.i ], [ %i.ai, %bb.i ] ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 57
  %i.au = load i8, ptr %i.at, align 1, !tbaa !80  ; 2 uses
  %i.av = zext i8 %i.au to i32                    ; 4 uses
  %i.aw = icmp samesign ugt i32 %.132.lcssa.1.i.i, %i.av
  %i.ax = icmp ugt i8 %i.au, 55
  %or.cond49.2.i.i = or i1 %i.ax, %i.aw
  br i1 %or.cond49.2.i.i, label %.thread66, label %.preheader51.2.i.i

.preheader51.2.i.i:                               ; preds = %._crit_edge.1.i.i
  %.not5060.2.i.i = icmp samesign ult i32 %.132.lcssa.1.i.i, %i.av
  br i1 %.not5060.2.i.i, label %.lr.ph.2.i.i, label %._crit_edge.2.i.i

.lr.ph.2.i.i:                                     ; preds = %.preheader51.2.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 7216
  %i.az = zext nneg i32 %.132.lcssa.1.i.i to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.2.i.i
  %indvars.iv.2.i.i = phi i64 [ %i.az, %.lr.ph.2.i.i ], [ %indvars.iv.next.2.i.i, %bb.k ] ; 2 uses
  %.062.2.i.i = phi i32 [ -1, %.lr.ph.2.i.i ], [ %i.bc, %bb.k ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.2.i.i
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !80  ; 2 uses
  %i.bc = zext i8 %i.bb to i32                    ; 2 uses
  %i.bd = icmp slt i32 %.062.2.i.i, 0
  %.not.2.i12.i = icmp slt i32 %.062.2.i.i, %i.bc
  %or.cond.2.i.i = select i1 %i.bd, i1 true, i1 %.not.2.i12.i
  br i1 %or.cond.2.i.i, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next.2.i.i = add nuw nsw i64 %indvars.iv.2.i.i, 1 ; 2 uses
  %i.be = zext i8 %i.bb to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.be
  store i32 1, ptr %i.bf, align 4, !tbaa !82
  %lftr.wideiv.2.i.i = trunc i64 %indvars.iv.next.2.i.i to i32
  %exitcond.2.not.i.i = icmp eq i32 %lftr.wideiv.2.i.i, %i.av
  br i1 %exitcond.2.not.i.i, label %._crit_edge.2.i.i, label %bb.j, !llvm.loop !1620

._crit_edge.2.i.i:                                ; preds = %bb.k, %.preheader51.2.i.i
  %.132.lcssa.2.i.i = phi i32 [ %.132.lcssa.1.i.i, %.preheader51.2.i.i ], [ %i.av, %bb.k ] ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.v, i64 58
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !80  ; 2 uses
  %i.bi = zext i8 %i.bh to i32                    ; 4 uses
  %13 = icmp sgt i32 %.132.lcssa.2.i.i, %i.bi
  %i.bj = icmp ugt i8 %i.bh, 55
  %or.cond49.3.i.i = or i1 %i.bj, %13
  br i1 %or.cond49.3.i.i, label %.thread66, label %.preheader51.3.i.i

.preheader51.3.i.i:                               ; preds = %._crit_edge.2.i.i
  %.not5060.3.i.i = icmp slt i32 %.132.lcssa.2.i.i, %i.bi
  br i1 %.not5060.3.i.i, label %.lr.ph.3.i.i, label %._crit_edge.3.i.i

.lr.ph.3.i.i:                                     ; preds = %.preheader51.3.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 8240
  %i.bl = zext nneg i32 %.132.lcssa.2.i.i to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.3.i.i
  %indvars.iv.3.i.i = phi i64 [ %i.bl, %.lr.ph.3.i.i ], [ %indvars.iv.next.3.i.i, %bb.m ] ; 2 uses
  %.062.3.i.i = phi i32 [ -1, %.lr.ph.3.i.i ], [ %i.bo, %bb.m ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.3.i.i
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !80  ; 2 uses
  %i.bo = zext i8 %i.bn to i32                    ; 2 uses
  %i.bp = icmp slt i32 %.062.3.i.i, 0
  %.not.3.i11.i = icmp slt i32 %.062.3.i.i, %i.bo
  %or.cond.3.i.i = select i1 %i.bp, i1 true, i1 %.not.3.i11.i
  br i1 %or.cond.3.i.i, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %indvars.iv.next.3.i.i = add nuw nsw i64 %indvars.iv.3.i.i, 1 ; 2 uses
  %i.bq = zext i8 %i.bn to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bq
  store i32 1, ptr %i.br, align 4, !tbaa !82
  %lftr.wideiv.3.i.i = trunc i64 %indvars.iv.next.3.i.i to i32
  %exitcond.3.not.i.i = icmp eq i32 %lftr.wideiv.3.i.i, %i.bi
  br i1 %exitcond.3.not.i.i, label %._crit_edge.3.i.i, label %bb.l, !llvm.loop !1620

._crit_edge.3.i.i:                                ; preds = %bb.m, %.preheader51.3.i.i
  %.132.lcssa.3.i.i = phi i32 [ %.132.lcssa.2.i.i, %.preheader51.3.i.i ], [ %i.bi, %bb.m ] ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.v, i64 59
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !80  ; 2 uses
  %i.bu = zext i8 %i.bt to i32                    ; 4 uses
  %14 = icmp sgt i32 %.132.lcssa.3.i.i, %i.bu
  %i.bv = icmp ugt i8 %i.bt, 55
  %or.cond49.4.i.i = or i1 %i.bv, %14
  br i1 %or.cond49.4.i.i, label %.thread66, label %.preheader51.4.i.i

.preheader51.4.i.i:                               ; preds = %._crit_edge.3.i.i
  %.not5060.4.i.i = icmp slt i32 %.132.lcssa.3.i.i, %i.bu
  br i1 %.not5060.4.i.i, label %.lr.ph.4.i.i, label %._crit_edge.4.i.i

.lr.ph.4.i.i:                                     ; preds = %.preheader51.4.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 9264
  %i.bx = zext nneg i32 %.132.lcssa.3.i.i to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.4.i.i
  %indvars.iv.4.i.i = phi i64 [ %i.bx, %.lr.ph.4.i.i ], [ %indvars.iv.next.4.i.i, %bb.o ] ; 2 uses
  %.062.4.i.i = phi i32 [ -1, %.lr.ph.4.i.i ], [ %i.ca, %bb.o ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.4.i.i
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !80  ; 2 uses
  %i.ca = zext i8 %i.bz to i32                    ; 2 uses
  %i.cb = icmp slt i32 %.062.4.i.i, 0
  %.not.4.i.i = icmp slt i32 %.062.4.i.i, %i.ca
  %or.cond.4.i.i = select i1 %i.cb, i1 true, i1 %.not.4.i.i
  br i1 %or.cond.4.i.i, label %bb.o, label %.thread66

bb.o:                                             ; preds = %bb.n
  %indvars.iv.next.4.i.i = add nuw nsw i64 %indvars.iv.4.i.i, 1 ; 2 uses
  %i.cc = zext i8 %i.bz to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.cc
  store i32 1, ptr %i.cd, align 4, !tbaa !82
  %lftr.wideiv.4.i.i = trunc i64 %indvars.iv.next.4.i.i to i32
  %exitcond.4.not.i.i = icmp eq i32 %lftr.wideiv.4.i.i, %i.bu
  br i1 %exitcond.4.not.i.i, label %._crit_edge.4.i.i, label %bb.n, !llvm.loop !1620

._crit_edge.4.i.i:                                ; preds = %bb.o, %.preheader51.4.i.i
  %.132.lcssa.4.i.i = phi i32 [ %.132.lcssa.3.i.i, %.preheader51.4.i.i ], [ %i.bu, %bb.o ] ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.v, i64 60
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !80  ; 2 uses
  %i.cg = zext i8 %i.cf to i32                    ; 4 uses
  %15 = icmp sgt i32 %.132.lcssa.4.i.i, %i.cg
  %i.ch = icmp ugt i8 %i.cf, 55
  %or.cond49.5.i.i = or i1 %i.ch, %15
  br i1 %or.cond49.5.i.i, label %.thread66, label %.preheader51.5.i.i

.preheader51.5.i.i:                               ; preds = %._crit_edge.4.i.i
  %.not5060.5.i.i = icmp slt i32 %.132.lcssa.4.i.i, %i.cg
  br i1 %.not5060.5.i.i, label %.lr.ph.5.i.i, label %.preheader.i.i

.lr.ph.5.i.i:                                     ; preds = %.preheader51.5.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 10288
  %i.cj = zext nneg i32 %.132.lcssa.4.i.i to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.5.i.i
  %indvars.iv.5.i.i = phi i64 [ %i.cj, %.lr.ph.5.i.i ], [ %indvars.iv.next.5.i.i, %bb.q ] ; 2 uses
  %.062.5.i.i = phi i32 [ -1, %.lr.ph.5.i.i ], [ %i.cm, %bb.q ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.5.i.i
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !80  ; 2 uses
  %i.cm = zext i8 %i.cl to i32                    ; 2 uses
  %i.cn = icmp slt i32 %.062.5.i.i, 0
  %.not.5.i.i = icmp slt i32 %.062.5.i.i, %i.cm
  %or.cond.5.i.i = select i1 %i.cn, i1 true, i1 %.not.5.i.i
  br i1 %or.cond.5.i.i, label %bb.q, label %.thread66

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next.5.i.i = add nuw nsw i64 %indvars.iv.5.i.i, 1 ; 2 uses
  %i.co = zext i8 %i.cl to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.co
  store i32 1, ptr %i.cp, align 4, !tbaa !82
  %lftr.wideiv.5.i.i = trunc i64 %indvars.iv.next.5.i.i to i32
  %exitcond.5.not.i.i = icmp eq i32 %lftr.wideiv.5.i.i, %i.cg
  br i1 %exitcond.5.not.i.i, label %.preheader.i.i, label %bb.p, !llvm.loop !1620

.preheader.i.i:                                   ; preds = %bb.q, %.preheader51.5.i.i
  %.4.ph.i.i = phi i32 [ %.132.lcssa.4.i.i, %.preheader51.5.i.i ], [ %i.cg, %bb.q ] ; 2 uses
  %i.cq = icmp slt i32 %.4.ph.i.i, 55
  br i1 %i.cq, label %.lr.ph66.preheader.i.i, label %.loopexit67

.lr.ph66.preheader.i.i:                           ; preds = %.preheader.i.i
  %i.cr = zext nneg i32 %.4.ph.i.i to i64
  br label %.lr.ph66.i.i

bb.r:                                             ; preds = %.lr.ph66.i.i
  %indvars.iv.next89.i.i = add nuw nsw i64 %indvars.iv88.i.i, 1 ; 2 uses
  %i.cs = and i64 %indvars.iv.next89.i.i, 4294967295
  %exitcond.not.i.i = icmp eq i64 %i.cs, 55
  br i1 %exitcond.not.i.i, label %.loopexit67, label %.lr.ph66.i.i, !llvm.loop !1621

.lr.ph66.i.i:                                     ; preds = %bb.r, %.lr.ph66.preheader.i.i
  %indvars.iv88.i.i = phi i64 [ %i.cr, %.lr.ph66.preheader.i.i ], [ %indvars.iv.next89.i.i, %bb.r ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv88.i.i
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !80
  %.not42.i.i = icmp eq i8 %i.cu, 0
  br i1 %.not42.i.i, label %bb.r, label %.loopexit

.loopexit67:                                      ; preds = %bb.r, %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 11312 ; 2 uses
  call fastcc void @_ZN5mldsa12_GLOBAL__N_113matrix_expandILi6ELi5EEEvPNS0_6matrixIXT_EXT0_EEEPKh(ptr noundef nonnull %i.cv, ptr noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.cw, i8 0, i64 224, i1 false)
  store i32 3, ptr %11, align 8, !tbaa !320
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 2 uses
  store i32 0, ptr %i.cx, align 4, !tbaa !321
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 208 ; 2 uses
  store i64 136, ptr %i.cy, align 8, !tbaa !322
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 6176
  call void @BORINGSSL_keccak_absorb(ptr noundef nonnull %11, ptr noundef nonnull %i.cz, i64 noundef 64)
  call void @BORINGSSL_keccak_absorb(ptr noundef nonnull %11, ptr noundef %4, i64 noundef %5)
  call void @BORINGSSL_keccak_absorb(ptr noundef nonnull %11, ptr noundef %6, i64 noundef %7)
  call void @BORINGSSL_keccak_absorb(ptr noundef nonnull %11, ptr noundef %2, i64 noundef %3)
  call void @BORINGSSL_keccak_squeeze(ptr noundef nonnull %11, ptr noundef nonnull %i.b, i64 noundef 64)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  call fastcc void @_ZN5mldsa12_GLOBAL__N_129scalar_sample_in_ball_vartimeEPNS0_6scalarEPKhii(ptr noundef %12, ptr noundef nonnull %i.e, i32 noundef 48, i32 noundef 49)
  call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %12)
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 42032 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5120) %i.da, ptr noundef nonnull readonly align 1 dereferenceable(5120) %i.j, i64 5120, i1 false)
  call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.da)
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 43056
  call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.db)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.e, i64 44080
  call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.dc)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 45104
  call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.dd)
  %i.de = getelementptr inbounds nuw i8, ptr %i.e, i64 46128
  call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.de)
  %i.df = getelementptr inbounds nuw i8, ptr %i.e, i64 47152 ; 7 uses
  call fastcc void @_ZN5mldsa12_GLOBAL__N_111matrix_multILi6ELi5EEEvPNS0_6vectorIXT_EEEPKNS0_6matrixIXT_EXT0_EEEPKNS2_IXT0_EEE(ptr noundef nonnull %i.df, ptr noundef nonnull %i.cv, ptr noundef nonnull %i.da)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.e, i64 53296 ; 9 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.di = sub i64 %i.f, %i.a
  %i.dj = add i64 %i.di, 53263
  %diff.check = icmp ult i64 %i.dj, 31
  br i1 %diff.check, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.loopexit67
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %wide.load = load <4 x i32>, ptr %i.dh, align 4, !tbaa !82
  %wide.load95 = load <4 x i32>, ptr %i.dk, align 4, !tbaa !82
  %i.dl = shl <4 x i32> %wide.load, splat (i32 13)
  %i.dm = shl <4 x i32> %wide.load95, splat (i32 13)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.e, i64 53312
  store <4 x i32> %i.dl, ptr %i.dg, align 4, !tbaa !82
  store <4 x i32> %i.dm, ptr %i.dn, align 4, !tbaa !82
  %i.do = getelementptr inbounds nuw i8, ptr %i.e, i64 53328
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %wide.load.1 = load <4 x i32>, ptr %i.dp, align 4, !tbaa !82
  %wide.load95.1 = load <4 x i32>, ptr %i.dq, align 4, !tbaa !82
  %i.dr = shl <4 x i32> %wide.load.1, splat (i32 13)
  %i.ds = shl <4 x i32> %wide.load95.1, splat (i32 13)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.e, i64 53344
  store <4 x i32> %i.dr, ptr %i.do, align 4, !tbaa !82
  store <4 x i32> %i.ds, ptr %i.dt, align 4, !tbaa !82
  %i.du = getelementptr inbounds nuw i8, ptr %i.e, i64 53360
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 112
  %wide.load.2 = load <4 x i32>, ptr %i.dv, align 4, !tbaa !82
  %wide.load95.2 = load <4 x i32>, ptr %i.dw, align 4, !tbaa !82
  %i.dx = shl <4 x i32> %wide.load.2, splat (i32 13)
  %i.dy = shl <4 x i32> %wide.load95.2, splat (i32 13)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.e, i64 53376
  store <4 x i32> %i.dx, ptr %i.du, align 4, !tbaa !82
  store <4 x i32> %i.dy, ptr %i.dz, align 4, !tbaa !82
  %i.ea = getelementptr inbounds nuw i8, ptr %i.e, i64 53392
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 144
  %wide.load.3 = load <4 x i32>, ptr %i.eb, align 4, !tbaa !82
  %wide.load95.3 = load <4 x i32>, ptr %i.ec, align 4, !tbaa !82
  %i.ed = shl <4 x i32> %wide.load.3, splat (i32 13)
  %i.ee = shl <4 x i32> %wide.load95.3, splat (i32 13)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.e, i64 53408
  store <4 x i32> %i.ed, ptr %i.ea, align 4, !tbaa !82
  store <4 x i32> %i.ee, ptr %i.ef, align 4, !tbaa !82
  %i.eg = getelementptr inbounds nuw i8, ptr %i.e, i64 53424
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 176
  %wide.load.4 = load <4 x i32>, ptr %i.eh, align 4, !tbaa !82
  %wide.load95.4 = load <4 x i32>, ptr %i.ei, align 4, !tbaa !82
  %i.ej = shl <4 x i32> %wide.load.4, splat (i32 13)
  %i.ek = shl <4 x i32> %wide.load95.4, splat (i32 13)
  %i.el = getelementptr inbounds nuw i8, ptr %i.e, i64 53440
  store <4 x i32> %i.ej, ptr %i.eg, align 4, !tbaa !82
  store <4 x i32> %i.ek, ptr %i.el, align 4, !tbaa !82
  %i.em = getelementptr inbounds nuw i8, ptr %i.e, i64 53456
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 208
  %wide.load.5 = load <4 x i32>, ptr %i.en, align 4, !tbaa !82
  %wide.load95.5 = load <4 x i32>, ptr %i.eo, align 4, !tbaa !82
  %i.ep = shl <4 x i32> %wide.load.5, splat (i32 13)
  %i.eq = shl <4 x i32> %wide.load95.5, splat (i32 13)
  %i.er = getelementptr inbounds nuw i8, ptr %i.e, i64 53472
  store <4 x i32> %i.ep, ptr %i.em, align 4, !tbaa !82
  store <4 x i32> %i.eq, ptr %i.er, align 4, !tbaa !82
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 53488
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 240
  %wide.load.6 = load <4 x i32>, ptr %i.et, align 4, !tbaa !82
  %wide.load95.6 = load <4 x i32>, ptr %i.eu, align 4, !tbaa !82
  %i.ev = shl <4 x i32> %wide.load.6, splat (i32 13)
  %i.ew = shl <4 x i32> %wide.load95.6, splat (i32 13)
  %i.ex = getelementptr inbounds nuw i8, ptr %i.e, i64 53504
  store <4 x i32> %i.ev, ptr %i.es, align 4, !tbaa !82
  store <4 x i32> %i.ew, ptr %i.ex, align 4, !tbaa !82
  %i.ey = getelementptr inbounds nuw i8, ptr %i.e, i64 53520
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 272
  %wide.load.7 = load <4 x i32>, ptr %i.ez, align 4, !tbaa !82
  %wide.load95.7 = load <4 x i32>, ptr %i.fa, align 4, !tbaa !82
  %i.fb = shl <4 x i32> %wide.load.7, splat (i32 13)
  %i.fc = shl <4 x i32> %wide.load95.7, splat (i32 13)
  %i.fd = getelementptr inbounds nuw i8, ptr %i.e, i64 53536
  store <4 x i32> %i.fb, ptr %i.ey, align 4, !tbaa !82
  store <4 x i32> %i.fc, ptr %i.fd, align 4, !tbaa !82
  %i.fe = getelementptr inbounds nuw i8, ptr %i.e, i64 53552
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 304
  %wide.load.8 = load <4 x i32>, ptr %i.ff, align 4, !tbaa !82
  %wide.load95.8 = load <4 x i32>, ptr %i.fg, align 4, !tbaa !82
  %i.fh = shl <4 x i32> %wide.load.8, splat (i32 13)
  %i.fi = shl <4 x i32> %wide.load95.8, splat (i32 13)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.e, i64 53568
  store <4 x i32> %i.fh, ptr %i.fe, align 4, !tbaa !82
  store <4 x i32> %i.fi, ptr %i.fj, align 4, !tbaa !82
  %i.fk = getelementptr inbounds nuw i8, ptr %i.e, i64 53584
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 336
  %wide.load.9 = load <4 x i32>, ptr %i.fl, align 4, !tbaa !82
  %wide.load95.9 = load <4 x i32>, ptr %i.fm, align 4, !tbaa !82
  %i.fn = shl <4 x i32> %wide.load.9, splat (i32 13)
  %i.fo = shl <4 x i32> %wide.load95.9, splat (i32 13)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.e, i64 53600
  store <4 x i32> %i.fn, ptr %i.fk, align 4, !tbaa !82
  store <4 x i32> %i.fo, ptr %i.fp, align 4, !tbaa !82
  %i.fq = getelementptr inbounds nuw i8, ptr %i.e, i64 53616
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 368
  %wide.load.10 = load <4 x i32>, ptr %i.fr, align 4, !tbaa !82
  %wide.load95.10 = load <4 x i32>, ptr %i.fs, align 4, !tbaa !82
  %i.ft = shl <4 x i32> %wide.load.10, splat (i32 13)
  %i.fu = shl <4 x i32> %wide.load95.10, splat (i32 13)
  %i.fv = getelementptr inbounds nuw i8, ptr %i.e, i64 53632
  store <4 x i32> %i.ft, ptr %i.fq, align 4, !tbaa !82
end_hunk_1
begin_hunk_2_@_ZN5mldsa12_GLOBAL__N_132mldsa_sign_internal_no_self_testILi8ELi7EEEiPhPKNS0_11private_keyIXT_EXT0_EEEPKhmS8_mS8_mS8_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.awh = call i64 @CBB_len(ptr noundef nonnull %13) #36
  %i.awi = icmp eq i64 %i.awh, 4627
  br i1 %i.awi, label %_ZN5mldsa12_GLOBAL__N_123mldsa_marshal_signatureILi8ELi7EEEiP6cbb_stPKNS0_9signatureIXT_EXT0_EEE.exit.thread, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @abort() #37
  unreachable

bb.bw:                                            ; preds = %_ZN5mldsa12_GLOBAL__N_117vector_max_signedILi8EEEjPKNS0_6vectorIXT_EEE.exit, %_ZN5mldsa12_GLOBAL__N_117vector_count_onesILi8EEEmPKNS0_6vectorIXT_EEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #36
  %i.awj = add i16 %.0, 7
  br label %bb.c, !llvm.loop !1692

_ZN5mldsa12_GLOBAL__N_123mldsa_marshal_signatureILi8ELi7EEEiP6cbb_stPKNS0_9signatureIXT_EXT0_EEE.exit.thread.sink.split: ; preds = %bb.n, %_ZN5mldsa12_GLOBAL__N_123mldsa_marshal_signatureILi8ELi7EEEiP6cbb_stPKNS0_9signatureIXT_EXT0_EEE.exit.thread252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %_ZN5mldsa12_GLOBAL__N_123mldsa_marshal_signatureILi8ELi7EEEiP6cbb_stPKNS0_9signatureIXT_EXT0_EEE.exit.thread

_ZN5mldsa12_GLOBAL__N_123mldsa_marshal_signatureILi8ELi7EEEiP6cbb_stPKNS0_9signatureIXT_EXT0_EEE.exit.thread: ; preds = %_ZN5mldsa12_GLOBAL__N_123mldsa_marshal_signatureILi8ELi7EEEiP6cbb_stPKNS0_9signatureIXT_EXT0_EEE.exit.thread.sink.split, %bb.m, %bb.bu
  %.134 = phi i32 [ 0, %bb.m ], [ 1, %bb.bu ], [ 0, %_ZN5mldsa12_GLOBAL__N_123mldsa_marshal_signatureILi8ELi7EEEiP6cbb_stPKNS0_9signatureIXT_EXT0_EEE.exit.thread.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #36
  call void @OPENSSL_free(ptr noundef nonnull %i.m) #36
  br label %_ZNSt10unique_ptrIZN5mldsa12_GLOBAL__N_132mldsa_sign_internal_no_self_testILi8ELi7EEEiPhPKNS1_11private_keyIXT_EXT0_EEEPKhmS9_mS9_mS9_E9values_stNS1_11DeleterFreeISA_EEED2Ev.exit

_ZNSt10unique_ptrIZN5mldsa12_GLOBAL__N_132mldsa_sign_internal_no_self_testILi8ELi7EEEiPhPKNS1_11private_keyIXT_EXT0_EEEPKhmS9_mS9_mS9_E9values_stNS1_11DeleterFreeISA_EEED2Ev.exit: ; preds = %bb.a, %_ZN5mldsa12_GLOBAL__N_123mldsa_marshal_signatureILi8ELi7EEEiP6cbb_stPKNS0_9signatureIXT_EXT0_EEE.exit.thread
  %.4260 = phi i32 [ %.134, %_ZN5mldsa12_GLOBAL__N_123mldsa_marshal_signatureILi8ELi7EEEiP6cbb_stPKNS0_9signatureIXT_EXT0_EEE.exit.thread ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  ret i32 %.4260
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN5mldsa12_GLOBAL__N_134mldsa_verify_internal_no_self_testILi8ELi7EEEiPKNS0_10public_keyIXT_EEEPKhPS6_mS8_mS8_m(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7) unnamed_addr #5 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 8 uses
  %8 = alloca %"struct.mldsa::(anonymous namespace)::scalar", align 4 ; 4 uses
  %9 = alloca %struct.cbs_st, align 8             ; 6 uses
  %10 = alloca %struct.cbs_st, align 8            ; 6 uses
  %11 = alloca %struct.cbs_st, align 8            ; 7 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  %12 = alloca %struct.BORINGSSL_keccak_st, align 8 ; 15 uses
  %13 = alloca %"struct.mldsa::(anonymous namespace)::scalar", align 4 ; 5 uses
  %i.c = alloca [1024 x i8], align 16             ; 4 uses
  %i.d = alloca [64 x i8], align 16               ; 4 uses
  %i.e = tail call ptr @OPENSSL_malloc(i64 noundef 96320) #36 ; 550 uses
  %i.f = ptrtoaddr ptr %i.e to i64                ; 8 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIZN5mldsa12_GLOBAL__N_134mldsa_verify_internal_no_self_testILi8ELi7EEEiPKNS1_10public_keyIXT_EEEPKhPS7_mS9_mS9_mE9values_stNS1_11DeleterFreeISA_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  store ptr %1, ptr %11, align 8, !tbaa !327
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 4627, ptr %i.g, align 8, !tbaa !326
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  %i.h = call i32 @CBS_copy_bytes(ptr noundef nonnull %11, ptr noundef nonnull %i.e, i64 noundef 64) #36
  %.not.i35 = icmp eq i32 %i.h, 0
  br i1 %.not.i35, label %.thread75, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @CBS_get_bytes(ptr noundef nonnull %11, ptr noundef nonnull %9, i64 noundef 4480) #36
  %.not6.i = icmp eq i32 %i.i, 0
  br i1 %.not6.i, label %.thread75, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 3 uses
  %i.k = load ptr, ptr %9, align 8, !tbaa !327
  %i.l = call fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_120vector_decode_signedILi7EEEiPNS0_6vectorIXT_EEEPKhij(ptr noundef nonnull %i.j, ptr noundef %i.k, i32 noundef 20)
  %.not7.i = icmp eq i32 %i.l, 0
  br i1 %.not7.i, label %.thread75, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = call i32 @CBS_get_bytes(ptr noundef nonnull %11, ptr noundef nonnull %10, i64 noundef 83) #36
  %.not8.i = icmp eq i32 %i.m, 0
  br i1 %.not8.i, label %.thread75, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 7232 ; 3 uses
  %i.o = load ptr, ptr %10, align 8, !tbaa !327   ; 17 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8192) %i.n, i8 0, i64 8192, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 75
  %i.q = load i8, ptr %i.p, align 1, !tbaa !80    ; 7 uses
  %i.r = zext i8 %i.q to i32
  %i.s = icmp ugt i8 %i.q, 75
  br i1 %i.s, label %.thread75, label %.preheader51.i.i

.preheader51.i.i:                                 ; preds = %bb.f
  %.not5060.not.i.i = icmp eq i8 %i.q, 0
  br i1 %.not5060.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader51.i.i
  %zext.i.i = zext nneg i8 %i.q to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.h ] ; 2 uses
  %.062.i.i = phi i32 [ -1, %.lr.ph.i.i ], [ %i.v, %bb.h ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv.i.i
  %i.u = load i8, ptr %i.t, align 1, !tbaa !80    ; 2 uses
  %i.v = zext i8 %i.u to i32                      ; 2 uses
  %i.w = icmp slt i32 %.062.i.i, 0
  %.not.i.i = icmp slt i32 %.062.i.i, %i.v
  %or.cond.i.i = select i1 %i.w, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %bb.h, label %.thread75

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.x = zext i8 %i.u to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.x
  store i32 1, ptr %i.y, align 4, !tbaa !82
  %.not102.i.i = icmp eq i64 %indvars.iv.next.i.i, %zext.i.i
  br i1 %.not102.i.i, label %._crit_edge.i.i, label %bb.g, !llvm.loop !1693

._crit_edge.i.i:                                  ; preds = %bb.h, %.preheader51.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 76
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !80   ; 4 uses
  %i.ab = zext i8 %i.aa to i32                    ; 2 uses
  %i.ac = icmp ugt i8 %i.q, %i.aa
  %i.ad = icmp ugt i8 %i.aa, 75
  %or.cond49.1.i.i = or i1 %i.ad, %i.ac
  br i1 %or.cond49.1.i.i, label %.thread75, label %.preheader51.1.i.i

.preheader51.1.i.i:                               ; preds = %._crit_edge.i.i
  %.not5060.1.i.i = icmp ult i8 %i.q, %i.aa
  br i1 %.not5060.1.i.i, label %.lr.ph.1.i.i, label %._crit_edge.1.i.i

.lr.ph.1.i.i:                                     ; preds = %.preheader51.1.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 8256
  %i.af = zext nneg i8 %i.q to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.1.i.i
  %indvars.iv.1.i.i = phi i64 [ %i.af, %.lr.ph.1.i.i ], [ %indvars.iv.next.1.i.i, %bb.j ] ; 2 uses
  %.062.1.i.i = phi i32 [ -1, %.lr.ph.1.i.i ], [ %i.ai, %bb.j ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv.1.i.i
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !80  ; 2 uses
  %i.ai = zext i8 %i.ah to i32                    ; 2 uses
  %i.aj = icmp slt i32 %.062.1.i.i, 0
  %.not.1.i.i = icmp slt i32 %.062.1.i.i, %i.ai
  %or.cond.1.i.i = select i1 %i.aj, i1 true, i1 %.not.1.i.i
  br i1 %or.cond.1.i.i, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next.1.i.i = add nuw nsw i64 %indvars.iv.1.i.i, 1 ; 2 uses
  %i.ak = zext i8 %i.ah to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ak
  store i32 1, ptr %i.al, align 4, !tbaa !82
  %lftr.wideiv.1.i.i = trunc i64 %indvars.iv.next.1.i.i to i32
  %exitcond.1.not.i.i = icmp eq i32 %lftr.wideiv.1.i.i, %i.ab
  br i1 %exitcond.1.not.i.i, label %._crit_edge.1.i.i, label %bb.i, !llvm.loop !1693

._crit_edge.1.i.i:                                ; preds = %bb.j, %.preheader51.1.i.i
  %.132.lcssa.1.i.i = phi i32 [ %i.r, %.preheader51.1.i.i ], [ %i.ab, %bb.j ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 77
  %i.an = load i8, ptr %i.am, align 1, !tbaa !80  ; 2 uses
  %i.ao = zext i8 %i.an to i32                    ; 4 uses
  %i.ap = icmp samesign ugt i32 %.132.lcssa.1.i.i, %i.ao
  %i.aq = icmp ugt i8 %i.an, 75
  %or.cond49.2.i.i = or i1 %i.aq, %i.ap
  br i1 %or.cond49.2.i.i, label %.thread75, label %.preheader51.2.i.i

.preheader51.2.i.i:                               ; preds = %._crit_edge.1.i.i
  %.not5060.2.i.i = icmp samesign ult i32 %.132.lcssa.1.i.i, %i.ao
  br i1 %.not5060.2.i.i, label %.lr.ph.2.i.i, label %._crit_edge.2.i.i

.lr.ph.2.i.i:                                     ; preds = %.preheader51.2.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 9280
  %i.as = zext nneg i32 %.132.lcssa.1.i.i to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.2.i.i
  %indvars.iv.2.i.i = phi i64 [ %i.as, %.lr.ph.2.i.i ], [ %indvars.iv.next.2.i.i, %bb.l ] ; 2 uses
  %.062.2.i.i = phi i32 [ -1, %.lr.ph.2.i.i ], [ %i.av, %bb.l ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv.2.i.i
  %i.au = load i8, ptr %i.at, align 1, !tbaa !80  ; 2 uses
  %i.av = zext i8 %i.au to i32                    ; 2 uses
  %i.aw = icmp slt i32 %.062.2.i.i, 0
  %.not.2.i.i = icmp slt i32 %.062.2.i.i, %i.av
  %or.cond.2.i.i = select i1 %i.aw, i1 true, i1 %.not.2.i.i
  br i1 %or.cond.2.i.i, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %indvars.iv.next.2.i.i = add nuw nsw i64 %indvars.iv.2.i.i, 1 ; 2 uses
  %i.ax = zext i8 %i.au to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ax
  store i32 1, ptr %i.ay, align 4, !tbaa !82
  %lftr.wideiv.2.i.i = trunc i64 %indvars.iv.next.2.i.i to i32
  %exitcond.2.not.i.i = icmp eq i32 %lftr.wideiv.2.i.i, %i.ao
  br i1 %exitcond.2.not.i.i, label %._crit_edge.2.i.i, label %bb.k, !llvm.loop !1693

._crit_edge.2.i.i:                                ; preds = %bb.l, %.preheader51.2.i.i
  %.132.lcssa.2.i.i = phi i32 [ %.132.lcssa.1.i.i, %.preheader51.2.i.i ], [ %i.ao, %bb.l ] ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 78
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !80  ; 2 uses
  %i.bb = zext i8 %i.ba to i32                    ; 4 uses
  %14 = icmp sgt i32 %.132.lcssa.2.i.i, %i.bb
  %i.bc = icmp ugt i8 %i.ba, 75
  %or.cond49.3.i.i = or i1 %i.bc, %14
  br i1 %or.cond49.3.i.i, label %.thread75, label %.preheader51.3.i.i

.preheader51.3.i.i:                               ; preds = %._crit_edge.2.i.i
  %.not5060.3.i.i = icmp slt i32 %.132.lcssa.2.i.i, %i.bb
  br i1 %.not5060.3.i.i, label %.lr.ph.3.i.i, label %._crit_edge.3.i.i

.lr.ph.3.i.i:                                     ; preds = %.preheader51.3.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 10304
  %i.be = zext nneg i32 %.132.lcssa.2.i.i to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.3.i.i
  %indvars.iv.3.i.i = phi i64 [ %i.be, %.lr.ph.3.i.i ], [ %indvars.iv.next.3.i.i, %bb.n ] ; 2 uses
  %.062.3.i.i = phi i32 [ -1, %.lr.ph.3.i.i ], [ %i.bh, %bb.n ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv.3.i.i
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !80  ; 2 uses
  %i.bh = zext i8 %i.bg to i32                    ; 2 uses
  %i.bi = icmp slt i32 %.062.3.i.i, 0
  %.not.3.i.i = icmp slt i32 %.062.3.i.i, %i.bh
  %or.cond.3.i.i = select i1 %i.bi, i1 true, i1 %.not.3.i.i
  br i1 %or.cond.3.i.i, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next.3.i.i = add nuw nsw i64 %indvars.iv.3.i.i, 1 ; 2 uses
  %i.bj = zext i8 %i.bg to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bj
  store i32 1, ptr %i.bk, align 4, !tbaa !82
  %lftr.wideiv.3.i.i = trunc i64 %indvars.iv.next.3.i.i to i32
  %exitcond.3.not.i.i = icmp eq i32 %lftr.wideiv.3.i.i, %i.bb
  br i1 %exitcond.3.not.i.i, label %._crit_edge.3.i.i, label %bb.m, !llvm.loop !1693

._crit_edge.3.i.i:                                ; preds = %bb.n, %.preheader51.3.i.i
  %.132.lcssa.3.i.i = phi i32 [ %.132.lcssa.2.i.i, %.preheader51.3.i.i ], [ %i.bb, %bb.n ] ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.o, i64 79
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !80  ; 2 uses
  %i.bn = zext i8 %i.bm to i32                    ; 4 uses
  %15 = icmp sgt i32 %.132.lcssa.3.i.i, %i.bn
  %i.bo = icmp ugt i8 %i.bm, 75
  %or.cond49.4.i.i = or i1 %i.bo, %15
  br i1 %or.cond49.4.i.i, label %.thread75, label %.preheader51.4.i.i

.preheader51.4.i.i:                               ; preds = %._crit_edge.3.i.i
  %.not5060.4.i.i = icmp slt i32 %.132.lcssa.3.i.i, %i.bn
  br i1 %.not5060.4.i.i, label %.lr.ph.4.i.i, label %._crit_edge.4.i.i

.lr.ph.4.i.i:                                     ; preds = %.preheader51.4.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 11328
  %i.bq = zext nneg i32 %.132.lcssa.3.i.i to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.lr.ph.4.i.i
  %indvars.iv.4.i.i = phi i64 [ %i.bq, %.lr.ph.4.i.i ], [ %indvars.iv.next.4.i.i, %bb.p ] ; 2 uses
  %.062.4.i.i = phi i32 [ -1, %.lr.ph.4.i.i ], [ %i.bt, %bb.p ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv.4.i.i
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !80  ; 2 uses
  %i.bt = zext i8 %i.bs to i32                    ; 2 uses
  %i.bu = icmp slt i32 %.062.4.i.i, 0
  %.not.4.i.i = icmp slt i32 %.062.4.i.i, %i.bt
  %or.cond.4.i.i = select i1 %i.bu, i1 true, i1 %.not.4.i.i
  br i1 %or.cond.4.i.i, label %bb.p, label %.thread75

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next.4.i.i = add nuw nsw i64 %indvars.iv.4.i.i, 1 ; 2 uses
  %i.bv = zext i8 %i.bs to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bv
  store i32 1, ptr %i.bw, align 4, !tbaa !82
  %lftr.wideiv.4.i.i = trunc i64 %indvars.iv.next.4.i.i to i32
  %exitcond.4.not.i.i = icmp eq i32 %lftr.wideiv.4.i.i, %i.bn
  br i1 %exitcond.4.not.i.i, label %._crit_edge.4.i.i, label %bb.o, !llvm.loop !1693

._crit_edge.4.i.i:                                ; preds = %bb.p, %.preheader51.4.i.i
  %.132.lcssa.4.i.i = phi i32 [ %.132.lcssa.3.i.i, %.preheader51.4.i.i ], [ %i.bn, %bb.p ] ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !80  ; 2 uses
  %i.bz = zext i8 %i.by to i32                    ; 4 uses
  %16 = icmp sgt i32 %.132.lcssa.4.i.i, %i.bz
  %i.ca = icmp ugt i8 %i.by, 75
  %or.cond49.5.i.i = or i1 %i.ca, %16
  br i1 %or.cond49.5.i.i, label %.thread75, label %.preheader51.5.i.i

.preheader51.5.i.i:                               ; preds = %._crit_edge.4.i.i
  %.not5060.5.i.i = icmp slt i32 %.132.lcssa.4.i.i, %i.bz
  br i1 %.not5060.5.i.i, label %.lr.ph.5.i.i, label %._crit_edge.5.i.i

.lr.ph.5.i.i:                                     ; preds = %.preheader51.5.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 12352
  %i.cc = zext nneg i32 %.132.lcssa.4.i.i to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %.lr.ph.5.i.i
  %indvars.iv.5.i.i = phi i64 [ %i.cc, %.lr.ph.5.i.i ], [ %indvars.iv.next.5.i.i, %bb.r ] ; 2 uses
  %.062.5.i.i = phi i32 [ -1, %.lr.ph.5.i.i ], [ %i.cf, %bb.r ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv.5.i.i
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !80  ; 2 uses
  %i.cf = zext i8 %i.ce to i32                    ; 2 uses
  %i.cg = icmp slt i32 %.062.5.i.i, 0
  %.not.5.i.i = icmp slt i32 %.062.5.i.i, %i.cf
  %or.cond.5.i.i = select i1 %i.cg, i1 true, i1 %.not.5.i.i
  br i1 %or.cond.5.i.i, label %bb.r, label %.thread75

bb.r:                                             ; preds = %bb.q
  %indvars.iv.next.5.i.i = add nuw nsw i64 %indvars.iv.5.i.i, 1 ; 2 uses
  %i.ch = zext i8 %i.ce to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.ch
  store i32 1, ptr %i.ci, align 4, !tbaa !82
  %lftr.wideiv.5.i.i = trunc i64 %indvars.iv.next.5.i.i to i32
  %exitcond.5.not.i.i = icmp eq i32 %lftr.wideiv.5.i.i, %i.bz
  br i1 %exitcond.5.not.i.i, label %._crit_edge.5.i.i, label %bb.q, !llvm.loop !1693

._crit_edge.5.i.i:                                ; preds = %bb.r, %.preheader51.5.i.i
  %.132.lcssa.5.i.i = phi i32 [ %.132.lcssa.4.i.i, %.preheader51.5.i.i ], [ %i.bz, %bb.r ] ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.o, i64 81
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !80  ; 2 uses
  %i.cl = zext i8 %i.ck to i32                    ; 4 uses
  %17 = icmp sgt i32 %.132.lcssa.5.i.i, %i.cl
  %i.cm = icmp ugt i8 %i.ck, 75
  %or.cond49.6.i.i = or i1 %i.cm, %17
  br i1 %or.cond49.6.i.i, label %.thread75, label %.preheader51.6.i.i

.preheader51.6.i.i:                               ; preds = %._crit_edge.5.i.i
  %.not5060.6.i.i = icmp slt i32 %.132.lcssa.5.i.i, %i.cl
  br i1 %.not5060.6.i.i, label %.lr.ph.6.i.i, label %._crit_edge.6.i.i

.lr.ph.6.i.i:                                     ; preds = %.preheader51.6.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 13376
  %i.co = zext nneg i32 %.132.lcssa.5.i.i to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %.lr.ph.6.i.i
  %indvars.iv.6.i.i = phi i64 [ %i.co, %.lr.ph.6.i.i ], [ %indvars.iv.next.6.i.i, %bb.t ] ; 2 uses
  %.062.6.i.i = phi i32 [ -1, %.lr.ph.6.i.i ], [ %i.cr, %bb.t ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv.6.i.i
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !80  ; 2 uses
  %i.cr = zext i8 %i.cq to i32                    ; 2 uses
  %i.cs = icmp slt i32 %.062.6.i.i, 0
  %.not.6.i.i = icmp slt i32 %.062.6.i.i, %i.cr
  %or.cond.6.i.i = select i1 %i.cs, i1 true, i1 %.not.6.i.i
  br i1 %or.cond.6.i.i, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %bb.s
  %indvars.iv.next.6.i.i = add nuw nsw i64 %indvars.iv.6.i.i, 1 ; 2 uses
  %i.ct = zext i8 %i.cq to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.ct
  store i32 1, ptr %i.cu, align 4, !tbaa !82
  %lftr.wideiv.6.i.i = trunc i64 %indvars.iv.next.6.i.i to i32
  %exitcond.6.not.i.i = icmp eq i32 %lftr.wideiv.6.i.i, %i.cl
  br i1 %exitcond.6.not.i.i, label %._crit_edge.6.i.i, label %bb.s, !llvm.loop !1693

._crit_edge.6.i.i:                                ; preds = %bb.t, %.preheader51.6.i.i
  %.132.lcssa.6.i.i = phi i32 [ %.132.lcssa.5.i.i, %.preheader51.6.i.i ], [ %i.cl, %bb.t ] ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.o, i64 82
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !80  ; 2 uses
  %i.cx = zext i8 %i.cw to i32                    ; 4 uses
  %18 = icmp sgt i32 %.132.lcssa.6.i.i, %i.cx
  %i.cy = icmp ugt i8 %i.cw, 75
  %or.cond49.7.i.i = or i1 %i.cy, %18
  br i1 %or.cond49.7.i.i, label %.thread75, label %.preheader51.7.i.i

.preheader51.7.i.i:                               ; preds = %._crit_edge.6.i.i
  %.not5060.7.i.i = icmp slt i32 %.132.lcssa.6.i.i, %i.cx
  br i1 %.not5060.7.i.i, label %.lr.ph.7.i.i, label %.preheader.i.i

.lr.ph.7.i.i:                                     ; preds = %.preheader51.7.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 14400
  %i.da = zext nneg i32 %.132.lcssa.6.i.i to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %.lr.ph.7.i.i
  %indvars.iv.7.i.i = phi i64 [ %i.da, %.lr.ph.7.i.i ], [ %indvars.iv.next.7.i.i, %bb.v ] ; 2 uses
  %.062.7.i.i = phi i32 [ -1, %.lr.ph.7.i.i ], [ %i.dd, %bb.v ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv.7.i.i
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !80  ; 2 uses
  %i.dd = zext i8 %i.dc to i32                    ; 2 uses
  %i.de = icmp slt i32 %.062.7.i.i, 0
  %.not.7.i.i = icmp slt i32 %.062.7.i.i, %i.dd
  %or.cond.7.i.i = select i1 %i.de, i1 true, i1 %.not.7.i.i
  br i1 %or.cond.7.i.i, label %bb.v, label %.thread75

bb.v:                                             ; preds = %bb.u
  %indvars.iv.next.7.i.i = add nuw nsw i64 %indvars.iv.7.i.i, 1 ; 2 uses
  %i.df = zext i8 %i.dc to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.df
  store i32 1, ptr %i.dg, align 4, !tbaa !82
  %lftr.wideiv.7.i.i = trunc i64 %indvars.iv.next.7.i.i to i32
  %exitcond.7.not.i.i = icmp eq i32 %lftr.wideiv.7.i.i, %i.cx
  br i1 %exitcond.7.not.i.i, label %.preheader.i.i, label %bb.u, !llvm.loop !1693

.preheader.i.i:                                   ; preds = %bb.v, %.preheader51.7.i.i
  %.4.ph.i.i = phi i32 [ %.132.lcssa.6.i.i, %.preheader51.7.i.i ], [ %i.cx, %bb.v ] ; 2 uses
  %i.dh = icmp slt i32 %.4.ph.i.i, 75
  br i1 %i.dh, label %.lr.ph66.preheader.i.i, label %.loopexit76

.lr.ph66.preheader.i.i:                           ; preds = %.preheader.i.i
  %i.di = zext nneg i32 %.4.ph.i.i to i64
  br label %.lr.ph66.i.i

bb.w:                                             ; preds = %.lr.ph66.i.i
  %indvars.iv.next93.i.i = add nuw nsw i64 %indvars.iv92.i.i, 1 ; 2 uses
  %i.dj = and i64 %indvars.iv.next93.i.i, 4294967295
  %exitcond.not.i.i = icmp eq i64 %i.dj, 75
  br i1 %exitcond.not.i.i, label %.loopexit76, label %.lr.ph66.i.i, !llvm.loop !1694

.lr.ph66.i.i:                                     ; preds = %bb.w, %.lr.ph66.preheader.i.i
  %indvars.iv92.i.i = phi i64 [ %i.di, %.lr.ph66.preheader.i.i ], [ %indvars.iv.next93.i.i, %bb.w ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv92.i.i
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !80
  %.not42.i.i = icmp eq i8 %i.dl, 0
  br i1 %.not42.i.i, label %bb.w, label %.loopexit

.loopexit76:                                      ; preds = %bb.w, %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  %i.dm = getelementptr inbounds nuw i8, ptr %i.e, i64 15424 ; 2 uses
  call fastcc void @_ZN5mldsa12_GLOBAL__N_113matrix_expandILi8ELi7EEEvPNS0_6matrixIXT_EXT0_EEEPKh(ptr noundef nonnull %i.dm, ptr noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  %i.dn = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.dn, i8 0, i64 224, i1 false)
  store i32 3, ptr %12, align 8, !tbaa !320
  %i.do = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 2 uses
  store i32 0, ptr %i.do, align 4, !tbaa !321
  %i.dp = getelementptr inbounds nuw i8, ptr %12, i64 208 ; 2 uses
  store i64 136, ptr %i.dp, align 8, !tbaa !322
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8224
  call void @BORINGSSL_keccak_absorb(ptr noundef nonnull %12, ptr noundef nonnull %i.dq, i64 noundef 64)
  call void @BORINGSSL_keccak_absorb(ptr noundef nonnull %12, ptr noundef %4, i64 noundef %5)
  call void @BORINGSSL_keccak_absorb(ptr noundef nonnull %12, ptr noundef %6, i64 noundef %7)
  call void @BORINGSSL_keccak_absorb(ptr noundef nonnull %12, ptr noundef %2, i64 noundef %3)
  call void @BORINGSSL_keccak_squeeze(ptr noundef nonnull %12, ptr noundef nonnull %i.b, i64 noundef 64)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36
  call fastcc void @_ZN5mldsa12_GLOBAL__N_129scalar_sample_in_ball_vartimeEPNS0_6scalarEPKhii(ptr noundef %13, ptr noundef nonnull %i.e, i32 noundef 64, i32 noundef 60)
  call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %13)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.e, i64 72768 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7168) %i.dr, ptr noundef nonnull readonly align 1 dereferenceable(7168) %i.j, i64 7168, i1 false)
  call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.dr)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.e, i64 73792
  call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.ds)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.e, i64 74816
  call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.dt)
  %i.du = getelementptr inbounds nuw i8, ptr %i.e, i64 75840
  call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.du)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.e, i64 76864
  call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.dv)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.e, i64 77888
  call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.dw)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.e, i64 78912
  call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.dx)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.e, i64 79936 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8192) %i.dy, i8 0, i64 8192, i1 false)
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.x, %.loopexit76
  %indvars.iv20.i = phi i64 [ 0, %.loopexit76 ], [ %indvars.iv.next21.i, %bb.x ] ; 3 uses
  %i.dz = getelementptr inbounds nuw [7168 x i8], ptr %i.dm, i64 %indvars.iv20.i
  %i.ea = getelementptr inbounds nuw [1024 x i8], ptr %i.dy, i64 %indvars.iv20.i
  br label %bb.y

bb.x:                                             ; preds = %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.i
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1 ; 2 uses
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next21.i, 8
  br i1 %exitcond23.not.i, label %_ZN5mldsa12_GLOBAL__N_111matrix_multILi8ELi7EEEvPNS0_6vectorIXT_EEEPKNS0_6matrixIXT_EXT0_EEEPKNS2_IXT0_EEE.exit, label %.preheader.i, !llvm.loop !40

bb.y:                                             ; preds = %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.i, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.eb = getelementptr inbounds nuw [1024 x i8], ptr %i.dz, i64 %indvars.iv.i
  %i.ec = getelementptr inbounds nuw [1024 x i8], ptr %i.dr, i64 %indvars.iv.i
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %bb.y
  %indvars.iv.i.i36 = phi i64 [ 0, %bb.y ], [ %indvars.iv.next.i.i37, %bb.z ] ; 4 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.i.i36
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !82
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv.i.i36
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !82
  %i.ei = zext i32 %i.eh to i64
  %i.ej = mul nuw i64 %i.ei, %i.ef                ; 2 uses
  %i.ek = mul i64 %i.ej, 4236238847
  %i.el = and i64 %i.ek, 4294967295
  %i.em = mul nuw nsw i64 %i.el, 8380417
  %i.en = add i64 %i.em, %i.ej
  %i.eo = lshr i64 %i.en, 32                      ; 3 uses
  %i.ep = add nsw i64 %i.eo, -8380417
  %.neg.i.i.i.i.i.i = ashr i64 %i.ep, 63
  %i.eq = add nuw nsw i64 %i.eo, 4286586879
  %i.er = call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i.i) #38, !srcloc !108 ; 2 uses
  %i.es = and i64 %i.eo, %i.er
  %i.et = xor i64 %i.er, -1
  %i.eu = and i64 %i.eq, %i.et
  %i.ev = or disjoint i64 %i.eu, %i.es
  %i.ew = trunc i64 %i.ev to i32
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.i.i36
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !82
  %indvars.iv.next.i.i37 = add nuw nsw i64 %indvars.iv.i.i36, 1 ; 2 uses
  %exitcond.not.i.i38 = icmp eq i64 %indvars.iv.next.i.i37, 256
  br i1 %exitcond.not.i.i38, label %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.i, label %bb.z, !llvm.loop !41

_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.i: ; preds = %bb.z, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.i
  %indvars.iv.i14.i = phi i64 [ %indvars.iv.next.i15.i, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.i ], [ 0, %bb.z ] ; 3 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.i14.i ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !82
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.i14.i
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !82
  %i.fc = add i32 %i.fb, %i.ez                    ; 2 uses
  %i.fd = zext i32 %i.fc to i64                   ; 2 uses
  %i.fe = add nsw i64 %i.fd, -8380417
  %.neg.i.i.i.i.i = ashr i64 %i.fe, 63
  %i.ff = add i32 %i.fc, -8380417
  %i.fg = zext i32 %i.ff to i64
  %i.fh = call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i) #38, !srcloc !108 ; 2 uses
  %i.fi = and i64 %i.fh, %i.fd
  %i.fj = xor i64 %i.fh, -1
  %i.fk = and i64 %i.fg, %i.fj
  %i.fl = or disjoint i64 %i.fk, %i.fi
  %i.fm = trunc nuw i64 %i.fl to i32
  store i32 %i.fm, ptr %i.ey, align 4, !tbaa !82
  %indvars.iv.next.i15.i = add nuw nsw i64 %indvars.iv.i14.i, 1 ; 2 uses
  %exitcond.not.i16.i = icmp eq i64 %indvars.iv.next.i15.i, 256
  br i1 %exitcond.not.i16.i, label %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.i, label %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.i, !llvm.loop !42

_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.i: ; preds = %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 7
  br i1 %exitcond.not.i, label %bb.x, label %bb.y, !llvm.loop !43

_ZN5mldsa12_GLOBAL__N_111matrix_multILi8ELi7EEEvPNS0_6vectorIXT_EEEPKNS0_6matrixIXT_EXT0_EEEPKNS2_IXT0_EEE.exit: ; preds = %bb.x
  %i.fn = getelementptr inbounds nuw i8, ptr %i.e, i64 88128 ; 9 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.fp = sub i64 %i.f, %i.a
  %i.fq = add i64 %i.fp, 88095
  %diff.check = icmp ult i64 %i.fq, 31
  br i1 %diff.check, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %_ZN5mldsa12_GLOBAL__N_111matrix_multILi8ELi7EEEvPNS0_6vectorIXT_EEEPKNS0_6matrixIXT_EXT0_EEEPKNS2_IXT0_EEE.exit
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 48
  %wide.load = load <4 x i32>, ptr %i.fo, align 4, !tbaa !82
  %wide.load114 = load <4 x i32>, ptr %i.fr, align 4, !tbaa !82
  %i.fs = shl <4 x i32> %wide.load, splat (i32 13)
  %i.ft = shl <4 x i32> %wide.load114, splat (i32 13)
  %i.fu = getelementptr inbounds nuw i8, ptr %i.e, i64 88144
  store <4 x i32> %i.fs, ptr %i.fn, align 4, !tbaa !82
  store <4 x i32> %i.ft, ptr %i.fu, align 4, !tbaa !82
  %i.fv = getelementptr inbounds nuw i8, ptr %i.e, i64 88160
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %wide.load.1 = load <4 x i32>, ptr %i.fw, align 4, !tbaa !82
  %wide.load114.1 = load <4 x i32>, ptr %i.fx, align 4, !tbaa !82
  %i.fy = shl <4 x i32> %wide.load.1, splat (i32 13)
  %i.fz = shl <4 x i32> %wide.load114.1, splat (i32 13)
  %i.ga = getelementptr inbounds nuw i8, ptr %i.e, i64 88176
  store <4 x i32> %i.fy, ptr %i.fv, align 4, !tbaa !82
  store <4 x i32> %i.fz, ptr %i.ga, align 4, !tbaa !82
  %i.gb = getelementptr inbounds nuw i8, ptr %i.e, i64 88192
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 112
  %wide.load.2 = load <4 x i32>, ptr %i.gc, align 4, !tbaa !82
  %wide.load114.2 = load <4 x i32>, ptr %i.gd, align 4, !tbaa !82
  %i.ge = shl <4 x i32> %wide.load.2, splat (i32 13)
end_hunk_2
