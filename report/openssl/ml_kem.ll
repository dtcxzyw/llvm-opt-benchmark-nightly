Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/ml_kem?download=true
inline.NumInlined: 101
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@ossl_ml_kem_genkey:bb.a

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !42
  %.not26 = icmp eq i64 %1, %i.i
  br i1 %.not26, label %bb.f, label %ossl_ml_kem_encode_seed.exit.thread

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !20
  %.not27 = icmp eq ptr %i.k, null
  br i1 %.not27, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !35   ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %ossl_ml_kem_encode_seed.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull align 1 dereferenceable(32) %i.m, i64 32, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.o, ptr noundef nonnull align 1 dereferenceable(32) %i.q, i64 32, i1 false)
  tail call void @ossl_ml_kem_key_reset(ptr noundef nonnull %2)
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 84
  %i.u = load i32, ptr %i.t, align 4, !tbaa !48
  %i.v = call i32 @RAND_priv_bytes_ex(ptr noundef %i.s, ptr noundef nonnull %i.a, i64 noundef 64, i32 noundef %i.u) #11
  %i.w = icmp slt i32 %i.v, 1
  br i1 %i.w, label %ossl_ml_kem_encode_seed.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = call ptr @EVP_MD_CTX_new() #11           ; 4 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %ossl_ml_kem_encode_seed.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !36
  %i.ab = call noalias ptr @CRYPTO_malloc(i64 noundef %i.aa, ptr noundef nonnull @.str, i32 noundef 1906) #11 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !28
  %i.ae = call noalias ptr @CRYPTO_secure_malloc(i64 noundef %i.ad, ptr noundef nonnull @.str, i32 noundef 1907) #11 ; 4 uses
  %i.af = icmp eq ptr %i.ab, null
  %i.ag = icmp eq ptr %i.ae, null
  %or.cond = select i1 %i.af, i1 true, i1 %i.ag
  br i1 %or.cond, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = load ptr, ptr %2, align 8, !tbaa !22
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !37
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 108 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.ak, i8 0, i64 64, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !38
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 140
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.am, ptr %i.an, align 8, !tbaa !39
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i64 0, ptr %i.ap, align 8
  store ptr %i.ab, ptr %i.c, align 8, !tbaa !26
  %i.aq = sext i32 %i.aj to i64                   ; 2 uses
  %i.ar = getelementptr inbounds [512 x i8], ptr %i.ab, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !40
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr %i.ae, ptr %i.at, align 8, !tbaa !27
  %i.au = getelementptr inbounds [512 x i8], ptr %i.ae, i64 %i.aq
  store ptr %i.au, ptr %i.ao, align 8, !tbaa !41
  %i.av = call fastcc i32 @genkey(ptr noundef %i.a, ptr noundef %i.x, ptr noundef %0, ptr noundef %2)
  %i.aw = icmp eq i32 %i.av, 0
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 64) #11
  call void @EVP_MD_CTX_free(ptr noundef nonnull %i.x) #11
  br i1 %i.aw, label %bb.m, label %ossl_ml_kem_encode_seed.exit.thread

.critedge:                                        ; preds = %bb.k
  call void @CRYPTO_free(ptr noundef %i.ab, ptr noundef nonnull @.str, i32 noundef 1551) #11
  call void @CRYPTO_secure_free(ptr noundef %i.ae, ptr noundef nonnull @.str, i32 noundef 1552) #11
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 64) #11
  call void @EVP_MD_CTX_free(ptr noundef nonnull %i.x) #11
  br label %bb.m

bb.m:                                             ; preds = %.critedge, %bb.l
  call void @ossl_ml_kem_key_reset(ptr noundef nonnull %2)
  br label %ossl_ml_kem_encode_seed.exit.thread

ossl_ml_kem_encode_seed.exit.thread:              ; preds = %bb.g, %bb.l, %bb.j, %bb.i, %bb.e, %bb.a, %bb.b, %bb.c, %bb.m
  %.021 = phi i32 [ 1, %bb.l ], [ 0, %bb.a ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.m ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.021
}

declare i32 @RAND_priv_bytes_ex(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @genkey(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [384 x i8], align 16              ; 4 uses
  %i.c = alloca [33 x i8], align 16               ; 6 uses
  %i.d = alloca [33 x i8], align 16               ; 6 uses
  %i.e = alloca [64 x i8], align 16               ; 5 uses
  %i.f = alloca [33 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  %i.h = load ptr, ptr %3, align 8, !tbaa !22     ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.j = load i32, ptr %i.i, align 8, !tbaa !49
  %i.k = icmp eq i32 %i.j, 1454
  %i.l = select i1 %i.k, ptr @cbd_3, ptr @cbd_2   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.n = load i32, ptr %i.m, align 8, !tbaa !37   ; 11 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.f, ptr noundef nonnull align 1 dereferenceable(32) %0, i64 32, i1 false)
  %i.o = trunc i32 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i8 %i.o, ptr %i.p, align 16, !tbaa !47
  %i.q = getelementptr i8, ptr %3, i64 40
  %.val52 = load ptr, ptr %i.q, align 8, !tbaa !33
  %i.r = call fastcc i32 @hash_g(ptr noundef %i.e, ptr noundef %i.f, i64 noundef 33, ptr noundef %1, ptr %.val52)
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.t, ptr noundef nonnull align 16 dereferenceable(32) %i.e, i64 32, i1 false)
  %i.u = call fastcc i32 @matrix_expand(ptr noundef %1, ptr noundef %3)
  %.not47 = icmp eq i32 %i.u, 0
  br i1 %.not47, label %bb.y, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.g, i64 32, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.062 = phi i8 [ 0, %bb.c ], [ %i.z, %bb.e ]    ; 2 uses
  %.09.i = phi i32 [ %i.n, %bb.c ], [ %i.ab, %bb.e ] ; 2 uses
  %.08.i = phi ptr [ %i.w, %bb.c ], [ %i.aa, %bb.e ] ; 3 uses
  store i8 %.062, ptr %i.x, align 16, !tbaa !47
  %i.y = call i32 %i.l(ptr noundef %.08.i, ptr noundef nonnull %i.d, ptr noundef nonnull %1, ptr noundef nonnull %3) #11, !callees !50, !inline_history !4
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %gencbd_vector_ntt.exit.thread, label %bb.e

gencbd_vector_ntt.exit.thread:                    ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %bb.y

bb.e:                                             ; preds = %bb.d
  %i.z = add i8 %.062, 1                          ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i, i64 512
  call fastcc void @scalar_ntt(ptr noundef %.08.i)
  %i.ab = add nsw i32 %.09.i, -1
  %i.ac = icmp sgt i32 %.09.i, 1
  br i1 %i.ac, label %bb.d, label %bb.f, !llvm.loop !5

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.g, i64 32, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.1 = phi i8 [ %i.z, %bb.f ], [ %i.ah, %bb.h ]  ; 2 uses
  %.09.i53 = phi i32 [ %i.n, %bb.f ], [ %i.aj, %bb.h ] ; 2 uses
  %.08.i54 = phi ptr [ %i.ae, %bb.f ], [ %i.ai, %bb.h ] ; 3 uses
  store i8 %.1, ptr %i.af, align 16, !tbaa !47
  %i.ag = call i32 %i.l(ptr noundef %.08.i54, ptr noundef nonnull %i.c, ptr noundef nonnull %1, ptr noundef nonnull %3) #11, !callees !50, !inline_history !4
  %.not.i55 = icmp eq i32 %i.ag, 0
  br i1 %.not.i55, label %gencbd_vector_ntt.exit57.thread, label %bb.h

gencbd_vector_ntt.exit57.thread:                  ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %bb.y

bb.h:                                             ; preds = %bb.g
  %i.ah = add i8 %.1, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i54, i64 512
  call fastcc void @scalar_ntt(ptr noundef %.08.i54)
  %i.aj = add nsw i32 %.09.i53, -1
  %i.ak = icmp sgt i32 %.09.i53, 1
  br i1 %i.ak, label %bb.g, label %bb.i, !llvm.loop !5

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !26 ; 9 uses
  %i.am = load ptr, ptr %i.v, align 8, !tbaa !27  ; 6 uses
  %i.an = icmp sgt i32 %i.n, 0
  br i1 %i.an, label %.lr.ph36.i, label %matrix_mult_transpose_add.exit

.lr.ph36.i:                                       ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !40 ; 5 uses
  %.not.i58 = icmp eq i32 %i.n, 1
  %i.aq = zext nneg i32 %i.n to i64               ; 3 uses
  %smin = call i32 @llvm.smin.i32(i32 %i.n, i32 2)
  %i.ar = sub nsw i32 %i.n, %smin
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = shl nuw nsw i64 %i.as, 9                ; 2 uses
  %i.au = getelementptr i8, ptr %i.am, i64 %i.at
  %scevgep = getelementptr i8, ptr %i.au, i64 1024
  %scevgep86 = getelementptr i8, ptr %i.am, i64 512 ; 2 uses
  %i.av = add nuw nsw i64 %i.at, 512
  %i.aw = mul i64 %i.av, %i.aq
  %i.ax = add nsw i32 %i.n, -1
  %i.ay = zext i32 %i.ax to i64
  %i.az = shl nuw nsw i64 %i.ay, 9
  %4 = add nuw nsw i64 %i.az, 512                 ; 2 uses
  %scevgep121 = getelementptr i8, ptr %i.ap, i64 %4
  %scevgep122.a = getelementptr i8, ptr %i.al, i64 %4 ; 3 uses
  %i.ba = getelementptr i8, ptr %i.ap, i64 %i.aw
  %i.bb = getelementptr i8, ptr %i.ba, i64 512
  %bound0125 = icmp ult ptr %i.al, %scevgep121
  %bound1126 = icmp ult ptr %i.ap, %scevgep122.a
  %found.conflict127 = and i1 %bound0125, %bound1126
  %bound0128 = icmp ult ptr %i.al, %scevgep86
  %bound1129 = icmp ult ptr %i.am, %scevgep122.a
  %found.conflict130 = and i1 %bound0128, %bound1129
  %conflict.rdx131 = or i1 %found.conflict127, %found.conflict130
  %bound0132 = icmp ult ptr %i.al, getelementptr inbounds nuw (i8, ptr @kModRoots, i64 256)
  %bound1133 = icmp ugt ptr %scevgep122.a, @kModRoots
  %found.conflict134 = and i1 %bound0132, %bound1133
  %conflict.rdx135 = or i1 %conflict.rdx131, %found.conflict134
  br label %vector.memcheck124

vector.memcheck124:                               ; preds = %scalar_mult_add.exit._crit_edge.i, %.lr.ph36.i
  %indvar = phi i64 [ %indvar.next, %scalar_mult_add.exit._crit_edge.i ], [ 0, %.lr.ph36.i ] ; 3 uses
  %.in.i = phi i32 [ %i.gd, %scalar_mult_add.exit._crit_edge.i ], [ %i.n, %.lr.ph36.i ] ; 2 uses
  %.01535.i = phi ptr [ %i.ge, %scalar_mult_add.exit._crit_edge.i ], [ %i.ap, %.lr.ph36.i ] ; 4 uses
  %.01634.i = phi ptr [ %i.lg, %scalar_mult_add.exit._crit_edge.i ], [ %i.al, %.lr.ph36.i ] ; 8 uses
  %i.bc = shl nuw nsw i64 %indvar, 9              ; 2 uses
  %scevgep87 = getelementptr i8, ptr %i.bb, i64 %i.bc
  %i.bd = add i64 %indvar, %i.aq
  %i.be = shl i64 %i.bd, 9
  %scevgep88 = getelementptr i8, ptr %i.ap, i64 %i.be
  %i.bf = getelementptr i8, ptr %i.al, i64 %i.bc
  %scevgep89 = getelementptr i8, ptr %i.bf, i64 512 ; 3 uses
  br i1 %conflict.rdx135, label %scalar.ph123, label %vector.body137

vector.body137:                                   ; preds = %vector.memcheck124, %vector.body137
  %index138 = phi i64 [ %index.next153, %vector.body137 ], [ 0, %vector.memcheck124 ] ; 3 uses
  %i.bg = shl i64 %index138, 1
  %next.gep139 = getelementptr i8, ptr @kModRoots, i64 %i.bg
  %i.bh = shl i64 %index138, 2                    ; 3 uses
  %next.gep140 = getelementptr i8, ptr %i.am, i64 %i.bh
  %next.gep141 = getelementptr i8, ptr %.01535.i, i64 %i.bh
  %i.bi = getelementptr inbounds nuw i8, ptr %.01634.i, i64 %i.bh ; 2 uses
  %wide.vec142 = load <8 x i16>, ptr %next.gep141, align 2, !tbaa !44, !alias.scope !76
  %i.bj = freeze <8 x i16> %wide.vec142           ; 2 uses
  %i.bk = bitcast <8 x i16> %i.bj to <4 x i32>
  %i.bl = bitcast <8 x i16> %i.bj to <4 x i32>
  %i.bm = and <4 x i32> %i.bl, splat (i32 65535)  ; 2 uses
  %i.bn = lshr <4 x i32> %i.bk, splat (i32 16)    ; 2 uses
  %wide.vec145 = load <8 x i16>, ptr %next.gep140, align 2, !tbaa !44, !alias.scope !77
  %i.bo = freeze <8 x i16> %wide.vec145           ; 2 uses
  %i.bp = bitcast <8 x i16> %i.bo to <4 x i32>
  %i.bq = bitcast <8 x i16> %i.bo to <4 x i32>
  %i.br = and <4 x i32> %i.bq, splat (i32 65535)  ; 2 uses
  %i.bs = lshr <4 x i32> %i.bp, splat (i32 16)    ; 2 uses
  %wide.load148 = load <4 x i16>, ptr %next.gep139, align 8, !tbaa !44, !alias.scope !78
  %i.bt = zext <4 x i16> %wide.load148 to <4 x i32>
  %wide.vec149 = load <8 x i16>, ptr %i.bi, align 2, !tbaa !44, !alias.scope !79, !noalias !80
  %i.bu = freeze <8 x i16> %wide.vec149           ; 2 uses
  %i.bv = bitcast <8 x i16> %i.bu to <4 x i32>
  %i.bw = bitcast <8 x i16> %i.bu to <4 x i32>
  %i.bx = and <4 x i32> %i.bw, splat (i32 65535)
  %i.by = lshr <4 x i32> %i.bv, splat (i32 16)
  %i.bz = mul nuw <4 x i32> %i.br, %i.bm
  %i.ca = add nuw <4 x i32> %i.bz, %i.bx
  %i.cb = mul nuw <4 x i32> %i.bs, %i.bn          ; 2 uses
  %i.cc = zext <4 x i32> %i.cb to <4 x i64>
  %i.cd = mul nuw nsw <4 x i64> %i.cc, splat (i64 5039)
  %i.ce = lshr <4 x i64> %i.cd, splat (i64 24)
  %i.cf = trunc nuw nsw <4 x i64> %i.ce to <4 x i32>
  %i.cg = mul <4 x i32> %i.cf, splat (i32 62207)
  %i.ch = add <4 x i32> %i.cg, %i.cb
  %i.ci = trunc <4 x i32> %i.ch to <4 x i16>      ; 2 uses
  %i.cj = add <4 x i16> %i.ci, splat (i16 -3329)  ; 2 uses
  %i.ck = icmp slt <4 x i16> %i.cj, zeroinitializer
  %i.cl = select <4 x i1> %i.ck, <4 x i16> %i.ci, <4 x i16> zeroinitializer
  %i.cm = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.cj, <4 x i16> zeroinitializer)
  %i.cn = or <4 x i16> %i.cl, %i.cm
  %i.co = zext <4 x i16> %i.cn to <4 x i32>
  %i.cp = mul nuw <4 x i32> %i.co, %i.bt
  %i.cq = add <4 x i32> %i.ca, %i.cp              ; 2 uses
  %i.cr = zext <4 x i32> %i.cq to <4 x i64>
  %i.cs = mul nuw nsw <4 x i64> %i.cr, splat (i64 5039)
  %i.ct = lshr <4 x i64> %i.cs, splat (i64 24)
  %i.cu = trunc nuw nsw <4 x i64> %i.ct to <4 x i32>
  %i.cv = mul <4 x i32> %i.cu, splat (i32 62207)
  %i.cw = add <4 x i32> %i.cv, %i.cq
  %i.cx = trunc <4 x i32> %i.cw to <4 x i16>      ; 2 uses
  %i.cy = add <4 x i16> %i.cx, splat (i16 -3329)  ; 2 uses
  %i.cz = icmp slt <4 x i16> %i.cy, zeroinitializer
  %i.da = select <4 x i1> %i.cz, <4 x i16> %i.cx, <4 x i16> zeroinitializer
  %i.db = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.cy, <4 x i16> zeroinitializer)
  %i.dc = or <4 x i16> %i.da, %i.db
  %i.dd = mul nuw <4 x i32> %i.bs, %i.bm
  %i.de = mul nuw <4 x i32> %i.bn, %i.br
  %i.df = add <4 x i32> %i.dd, %i.de
  %i.dg = add <4 x i32> %i.df, %i.by              ; 2 uses
  %i.dh = zext <4 x i32> %i.dg to <4 x i64>
  %i.di = mul nuw nsw <4 x i64> %i.dh, splat (i64 5039)
  %i.dj = lshr <4 x i64> %i.di, splat (i64 24)
  %i.dk = trunc nuw nsw <4 x i64> %i.dj to <4 x i32>
  %i.dl = mul <4 x i32> %i.dk, splat (i32 62207)
  %i.dm = add <4 x i32> %i.dl, %i.dg
  %i.dn = trunc <4 x i32> %i.dm to <4 x i16>      ; 2 uses
  %i.do = add <4 x i16> %i.dn, splat (i16 -3329)  ; 2 uses
  %i.dp = icmp slt <4 x i16> %i.do, zeroinitializer
  %i.dq = select <4 x i1> %i.dp, <4 x i16> %i.dn, <4 x i16> zeroinitializer
  %i.dr = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.do, <4 x i16> zeroinitializer)
  %i.ds = or <4 x i16> %i.dq, %i.dr
  %interleaved.vec152 = shufflevector <4 x i16> %i.dc, <4 x i16> %i.ds, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec152, ptr %i.bi, align 2, !tbaa !44, !alias.scope !79, !noalias !80
  %index.next153 = add nuw i64 %index138, 4       ; 2 uses
  %i.dt = icmp eq i64 %index.next153, 128
  br i1 %i.dt, label %scalar_mult_add.exit.preheader.i, label %vector.body137, !llvm.loop !64

