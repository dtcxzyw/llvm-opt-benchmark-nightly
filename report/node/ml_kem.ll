inline.NumInlined: 100
inline.NumDeleted: 46
begin_hunk_0_@ossl_ml_kem_genkey:bb.a
bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27
  %.not24 = icmp eq ptr %i.f, null
  br i1 %.not24, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %2, align 8, !tbaa !17     ; 3 uses
  %.not25 = icmp eq ptr %0, null
  br i1 %.not25, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !37
  %.not26 = icmp eq i64 %1, %i.i
  br i1 %.not26, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29   ; 2 uses
  %.not27 = icmp eq ptr %i.k, null
  br i1 %.not27, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull align 1 dereferenceable(32) %i.k, i64 32, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.l, ptr noundef nonnull align 1 dereferenceable(32) %i.n, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 84
  %i.r = load i32, ptr %i.q, align 4, !tbaa !47
  %i.s = call i32 @RAND_priv_bytes_ex(ptr noundef %i.p, ptr noundef nonnull %i.a, i64 noundef 64, i32 noundef %i.r) #12
  %i.t = icmp slt i32 %i.s, 1
  br i1 %i.t, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.u = call ptr @EVP_MD_CTX_new() #12           ; 4 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !35
  %i.y = call noalias ptr @CRYPTO_malloc(i64 noundef %i.x, ptr noundef nonnull @.str, i32 noundef 2190) #12 ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = load ptr, ptr %2, align 8, !tbaa !17
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !18 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 108 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.ad, i8 0, i64 64, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !33
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 140
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !34
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i64 0, ptr %i.ai, align 8
  store ptr %i.y, ptr %i.c, align 8, !tbaa !9
  %i.aj = sext i32 %i.ac to i64                   ; 2 uses
  %i.ak = getelementptr inbounds [512 x i8], ptr %i.y, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !32
  %i.am = mul nsw i32 %i.ac, %i.ac
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [512 x i8], ptr %i.ak, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !16
  %i.aq = getelementptr inbounds [512 x i8], ptr %i.ao, i64 %i.aj
  store ptr %i.aq, ptr %i.ah, align 8, !tbaa !36
  %i.ar = call fastcc i32 @genkey(ptr noundef %i.a, ptr noundef %i.u, ptr noundef %0, ptr noundef %2)
  %i.as = icmp eq i32 %i.ar, 0
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 64) #12
  call void @EVP_MD_CTX_free(ptr noundef nonnull %i.u) #12
  br i1 %i.as, label %bb.l, label %bb.m

.critedge:                                        ; preds = %bb.j
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 64) #12
  call void @EVP_MD_CTX_free(ptr noundef nonnull %i.u) #12
  br label %bb.l

bb.l:                                             ; preds = %.critedge, %bb.k
  call void @ossl_ml_kem_key_reset(ptr noundef nonnull %2)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.i, %bb.h, %bb.e, %bb.a, %bb.b, %bb.c, %bb.l
  %.021 = phi i32 [ 1, %bb.k ], [ 0, %bb.a ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.l ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.021
}

