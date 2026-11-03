Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/bcm?download=true
inline.NumInlined: 6923
inline.NumDeleted: 1212
loop-unroll.NumCompletelyUnrolled: 333
loop-unroll.NumRuntimeUnrolled: 163
loop-unroll.NumUnrolled: 552
begin_hunk_0_@mlkem512_check_pk:bb.a
  br i1 %.not.i.i.i, label %mlk_poly_tobytes_native.exit.i.i, label %mlk_poly_tobytes_native.exit.thread.i.i

mlk_poly_tobytes_native.exit.thread.i.i:          ; preds = %bb.a
  call void @mlkem_ntttobytes_avx2_asm(ptr noundef nonnull %i.a, ptr noundef nonnull %1) #46
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !73
  br label %mlkem_poly_tobytes.exit.i

mlk_poly_tobytes_native.exit.i.i:                 ; preds = %bb.a, %mlk_poly_tobytes_native.exit.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %mlk_poly_tobytes_native.exit.i.i ], [ 0, %bb.a ] ; 4 uses
  %.idx.i.i.i = shl nuw nsw i64 %indvars.iv.i.i.i, 2
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i.i.i ; 2 uses
  %i.e = load i16, ptr %i.d, align 8, !tbaa !131  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !131  ; 2 uses
  %i.h = trunc i16 %i.e to i8
  %i.i = mul nuw nsw i64 %indvars.iv.i.i.i, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.i ; 3 uses
  store i8 %i.h, ptr %i.j, align 2, !tbaa !76
  %i.k = lshr i16 %i.e, 8
  %i.l = shl i16 %i.g, 4
  %i.m = or i16 %i.l, %i.k
  %i.n = trunc i16 %i.m to i8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %i.n, ptr %i.o, align 1, !tbaa !76
  %i.p = lshr i16 %i.g, 4
  %i.q = trunc i16 %i.p to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 %i.q, ptr %i.r, align 2, !tbaa !76
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.idx.i.i.i.1 = shl nuw nsw i64 %indvars.iv.next.i.i.i, 2
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i.i.i.1 ; 2 uses
  %i.t = load i16, ptr %i.s, align 4, !tbaa !131  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.v = load i16, ptr %i.u, align 2, !tbaa !131  ; 2 uses
  %i.w = trunc i16 %i.t to i8
  %i.x = mul nuw nsw i64 %indvars.iv.next.i.i.i, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.x ; 3 uses
  store i8 %i.w, ptr %i.y, align 1, !tbaa !76
  %i.z = lshr i16 %i.t, 8
  %i.aa = shl i16 %i.v, 4
  %i.ab = or i16 %i.aa, %i.z
  %i.ac = trunc i16 %i.ab to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store i8 %i.ac, ptr %i.ad, align 2, !tbaa !76
  %i.ae = lshr i16 %i.v, 4
  %i.af = trunc i16 %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !76
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.1, 128
  br i1 %exitcond.not.i.i.i.1, label %mlkem_poly_tobytes.exit.i, label %mlk_poly_tobytes_native.exit.i.i, !llvm.loop !42

