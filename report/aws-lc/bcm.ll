Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/bcm?download=true
inline.NumInlined: 6923
inline.NumDeleted: 1212
loop-unroll.NumCompletelyUnrolled: 331
loop-unroll.NumRuntimeUnrolled: 163
loop-unroll.NumUnrolled: 550
begin_hunk_0_@mlkem1024_polyvec_frombytes:bb.a
  %i.is = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.io ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 3
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.ip ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 6
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.iq ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 9
  %i.iy = load i8, ptr %i.ir, align 1, !tbaa !76, !alias.scope !2957
  %i.iz = load i8, ptr %i.it, align 1, !tbaa !76, !alias.scope !2957
  %i.ja = load i8, ptr %i.iv, align 1, !tbaa !76, !alias.scope !2957
  %i.jb = load i8, ptr %i.ix, align 1, !tbaa !76, !alias.scope !2957
  %i.jc = insertelement <4 x i8> poison, i8 %i.iy, i64 0
  %i.jd = insertelement <4 x i8> %i.jc, i8 %i.iz, i64 1
  %i.je = insertelement <4 x i8> %i.jd, i8 %i.ja, i64 2
  %i.jf = insertelement <4 x i8> %i.je, i8 %i.jb, i64 3
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ir, i64 1
  %i.jh = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  %i.ji = getelementptr inbounds nuw i8, ptr %i.iu, i64 7
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iw, i64 10
  %i.jk = load i8, ptr %i.jg, align 1, !tbaa !76, !alias.scope !2957
  %i.jl = load i8, ptr %i.jh, align 1, !tbaa !76, !alias.scope !2957
  %i.jm = load i8, ptr %i.ji, align 1, !tbaa !76, !alias.scope !2957
  %i.jn = load i8, ptr %i.jj, align 1, !tbaa !76, !alias.scope !2957
  %i.jo = insertelement <4 x i8> poison, i8 %i.jk, i64 0
  %i.jp = insertelement <4 x i8> %i.jo, i8 %i.jl, i64 1
  %i.jq = insertelement <4 x i8> %i.jp, i8 %i.jm, i64 2
  %i.jr = insertelement <4 x i8> %i.jq, i8 %i.jn, i64 3 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.ir, i64 2
  %i.jt = getelementptr inbounds nuw i8, ptr %i.is, i64 5
  %i.ju = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.jv = getelementptr inbounds nuw i8, ptr %i.iw, i64 11
  %i.jw = load i8, ptr %i.js, align 1, !tbaa !76, !alias.scope !2957
  %i.jx = load i8, ptr %i.jt, align 1, !tbaa !76, !alias.scope !2957
  %i.jy = load i8, ptr %i.ju, align 1, !tbaa !76, !alias.scope !2957
  %i.jz = load i8, ptr %i.jv, align 1, !tbaa !76, !alias.scope !2957
  %i.ka = insertelement <4 x i8> poison, i8 %i.jw, i64 0
  %i.kb = insertelement <4 x i8> %i.ka, i8 %i.jx, i64 1
  %i.kc = insertelement <4 x i8> %i.kb, i8 %i.jy, i64 2
  %i.kd = insertelement <4 x i8> %i.kc, i8 %i.jz, i64 3
  %i.ke = zext <4 x i8> %i.jf to <4 x i16>
  %i.kf = zext <4 x i8> %i.jr to <4 x i16>
  %i.kg = shl nuw <4 x i16> %i.kf, splat (i16 8)
  %i.kh = and <4 x i16> %i.kg, splat (i16 3840)
  %i.ki = or disjoint <4 x i16> %i.kh, %i.ke
  %i.kj = shl nuw nsw i64 %index54, 2
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.kj
  %i.kl = lshr <4 x i8> %i.jr, splat (i8 4)
  %i.km = zext nneg <4 x i8> %i.kl to <4 x i16>
  %i.kn = zext <4 x i8> %i.kd to <4 x i16>
  %i.ko = shl nuw nsw <4 x i16> %i.kn, splat (i16 4)
  %i.kp = or disjoint <4 x i16> %i.ko, %i.km
  %interleaved.vec55 = shufflevector <4 x i16> %i.ki, <4 x i16> %i.kp, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec55, ptr %i.kk, align 2, !tbaa !131, !alias.scope !2958, !noalias !2957
  %index.next56 = add nuw i64 %index54, 4         ; 2 uses
  %i.kq = icmp eq i64 %index.next56, 128
  br i1 %i.kq, label %mlkem_poly_frombytes.exit.3, label %vector.body53, !llvm.loop !2949

