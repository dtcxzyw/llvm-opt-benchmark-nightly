Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/bcm?download=true
inline.NumInlined: 6926
inline.NumDeleted: 1212
loop-unroll.NumCompletelyUnrolled: 331
loop-unroll.NumRuntimeUnrolled: 163
loop-unroll.NumUnrolled: 550
begin_hunk_0_@mldsa44_verify_internal:bb.a

bb.n:                                             ; preds = %.lr.ph38.i
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 1 ; 2 uses
  %exitcond48.not.i = icmp eq i64 %indvars.iv.next46.i, 80
  br i1 %exitcond48.not.i, label %mldsa44_sig_unpack_hints.exit, label %.lr.ph38.i, !llvm.loop !2102

.lr.ph38.i:                                       ; preds = %bb.n, %.lr.ph38.preheader.i
  %indvars.iv45.i = phi i64 [ %i.ks, %.lr.ph38.preheader.i ], [ %indvars.iv.next46.i, %bb.n ] ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv45.i
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !78
  %.not.i94 = icmp eq i8 %i.ku, 0
  br i1 %.not.i94, label %bb.n, label %mldsa44_sig_unpack_hints.exit.thread

mldsa44_sig_unpack_hints.exit:                    ; preds = %bb.n, %._crit_edge.i
  %i.kv = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !75
  %i.kw = and i32 %i.kv, 32
  %.not.i.i98 = icmp eq i32 %i.kw, 0
  br i1 %.not.i.i98, label %mld_poly_use_hint_88_native.exit.i, label %mld_poly_use_hint_88_native.exit.thread.i

mld_poly_use_hint_88_native.exit.thread.i:        ; preds = %mldsa44_sig_unpack_hints.exit
  call void @mldsa_poly_use_hint_88_avx2_asm(ptr noundef nonnull %13, ptr noundef nonnull %14) #46
  br label %mldsa44_poly_use_hint.exit

mld_poly_use_hint_88_native.exit.i:               ; preds = %mldsa44_sig_unpack_hints.exit, %mld_use_hint44.exit.i.i
  %indvars.iv.i.i99 = phi i64 [ %indvars.iv.next.i.i101, %mld_use_hint44.exit.i.i ], [ 0, %mldsa44_sig_unpack_hints.exit ] ; 3 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %indvars.iv.i.i99 ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !75 ; 2 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %indvars.iv.i.i99
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !75
  %i.lb = add nsw i32 %i.ky, 127
  %i.lc = ashr i32 %i.lb, 7
  %i.ld = mul nsw i32 %i.lc, 11275
  %i.le = add nsw i32 %i.ld, 8388608
  %i.lf = ashr i32 %i.le, 24                      ; 2 uses
  %i.lg = sub nsw i32 43, %i.lf
  %i.lh = sext i32 %i.lg to i64
  %i.li = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.lh) #46, !srcloc !451
  %i.lj = lshr i64 %i.li, 31
  %i.lk = trunc i64 %i.lj to i32
  %i.ll = call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.lk) #46, !srcloc !452
  %i.lm = xor i32 %i.ll, -1
  %i.ln = and i32 %i.lf, %i.lm                    ; 6 uses
  %.neg.i.i.i.i100 = mul i32 %i.ln, -190464
  %i.lo = add i32 %.neg.i.i.i.i100, %i.ky         ; 4 uses
  %i.lp = sub nsw i32 4190208, %i.lo
  %i.lq = sext i32 %i.lp to i64
  %i.lr = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.lq) #46, !srcloc !451
  %i.ls = lshr i64 %i.lr, 31
  %i.lt = trunc i64 %i.ls to i32
  %i.lu = call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.lt) #46, !srcloc !452
  %i.lv = icmp eq i32 %i.la, 0
  br i1 %i.lv, label %mld_use_hint44.exit.i.i, label %bb.o

bb.o:                                             ; preds = %mld_poly_use_hint_88_native.exit.i
  %i.lw = add nsw i32 %i.lo, -8380417
  %i.lx = xor i32 %i.lw, %i.lo
  %i.ly = and i32 %i.lx, %i.lu
  %i.lz = xor i32 %i.ly, %i.lo
  %i.ma = icmp sgt i32 %i.lz, 0
  br i1 %i.ma, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.mb = icmp eq i32 %i.ln, 43
  %i.mc = add nsw i32 %i.ln, 1
  %i.md = select i1 %i.mb, i32 0, i32 %i.mc
  br label %mld_use_hint44.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.me = icmp eq i32 %i.ln, 0
  %i.mf = add nsw i32 %i.ln, -1
  %i.mg = select i1 %i.me, i32 43, i32 %i.mf
  br label %mld_use_hint44.exit.i.i

mld_use_hint44.exit.i.i:                          ; preds = %bb.q, %bb.p, %mld_poly_use_hint_88_native.exit.i
  %.0.i.i.i = phi i32 [ %i.mg, %bb.q ], [ %i.md, %bb.p ], [ %i.ln, %mld_poly_use_hint_88_native.exit.i ]
  store i32 %.0.i.i.i, ptr %i.kx, align 4, !tbaa !75
  %indvars.iv.next.i.i101 = add nuw nsw i64 %indvars.iv.i.i99, 1 ; 2 uses
  %exitcond.not.i.i102 = icmp eq i64 %indvars.iv.next.i.i101, 256
  br i1 %exitcond.not.i.i102, label %mldsa44_poly_use_hint.exit, label %mld_poly_use_hint_88_native.exit.i, !llvm.loop !2103

mldsa44_poly_use_hint.exit:                       ; preds = %mld_use_hint44.exit.i.i, %mld_poly_use_hint_88_native.exit.thread.i
  %i.mh = mul nuw nsw i64 %indvars.iv, 192
  %i.mi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.mh
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %mldsa44_poly_use_hint.exit
  %indvars.iv.i.i103 = phi i64 [ 0, %mldsa44_poly_use_hint.exit ], [ %indvars.iv.next.i.i105, %bb.r ] ; 3 uses
  %.idx.i.i104 = shl nuw nsw i64 %indvars.iv.i.i103, 4
  %i.mj = getelementptr inbounds nuw i8, ptr %13, i64 %.idx.i.i104 ; 4 uses
  %i.mk = load i32, ptr %i.mj, align 16, !tbaa !75
  %i.ml = mul nuw nsw i64 %indvars.iv.i.i103, 3
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.ml ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mj, i64 4
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !75 ; 2 uses
  %i.mp = shl i32 %i.mo, 6
  %i.mq = or i32 %i.mp, %i.mk
  %i.mr = trunc i32 %i.mq to i8
  store i8 %i.mr, ptr %i.mm, align 1, !tbaa !78
  %i.ms = lshr i32 %i.mo, 2
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mm, i64 1
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.mv = load i32, ptr %i.mu, align 8, !tbaa !75 ; 2 uses
  %i.mw = shl i32 %i.mv, 4
  %i.mx = or i32 %i.mw, %i.ms
  %i.my = trunc i32 %i.mx to i8
  store i8 %i.my, ptr %i.mt, align 1, !tbaa !78
  %i.mz = lshr i32 %i.mv, 4
  %i.na = getelementptr inbounds nuw i8, ptr %i.mm, i64 2
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mj, i64 12
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !75
  %i.nd = shl i32 %i.nc, 2
  %i.ne = or i32 %i.nd, %i.mz
  %i.nf = trunc i32 %i.ne to i8
  store i8 %i.nf, ptr %i.na, align 1, !tbaa !78
  %indvars.iv.next.i.i105 = add nuw nsw i64 %indvars.iv.i.i103, 1 ; 2 uses
  %exitcond.not.i.i106 = icmp eq i64 %indvars.iv.next.i.i105, 64
  br i1 %exitcond.not.i.i106, label %mldsa44_polyw1_pack.exit, label %bb.r, !llvm.loop !37

mldsa44_polyw1_pack.exit:                         ; preds = %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %mld_ct_memcmp.exit, label %bb.i, !llvm.loop !2104