mlkem_poly_tobytes.exit.i:                        ; preds = %mlk_poly_tobytes_native.exit.i.i, %mlk_poly_tobytes_native.exit.thread.i.i
  %i.ah = phi i32 [ %.pre, %mlk_poly_tobytes_native.exit.thread.i.i ], [ %i.b, %mlk_poly_tobytes_native.exit.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 384 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 3 uses
  %i.ak = and i32 %i.ah, 32
  %.not.i.i.1.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.1.i, label %mlk_poly_tobytes_native.exit.i.1.i, label %mlk_poly_tobytes_native.exit.thread.i.1.i

mlk_poly_tobytes_native.exit.thread.i.1.i:        ; preds = %mlkem_poly_tobytes.exit.i
  call void @mlkem_ntttobytes_avx2_asm(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.aj) #46
  br label %vector.body.preheader

mlk_poly_tobytes_native.exit.i.1.i:               ; preds = %mlkem_poly_tobytes.exit.i, %mlk_poly_tobytes_native.exit.i.1.i
  %indvars.iv.i.i.1.i = phi i64 [ %indvars.iv.next.i.i.1.i.1, %mlk_poly_tobytes_native.exit.i.1.i ], [ 0, %mlkem_poly_tobytes.exit.i ] ; 4 uses
  %.idx.i.i.1.i = shl nuw nsw i64 %indvars.iv.i.i.1.i, 2
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.i.i.1.i ; 2 uses
  %i.am = load i16, ptr %i.al, align 8, !tbaa !131 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !131 ; 2 uses
  %i.ap = trunc i16 %i.am to i8
  %i.aq = mul nuw nsw i64 %indvars.iv.i.i.1.i, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aq ; 3 uses
  store i8 %i.ap, ptr %i.ar, align 2, !tbaa !76
  %i.as = lshr i16 %i.am, 8
  %i.at = shl i16 %i.ao, 4
  %i.au = or i16 %i.at, %i.as
  %i.av = trunc i16 %i.au to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !76
  %i.ax = lshr i16 %i.ao, 4
  %i.ay = trunc i16 %i.ax to i8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  store i8 %i.ay, ptr %i.az, align 2, !tbaa !76
  %indvars.iv.next.i.i.1.i = or disjoint i64 %indvars.iv.i.i.1.i, 1 ; 2 uses
  %.idx.i.i.1.i.1 = shl nuw nsw i64 %indvars.iv.next.i.i.1.i, 2
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.i.i.1.i.1 ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 4, !tbaa !131 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !131 ; 2 uses
  %i.be = trunc i16 %i.bb to i8
  %i.bf = mul nuw nsw i64 %indvars.iv.next.i.i.1.i, 3
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bf ; 3 uses
  store i8 %i.be, ptr %i.bg, align 1, !tbaa !76
  %i.bh = lshr i16 %i.bb, 8
  %i.bi = shl i16 %i.bd, 4
  %i.bj = or i16 %i.bi, %i.bh
  %i.bk = trunc i16 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  store i8 %i.bk, ptr %i.bl, align 2, !tbaa !76
  %i.bm = lshr i16 %i.bd, 4
  %i.bn = trunc i16 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !76
  %indvars.iv.next.i.i.1.i.1 = add nuw nsw i64 %indvars.iv.i.i.1.i, 2 ; 2 uses
  %exitcond.not.i.i.1.i.1 = icmp eq i64 %indvars.iv.next.i.i.1.i.1, 128
  br i1 %exitcond.not.i.i.1.i.1, label %vector.body.preheader, label %mlk_poly_tobytes_native.exit.i.1.i, !llvm.loop !42

vector.body.preheader:                            ; preds = %mlk_poly_tobytes_native.exit.i.1.i, %mlk_poly_tobytes_native.exit.thread.i.1.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.body.preheader
  %index = phi i64 [ 0, %vector.body.preheader ], [ %index.next.1, %vector.body ] ; 4 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.body.preheader ], [ %i.cl, %vector.body ]
  %vec.phi14 = phi <4 x i32> [ zeroinitializer, %vector.body.preheader ], [ %i.cm, %vector.body ]
  %vec.phi15 = phi <4 x i8> [ zeroinitializer, %vector.body.preheader ], [ %i.cj, %vector.body ]
  %vec.phi16 = phi <4 x i8> [ zeroinitializer, %vector.body.preheader ], [ %i.ck, %vector.body ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %wide.load = load <4 x i8>, ptr %i.bp, align 1, !tbaa !76
  %wide.load17 = load <4 x i8>, ptr %i.bq, align 1, !tbaa !76
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %index ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %wide.load18 = load <4 x i8>, ptr %i.br, align 16, !tbaa !76
  %wide.load19 = load <4 x i8>, ptr %i.bs, align 4, !tbaa !76
  %i.bt = xor <4 x i8> %wide.load18, %wide.load   ; 2 uses
  %i.bu = xor <4 x i8> %wide.load19, %wide.load17 ; 2 uses
  %i.bv = zext <4 x i8> %i.bt to <4 x i32>
  %i.bw = zext <4 x i8> %i.bu to <4 x i32>
  %i.bx = or <4 x i8> %i.bt, %vec.phi15
  %i.by = or <4 x i8> %i.bu, %vec.phi16
  %i.bz = xor <4 x i32> %vec.phi, %i.bv
  %i.ca = xor <4 x i32> %vec.phi14, %i.bw
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 %index.next ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %wide.load.1 = load <4 x i8>, ptr %i.cb, align 1, !tbaa !76
  %wide.load17.1 = load <4 x i8>, ptr %i.cc, align 1, !tbaa !76
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 %index.next ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %wide.load18.1 = load <4 x i8>, ptr %i.cd, align 8, !tbaa !76
  %wide.load19.1 = load <4 x i8>, ptr %i.ce, align 4, !tbaa !76
  %i.cf = xor <4 x i8> %wide.load18.1, %wide.load.1 ; 2 uses
  %i.cg = xor <4 x i8> %wide.load19.1, %wide.load17.1 ; 2 uses
  %i.ch = zext <4 x i8> %i.cf to <4 x i32>
  %i.ci = zext <4 x i8> %i.cg to <4 x i32>
  %i.cj = or <4 x i8> %i.cf, %i.bx                ; 2 uses
  %i.ck = or <4 x i8> %i.cg, %i.by                ; 2 uses
  %i.cl = xor <4 x i32> %i.bz, %i.ch              ; 2 uses
  %i.cm = xor <4 x i32> %i.ca, %i.ci              ; 2 uses
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.cn = icmp eq i64 %index.next.1, 768
  br i1 %i.cn, label %mlk_ct_memcmp.exit, label %vector.body, !llvm.loop !2201

mlk_ct_memcmp.exit:                               ; preds = %vector.body
  %bin.rdx20 = or <4 x i8> %i.ck, %i.cj
  %i.co = call i8 @llvm.vector.reduce.or.v4i8(<4 x i8> %bin.rdx20)
  %bin.rdx = xor <4 x i32> %i.cm, %i.cl
  %i.cp = call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %i.cq = zext i8 %i.co to i32
  %i.cr = sub nsw i32 0, %i.cq
  %i.cs = call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -65535, 32768) %i.cr) #46, !srcloc !458
  %i.ct = lshr i32 %i.cs, 16
  %i.cu = trunc nuw i32 %i.cp to i8
  %i.cv = xor i32 %i.ct, %i.cp
  %i.cw = trunc i32 %i.cv to i8
  %i.cx = call i8 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i8 %i.cw) #46, !srcloc !459
  %.not = icmp eq i8 %i.cx, %i.cu
  %i.cy = select i1 %.not, i32 0, i32 -4
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 768) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %1, i64 noundef 1024) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  ret i32 %i.cy
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ml_kem_512_check_sk(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp ne i64 %1, 1632
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @mlkem512_check_sk(ptr noundef nonnull %0)
  %i.d = icmp ne i32 %i.c, 0
  %i.e = zext i1 %i.d to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -5, 1) i32 @mlkem512_check_sk(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.keccak_ctx_st, align 8      ; 11 uses
  %i.a = alloca [32 x i8], align 32               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 768
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %1, i8 0, i64 200, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 216
  store i64 0, ptr %i.c, align 8, !tbaa !444
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 393
  store i8 0, ptr %i.d, align 1, !tbaa !445
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 200
  store i64 136, ptr %i.e, align 8, !tbaa !446
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i64 32, ptr %i.f, align 8, !tbaa !447
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 392
  store i8 6, ptr %i.g, align 8, !tbaa !448
  %i.h = call i32 @KeccakSponge_Absorb(ptr noundef nonnull %1, ptr noundef nonnull readonly %i.b, i64 noundef 800)
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %mlk_sha3_256.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call i32 @SHA3_Final(ptr noundef nonnull %i.a, ptr noundef nonnull %1) ; 0 uses
  %.pre = load i8, ptr %i.a, align 32, !tbaa !76
  br label %mlk_sha3_256.exit

mlk_sha3_256.exit:                                ; preds = %bb.a, %bb.b
  %i.k = phi i8 [ undef, %bb.a ], [ %.pre, %bb.b ]
  call void @OPENSSL_cleanse(ptr noundef nonnull %1, i64 noundef 400) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1568
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %3 = load <4 x i8>, ptr %i.m, align 1, !tbaa !76
  %4 = load <4 x i8>, ptr %2, align 1
  %i.p = load <8 x i8>, ptr %i.n, align 8, !tbaa !76
  %i.q = load <32 x i8>, ptr %i.l, align 1, !tbaa !76
  %i.r = load <16 x i8>, ptr %i.o, align 16, !tbaa !76
  %i.s = shufflevector <4 x i8> %3, <4 x i8> %4, <32 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.t = insertelement <32 x i8> %i.s, i8 %i.k, i64 0
  %i.u = shufflevector <16 x i8> %i.r, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.v = shufflevector <32 x i8> %i.t, <32 x i8> %i.u, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.w = shufflevector <8 x i8> %i.p, <8 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.x = shufflevector <32 x i8> %i.v, <32 x i8> %i.w, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.y = xor <32 x i8> %i.x, %i.q                 ; 2 uses
  %i.z = call i8 @llvm.vector.reduce.or.v32i8(<32 x i8> %i.y)
  %i.aa = call i8 @llvm.vector.reduce.xor.v32i8(<32 x i8> %i.y) ; 2 uses
  %i.ab = zext i8 %i.z to i32
  %i.ac = sub nsw i32 0, %i.ab
  %i.ad = call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -65535, 32768) %i.ac) #46, !srcloc !458
  %i.ae = lshr i32 %i.ad, 16
  %i.af = trunc i32 %i.ae to i8
  %i.ag = xor i8 %i.aa, %i.af
  %i.ah = call i8 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i8 %i.ag) #46, !srcloc !459
  %.not = icmp eq i8 %i.ah, %i.aa
  %i.ai = select i1 %.not, i32 0, i32 -5
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 32) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret i32 %i.ai
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ml_kem_768_check_pk(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp ne i64 %1, 1184
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @mlkem768_check_pk(ptr noundef nonnull %0)
  %i.d = icmp ne i32 %i.c, 0
  %i.e = zext i1 %i.d to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -4, 1) i32 @mlkem768_check_pk(ptr noundef %0) unnamed_addr #0 {