scalar.ph123:                                     ; preds = %vector.memcheck124, %scalar.ph123
  %.027.i.i = phi ptr [ %i.eh, %scalar.ph123 ], [ @kModRoots, %vector.memcheck124 ] ; 2 uses
  %.026.i.i = phi ptr [ %i.ed, %scalar.ph123 ], [ %i.am, %vector.memcheck124 ] ; 3 uses
  %.025.i.i = phi ptr [ %i.ea, %scalar.ph123 ], [ %.01535.i, %vector.memcheck124 ] ; 3 uses
  %.0.idx.i.i = phi i64 [ %.0.add.i.i, %scalar.ph123 ], [ 0, %vector.memcheck124 ] ; 3 uses
  %.0.ptr.i.i = getelementptr inbounds nuw i8, ptr %.01634.i, i64 %.0.idx.i.i ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 2
  %i.dv = load i16, ptr %.025.i.i, align 2, !tbaa !44
  %i.dw = zext i16 %i.dv to i32                   ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 2
  %i.dy = load i16, ptr %.026.i.i, align 2, !tbaa !44
  %i.dz = zext i16 %i.dy to i32                   ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 4
  %i.eb = load i16, ptr %i.du, align 2, !tbaa !44
  %i.ec = zext i16 %i.eb to i32                   ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 4
  %i.ee = load i16, ptr %i.dx, align 2, !tbaa !44
  %i.ef = zext i16 %i.ee to i32                   ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.ptr.i.i, i64 2 ; 2 uses
  %.0.add.i.i = add nuw nsw i64 %.0.idx.i.i, 4
  %i.eh = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 2
  %i.ei = load i16, ptr %.027.i.i, align 2, !tbaa !44
  %i.ej = zext i16 %i.ei to i32
  %i.ek = load i16, ptr %.0.ptr.i.i, align 2, !tbaa !44
  %i.el = zext i16 %i.ek to i32
  %i.em = mul nuw i32 %i.dz, %i.dw
  %i.en = add nuw i32 %i.em, %i.el
  %i.eo = mul nuw i32 %i.ef, %i.ec                ; 2 uses
  %i.ep = zext i32 %i.eo to i64
  %i.eq = mul nuw nsw i64 %i.ep, 5039
  %i.er = lshr i64 %i.eq, 24
  %i.es = trunc nuw nsw i64 %i.er to i32
  %.neg.i.i.i = mul i32 %i.es, 62207
  %i.et = add i32 %.neg.i.i.i, %i.eo
  %i.eu = trunc i32 %i.et to i16                  ; 2 uses
  %i.ev = add i16 %i.eu, -3329                    ; 2 uses
  %isneg.i.i.i.i = icmp slt i16 %i.ev, 0
  %i.ew = select i1 %isneg.i.i.i.i, i16 %i.eu, i16 0
  %i.ex = call i16 @llvm.smax.i16(i16 %i.ev, i16 0)
  %i.ey = or i16 %i.ew, %i.ex
  %i.ez = zext i16 %i.ey to i32
  %i.fa = mul nuw i32 %i.ez, %i.ej
  %i.fb = add i32 %i.en, %i.fa                    ; 2 uses
  %i.fc = zext i32 %i.fb to i64
  %i.fd = mul nuw nsw i64 %i.fc, 5039
  %i.fe = lshr i64 %i.fd, 24
  %i.ff = trunc nuw nsw i64 %i.fe to i32
  %.neg.i28.i.i = mul i32 %i.ff, 62207
  %i.fg = add i32 %.neg.i28.i.i, %i.fb
  %i.fh = trunc i32 %i.fg to i16                  ; 2 uses
  %i.fi = add i16 %i.fh, -3329                    ; 2 uses
  %isneg.i.i29.i.i = icmp slt i16 %i.fi, 0
  %i.fj = select i1 %isneg.i.i29.i.i, i16 %i.fh, i16 0
  %i.fk = call i16 @llvm.smax.i16(i16 %i.fi, i16 0)
  %i.fl = or i16 %i.fj, %i.fk
  store i16 %i.fl, ptr %.0.ptr.i.i, align 2, !tbaa !44
  %i.fm = load i16, ptr %i.eg, align 2, !tbaa !44
  %i.fn = zext i16 %i.fm to i32
  %i.fo = mul nuw i32 %i.ef, %i.dw
  %i.fp = mul nuw i32 %i.ec, %i.dz
  %i.fq = add i32 %i.fo, %i.fp
  %i.fr = add i32 %i.fq, %i.fn                    ; 2 uses
  %i.fs = zext i32 %i.fr to i64
  %i.ft = mul nuw nsw i64 %i.fs, 5039
  %i.fu = lshr i64 %i.ft, 24
  %i.fv = trunc nuw nsw i64 %i.fu to i32
  %.neg.i30.i.i = mul i32 %i.fv, 62207
  %i.fw = add i32 %.neg.i30.i.i, %i.fr
  %i.fx = trunc i32 %i.fw to i16                  ; 2 uses
  %i.fy = add i16 %i.fx, -3329                    ; 2 uses
  %isneg.i.i31.i.i = icmp slt i16 %i.fy, 0
  %i.fz = select i1 %isneg.i.i31.i.i, i16 %i.fx, i16 0
  %i.ga = call i16 @llvm.smax.i16(i16 %i.fy, i16 0)
  %i.gb = or i16 %i.fz, %i.ga
  store i16 %i.gb, ptr %i.eg, align 2, !tbaa !44
  %i.gc = icmp samesign ult i64 %.0.idx.i.i, 508
  br i1 %i.gc, label %scalar.ph123, label %scalar_mult_add.exit.preheader.i, !llvm.loop !65