declare i32 @RAND_priv_bytes_ex(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @genkey(ptr noundef nonnull readonly captures(none) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [384 x i8], align 16              ; 4 uses
  %i.c = alloca [33 x i8], align 16               ; 6 uses
  %i.d = alloca [33 x i8], align 16               ; 6 uses
  %i.e = alloca [64 x i8], align 16               ; 5 uses
  %i.f = alloca [33 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.h = load ptr, ptr %3, align 8, !tbaa !17     ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.j = load i32, ptr %i.i, align 8, !tbaa !48
  %i.k = icmp eq i32 %i.j, 1454
  %i.l = select i1 %i.k, ptr @cbd_3, ptr @cbd_2   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.n = load i32, ptr %i.m, align 8, !tbaa !18   ; 11 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.f, ptr noundef nonnull align 1 dereferenceable(32) %0, i64 32, i1 false)
  %i.o = trunc i32 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i8 %i.o, ptr %i.p, align 16, !tbaa !44
  %i.q = getelementptr i8, ptr %3, i64 40
  %.val56 = load ptr, ptr %i.q, align 8, !tbaa !26
  %i.r = call fastcc i32 @hash_g(ptr noundef %i.e, ptr noundef %i.f, i64 noundef 33, ptr noundef %1, ptr %.val56)
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.t, ptr noundef nonnull align 16 dereferenceable(32) %i.e, i64 32, i1 false)
  %i.u = call fastcc i32 @matrix_expand(ptr noundef %1, ptr noundef %3)
  %.not50 = icmp eq i32 %i.u, 0
  br i1 %.not50, label %bb.aa, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.g, i64 32, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.067 = phi i8 [ 0, %bb.c ], [ %i.z, %bb.e ]    ; 2 uses
  %.09.i = phi i32 [ %i.n, %bb.c ], [ %i.ab, %bb.e ] ; 2 uses
  %.08.i = phi ptr [ %i.w, %bb.c ], [ %i.aa, %bb.e ] ; 3 uses
  store i8 %.067, ptr %i.x, align 16, !tbaa !44
  %i.y = call i32 %i.l(ptr noundef %.08.i, ptr noundef nonnull %i.d, ptr noundef nonnull %1, ptr noundef nonnull %3) #12, !callees !49, !inline_history !50
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %gencbd_vector_ntt.exit.thread, label %bb.e

gencbd_vector_ntt.exit.thread:                    ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.aa

bb.e:                                             ; preds = %bb.d
  %i.z = add i8 %.067, 1                          ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i, i64 512
  call fastcc void @scalar_ntt(ptr noundef %.08.i)
  %i.ab = add nsw i32 %.09.i, -1
  %i.ac = icmp sgt i32 %.09.i, 1
  br i1 %i.ac, label %bb.d, label %bb.f, !llvm.loop !51

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.g, i64 32, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.1 = phi i8 [ %i.z, %bb.f ], [ %i.ah, %bb.h ]  ; 2 uses
  %.09.i57 = phi i32 [ %i.n, %bb.f ], [ %i.aj, %bb.h ] ; 2 uses
  %.08.i58 = phi ptr [ %i.ae, %bb.f ], [ %i.ai, %bb.h ] ; 3 uses
  store i8 %.1, ptr %i.af, align 16, !tbaa !44
  %i.ag = call i32 %i.l(ptr noundef %.08.i58, ptr noundef nonnull %i.c, ptr noundef nonnull %1, ptr noundef nonnull %3) #12, !callees !49, !inline_history !50
  %.not.i59 = icmp eq i32 %i.ag, 0
  br i1 %.not.i59, label %gencbd_vector_ntt.exit61.thread, label %bb.h

gencbd_vector_ntt.exit61.thread:                  ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.aa

bb.h:                                             ; preds = %bb.g
  %i.ah = add i8 %.1, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i58, i64 512
  call fastcc void @scalar_ntt(ptr noundef %.08.i58)
  %i.aj = add nsw i32 %.09.i57, -1
  %i.ak = icmp sgt i32 %.09.i57, 1
  br i1 %i.ak, label %bb.g, label %bb.i, !llvm.loop !51

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !9  ; 9 uses
  %i.am = load ptr, ptr %i.v, align 8, !tbaa !16  ; 7 uses
  %i.an = icmp sgt i32 %i.n, 0
  br i1 %i.an, label %.lr.ph36.i, label %matrix_mult_transpose_add.exit

.lr.ph36.i:                                       ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !32 ; 5 uses
  %.not.i62 = icmp eq i32 %i.n, 1
  %i.aq = zext nneg i32 %i.n to i64               ; 3 uses
  %smin = call i32 @llvm.smin.i32(i32 %i.n, i32 2)
  %i.ar = sub nsw i32 %i.n, %smin
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = shl nuw nsw i64 %i.as, 9                ; 2 uses
  %i.au = add nuw nsw i64 %i.at, 512
  %i.av = mul i64 %i.au, %i.aq
  %scevgep82 = getelementptr i8, ptr %i.am, i64 512
  %i.aw = getelementptr i8, ptr %i.am, i64 %i.at
  %scevgep83 = getelementptr i8, ptr %i.aw, i64 1024
  %i.ax = add nsw i32 %i.n, -1
  %i.ay = zext i32 %i.ax to i64
  %i.az = shl nuw nsw i64 %i.ay, 9
  %i.ba = add nuw nsw i64 %i.az, 512              ; 2 uses
  %scevgep101 = getelementptr i8, ptr %i.al, i64 %i.ba ; 3 uses
  %scevgep102 = getelementptr i8, ptr %i.ap, i64 %i.ba
  %scevgep103 = getelementptr i8, ptr %i.am, i64 512
  %4 = getelementptr i8, ptr %i.ap, i64 %i.av
  %5 = getelementptr i8, ptr %4, i64 512
  %bound0104 = icmp ult ptr %i.al, %scevgep102
  %bound1105 = icmp ult ptr %i.ap, %scevgep101
  %found.conflict106 = and i1 %bound0104, %bound1105
  %bound0107 = icmp ult ptr %i.al, %scevgep103
  %bound1108 = icmp ult ptr %i.am, %scevgep101
  %found.conflict109 = and i1 %bound0107, %bound1108
  %conflict.rdx110 = or i1 %found.conflict106, %found.conflict109
  %bound0111 = icmp ult ptr %i.al, getelementptr inbounds nuw (i8, ptr @kModRoots, i64 256)
  %bound1112 = icmp ugt ptr %scevgep101, @kModRoots
  %found.conflict113 = and i1 %bound0111, %bound1112
  %conflict.rdx114 = or i1 %conflict.rdx110, %found.conflict113
  br label %vector.memcheck100

vector.memcheck100:                               ; preds = %scalar_mult_add.exit._crit_edge.i, %.lr.ph36.i
  %indvar = phi i64 [ %indvar.next, %scalar_mult_add.exit._crit_edge.i ], [ 0, %.lr.ph36.i ] ; 3 uses
  %.in.i = phi i32 [ %i.fs, %scalar_mult_add.exit._crit_edge.i ], [ %i.n, %.lr.ph36.i ] ; 2 uses
  %.01535.i = phi ptr [ %i.ft, %scalar_mult_add.exit._crit_edge.i ], [ %i.ap, %.lr.ph36.i ] ; 4 uses
  %.01634.i = phi ptr [ %i.kl, %scalar_mult_add.exit._crit_edge.i ], [ %i.al, %.lr.ph36.i ] ; 8 uses
  %i.bb = shl nuw nsw i64 %indvar, 9              ; 2 uses
  %i.bc = getelementptr i8, ptr %i.al, i64 %i.bb
  %scevgep = getelementptr i8, ptr %i.bc, i64 512 ; 3 uses
  %i.bd = add i64 %indvar, %i.aq
  %i.be = shl i64 %i.bd, 9
  %scevgep80 = getelementptr i8, ptr %i.ap, i64 %i.be
  %scevgep81 = getelementptr i8, ptr %5, i64 %i.bb
  br i1 %conflict.rdx114, label %scalar.ph115, label %vector.body117

vector.body117:                                   ; preds = %vector.memcheck100, %vector.body117
  %index118 = phi i64 [ %index.next133, %vector.body117 ], [ 0, %vector.memcheck100 ] ; 3 uses
  %i.bf = shl i64 %index118, 1
  %next.gep119 = getelementptr i8, ptr @kModRoots, i64 %i.bf
  %i.bg = shl i64 %index118, 2                    ; 3 uses
  %next.gep120 = getelementptr i8, ptr %i.am, i64 %i.bg
  %next.gep121 = getelementptr i8, ptr %.01535.i, i64 %i.bg
  %i.bh = getelementptr inbounds nuw i8, ptr %.01634.i, i64 %i.bg ; 2 uses
  %wide.vec122 = load <8 x i16>, ptr %next.gep121, align 2, !tbaa !38, !alias.scope !52 ; 2 uses
  %strided.vec123 = shufflevector <8 x i16> %wide.vec122, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec124 = shufflevector <8 x i16> %wide.vec122, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bi = zext <4 x i16> %strided.vec123 to <4 x i32> ; 2 uses
  %wide.vec125 = load <8 x i16>, ptr %next.gep120, align 2, !tbaa !38, !alias.scope !55 ; 2 uses
  %strided.vec126 = shufflevector <8 x i16> %wide.vec125, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec127 = shufflevector <8 x i16> %wide.vec125, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bj = zext <4 x i16> %strided.vec126 to <4 x i32> ; 2 uses
  %i.bk = zext <4 x i16> %strided.vec124 to <4 x i32> ; 2 uses
  %i.bl = zext <4 x i16> %strided.vec127 to <4 x i32> ; 2 uses
  %wide.load128 = load <4 x i16>, ptr %next.gep119, align 8, !tbaa !38, !alias.scope !57
  %i.bm = zext <4 x i16> %wide.load128 to <4 x i32>
  %wide.vec129 = load <8 x i16>, ptr %i.bh, align 2, !tbaa !38, !alias.scope !59, !noalias !61 ; 2 uses
  %strided.vec130 = shufflevector <8 x i16> %wide.vec129, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec131 = shufflevector <8 x i16> %wide.vec129, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bn = zext <4 x i16> %strided.vec130 to <4 x i32>
  %i.bo = mul nuw <4 x i32> %i.bj, %i.bi
  %i.bp = add nuw <4 x i32> %i.bo, %i.bn
  %i.bq = mul nuw <4 x i32> %i.bl, %i.bk          ; 2 uses
  %i.br = zext <4 x i32> %i.bq to <4 x i64>
  %i.bs = mul nuw nsw <4 x i64> %i.br, splat (i64 5039)
  %i.bt = lshr <4 x i64> %i.bs, splat (i64 24)
  %i.bu = trunc nuw nsw <4 x i64> %i.bt to <4 x i32>
  %i.bv = mul <4 x i32> %i.bu, splat (i32 62207)
  %i.bw = add <4 x i32> %i.bv, %i.bq
  %i.bx = trunc <4 x i32> %i.bw to <4 x i16>      ; 2 uses
  %i.by = add <4 x i16> %i.bx, splat (i16 -3329)  ; 2 uses
  %i.bz = icmp slt <4 x i16> %i.by, zeroinitializer
  %i.ca = select <4 x i1> %i.bz, <4 x i16> %i.bx, <4 x i16> zeroinitializer
  %i.cb = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.by, <4 x i16> zeroinitializer)
  %i.cc = or <4 x i16> %i.ca, %i.cb
  %i.cd = zext <4 x i16> %i.cc to <4 x i32>
  %i.ce = mul nuw <4 x i32> %i.cd, %i.bm
  %i.cf = add <4 x i32> %i.bp, %i.ce              ; 2 uses
  %i.cg = zext <4 x i32> %i.cf to <4 x i64>
  %i.ch = mul nuw nsw <4 x i64> %i.cg, splat (i64 5039)
  %i.ci = lshr <4 x i64> %i.ch, splat (i64 24)
  %i.cj = trunc nuw nsw <4 x i64> %i.ci to <4 x i32>
  %i.ck = mul <4 x i32> %i.cj, splat (i32 62207)
  %i.cl = add <4 x i32> %i.ck, %i.cf
  %i.cm = trunc <4 x i32> %i.cl to <4 x i16>      ; 2 uses
  %i.cn = add <4 x i16> %i.cm, splat (i16 -3329)  ; 2 uses
  %i.co = icmp slt <4 x i16> %i.cn, zeroinitializer
  %i.cp = select <4 x i1> %i.co, <4 x i16> %i.cm, <4 x i16> zeroinitializer
  %i.cq = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.cn, <4 x i16> zeroinitializer)
  %i.cr = or <4 x i16> %i.cp, %i.cq
  %i.cs = zext <4 x i16> %strided.vec131 to <4 x i32>
  %i.ct = mul nuw <4 x i32> %i.bl, %i.bi
  %i.cu = mul nuw <4 x i32> %i.bk, %i.bj
  %i.cv = add <4 x i32> %i.ct, %i.cu
  %i.cw = add <4 x i32> %i.cv, %i.cs              ; 2 uses
  %i.cx = zext <4 x i32> %i.cw to <4 x i64>
  %i.cy = mul nuw nsw <4 x i64> %i.cx, splat (i64 5039)
  %i.cz = lshr <4 x i64> %i.cy, splat (i64 24)
  %i.da = trunc nuw nsw <4 x i64> %i.cz to <4 x i32>
  %i.db = mul <4 x i32> %i.da, splat (i32 62207)
  %i.dc = add <4 x i32> %i.db, %i.cw
  %i.dd = trunc <4 x i32> %i.dc to <4 x i16>      ; 2 uses
  %i.de = add <4 x i16> %i.dd, splat (i16 -3329)  ; 2 uses
  %i.df = icmp slt <4 x i16> %i.de, zeroinitializer
  %i.dg = select <4 x i1> %i.df, <4 x i16> %i.dd, <4 x i16> zeroinitializer
  %i.dh = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.de, <4 x i16> zeroinitializer)
  %i.di = or <4 x i16> %i.dg, %i.dh
  %interleaved.vec132 = shufflevector <4 x i16> %i.cr, <4 x i16> %i.di, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec132, ptr %i.bh, align 2, !tbaa !38, !alias.scope !59, !noalias !61
  %index.next133 = add nuw i64 %index118, 4       ; 2 uses
  %i.dj = icmp eq i64 %index.next133, 128
  br i1 %i.dj, label %scalar_mult_add.exit.preheader.i, label %vector.body117, !llvm.loop !62