vector.ph:
  %1 = alloca [1 x %struct.mlk_polyvec768], align 32 ; 6 uses
  %i.a = alloca [1152 x i8], align 32             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call fastcc void @mlkem768_polyvec_frombytes(ptr noundef %1, ptr noundef %0)
  call fastcc void @mlkem768_polyvec_reduce(ptr noundef %1)
  call fastcc void @mlkem768_polyvec_tobytes(ptr noundef nonnull %i.a, ptr noundef %1)
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ] ; 4 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi14 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.y, %vector.body ]
  %vec.phi15 = phi <4 x i8> [ zeroinitializer, %vector.ph ], [ %i.v, %vector.body ]
  %vec.phi16 = phi <4 x i8> [ zeroinitializer, %vector.ph ], [ %i.w, %vector.body ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %wide.load = load <4 x i8>, ptr %i.b, align 1, !tbaa !76
  %wide.load17 = load <4 x i8>, ptr %i.c, align 1, !tbaa !76
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %wide.load18 = load <4 x i8>, ptr %i.d, align 16, !tbaa !76
  %wide.load19 = load <4 x i8>, ptr %i.e, align 4, !tbaa !76
  %i.f = xor <4 x i8> %wide.load18, %wide.load    ; 2 uses
  %i.g = xor <4 x i8> %wide.load19, %wide.load17  ; 2 uses
  %i.h = zext <4 x i8> %i.f to <4 x i32>
  %i.i = zext <4 x i8> %i.g to <4 x i32>
  %i.j = or <4 x i8> %i.f, %vec.phi15
  %i.k = or <4 x i8> %i.g, %vec.phi16
  %i.l = xor <4 x i32> %vec.phi, %i.h
  %i.m = xor <4 x i32> %vec.phi14, %i.i
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %index.next ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %wide.load.1 = load <4 x i8>, ptr %i.n, align 1, !tbaa !76
  %wide.load17.1 = load <4 x i8>, ptr %i.o, align 1, !tbaa !76
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %index.next ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %wide.load18.1 = load <4 x i8>, ptr %i.p, align 8, !tbaa !76
  %wide.load19.1 = load <4 x i8>, ptr %i.q, align 4, !tbaa !76
  %i.r = xor <4 x i8> %wide.load18.1, %wide.load.1 ; 2 uses
  %i.s = xor <4 x i8> %wide.load19.1, %wide.load17.1 ; 2 uses
  %i.t = zext <4 x i8> %i.r to <4 x i32>
  %i.u = zext <4 x i8> %i.s to <4 x i32>
  %i.v = or <4 x i8> %i.r, %i.j                   ; 2 uses
  %i.w = or <4 x i8> %i.s, %i.k                   ; 2 uses
  %i.x = xor <4 x i32> %i.l, %i.t                 ; 2 uses
  %i.y = xor <4 x i32> %i.m, %i.u                 ; 2 uses
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.z = icmp eq i64 %index.next.1, 1152
  br i1 %i.z, label %mlk_ct_memcmp.exit, label %vector.body, !llvm.loop !2202

mlk_ct_memcmp.exit:                               ; preds = %vector.body
  %bin.rdx20 = or <4 x i8> %i.w, %i.v
  %i.aa = call i8 @llvm.vector.reduce.or.v4i8(<4 x i8> %bin.rdx20)
  %bin.rdx = xor <4 x i32> %i.y, %i.x
  %i.ab = call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %i.ac = zext i8 %i.aa to i32
  %i.ad = sub nsw i32 0, %i.ac
  %i.ae = call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -65535, 32768) %i.ad) #46, !srcloc !458
  %i.af = lshr i32 %i.ae, 16
  %i.ag = trunc nuw i32 %i.ab to i8
  %i.ah = xor i32 %i.af, %i.ab
  %i.ai = trunc i32 %i.ah to i8
  %i.aj = call i8 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i8 %i.ai) #46, !srcloc !459
  %.not = icmp eq i8 %i.aj, %i.ag
  %i.ak = select i1 %.not, i32 0, i32 -4
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 1152) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %1, i64 noundef 1536) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  ret i32 %i.ak
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ml_kem_768_check_sk(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp ne i64 %1, 2400
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @mlkem768_check_sk(ptr noundef nonnull %0)
  %i.d = icmp ne i32 %i.c, 0
  %i.e = zext i1 %i.d to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -5, 1) i32 @mlkem768_check_sk(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.keccak_ctx_st, align 8      ; 11 uses
  %i.a = alloca [32 x i8], align 32               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1152
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %1, i8 0, i64 200, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 216
  store i64 0, ptr %i.c, align 8, !tbaa !444
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 393
  store i8 0, ptr %i.d, align 1, !tbaa !445
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 200
  store i64 136, ptr %i.e, align 8, !tbaa !446
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i64 32, ptr %i.f, align 8, !tbaa !447
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 392
  store i8 6, ptr %i.g, align 8, !tbaa !448
  %i.h = call i32 @KeccakSponge_Absorb(ptr noundef nonnull %1, ptr noundef nonnull readonly %i.b, i64 noundef 1184)
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %mlk_sha3_256.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call i32 @SHA3_Final(ptr noundef nonnull %i.a, ptr noundef nonnull %1) ; 0 uses
  %.pre = load i8, ptr %i.a, align 32, !tbaa !76
  br label %mlk_sha3_256.exit

mlk_sha3_256.exit:                                ; preds = %bb.a, %bb.b
  %i.k = phi i8 [ undef, %bb.a ], [ %.pre, %bb.b ]
  call void @OPENSSL_cleanse(ptr noundef nonnull %1, i64 noundef 400) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2336
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %3 = load <4 x i8>, ptr %i.m, align 1, !tbaa !76
  %4 = load <4 x i8>, ptr %2, align 1
  %i.p = load <8 x i8>, ptr %i.n, align 8, !tbaa !76
  %i.q = load <32 x i8>, ptr %i.l, align 1, !tbaa !76
  %i.r = load <16 x i8>, ptr %i.o, align 16, !tbaa !76
  %i.s = shufflevector <4 x i8> %3, <4 x i8> %4, <32 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.t = insertelement <32 x i8> %i.s, i8 %i.k, i64 0
  %i.u = shufflevector <16 x i8> %i.r, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.v = shufflevector <32 x i8> %i.t, <32 x i8> %i.u, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.w = shufflevector <8 x i8> %i.p, <8 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.x = shufflevector <32 x i8> %i.v, <32 x i8> %i.w, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.y = xor <32 x i8> %i.x, %i.q                 ; 2 uses
  %i.z = call i8 @llvm.vector.reduce.or.v32i8(<32 x i8> %i.y)
  %i.aa = call i8 @llvm.vector.reduce.xor.v32i8(<32 x i8> %i.y) ; 2 uses
  %i.ab = zext i8 %i.z to i32
  %i.ac = sub nsw i32 0, %i.ab
  %i.ad = call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -65535, 32768) %i.ac) #46, !srcloc !458
  %i.ae = lshr i32 %i.ad, 16
  %i.af = trunc i32 %i.ae to i8
  %i.ag = xor i8 %i.aa, %i.af
  %i.ah = call i8 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i8 %i.ag) #46, !srcloc !459
  %.not = icmp eq i8 %i.ah, %i.aa
  %i.ai = select i1 %.not, i32 0, i32 -5
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 32) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret i32 %i.ai
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ml_kem_1024_check_pk(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp ne i64 %1, 1568
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @mlkem1024_check_pk(ptr noundef nonnull %0)
  %i.d = icmp ne i32 %i.c, 0
  %i.e = zext i1 %i.d to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -4, 1) i32 @mlkem1024_check_pk(ptr noundef %0) unnamed_addr #0 {