scalar_mult_add.exit.preheader.i:                 ; preds = %vector.body137, %scalar.ph123
  %i.gd = add nsw i32 %.in.i, -1
  %i.ge = getelementptr inbounds nuw i8, ptr %.01535.i, i64 512
  br i1 %.not.i58, label %scalar_mult_add.exit._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %scalar_mult_add.exit.preheader.i
  %bound0 = icmp ult ptr %.01634.i, %scevgep87
  %bound1 = icmp ult ptr %scevgep88, %scevgep89
  %found.conflict = and i1 %bound0, %bound1
  %bound090 = icmp ult ptr %.01634.i, %scevgep
  %bound191 = icmp ult ptr %scevgep86, %scevgep89
  %found.conflict92 = and i1 %bound090, %bound191
  %conflict.rdx = or i1 %found.conflict, %found.conflict92
  %bound093 = icmp ult ptr %.01634.i, getelementptr inbounds nuw (i8, ptr @kModRoots, i64 256)
  %bound194 = icmp ugt ptr %scevgep89, @kModRoots
  %found.conflict95 = and i1 %bound093, %bound194
  %conflict.rdx96 = or i1 %conflict.rdx, %found.conflict95
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %scalar_mult_add.exit30.i
  %.033.i = phi i32 [ %i.le, %scalar_mult_add.exit30.i ], [ %i.n, %.lr.ph.i.preheader ] ; 2 uses
  %.01332.i = phi ptr [ %i.gg, %scalar_mult_add.exit30.i ], [ %i.am, %.lr.ph.i.preheader ]
  %.01431.i = phi ptr [ %i.gf, %scalar_mult_add.exit30.i ], [ %.01535.i, %.lr.ph.i.preheader ]
  %i.gf = getelementptr inbounds nuw [512 x i8], ptr %.01431.i, i64 %i.aq ; 3 uses
end_hunk_0
begin_hunk_1_@scalar_ntt:bb.a
  %i.bdh = load i16, ptr %i.bch, align 2, !tbaa !44, !alias.scope !129, !noalias !128
  %i.bdi = load i16, ptr %i.bci, align 2, !tbaa !44, !alias.scope !129, !noalias !128
  %i.bdj = load i16, ptr %i.bcj, align 2, !tbaa !44, !alias.scope !129, !noalias !128
  %i.bdk = load i16, ptr %i.bck, align 2, !tbaa !44, !alias.scope !129, !noalias !128
  %i.bdl = load i16, ptr %i.bcl, align 2, !tbaa !44, !alias.scope !129, !noalias !128
  %i.bdm = insertelement <8 x i16> poison, i16 %i.bde, i64 0
  %i.bdn = insertelement <8 x i16> %i.bdm, i16 %i.bdf, i64 1
  %i.bdo = insertelement <8 x i16> %i.bdn, i16 %i.bdg, i64 2
  %i.bdp = insertelement <8 x i16> %i.bdo, i16 %i.bdh, i64 3
  %i.bdq = insertelement <8 x i16> %i.bdp, i16 %i.bdi, i64 4
  %i.bdr = insertelement <8 x i16> %i.bdq, i16 %i.bdj, i64 5
  %i.bds = insertelement <8 x i16> %i.bdr, i16 %i.bdk, i64 6
  %i.bdt = insertelement <8 x i16> %i.bds, i16 %i.bdl, i64 7
  %i.bdu = zext <8 x i16> %i.bdt to <8 x i32>
  %i.bdv = mul nuw <8 x i32> %i.bdu, %i.bcn       ; 2 uses
  %i.bdw = zext <8 x i32> %i.bdv to <8 x i64>
  %i.bdx = mul nuw nsw <8 x i64> %i.bdw, splat (i64 5039)
  %i.bdy = lshr <8 x i64> %i.bdx, splat (i64 24)
  %i.bdz = trunc nuw nsw <8 x i64> %i.bdy to <8 x i32>
  %i.bea = mul <8 x i32> %i.bdz, splat (i32 62207)
  %i.beb = add <8 x i32> %i.bea, %i.bdv
  %i.bec = trunc <8 x i32> %i.beb to <8 x i16>    ; 2 uses
  %i.bed = add <8 x i16> %i.bec, splat (i16 -3329) ; 2 uses
  %i.bee = icmp slt <8 x i16> %i.bed, zeroinitializer
  %i.bef = select <8 x i1> %i.bee, <8 x i16> %i.bec, <8 x i16> zeroinitializer
  %i.beg = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bed, <8 x i16> zeroinitializer)
  %i.beh = or <8 x i16> %i.bef, %i.beg            ; 2 uses
  %i.bei = sub <8 x i16> %i.bdd, %i.beh           ; 3 uses
  %i.bej = add <8 x i16> %i.beh, %i.bdd           ; 2 uses
  %i.bek = add <8 x i16> %i.bej, splat (i16 -3329) ; 2 uses
  %i.bel = getelementptr inbounds nuw i8, ptr %i.bbp, i64 2
  %i.bem = getelementptr inbounds nuw i8, ptr %i.bbq, i64 10
  %i.ben = getelementptr inbounds nuw i8, ptr %i.bbs, i64 18
  %i.beo = getelementptr inbounds nuw i8, ptr %i.bbu, i64 26
  %i.bep = getelementptr inbounds nuw i8, ptr %i.bbw, i64 34
  %i.beq = getelementptr inbounds nuw i8, ptr %i.bby, i64 42
  %i.ber = getelementptr inbounds nuw i8, ptr %i.bca, i64 50
  %i.bes = getelementptr inbounds nuw i8, ptr %i.bcc, i64 58
  %i.bet = getelementptr inbounds nuw i8, ptr %i.bbp, i64 6
  %i.beu = getelementptr inbounds nuw i8, ptr %i.bbq, i64 14
  %i.bev = getelementptr inbounds nuw i8, ptr %i.bbs, i64 22
  %i.bew = getelementptr inbounds nuw i8, ptr %i.bbu, i64 30
  %i.bex = getelementptr inbounds nuw i8, ptr %i.bbw, i64 38
  %i.bey = getelementptr inbounds nuw i8, ptr %i.bby, i64 46
  %i.bez = getelementptr inbounds nuw i8, ptr %i.bca, i64 54
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.bcc, i64 62
  %i.bfb = load i16, ptr %i.bel, align 2, !tbaa !44, !alias.scope !129, !noalias !128
  %i.bfc = load i16, ptr %i.bem, align 2, !tbaa !44, !alias.scope !129, !noalias !128
  %i.bfd = load i16, ptr %i.ben, align 2, !tbaa !44, !alias.scope !129, !noalias !128
  %i.bfe = load i16, ptr %i.beo, align 2, !tbaa !44, !alias.scope !129, !noalias !128
  %i.bff = load i16, ptr %i.bep, align 2, !tbaa !44, !alias.scope !129, !noalias !128
  %i.bfg = load i16, ptr %i.beq, align 2, !tbaa !44, !alias.scope !129, !noalias !128
  %i.bfh = load i16, ptr %i.ber, align 2, !tbaa !44, !alias.scope !129, !noalias !128
  %i.bfi = load i16, ptr %i.bes, align 2, !tbaa !44, !alias.scope !129, !noalias !128
  %i.bfj = insertelement <8 x i16> poison, i16 %i.bfb, i64 0
  %i.bfk = insertelement <8 x i16> %i.bfj, i16 %i.bfc, i64 1
  %i.bfl = insertelement <8 x i16> %i.bfk, i16 %i.bfd, i64 2
  %i.bfm = insertelement <8 x i16> %i.bfl, i16 %i.bfe, i64 3
  %i.bfn = insertelement <8 x i16> %i.bfm, i16 %i.bff, i64 4
  %i.bfo = insertelement <8 x i16> %i.bfn, i16 %i.bfg, i64 5
  %i.bfp = insertelement <8 x i16> %i.bfo, i16 %i.bfh, i64 6
  %i.bfq = insertelement <8 x i16> %i.bfp, i16 %i.bfi, i64 7 ; 2 uses
  %i.bfr = load i16, ptr %i.bet, align 2, !tbaa !44, !alias.scope !129, !noalias !128
  %i.bfs = load i16, ptr %i.beu, align 2, !tbaa !44, !alias.scope !129, !noalias !128
  %i.bft = load i16, ptr %i.bev, align 2, !tbaa !44, !alias.scope !129, !noalias !128
  %i.bfu = load i16, ptr %i.bew, align 2, !tbaa !44, !alias.scope !129, !noalias !128
  %i.bfv = load i16, ptr %i.bex, align 2, !tbaa !44, !alias.scope !129, !noalias !128
  %i.bfw = load i16, ptr %i.bey, align 2, !tbaa !44, !alias.scope !129, !noalias !128
  %i.bfx = load i16, ptr %i.bez, align 2, !tbaa !44, !alias.scope !129, !noalias !128
  %i.bfy = load i16, ptr %i.bfa, align 2, !tbaa !44, !alias.scope !129, !noalias !128
  %i.bfz = insertelement <8 x i16> poison, i16 %i.bfr, i64 0
  %i.bga = insertelement <8 x i16> %i.bfz, i16 %i.bfs, i64 1
  %i.bgb = insertelement <8 x i16> %i.bga, i16 %i.bft, i64 2
  %i.bgc = insertelement <8 x i16> %i.bgb, i16 %i.bfu, i64 3
  %i.bgd = insertelement <8 x i16> %i.bgc, i16 %i.bfv, i64 4
  %i.bge = insertelement <8 x i16> %i.bgd, i16 %i.bfw, i64 5
  %i.bgf = insertelement <8 x i16> %i.bge, i16 %i.bfx, i64 6
  %i.bgg = insertelement <8 x i16> %i.bgf, i16 %i.bfy, i64 7
  %i.bgh = zext <8 x i16> %i.bgg to <8 x i32>
  %i.bgi = mul nuw <8 x i32> %i.bgh, %i.bcn       ; 2 uses
  %i.bgj = zext <8 x i32> %i.bgi to <8 x i64>
  %i.bgk = mul nuw nsw <8 x i64> %i.bgj, splat (i64 5039)
  %i.bgl = lshr <8 x i64> %i.bgk, splat (i64 24)
  %i.bgm = trunc nuw nsw <8 x i64> %i.bgl to <8 x i32>
  %i.bgn = mul <8 x i32> %i.bgm, splat (i32 62207)
  %i.bgo = add <8 x i32> %i.bgn, %i.bgi
  %i.bgp = trunc <8 x i32> %i.bgo to <8 x i16>    ; 2 uses
  %i.bgq = add <8 x i16> %i.bgp, splat (i16 -3329) ; 2 uses
  %i.bgr = icmp slt <8 x i16> %i.bgq, zeroinitializer
  %i.bgs = select <8 x i1> %i.bgr, <8 x i16> %i.bgp, <8 x i16> zeroinitializer
  %i.bgt = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bgq, <8 x i16> zeroinitializer)
  %i.bgu = or <8 x i16> %i.bgs, %i.bgt            ; 2 uses
  %i.bgv = sub <8 x i16> %i.bfq, %i.bgu           ; 3 uses
  %i.bgw = add <8 x i16> %i.bgu, %i.bfq           ; 2 uses
  %i.bgx = add <8 x i16> %i.bgw, splat (i16 -3329) ; 2 uses
  %i.bgy = shufflevector <8 x i16> %i.bek, <8 x i16> %i.bgx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bgz = icmp slt <16 x i16> %i.bgy, zeroinitializer
  %i.bha = shufflevector <8 x i16> %i.bej, <8 x i16> %i.bgw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bhb = select <16 x i1> %i.bgz, <16 x i16> %i.bha, <16 x i16> zeroinitializer
  %i.bhc = shufflevector <8 x i16> %i.bek, <8 x i16> %i.bgx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bhd = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.bhc, <16 x i16> zeroinitializer)
  %i.bhe = or <16 x i16> %i.bhb, %i.bhd
  %i.bhf = shufflevector <8 x i16> %i.bei, <8 x i16> %i.bgv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bhg = icmp slt <16 x i16> %i.bhf, zeroinitializer
  %i.bhh = shufflevector <8 x i16> %i.bei, <8 x i16> %i.bgv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bhi = add <16 x i16> %i.bhh, splat (i16 3329)
  %i.bhj = select <16 x i1> %i.bhg, <16 x i16> %i.bhi, <16 x i16> zeroinitializer
  %i.bhk = shufflevector <8 x i16> %i.bei, <8 x i16> %i.bgv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bhl = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.bhk, <16 x i16> zeroinitializer)
  %i.bhm = or <16 x i16> %i.bhj, %i.bhl
  %interleaved.vec139 = shufflevector <16 x i16> %i.bhe, <16 x i16> %i.bhm, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec139, ptr %i.bbp, align 2, !tbaa !44, !alias.scope !129, !noalias !128
  %index.next140 = add nuw i64 %index136, 8       ; 2 uses
  %i.bhn = icmp eq i64 %index.next140, 64
  br i1 %i.bhn, label %middle.block141, label %vector.body135, !llvm.loop !122