scalar.ph115:                                     ; preds = %vector.memcheck100, %scalar.ph115
  %.027.i.i = phi ptr [ %i.dt, %scalar.ph115 ], [ @kModRoots, %vector.memcheck100 ] ; 2 uses
  %.026.i.i = phi ptr [ %i.dp, %scalar.ph115 ], [ %i.am, %vector.memcheck100 ] ; 3 uses
  %.025.i.i = phi ptr [ %i.do, %scalar.ph115 ], [ %.01535.i, %vector.memcheck100 ] ; 3 uses
  %.0.idx.i.i = phi i64 [ %.0.add.i.i, %scalar.ph115 ], [ 0, %vector.memcheck100 ] ; 3 uses
  %.0.ptr.i.i = getelementptr inbounds nuw i8, ptr %.01634.i, i64 %.0.idx.i.i ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 2
  %i.dl = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 2
  %i.dm = load i16, ptr %.026.i.i, align 2, !tbaa !38
  %i.dn = zext i16 %i.dm to i32                   ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 4
  %i.dp = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 4
  %i.dq = load i16, ptr %i.dl, align 2, !tbaa !38
  %i.dr = zext i16 %i.dq to i32                   ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.ptr.i.i, i64 2
  %.0.add.i.i = add nuw nsw i64 %.0.idx.i.i, 4
  %i.dt = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 2
  %i.du = load i16, ptr %.027.i.i, align 2, !tbaa !38
  %i.dv = zext i16 %i.du to i32
  %i.dw = load i16, ptr %.0.ptr.i.i, align 2, !tbaa !38
  %i.dx = zext i16 %i.dw to i32
  %i.dy = load i16, ptr %i.ds, align 2, !tbaa !38
  %i.dz = zext i16 %i.dy to i32
  %i.ea = load i16, ptr %i.dk, align 2, !tbaa !38
  %i.eb = load i16, ptr %.025.i.i, align 2, !tbaa !38
  %i.ec = zext i16 %i.ea to i32                   ; 2 uses
  %i.ed = zext i16 %i.eb to i32                   ; 2 uses
  %i.ee = mul nuw i32 %i.dr, %i.ec                ; 2 uses
  %i.ef = zext i32 %i.ee to i64
  %i.eg = mul nuw nsw i64 %i.ef, 5039
  %i.eh = lshr i64 %i.eg, 24
  %i.ei = trunc nuw nsw i64 %i.eh to i32
  %.neg.i.i.i = mul i32 %i.ei, 62207
  %i.ej = add i32 %.neg.i.i.i, %i.ee
  %i.ek = trunc i32 %i.ej to i16                  ; 2 uses
  %i.el = add i16 %i.ek, -3329                    ; 2 uses
  %isneg.i.i.i.i = icmp slt i16 %i.el, 0
  %i.em = select i1 %isneg.i.i.i.i, i16 %i.ek, i16 0
  %i.en = call i16 @llvm.smax.i16(i16 %i.el, i16 0)
  %i.eo = or i16 %i.em, %i.en
  %i.ep = zext i16 %i.eo to i32
  %i.eq = mul nuw i32 %i.ep, %i.dv
  %i.er = mul nuw i32 %i.dr, %i.ed
  %i.es = mul nuw i32 %i.ec, %i.dn
  %i.et = mul nuw i32 %i.dn, %i.ed
  %i.eu = add i32 %i.er, %i.es
  %i.ev = add nuw i32 %i.et, %i.dx
  %i.ew = add i32 %i.eu, %i.dz                    ; 2 uses
  %i.ex = add i32 %i.ev, %i.eq                    ; 2 uses
  %i.ey = zext i32 %i.ew to i64
  %i.ez = zext i32 %i.ex to i64
  %i.fa = mul nuw nsw i64 %i.ey, 5039
  %i.fb = mul nuw nsw i64 %i.ez, 5039
  %i.fc = lshr i64 %i.fa, 24
  %i.fd = lshr i64 %i.fb, 24
  %i.fe = trunc nuw nsw i64 %i.fc to i32
  %i.ff = trunc nuw nsw i64 %i.fd to i32
  %.neg.i30.i.i = mul i32 %i.fe, 62207
  %.neg.i28.i.i = mul i32 %i.ff, 62207
  %i.fg = insertelement <2 x i32> poison, i32 %.neg.i28.i.i, i64 0
  %i.fh = insertelement <2 x i32> %i.fg, i32 %.neg.i30.i.i, i64 1
  %i.fi = insertelement <2 x i32> poison, i32 %i.ex, i64 0
  %i.fj = insertelement <2 x i32> %i.fi, i32 %i.ew, i64 1
  %i.fk = add <2 x i32> %i.fh, %i.fj
  %i.fl = trunc <2 x i32> %i.fk to <2 x i16>      ; 2 uses
  %i.fm = add <2 x i16> %i.fl, splat (i16 -3329)  ; 2 uses
  %i.fn = icmp slt <2 x i16> %i.fm, zeroinitializer
  %i.fo = select <2 x i1> %i.fn, <2 x i16> %i.fl, <2 x i16> zeroinitializer
  %i.fp = call <2 x i16> @llvm.smax.v2i16(<2 x i16> %i.fm, <2 x i16> zeroinitializer)
  %i.fq = or <2 x i16> %i.fo, %i.fp
  store <2 x i16> %i.fq, ptr %.0.ptr.i.i, align 2, !tbaa !38
  %i.fr = icmp samesign ult i64 %.0.idx.i.i, 508
  br i1 %i.fr, label %scalar.ph115, label %scalar_mult_add.exit.preheader.i, !llvm.loop !65