mld_ct_memcmp.exit:                               ; preds = %mldsa44_polyw1_pack.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %7, i8 0, i64 200, i1 false)
  %i.ng = getelementptr inbounds nuw i8, ptr %7, i64 216
  store i64 0, ptr %i.ng, align 8, !tbaa !446
  %i.nh = getelementptr inbounds nuw i8, ptr %7, i64 393
  store i8 0, ptr %i.nh, align 1, !tbaa !447
  %i.ni = getelementptr inbounds nuw i8, ptr %7, i64 200
  store i64 136, ptr %i.ni, align 8, !tbaa !448
  %i.nj = getelementptr inbounds nuw i8, ptr %7, i64 208
  store i64 0, ptr %i.nj, align 8, !tbaa !449
  %i.nk = getelementptr inbounds nuw i8, ptr %7, i64 392
  store i8 31, ptr %i.nk, align 8, !tbaa !450
  %i.nl = call i32 @KeccakSponge_Absorb(ptr noundef nonnull %7, ptr noundef nonnull readonly %i.b, i64 noundef range(i64 1, 0) 64) ; 0 uses
  %i.nm = call i32 @KeccakSponge_Absorb(ptr noundef nonnull %7, ptr noundef nonnull readonly %i.a, i64 noundef range(i64 1, 0) 768) ; 0 uses
  %i.nn = call i32 @SHAKE_Squeeze(ptr noundef nonnull %i.d, ptr noundef nonnull %7, i64 noundef range(i64 32, 681) 32) ; 0 uses
  call void @OPENSSL_cleanse(ptr noundef nonnull %7, i64 noundef 400) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  %i.no = load <32 x i8>, ptr %i.c, align 32, !tbaa !78
  %i.np = load <32 x i8>, ptr %i.d, align 32, !tbaa !78
  %i.nq = xor <32 x i8> %i.np, %i.no              ; 2 uses
  %i.nr = call i8 @llvm.vector.reduce.or.v32i8(<32 x i8> %i.nq)
  %i.ns = call i8 @llvm.vector.reduce.xor.v32i8(<32 x i8> %i.nq) ; 2 uses
  %i.nt = zext i8 %i.nr to i64
  %i.nu = sub nsw i64 0, %i.nt
  %i.nv = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.nu) #46, !srcloc !451
  %i.nw = lshr i64 %i.nv, 32
  %i.nx = trunc i64 %i.nw to i8
  %i.ny = xor i8 %i.ns, %i.nx
  %i.nz = call i8 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i8 %i.ny) #46, !srcloc !453
  %i.oa = icmp eq i8 %i.nz, %i.ns
  %i.ob = select i1 %i.oa, i32 0, i32 -6
  br label %mldsa44_sig_unpack_hints.exit.thread