mlk_poly_frombytes_native.exit.thread.i.3:        ; preds = %mlkem_poly_frombytes.exit.2
  tail call void @mlkem_nttfrombytes_avx2_asm(ptr noundef nonnull %i.ii, ptr noundef nonnull %i.ij) #46
  br label %mlkem_poly_frombytes.exit.3

mlk_poly_frombytes_native.exit.i.3:               ; preds = %vector.memcheck48, %mlk_poly_frombytes_native.exit.i.3
  %indvars.iv.i.i.3 = phi i64 [ %indvars.iv.next.i.i.3, %mlk_poly_frombytes_native.exit.i.3 ], [ 0, %vector.memcheck48 ] ; 3 uses
  %i.kr = mul nuw nsw i64 %indvars.iv.i.i.3, 3
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.kr ; 3 uses
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !76
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 1
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !76  ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ks, i64 2
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !76
  %i.ky = zext i8 %i.kt to i16
  %i.kz = zext i8 %i.kv to i16
  %i.la = shl nuw i16 %i.kz, 8
  %i.lb = and i16 %i.la, 3840
  %i.lc = or disjoint i16 %i.lb, %i.ky
  %.idx.i.i.3 = shl nuw nsw i64 %indvars.iv.i.i.3, 2
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ii, i64 %.idx.i.i.3 ; 2 uses
  store i16 %i.lc, ptr %i.ld, align 2, !tbaa !131
  %i.le = lshr i8 %i.kv, 4
  %i.lf = zext nneg i8 %i.le to i16
  %i.lg = zext i8 %i.kx to i16
  %i.lh = shl nuw nsw i16 %i.lg, 4
  %i.li = or disjoint i16 %i.lh, %i.lf
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ld, i64 2
  store i16 %i.li, ptr %i.lj, align 2, !tbaa !131
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.3, 1 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, 128
  br i1 %exitcond.not.i.i.3, label %mlkem_poly_frombytes.exit.3, label %mlk_poly_frombytes_native.exit.i.3, !llvm.loop !2950

mlkem_poly_frombytes.exit.3:                      ; preds = %vector.body53, %mlk_poly_frombytes_native.exit.i.3, %mlk_poly_frombytes_native.exit.thread.i.3
  ret void
}