vector.ph:
  %1 = alloca [1 x %struct.mlk_polyvec1024], align 32 ; 6 uses
  %i.a = alloca [1536 x i8], align 32             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call fastcc void @mlkem1024_polyvec_frombytes(ptr noundef %1, ptr noundef %0)
  call fastcc void @mlkem1024_polyvec_reduce(ptr noundef %1)
  call fastcc void @mlkem1024_polyvec_tobytes(ptr noundef nonnull %i.a, ptr noundef %1)
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ] ; 4 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi14 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.y, %vector.body ]
  %vec.phi15 = phi <4 x i8> [ zeroinitializer, %vector.ph ], [ %i.v, %vector.body ]
  %vec.phi16 = phi <4 x i8> [ zeroinitializer, %vector.ph ], [ %i.w, %vector.body ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %wide.load = load <4 x i8>, ptr %i.b, align 1, !tbaa !76
  %wide.load17 = load <4 x i8>, ptr %i.c, align 1, !tbaa !76
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %wide.load18 = load <4 x i8>, ptr %i.d, align 16, !tbaa !76
  %wide.load19 = load <4 x i8>, ptr %i.e, align 4, !tbaa !76
  %i.f = xor <4 x i8> %wide.load18, %wide.load    ; 2 uses
  %i.g = xor <4 x i8> %wide.load19, %wide.load17  ; 2 uses
  %i.h = zext <4 x i8> %i.f to <4 x i32>
  %i.i = zext <4 x i8> %i.g to <4 x i32>
  %i.j = or <4 x i8> %i.f, %vec.phi15
  %i.k = or <4 x i8> %i.g, %vec.phi16
  %i.l = xor <4 x i32> %vec.phi, %i.h
  %i.m = xor <4 x i32> %vec.phi14, %i.i
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %index.next ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %wide.load.1 = load <4 x i8>, ptr %i.n, align 1, !tbaa !76
  %wide.load17.1 = load <4 x i8>, ptr %i.o, align 1, !tbaa !76
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %index.next ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %wide.load18.1 = load <4 x i8>, ptr %i.p, align 8, !tbaa !76
  %wide.load19.1 = load <4 x i8>, ptr %i.q, align 4, !tbaa !76
  %i.r = xor <4 x i8> %wide.load18.1, %wide.load.1 ; 2 uses
  %i.s = xor <4 x i8> %wide.load19.1, %wide.load17.1 ; 2 uses
  %i.t = zext <4 x i8> %i.r to <4 x i32>
  %i.u = zext <4 x i8> %i.s to <4 x i32>
  %i.v = or <4 x i8> %i.r, %i.j                   ; 2 uses
  %i.w = or <4 x i8> %i.s, %i.k                   ; 2 uses
  %i.x = xor <4 x i32> %i.l, %i.t                 ; 2 uses
  %i.y = xor <4 x i32> %i.m, %i.u                 ; 2 uses
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.z = icmp eq i64 %index.next.1, 1536
  br i1 %i.z, label %mlk_ct_memcmp.exit, label %vector.body, !llvm.loop !2203

mlk_ct_memcmp.exit:                               ; preds = %vector.body
  %bin.rdx20 = or <4 x i8> %i.w, %i.v
  %i.aa = call i8 @llvm.vector.reduce.or.v4i8(<4 x i8> %bin.rdx20)
  %bin.rdx = xor <4 x i32> %i.y, %i.x
  %i.ab = call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %i.ac = zext i8 %i.aa to i32
  %i.ad = sub nsw i32 0, %i.ac
  %i.ae = call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -65535, 32768) %i.ad) #46, !srcloc !458
  %i.af = lshr i32 %i.ae, 16
  %i.ag = trunc nuw i32 %i.ab to i8
  %i.ah = xor i32 %i.af, %i.ab
  %i.ai = trunc i32 %i.ah to i8
  %i.aj = call i8 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i8 %i.ai) #46, !srcloc !459
  %.not = icmp eq i8 %i.aj, %i.ag
  %i.ak = select i1 %.not, i32 0, i32 -4
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 1536) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %1, i64 noundef 2048) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  ret i32 %i.ak
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ml_kem_1024_check_sk(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp ne i64 %1, 3168
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @mlkem1024_check_sk(ptr noundef nonnull %0)
  %i.d = icmp ne i32 %i.c, 0
  %i.e = zext i1 %i.d to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -5, 1) i32 @mlkem1024_check_sk(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.keccak_ctx_st, align 8      ; 11 uses
  %i.a = alloca [32 x i8], align 32               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1536
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %1, i8 0, i64 200, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 216
  store i64 0, ptr %i.c, align 8, !tbaa !444
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 393
  store i8 0, ptr %i.d, align 1, !tbaa !445
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 200
  store i64 136, ptr %i.e, align 8, !tbaa !446
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i64 32, ptr %i.f, align 8, !tbaa !447
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 392
  store i8 6, ptr %i.g, align 8, !tbaa !448
  %i.h = call i32 @KeccakSponge_Absorb(ptr noundef nonnull %1, ptr noundef nonnull readonly %i.b, i64 noundef 1568)
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %mlk_sha3_256.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call i32 @SHA3_Final(ptr noundef nonnull %i.a, ptr noundef nonnull %1) ; 0 uses
  %.pre = load i8, ptr %i.a, align 32, !tbaa !76
  br label %mlk_sha3_256.exit

mlk_sha3_256.exit:                                ; preds = %bb.a, %bb.b
  %i.k = phi i8 [ undef, %bb.a ], [ %.pre, %bb.b ]
  call void @OPENSSL_cleanse(ptr noundef nonnull %1, i64 noundef 400) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3104
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %3 = load <4 x i8>, ptr %i.m, align 1, !tbaa !76
  %4 = load <4 x i8>, ptr %2, align 1
  %i.p = load <8 x i8>, ptr %i.n, align 8, !tbaa !76
  %i.q = load <32 x i8>, ptr %i.l, align 1, !tbaa !76
  %i.r = load <16 x i8>, ptr %i.o, align 16, !tbaa !76
  %i.s = shufflevector <4 x i8> %3, <4 x i8> %4, <32 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.t = insertelement <32 x i8> %i.s, i8 %i.k, i64 0
  %i.u = shufflevector <16 x i8> %i.r, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.v = shufflevector <32 x i8> %i.t, <32 x i8> %i.u, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.w = shufflevector <8 x i8> %i.p, <8 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.x = shufflevector <32 x i8> %i.v, <32 x i8> %i.w, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.y = xor <32 x i8> %i.x, %i.q                 ; 2 uses
  %i.z = call i8 @llvm.vector.reduce.or.v32i8(<32 x i8> %i.y)
  %i.aa = call i8 @llvm.vector.reduce.xor.v32i8(<32 x i8> %i.y) ; 2 uses
  %i.ab = zext i8 %i.z to i32
  %i.ac = sub nsw i32 0, %i.ab
  %i.ad = call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -65535, 32768) %i.ac) #46, !srcloc !458
  %i.ae = lshr i32 %i.ad, 16
  %i.af = trunc i32 %i.ae to i8
  %i.ag = xor i8 %i.aa, %i.af
  %i.ah = call i8 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i8 %i.ag) #46, !srcloc !459
  %.not = icmp eq i8 %i.ah, %i.aa
  %i.ai = select i1 %.not, i32 0, i32 -5
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 32) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret i32 %i.ai
}