mldsa44_sig_unpack_hints.exit.thread:             ; preds = %._crit_edge52.i, %.lr.ph.i, %.lr.ph38.i, %bb.a, %mld_ct_memcmp.exit
  %.076 = phi i32 [ %i.ob, %mld_ct_memcmp.exit ], [ -6, %bb.a ], [ -6, %.lr.ph38.i ], [ -6, %.lr.ph.i ], [ -6, %._crit_edge52.i ]
  call void @OPENSSL_cleanse(ptr noundef nonnull %14, i64 noundef 1024) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %13, i64 noundef 1024) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %12, i64 noundef 16384) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %11, i64 noundef 1024) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %10, i64 noundef 4096) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.d, i64 noundef 32) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.c, i64 noundef 32) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef 64) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 768) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret i32 %.076
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ml_dsa_extmu_44_verify_internal(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, i64 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 2420
  %i.b = icmp eq i64 %4, 64
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @mldsa44_verify_internal(ptr noundef %1, ptr noundef %3, i64 noundef 64, ptr noundef %5, i64 noundef %6, ptr noundef %0, i32 noundef 1)
  %i.d = icmp eq i32 %i.c, 0
  %i.e = zext i1 %i.d to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define noundef range(i32 0, 2) i32 @ml_dsa_65_keypair(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((128, 256)) %1, ptr noundef %2) #0 {
.split6:
  tail call fastcc void @rand_bytes_impl(i32 noundef 5, ptr noundef %2, i64 noundef 32, ptr noundef nonnull @RAND_bytes.kZeroPredResistance, i32 noundef 0)
  tail call fastcc void @mldsa65_keypair_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mldsa65_keypair_internal(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((128, 256)) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.keccak_ctx_st, align 8      ; 11 uses
  %4 = alloca %struct.keccak_ctx_st, align 8      ; 11 uses
  %i.a = alloca [128 x i8], align 32              ; 9 uses
  %i.b = alloca [34 x i8], align 32               ; 7 uses
  %i.c = alloca [64 x i8], align 32               ; 5 uses
  %5 = alloca [1 x %struct.mld_polyvecl65], align 32 ; 12 uses
  %6 = alloca [1 x %struct.mld_polyveck65], align 32 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(32) %2, i64 32, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 6, ptr %i.d, align 32, !tbaa !78
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  store i8 5, ptr %i.e, align 1, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %4, i8 0, i64 200, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 216
  store i64 0, ptr %i.f, align 8, !tbaa !446
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 393
  store i8 0, ptr %i.g, align 1, !tbaa !447
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 200
  store i64 136, ptr %i.h, align 8, !tbaa !448
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 208
  store i64 0, ptr %i.i, align 8, !tbaa !449
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 392
  store i8 31, ptr %i.j, align 8, !tbaa !450
  %i.k = call i32 @KeccakSponge_Absorb(ptr noundef nonnull %4, ptr noundef nonnull readonly %i.b, i64 noundef 34)
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %mld_shake256.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = call i32 @SHAKE_Final(ptr noundef nonnull %i.a, ptr noundef nonnull %4, i64 noundef 128) ; 0 uses
  br label %mld_shake256.exit

mld_shake256.exit:                                ; preds = %bb.a, %bb.b
  call void @OPENSSL_cleanse(ptr noundef nonnull %4, i64 noundef 400) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 1024 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 2048 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 3072 ; 4 uses
  call fastcc void @mldsa65_poly_uniform_eta_4x(ptr noundef nonnull %5, ptr noundef %i.o, ptr noundef %i.p, ptr noundef %i.q, ptr noundef nonnull readonly %i.n, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 2, i8 noundef zeroext 3)
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 4096 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 1024 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 2048 ; 4 uses
  call fastcc void @mldsa65_poly_uniform_eta_4x(ptr noundef %i.r, ptr noundef nonnull %6, ptr noundef %i.s, ptr noundef %i.t, ptr noundef nonnull readonly %i.n, i8 noundef zeroext 4, i8 noundef zeroext 5, i8 noundef zeroext 6, i8 noundef zeroext -1)
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 3072 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 4096 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 5120 ; 3 uses
  call fastcc void @mldsa65_poly_uniform_eta_4x(ptr noundef %i.t, ptr noundef %i.u, ptr noundef %i.v, ptr noundef %i.w, ptr noundef nonnull readonly %i.n, i8 noundef zeroext 7, i8 noundef zeroext 8, i8 noundef zeroext 9, i8 noundef zeroext 10)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 128
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %mld_shake256.exit
  %index = phi i64 [ 0, %mld_shake256.exit ], [ %index.next, %vector.body ] ; 4 uses
  %i.y = shl nuw nsw i64 %index, 3
  %i.z = shl i64 %index, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %wide.vec = load <8 x i32>, ptr %i.aa, align 32, !tbaa !75 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec2 = load <8 x i32>, ptr %i.ac, align 32, !tbaa !75 ; 2 uses
  %strided.vec3 = shufflevector <8 x i32> %wide.vec2, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec4 = shufflevector <8 x i32> %wide.vec2, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ad = sub <4 x i32> splat (i32 4), %strided.vec
  %i.ae = sub <4 x i32> splat (i32 4), %strided.vec3
  %i.af = shl <4 x i32> %strided.vec1, splat (i32 4)
  %i.ag = shl <4 x i32> %strided.vec4, splat (i32 4)
  %i.ah = sub <4 x i32> splat (i32 64), %i.af
  %i.ai = sub <4 x i32> splat (i32 64), %i.ag
  %i.aj = or <4 x i32> %i.ah, %i.ad
  %i.ak = or <4 x i32> %i.ai, %i.ae
  %i.al = trunc <4 x i32> %i.aj to <4 x i8>
  %i.am = trunc <4 x i32> %i.ak to <4 x i8>
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store <4 x i8> %i.al, ptr %i.an, align 1, !tbaa !78
  store <4 x i8> %i.am, ptr %i.ao, align 1, !tbaa !78
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, 128
  br i1 %i.ap, label %mldsa65_polyeta_pack.exit.i.i, label %vector.body, !llvm.loop !2105

mldsa65_polyeta_pack.exit.i.i:                    ; preds = %vector.body
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 256
  br label %vector.body6

vector.body6:                                     ; preds = %vector.body6, %mldsa65_polyeta_pack.exit.i.i
  %index7 = phi i64 [ 0, %mldsa65_polyeta_pack.exit.i.i ], [ %index.next14, %vector.body6 ] ; 4 uses
  %i.ar = shl nuw nsw i64 %index7, 3
  %i.as = shl i64 %index7, 3
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.as
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %wide.vec8 = load <8 x i32>, ptr %i.at, align 32, !tbaa !75 ; 2 uses
  %strided.vec9 = shufflevector <8 x i32> %wide.vec8, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec10 = shufflevector <8 x i32> %wide.vec8, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec11 = load <8 x i32>, ptr %i.av, align 32, !tbaa !75 ; 2 uses
  %strided.vec12 = shufflevector <8 x i32> %wide.vec11, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec13 = shufflevector <8 x i32> %wide.vec11, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.aw = sub <4 x i32> splat (i32 4), %strided.vec9
  %i.ax = sub <4 x i32> splat (i32 4), %strided.vec12
  %i.ay = shl <4 x i32> %strided.vec10, splat (i32 4)
  %i.az = shl <4 x i32> %strided.vec13, splat (i32 4)
  %i.ba = sub <4 x i32> splat (i32 64), %i.ay
  %i.bb = sub <4 x i32> splat (i32 64), %i.az
  %i.bc = or <4 x i32> %i.ba, %i.aw
  %i.bd = or <4 x i32> %i.bb, %i.ax
  %i.be = trunc <4 x i32> %i.bc to <4 x i8>
  %i.bf = trunc <4 x i32> %i.bd to <4 x i8>
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index7 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store <4 x i8> %i.be, ptr %i.bg, align 1, !tbaa !78
  store <4 x i8> %i.bf, ptr %i.bh, align 1, !tbaa !78
  %index.next14 = add nuw i64 %index7, 8          ; 2 uses
  %i.bi = icmp eq i64 %index.next14, 128
  br i1 %i.bi, label %mldsa65_polyeta_pack.exit.1.i.i, label %vector.body6, !llvm.loop !2106

mldsa65_polyeta_pack.exit.1.i.i:                  ; preds = %vector.body6
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 384
  br label %vector.body17

vector.body17:                                    ; preds = %vector.body17, %mldsa65_polyeta_pack.exit.1.i.i
  %index18 = phi i64 [ 0, %mldsa65_polyeta_pack.exit.1.i.i ], [ %index.next25, %vector.body17 ] ; 4 uses
  %i.bk = shl nuw nsw i64 %index18, 3
  %i.bl = shl i64 %index18, 3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bk
  %i.bn = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bl
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %wide.vec19 = load <8 x i32>, ptr %i.bm, align 32, !tbaa !75 ; 2 uses
  %strided.vec20 = shufflevector <8 x i32> %wide.vec19, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec21 = shufflevector <8 x i32> %wide.vec19, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec22 = load <8 x i32>, ptr %i.bo, align 32, !tbaa !75 ; 2 uses
  %strided.vec23 = shufflevector <8 x i32> %wide.vec22, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec24 = shufflevector <8 x i32> %wide.vec22, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bp = sub <4 x i32> splat (i32 4), %strided.vec20
  %i.bq = sub <4 x i32> splat (i32 4), %strided.vec23
  %i.br = shl <4 x i32> %strided.vec21, splat (i32 4)
  %i.bs = shl <4 x i32> %strided.vec24, splat (i32 4)
  %i.bt = sub <4 x i32> splat (i32 64), %i.br
  %i.bu = sub <4 x i32> splat (i32 64), %i.bs
  %i.bv = or <4 x i32> %i.bt, %i.bp
  %i.bw = or <4 x i32> %i.bu, %i.bq
  %i.bx = trunc <4 x i32> %i.bv to <4 x i8>
  %i.by = trunc <4 x i32> %i.bw to <4 x i8>
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bj, i64 %index18 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store <4 x i8> %i.bx, ptr %i.bz, align 1, !tbaa !78
  store <4 x i8> %i.by, ptr %i.ca, align 1, !tbaa !78
  %index.next25 = add nuw i64 %index18, 8         ; 2 uses
  %i.cb = icmp eq i64 %index.next25, 128
  br i1 %i.cb, label %mldsa65_polyeta_pack.exit.2.i.i, label %vector.body17, !llvm.loop !2107

mldsa65_polyeta_pack.exit.2.i.i:                  ; preds = %vector.body17
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 512
  br label %vector.body28

vector.body28:                                    ; preds = %vector.body28, %mldsa65_polyeta_pack.exit.2.i.i
  %index29 = phi i64 [ 0, %mldsa65_polyeta_pack.exit.2.i.i ], [ %index.next36, %vector.body28 ] ; 4 uses
  %i.cd = shl nuw nsw i64 %index29, 3
  %i.ce = shl i64 %index29, 3
  %i.cf = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.cd
  %i.cg = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ce
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %wide.vec30 = load <8 x i32>, ptr %i.cf, align 32, !tbaa !75 ; 2 uses
  %strided.vec31 = shufflevector <8 x i32> %wide.vec30, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec32 = shufflevector <8 x i32> %wide.vec30, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec33 = load <8 x i32>, ptr %i.ch, align 32, !tbaa !75 ; 2 uses
  %strided.vec34 = shufflevector <8 x i32> %wide.vec33, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec35 = shufflevector <8 x i32> %wide.vec33, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ci = sub <4 x i32> splat (i32 4), %strided.vec31
  %i.cj = sub <4 x i32> splat (i32 4), %strided.vec34
  %i.ck = shl <4 x i32> %strided.vec32, splat (i32 4)
  %i.cl = shl <4 x i32> %strided.vec35, splat (i32 4)
  %i.cm = sub <4 x i32> splat (i32 64), %i.ck
  %i.cn = sub <4 x i32> splat (i32 64), %i.cl
  %i.co = or <4 x i32> %i.cm, %i.ci
  %i.cp = or <4 x i32> %i.cn, %i.cj
  %i.cq = trunc <4 x i32> %i.co to <4 x i8>
  %i.cr = trunc <4 x i32> %i.cp to <4 x i8>
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cc, i64 %index29 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store <4 x i8> %i.cq, ptr %i.cs, align 1, !tbaa !78
  store <4 x i8> %i.cr, ptr %i.ct, align 1, !tbaa !78
  %index.next36 = add nuw i64 %index29, 8         ; 2 uses
  %i.cu = icmp eq i64 %index.next36, 128
  br i1 %i.cu, label %mldsa65_polyeta_pack.exit.3.i.i, label %vector.body28, !llvm.loop !2108

mldsa65_polyeta_pack.exit.3.i.i:                  ; preds = %vector.body28
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 640
  br label %vector.body39

vector.body39:                                    ; preds = %vector.body39, %mldsa65_polyeta_pack.exit.3.i.i
  %index40 = phi i64 [ 0, %mldsa65_polyeta_pack.exit.3.i.i ], [ %index.next47, %vector.body39 ] ; 4 uses
  %i.cw = shl nuw nsw i64 %index40, 3
end_hunk_0
begin_hunk_1_@ml_dsa_65_pack_pk_from_sk:bb.a
mld_poly_chknorm_native.exit.i.5.i.i:             ; preds = %mldsa_poly_chknorm.exit.4.i.i
  %i.em = call i32 @mldsa_poly_chknorm_avx2_asm(ptr noundef nonnull %i.ej, i32 noundef range(i32 3, 524169) 5) #46 ; 2 uses
  %.not.i.5.i.i = icmp eq i32 %i.em, -1
  br i1 %.not.i.5.i.i, label %mld_poly_chknorm_native.exit.thread.i.5.i.i.preheader, label %bb.g

bb.g:                                             ; preds = %mld_poly_chknorm_native.exit.i.5.i.i
  %i.en = zext i32 %i.em to i64
  %i.eo = sub nsw i64 0, %i.en
  %i.ep = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.eo) #46, !srcloc !451
  %i.eq = lshr i64 %i.ep, 32
  %i.er = trunc nuw i64 %i.eq to i32
  br label %mldsa65_polyveck_chknorm.exit.i

mld_poly_chknorm_native.exit.thread.i.5.i.i:      ; preds = %mld_poly_chknorm_native.exit.thread.i.5.i.i.preheader, %mld_poly_chknorm_native.exit.thread.i.5.i.i
  %indvars.iv.i.i.5.i.i = phi i64 [ %indvars.iv.next.i.i.5.i.i, %mld_poly_chknorm_native.exit.thread.i.5.i.i ], [ 0, %mld_poly_chknorm_native.exit.thread.i.5.i.i.preheader ] ; 2 uses
  %.08.i.i.5.i.i = phi i32 [ %i.fi, %mld_poly_chknorm_native.exit.thread.i.5.i.i ], [ 0, %mld_poly_chknorm_native.exit.thread.i.5.i.i.preheader ]
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.i.i.5.i.i
  %i.et = load i32, ptr %i.es, align 4, !tbaa !75 ; 4 uses
  %i.eu = sub nsw i32 0, %i.et
  %i.ev = sext i32 %i.et to i64
  %i.ew = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.ev) #46, !srcloc !451
  %i.ex = lshr i64 %i.ew, 31
  %i.ey = trunc i64 %i.ex to i32
  %i.ez = call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ey) #46, !srcloc !452
  %i.fa = xor i32 %i.et, %i.eu
  %i.fb = and i32 %i.ez, %i.fa
  %i.fc = xor i32 %i.fb, %i.et
  %i.fd = sub i32 4, %i.fc
  %i.fe = sext i32 %i.fd to i64
  %i.ff = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.fe) #46, !srcloc !451
  %i.fg = lshr i64 %i.ff, 31
  %i.fh = trunc i64 %i.fg to i32
  %i.fi = or i32 %.08.i.i.5.i.i, %i.fh            ; 2 uses
  %indvars.iv.next.i.i.5.i.i = add nuw nsw i64 %indvars.iv.i.i.5.i.i, 1 ; 2 uses
  %exitcond.not.i.i.5.i.i = icmp eq i64 %indvars.iv.next.i.i.5.i.i, 256
  br i1 %exitcond.not.i.i.5.i.i, label %mldsa65_polyveck_chknorm.exit.i, label %mld_poly_chknorm_native.exit.thread.i.5.i.i, !llvm.loop !34