declare void @mlkem_poly_compress_d11_avx2_asm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @mlkem_poly_compress_d5_avx2_asm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @mlkem_poly_decompress_d11_avx2_asm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @mlkem_poly_decompress_d5_avx2_asm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @aesni_gcm_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @aesni_gcm_decrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal fastcc void @gcm_mul64_nohw(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #14 {
bb.a:
  %i.a = and i64 %2, 1229782938247303440
  %i.b = and i64 %2, 2459565876494606880
  %i.c = and i64 %2, 4919131752989213760
  %i.d = and i64 %2, -8608480567731124096
  %i.e = and i64 %3, 1229782938247303441
  %i.f = and i64 %3, 2459565876494606882
  %i.g = and i64 %3, 4919131752989213764
  %i.h = and i64 %3, -8608480567731124088
  %i.i = zext nneg i64 %i.a to i128               ; 4 uses
  %i.j = zext nneg i64 %i.e to i128               ; 4 uses
  %i.k = mul nuw nsw i128 %i.j, %i.i
  %i.l = zext nneg i64 %i.b to i128               ; 4 uses
  %i.m = zext i64 %i.h to i128                    ; 4 uses
  %i.n = mul nuw nsw i128 %i.m, %i.l
  %i.o = xor i128 %i.k, %i.n
  %i.p = zext nneg i64 %i.c to i128               ; 4 uses
  %i.q = zext nneg i64 %i.g to i128               ; 4 uses
  %i.r = mul nuw nsw i128 %i.q, %i.p
  %i.s = xor i128 %i.o, %i.r
  %i.t = zext i64 %i.d to i128                    ; 4 uses
  %i.u = zext nneg i64 %i.f to i128               ; 4 uses
  %i.v = mul nuw nsw i128 %i.u, %i.t
  %i.w = xor i128 %i.s, %i.v                      ; 2 uses
  %i.x = mul nuw nsw i128 %i.u, %i.i
  %i.y = mul nuw nsw i128 %i.j, %i.l
  %i.z = xor i128 %i.x, %i.y
  %i.aa = mul nuw nsw i128 %i.m, %i.p
  %i.ab = xor i128 %i.z, %i.aa
  %i.ac = mul nuw nsw i128 %i.q, %i.t
  %i.ad = xor i128 %i.ab, %i.ac                   ; 2 uses
  %i.ae = mul nuw nsw i128 %i.q, %i.i
  %i.af = mul nuw nsw i128 %i.u, %i.l
  %i.ag = xor i128 %i.ae, %i.af
  %i.ah = mul nuw nsw i128 %i.j, %i.p
  %i.ai = xor i128 %i.ag, %i.ah
  %i.aj = mul nuw nsw i128 %i.m, %i.t
  %i.ak = xor i128 %i.ai, %i.aj                   ; 2 uses
  %i.al = mul nuw nsw i128 %i.m, %i.i
  %i.am = mul nuw nsw i128 %i.q, %i.l
  %i.an = xor i128 %i.al, %i.am
  %i.ao = mul nuw nsw i128 %i.u, %i.p
  %i.ap = xor i128 %i.an, %i.ao
  %i.aq = mul nuw nsw i128 %i.j, %i.t
  %i.ar = xor i128 %i.ap, %i.aq                   ; 2 uses
  %i.as = and i64 %2, 1
  %i.at = icmp eq i64 %i.as, 0
  %i.au = select i1 %i.at, i64 0, i64 %3
  %i.av = zext i64 %i.au to i128
  %.mask = and i64 %2, 2
  %isneg.not = icmp eq i64 %.mask, 0
  %i.aw = select i1 %isneg.not, i64 0, i64 %3
  %i.ax = zext i64 %i.aw to i128
  %i.ay = shl nuw nsw i128 %i.ax, 1
  %i.az = xor i128 %i.ay, %i.av
  %.mask63 = and i64 %2, 4
  %isneg.not64 = icmp eq i64 %.mask63, 0
  %i.ba = select i1 %isneg.not64, i64 0, i64 %3
  %i.bb = zext i64 %i.ba to i128
  %i.bc = shl nuw nsw i128 %i.bb, 2
  %i.bd = xor i128 %i.az, %i.bc
  %.mask65 = and i64 %2, 8
  %isneg.not66 = icmp eq i64 %.mask65, 0
  %i.be = select i1 %isneg.not66, i64 0, i64 %3
  %i.bf = zext i64 %i.be to i128
  %i.bg = shl nuw nsw i128 %i.bf, 3
  %i.bh = xor i128 %i.bd, %i.bg                   ; 2 uses
  %i.bi = trunc i128 %i.w to i64
  %i.bj = and i64 %i.bi, 1229782938247303441
  %i.bk = trunc i128 %i.ad to i64
  %i.bl = and i64 %i.bk, 2459565876494606882
  %i.bm = or disjoint i64 %i.bj, %i.bl
  %i.bn = trunc i128 %i.ak to i64
  %i.bo = and i64 %i.bn, 4919131752989213764
  %i.bp = or disjoint i64 %i.bm, %i.bo
  %i.bq = trunc i128 %i.ar to i64
  %i.br = and i64 %i.bq, -8608480567731124088
  %i.bs = or disjoint i64 %i.bp, %i.br
  %i.bt = trunc i128 %i.bh to i64
  %i.bu = xor i64 %i.bs, %i.bt
  store i64 %i.bu, ptr %0, align 8, !tbaa !80
  %i.bv = lshr i128 %i.w, 64
  %i.bw = trunc nuw nsw i128 %i.bv to i64
  %i.bx = and i64 %i.bw, 1229782938247303441
  %i.by = lshr i128 %i.ad, 64
  %i.bz = trunc nuw nsw i128 %i.by to i64
  %i.ca = and i64 %i.bz, 2459565876494606882
  %i.cb = or disjoint i64 %i.bx, %i.ca
  %i.cc = lshr i128 %i.ak, 64
  %i.cd = trunc nuw nsw i128 %i.cc to i64
  %i.ce = and i64 %i.cd, 4919131752989213764
  %i.cf = or disjoint i64 %i.cb, %i.ce
  %i.cg = lshr i128 %i.ar, 64
  %i.ch = trunc nuw nsw i128 %i.cg to i64
  %i.ci = and i64 %i.ch, -8608480567731124088
  %i.cj = or disjoint i64 %i.cf, %i.ci
  %i.ck = lshr i128 %i.bh, 64
  %i.cl = trunc nuw nsw i128 %i.ck to i64
  %i.cm = xor i64 %i.cj, %i.cl
  store i64 %i.cm, ptr %1, align 8, !tbaa !80
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sig_ml_dsa_44_init() #0 {
bb.a:
  store i32 994, ptr @sig_ml_dsa_44_storage, align 8, !tbaa !366
  store ptr @kOIDMLDSA44, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_44_storage, i64 8), align 8, !tbaa !643
  store i8 9, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_44_storage, i64 16), align 8, !tbaa !644
  store ptr @.str.114, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_44_storage, i64 24), align 8, !tbaa !645
  store i64 1312, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_44_storage, i64 32), align 8, !tbaa !408
  store i64 2560, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_44_storage, i64 40), align 8, !tbaa !410
  store i64 2420, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_44_storage, i64 48), align 8, !tbaa !620
  store i64 32, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_44_storage, i64 56), align 8, !tbaa !416
  store i64 32, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_44_storage, i64 64), align 8, !tbaa !438
  store i64 64, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_44_storage, i64 72), align 8, !tbaa !621
  tail call void @CRYPTO_once(ptr noundef nonnull @sig_ml_dsa_44_method_once, ptr noundef nonnull @sig_ml_dsa_44_method_init) #46
  store ptr @sig_ml_dsa_44_method_storage, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_44_storage, i64 80), align 8, !tbaa !417
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @sig_ml_dsa_44_method_init() #16 {
bb.a:
  store ptr @ml_dsa_44_keypair, ptr @sig_ml_dsa_44_method_storage, align 8, !tbaa !626
  store ptr @ml_dsa_44_keypair_internal, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_44_method_storage, i64 8), align 8, !tbaa !422
  store ptr @ml_dsa_44_sign, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_44_method_storage, i64 16), align 8, !tbaa !627
  store ptr @ml_dsa_extmu_44_sign, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_44_method_storage, i64 24), align 8, !tbaa !628
  store ptr @ml_dsa_44_verify, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_44_method_storage, i64 32), align 8, !tbaa !629
  store ptr @ml_dsa_extmu_44_verify, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_44_method_storage, i64 40), align 8, !tbaa !630
  store ptr @ml_dsa_44_pack_pk_from_sk, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_44_method_storage, i64 48), align 8, !tbaa !419
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sig_ml_dsa_65_init() #0 {
bb.a:
  store i32 995, ptr @sig_ml_dsa_65_storage, align 8, !tbaa !366
  store ptr @kOIDMLDSA65, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_65_storage, i64 8), align 8, !tbaa !643
  store i8 9, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_65_storage, i64 16), align 8, !tbaa !644
  store ptr @.str.115, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_65_storage, i64 24), align 8, !tbaa !645
  store i64 1952, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_65_storage, i64 32), align 8, !tbaa !408
  store i64 4032, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_65_storage, i64 40), align 8, !tbaa !410
  store i64 3309, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_65_storage, i64 48), align 8, !tbaa !620
  store i64 32, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_65_storage, i64 56), align 8, !tbaa !416
  store i64 32, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_65_storage, i64 64), align 8, !tbaa !438
  store i64 64, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_65_storage, i64 72), align 8, !tbaa !621
  tail call void @CRYPTO_once(ptr noundef nonnull @sig_ml_dsa_65_method_once, ptr noundef nonnull @sig_ml_dsa_65_method_init) #46
  store ptr @sig_ml_dsa_65_method_storage, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_65_storage, i64 80), align 8, !tbaa !417
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @sig_ml_dsa_65_method_init() #16 {
bb.a:
  store ptr @ml_dsa_65_keypair, ptr @sig_ml_dsa_65_method_storage, align 8, !tbaa !626
  store ptr @ml_dsa_65_keypair_internal, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_65_method_storage, i64 8), align 8, !tbaa !422
  store ptr @ml_dsa_65_sign, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_65_method_storage, i64 16), align 8, !tbaa !627
  store ptr @ml_dsa_extmu_65_sign, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_65_method_storage, i64 24), align 8, !tbaa !628
  store ptr @ml_dsa_65_verify, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_65_method_storage, i64 32), align 8, !tbaa !629
  store ptr @ml_dsa_extmu_65_verify, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_65_method_storage, i64 40), align 8, !tbaa !630
  store ptr @ml_dsa_65_pack_pk_from_sk, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_65_method_storage, i64 48), align 8, !tbaa !419
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sig_ml_dsa_87_init() #0 {
bb.a:
  store i32 996, ptr @sig_ml_dsa_87_storage, align 8, !tbaa !366
  store ptr @kOIDMLDSA87, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_87_storage, i64 8), align 8, !tbaa !643
  store i8 9, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_87_storage, i64 16), align 8, !tbaa !644
  store ptr @.str.116, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_87_storage, i64 24), align 8, !tbaa !645
  store i64 2592, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_87_storage, i64 32), align 8, !tbaa !408
  store i64 4896, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_87_storage, i64 40), align 8, !tbaa !410
  store i64 4627, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_87_storage, i64 48), align 8, !tbaa !620
  store i64 32, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_87_storage, i64 56), align 8, !tbaa !416
  store i64 32, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_87_storage, i64 64), align 8, !tbaa !438
  store i64 64, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_87_storage, i64 72), align 8, !tbaa !621
  tail call void @CRYPTO_once(ptr noundef nonnull @sig_ml_dsa_87_method_once, ptr noundef nonnull @sig_ml_dsa_87_method_init) #46
  store ptr @sig_ml_dsa_87_method_storage, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_87_storage, i64 80), align 8, !tbaa !417
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @sig_ml_dsa_87_method_init() #16 {
bb.a:
  store ptr @ml_dsa_87_keypair, ptr @sig_ml_dsa_87_method_storage, align 8, !tbaa !626
  store ptr @ml_dsa_87_keypair_internal, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_87_method_storage, i64 8), align 8, !tbaa !422
  store ptr @ml_dsa_87_sign, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_87_method_storage, i64 16), align 8, !tbaa !627
  store ptr @ml_dsa_extmu_87_sign, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_87_method_storage, i64 24), align 8, !tbaa !628
  store ptr @ml_dsa_87_verify, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_87_method_storage, i64 32), align 8, !tbaa !629
  store ptr @ml_dsa_extmu_87_verify, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_87_method_storage, i64 40), align 8, !tbaa !630
  store ptr @ml_dsa_87_pack_pk_from_sk, ptr getelementptr inbounds nuw (i8, ptr @sig_ml_dsa_87_method_storage, i64 48), align 8, !tbaa !419
  ret void
}