; Function Attrs: nounwind uwtable
define hidden void @CRYPTO_ctr128_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef captures(none) %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %6, align 4, !tbaa !73     ; 3 uses
  %i.b = icmp ne i32 %i.a, 0
  %i.c = icmp ne i64 %2, 0
  %i.d = and i1 %i.b, %i.c
  br i1 %i.d, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.040.lcssa = phi i64 [ %2, %bb.a ], [ %i.ac, %.lr.ph ] ; 3 uses
  %.038.lcssa = phi ptr [ %1, %bb.a ], [ %i.ab, %.lr.ph ] ; 2 uses
  %.036.lcssa = phi ptr [ %0, %bb.a ], [ %i.v, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.ae, %.lr.ph ]
  %i.e = icmp ugt i64 %.040.lcssa, 15
  br i1 %i.e, label %.lr.ph54, label %._crit_edge

.lr.ph54:                                         ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 15 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 14 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 13 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 11 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 9 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 7 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 6 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 5 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.047 = phi i32 [ %i.ae, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %.03646 = phi ptr [ %i.v, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.03845 = phi ptr [ %i.ab, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.04044 = phi i64 [ %i.ac, %.lr.ph ], [ %2, %bb.a ]
  %i.v = getelementptr inbounds nuw i8, ptr %.03646, i64 1 ; 2 uses
  %i.w = load i8, ptr %.03646, align 1, !tbaa !76
  %i.x = zext i32 %.047 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !76
  %i.aa = xor i8 %i.z, %i.w
  %i.ab = getelementptr inbounds nuw i8, ptr %.03845, i64 1 ; 2 uses
  store i8 %i.aa, ptr %.03845, align 1, !tbaa !76
  %i.ac = add i64 %.04044, -1                     ; 3 uses
  %i.ad = add i32 %.047, 1
  %i.ae = and i32 %i.ad, 15                       ; 3 uses
  %i.af = icmp ne i32 %i.ae, 0
  %i.ag = icmp ne i64 %i.ac, 0
  %i.ah = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %i.ah, label %.lr.ph, label %.preheader, !llvm.loop !2204

bb.b:                                             ; preds = %.lr.ph54, %bb.b
  %.13753 = phi ptr [ %.036.lcssa, %.lr.ph54 ], [ %i.do, %bb.b ] ; 3 uses
  %.13952 = phi ptr [ %.038.lcssa, %.lr.ph54 ], [ %i.dn, %bb.b ] ; 3 uses
  %.14151 = phi i64 [ %.040.lcssa, %.lr.ph54 ], [ %i.dm, %bb.b ]
  tail call void %7(ptr noundef %4, ptr noundef %5, ptr noundef %3) #46
  %i.ai = load i8, ptr %i.f, align 1, !tbaa !76
  %i.aj = zext i8 %i.ai to i32
  %i.ak = add nuw nsw i32 %i.aj, 1                ; 2 uses
  %i.al = trunc i32 %i.ak to i8
  store i8 %i.al, ptr %i.f, align 1, !tbaa !76
  %i.am = lshr i32 %i.ak, 8
  %i.an = load i8, ptr %i.g, align 1, !tbaa !76
  %i.ao = zext i8 %i.an to i32
  %i.ap = add nuw nsw i32 %i.am, %i.ao            ; 2 uses
  %i.aq = trunc i32 %i.ap to i8
  store i8 %i.aq, ptr %i.g, align 1, !tbaa !76
  %i.ar = lshr i32 %i.ap, 8
  %i.as = load i8, ptr %i.h, align 1, !tbaa !76
  %i.at = zext i8 %i.as to i32
  %i.au = add nuw nsw i32 %i.ar, %i.at            ; 2 uses
  %i.av = trunc i32 %i.au to i8
  store i8 %i.av, ptr %i.h, align 1, !tbaa !76
  %i.aw = lshr i32 %i.au, 8
  %i.ax = load i8, ptr %i.i, align 1, !tbaa !76
  %i.ay = zext i8 %i.ax to i32
  %i.az = add nuw nsw i32 %i.aw, %i.ay            ; 2 uses
  %i.ba = trunc i32 %i.az to i8
  store i8 %i.ba, ptr %i.i, align 1, !tbaa !76
  %i.bb = lshr i32 %i.az, 8
  %i.bc = load i8, ptr %i.j, align 1, !tbaa !76
  %i.bd = zext i8 %i.bc to i32
  %i.be = add nuw nsw i32 %i.bb, %i.bd            ; 2 uses
  %i.bf = trunc i32 %i.be to i8
  store i8 %i.bf, ptr %i.j, align 1, !tbaa !76
  %i.bg = lshr i32 %i.be, 8
  %i.bh = load i8, ptr %i.k, align 1, !tbaa !76
  %i.bi = zext i8 %i.bh to i32
  %i.bj = add nuw nsw i32 %i.bg, %i.bi            ; 2 uses
  %i.bk = trunc i32 %i.bj to i8
  store i8 %i.bk, ptr %i.k, align 1, !tbaa !76
  %i.bl = lshr i32 %i.bj, 8
  %i.bm = load i8, ptr %i.l, align 1, !tbaa !76
  %i.bn = zext i8 %i.bm to i32
  %i.bo = add nuw nsw i32 %i.bl, %i.bn            ; 2 uses
  %i.bp = trunc i32 %i.bo to i8
  store i8 %i.bp, ptr %i.l, align 1, !tbaa !76
  %i.bq = lshr i32 %i.bo, 8
  %i.br = load i8, ptr %i.m, align 1, !tbaa !76
  %i.bs = zext i8 %i.br to i32
  %i.bt = add nuw nsw i32 %i.bq, %i.bs            ; 2 uses
  %i.bu = trunc i32 %i.bt to i8
  store i8 %i.bu, ptr %i.m, align 1, !tbaa !76
  %i.bv = lshr i32 %i.bt, 8
  %i.bw = load i8, ptr %i.n, align 1, !tbaa !76
  %i.bx = zext i8 %i.bw to i32
  %i.by = add nuw nsw i32 %i.bv, %i.bx            ; 2 uses
  %i.bz = trunc i32 %i.by to i8
  store i8 %i.bz, ptr %i.n, align 1, !tbaa !76
  %i.ca = lshr i32 %i.by, 8
  %i.cb = load i8, ptr %i.o, align 1, !tbaa !76
  %i.cc = zext i8 %i.cb to i32
  %i.cd = add nuw nsw i32 %i.ca, %i.cc            ; 2 uses
  %i.ce = trunc i32 %i.cd to i8
  store i8 %i.ce, ptr %i.o, align 1, !tbaa !76
  %i.cf = lshr i32 %i.cd, 8
  %i.cg = load i8, ptr %i.p, align 1, !tbaa !76
  %i.ch = zext i8 %i.cg to i32
  %i.ci = add nuw nsw i32 %i.cf, %i.ch            ; 2 uses
  %i.cj = trunc i32 %i.ci to i8
  store i8 %i.cj, ptr %i.p, align 1, !tbaa !76
  %i.ck = lshr i32 %i.ci, 8
  %i.cl = load i8, ptr %i.q, align 1, !tbaa !76
  %i.cm = zext i8 %i.cl to i32
  %i.cn = add nuw nsw i32 %i.ck, %i.cm            ; 2 uses
  %i.co = trunc i32 %i.cn to i8
  store i8 %i.co, ptr %i.q, align 1, !tbaa !76
  %i.cp = lshr i32 %i.cn, 8
  %i.cq = load i8, ptr %i.r, align 1, !tbaa !76
  %i.cr = zext i8 %i.cq to i32
  %i.cs = add nuw nsw i32 %i.cp, %i.cr            ; 2 uses
  %i.ct = trunc i32 %i.cs to i8
  store i8 %i.ct, ptr %i.r, align 1, !tbaa !76
  %i.cu = lshr i32 %i.cs, 8
  %i.cv = load i8, ptr %i.s, align 1, !tbaa !76
  %i.cw = zext i8 %i.cv to i32
  %i.cx = add nuw nsw i32 %i.cu, %i.cw            ; 2 uses
  %i.cy = trunc i32 %i.cx to i8
  store i8 %i.cy, ptr %i.s, align 1, !tbaa !76
  %i.cz = lshr i32 %i.cx, 8
  %i.da = load i8, ptr %i.t, align 1, !tbaa !76
  %i.db = zext i8 %i.da to i32
  %i.dc = add nuw nsw i32 %i.cz, %i.db            ; 2 uses
  %i.dd = trunc i32 %i.dc to i8
  store i8 %i.dd, ptr %i.t, align 1, !tbaa !76
  %i.de = lshr i32 %i.dc, 8
  %i.df = load i8, ptr %4, align 1, !tbaa !76
  %i.dg = trunc nuw nsw i32 %i.de to i8
  %i.dh = add i8 %i.df, %i.dg
  store i8 %i.dh, ptr %4, align 1, !tbaa !76
  %.0.copyload.i.i = load i64, ptr %.13753, align 1
  %.0.copyload.i7.i = load i64, ptr %5, align 1
  %i.di = xor i64 %.0.copyload.i7.i, %.0.copyload.i.i
  store i64 %i.di, ptr %.13952, align 1
  %i.dj = getelementptr inbounds nuw i8, ptr %.13952, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %.13753, i64 8
  %.0.copyload.i.1.i = load i64, ptr %i.dk, align 1
  %.0.copyload.i7.1.i = load i64, ptr %i.u, align 1
  %i.dl = xor i64 %.0.copyload.i7.1.i, %.0.copyload.i.1.i
  store i64 %i.dl, ptr %i.dj, align 1
  %i.dm = add i64 %.14151, -16                    ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.13952, i64 16 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.13753, i64 16 ; 2 uses
  %i.dp = icmp ugt i64 %i.dm, 15
  br i1 %i.dp, label %bb.b, label %._crit_edge, !llvm.loop !2205

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %.141.lcssa = phi i64 [ %.040.lcssa, %.preheader ], [ %i.dm, %bb.b ] ; 5 uses
  %.139.lcssa = phi ptr [ %.038.lcssa, %.preheader ], [ %i.dn, %bb.b ] ; 3 uses
  %.137.lcssa = phi ptr [ %.036.lcssa, %.preheader ], [ %i.do, %bb.b ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader ], [ 0, %bb.b ] ; 4 uses
  %.not = icmp eq i64 %.141.lcssa, 0
end_hunk_0