scalar.ph129:                                     ; preds = %vector.memcheck130, %scalar.ph129
  %.122.6 = phi ptr [ %i.bhp, %scalar.ph129 ], [ %.lcssa, %vector.memcheck130 ]
  %.019.idx.6 = phi i64 [ %.0.add.6.1, %scalar.ph129 ], [ 0, %vector.memcheck130 ] ; 5 uses
  %.019.ptr.6 = getelementptr inbounds nuw i8, ptr %0, i64 %.019.idx.6 ; 4 uses
  %i.bho = getelementptr inbounds nuw i8, ptr %0, i64 %.019.idx.6
  %.ptr25.6 = getelementptr inbounds nuw i8, ptr %i.bho, i64 4
  %i.bhp = getelementptr inbounds nuw i8, ptr %.122.6, i64 2 ; 2 uses
  %i.bhq = load i16, ptr %i.bhp, align 2, !tbaa !44
  %i.bhr = zext i16 %i.bhq to i32                 ; 2 uses
  %i.bhs = load i16, ptr %.ptr25.6, align 2, !tbaa !44
  %i.bht = zext i16 %i.bhs to i32
  %i.bhu = mul nuw i32 %i.bht, %i.bhr             ; 2 uses
  %i.bhv = zext i32 %i.bhu to i64
  %i.bhw = mul nuw nsw i64 %i.bhv, 5039
  %i.bhx = lshr i64 %i.bhw, 24
  %i.bhy = trunc nuw nsw i64 %i.bhx to i32
  %.neg.i.6 = mul i32 %i.bhy, 62207
  %i.bhz = add i32 %.neg.i.6, %i.bhu
  %i.bia = trunc i32 %i.bhz to i16                ; 2 uses
  %i.bib = add i16 %i.bia, -3329                  ; 2 uses
  %isneg.i.i.6 = icmp slt i16 %i.bib, 0
  %i.bic = select i1 %isneg.i.i.6, i16 %i.bia, i16 0
  %i.bid = tail call i16 @llvm.smax.i16(i16 %i.bib, i16 0)
  %i.bie = or i16 %i.bic, %i.bid                  ; 2 uses
  %i.bif = getelementptr inbounds nuw i8, ptr %.019.ptr.6, i64 2
  %i.big = getelementptr inbounds nuw i8, ptr %0, i64 %.019.idx.6
  %.0.ptr.6.1 = getelementptr inbounds nuw i8, ptr %i.big, i64 6
  %i.bih = load i16, ptr %.0.ptr.6.1, align 2, !tbaa !44
  %i.bii = zext i16 %i.bih to i32
  %i.bij = mul nuw i32 %i.bii, %i.bhr             ; 2 uses
  %i.bik = zext i32 %i.bij to i64
  %i.bil = mul nuw nsw i64 %i.bik, 5039
  %i.bim = lshr i64 %i.bil, 24
  %i.bin = trunc nuw nsw i64 %i.bim to i32
  %.neg.i.6.1 = mul i32 %i.bin, 62207
  %i.bio = add i32 %.neg.i.6.1, %i.bij
  %i.bip = trunc i32 %i.bio to i16                ; 2 uses
  %i.biq = add i16 %i.bip, -3329                  ; 2 uses
  %isneg.i.i.6.1 = icmp slt i16 %i.biq, 0
  %i.bir = select i1 %isneg.i.i.6.1, i16 %i.bip, i16 0
  %i.bis = tail call i16 @llvm.smax.i16(i16 %i.biq, i16 0)
  %i.bit = or i16 %i.bir, %i.bis                  ; 2 uses
  %.0.add.6.1 = add nuw nsw i64 %.019.idx.6, 8
  %i.biu = load <2 x i16>, ptr %.019.ptr.6, align 2, !tbaa !44
  %i.biv = load i16, ptr %i.bif, align 2, !tbaa !44
  %i.biw = load i16, ptr %.019.ptr.6, align 2, !tbaa !44
  %i.bix = add i16 %i.bie, %i.biw
  %i.biy = add i16 %i.bit, %i.biv
  %i.biz = shufflevector <2 x i16> %i.biu, <2 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.bja = insertelement <4 x i16> %i.biz, i16 %i.bix, i64 0
  %i.bjb = insertelement <4 x i16> %i.bja, i16 %i.biy, i64 1 ; 2 uses
  %i.bjc = insertelement <4 x i16> <i16 3329, i16 3329, i16 poison, i16 poison>, i16 %i.bie, i64 2
  %i.bjd = insertelement <4 x i16> %i.bjc, i16 %i.bit, i64 3
  %i.bje = sub <4 x i16> %i.bjb, %i.bjd           ; 3 uses
  %i.bjf = icmp slt <4 x i16> %i.bje, zeroinitializer
  %i.bjg = add <4 x i16> %i.bje, <i16 poison, i16 poison, i16 3329, i16 3329>
  %i.bjh = shufflevector <4 x i16> %i.bjg, <4 x i16> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.bji = shufflevector <4 x i16> %i.bjb, <4 x i16> %i.bjh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bjj = select <4 x i1> %i.bjf, <4 x i16> %i.bji, <4 x i16> zeroinitializer
  %i.bjk = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.bje, <4 x i16> zeroinitializer)
  %i.bjl = or <4 x i16> %i.bjj, %i.bjk
  store <4 x i16> %i.bjl, ptr %.019.ptr.6, align 2, !tbaa !44
  %i.bjm = icmp samesign ult i64 %.019.idx.6, 504
  br i1 %i.bjm, label %scalar.ph129, label %middle.block141, !llvm.loop !123

middle.block141:                                  ; preds = %vector.body135, %scalar.ph129
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @encrypt_cpa(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 5 uses
  %i.b = alloca [128 x i8], align 16              ; 5 uses
  %i.c = alloca [33 x i8], align 16               ; 6 uses
  %i.d = alloca [33 x i8], align 16               ; 6 uses
  %6 = alloca %struct.ossl_ml_kem_scalar_st, align 2 ; 15 uses
  %i.e = alloca [33 x i8], align 16               ; 5 uses
  %i.f = load ptr, ptr %5, align 8, !tbaa !22     ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load i32, ptr %i.g, align 8, !tbaa !49
  %i.i = icmp eq i32 %i.h, 1454
  %i.j = select i1 %i.i, ptr @cbd_3, ptr @cbd_2
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.l = load i32, ptr %i.k, align 8, !tbaa !37   ; 16 uses
  %i.m = sext i32 %i.l to i64                     ; 4 uses
  %i.n = getelementptr [512 x i8], ptr %3, i64 %i.m ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  %i.p = load i32, ptr %i.o, align 4, !tbaa !54   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.r = load i32, ptr %i.q, align 8, !tbaa !55   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 1 dereferenceable(32) %2, i64 32, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.083 = phi i8 [ 0, %bb.a ], [ %i.u, %bb.c ]    ; 2 uses
  %.09.i = phi i32 [ %i.l, %bb.a ], [ %i.w, %bb.c ] ; 2 uses
  %.08.i = phi ptr [ %3, %bb.a ], [ %i.v, %bb.c ] ; 3 uses
  store i8 %.083, ptr %i.s, align 16, !tbaa !47
  %i.t = call i32 %i.j(ptr noundef nonnull %.08.i, ptr noundef nonnull %i.d, ptr noundef nonnull %4, ptr noundef nonnull %5) #11, !callees !50, !inline_history !4
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %gencbd_vector_ntt.exit.thread, label %bb.c

gencbd_vector_ntt.exit.thread:                    ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %scalar_encode.exit

bb.c:                                             ; preds = %bb.b
  %i.u = add i8 %.083, 1                          ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i, i64 512
  call fastcc void @scalar_ntt(ptr noundef nonnull %.08.i)
  %i.w = add nsw i32 %.09.i, -1
  %i.x = icmp sgt i32 %.09.i, 1
  br i1 %i.x, label %bb.b, label %bb.d, !llvm.loop !5

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !26
  call fastcc void @inner_product(ptr noundef %6, ptr noundef %i.z, ptr noundef %3, i32 noundef %i.l)
  call fastcc void @scalar_inverse_ntt(ptr noundef %6)
  %i.aa = icmp sgt i32 %i.l, 0                    ; 2 uses
  br i1 %i.aa, label %.preheader.lr.ph.i, label %matrix_mult_intt.exit

.preheader.lr.ph.i:                               ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !40
  %.not.i50 = icmp eq i32 %i.l, 1
  %smin = call i32 @llvm.smin.i32(i32 %i.l, i32 2)
  %i.ad = sub nsw i32 %i.l, %smin
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 9                ; 2 uses
  %i.ag = add nuw nsw i64 %i.af, 1024             ; 2 uses
  %scevgep = getelementptr i8, ptr %3, i64 %i.ag  ; 2 uses
  %i.ah = getelementptr i8, ptr %3, i64 %i.af
  %scevgep140 = getelementptr i8, ptr %i.ah, i64 1022 ; 2 uses
  %i.ai = getelementptr i8, ptr %3, <2 x i64> <i64 512, i64 514> ; 2 uses
  %scevgep141 = getelementptr i8, ptr %3, i64 512 ; 2 uses
  %i.aj = shl nuw nsw i64 %i.m, 9                 ; 4 uses
  %scevgep229 = getelementptr i8, ptr %3, i64 2   ; 2 uses
  %scevgep230 = getelementptr i8, ptr %3, i64 510 ; 2 uses
  %7 = add nsw i32 %i.l, -1
  %8 = zext i32 %7 to i64
  %9 = add nuw nsw i64 %i.m, %8
  %10 = shl nuw nsw i64 %9, 9                     ; 2 uses
  %i.ak = getelementptr i8, ptr %3, i64 %10
  %scevgep231 = getelementptr i8, ptr %i.ak, i64 512 ; 5 uses
  %i.al = getelementptr i8, ptr %3, i64 %i.aj
  %scevgep232 = getelementptr i8, ptr %i.al, i64 2 ; 5 uses
  %i.am = getelementptr i8, ptr %3, i64 %10
  %scevgep233.a = getelementptr i8, ptr %i.am, i64 510 ; 5 uses
  %i.an = getelementptr i8, ptr %3, i64 %i.aj
  %i.ao = getelementptr i8, ptr %i.an, i64 512
  %i.ap = getelementptr i8, ptr %3, i64 %i.aj
  %i.aq = getelementptr i8, ptr %i.ap, i64 2
  %i.ar = getelementptr i8, ptr %3, i64 %i.aj
  %i.as = getelementptr i8, ptr %i.ar, i64 510
  %bound0236 = icmp ult ptr %i.n, %scevgep231
  %bound1237 = icmp ult ptr %scevgep232, %scevgep233.a
  %found.conflict238 = and i1 %bound0236, %bound1237
  %bound0243 = icmp ult ptr %i.n, %scevgep230
  %bound1244 = icmp ult ptr %3, %scevgep233.a
  %found.conflict245 = and i1 %bound0243, %bound1244
  %invariant.op = or i1 %found.conflict238, %found.conflict245
  %bound0247 = icmp ult ptr %i.n, %scevgep141
  %bound1248 = icmp ult ptr %scevgep229, %scevgep233.a
  %found.conflict249 = and i1 %bound0247, %bound1248
  %invariant.op375 = or i1 %invariant.op, %found.conflict249
  %bound0251 = icmp ult ptr %i.n, getelementptr inbounds nuw (i8, ptr @kModRoots, i64 256)
  %bound1252 = icmp ugt ptr %scevgep233.a, @kModRoots
  %found.conflict253 = and i1 %bound0251, %bound1252
  %invariant.op376 = or i1 %invariant.op375, %found.conflict253
  %bound0259 = icmp ult ptr %scevgep232, %scevgep230
  %bound1260 = icmp ult ptr %3, %scevgep231
  %found.conflict261 = and i1 %bound0259, %bound1260
  %bound0263 = icmp ult ptr %scevgep232, %scevgep141
  %bound1264 = icmp ult ptr %scevgep229, %scevgep231
  %found.conflict265 = and i1 %bound0263, %bound1264
  %invariant.op377 = or i1 %found.conflict261, %found.conflict265
  %bound0267 = icmp ult ptr %scevgep232, getelementptr inbounds nuw (i8, ptr @kModRoots, i64 256)
  %bound1268 = icmp ugt ptr %scevgep231, @kModRoots
  %found.conflict269 = and i1 %bound0267, %bound1268
  %invariant.op378 = or i1 %invariant.op377, %found.conflict269
  %i.at = insertelement <4 x ptr> <ptr poison, ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @kModRoots, i64 256)>, ptr %scevgep140, i64 1
  %i.au = insertelement <4 x ptr> %i.at, ptr %scevgep, i64 2
  %i.av = shufflevector <2 x ptr> %i.ai, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %.preheader.i