declare i32 @CRYPTO_set_thread_local(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @rand_thread_local_state_free(ptr noundef %0) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @CRYPTO_STATIC_MUTEX_lock_write(ptr noundef nonnull @thread_local_states_list_lock) #46
  %.b.i = load i1, ptr @thread_local_drbg_shutdown_started, align 4
  br i1 %.b.i, label %thread_local_list_delete_node.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr @thread_states_list_head, align 8, !tbaa !480
  %i.c = icmp eq ptr %i.b, %0
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !493  ; 2 uses
  store ptr %i.e, ptr @thread_states_list_head, align 8, !tbaa !480
  br label %._crit_edge.i

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !492  ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !493 ; 3 uses
  br i1 %.not.i, label %._crit_edge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  store ptr %.pre.i, ptr %i.h, align 8, !tbaa !493
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.f, %bb.e, %bb.d
  %i.i = phi ptr [ %i.e, %bb.d ], [ %.pre.i, %bb.f ], [ %.pre.i, %bb.e ] ; 2 uses
  %.not12.i = icmp eq ptr %i.i, null
  br i1 %.not12.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !492
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 328
  store ptr %i.k, ptr %i.l, align 8, !tbaa !492
  br label %bb.h

thread_local_list_delete_node.exit:               ; preds = %bb.b
  tail call void @CRYPTO_STATIC_MUTEX_unlock_write(ptr noundef nonnull @thread_local_states_list_lock) #46
  br label %bb.k

bb.h:                                             ; preds = %bb.g, %._crit_edge.i
  tail call void @CRYPTO_STATIC_MUTEX_unlock_write(ptr noundef nonnull @thread_local_states_list_lock) #46
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !483  ; 3 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !486
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !497
  tail call void %i.r(ptr noundef nonnull %i.n) #46
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !483
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.s = phi ptr [ %.pre, %bb.i ], [ null, %bb.h ]
  tail call void @OPENSSL_free(ptr noundef %i.s) #46
  tail call void @OPENSSL_free(ptr noundef nonnull %0) #46
  br label %bb.k

bb.k:                                             ; preds = %thread_local_list_delete_node.exit, %bb.a, %bb.j
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rand_bytes_core(ptr noundef nonnull %0, ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef range(i32 0, 2) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [48 x i8], align 16               ; 8 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca [32 x i8], align 16               ; 9 uses
  %i.e = alloca [48 x i8], align 16               ; 7 uses
  %i.f = alloca [48 x i8], align 16               ; 6 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #49
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  store i64 0, ptr %i.c, align 8, !tbaa !80
  %i.g = call i32 @CRYPTO_get_ube_generation_number(ptr noundef nonnull %i.c) #46
end_hunk_0