mldsa65_polyveck_chknorm.exit.i:                  ; preds = %mld_poly_chknorm_native.exit.thread.i.5.i.i, %bb.g
  %.0.i.5.i.i = phi i32 [ %i.er, %bb.g ], [ %i.fi, %mld_poly_chknorm_native.exit.thread.i.5.i.i ]
  call fastcc void @mldsa_poly_ntt(ptr noundef nonnull %3)
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 1024
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.fj)
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 2048
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.fk)
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 3072
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.fl)
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 4096
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.fm)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %0, ptr noundef nonnull readonly align 32 dereferenceable(32) %i.a, i64 32, i1 false)
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 32
  call fastcc void @mld_compute_pack_t0_t165(ptr noundef nonnull %i.fn, ptr noundef nonnull %i.e, ptr noundef %3, ptr noundef %4, ptr noundef %i.a)
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 1536 ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %mldsa65_polyveck_chknorm.exit.i
  %index = phi i64 [ 0, %mldsa65_polyveck_chknorm.exit.i ], [ %index.next.1, %vector.body ] ; 4 uses
  %vec.phi = phi <16 x i8> [ zeroinitializer, %mldsa65_polyveck_chknorm.exit.i ], [ %i.gh, %vector.body ]
  %vec.phi43 = phi <16 x i8> [ zeroinitializer, %mldsa65_polyveck_chknorm.exit.i ], [ %i.gi, %vector.body ]
  %vec.phi44 = phi <16 x i8> [ zeroinitializer, %mldsa65_polyveck_chknorm.exit.i ], [ %i.gf, %vector.body ]
  %vec.phi45 = phi <16 x i8> [ zeroinitializer, %mldsa65_polyveck_chknorm.exit.i ], [ %i.gg, %vector.body ]
  %i.fp = getelementptr inbounds nuw i8, ptr %i.e, i64 %index ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %wide.load = load <16 x i8>, ptr %i.fp, align 32, !tbaa !78
  %wide.load46 = load <16 x i8>, ptr %i.fq, align 16, !tbaa !78
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 %index ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %wide.load47 = load <16 x i8>, ptr %i.fr, align 1, !tbaa !78
  %wide.load48 = load <16 x i8>, ptr %i.fs, align 1, !tbaa !78
  %i.ft = xor <16 x i8> %wide.load47, %wide.load  ; 2 uses
  %i.fu = xor <16 x i8> %wide.load48, %wide.load46 ; 2 uses
  %i.fv = or <16 x i8> %i.ft, %vec.phi44
  %i.fw = or <16 x i8> %i.fu, %vec.phi45
  %i.fx = xor <16 x i8> %i.ft, %vec.phi
  %i.fy = xor <16 x i8> %i.fu, %vec.phi43
  %index.next = or disjoint i64 %index, 32        ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.e, i64 %index.next ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %wide.load.1 = load <16 x i8>, ptr %i.fz, align 32, !tbaa !78
  %wide.load46.1 = load <16 x i8>, ptr %i.ga, align 16, !tbaa !78
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fo, i64 %index.next ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %wide.load47.1 = load <16 x i8>, ptr %i.gb, align 1, !tbaa !78
  %wide.load48.1 = load <16 x i8>, ptr %i.gc, align 1, !tbaa !78
  %i.gd = xor <16 x i8> %wide.load47.1, %wide.load.1 ; 2 uses
  %i.ge = xor <16 x i8> %wide.load48.1, %wide.load46.1 ; 2 uses
  %i.gf = or <16 x i8> %i.gd, %i.fv               ; 2 uses
  %i.gg = or <16 x i8> %i.ge, %i.fw               ; 2 uses
  %i.gh = xor <16 x i8> %i.gd, %i.fx              ; 2 uses
  %i.gi = xor <16 x i8> %i.ge, %i.fy              ; 2 uses
  %index.next.1 = add nuw nsw i64 %index, 64      ; 2 uses
  %i.gj = icmp eq i64 %index.next.1, 2496
  br i1 %i.gj, label %.split.i.i.i, label %vector.body, !llvm.loop !2116

.split.i.i.i:                                     ; preds = %vector.body
  %bin.rdx49 = or <16 x i8> %i.gg, %i.gf
  %i.gk = call i8 @llvm.vector.reduce.or.v16i8(<16 x i8> %bin.rdx49)
  %bin.rdx = xor <16 x i8> %i.gi, %i.gh
  %i.gl = call i8 @llvm.vector.reduce.xor.v16i8(<16 x i8> %bin.rdx) ; 2 uses
  %i.gm = zext i8 %i.gk to i64
  %i.gn = sub nsw i64 0, %i.gm
  %i.go = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.gn) #46, !srcloc !451
  %i.gp = lshr i64 %i.go, 32
  %i.gq = trunc i64 %i.gp to i8
  %i.gr = xor i8 %i.gl, %i.gq
  %i.gs = call i8 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i8 %i.gr) #46, !srcloc !453
  %i.gt = xor i8 %i.gs, %i.gl
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %2, i8 0, i64 200, i1 false)
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 216
  store i64 0, ptr %i.gu, align 8, !tbaa !446
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 393
  store i8 0, ptr %i.gv, align 1, !tbaa !447
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 200
  store i64 136, ptr %i.gw, align 8, !tbaa !448
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 208
  store i64 0, ptr %i.gx, align 8, !tbaa !449
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 392
  store i8 31, ptr %i.gy, align 8, !tbaa !450
  %i.gz = call i32 @KeccakSponge_Absorb(ptr noundef nonnull %2, ptr noundef nonnull readonly %0, i64 noundef 1952)
  %i.ha = icmp eq i32 %i.gz, 0
  br i1 %i.ha, label %mld_shake256.exit.i, label %bb.h

bb.h:                                             ; preds = %.split.i.i.i
  %i.hb = call i32 @SHAKE_Final(ptr noundef nonnull %i.c, ptr noundef nonnull %2, i64 noundef 64) ; 0 uses
  br label %mld_shake256.exit.i

mld_shake256.exit.i:                              ; preds = %bb.h, %.split.i.i.i
  call void @OPENSSL_cleanse(ptr noundef nonnull %2, i64 noundef 400) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  %i.hc = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load57 = load <16 x i8>, ptr %i.b, align 32, !tbaa !78
  %wide.load58 = load <16 x i8>, ptr %i.hc, align 16, !tbaa !78
  %i.hd = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %wide.load59 = load <16 x i8>, ptr %i.c, align 32, !tbaa !78
  %wide.load60 = load <16 x i8>, ptr %i.hd, align 16, !tbaa !78
  %i.he = xor <16 x i8> %wide.load59, %wide.load57 ; 2 uses
  %i.hf = xor <16 x i8> %wide.load60, %wide.load58 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.hh = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %wide.load57.1 = load <16 x i8>, ptr %i.hg, align 32, !tbaa !78
  %wide.load58.1 = load <16 x i8>, ptr %i.hh, align 16, !tbaa !78
  %i.hi = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.hj = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %wide.load59.1 = load <16 x i8>, ptr %i.hi, align 32, !tbaa !78
  %wide.load60.1 = load <16 x i8>, ptr %i.hj, align 16, !tbaa !78
  %i.hk = xor <16 x i8> %wide.load59.1, %wide.load57.1 ; 2 uses
  %i.hl = xor <16 x i8> %wide.load60.1, %wide.load58.1 ; 2 uses
  %i.hm = or <16 x i8> %i.hk, %i.he
  %i.hn = xor <16 x i8> %i.hk, %i.he
  %i.ho = or <16 x i8> %i.hf, %i.hm
  %bin.rdx64 = or <16 x i8> %i.ho, %i.hl
  %i.hp = call i8 @llvm.vector.reduce.or.v16i8(<16 x i8> %bin.rdx64)
  %i.hq = xor <16 x i8> %i.hf, %i.hn
  %bin.rdx63 = xor <16 x i8> %i.hq, %i.hl
  %i.hr = call i8 @llvm.vector.reduce.xor.v16i8(<16 x i8> %bin.rdx63) ; 2 uses
  %i.hs = zext i8 %i.hp to i64
  %i.ht = sub nsw i64 0, %i.hs
  %i.hu = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.ht) #46, !srcloc !451
  %i.hv = lshr i64 %i.hu, 32
  %i.hw = trunc i64 %i.hv to i8
  %i.hx = xor i8 %i.hr, %i.hw
  %i.hy = call i8 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i8 %i.hx) #46, !srcloc !453
  %i.hz = xor i8 %i.hy, %i.hr
  %i.ia = or i32 %.0.i.i.i, %i.j
  %i.ib = or i32 %i.ia, %.0.i.1.i.i
  %i.ic = or i32 %i.ib, %.0.i.2.i.i
  %i.id = or i32 %i.ic, %.0.i.3.i.i
  %i.ie = or i32 %i.id, %.0.i.4.i.i
  %i.if = or i32 %i.ie, %.0.i.5.i.i
  %i.ig = trunc i32 %i.if to i8
  %i.ih = or i8 %i.gt, %i.ig
  %i.ii = or i8 %i.ih, %i.hz
  %i.ij = call i8 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i8 %i.ii) #46, !srcloc !453
  %.not.i = icmp eq i8 %i.ij, 0                   ; 2 uses
  br i1 %.not.i, label %mldsa65_pk_from_sk.exit, label %bb.i