.preheader.i:                                     ; preds = %scalar_mult.exit._crit_edge.i, %.preheader.lr.ph.i
  %indvar = phi i64 [ %indvar.next, %scalar_mult.exit._crit_edge.i ], [ 0, %.preheader.lr.ph.i ] ; 2 uses
  %.in.i = phi i32 [ %i.fi, %scalar_mult.exit._crit_edge.i ], [ %i.l, %.preheader.lr.ph.i ] ; 2 uses
  %.01426.i = phi ptr [ %i.lj, %scalar_mult.exit._crit_edge.i ], [ %i.n, %.preheader.lr.ph.i ] ; 8 uses
  %.01525.i = phi ptr [ %.1.lcssa.i, %scalar_mult.exit._crit_edge.i ], [ %i.ac, %.preheader.lr.ph.i ] ; 8 uses
  %i.aw = shl nuw nsw i64 %indvar, 9              ; 3 uses
  %scevgep143 = getelementptr i8, ptr %i.ao, i64 %i.aw
  %scevgep144 = getelementptr i8, ptr %i.aq, i64 %i.aw ; 2 uses
  %scevgep145 = getelementptr i8, ptr %i.as, i64 %i.aw ; 2 uses
  %i.ax = getelementptr i8, ptr %.01525.i, i64 512 ; 2 uses
  %bound0239 = icmp ult ptr %i.n, %i.ax
  %bound1240 = icmp ult ptr %.01525.i, %scevgep233.a
  %found.conflict241 = and i1 %bound0239, %bound1240
  %conflict.rdx254.reass = or i1 %found.conflict241, %invariant.op376
  %bound0255 = icmp ult ptr %scevgep232, %i.ax
  %bound1256 = icmp ult ptr %.01525.i, %scevgep231
  %found.conflict257 = and i1 %bound0255, %bound1256
  %conflict.rdx258 = or i1 %conflict.rdx254.reass, %found.conflict257
  %conflict.rdx270.reass = or i1 %conflict.rdx258, %invariant.op378
  br i1 %conflict.rdx270.reass, label %scalar.ph234, label %vector.body272

vector.body272:                                   ; preds = %.preheader.i, %vector.body272
  %index273 = phi i64 [ %index.next285, %vector.body272 ], [ 0, %.preheader.i ] ; 3 uses
  %i.ay = shl i64 %index273, 1
  %next.gep274 = getelementptr i8, ptr @kModRoots, i64 %i.ay
  %i.az = shl i64 %index273, 2                    ; 3 uses
  %next.gep275 = getelementptr i8, ptr %3, i64 %i.az
  %next.gep276 = getelementptr i8, ptr %.01525.i, i64 %i.az
  %i.ba = getelementptr inbounds nuw i8, ptr %.01426.i, i64 %i.az
  %wide.vec277 = load <8 x i16>, ptr %next.gep276, align 2, !tbaa !44, !alias.scope !156
  %i.bb = freeze <8 x i16> %wide.vec277           ; 2 uses
  %i.bc = bitcast <8 x i16> %i.bb to <4 x i32>
  %i.bd = bitcast <8 x i16> %i.bb to <4 x i32>
  %i.be = and <4 x i32> %i.bd, splat (i32 65535)  ; 2 uses
  %i.bf = lshr <4 x i32> %i.bc, splat (i32 16)    ; 2 uses
  %wide.vec280 = load <8 x i16>, ptr %next.gep275, align 2, !tbaa !44
  %i.bg = freeze <8 x i16> %wide.vec280           ; 2 uses
  %i.bh = bitcast <8 x i16> %i.bg to <4 x i32>
  %i.bi = bitcast <8 x i16> %i.bg to <4 x i32>
  %i.bj = and <4 x i32> %i.bi, splat (i32 65535)  ; 2 uses
  %i.bk = lshr <4 x i32> %i.bh, splat (i32 16)    ; 2 uses
  %wide.load283 = load <4 x i16>, ptr %next.gep274, align 8, !tbaa !44, !alias.scope !157
  %i.bl = zext <4 x i16> %wide.load283 to <4 x i32>
  %i.bm = mul nuw <4 x i32> %i.bj, %i.be
  %i.bn = mul nuw <4 x i32> %i.bk, %i.bf          ; 2 uses
  %i.bo = zext <4 x i32> %i.bn to <4 x i64>
  %i.bp = mul nuw nsw <4 x i64> %i.bo, splat (i64 5039)
  %i.bq = lshr <4 x i64> %i.bp, splat (i64 24)
  %i.br = trunc nuw nsw <4 x i64> %i.bq to <4 x i32>
  %i.bs = mul <4 x i32> %i.br, splat (i32 62207)
  %i.bt = add <4 x i32> %i.bs, %i.bn
  %i.bu = trunc <4 x i32> %i.bt to <4 x i16>      ; 2 uses
  %i.bv = add <4 x i16> %i.bu, splat (i16 -3329)  ; 2 uses
  %i.bw = icmp slt <4 x i16> %i.bv, zeroinitializer
  %i.bx = select <4 x i1> %i.bw, <4 x i16> %i.bu, <4 x i16> zeroinitializer
  %i.by = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.bv, <4 x i16> zeroinitializer)
  %i.bz = or <4 x i16> %i.bx, %i.by
  %i.ca = zext <4 x i16> %i.bz to <4 x i32>
  %i.cb = mul nuw <4 x i32> %i.ca, %i.bl
  %i.cc = add <4 x i32> %i.cb, %i.bm              ; 2 uses
  %i.cd = zext <4 x i32> %i.cc to <4 x i64>
  %i.ce = mul nuw nsw <4 x i64> %i.cd, splat (i64 5039)
  %i.cf = lshr <4 x i64> %i.ce, splat (i64 24)
  %i.cg = trunc nuw nsw <4 x i64> %i.cf to <4 x i32>
  %i.ch = mul <4 x i32> %i.cg, splat (i32 62207)
  %i.ci = add <4 x i32> %i.ch, %i.cc
  %i.cj = trunc <4 x i32> %i.ci to <4 x i16>      ; 2 uses
  %i.ck = add <4 x i16> %i.cj, splat (i16 -3329)  ; 2 uses
  %i.cl = icmp slt <4 x i16> %i.ck, zeroinitializer
  %i.cm = select <4 x i1> %i.cl, <4 x i16> %i.cj, <4 x i16> zeroinitializer
  %i.cn = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.ck, <4 x i16> zeroinitializer)
  %i.co = or <4 x i16> %i.cm, %i.cn
  %i.cp = mul nuw <4 x i32> %i.bk, %i.be
  %i.cq = mul nuw <4 x i32> %i.bf, %i.bj
  %i.cr = add <4 x i32> %i.cp, %i.cq              ; 2 uses
  %i.cs = zext <4 x i32> %i.cr to <4 x i64>
  %i.ct = mul nuw nsw <4 x i64> %i.cs, splat (i64 5039)
  %i.cu = lshr <4 x i64> %i.ct, splat (i64 24)
  %i.cv = trunc nuw nsw <4 x i64> %i.cu to <4 x i32>
  %i.cw = mul <4 x i32> %i.cv, splat (i32 62207)
  %i.cx = add <4 x i32> %i.cw, %i.cr
  %i.cy = trunc <4 x i32> %i.cx to <4 x i16>      ; 2 uses
  %i.cz = add <4 x i16> %i.cy, splat (i16 -3329)  ; 2 uses
  %i.da = icmp slt <4 x i16> %i.cz, zeroinitializer
  %i.db = select <4 x i1> %i.da, <4 x i16> %i.cy, <4 x i16> zeroinitializer
  %i.dc = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.cz, <4 x i16> zeroinitializer)
  %i.dd = or <4 x i16> %i.db, %i.dc
  %interleaved.vec284 = shufflevector <4 x i16> %i.co, <4 x i16> %i.dd, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec284, ptr %i.ba, align 2, !tbaa !44
  %index.next285 = add nuw i64 %index273, 4       ; 2 uses
  %i.de = icmp eq i64 %index.next285, 128
  br i1 %i.de, label %scalar_mult.exit.preheader.i, label %vector.body272, !llvm.loop !133

