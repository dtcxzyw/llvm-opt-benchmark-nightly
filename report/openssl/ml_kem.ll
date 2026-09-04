Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/ml_kem?download=true
inline.NumInlined: 101
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@decap:bb.a
bb.y:                                             ; preds = %hash_kr.exit
  %i.nw = call fastcc i32 @encrypt_cpa(ptr noundef %2, ptr noundef %.ptr, ptr noundef %i.d, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5)
  %.not41 = icmp eq i32 %i.nw, 0
  br i1 %.not41, label %bb.z, label %.loopexit.loopexit

bb.z:                                             ; preds = %hash_kr.exit.thread, %bb.y, %hash_kr.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %i.b, i64 32, i1 false)
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.y
  %i.nx = load i64, ptr %i.h, align 8, !tbaa !53
  %i.ny = call i32 @CRYPTO_memcmp(ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef %i.nx) #11
  %i.nz = icmp eq i32 %i.ny, 0
  %i.oa = select i1 %i.nz, i32 255, i32 0         ; 2 uses
  %i.ob = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.oa) #12, !srcloc !93 ; 2 uses
  %i.oc = xor i32 %i.oa, -1
  %i.od = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -256, 256) %i.oc) #12, !srcloc !93 ; 2 uses
  %i.oe = load <16 x i8>, ptr %i.c, align 16, !tbaa !47
  %i.of = load <16 x i8>, ptr %i.b, align 16, !tbaa !47
  %i.og = trunc i32 %i.ob to i8
  %i.oh = insertelement <16 x i8> poison, i8 %i.og, i64 0
  %i.oi = shufflevector <16 x i8> %i.oh, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.oj = and <16 x i8> %i.oi, %i.oe
  %i.ok = trunc i32 %i.od to i8
  %i.ol = insertelement <16 x i8> poison, i8 %i.ok, i64 0
  %i.om = shufflevector <16 x i8> %i.ol, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.on = and <16 x i8> %i.om, %i.of
  %i.oo = or <16 x i8> %i.on, %i.oj
  store <16 x i8> %i.oo, ptr %0, align 1, !tbaa !47
  %i.op = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.oq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.os = load <16 x i8>, ptr %i.op, align 16, !tbaa !47
  %i.ot = load <16 x i8>, ptr %i.oq, align 16, !tbaa !47
  %i.ou = trunc i32 %i.ob to i8
  %i.ov = insertelement <16 x i8> poison, i8 %i.ou, i64 0
  %i.ow = shufflevector <16 x i8> %i.ov, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ox = and <16 x i8> %i.ow, %i.os
  %i.oy = trunc i32 %i.od to i8
  %i.oz = insertelement <16 x i8> poison, i8 %i.oy, i64 0
  %i.pa = shufflevector <16 x i8> %i.oz, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.pb = and <16 x i8> %i.pa, %i.ot
  %i.pc = or <16 x i8> %i.pb, %i.ox
  store <16 x i8> %i.pc, ptr %i.or, align 1, !tbaa !47
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.z
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef 128) #11
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit, %kdf.exit.thread
  %.039 = phi i32 [ 1, %.loopexit ], [ 0, %kdf.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  ret i32 %.039
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @ossl_ml_kem_pubkey_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %.not = icmp eq ptr %i.b, null                  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !26
  %i.c = icmp eq ptr %.pre, null                  ; 2 uses
  %brmerge = select i1 %.not, i1 true, i1 %i.c
  br i1 %brmerge, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39   ; 2 uses
  %i.h = load i128, ptr %i.e, align 1
  %i.i = load i128, ptr %i.g, align 1
  %i.j = xor i128 %i.h, %i.i
  %i.k = getelementptr i8, ptr %i.e, i64 16
  %i.l = getelementptr i8, ptr %i.g, i64 16
  %i.m = load i128, ptr %i.k, align 1
  %i.n = load i128, ptr %i.l, align 1
  %i.o = xor i128 %i.m, %i.n
  %i.p = or i128 %i.j, %i.o
  %i.q = icmp ne i128 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %i.s = icmp eq i32 %i.r, 0
  br label %bb.c

._crit_edge:                                      ; preds = %bb.a
  %not..not = xor i1 %.not, true
  %.mux = select i1 %not..not, i1 true, i1 %i.c
  %i.t = icmp ne ptr %i.b, null
  %i.u = xor i1 %i.t, %.mux
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.0.in = phi i1 [ %i.s, %bb.b ], [ %i.u, %._crit_edge ]
  %.0 = zext i1 %.0.in to i32
  ret i32 %.0
}

