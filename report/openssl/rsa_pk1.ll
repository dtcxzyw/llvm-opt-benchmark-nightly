inline.NumInlined: 42
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@ossl_rsa_prf:bb.a
  %.not = icmp eq i32 %i.e, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 294, ptr noundef nonnull @__func__.ossl_rsa_prf) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786691, ptr noundef null) #6
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.g = lshr i16 %6, 8
  %i.h = trunc nuw i16 %i.g to i8
  store i8 %i.h, ptr %i.b, align 1, !tbaa !8
  %i.i = trunc i16 %6 to i8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.i, ptr %i.j, align 1, !tbaa !8
  %i.k = tail call ptr @HMAC_CTX_new() #6         ; 9 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 303, ptr noundef nonnull @__func__.ossl_rsa_prf) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786691, ptr noundef null) #6
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.m = tail call ptr @EVP_MD_fetch(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef null) #6 ; 10 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 316, ptr noundef nonnull @__func__.ossl_rsa_prf) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786691, ptr noundef null) #6
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.o = tail call i32 @HMAC_Init_ex(ptr noundef nonnull %i.k, ptr noundef %5, i32 noundef 32, ptr noundef nonnull %i.m, ptr noundef null) #6
  %i.p = icmp slt i32 %i.o, 1
  br i1 %i.p, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.r = zext nneg i32 %4 to i64
  %i.s = zext nneg i32 %2 to i64                  ; 3 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 321, ptr noundef nonnull @__func__.ossl_rsa_prf) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786691, ptr noundef null) #6
  br label %.loopexit

bb.i:                                             ; preds = %.preheader, %bb.w
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.w ] ; 4 uses
  %.03645 = phi i16 [ 0, %.preheader ], [ %i.am, %bb.w ] ; 3 uses
  %i.t = call i32 @HMAC_Init_ex(ptr noundef nonnull %i.k, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null) #6
  %i.u = icmp slt i32 %i.t, 1
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @ERR_new() #6
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 327, ptr noundef nonnull @__func__.ossl_rsa_prf) #6
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786691, ptr noundef null) #6
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.v = lshr i16 %.03645, 8
  %i.w = trunc nuw i16 %i.v to i8
  store i8 %i.w, ptr %i.a, align 1, !tbaa !8
  %i.x = trunc i16 %.03645 to i8
  store i8 %i.x, ptr %i.q, align 1, !tbaa !8
  %i.y = call i32 @HMAC_Update(ptr noundef nonnull %i.k, ptr noundef nonnull %i.a, i64 noundef 2) #6
  %i.z = icmp slt i32 %i.y, 1
  br i1 %i.z, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @ERR_new() #6
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 335, ptr noundef nonnull @__func__.ossl_rsa_prf) #6
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786691, ptr noundef null) #6
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.aa = call i32 @HMAC_Update(ptr noundef nonnull %i.k, ptr noundef %3, i64 noundef %i.r) #6
  %i.ab = icmp slt i32 %i.aa, 1
  br i1 %i.ab, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @ERR_new() #6
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 339, ptr noundef nonnull @__func__.ossl_rsa_prf) #6
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786691, ptr noundef null) #6
  br label %.loopexit

bb.o:                                             ; preds = %bb.m
  %i.ac = call i32 @HMAC_Update(ptr noundef nonnull %i.k, ptr noundef nonnull %i.b, i64 noundef 2) #6
  %i.ad = icmp slt i32 %i.ac, 1
  br i1 %i.ad, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @ERR_new() #6
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 343, ptr noundef nonnull @__func__.ossl_rsa_prf) #6
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786691, ptr noundef null) #6
  br label %.loopexit

bb.q:                                             ; preds = %bb.o
  store i32 32, ptr %i.d, align 4, !tbaa !34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32 ; 3 uses
  %i.ae = icmp samesign ugt i64 %indvars.iv.next, %i.s
  br i1 %i.ae, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.af = call i32 @HMAC_Final(ptr noundef nonnull %i.k, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #6
  %i.ag = icmp slt i32 %i.af, 1
  br i1 %i.ag, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @ERR_new() #6
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 355, ptr noundef nonnull @__func__.ossl_rsa_prf) #6
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786691, ptr noundef null) #6
  br label %.loopexit

bb.t:                                             ; preds = %bb.r
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.ai = sub nsw i64 %i.s, %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull align 16 %i.c, i64 %i.ai, i1 false)
  br label %bb.w