bb.i:                                             ; preds = %mld_shake256.exit.i
  call void @OPENSSL_cleanse(ptr noundef nonnull %0, i64 noundef 1952) #46
  br label %mldsa65_pk_from_sk.exit

mldsa65_pk_from_sk.exit:                          ; preds = %mld_shake256.exit.i, %bb.i
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.e, i64 noundef 2496) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %4, i64 noundef 6144) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %3, i64 noundef 5120) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.d, i64 noundef 32) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.c, i64 noundef 64) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef 64) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 32) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %i.ik = zext i1 %.not.i to i32
  ret i32 %i.ik
}

; Function Attrs: nounwind uwtable
define noundef range(i32 0, 2) i32 @ml_dsa_65_keypair_internal(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((128, 256)) %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  tail call fastcc void @mldsa65_keypair_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define noundef range(i32 0, 2) i32 @ml_dsa_65_sign(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6) #0 {
bb.a:
  %i.a = alloca [332 x i8], align 32              ; 7 uses
  %i.b = alloca [32 x i8], align 32               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  %i.c = icmp ugt i64 %6, 255
  br i1 %i.c, label %.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 32, !tbaa !78
  %i.d = trunc nuw i64 %6 to i8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.d, ptr %i.e, align 1, !tbaa !78
  %.not.i.i = icmp eq i64 %6, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.f, ptr noundef nonnull readonly align 1 dereferenceable(1) %5, i64 range(i64 1, 256) %6, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = add nuw nsw i64 %6, 2
  call fastcc void @rand_bytes_impl(i32 noundef 5, ptr noundef nonnull %i.b, i64 noundef 32, ptr noundef nonnull @RAND_bytes.kZeroPredResistance, i32 noundef 0)
  %i.h = call fastcc i32 @mldsa65_signature_internal(ptr noundef %1, ptr noundef readonly %3, i64 noundef %4, ptr noundef nonnull %i.a, i64 noundef %i.g, ptr noundef nonnull %i.b, ptr noundef readonly %0, i32 noundef 0)
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %mldsa65_signature.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.d, %bb.a
  call void @OPENSSL_cleanse(ptr noundef %1, i64 noundef 3309) #46
  br label %mldsa65_signature.exit

mldsa65_signature.exit:                           ; preds = %bb.d, %.thread.i
  %i.i = phi i1 [ true, %bb.d ], [ false, %.thread.i ] ; 2 uses
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef 32) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 332) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %spec.select11 = select i1 %i.i, i64 3309, i64 0
  store i64 %spec.select11, ptr %2, align 8, !tbaa !82
  %spec.select = zext i1 %i.i to i32
  ret i32 %spec.select
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ml_dsa_extmu_65_sign(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4) #0 {
bb.a:
  %i.a = alloca [32 x i8], align 32               ; 5 uses
  %i.b = icmp eq i64 %4, 64
  br i1 %i.b, label %bb.b, label %.split

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call fastcc void @rand_bytes_impl(i32 noundef 5, ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull @RAND_bytes.kZeroPredResistance, i32 noundef 0)
  %i.c = call fastcc i32 @mldsa65_signature_internal(ptr noundef %1, ptr noundef readonly %3, i64 noundef 64, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.a, ptr noundef readonly %0, i32 noundef 1)
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 32) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %i.d = icmp eq i32 %i.c, 0                      ; 2 uses
  %i.e = select i1 %i.d, i64 3309, i64 0
  %spec.select = zext i1 %i.d to i32
  br label %.split

.split:                                           ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %phi.call = phi i32 [ %spec.select, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink, ptr %2, align 8, !tbaa !82
  ret i32 %phi.call
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ml_dsa_65_sign_internal(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, i64 noundef %6, ptr nofree noundef readonly captures(address_is_null) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @mldsa65_signature_internal(ptr noundef %1, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, ptr noundef %0, i32 noundef 0)
  %i.b = icmp eq i32 %i.a, 0                      ; 2 uses
  %i.c = select i1 %i.b, i64 3309, i64 0
  store i64 %i.c, ptr %2, align 8, !tbaa !82
  %i.d = zext i1 %i.b to i32
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -4, 1) i32 @mldsa65_signature_internal(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr nofree noundef readonly captures(none) %6, i32 noundef range(i32 0, 2) %7) unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.keccak_ctx_st, align 8      ; 12 uses
  %i.a = alloca [680 x i8], align 32              ; 6 uses
  %i.b = alloca [66 x i8], align 32               ; 6 uses
  %9 = alloca %struct.keccak_ctx_st, align 8      ; 10 uses
  %i.c = alloca [4 x [704 x i8]], align 32        ; 9 uses
  %i.d = alloca [4 x [96 x i8]], align 32         ; 16 uses
  %10 = alloca %struct.mld_shake256x4ctx_s, align 8 ; 28 uses
  %i.e = alloca [48 x i8], align 32               ; 6 uses
  %11 = alloca [1 x %struct.mld_yvec_eager65], align 32 ; 11 uses
  %12 = alloca [1 x %struct.mld_poly], align 32   ; 23 uses
  %13 = alloca [1 x %union.w1tmp_u.15], align 32  ; 27 uses
  %14 = alloca [1 x %struct.mld_polyveck65], align 32 ; 17 uses
  %15 = alloca [1 x %struct.mld_poly], align 32   ; 14 uses
  %16 = alloca [1 x %struct.mld_poly], align 32   ; 14 uses
  %17 = alloca %struct.keccak_ctx_st, align 8     ; 13 uses
  %18 = alloca %struct.keccak_ctx_st, align 8     ; 13 uses
  %i.f = alloca [256 x i8], align 32              ; 9 uses
  %19 = alloca [1 x %struct.mld_polymat_eager65], align 32 ; 11 uses
  %20 = alloca [1 x %struct.mld_sk_s1hat_eager65], align 32 ; 10 uses
  %21 = alloca [1 x %struct.mld_sk_t0hat_eager65], align 32 ; 11 uses
  %22 = alloca [1 x %struct.mld_sk_s2hat_eager65], align 32 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #46
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 192 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.f, ptr noundef nonnull readonly align 1 dereferenceable(32) %6, i64 32, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.h, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.k, i64 32, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(64) %i.g, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.l, i64 64, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 128
  call fastcc void @mldsa65_polyvecl_unpack_eta(ptr noundef nonnull %20, ptr noundef nonnull readonly %i.m)
  call fastcc void @mldsa_poly_ntt(ptr noundef nonnull %20)
  %i.n = getelementptr inbounds nuw i8, ptr %20, i64 1024
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %20, i64 2048
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %20, i64 3072
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %20, i64 4096
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 768
  call fastcc void @mldsa65_polyveck_unpack_eta(ptr noundef nonnull %22, ptr noundef nonnull readonly %i.r)
  call fastcc void @mldsa_poly_ntt(ptr noundef nonnull %22)
  %i.s = getelementptr inbounds nuw i8, ptr %22, i64 1024
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %22, i64 2048
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %22, i64 3072
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %22, i64 4096
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %22, i64 5120
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 1536
  call fastcc void @mldsa_polyt0_unpack(ptr noundef nonnull %21, ptr noundef nonnull readonly %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %21, i64 1024 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 1952
  call fastcc void @mldsa_polyt0_unpack(ptr noundef %i.y, ptr noundef nonnull readonly %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %21, i64 2048 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 2368
  call fastcc void @mldsa_polyt0_unpack(ptr noundef %i.aa, ptr noundef nonnull readonly %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %21, i64 3072 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 2784
  call fastcc void @mldsa_polyt0_unpack(ptr noundef %i.ac, ptr noundef nonnull readonly %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %21, i64 4096 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 3200
  call fastcc void @mldsa_polyt0_unpack(ptr noundef %i.ae, ptr noundef nonnull readonly %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %21, i64 5120 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 3616
  call fastcc void @mldsa_polyt0_unpack(ptr noundef %i.ag, ptr noundef nonnull readonly %i.ah)
  call fastcc void @mldsa_poly_ntt(ptr noundef nonnull %21)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.y)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.aa)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.ac)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.ae)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.ag)
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %18, i8 0, i64 200, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %18, i64 216
  store i64 0, ptr %i.ai, align 8, !tbaa !446
  %i.aj = getelementptr inbounds nuw i8, ptr %18, i64 393
  store i8 0, ptr %i.aj, align 1, !tbaa !447
  %i.ak = getelementptr inbounds nuw i8, ptr %18, i64 200
  store i64 136, ptr %i.ak, align 8, !tbaa !448
  %i.al = getelementptr inbounds nuw i8, ptr %18, i64 208
  store i64 0, ptr %i.al, align 8, !tbaa !449
  %i.am = getelementptr inbounds nuw i8, ptr %18, i64 392
  store i8 31, ptr %i.am, align 8, !tbaa !450
  %i.an = call i32 @KeccakSponge_Absorb(ptr noundef nonnull %18, ptr noundef nonnull readonly %i.g, i64 noundef range(i64 1, 0) 64) ; 0 uses
  %.not.i = icmp eq i64 %4, 0
  %i.ao = icmp eq ptr %3, null
  %or.cond.i = or i1 %i.ao, %.not.i
  br i1 %or.cond.i, label %mld_shake256_absorb.exit11.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = call i32 @KeccakSponge_Absorb(ptr noundef nonnull %18, ptr noundef nonnull readonly %3, i64 noundef range(i64 1, 0) %4) ; 0 uses
  br label %mld_shake256_absorb.exit11.i

mld_shake256_absorb.exit11.i:                     ; preds = %bb.c, %bb.b
  %.not10.i = icmp eq i64 %2, 0
end_hunk_1
begin_hunk_2_@mlkem512_polyvec_frombytes:bb.a
  br i1 %i.bh, label %mlkem_poly_frombytes.exit, label %vector.body, !llvm.loop !2804

mlk_poly_frombytes_native.exit.thread.i:          ; preds = %bb.a
  tail call void @mlkem_nttfrombytes_avx2_asm(ptr noundef nonnull %0, ptr noundef %1) #46
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !75
  br label %mlkem_poly_frombytes.exit

mlk_poly_frombytes_native.exit.i:                 ; preds = %vector.memcheck, %mlk_poly_frombytes_native.exit.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %mlk_poly_frombytes_native.exit.i ], [ 0, %vector.memcheck ] ; 3 uses
  %i.bi = mul nuw nsw i64 %indvars.iv.i.i, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %i.bi ; 3 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !78
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !78  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !78
  %i.bp = zext i8 %i.bk to i16
  %i.bq = zext i8 %i.bm to i16
  %i.br = shl nuw i16 %i.bq, 8
  %i.bs = and i16 %i.br, 3840
  %i.bt = or disjoint i16 %i.bs, %i.bp
  %.idx.i.i = shl nuw nsw i64 %indvars.iv.i.i, 2
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i ; 2 uses
  store i16 %i.bt, ptr %i.bu, align 2, !tbaa !133
  %i.bv = lshr i8 %i.bm, 4
  %i.bw = zext nneg i8 %i.bv to i16
  %i.bx = zext i8 %i.bo to i16
  %i.by = shl nuw nsw i16 %i.bx, 4
  %i.bz = or disjoint i16 %i.by, %i.bw
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  store i16 %i.bz, ptr %i.ca, align 2, !tbaa !133
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 128
  br i1 %exitcond.not.i.i, label %mlkem_poly_frombytes.exit, label %mlk_poly_frombytes_native.exit.i, !llvm.loop !2805