declare void @CRYPTO_secure_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @hash_h(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %3, ptr %.32.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = tail call i32 @EVP_DigestInit_ex(ptr noundef nonnull %3, ptr noundef %.32.val, ptr noundef null) #11
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 32, ptr %i.a, align 4, !tbaa !57
  %i.c = tail call i32 @EVP_DigestUpdate(ptr noundef nonnull %3, ptr noundef %1, i64 noundef %2) #11
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %single_keccak.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @EVP_MD_CTX_get0_md(ptr noundef nonnull %3) #11
  %i.e = tail call i32 @EVP_MD_xof(ptr noundef %i.d) #11
  %.not11.i = icmp eq i32 %i.e, 0
  br i1 %.not11.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @EVP_DigestFinalXOF(ptr noundef nonnull %3, ptr noundef %0, i64 noundef 32) #11
  %i.g = icmp ne i32 %i.f, 0
  br label %single_keccak.exit

bb.e:                                             ; preds = %bb.c
  %i.h = call i32 @EVP_DigestFinal_ex(ptr noundef nonnull %3, ptr noundef %0, ptr noundef nonnull %i.a) #11
  %.not12.i = icmp ne i32 %i.h, 0
  %i.i = load i32, ptr %i.a, align 4
  %i.j = icmp eq i32 %i.i, 32
  %narrow.i = select i1 %.not12.i, i1 %i.j, i1 false
  br label %single_keccak.exit

single_keccak.exit:                               ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i1 [ %i.g, %bb.d ], [ %narrow.i, %bb.e ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.k = zext i1 %.0.i to i32
  br label %bb.f

bb.f:                                             ; preds = %single_keccak.exit, %bb.a
  %i.l = phi i32 [ 0, %bb.a ], [ %i.k, %single_keccak.exit ]
  ret i32 %i.l
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @matrix_expand(ptr noundef nonnull %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [168 x i8], align 16              ; 5 uses
  %i.b = alloca [34 x i8], align 16               ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.e = load ptr, ptr %1, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load i32, ptr %i.f, align 8, !tbaa !37   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull align 1 dereferenceable(32) %i.i, i64 32, i1 false)
  %i.j = icmp sgt i32 %i.g, 0
  br i1 %i.j, label %.preheader.lr.ph, label %.loopexit25

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.01632 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.ap, %._crit_edge ] ; 2 uses
  %.01731 = phi ptr [ %i.d, %.preheader.lr.ph ], [ %i.an, %._crit_edge ]
  %i.n = trunc i32 %.01632 to i8
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %.loopexit
  %.030 = phi i32 [ 0, %.preheader ], [ %i.ao, %.loopexit ] ; 2 uses
  %.129 = phi ptr [ %.01731, %.preheader ], [ %i.an, %.loopexit ] ; 3 uses
  store i8 %i.n, ptr %i.k, align 16, !tbaa !47
  %i.o = trunc i32 %.030 to i8
  store i8 %i.o, ptr %i.l, align 1, !tbaa !47
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !30
  %i.q = call i32 @EVP_DigestInit_ex(ptr noundef nonnull %0, ptr noundef %i.p, ptr noundef null) #11
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %.loopexit25, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = call i32 @EVP_DigestUpdate(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 34) #11
  %.not20 = icmp eq i32 %i.r, 0
  br i1 %.not20, label %.loopexit25, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.l, %bb.d
  %.022.idx.i = phi i64 [ 0, %bb.d ], [ %.3.idx.i, %bb.l ]
  %i.s = call i32 @EVP_DigestSqueeze(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 168) #11
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %sample_scalar.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e, %bb.k
  %.1.idx.i = phi i64 [ %.3.idx.i, %bb.k ], [ %.022.idx.i, %bb.e ] ; 4 uses
  %.0.idx.i = phi i64 [ %.0.add.i, %bb.k ], [ 0, %bb.e ] ; 3 uses
  %.0.ptr.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.idx.i ; 3 uses
  %.1.ptr.i = getelementptr inbounds nuw i8, ptr %.129, i64 %.1.idx.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0.ptr.i, i64 2
  %.0.add.i = add nuw nsw i64 %.0.idx.i, 3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !47
  %.not26.i = icmp slt i64 %.1.idx.i, 512
  br i1 %.not26.i, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.preheader.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0.ptr.i, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !47
  %i.x = load i8, ptr %.0.ptr.i, align 1, !tbaa !47
  %i.y = zext i8 %i.w to i32                      ; 2 uses
  %i.z = shl nuw nsw i32 %i.y, 8
  %i.aa = and i32 %i.z, 3840
  %i.ab = zext i8 %i.x to i32
  %i.ac = or disjoint i32 %i.aa, %i.ab            ; 2 uses
  %i.ad = icmp samesign ult i32 %i.ac, 3329
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = trunc nuw nsw i32 %i.ac to i16
  %.1.add.i = add nuw nsw i64 %.1.idx.i, 2
  store i16 %i.ae, ptr %.1.ptr.i, align 2, !tbaa !44
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2.idx.i = phi i64 [ %.1.add.i, %bb.g ], [ %.1.idx.i, %bb.f ] ; 4 uses
  %.2.ptr.i = getelementptr inbounds nuw i8, ptr %.129, i64 %.2.idx.i
  %.not28.i = icmp samesign ult i64 %.2.idx.i, 512
  br i1 %.not28.i, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.af = zext i8 %i.u to i32
  %i.ag = shl nuw nsw i32 %i.af, 4
  %i.ah = lshr i32 %i.y, 4
  %i.ai = or disjoint i32 %i.ah, %i.ag            ; 2 uses
  %i.aj = icmp samesign ult i32 %i.ai, 3329
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = trunc nuw nsw i32 %i.ai to i16
  %.2.add.i = add nuw nsw i64 %.2.idx.i, 2
  store i16 %i.ak, ptr %.2.ptr.i, align 2, !tbaa !44
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.3.idx.i = phi i64 [ %.2.add.i, %bb.j ], [ %.2.idx.i, %bb.i ] ; 3 uses
  %i.al = icmp samesign ult i64 %.0.idx.i, 165
  br i1 %i.al, label %.preheader.i, label %bb.l, !llvm.loop !94

bb.l:                                             ; preds = %bb.k
  %i.am = icmp samesign ult i64 %.3.idx.i, 512
  br i1 %i.am, label %bb.e, label %.loopexit, !llvm.loop !95

sample_scalar.exit:                               ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.loopexit25

.loopexit:                                        ; preds = %bb.l, %bb.h, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.an = getelementptr inbounds nuw i8, ptr %.129, i64 512 ; 2 uses
  %i.ao = add nuw nsw i32 %.030, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ao, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !96

._crit_edge:                                      ; preds = %.loopexit
  %i.ap = add nuw nsw i32 %.01632, 1              ; 2 uses
  %exitcond35.not = icmp eq i32 %i.ap, %i.g
  br i1 %exitcond35.not, label %.loopexit25, label %.preheader, !llvm.loop !97

.loopexit25:                                      ; preds = %._crit_edge, %bb.b, %bb.c, %bb.a, %sample_scalar.exit
  %.018 = phi i32 [ 0, %bb.b ], [ 0, %sample_scalar.exit ], [ 1, %bb.a ], [ 0, %bb.c ], [ 1, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  ret i32 %.018
}

declare i32 @EVP_DigestInit_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @EVP_DigestUpdate(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @EVP_MD_xof(ptr noundef) local_unnamed_addr #1

declare ptr @EVP_MD_CTX_get0_md(ptr noundef) local_unnamed_addr #1

declare i32 @EVP_DigestFinalXOF(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @EVP_DigestFinal_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @EVP_DigestSqueeze(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @cbd_3(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [192 x i8], align 16              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = getelementptr i8, ptr %3, i64 24
  %.val = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.c = call fastcc i32 @prf(ptr noundef %i.a, i64 noundef 192, ptr noundef %1, ptr noundef %2, ptr %.val)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.loopexit, label %vector.body

vector.body:                                      ; preds = %bb.a, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %bb.a ] ; 3 uses
  %i.d = shl nuw i64 %index, 3
  %i.e = mul i64 %index, 3                        ; 8 uses
  %next.gep = getelementptr i8, ptr %i.a, i64 %i.e ; 3 uses
  %i.f = getelementptr i8, ptr %i.a, i64 %i.e     ; 3 uses
  %next.gep78 = getelementptr i8, ptr %i.f, i64 3
  %i.g = getelementptr i8, ptr %i.a, i64 %i.e     ; 3 uses
  %next.gep79 = getelementptr i8, ptr %i.g, i64 6
  %i.h = getelementptr i8, ptr %i.a, i64 %i.e     ; 3 uses
  %next.gep80 = getelementptr i8, ptr %i.h, i64 9
  %i.i = getelementptr i8, ptr %i.a, i64 %i.e     ; 3 uses
  %next.gep81 = getelementptr i8, ptr %i.i, i64 12
  %i.j = getelementptr i8, ptr %i.a, i64 %i.e     ; 3 uses
  %next.gep82 = getelementptr i8, ptr %i.j, i64 15
  %i.k = getelementptr i8, ptr %i.a, i64 %i.e     ; 3 uses
  %next.gep83 = getelementptr i8, ptr %i.k, i64 18
  %i.l = getelementptr i8, ptr %i.a, i64 %i.e     ; 3 uses
  %next.gep84 = getelementptr i8, ptr %i.l, i64 21
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.o = getelementptr i8, ptr %i.f, i64 4
  %i.p = getelementptr i8, ptr %i.g, i64 7
  %i.q = getelementptr i8, ptr %i.h, i64 10
  %i.r = getelementptr i8, ptr %i.i, i64 13
  %i.s = getelementptr i8, ptr %i.j, i64 16
  %i.t = getelementptr i8, ptr %i.k, i64 19
  %i.u = getelementptr i8, ptr %i.l, i64 22
  %i.v = load i8, ptr %next.gep, align 8, !tbaa !47
  %i.w = load i8, ptr %next.gep78, align 1, !tbaa !47
  %i.x = load i8, ptr %next.gep79, align 2, !tbaa !47
  %i.y = load i8, ptr %next.gep80, align 1, !tbaa !47
  %i.z = load i8, ptr %next.gep81, align 4, !tbaa !47
  %i.aa = load i8, ptr %next.gep82, align 1, !tbaa !47
  %i.ab = load i8, ptr %next.gep83, align 2, !tbaa !47
  %i.ac = load i8, ptr %next.gep84, align 1, !tbaa !47
  %i.ad = insertelement <8 x i8> poison, i8 %i.v, i64 0
  %i.ae = insertelement <8 x i8> %i.ad, i8 %i.w, i64 1
  %i.af = insertelement <8 x i8> %i.ae, i8 %i.x, i64 2
  %i.ag = insertelement <8 x i8> %i.af, i8 %i.y, i64 3
  %i.ah = insertelement <8 x i8> %i.ag, i8 %i.z, i64 4
  %i.ai = insertelement <8 x i8> %i.ah, i8 %i.aa, i64 5
  %i.aj = insertelement <8 x i8> %i.ai, i8 %i.ab, i64 6
  %i.ak = insertelement <8 x i8> %i.aj, i8 %i.ac, i64 7
  %i.al = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.am = getelementptr i8, ptr %i.f, i64 5
  %i.an = getelementptr i8, ptr %i.g, i64 8
  %i.ao = getelementptr i8, ptr %i.h, i64 11
  %i.ap = getelementptr i8, ptr %i.i, i64 14
  %i.aq = getelementptr i8, ptr %i.j, i64 17
  %i.ar = getelementptr i8, ptr %i.k, i64 20
  %i.as = getelementptr i8, ptr %i.l, i64 23
  %i.at = load i8, ptr %i.n, align 1, !tbaa !47
  %i.au = load i8, ptr %i.o, align 4, !tbaa !47
  %i.av = load i8, ptr %i.p, align 1, !tbaa !47
  %i.aw = load i8, ptr %i.q, align 2, !tbaa !47
  %i.ax = load i8, ptr %i.r, align 1, !tbaa !47
  %i.ay = load i8, ptr %i.s, align 8, !tbaa !47
  %i.az = load i8, ptr %i.t, align 1, !tbaa !47
  %i.ba = load i8, ptr %i.u, align 2, !tbaa !47
  %i.bb = insertelement <8 x i8> poison, i8 %i.at, i64 0
  %i.bc = insertelement <8 x i8> %i.bb, i8 %i.au, i64 1
  %i.bd = insertelement <8 x i8> %i.bc, i8 %i.av, i64 2
  %i.be = insertelement <8 x i8> %i.bd, i8 %i.aw, i64 3
  %i.bf = insertelement <8 x i8> %i.be, i8 %i.ax, i64 4
  %i.bg = insertelement <8 x i8> %i.bf, i8 %i.ay, i64 5
  %i.bh = insertelement <8 x i8> %i.bg, i8 %i.az, i64 6
  %i.bi = insertelement <8 x i8> %i.bh, i8 %i.ba, i64 7
  %i.bj = load i8, ptr %i.al, align 2, !tbaa !47
  %i.bk = load i8, ptr %i.am, align 1, !tbaa !47
  %i.bl = load i8, ptr %i.an, align 8, !tbaa !47
  %i.bm = load i8, ptr %i.ao, align 1, !tbaa !47
  %i.bn = load i8, ptr %i.ap, align 2, !tbaa !47
  %i.bo = load i8, ptr %i.aq, align 1, !tbaa !47
  %i.bp = load i8, ptr %i.ar, align 4, !tbaa !47
  %i.bq = load i8, ptr %i.as, align 1, !tbaa !47
  %i.br = insertelement <8 x i8> poison, i8 %i.bj, i64 0
  %i.bs = insertelement <8 x i8> %i.br, i8 %i.bk, i64 1
  %i.bt = insertelement <8 x i8> %i.bs, i8 %i.bl, i64 2
  %i.bu = insertelement <8 x i8> %i.bt, i8 %i.bm, i64 3
  %i.bv = insertelement <8 x i8> %i.bu, i8 %i.bn, i64 4
  %i.bw = insertelement <8 x i8> %i.bv, i8 %i.bo, i64 5
  %i.bx = insertelement <8 x i8> %i.bw, i8 %i.bp, i64 6
  %i.by = insertelement <8 x i8> %i.bx, i8 %i.bq, i64 7
  %i.bz = zext <8 x i8> %i.ak to <8 x i32>        ; 8 uses
  %i.ca = and <8 x i32> %i.bz, splat (i32 1)
  %i.cb = lshr <8 x i32> %i.bz, splat (i32 1)
  %i.cc = and <8 x i32> %i.cb, splat (i32 1)
  %i.cd = lshr <8 x i32> %i.bz, splat (i32 2)
  %i.ce = and <8 x i32> %i.cd, splat (i32 1)
  %i.cf = shl <8 x i32> %i.bz, splat (i32 28)
  %i.cg = ashr <8 x i32> %i.cf, splat (i32 31)
  %i.ch = shl <8 x i32> %i.bz, splat (i32 27)
  %i.ci = ashr <8 x i32> %i.ch, splat (i32 31)
  %i.cj = shl <8 x i32> %i.bz, splat (i32 26)
  %i.ck = ashr <8 x i32> %i.cj, splat (i32 31)
  %i.cl = add nsw <8 x i32> %i.ci, %i.ca
  %i.cm = add nsw <8 x i32> %i.cl, %i.cg
  %i.cn = add nsw <8 x i32> %i.cm, %i.ck
  %i.co = add nsw <8 x i32> %i.cn, %i.cc
  %i.cp = add nsw <8 x i32> %i.co, %i.ce          ; 2 uses
  %i.cq = lshr <8 x i32> %i.bz, splat (i32 6)
  %i.cr = and <8 x i32> %i.cq, splat (i32 1)
  %i.cs = lshr <8 x i32> %i.bz, splat (i32 7)
  %i.ct = zext <8 x i8> %i.bi to <8 x i32>        ; 8 uses
  %i.cu = and <8 x i32> %i.ct, splat (i32 1)
  %i.cv = shl <8 x i32> %i.ct, splat (i32 30)
  %i.cw = ashr <8 x i32> %i.cv, splat (i32 31)
  %i.cx = shl <8 x i32> %i.ct, splat (i32 29)
  %i.cy = ashr <8 x i32> %i.cx, splat (i32 31)
  %i.cz = shl <8 x i32> %i.ct, splat (i32 28)
  %i.da = ashr <8 x i32> %i.cz, splat (i32 31)
  %i.db = add nuw nsw <8 x i32> %i.cr, %i.cs
  %i.dc = add nuw nsw <8 x i32> %i.db, %i.cu
  %i.dd = add nsw <8 x i32> %i.dc, %i.cy
  %i.de = add nsw <8 x i32> %i.dd, %i.cw
  %i.df = add nsw <8 x i32> %i.de, %i.da          ; 2 uses
  %i.dg = lshr <8 x i32> %i.ct, splat (i32 4)
  %i.dh = and <8 x i32> %i.dg, splat (i32 1)
  %i.di = lshr <8 x i32> %i.ct, splat (i32 5)
  %i.dj = and <8 x i32> %i.di, splat (i32 1)
  %i.dk = lshr <8 x i32> %i.ct, splat (i32 6)
  %i.dl = and <8 x i32> %i.dk, splat (i32 1)
  %i.dm = lshr <8 x i32> %i.ct, splat (i32 7)
  %i.dn = zext <8 x i8> %i.by to <8 x i32>        ; 8 uses
  %i.do = and <8 x i32> %i.dn, splat (i32 1)
  %i.dp = shl <8 x i32> %i.dn, splat (i32 30)
  %i.dq = ashr <8 x i32> %i.dp, splat (i32 31)
  %i.dr = sub nsw <8 x i32> %i.dj, %i.dm
  %i.ds = add nsw <8 x i32> %i.dr, %i.dh
  %i.dt = add nsw <8 x i32> %i.ds, %i.dl
  %i.du = sub nsw <8 x i32> %i.dt, %i.do
  %i.dv = add nsw <8 x i32> %i.du, %i.dq          ; 2 uses
  %i.dw = lshr <8 x i32> %i.dn, splat (i32 2)
  %i.dx = and <8 x i32> %i.dw, splat (i32 1)
  %i.dy = lshr <8 x i32> %i.dn, splat (i32 3)
  %i.dz = and <8 x i32> %i.dy, splat (i32 1)
  %i.ea = lshr <8 x i32> %i.dn, splat (i32 4)
  %i.eb = and <8 x i32> %i.ea, splat (i32 1)
  %i.ec = shl <8 x i32> %i.dn, splat (i32 26)
  %i.ed = ashr <8 x i32> %i.ec, splat (i32 31)
  %i.ee = shl <8 x i32> %i.dn, splat (i32 25)
  %i.ef = ashr <8 x i32> %i.ee, splat (i32 31)
  %i.eg = lshr <8 x i32> %i.dn, splat (i32 7)
  %i.eh = sub nsw <8 x i32> %i.dz, %i.eg
  %i.ei = add nsw <8 x i32> %i.eh, %i.dx
  %i.ej = add nsw <8 x i32> %i.ei, %i.eb
  %i.ek = add nsw <8 x i32> %i.ej, %i.ef
  %i.el = add nsw <8 x i32> %i.ek, %i.ed          ; 2 uses
  %i.em = shufflevector <8 x i32> %i.cp, <8 x i32> %i.df, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.en = icmp slt <16 x i32> %i.em, zeroinitializer
  %i.eo = select <16 x i1> %i.en, <16 x i32> splat (i32 3329), <16 x i32> zeroinitializer
  %i.ep = shufflevector <8 x i32> %i.cp, <8 x i32> %i.df, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eq = add nsw <16 x i32> %i.eo, %i.ep
  %i.er = shufflevector <8 x i32> %i.dv, <8 x i32> %i.el, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.es = icmp slt <16 x i32> %i.er, zeroinitializer
  %i.et = select <16 x i1> %i.es, <16 x i32> splat (i32 3329), <16 x i32> zeroinitializer
  %i.eu = shufflevector <8 x i32> %i.dv, <8 x i32> %i.el, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
end_hunk_0