bb.u:                                             ; preds = %bb.q
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.ak = call i32 @HMAC_Final(ptr noundef nonnull %i.k, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.d) #6
  %i.al = icmp slt i32 %i.ak, 1
  br i1 %i.al, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @ERR_new() #6
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 361, ptr noundef nonnull @__func__.ossl_rsa_prf) #6
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786691, ptr noundef null) #6
  br label %.loopexit

bb.w:                                             ; preds = %bb.t, %bb.u
  %i.am = add i16 %.03645, 1
  %i.an = icmp samesign ult i64 %indvars.iv.next, %i.s
  br i1 %i.an, label %bb.i, label %.loopexit, !llvm.loop !35

.loopexit:                                        ; preds = %bb.w, %bb.v, %bb.s, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d
  %.037 = phi i32 [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.h ], [ -1, %bb.j ], [ -1, %bb.l ], [ -1, %bb.n ], [ -1, %bb.p ], [ -1, %bb.s ], [ -1, %bb.v ], [ 0, %bb.w ]
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ %i.m, %bb.h ], [ %i.m, %bb.j ], [ %i.m, %bb.l ], [ %i.m, %bb.n ], [ %i.m, %bb.p ], [ %i.m, %bb.s ], [ %i.m, %bb.v ], [ %i.m, %bb.w ]
  call void @HMAC_CTX_free(ptr noundef %i.k) #6
  call void @EVP_MD_free(ptr noundef %.0) #6
  br label %bb.x

bb.x:                                             ; preds = %.loopexit, %bb.b
  %.039 = phi i32 [ -1, %bb.b ], [ %.037, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.039
}

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 49) i32 @ossl_rsa_padding_check_PKCS1_type_2_TLS(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = alloca [48 x i8], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.d = icmp ult i64 %4, 59
  %i.e = icmp ult i64 %2, 48
  %or.cond = or i1 %i.e, %i.d
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 561, ptr noundef nonnull @__func__.ossl_rsa_padding_check_PKCS1_type_2_TLS) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 159, ptr noundef null) #6
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.f = call i32 @RAND_priv_bytes_ex(ptr noundef %0, ptr noundef nonnull %i.c, i64 noundef 48, i32 noundef 0) #6
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.d, label %.lr.ph.preheader

bb.d:                                             ; preds = %bb.c
  call void @ERR_new() #6
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 572, ptr noundef nonnull @__func__.ossl_rsa_padding_check_PKCS1_type_2_TLS) #6
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786691, ptr noundef null) #6
  br label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.h = add i64 %4, -49                          ; 2 uses
  %i.i = load i8, ptr %3, align 1, !tbaa !8
  %i.j = icmp eq i8 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !8
  %i.m = icmp eq i8 %i.l, 2
  %i.n = and i1 %i.j, %i.m
  %i.o = sext i1 %i.n to i32                      ; 3 uses
  %7 = add i64 %4, -51                            ; 3 uses
  %min.iters.check = icmp ult i64 %7, 12
  br i1 %min.iters.check, label %.lr.ph.preheader77, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %8 = add i64 %4, -52                            ; 2 uses
  %9 = trunc i64 %8 to i32
  %10 = icmp ugt i32 %9, -4
  %11 = icmp ugt i64 %8, 4294967295
  %12 = or i1 %10, %11
  br i1 %12, label %.lr.ph.preheader77, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %7, -8                         ; 4 uses
  %13 = or disjoint i64 %n.vec, 2
  %14 = trunc i64 %n.vec to i32
  %15 = or disjoint i32 %14, 2
  %16 = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %i.o, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %16, %vector.ph ], [ %24, %vector.body ]
  %vec.phi63 = phi <4 x i32> [ splat (i32 -1), %vector.ph ], [ %25, %vector.body ]
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 %index ; 2 uses
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 2
  %19 = getelementptr inbounds nuw i8, ptr %17, i64 6
  %wide.load = load <4 x i8>, ptr %18, align 1, !tbaa !8
  %wide.load64 = load <4 x i8>, ptr %19, align 1, !tbaa !8
  %20 = icmp eq <4 x i8> %wide.load, zeroinitializer
  %21 = icmp eq <4 x i8> %wide.load64, zeroinitializer
  %22 = select <4 x i1> %20, <4 x i32> splat (i32 -256), <4 x i32> splat (i32 -1)
  %23 = select <4 x i1> %21, <4 x i32> splat (i32 -256), <4 x i32> splat (i32 -1)
  %24 = and <4 x i32> %22, %vec.phi               ; 2 uses
  %25 = and <4 x i32> %23, %vec.phi63             ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %26 = icmp eq i64 %index.next, %n.vec
  br i1 %26, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %bin.rdx = and <4 x i32> %25, %24
  %27 = call i32 @llvm.vector.reduce.and.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %7, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader77