mlkem_poly_frombytes.exit:                        ; preds = %vector.body, %mlk_poly_frombytes_native.exit.i, %mlk_poly_frombytes_native.exit.thread.i
  %i.cb = phi i32 [ %.pre, %mlk_poly_frombytes_native.exit.thread.i ], [ %i.a, %mlk_poly_frombytes_native.exit.i ], [ %i.a, %vector.body ]
  %i.cc = getelementptr i8, ptr %0, i64 512       ; 4 uses
  %i.cd = getelementptr i8, ptr %1, i64 384       ; 7 uses
  %i.ce = and i32 %i.cb, 32
  %.not.i.i.1 = icmp eq i32 %i.ce, 0
  br i1 %.not.i.i.1, label %vector.memcheck14, label %mlk_poly_frombytes_native.exit.thread.i.1

vector.memcheck14:                                ; preds = %mlkem_poly_frombytes.exit
  %i.cf = getelementptr i8, ptr %0, i64 1024
  %i.cg = getelementptr i8, ptr %1, i64 768
  %bound015 = icmp ult ptr %i.cc, %i.cg
  %bound116 = icmp ult ptr %i.cd, %i.cf
  %found.conflict17 = and i1 %bound015, %bound116
  br i1 %found.conflict17, label %mlk_poly_frombytes_native.exit.i.1, label %vector.body19

vector.body19:                                    ; preds = %vector.memcheck14, %vector.body19
  %index20 = phi i64 [ %index.next22, %vector.body19 ], [ 0, %vector.memcheck14 ] ; 6 uses
  %i.ch = mul nuw nsw i64 %index20, 3
  %i.ci = mul nuw i64 %index20, 3
  %i.cj = mul nuw i64 %index20, 3
  %i.ck = mul nuw i64 %index20, 3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ch ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ci ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 3
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cj ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 6
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ck ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 9
  %i.cs = load i8, ptr %i.cl, align 1, !tbaa !78, !alias.scope !2813
  %i.ct = load i8, ptr %i.cn, align 1, !tbaa !78, !alias.scope !2813
  %i.cu = load i8, ptr %i.cp, align 1, !tbaa !78, !alias.scope !2813
  %i.cv = load i8, ptr %i.cr, align 1, !tbaa !78, !alias.scope !2813
  %i.cw = insertelement <4 x i8> poison, i8 %i.cs, i64 0
  %i.cx = insertelement <4 x i8> %i.cw, i8 %i.ct, i64 1
  %i.cy = insertelement <4 x i8> %i.cx, i8 %i.cu, i64 2
  %i.cz = insertelement <4 x i8> %i.cy, i8 %i.cv, i64 3
  %i.da = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  %i.db = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.co, i64 7
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cq, i64 10
  %i.de = load i8, ptr %i.da, align 1, !tbaa !78, !alias.scope !2813
  %i.df = load i8, ptr %i.db, align 1, !tbaa !78, !alias.scope !2813
  %i.dg = load i8, ptr %i.dc, align 1, !tbaa !78, !alias.scope !2813
  %i.dh = load i8, ptr %i.dd, align 1, !tbaa !78, !alias.scope !2813
  %i.di = insertelement <4 x i8> poison, i8 %i.de, i64 0
  %i.dj = insertelement <4 x i8> %i.di, i8 %i.df, i64 1
  %i.dk = insertelement <4 x i8> %i.dj, i8 %i.dg, i64 2
  %i.dl = insertelement <4 x i8> %i.dk, i8 %i.dh, i64 3 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cm, i64 5
  %i.do = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cq, i64 11
  %i.dq = load i8, ptr %i.dm, align 1, !tbaa !78, !alias.scope !2813
  %i.dr = load i8, ptr %i.dn, align 1, !tbaa !78, !alias.scope !2813
  %i.ds = load i8, ptr %i.do, align 1, !tbaa !78, !alias.scope !2813
  %i.dt = load i8, ptr %i.dp, align 1, !tbaa !78, !alias.scope !2813
  %i.du = insertelement <4 x i8> poison, i8 %i.dq, i64 0
  %i.dv = insertelement <4 x i8> %i.du, i8 %i.dr, i64 1
  %i.dw = insertelement <4 x i8> %i.dv, i8 %i.ds, i64 2
  %i.dx = insertelement <4 x i8> %i.dw, i8 %i.dt, i64 3
  %i.dy = zext <4 x i8> %i.cz to <4 x i16>
  %i.dz = zext <4 x i8> %i.dl to <4 x i16>
  %i.ea = shl nuw <4 x i16> %i.dz, splat (i16 8)
  %i.eb = and <4 x i16> %i.ea, splat (i16 3840)
  %i.ec = or disjoint <4 x i16> %i.eb, %i.dy
  %i.ed = shl nuw nsw i64 %index20, 2
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ed
  %i.ef = lshr <4 x i8> %i.dl, splat (i8 4)
  %i.eg = zext nneg <4 x i8> %i.ef to <4 x i16>
  %i.eh = zext <4 x i8> %i.dx to <4 x i16>
  %i.ei = shl nuw nsw <4 x i16> %i.eh, splat (i16 4)
  %i.ej = or disjoint <4 x i16> %i.ei, %i.eg
  %interleaved.vec21 = shufflevector <4 x i16> %i.ec, <4 x i16> %i.ej, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec21, ptr %i.ee, align 2, !tbaa !133, !alias.scope !2814, !noalias !2813
  %index.next22 = add nuw i64 %index20, 4         ; 2 uses
  %i.ek = icmp eq i64 %index.next22, 128
  br i1 %i.ek, label %mlkem_poly_frombytes.exit.1, label %vector.body19, !llvm.loop !2809

mlk_poly_frombytes_native.exit.thread.i.1:        ; preds = %mlkem_poly_frombytes.exit
  tail call void @mlkem_nttfrombytes_avx2_asm(ptr noundef nonnull %i.cc, ptr noundef nonnull %i.cd) #46
  br label %mlkem_poly_frombytes.exit.1