scalar.ph234:                                     ; preds = %.preheader.i, %scalar.ph234
  %.023.i.i = phi ptr [ %i.dr, %scalar.ph234 ], [ @kModRoots, %.preheader.i ] ; 2 uses
  %.022.i.i = phi ptr [ %i.do, %scalar.ph234 ], [ %3, %.preheader.i ] ; 3 uses
  %.021.i.i = phi ptr [ %i.dl, %scalar.ph234 ], [ %.01525.i, %.preheader.i ] ; 3 uses
  %.0.idx.i.i = phi i64 [ %.0.add.i.i, %scalar.ph234 ], [ 0, %.preheader.i ] ; 3 uses
  %.0.ptr.i.i = getelementptr inbounds nuw i8, ptr %.01426.i, i64 %.0.idx.i.i ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 2
  %i.dg = load i16, ptr %.021.i.i, align 2, !tbaa !44
  %i.dh = zext i16 %i.dg to i32                   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 2
  %i.dj = load i16, ptr %.022.i.i, align 2, !tbaa !44
  %i.dk = zext i16 %i.dj to i32                   ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 4
  %i.dm = load i16, ptr %i.df, align 2, !tbaa !44
  %i.dn = zext i16 %i.dm to i32                   ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 4
  %i.dp = load i16, ptr %i.di, align 2, !tbaa !44
  %i.dq = zext i16 %i.dp to i32                   ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 2
  %i.ds = load i16, ptr %.023.i.i, align 2, !tbaa !44
  %i.dt = zext i16 %i.ds to i32
  %i.du = mul nuw i32 %i.dk, %i.dh
  %i.dv = mul nuw i32 %i.dq, %i.dn                ; 2 uses
  %i.dw = zext i32 %i.dv to i64
  %i.dx = mul nuw nsw i64 %i.dw, 5039
  %i.dy = lshr i64 %i.dx, 24
  %i.dz = trunc nuw nsw i64 %i.dy to i32
  %.neg.i.i.i = mul i32 %i.dz, 62207
  %i.ea = add i32 %.neg.i.i.i, %i.dv
  %i.eb = trunc i32 %i.ea to i16                  ; 2 uses
  %i.ec = add i16 %i.eb, -3329                    ; 2 uses
  %isneg.i.i.i.i = icmp slt i16 %i.ec, 0
  %i.ed = select i1 %isneg.i.i.i.i, i16 %i.eb, i16 0
  %i.ee = call i16 @llvm.smax.i16(i16 %i.ec, i16 0)
  %i.ef = or i16 %i.ed, %i.ee
  %i.eg = zext i16 %i.ef to i32
  %i.eh = mul nuw i32 %i.eg, %i.dt
  %i.ei = add i32 %i.eh, %i.du                    ; 2 uses
  %i.ej = zext i32 %i.ei to i64
  %i.ek = mul nuw nsw i64 %i.ej, 5039
  %i.el = lshr i64 %i.ek, 24
  %i.em = trunc nuw nsw i64 %i.el to i32
  %.neg.i24.i.i = mul i32 %i.em, 62207
  %i.en = add i32 %.neg.i24.i.i, %i.ei
  %i.eo = trunc i32 %i.en to i16                  ; 2 uses
  %i.ep = add i16 %i.eo, -3329                    ; 2 uses
  %isneg.i.i25.i.i = icmp slt i16 %i.ep, 0
  %i.eq = select i1 %isneg.i.i25.i.i, i16 %i.eo, i16 0
  %i.er = call i16 @llvm.smax.i16(i16 %i.ep, i16 0)
  %i.es = or i16 %i.eq, %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %.0.ptr.i.i, i64 2
  store i16 %i.es, ptr %.0.ptr.i.i, align 2, !tbaa !44
  %i.eu = mul nuw i32 %i.dq, %i.dh
  %i.ev = mul nuw i32 %i.dn, %i.dk
  %i.ew = add i32 %i.eu, %i.ev                    ; 2 uses
  %i.ex = zext i32 %i.ew to i64
  %i.ey = mul nuw nsw i64 %i.ex, 5039
  %i.ez = lshr i64 %i.ey, 24
  %i.fa = trunc nuw nsw i64 %i.ez to i32
  %.neg.i26.i.i = mul i32 %i.fa, 62207
  %i.fb = add i32 %.neg.i26.i.i, %i.ew
  %i.fc = trunc i32 %i.fb to i16                  ; 2 uses
  %i.fd = add i16 %i.fc, -3329                    ; 2 uses
  %isneg.i.i27.i.i = icmp slt i16 %i.fd, 0
  %i.fe = select i1 %isneg.i.i27.i.i, i16 %i.fc, i16 0
  %i.ff = call i16 @llvm.smax.i16(i16 %i.fd, i16 0)
  %i.fg = or i16 %i.fe, %i.ff
  %.0.add.i.i = add nuw nsw i64 %.0.idx.i.i, 4
  store i16 %i.fg, ptr %i.et, align 2, !tbaa !44
  %i.fh = icmp samesign ult i64 %.0.idx.i.i, 508
  br i1 %i.fh, label %scalar.ph234, label %scalar_mult.exit.preheader.i, !llvm.loop !134

scalar_mult.exit.preheader.i:                     ; preds = %vector.body272, %scalar.ph234
  %i.fi = add nsw i32 %.in.i, -1
  %.121.i = getelementptr i8, ptr %.01525.i, i64 512 ; 3 uses
  br i1 %.not.i50, label %scalar_mult.exit._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %scalar_mult.exit.preheader.i
  %i.fj = insertelement <2 x ptr> poison, ptr %scevgep144, i64 0
  %i.fk = insertelement <2 x ptr> %i.fj, ptr %.01525.i, i64 1
  %i.fl = getelementptr i8, <2 x ptr> %i.fk, <2 x i64> <i64 0, i64 512>
  %scevgep142 = getelementptr i8, ptr %.01525.i, i64 %i.ag ; 2 uses
  %i.fm = insertelement <4 x ptr> poison, ptr %.01426.i, i64 0
  %i.fn = shufflevector <4 x ptr> %i.fm, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.fo = insertelement <4 x ptr> poison, ptr %scevgep143, i64 0 ; 2 uses
  %i.fp = insertelement <4 x ptr> %i.fo, ptr %scevgep142, i64 1
  %i.fq = insertelement <4 x ptr> %i.fp, ptr %scevgep140, i64 2
  %i.fr = insertelement <4 x ptr> %i.fq, ptr %scevgep, i64 3
  %i.fs = insertelement <4 x ptr> poison, ptr %scevgep145, i64 0
  %i.ft = shufflevector <4 x ptr> %i.fs, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.fu = insertelement <4 x ptr> poison, ptr %scevgep144, i64 0
  %i.fv = shufflevector <4 x ptr> %i.fu, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.fw = insertelement <4 x ptr> %i.au, ptr %scevgep142, i64 0
  %i.fx = insertelement <4 x ptr> poison, ptr %.121.i, i64 0
  %i.fy = shufflevector <4 x ptr> %i.fo, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.fz = shufflevector <2 x ptr> %i.fl, <2 x ptr> %i.ai, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ga = shufflevector <4 x ptr> %i.fx, <4 x ptr> %i.av, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.gb = icmp ult <4 x ptr> %i.fn, %i.fr
  %i.gc = icmp ult <4 x ptr> %i.fz, %i.ft
  %i.gd = and <4 x i1> %i.gb, %i.gc
  %bound0157 = icmp ult ptr %.01426.i, getelementptr inbounds nuw (i8, ptr @kModRoots, i64 256)
  %bound1158 = icmp ugt ptr %scevgep145, @kModRoots
  %found.conflict159 = and i1 %bound0157, %bound1158
  %i.ge = icmp ult <4 x ptr> %i.fv, %i.fw
  %i.gf = insertelement <4 x ptr> %i.ga, ptr @kModRoots, i64 3
  %i.gg = icmp ult <4 x ptr> %i.gf, %i.fy
  %i.gh = and <4 x i1> %i.ge, %i.gg
  %rdx.op = or <4 x i1> %i.gd, %i.gh
  %i.gi = bitcast <4 x i1> %rdx.op to i4
  %i.gj = icmp ne i4 %i.gi, 0
  %op.rdx = or i1 %i.gj, %found.conflict159
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %scalar_mult_add.exit.i
  %.124.i = phi ptr [ %.1.i, %scalar_mult_add.exit.i ], [ %.121.i, %.lr.ph.i.preheader ] ; 3 uses
  %.0.in23.i = phi i32 [ %.0.i51, %scalar_mult_add.exit.i ], [ %i.l, %.lr.ph.i.preheader ] ; 2 uses
  %.01322.i = phi ptr [ %i.gk, %scalar_mult_add.exit.i ], [ %3, %.lr.ph.i.preheader ]
  %i.gk = getelementptr inbounds nuw i8, ptr %.01322.i, i64 512 ; 3 uses
  br i1 %op.rdx, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.gl = shl i64 %index, 1
end_hunk_1
begin_hunk_2_@encrypt_cpa:bb.a
  %i.hx = mul nuw nsw <4 x i64> %i.hw, splat (i64 5039)
  %i.hy = lshr <4 x i64> %i.hx, splat (i64 24)
  %i.hz = trunc nuw nsw <4 x i64> %i.hy to <4 x i32>
  %i.ia = mul <4 x i32> %i.hz, splat (i32 62207)
  %i.ib = add <4 x i32> %i.ia, %i.hv
  %i.ic = trunc <4 x i32> %i.ib to <4 x i16>      ; 2 uses
  %i.id = add <4 x i16> %i.ic, splat (i16 -3329)  ; 2 uses
  %i.ie = icmp slt <4 x i16> %i.id, zeroinitializer
  %i.if = select <4 x i1> %i.ie, <4 x i16> %i.ic, <4 x i16> zeroinitializer
  %i.ig = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.id, <4 x i16> zeroinitializer)
  %i.ih = or <4 x i16> %i.if, %i.ig
  %i.ii = mul nuw <4 x i32> %i.gx, %i.gr
  %i.ij = mul nuw <4 x i32> %i.gs, %i.gw
  %i.ik = add <4 x i32> %i.ii, %i.ij
  %i.il = add <4 x i32> %i.ik, %i.hd              ; 2 uses
  %i.im = zext <4 x i32> %i.il to <4 x i64>
  %i.in = mul nuw nsw <4 x i64> %i.im, splat (i64 5039)
  %i.io = lshr <4 x i64> %i.in, splat (i64 24)
  %i.ip = trunc nuw nsw <4 x i64> %i.io to <4 x i32>
  %i.iq = mul <4 x i32> %i.ip, splat (i32 62207)
  %i.ir = add <4 x i32> %i.iq, %i.il
  %i.is = trunc <4 x i32> %i.ir to <4 x i16>      ; 2 uses
  %i.it = add <4 x i16> %i.is, splat (i16 -3329)  ; 2 uses
  %i.iu = icmp slt <4 x i16> %i.it, zeroinitializer
  %i.iv = select <4 x i1> %i.iu, <4 x i16> %i.is, <4 x i16> zeroinitializer
  %i.iw = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.it, <4 x i16> zeroinitializer)
  %i.ix = or <4 x i16> %i.iv, %i.iw
  %interleaved.vec = shufflevector <4 x i16> %i.ih, <4 x i16> %i.ix, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %i.gn, align 2, !tbaa !44
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.iy = icmp eq i64 %index.next, 128
  br i1 %i.iy, label %scalar_mult_add.exit.i, label %vector.body, !llvm.loop !138