.lr.ph.preheader77:                               ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %.ph = phi i64 [ 2, %vector.scevcheck ], [ 2, %.lr.ph.preheader ], [ %13, %middle.block ]
  %.04556.ph = phi i32 [ %i.o, %vector.scevcheck ], [ %i.o, %.lr.ph.preheader ], [ %27, %middle.block ]
  %.04655.ph = phi i32 [ 2, %vector.scevcheck ], [ 2, %.lr.ph.preheader ], [ %15, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader77, %.lr.ph
  %i.p = phi i64 [ %29, %.lr.ph ], [ %.ph, %.lr.ph.preheader77 ]
  %.04556 = phi i32 [ %i.u, %.lr.ph ], [ %.04556.ph, %.lr.ph.preheader77 ]
  %.04655 = phi i32 [ %28, %.lr.ph ], [ %.04655.ph, %.lr.ph.preheader77 ]
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8
  %i.s = icmp eq i8 %i.r, 0
  %i.t = select i1 %i.s, i32 -256, i32 -1
  %i.u = and i32 %i.t, %.04556                    ; 2 uses
  %28 = add i32 %.04655, 1                        ; 2 uses
  %29 = zext i32 %28 to i64                       ; 2 uses
  %i.v = icmp ugt i64 %i.h, %29
  br i1 %i.v, label %.lr.ph, label %._crit_edge, !llvm.loop !37

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i32 [ %27, %middle.block ], [ %i.u, %.lr.ph ]
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 %i.h
  %i.x = load i8, ptr %i.w, align 1, !tbaa !8
  %i.y = icmp eq i8 %i.x, 0
  %i.z = getelementptr i8, ptr %3, i64 %4         ; 4 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -48     ; 5 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !8   ; 2 uses
  %i.ac = lshr i32 %5, 8
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = icmp eq i8 %i.ab, %i.ad
  %i.af = getelementptr i8, ptr %i.z, i64 -47
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !8   ; 2 uses
  %i.ah = trunc i32 %5 to i8
  %i.ai = icmp eq i8 %i.ag, %i.ah
  %i.aj = and i1 %i.ae, %i.ai                     ; 2 uses
  %i.ak = icmp sgt i32 %6, 0
  br i1 %i.ak, label %bb.e, label %vector.memcheck

bb.e:                                             ; preds = %._crit_edge
  %i.al = lshr i32 %6, 8
  %i.am = trunc i32 %i.al to i8
  %i.an = icmp eq i8 %i.ab, %i.am
  %i.ao = trunc i32 %6 to i8
  %i.ap = icmp eq i8 %i.ag, %i.ao
  %i.aq = and i1 %i.an, %i.ap
  %i.ar = or i1 %i.aj, %i.aq
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.e, %._crit_edge
  %.044.in = phi i1 [ %i.ar, %bb.e ], [ %i.aj, %._crit_edge ]
  %i.as = select i1 %.044.in, i1 %i.y, i1 false
  %i.at = select i1 %i.as, i32 255, i32 0
  %i.au = and i32 %i.at, %.lcssa                  ; 2 uses
  %i.av = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.au) #7, !srcloc !14 ; 4 uses
  %i.aw = xor i32 %i.au, -1
  %i.ax = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.aw) #7, !srcloc !14 ; 4 uses
  %i.ay = add i64 %4, %i.a
  %i.az = sub i64 %i.b, %i.ay
  %i.ba = add i64 %i.az, 47
  %diff.check = icmp ult i64 %i.ba, 15
  br i1 %diff.check, label %scalar.ph66, label %vector.body70