mlk_poly_frombytes_native.exit.i.1:               ; preds = %vector.memcheck14, %mlk_poly_frombytes_native.exit.i.1
  %indvars.iv.i.i.1 = phi i64 [ %indvars.iv.next.i.i.1, %mlk_poly_frombytes_native.exit.i.1 ], [ 0, %vector.memcheck14 ] ; 3 uses
  %i.el = mul nuw nsw i64 %indvars.iv.i.i.1, 3
  %i.em = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.el ; 3 uses
  %i.en = load i8, ptr %i.em, align 1, !tbaa !78
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !78  ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 2
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !78
  %i.es = zext i8 %i.en to i16
  %i.et = zext i8 %i.ep to i16
  %i.eu = shl nuw i16 %i.et, 8
  %i.ev = and i16 %i.eu, 3840
  %i.ew = or disjoint i16 %i.ev, %i.es
  %.idx.i.i.1 = shl nuw nsw i64 %indvars.iv.i.i.1, 2
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.idx.i.i.1 ; 2 uses
  store i16 %i.ew, ptr %i.ex, align 2, !tbaa !133
  %i.ey = lshr i8 %i.ep, 4
  %i.ez = zext nneg i8 %i.ey to i16
  %i.fa = zext i8 %i.er to i16
  %i.fb = shl nuw nsw i16 %i.fa, 4
  %i.fc = or disjoint i16 %i.fb, %i.ez
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 2
  store i16 %i.fc, ptr %i.fd, align 2, !tbaa !133
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.1, 1 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, 128
  br i1 %exitcond.not.i.i.1, label %mlkem_poly_frombytes.exit.1, label %mlk_poly_frombytes_native.exit.i.1, !llvm.loop !2810

mlkem_poly_frombytes.exit.1:                      ; preds = %vector.body19, %mlk_poly_frombytes_native.exit.i.1, %mlk_poly_frombytes_native.exit.thread.i.1
  ret void
}