scalar.ph:                                        ; preds = %.lr.ph.i, %scalar.ph
  %.027.i.i = phi ptr [ %i.jm, %scalar.ph ], [ @kModRoots, %.lr.ph.i ] ; 2 uses
  %.026.i.i = phi ptr [ %i.ji, %scalar.ph ], [ %i.gk, %.lr.ph.i ] ; 3 uses
  %.025.i.i = phi ptr [ %i.jf, %scalar.ph ], [ %.124.i, %.lr.ph.i ] ; 3 uses
  %.0.idx.i16.i = phi i64 [ %.0.add.i18.i, %scalar.ph ], [ 0, %.lr.ph.i ] ; 3 uses
  %.0.ptr.i17.i = getelementptr inbounds nuw i8, ptr %.01426.i, i64 %.0.idx.i16.i ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 2
  %i.ja = load i16, ptr %.025.i.i, align 2, !tbaa !44
  %i.jb = zext i16 %i.ja to i32                   ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 2
  %i.jd = load i16, ptr %.026.i.i, align 2, !tbaa !44
  %i.je = zext i16 %i.jd to i32                   ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 4
  %i.jg = load i16, ptr %i.iz, align 2, !tbaa !44
  %i.jh = zext i16 %i.jg to i32                   ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 4
  %i.jj = load i16, ptr %i.jc, align 2, !tbaa !44
  %i.jk = zext i16 %i.jj to i32                   ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.0.ptr.i17.i, i64 2 ; 2 uses
  %.0.add.i18.i = add nuw nsw i64 %.0.idx.i16.i, 4
  %i.jm = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 2
  %i.jn = load i16, ptr %.027.i.i, align 2, !tbaa !44
  %i.jo = zext i16 %i.jn to i32
  %i.jp = load i16, ptr %.0.ptr.i17.i, align 2, !tbaa !44
  %i.jq = zext i16 %i.jp to i32
  %i.jr = mul nuw i32 %i.je, %i.jb
  %i.js = add nuw i32 %i.jr, %i.jq
  %i.jt = mul nuw i32 %i.jk, %i.jh                ; 2 uses
  %i.ju = zext i32 %i.jt to i64
  %i.jv = mul nuw nsw i64 %i.ju, 5039
  %i.jw = lshr i64 %i.jv, 24
  %i.jx = trunc nuw nsw i64 %i.jw to i32
  %.neg.i.i19.i = mul i32 %i.jx, 62207
  %i.jy = add i32 %.neg.i.i19.i, %i.jt
  %i.jz = trunc i32 %i.jy to i16                  ; 2 uses
  %i.ka = add i16 %i.jz, -3329                    ; 2 uses
  %isneg.i.i.i20.i = icmp slt i16 %i.ka, 0
  %i.kb = select i1 %isneg.i.i.i20.i, i16 %i.jz, i16 0
  %i.kc = call i16 @llvm.smax.i16(i16 %i.ka, i16 0)
  %i.kd = or i16 %i.kb, %i.kc
  %i.ke = zext i16 %i.kd to i32
  %i.kf = mul nuw i32 %i.ke, %i.jo
  %i.kg = add i32 %i.js, %i.kf                    ; 2 uses
  %i.kh = zext i32 %i.kg to i64
  %i.ki = mul nuw nsw i64 %i.kh, 5039
  %i.kj = lshr i64 %i.ki, 24
  %i.kk = trunc nuw nsw i64 %i.kj to i32
  %.neg.i28.i.i = mul i32 %i.kk, 62207
  %i.kl = add i32 %.neg.i28.i.i, %i.kg
  %i.km = trunc i32 %i.kl to i16                  ; 2 uses
  %i.kn = add i16 %i.km, -3329                    ; 2 uses
  %isneg.i.i29.i.i = icmp slt i16 %i.kn, 0
  %i.ko = select i1 %isneg.i.i29.i.i, i16 %i.km, i16 0
  %i.kp = call i16 @llvm.smax.i16(i16 %i.kn, i16 0)
  %i.kq = or i16 %i.ko, %i.kp
  store i16 %i.kq, ptr %.0.ptr.i17.i, align 2, !tbaa !44
  %i.kr = load i16, ptr %i.jl, align 2, !tbaa !44
  %i.ks = zext i16 %i.kr to i32
  %i.kt = mul nuw i32 %i.jk, %i.jb
  %i.ku = mul nuw i32 %i.jh, %i.je
  %i.kv = add i32 %i.kt, %i.ku
  %i.kw = add i32 %i.kv, %i.ks                    ; 2 uses
  %i.kx = zext i32 %i.kw to i64
  %i.ky = mul nuw nsw i64 %i.kx, 5039
  %i.kz = lshr i64 %i.ky, 24
  %i.la = trunc nuw nsw i64 %i.kz to i32
  %.neg.i30.i.i = mul i32 %i.la, 62207
  %i.lb = add i32 %.neg.i30.i.i, %i.kw
  %i.lc = trunc i32 %i.lb to i16                  ; 2 uses
  %i.ld = add i16 %i.lc, -3329                    ; 2 uses
  %isneg.i.i31.i.i = icmp slt i16 %i.ld, 0
  %i.le = select i1 %isneg.i.i31.i.i, i16 %i.lc, i16 0
  %i.lf = call i16 @llvm.smax.i16(i16 %i.ld, i16 0)
  %i.lg = or i16 %i.le, %i.lf
  store i16 %i.lg, ptr %i.jl, align 2, !tbaa !44
  %i.lh = icmp samesign ult i64 %.0.idx.i16.i, 508
  br i1 %i.lh, label %scalar.ph, label %scalar_mult_add.exit.i, !llvm.loop !139

scalar_mult_add.exit.i:                           ; preds = %vector.body, %scalar.ph
  %.0.i51 = add nsw i32 %.0.in23.i, -1
  %.1.i = getelementptr inbounds nuw i8, ptr %.124.i, i64 512 ; 2 uses
  %i.li = icmp sgt i32 %.0.in23.i, 2
  br i1 %i.li, label %.lr.ph.i, label %scalar_mult.exit._crit_edge.i, !llvm.loop !140

scalar_mult.exit._crit_edge.i:                    ; preds = %scalar_mult_add.exit.i, %scalar_mult.exit.preheader.i
  %.1.lcssa.i = phi ptr [ %.121.i, %scalar_mult.exit.preheader.i ], [ %.1.i, %scalar_mult_add.exit.i ]
  call fastcc void @scalar_inverse_ntt(ptr noundef %.01426.i)
  %i.lj = getelementptr i8, ptr %.01426.i, i64 512
  %i.lk = icmp sgt i32 %.in.i, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.lk, label %.preheader.i, label %matrix_mult_intt.exit, !llvm.loop !141

matrix_mult_intt.exit:                            ; preds = %scalar_mult.exit._crit_edge.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(32) %2, i64 32, i1 false)
  %i.ll = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.lm = getelementptr i8, ptr %5, i64 24        ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %middle.block294, %matrix_mult_intt.exit
  %.1 = phi i8 [ %i.u, %matrix_mult_intt.exit ], [ %i.ln, %middle.block294 ] ; 2 uses
  %.08.i52 = phi i32 [ %i.l, %matrix_mult_intt.exit ], [ %i.my, %middle.block294 ] ; 2 uses
  %.07.i = phi ptr [ %3, %matrix_mult_intt.exit ], [ %i.mx, %middle.block294 ] ; 2 uses
  %i.ln = add i8 %.1, 1                           ; 2 uses
  store i8 %.1, ptr %i.ll, align 16, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %.val.i.i = load ptr, ptr %i.lm, align 8, !tbaa !31
  %i.lo = call fastcc i32 @prf(ptr noundef %i.b, i64 noundef 128, ptr noundef nonnull %i.c, ptr noundef nonnull %4, ptr %.val.i.i)
  %.not.i.i = icmp eq i32 %i.lo, 0
  br i1 %.not.i.i, label %gencbd_vector.exit.thread, label %vector.body289

vector.body289:                                   ; preds = %bb.e, %vector.body289
  %index290 = phi i64 [ %index.next293, %vector.body289 ], [ 0, %bb.e ] ; 3 uses
  %i.lp = shl nuw i64 %index290, 2
  %i.lq = getelementptr inbounds nuw i8, ptr %i.b, i64 %index290
  %i.lr = getelementptr inbounds nuw i8, ptr %.07.i, i64 %i.lp
  %wide.load291 = load <4 x i8>, ptr %i.lq, align 4, !tbaa !47
  %i.ls = zext <4 x i8> %wide.load291 to <4 x i32> ; 8 uses
  %i.lt = and <4 x i32> %i.ls, splat (i32 1)
  %i.lu = lshr <4 x i32> %i.ls, splat (i32 1)
  %i.lv = and <4 x i32> %i.lu, splat (i32 1)
  %i.lw = shl <4 x i32> %i.ls, splat (i32 29)
  %i.lx = ashr <4 x i32> %i.lw, splat (i32 31)
  %i.ly = shl <4 x i32> %i.ls, splat (i32 28)
  %i.lz = ashr <4 x i32> %i.ly, splat (i32 31)
  %i.ma = add nuw nsw <4 x i32> %i.lv, %i.lt
  %i.mb = add nsw <4 x i32> %i.ma, %i.lz
  %i.mc = add nsw <4 x i32> %i.mb, %i.lx          ; 2 uses
  %i.md = and <4 x i32> %i.mc, splat (i32 32768)
  %i.me = icmp eq <4 x i32> %i.md, zeroinitializer
  %i.mf = select <4 x i1> %i.me, <4 x i32> zeroinitializer, <4 x i32> splat (i32 3329)
  %i.mg = add nsw <4 x i32> %i.mf, %i.mc
  %i.mh = lshr <4 x i32> %i.ls, splat (i32 4)
  %i.mi = and <4 x i32> %i.mh, splat (i32 1)
  %i.mj = lshr <4 x i32> %i.ls, splat (i32 5)
  %i.mk = and <4 x i32> %i.mj, splat (i32 1)
  %i.ml = shl <4 x i32> %i.ls, splat (i32 25)
  %i.mm = ashr <4 x i32> %i.ml, splat (i32 31)
  %i.mn = lshr <4 x i32> %i.ls, splat (i32 7)
  %i.mo = sub nsw <4 x i32> %i.mk, %i.mn
  %i.mp = add nsw <4 x i32> %i.mo, %i.mi
  %i.mq = add nsw <4 x i32> %i.mp, %i.mm          ; 2 uses
  %i.mr = and <4 x i32> %i.mq, splat (i32 32768)
  %i.ms = icmp eq <4 x i32> %i.mr, zeroinitializer
  %i.mt = select <4 x i1> %i.ms, <4 x i32> zeroinitializer, <4 x i32> splat (i32 3329)
  %i.mu = add nsw <4 x i32> %i.mt, %i.mq
  %i.mv = shufflevector <4 x i32> %i.mg, <4 x i32> %i.mu, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec292 = trunc nsw <8 x i32> %i.mv to <8 x i16>
  store <8 x i16> %interleaved.vec292, ptr %i.lr, align 2, !tbaa !44
  %index.next293 = add nuw i64 %index290, 4       ; 2 uses
  %i.mw = icmp eq i64 %index.next293, 128
  br i1 %i.mw, label %middle.block294, label %vector.body289, !llvm.loop !142

gencbd_vector.exit.thread:                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %scalar_encode.exit

middle.block294:                                  ; preds = %vector.body289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.mx = getelementptr inbounds nuw i8, ptr %.07.i, i64 512
  %i.my = add nsw i32 %.08.i52, -1
  %i.mz = icmp sgt i32 %.08.i52, 1
  br i1 %i.mz, label %bb.e, label %bb.f, !llvm.loop !143

bb.f:                                             ; preds = %middle.block294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %smin302 = call i32 @llvm.smin.i32(i32 %i.l, i32 1)
  %11 = sub i32 %i.l, %smin302
  %12 = zext i32 %11 to i64                       ; 2 uses
  %13 = shl nuw nsw i64 %12, 9
  %14 = getelementptr i8, ptr %3, i64 %13
  %scevgep303 = getelementptr i8, ptr %14, i64 512
  %15 = add nsw i64 %i.m, %12
  %i.na = shl nsw i64 %15, 9
  %i.nb = getelementptr i8, ptr %3, i64 %i.na
  %scevgep304 = getelementptr i8, ptr %i.nb, i64 512
  %bound0307 = icmp ult ptr %i.n, %scevgep303
  %bound1308 = icmp ult ptr %3, %scevgep304
  %found.conflict309 = and i1 %bound0307, %bound1308
  br label %vector.memcheck306

vector.memcheck306:                               ; preds = %bb.f, %scalar_add.exit.i
  %.03.i = phi ptr [ %i.n, %bb.f ], [ %i.ol, %scalar_add.exit.i ] ; 4 uses
  %.02.i = phi ptr [ %3, %bb.f ], [ %i.om, %scalar_add.exit.i ] ; 4 uses
  %.0.i57 = phi i32 [ %i.l, %bb.f ], [ %i.on, %scalar_add.exit.i ] ; 2 uses
  br i1 %found.conflict309, label %scalar.ph305, label %vector.body311

vector.body311:                                   ; preds = %vector.memcheck306, %vector.body311
  %index312 = phi i64 [ %index.next317, %vector.body311 ], [ 0, %vector.memcheck306 ] ; 3 uses
  %i.nc = getelementptr inbounds nuw [2 x i8], ptr %.03.i, i64 %index312 ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 16 ; 2 uses
  %wide.load313 = load <8 x i16>, ptr %i.nc, align 2, !tbaa !44, !alias.scope !160, !noalias !161
  %wide.load314 = load <8 x i16>, ptr %i.nd, align 2, !tbaa !44, !alias.scope !160, !noalias !161
  %i.ne = getelementptr inbounds nuw [2 x i8], ptr %.02.i, i64 %index312 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  %wide.load315 = load <8 x i16>, ptr %i.ne, align 2, !tbaa !44, !alias.scope !161
  %wide.load316 = load <8 x i16>, ptr %i.nf, align 2, !tbaa !44, !alias.scope !161
  %i.ng = add <8 x i16> %wide.load315, %wide.load313 ; 2 uses
  %i.nh = add <8 x i16> %wide.load316, %wide.load314 ; 2 uses
  %i.ni = add <8 x i16> %i.ng, splat (i16 -3329)  ; 2 uses
  %i.nj = add <8 x i16> %i.nh, splat (i16 -3329)  ; 2 uses
  %i.nk = icmp slt <8 x i16> %i.ni, zeroinitializer
  %i.nl = icmp slt <8 x i16> %i.nj, zeroinitializer
  %i.nm = select <8 x i1> %i.nk, <8 x i16> %i.ng, <8 x i16> zeroinitializer
  %i.nn = select <8 x i1> %i.nl, <8 x i16> %i.nh, <8 x i16> zeroinitializer
  %i.no = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ni, <8 x i16> zeroinitializer)
  %i.np = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.nj, <8 x i16> zeroinitializer)
  %i.nq = or <8 x i16> %i.nm, %i.no
  %i.nr = or <8 x i16> %i.nn, %i.np
  store <8 x i16> %i.nq, ptr %i.nc, align 2, !tbaa !44, !alias.scope !160, !noalias !161
  store <8 x i16> %i.nr, ptr %i.nd, align 2, !tbaa !44, !alias.scope !160, !noalias !161
  %index.next317 = add nuw i64 %index312, 16      ; 2 uses
  %i.ns = icmp eq i64 %index.next317, 256
  br i1 %i.ns, label %scalar_add.exit.i, label %vector.body311, !llvm.loop !147