scalar_mult_add.exit.preheader.i:                 ; preds = %vector.body117, %scalar.ph115
  %i.fs = add nsw i32 %.in.i, -1
  %i.ft = getelementptr inbounds nuw i8, ptr %.01535.i, i64 512
  br i1 %.not.i62, label %scalar_mult_add.exit._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %scalar_mult_add.exit.preheader.i
  %bound0 = icmp ult ptr %.01634.i, %scevgep81
  %bound1 = icmp ult ptr %scevgep80, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound084 = icmp ult ptr %.01634.i, %scevgep83
  %bound185 = icmp ult ptr %scevgep82, %scevgep
  %found.conflict86 = and i1 %bound084, %bound185
  %conflict.rdx = or i1 %found.conflict, %found.conflict86
  %bound087 = icmp ult ptr %.01634.i, getelementptr inbounds nuw (i8, ptr @kModRoots, i64 256)
  %bound188 = icmp ugt ptr %scevgep, @kModRoots
  %found.conflict89 = and i1 %bound087, %bound188
  %conflict.rdx90 = or i1 %conflict.rdx, %found.conflict89
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %scalar_mult_add.exit30.i
  %.033.i = phi i32 [ %i.kj, %scalar_mult_add.exit30.i ], [ %i.n, %.lr.ph.i.preheader ] ; 2 uses
  %.01332.i = phi ptr [ %i.fv, %scalar_mult_add.exit30.i ], [ %i.am, %.lr.ph.i.preheader ]
  %.01431.i = phi ptr [ %i.fu, %scalar_mult_add.exit30.i ], [ %.01535.i, %.lr.ph.i.preheader ]
  %i.fu = getelementptr inbounds nuw [512 x i8], ptr %.01431.i, i64 %i.aq ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.01332.i, i64 512 ; 3 uses
  br i1 %conflict.rdx90, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.fw = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr @kModRoots, i64 %i.fw
  %i.fx = shl i64 %index, 2                       ; 3 uses
  %next.gep91 = getelementptr i8, ptr %i.fv, i64 %i.fx
  %next.gep92 = getelementptr i8, ptr %i.fu, i64 %i.fx
  %i.fy = getelementptr inbounds nuw i8, ptr %.01634.i, i64 %i.fx ; 2 uses
  %wide.vec = load <8 x i16>, ptr %next.gep92, align 2, !tbaa !38, !alias.scope !66 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec93 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.fz = zext <4 x i16> %strided.vec to <4 x i32> ; 2 uses
  %wide.vec94 = load <8 x i16>, ptr %next.gep91, align 2, !tbaa !38, !alias.scope !69 ; 2 uses
  %strided.vec95 = shufflevector <8 x i16> %wide.vec94, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec96 = shufflevector <8 x i16> %wide.vec94, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ga = zext <4 x i16> %strided.vec95 to <4 x i32> ; 2 uses
  %i.gb = zext <4 x i16> %strided.vec93 to <4 x i32> ; 2 uses
  %i.gc = zext <4 x i16> %strided.vec96 to <4 x i32> ; 2 uses
  %wide.load = load <4 x i16>, ptr %next.gep, align 8, !tbaa !38, !alias.scope !71
  %i.gd = zext <4 x i16> %wide.load to <4 x i32>
  %wide.vec97 = load <8 x i16>, ptr %i.fy, align 2, !tbaa !38, !alias.scope !73, !noalias !75 ; 2 uses
end_hunk_0