declare void @mlkem_nttfrombytes_avx2_asm(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @mlkem_invntt_avx2_asm(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @mlkem_poly_compress_d10_avx2_asm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @mlkem_poly_compress_d4(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !75
  %i.b = and i32 %i.a, 32
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %mlk_poly_compress_d4_native.exit, label %mlk_poly_compress_d4_native.exit.thread

mlk_poly_compress_d4_native.exit.thread:          ; preds = %bb.a
  tail call void @mlkem_poly_compress_d4_avx2_asm(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @mlkem_compress_d4_data) #46
  br label %mlk_poly_compress_d4_c.exit

mlk_poly_compress_d4_native.exit:                 ; preds = %bb.a, %mlk_poly_compress_d4_native.exit
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %mlk_poly_compress_d4_native.exit ], [ 0, %bb.a ] ; 3 uses
  %.idx = shl nuw nsw i64 %indvars.iv.i, 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.d = shl nuw nsw i64 %indvars.iv.i, 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.f = load <8 x i16>, ptr %i.c, align 2, !tbaa !133 ; 2 uses
  %i.g = shufflevector <8 x i16> %i.f, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.h = sext <4 x i16> %i.g to <4 x i32>
  %i.i = mul <4 x i32> %i.h, splat (i32 1290160)
  %i.j = add <4 x i32> %i.i, splat (i32 134217728)
  %i.k = lshr <4 x i32> %i.j, splat (i32 28)
  %i.l = shufflevector <8 x i16> %i.f, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.m = sext <4 x i16> %i.l to <4 x i32>
  %i.n = mul <4 x i32> %i.m, splat (i32 1290160)
  %i.o = add <4 x i32> %i.n, splat (i32 134217728)
  %i.p = lshr <4 x i32> %i.o, splat (i32 24)
  %.inner = and <4 x i32> %i.p, splat (i32 240)
  %.inner5 = or disjoint <4 x i32> %.inner, %i.k
  %i.q = trunc nuw <4 x i32> %.inner5 to <4 x i8>
  store <4 x i8> %i.q, ptr %i.e, align 1, !tbaa !78
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 32
  br i1 %exitcond.not.i, label %mlk_poly_compress_d4_c.exit, label %mlk_poly_compress_d4_native.exit, !llvm.loop !2815

mlk_poly_compress_d4_c.exit:                      ; preds = %mlk_poly_compress_d4_native.exit, %mlk_poly_compress_d4_native.exit.thread
  ret void
}

declare void @mlkem_poly_compress_d4_avx2_asm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @mlkem_poly_tomsg(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #3 {
vector.memcheck:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = getelementptr i8, ptr %1, i64 512
  %bound0 = icmp ult ptr %0, %i.b
  %bound1 = icmp ult ptr %1, %i.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 9 uses
  store <8 x i8> zeroinitializer, ptr %i.c, align 1, !tbaa !78, !alias.scope !2821, !noalias !2822
  %.idx = shl nuw nsw i64 %index, 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 8 uses
  %.idx17 = shl i64 %index, 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.idx17 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.idx18 = shl i64 %index, 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.idx18 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.idx19 = shl i64 %index, 4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.idx19 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.idx20 = shl i64 %index, 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.idx20 ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %.idx21 = shl i64 %index, 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.idx21 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %.idx22 = shl i64 %index, 4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.idx22 ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %.idx23 = shl i64 %index, 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.idx23 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  %i.s = load i16, ptr %i.d, align 2, !tbaa !133, !alias.scope !2822
  %i.t = load i16, ptr %i.f, align 2, !tbaa !133, !alias.scope !2822
  %i.u = load i16, ptr %i.h, align 2, !tbaa !133, !alias.scope !2822
  %i.v = load i16, ptr %i.j, align 2, !tbaa !133, !alias.scope !2822
  %i.w = load i16, ptr %i.l, align 2, !tbaa !133, !alias.scope !2822
  %i.x = load i16, ptr %i.n, align 2, !tbaa !133, !alias.scope !2822
  %i.y = load i16, ptr %i.p, align 2, !tbaa !133, !alias.scope !2822
  %i.z = load i16, ptr %i.r, align 2, !tbaa !133, !alias.scope !2822
  %i.aa = insertelement <8 x i16> poison, i16 %i.s, i64 0
  %i.ab = insertelement <8 x i16> %i.aa, i16 %i.t, i64 1
  %i.ac = insertelement <8 x i16> %i.ab, i16 %i.u, i64 2
  %i.ad = insertelement <8 x i16> %i.ac, i16 %i.v, i64 3
  %i.ae = insertelement <8 x i16> %i.ad, i16 %i.w, i64 4
  %i.af = insertelement <8 x i16> %i.ae, i16 %i.x, i64 5
  %i.ag = insertelement <8 x i16> %i.af, i16 %i.y, i64 6
  %i.ah = insertelement <8 x i16> %i.ag, i16 %i.z, i64 7
  %i.ai = sext <8 x i16> %i.ah to <8 x i32>
  %i.aj = mul <8 x i32> %i.ai, splat (i32 1290168)
  %i.ak = add <8 x i32> %i.aj, splat (i32 1073741824)
  %i.al = lshr <8 x i32> %i.ak, splat (i32 31)
  %i.am = trunc nuw nsw <8 x i32> %i.al to <8 x i8> ; 2 uses
  store <8 x i8> %i.am, ptr %i.c, align 1, !tbaa !78, !alias.scope !2821, !noalias !2822
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 18
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 34
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 50
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 66
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 82
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 98
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 114
  %i.av = load i16, ptr %i.an, align 2, !tbaa !133, !alias.scope !2822
  %i.aw = load i16, ptr %i.ao, align 2, !tbaa !133, !alias.scope !2822
  %i.ax = load i16, ptr %i.ap, align 2, !tbaa !133, !alias.scope !2822
  %i.ay = load i16, ptr %i.aq, align 2, !tbaa !133, !alias.scope !2822
  %i.az = load i16, ptr %i.ar, align 2, !tbaa !133, !alias.scope !2822
  %i.ba = load i16, ptr %i.as, align 2, !tbaa !133, !alias.scope !2822
  %i.bb = load i16, ptr %i.at, align 2, !tbaa !133, !alias.scope !2822
  %i.bc = load i16, ptr %i.au, align 2, !tbaa !133, !alias.scope !2822
  %i.bd = insertelement <8 x i16> poison, i16 %i.av, i64 0
  %i.be = insertelement <8 x i16> %i.bd, i16 %i.aw, i64 1
  %i.bf = insertelement <8 x i16> %i.be, i16 %i.ax, i64 2
  %i.bg = insertelement <8 x i16> %i.bf, i16 %i.ay, i64 3
  %i.bh = insertelement <8 x i16> %i.bg, i16 %i.az, i64 4
  %i.bi = insertelement <8 x i16> %i.bh, i16 %i.ba, i64 5
  %i.bj = insertelement <8 x i16> %i.bi, i16 %i.bb, i64 6
  %i.bk = insertelement <8 x i16> %i.bj, i16 %i.bc, i64 7
  %i.bl = sext <8 x i16> %i.bk to <8 x i32>
  %i.bm = mul <8 x i32> %i.bl, splat (i32 1290168)
  %i.bn = add <8 x i32> %i.bm, splat (i32 1073741824)
  %i.bo = lshr <8 x i32> %i.bn, splat (i32 30)
  %i.bp = trunc nuw nsw <8 x i32> %i.bo to <8 x i8>
  %i.bq = and <8 x i8> %i.bp, splat (i8 2)
  %i.br = or disjoint <8 x i8> %i.bq, %i.am       ; 2 uses
  store <8 x i8> %i.br, ptr %i.c, align 1, !tbaa !78, !alias.scope !2821, !noalias !2822
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.bv = getelementptr inbounds nuw i8, ptr %i.i, i64 52
  %i.bw = getelementptr inbounds nuw i8, ptr %i.k, i64 68
  %i.bx = getelementptr inbounds nuw i8, ptr %i.m, i64 84
  %i.by = getelementptr inbounds nuw i8, ptr %i.o, i64 100
  %i.bz = getelementptr inbounds nuw i8, ptr %i.q, i64 116
  %i.ca = load i16, ptr %i.bs, align 2, !tbaa !133, !alias.scope !2822
  %i.cb = load i16, ptr %i.bt, align 2, !tbaa !133, !alias.scope !2822
  %i.cc = load i16, ptr %i.bu, align 2, !tbaa !133, !alias.scope !2822
  %i.cd = load i16, ptr %i.bv, align 2, !tbaa !133, !alias.scope !2822
  %i.ce = load i16, ptr %i.bw, align 2, !tbaa !133, !alias.scope !2822
  %i.cf = load i16, ptr %i.bx, align 2, !tbaa !133, !alias.scope !2822
  %i.cg = load i16, ptr %i.by, align 2, !tbaa !133, !alias.scope !2822
  %i.ch = load i16, ptr %i.bz, align 2, !tbaa !133, !alias.scope !2822
  %i.ci = insertelement <8 x i16> poison, i16 %i.ca, i64 0
  %i.cj = insertelement <8 x i16> %i.ci, i16 %i.cb, i64 1
  %i.ck = insertelement <8 x i16> %i.cj, i16 %i.cc, i64 2
  %i.cl = insertelement <8 x i16> %i.ck, i16 %i.cd, i64 3
  %i.cm = insertelement <8 x i16> %i.cl, i16 %i.ce, i64 4
  %i.cn = insertelement <8 x i16> %i.cm, i16 %i.cf, i64 5
  %i.co = insertelement <8 x i16> %i.cn, i16 %i.cg, i64 6
  %i.cp = insertelement <8 x i16> %i.co, i16 %i.ch, i64 7
  %i.cq = sext <8 x i16> %i.cp to <8 x i32>
  %i.cr = mul <8 x i32> %i.cq, splat (i32 1290168)
  %i.cs = add <8 x i32> %i.cr, splat (i32 1073741824)
  %i.ct = lshr <8 x i32> %i.cs, splat (i32 29)
  %i.cu = trunc nuw nsw <8 x i32> %i.ct to <8 x i8>
  %i.cv = and <8 x i8> %i.cu, splat (i8 4)
  %i.cw = or disjoint <8 x i8> %i.br, %i.cv       ; 2 uses
  store <8 x i8> %i.cw, ptr %i.c, align 1, !tbaa !78, !alias.scope !2821, !noalias !2822
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.cy = getelementptr inbounds nuw i8, ptr %i.e, i64 22
  %i.cz = getelementptr inbounds nuw i8, ptr %i.g, i64 38
  %i.da = getelementptr inbounds nuw i8, ptr %i.i, i64 54
  %i.db = getelementptr inbounds nuw i8, ptr %i.k, i64 70
  %i.dc = getelementptr inbounds nuw i8, ptr %i.m, i64 86
  %i.dd = getelementptr inbounds nuw i8, ptr %i.o, i64 102
  %i.de = getelementptr inbounds nuw i8, ptr %i.q, i64 118
  %i.df = load i16, ptr %i.cx, align 2, !tbaa !133, !alias.scope !2822
  %i.dg = load i16, ptr %i.cy, align 2, !tbaa !133, !alias.scope !2822
  %i.dh = load i16, ptr %i.cz, align 2, !tbaa !133, !alias.scope !2822
  %i.di = load i16, ptr %i.da, align 2, !tbaa !133, !alias.scope !2822
  %i.dj = load i16, ptr %i.db, align 2, !tbaa !133, !alias.scope !2822
  %i.dk = load i16, ptr %i.dc, align 2, !tbaa !133, !alias.scope !2822
  %i.dl = load i16, ptr %i.dd, align 2, !tbaa !133, !alias.scope !2822
  %i.dm = load i16, ptr %i.de, align 2, !tbaa !133, !alias.scope !2822
  %i.dn = insertelement <8 x i16> poison, i16 %i.df, i64 0
  %i.do = insertelement <8 x i16> %i.dn, i16 %i.dg, i64 1
  %i.dp = insertelement <8 x i16> %i.do, i16 %i.dh, i64 2
  %i.dq = insertelement <8 x i16> %i.dp, i16 %i.di, i64 3
  %i.dr = insertelement <8 x i16> %i.dq, i16 %i.dj, i64 4
  %i.ds = insertelement <8 x i16> %i.dr, i16 %i.dk, i64 5
  %i.dt = insertelement <8 x i16> %i.ds, i16 %i.dl, i64 6
  %i.du = insertelement <8 x i16> %i.dt, i16 %i.dm, i64 7
  %i.dv = sext <8 x i16> %i.du to <8 x i32>
  %i.dw = mul <8 x i32> %i.dv, splat (i32 1290168)
  %i.dx = add <8 x i32> %i.dw, splat (i32 1073741824)
  %i.dy = lshr <8 x i32> %i.dx, splat (i32 28)
  %i.dz = trunc nuw nsw <8 x i32> %i.dy to <8 x i8>
  %i.ea = and <8 x i8> %i.dz, splat (i8 8)
  %i.eb = or disjoint <8 x i8> %i.cw, %i.ea       ; 2 uses
  store <8 x i8> %i.eb, ptr %i.c, align 1, !tbaa !78, !alias.scope !2821, !noalias !2822
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ee = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ef = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.eg = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.eh = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.ei = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.ej = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  %i.ek = load i16, ptr %i.ec, align 2, !tbaa !133, !alias.scope !2822
  %i.el = load i16, ptr %i.ed, align 2, !tbaa !133, !alias.scope !2822
  %i.em = load i16, ptr %i.ee, align 2, !tbaa !133, !alias.scope !2822
  %i.en = load i16, ptr %i.ef, align 2, !tbaa !133, !alias.scope !2822
  %i.eo = load i16, ptr %i.eg, align 2, !tbaa !133, !alias.scope !2822
  %i.ep = load i16, ptr %i.eh, align 2, !tbaa !133, !alias.scope !2822
  %i.eq = load i16, ptr %i.ei, align 2, !tbaa !133, !alias.scope !2822
  %i.er = load i16, ptr %i.ej, align 2, !tbaa !133, !alias.scope !2822
  %i.es = insertelement <8 x i16> poison, i16 %i.ek, i64 0
  %i.et = insertelement <8 x i16> %i.es, i16 %i.el, i64 1
  %i.eu = insertelement <8 x i16> %i.et, i16 %i.em, i64 2
  %i.ev = insertelement <8 x i16> %i.eu, i16 %i.en, i64 3
  %i.ew = insertelement <8 x i16> %i.ev, i16 %i.eo, i64 4
  %i.ex = insertelement <8 x i16> %i.ew, i16 %i.ep, i64 5
  %i.ey = insertelement <8 x i16> %i.ex, i16 %i.eq, i64 6
  %i.ez = insertelement <8 x i16> %i.ey, i16 %i.er, i64 7
  %i.fa = sext <8 x i16> %i.ez to <8 x i32>
  %i.fb = mul <8 x i32> %i.fa, splat (i32 1290168)
  %i.fc = add <8 x i32> %i.fb, splat (i32 1073741824)
  %i.fd = lshr <8 x i32> %i.fc, splat (i32 27)
  %i.fe = trunc nuw nsw <8 x i32> %i.fd to <8 x i8>
  %i.ff = and <8 x i8> %i.fe, splat (i8 16)
  %i.fg = or disjoint <8 x i8> %i.eb, %i.ff       ; 2 uses
  store <8 x i8> %i.fg, ptr %i.c, align 1, !tbaa !78, !alias.scope !2821, !noalias !2822
  %i.fh = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %i.fi = getelementptr inbounds nuw i8, ptr %i.e, i64 26
  %i.fj = getelementptr inbounds nuw i8, ptr %i.g, i64 42
  %i.fk = getelementptr inbounds nuw i8, ptr %i.i, i64 58
  %i.fl = getelementptr inbounds nuw i8, ptr %i.k, i64 74
  %i.fm = getelementptr inbounds nuw i8, ptr %i.m, i64 90
  %i.fn = getelementptr inbounds nuw i8, ptr %i.o, i64 106
  %i.fo = getelementptr inbounds nuw i8, ptr %i.q, i64 122
  %i.fp = load i16, ptr %i.fh, align 2, !tbaa !133, !alias.scope !2822
  %i.fq = load i16, ptr %i.fi, align 2, !tbaa !133, !alias.scope !2822
  %i.fr = load i16, ptr %i.fj, align 2, !tbaa !133, !alias.scope !2822
  %i.fs = load i16, ptr %i.fk, align 2, !tbaa !133, !alias.scope !2822
  %i.ft = load i16, ptr %i.fl, align 2, !tbaa !133, !alias.scope !2822
  %i.fu = load i16, ptr %i.fm, align 2, !tbaa !133, !alias.scope !2822
  %i.fv = load i16, ptr %i.fn, align 2, !tbaa !133, !alias.scope !2822
end_hunk_2