scalar.ph305:                                     ; preds = %vector.memcheck306, %scalar.ph305
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %scalar.ph305 ], [ 0, %vector.memcheck306 ] ; 4 uses
  %i.nt = getelementptr inbounds nuw [2 x i8], ptr %.03.i, i64 %indvars.iv.i.i ; 2 uses
  %i.nu = load i16, ptr %i.nt, align 2, !tbaa !44
  %i.nv = getelementptr inbounds nuw [2 x i8], ptr %.02.i, i64 %indvars.iv.i.i
  %i.nw = load i16, ptr %i.nv, align 2, !tbaa !44
  %i.nx = add i16 %i.nw, %i.nu                    ; 2 uses
  %i.ny = add i16 %i.nx, -3329                    ; 2 uses
  %isneg.i.i.i = icmp slt i16 %i.ny, 0
  %i.nz = select i1 %isneg.i.i.i, i16 %i.nx, i16 0
  %i.oa = call i16 @llvm.smax.i16(i16 %i.ny, i16 0)
  %i.ob = or i16 %i.nz, %i.oa
  store i16 %i.ob, ptr %i.nt, align 2, !tbaa !44
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.oc = getelementptr inbounds nuw [2 x i8], ptr %.03.i, i64 %indvars.iv.next.i.i ; 2 uses
  %i.od = load i16, ptr %i.oc, align 2, !tbaa !44
  %i.oe = getelementptr inbounds nuw [2 x i8], ptr %.02.i, i64 %indvars.iv.next.i.i
  %i.of = load i16, ptr %i.oe, align 2, !tbaa !44
  %i.og = add i16 %i.of, %i.od                    ; 2 uses
  %i.oh = add i16 %i.og, -3329                    ; 2 uses
  %isneg.i.i.i.1 = icmp slt i16 %i.oh, 0
  %i.oi = select i1 %isneg.i.i.i.1, i16 %i.og, i16 0
  %i.oj = call i16 @llvm.smax.i16(i16 %i.oh, i16 0)
  %i.ok = or i16 %i.oi, %i.oj
  store i16 %i.ok, ptr %i.oc, align 2, !tbaa !44
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i58.1 = icmp eq i64 %indvars.iv.next.i.i.1, 256
  br i1 %exitcond.not.i.i58.1, label %scalar_add.exit.i, label %scalar.ph305, !llvm.loop !148

scalar_add.exit.i:                                ; preds = %vector.body311, %scalar.ph305
  %i.ol = getelementptr inbounds nuw i8, ptr %.03.i, i64 512
  %i.om = getelementptr inbounds nuw i8, ptr %.02.i, i64 512
  %i.on = add nsw i32 %.0.i57, -1
  %i.oo = icmp sgt i32 %.0.i57, 1
  br i1 %i.oo, label %vector.memcheck306, label %vector_add.exit, !llvm.loop !149

vector_add.exit:                                  ; preds = %scalar_add.exit.i
  %notmask.i.i.i = shl nsw i32 -1, %i.p
  %i.op = xor i32 %notmask.i.i.i, -1
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.p, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert321 = insertelement <8 x i32> poison, i32 %i.op, i64 0
  %broadcast.splat322 = shufflevector <8 x i32> %broadcast.splatinsert321, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.ph320

vector.ph320:                                     ; preds = %vector_add.exit, %scalar_compress.exit.i
  %.02.i59 = phi ptr [ %i.n, %vector_add.exit ], [ %i.pk, %scalar_compress.exit.i ] ; 2 uses
  %.0.i60 = phi i32 [ %i.l, %vector_add.exit ], [ %i.pl, %scalar_compress.exit.i ] ; 2 uses
  br label %vector.body323

vector.body323:                                   ; preds = %vector.body323, %vector.ph320
  %index324 = phi i64 [ 0, %vector.ph320 ], [ %index.next326, %vector.body323 ] ; 2 uses
  %i.oq = getelementptr inbounds nuw [2 x i8], ptr %.02.i59, i64 %index324 ; 2 uses
  %wide.load325 = load <8 x i16>, ptr %i.oq, align 2, !tbaa !44
  %i.or = zext <8 x i16> %wide.load325 to <8 x i32>
  %i.os = shl <8 x i32> %i.or, %broadcast.splat   ; 2 uses
  %i.ot = zext <8 x i32> %i.os to <8 x i64>
  %i.ou = mul nuw nsw <8 x i64> %i.ot, splat (i64 5039)
  %i.ov = lshr <8 x i64> %i.ou, splat (i64 24)
  %i.ow = trunc nuw nsw <8 x i64> %i.ov to <8 x i32> ; 2 uses
  %i.ox = mul <8 x i32> %i.ow, splat (i32 -3329)
  %i.oy = add <8 x i32> %i.ox, %i.os              ; 4 uses
  %i.oz = sub <8 x i32> splat (i32 1664), %i.oy
  %i.pa = or <8 x i32> %i.oz, %i.oy
  %i.pb = lshr <8 x i32> %i.pa, splat (i32 31)
  %i.pc = add nuw nsw <8 x i32> %i.pb, %i.ow
  %i.pd = sub <8 x i32> splat (i32 4993), %i.oy
  %i.pe = or <8 x i32> %i.pd, %i.oy
  %i.pf = lshr <8 x i32> %i.pe, splat (i32 31)
  %i.pg = add nuw nsw <8 x i32> %i.pc, %i.pf
  %i.ph = and <8 x i32> %i.pg, %broadcast.splat322
  %i.pi = trunc <8 x i32> %i.ph to <8 x i16>
  store <8 x i16> %i.pi, ptr %i.oq, align 2, !tbaa !44
  %index.next326 = add nuw i64 %index324, 8       ; 2 uses
  %i.pj = icmp eq i64 %index.next326, 256
  br i1 %i.pj, label %scalar_compress.exit.i, label %vector.body323, !llvm.loop !150

scalar_compress.exit.i:                           ; preds = %vector.body323
  %i.pk = getelementptr inbounds nuw i8, ptr %.02.i59, i64 512
  %i.pl = add nsw i32 %.0.i60, -1
  %i.pm = icmp sgt i32 %.0.i60, 1
  br i1 %i.pm, label %vector.ph320, label %vector_compress.exit, !llvm.loop !151

vector_compress.exit:                             ; preds = %scalar_compress.exit.i
  br i1 %i.aa, label %.lr.ph.i65, label %vector_encode.exit

.lr.ph.i65:                                       ; preds = %vector_compress.exit
  %i.pn = shl nsw i32 %i.p, 5
  %i.po = sext i32 %i.pn to i64
  br label %bb.g

bb.g:                                             ; preds = %scalar_encode.exit.i, %.lr.ph.i65
  %.010.i = phi i32 [ %i.l, %.lr.ph.i65 ], [ %i.qf, %scalar_encode.exit.i ] ; 2 uses
  %.069.i = phi ptr [ %0, %.lr.ph.i65 ], [ %i.qh, %scalar_encode.exit.i ] ; 2 uses
  %.078.i = phi ptr [ %i.n, %.lr.ph.i65 ], [ %i.qg, %scalar_encode.exit.i ] ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %bb.g
  %.028.i.i = phi ptr [ %.069.i, %bb.g ], [ %.129.i.i, %bb.l ] ; 3 uses
  %.027.idx.i.i = phi i64 [ 0, %bb.g ], [ %.027.add.i.i, %bb.l ] ; 3 uses
  %.025.i.i66 = phi i64 [ 0, %bb.g ], [ %.126.i.i, %bb.l ] ; 2 uses
  %.0.i.i = phi i32 [ 0, %bb.g ], [ %.1.i.i, %bb.l ] ; 4 uses
  %.027.ptr.i.i = getelementptr inbounds nuw i8, ptr %.078.i, i64 %.027.idx.i.i
  %.027.add.i.i = add nuw nsw i64 %.027.idx.i.i, 2
  %i.pp = load i16, ptr %.027.ptr.i.i, align 2, !tbaa !44
  %i.pq = zext i16 %i.pp to i64                   ; 3 uses
  %i.pr = add nsw i32 %.0.i.i, %i.p               ; 4 uses
  %i.ps = icmp slt i32 %i.pr, 64
  br i1 %i.ps, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.pt = zext nneg i32 %.0.i.i to i64
  %i.pu = shl i64 %i.pq, %i.pt
  %i.pv = or i64 %i.pu, %.025.i.i66
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %.not.i.i67 = icmp eq i32 %i.pr, 64
  %i.pw = zext nneg i32 %.0.i.i to i64
  %i.px = shl i64 %i.pq, %i.pw
  %i.py = or i64 %i.px, %.025.i.i66
  store i64 %i.py, ptr %.028.i.i, align 1
  %i.pz = getelementptr inbounds nuw i8, ptr %.028.i.i, i64 8 ; 2 uses
  br i1 %.not.i.i67, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.qa = sub nsw i32 64, %.0.i.i
  %i.qb = zext nneg i32 %i.qa to i64
  %i.qc = lshr i64 %i.pq, %i.qb
  %i.qd = add nsw i32 %i.pr, -64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.129.i.i = phi ptr [ %.028.i.i, %bb.i ], [ %i.pz, %bb.k ], [ %i.pz, %bb.j ]
  %.126.i.i = phi i64 [ %i.pv, %bb.i ], [ %i.qc, %bb.k ], [ 0, %bb.j ]
  %.1.i.i = phi i32 [ %i.pr, %bb.i ], [ %i.qd, %bb.k ], [ 0, %bb.j ]
  %i.qe = icmp samesign ult i64 %.027.idx.i.i, 510
  br i1 %i.qe, label %bb.h, label %scalar_encode.exit.i, !llvm.loop !0

scalar_encode.exit.i:                             ; preds = %bb.l
  %i.qf = add nsw i32 %.010.i, -1
  %i.qg = getelementptr inbounds nuw i8, ptr %.078.i, i64 512
  %i.qh = getelementptr inbounds i8, ptr %.069.i, i64 %i.po
  %i.qi = icmp sgt i32 %.010.i, 1
  br i1 %i.qi, label %bb.g, label %vector_encode.exit, !llvm.loop !1

vector_encode.exit:                               ; preds = %scalar_encode.exit.i, %vector_compress.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.e, ptr noundef nonnull align 1 dereferenceable(32) %2, i64 32, i1 false)
  %i.qj = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i8 %i.ln, ptr %i.qj, align 16, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %.val.i = load ptr, ptr %i.lm, align 8, !tbaa !31
  %i.qk = call fastcc i32 @prf(ptr noundef %i.a, i64 noundef 128, ptr noundef nonnull %i.e, ptr noundef nonnull %4, ptr %.val.i)
  %.not.i68 = icmp eq i32 %i.qk, 0
  br i1 %.not.i68, label %cbd_2.exit.thread, label %vector.body330

vector.body330:                                   ; preds = %vector_encode.exit, %vector.body330
  %index331 = phi i64 [ %index.next334, %vector.body330 ], [ 0, %vector_encode.exit ] ; 3 uses
  %i.ql = shl nuw i64 %index331, 2
end_hunk_2