vector.body70:                                    ; preds = %vector.memcheck
  %broadcast.splatinsert68 = insertelement <16 x i32> poison, i32 %i.ax, i64 0
  %broadcast.splat69 = shufflevector <16 x i32> %broadcast.splatinsert68, <16 x i32> poison, <16 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.av, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer ; 3 uses
  %wide.load72 = load <16 x i8>, ptr %i.aa, align 1, !tbaa !8
  %wide.load73 = load <16 x i8>, ptr %i.c, align 16, !tbaa !8
  %i.bb = zext <16 x i8> %wide.load72 to <16 x i32>
  %i.bc = zext <16 x i8> %wide.load73 to <16 x i32>
  %i.bd = and <16 x i32> %broadcast.splat, %i.bb
  %i.be = and <16 x i32> %broadcast.splat69, %i.bc
  %i.bf = or <16 x i32> %i.be, %i.bd
  %i.bg = trunc nuw <16 x i32> %i.bf to <16 x i8>
  store <16 x i8> %i.bg, ptr %1, align 1, !tbaa !8
  %i.bh = getelementptr i8, ptr %i.z, i64 -32
  %wide.load72.1 = load <16 x i8>, ptr %i.bh, align 1, !tbaa !8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %wide.load73.1 = load <16 x i8>, ptr %i.bi, align 16, !tbaa !8
  %i.bj = zext <16 x i8> %wide.load72.1 to <16 x i32>
  %i.bk = zext <16 x i8> %wide.load73.1 to <16 x i32>
  %i.bl = and <16 x i32> %broadcast.splat, %i.bj
  %i.bm = and <16 x i32> %broadcast.splat69, %i.bk
  %i.bn = or <16 x i32> %i.bm, %i.bl
  %i.bo = trunc nuw <16 x i32> %i.bn to <16 x i8>
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <16 x i8> %i.bo, ptr %i.bp, align 1, !tbaa !8
  %i.bq = getelementptr i8, ptr %i.z, i64 -16
  %wide.load72.2 = load <16 x i8>, ptr %i.bq, align 1, !tbaa !8
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %wide.load73.2 = load <16 x i8>, ptr %i.br, align 16, !tbaa !8
  %i.bs = zext <16 x i8> %wide.load72.2 to <16 x i32>
  %i.bt = zext <16 x i8> %wide.load73.2 to <16 x i32>
  %i.bu = and <16 x i32> %broadcast.splat, %i.bs
  %i.bv = and <16 x i32> %broadcast.splat69, %i.bt
  %i.bw = or <16 x i32> %i.bv, %i.bu
  %i.bx = trunc nuw <16 x i32> %i.bw to <16 x i8>
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <16 x i8> %i.bx, ptr %i.by, align 1, !tbaa !8
  br label %.loopexit

scalar.ph66:                                      ; preds = %vector.memcheck, %scalar.ph66
  %indvars.iv = phi i64 [ %indvars.iv.next.2, %scalar.ph66 ], [ 0, %vector.memcheck ] ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !8
  %i.cd = zext i8 %i.ca to i32
  %i.ce = zext i8 %i.cc to i32
  %i.cf = and i32 %i.av, %i.cd
  %i.cg = and i32 %i.ax, %i.ce
  %i.ch = or i32 %i.cg, %i.cf
  %i.ci = trunc nuw i32 %i.ch to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv.next
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !8
  %i.co = zext i8 %i.cl to i32
  %i.cp = zext i8 %i.cn to i32
  %i.cq = and i32 %i.av, %i.co
  %i.cr = and i32 %i.ax, %i.cp
  %i.cs = or i32 %i.cr, %i.cq
  %i.ct = trunc nuw i32 %i.cs to i8
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv.next.1
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next.1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !8
  %i.cz = zext i8 %i.cw to i32
  %i.da = zext i8 %i.cy to i32
  %i.db = and i32 %i.av, %i.cz
  %i.dc = and i32 %i.ax, %i.da
  %i.dd = or i32 %i.dc, %i.db
  %i.de = trunc nuw i32 %i.dd to i8
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.1
  store i8 %i.de, ptr %i.df, align 1, !tbaa !8
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 48
  br i1 %exitcond.not.2, label %.loopexit, label %scalar.ph66, !llvm.loop !38

.loopexit:                                        ; preds = %scalar.ph66, %vector.body70, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ 48, %vector.body70 ], [ 48, %scalar.ph66 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  ret i32 %.0
}

declare i32 @RAND_priv_bytes_ex(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @HMAC_CTX_new() local_unnamed_addr #2

declare ptr @EVP_MD_fetch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @HMAC_Init_ex(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @HMAC_Update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @HMAC_Final(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @HMAC_CTX_free(ptr noundef) local_unnamed_addr #2

declare void @EVP_MD_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.and.v4i32(<4 x i32>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = !{i64 70867}
!15 = distinct !{!15, !10}
!16 = !{!17}
!17 = distinct !{!17, !18}
!18 = distinct !{!18, !"LVerDomain"}
!19 = !{!20}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !10, !22, !23}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = !{!"branch_weights", i32 4, i32 12}
!25 = distinct !{!25, !10, !22, !23}
!26 = distinct !{!26, !10, !22}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10, !22, !23}
!32 = distinct !{!32, !10, !22, !23}
!33 = distinct !{!33, !10, !22}
!34 = !{!5, !5, i64 0}
!35 = distinct !{!35, !10}
!36 = distinct !{!36, !10, !22, !23}
!37 = distinct !{!37, !10, !22}
!38 = distinct !{!38, !10, !22}
end_hunk_0
