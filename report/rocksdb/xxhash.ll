Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/xxhash?download=true
inline.NumInlined: 910
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 57
begin_hunk_0_@ROCKSDB_XXH3_128bits_digest:bb.a
  %i.hx = xor i64 %.val.i23, %.sroa.0.8.vec.extract
  %i.hy = zext i64 %i.hv to i128
  %i.hz = zext i64 %i.hx to i128
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hq, i64 5
  %.val9.1.i24 = load i64, ptr %i.ia, align 1, !tbaa !27
  %i.ib = xor i64 %.val9.1.i24, %.sroa.0.16.vec.extract
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hq, i64 13
  %.val.1.i25 = load i64, ptr %i.ic, align 1, !tbaa !27
  %i.id = xor i64 %.val.1.i25, %.sroa.0.24.vec.extract
  %i.ie = zext i64 %i.ib to i128
  %i.if = zext i64 %i.id to i128
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hq, i64 21
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hq, i64 37
  %i.ii = load <2 x i64>, ptr %i.ho, align 1, !tbaa !27 ; 2 uses
  %i.ij = load <2 x i64>, ptr %i.hp, align 1, !tbaa !27 ; 2 uses
  %i.ik = xor <2 x i64> %i.hu, <i64 0, i64 -1>
  %i.il = shufflevector <4 x i128> %i.hn, <4 x i128> poison, <2 x i32> <i32 1, i32 poison>
  %i.im = insertelement <2 x i128> %i.il, i128 %i.hz, i64 1
  %i.in = shufflevector <4 x i128> %i.hn, <4 x i128> poison, <2 x i32> <i32 0, i32 poison>
  %i.io = insertelement <2 x i128> %i.in, i128 %i.hy, i64 1
  %i.ip = mul nuw <2 x i128> %i.im, %i.io         ; 2 uses
  %i.iq = lshr <2 x i128> %i.ip, splat (i128 64)
  %i.ir = xor <2 x i128> %i.iq, %i.ip
  %i.is = trunc <2 x i128> %i.ir to <2 x i64>
  %i.it = add <2 x i64> %i.ik, %i.is
  %i.iu = shufflevector <4 x i128> %i.hn, <4 x i128> poison, <2 x i32> <i32 3, i32 poison>
  %i.iv = insertelement <2 x i128> %i.iu, i128 %i.if, i64 1
  %i.iw = shufflevector <4 x i128> %i.hn, <4 x i128> poison, <2 x i32> <i32 2, i32 poison>
  %i.ix = insertelement <2 x i128> %i.iw, i128 %i.ie, i64 1
  %i.iy = mul nuw <2 x i128> %i.iv, %i.ix         ; 2 uses
  %i.iz = lshr <2 x i128> %i.iy, splat (i128 64)
  %i.ja = xor <2 x i128> %i.iz, %i.iy
  %i.jb = trunc <2 x i128> %i.ja to <2 x i64>
  %i.jc = add <2 x i64> %i.it, %i.jb
  %i.jd = load <2 x i64>, ptr %i.ig, align 1, !tbaa !27 ; 2 uses
  %i.je = shufflevector <2 x i64> %i.ii, <2 x i64> %i.jd, <2 x i32> <i32 0, i32 2>
  %i.jf = shufflevector <8 x i64> %.sroa.0.0, <8 x i64> poison, <2 x i32> <i32 4, i32 4>
  %i.jg = xor <2 x i64> %i.je, %i.jf
  %i.jh = shufflevector <2 x i64> %i.ii, <2 x i64> %i.jd, <2 x i32> <i32 1, i32 3>
  %i.ji = shufflevector <8 x i64> %.sroa.0.0, <8 x i64> poison, <2 x i32> <i32 5, i32 5>
  %i.jj = xor <2 x i64> %i.jh, %i.ji
  %i.jk = zext <2 x i64> %i.jg to <2 x i128>
  %i.jl = zext <2 x i64> %i.jj to <2 x i128>
  %i.jm = mul nuw <2 x i128> %i.jl, %i.jk         ; 2 uses
  %i.jn = lshr <2 x i128> %i.jm, splat (i128 64)
  %i.jo = xor <2 x i128> %i.jn, %i.jm
  %i.jp = trunc <2 x i128> %i.jo to <2 x i64>
  %i.jq = add <2 x i64> %i.jc, %i.jp
  %i.jr = load <2 x i64>, ptr %i.ih, align 1, !tbaa !27 ; 2 uses
  %i.js = shufflevector <2 x i64> %i.ij, <2 x i64> %i.jr, <2 x i32> <i32 0, i32 2>
  %i.jt = shufflevector <8 x i64> %.sroa.0.0, <8 x i64> poison, <2 x i32> <i32 6, i32 6>
  %i.ju = xor <2 x i64> %i.js, %i.jt
  %i.jv = shufflevector <2 x i64> %i.ij, <2 x i64> %i.jr, <2 x i32> <i32 1, i32 3>
  %i.jw = shufflevector <8 x i64> %.sroa.0.0, <8 x i64> poison, <2 x i32> <i32 7, i32 7>
  %i.jx = xor <2 x i64> %i.jv, %i.jw
  %i.jy = zext <2 x i64> %i.ju to <2 x i128>
  %i.jz = zext <2 x i64> %i.jx to <2 x i128>
  %i.ka = mul nuw <2 x i128> %i.jz, %i.jy         ; 2 uses
  %i.kb = lshr <2 x i128> %i.ka, splat (i128 64)
  %i.kc = xor <2 x i128> %i.kb, %i.ka
  %i.kd = trunc <2 x i128> %i.kc to <2 x i64>
  %i.ke = add <2 x i64> %i.jq, %i.kd              ; 2 uses
  %i.kf = lshr <2 x i64> %i.ke, splat (i64 37)
  %i.kg = xor <2 x i64> %i.kf, %i.ke
  %i.kh = mul <2 x i64> %i.kg, splat (i64 1609587791953885689) ; 2 uses
  %i.ki = lshr <2 x i64> %i.kh, splat (i64 32)
  %i.kj = xor <2 x i64> %i.ki, %i.kh              ; 2 uses
  %vec2struct.slot.sroa.0.0.vec.extract = extractelement <2 x i64> %i.kj, i64 0
  %i.kk = insertvalue { i64, i64 } poison, i64 %vec2struct.slot.sroa.0.0.vec.extract, 0
  %vec2struct.slot.sroa.0.8.vec.extract = extractelement <2 x i64> %i.kj, i64 1
  %vec2struct83 = insertvalue { i64, i64 } %i.kk, i64 %vec2struct.slot.sroa.0.8.vec.extract, 1
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !34 ; 2 uses
  %.not = icmp eq i64 %i.km, 0
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ko = tail call { i64, i64 } @ROCKSDB_XXH3_128bits_withSeed(ptr noundef nonnull captures(address) %i.kn, i64 noundef %i.h, i64 noundef %i.km) #34
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.kq = load i64, ptr %i.kp, align 32, !tbaa !36
  %i.kr = add i64 %i.kq, 64
  %i.ks = tail call { i64, i64 } @ROCKSDB_XXH3_128bits_withSecret(ptr noundef nonnull captures(address) %i.kn, i64 noundef %i.h, ptr noundef nonnull captures(address) %i.f, i64 noundef %i.kr) #34
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %_ZL16XXH3_digest_longPmPK12XXH3_state_sPKh.exit
  %.fca.1.insert.merged = phi { i64, i64 } [ %vec2struct83, %_ZL16XXH3_digest_longPmPK12XXH3_state_sPKh.exit ], [ %i.ko, %bb.g ], [ %i.ks, %bb.h ]
  ret { i64, i64 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @ROCKSDB_XXH128_isEqual(i64 %0, i64 %1, i64 %2, i64 %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.XXH128_hash_t, align 8      ; 3 uses
  %5 = alloca %struct.XXH128_hash_t, align 8      ; 3 uses
  store i64 %0, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %1, ptr %i.a, align 8
  store i64 %2, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %3, ptr %i.b, align 8
  %i.c = load i128, ptr %4, align 8
  %i.d = load i128, ptr %5, align 8
  %i.e = icmp ne i128 %i.c, %i.d
  %i.f = zext i1 %i.e to i32
  %.not = icmp eq i32 %i.f, 0
  %i.g = zext i1 %.not to i32
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 -1, 2) i32 @ROCKSDB_XXH128_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.56.0.copyload = load i64, ptr %.sroa.56.0..sroa_idx, align 8, !tbaa !27 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !27 ; 2 uses
  %.not = icmp eq i64 %.sroa.56.0.copyload, %.sroa.5.0.copyload
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @llvm.ucmp.i32.i64(i64 %.sroa.56.0.copyload, i64 %.sroa.5.0.copyload)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !27
  %.sroa.04.0.copyload = load i64, ptr %0, align 8, !tbaa !27
  %i.b = tail call i32 @llvm.ucmp.i32.i64(i64 %.sroa.04.0.copyload, i64 %.sroa.0.0.copyload)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.a, %bb.b ], [ %i.b, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ROCKSDB_XXH128_canonicalFromHash(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, i64 %1, i64 %2) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call noundef i64 @llvm.bswap.i64(i64 %2)
  %i.b = tail call noundef i64 @llvm.bswap.i64(i64 %1)
  store i64 %i.a, ptr %0, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.c, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @ROCKSDB_XXH128_hashFromCanonical(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %.val2 = load i64, ptr %0, align 1, !tbaa !27
  %i.a = tail call noundef i64 @llvm.bswap.i64(i64 %.val2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.b, align 1, !tbaa !27
  %i.c = tail call noundef i64 @llvm.bswap.i64(i64 %.val)
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.c, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.a, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: read, target_mem: none) uwtable
define range(i32 0, 2) i32 @ROCKSDB_XXH3_generateSecret(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3) local_unnamed_addr #22 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp ult i64 %1, 136
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %3, 0                        ; 2 uses
  %spec.select = select i1 %i.c, i64 192, i64 %3  ; 2 uses
  %spec.select41 = select i1 %i.c, ptr @_ZL12XXH3_kSecret, ptr %2 ; 3 uses
  %i.d = icmp eq ptr %spec.select41, null
  br i1 %i.d, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.03650 = phi i64 [ %i.h, %.lr.ph ], [ 0, %bb.b ] ; 3 uses
  %i.e = sub nuw i64 %1, %.03650
  %i.f = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %spec.select) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.03650
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr nonnull align 1 %spec.select41, i64 %i.f, i1 false)
  %i.h = add i64 %i.f, %.03650                    ; 2 uses
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %.lr.ph, label %.lr.ph53, !llvm.loop !55

.lr.ph53:                                         ; preds = %.lr.ph
  %i.j = lshr i64 %1, 4                           ; 3 uses
  %i.k = tail call { i64, i64 } @ROCKSDB_XXH3_128bits_withSeed(ptr noundef nonnull readonly captures(address) %spec.select41, i64 noundef %spec.select, i64 noundef 0) #34 ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.k, 1        ; 2 uses
  %i.n = tail call noundef i64 @llvm.bswap.i64(i64 %i.l) ; 3 uses
  %i.o = tail call noundef i64 @llvm.bswap.i64(i64 %i.m) ; 2 uses
  %min.iters.check = icmp ult i64 %1, 64
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph53
  %n.vec = and i64 %i.j, 1152921504606846972      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.n, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert59 = insertelement <4 x i64> poison, i64 %i.o, i64 0
  %broadcast.splat60 = shufflevector <4 x i64> %broadcast.splatinsert59, <4 x i64> poison, <4 x i32> zeroinitializer
  %invariant.op = xor <4 x i64> %broadcast.splat60, %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.p = sub nuw nsw <4 x i64> splat (i64 6455697860950631241), %vec.ind
  %i.q = add nuw nsw <4 x i64> %vec.ind, splat (i64 -4466874330221494952)
  %.reass62 = xor <4 x i64> %i.p, %invariant.op
  %i.r = zext <4 x i64> %.reass62 to <4 x i128>
  %i.s = mul nuw <4 x i128> %i.r, splat (i128 11400714785074694791) ; 2 uses
  %i.t = trunc <4 x i128> %i.s to <4 x i64>
  %i.u = lshr <4 x i128> %i.s, splat (i128 64)
  %i.v = trunc nuw <4 x i128> %i.u to <4 x i64>
  %i.w = add <4 x i64> %i.t, splat (i64 270215977642229760)
  %i.x = xor <4 x i64> %i.q, %broadcast.splat     ; 2 uses
  %i.y = and <4 x i64> %i.x, splat (i64 4294967295)
  %i.z = mul nuw <4 x i64> %i.y, splat (i64 2246822518)
  %i.aa = add <4 x i64> %i.z, %i.x
  %i.ab = add <4 x i64> %i.aa, %i.v               ; 2 uses
  %i.ac = tail call <4 x i64> @llvm.bswap.v4i64(<4 x i64> %i.ab)
  %i.ad = xor <4 x i64> %i.ac, %i.w
  %i.ae = zext <4 x i64> %i.ad to <4 x i128>
  %i.af = mul nuw <4 x i128> %i.ae, splat (i128 14029467366897019727) ; 2 uses
  %i.ag = trunc <4 x i128> %i.af to <4 x i64>     ; 2 uses
  %i.ah = lshr <4 x i128> %i.af, splat (i128 64)
  %i.ai = trunc nuw <4 x i128> %i.ah to <4 x i64>
  %i.aj = mul <4 x i64> %i.ab, splat (i64 -4417276706812531889)
  %i.ak = add <4 x i64> %i.aj, %i.ai              ; 2 uses
  %i.al = lshr <4 x i64> %i.ag, splat (i64 37)
  %i.am = xor <4 x i64> %i.al, %i.ag
  %i.an = mul <4 x i64> %i.am, splat (i64 1609587791953885689) ; 2 uses
  %i.ao = lshr <4 x i64> %i.an, splat (i64 32)
  %i.ap = lshr <4 x i64> %i.ak, splat (i64 37)
  %i.aq = xor <4 x i64> %i.ap, %i.ak
  %i.ar = mul <4 x i64> %i.aq, splat (i64 1609587791953885689) ; 2 uses
  %i.as = lshr <4 x i64> %i.ar, splat (i64 32)
  %i.at = shl nuw i64 %index, 4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %i.at ; 2 uses
  %wide.vec = load <8 x i64>, ptr %i.au, align 1, !tbaa !27 ; 2 uses
  %strided.vec = shufflevector <8 x i64> %wide.vec, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec61 = shufflevector <8 x i64> %wide.vec, <8 x i64> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.av = xor <4 x i64> %i.ao, %strided.vec
  %i.aw = xor <4 x i64> %i.av, %i.an
  %i.ax = xor <4 x i64> %i.as, %strided.vec61
  %i.ay = xor <4 x i64> %i.ax, %i.ar
  %interleaved.vec = shufflevector <4 x i64> %i.aw, <4 x i64> %i.ay, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i64> %interleaved.vec, ptr %i.au, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %._crit_edge54, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph53, %middle.block
  %.03751.ph = phi i64 [ 0, %.lr.ph53 ], [ %n.vec, %middle.block ]
  %invariant.op63 = xor i64 %i.o, %i.n
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.03751 = phi i64 [ %i.ch, %scalar.ph ], [ %.03751.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ba = sub nuw nsw i64 6455697860950631241, %.03751
  %i.bb = add nuw nsw i64 %.03751, -4466874330221494952
  %.reass.reass = xor i64 %i.ba, %invariant.op63
  %i.bc = zext i64 %.reass.reass to i128
  %i.bd = mul nuw i128 %i.bc, 11400714785074694791 ; 2 uses
  %i.be = trunc i128 %i.bd to i64
  %i.bf = lshr i128 %i.bd, 64
  %i.bg = trunc nuw i128 %i.bf to i64
  %i.bh = add i64 %i.be, 270215977642229760
  %i.bi = xor i64 %i.bb, %i.n                     ; 2 uses
  %i.bj = and i64 %i.bi, 4294967295
  %i.bk = mul nuw i64 %i.bj, 2246822518
  %i.bl = add i64 %i.bk, %i.bi
  %i.bm = add i64 %i.bl, %i.bg                    ; 2 uses
  %i.bn = tail call noundef i64 @llvm.bswap.i64(i64 %i.bm)
  %i.bo = xor i64 %i.bn, %i.bh
  %i.bp = zext i64 %i.bo to i128
  %i.bq = mul nuw i128 %i.bp, 14029467366897019727 ; 2 uses
  %i.br = trunc i128 %i.bq to i64
  %i.bs = lshr i128 %i.bq, 64
  %i.bt = trunc nuw i128 %i.bs to i64
  %i.bu = mul i64 %i.bm, -4417276706812531889
  %i.bv = add i64 %i.bu, %i.bt
  %i.bw = shl nuw i64 %.03751, 4
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 %i.bw ; 2 uses
  %i.by = insertelement <2 x i64> poison, i64 %i.br, i64 0
  %i.bz = insertelement <2 x i64> %i.by, i64 %i.bv, i64 1 ; 2 uses
  %i.ca = lshr <2 x i64> %i.bz, splat (i64 37)
  %i.cb = xor <2 x i64> %i.ca, %i.bz
  %i.cc = mul <2 x i64> %i.cb, splat (i64 1609587791953885689) ; 2 uses
  %i.cd = lshr <2 x i64> %i.cc, splat (i64 32)
  %i.ce = load <2 x i64>, ptr %i.bx, align 1, !tbaa !27
  %i.cf = xor <2 x i64> %i.cd, %i.ce
  %i.cg = xor <2 x i64> %i.cf, %i.cc
  store <2 x i64> %i.cg, ptr %i.bx, align 1
  %i.ch = add nuw nsw i64 %.03751, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ch, %i.j
  br i1 %exitcond.not, label %._crit_edge54, label %scalar.ph, !llvm.loop !57

._crit_edge54:                                    ; preds = %scalar.ph, %middle.block
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -16 ; 2 uses
  %i.ck = load <2 x i64>, ptr %i.cj, align 1, !tbaa !27
  %i.cl = insertelement <2 x i64> poison, i64 %i.l, i64 0
  %i.cm = insertelement <2 x i64> %i.cl, i64 %i.m, i64 1
  %i.cn = xor <2 x i64> %i.ck, %i.cm
  store <2 x i64> %i.cn, ptr %i.cj, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %._crit_edge54
  %.0 = phi i32 [ 0, %._crit_edge54 ], [ 1, %bb.a ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define void @ROCKSDB_XXH3_generateSecret_fromSeed(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #23 {
bb.a:
  %i.a = insertelement <8 x i64> poison, i64 %1, i64 0
  %i.b = shufflevector <8 x i64> %i.a, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.c = sub <8 x i64> <i64 poison, i64 0, i64 poison, i64 0, i64 poison, i64 0, i64 poison, i64 0>, %i.b
  %i.d = shufflevector <8 x i64> %i.b, <8 x i64> %i.c, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 4, i32 13, i32 6, i32 15> ; 3 uses
  %i.e = add <8 x i64> %i.d, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482, i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %i.f = add <8 x i64> %i.d, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632, i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %i.g = add <8 x i64> %i.d, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245, i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  store <8 x i64> %i.e, ptr %0, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <8 x i64> %i.f, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <8 x i64> %i.g, ptr %.sroa.5.0..sroa_idx, align 1
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #24

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #25

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(read) uwtable
define internal fastcc noundef i64 @_ZL21XXH3_len_129to240_64bPKhmS0_mm(ptr nofree noundef readonly captures(none) %0, i64 noundef range(i64 129, 241) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) unnamed_addr #26 {
bb.a:
  %i.a = mul i64 %1, -7046029288634856825
  %i.b = load <4 x i64>, ptr %0, align 1, !tbaa !27
  %i.c = load <4 x i64>, ptr %2, align 1, !tbaa !27 ; 2 uses
  %i.d = insertelement <4 x i64> poison, i64 %3, i64 0
  %i.e = shufflevector <4 x i64> %i.d, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.f = add <4 x i64> %i.c, %i.e
  %i.g = sub <4 x i64> %i.c, %i.e
  %i.h = shufflevector <4 x i64> %i.f, <4 x i64> %i.g, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.i = xor <4 x i64> %i.h, %i.b                 ; 4 uses
  %i.j = extractelement <4 x i64> %i.i, i64 0
  %i.k = zext i64 %i.j to i128
  %i.l = extractelement <4 x i64> %i.i, i64 1
  %i.m = zext i64 %i.l to i128
  %i.n = mul nuw i128 %i.m, %i.k                  ; 2 uses
  %i.o = lshr i128 %i.n, 64
  %i.p = xor i128 %i.o, %i.n
  %i.q = trunc i128 %i.p to i64
  %i.r = add i64 %i.a, %i.q
  %i.s = extractelement <4 x i64> %i.i, i64 2
  %i.t = zext i64 %i.s to i128
  %i.u = extractelement <4 x i64> %i.i, i64 3
  %i.v = zext i64 %i.u to i128
  %i.w = mul nuw i128 %i.v, %i.t                  ; 2 uses
  %i.x = lshr i128 %i.w, 64
  %i.y = xor i128 %i.x, %i.w
  %i.z = trunc i128 %i.y to i64
  %i.aa = add i64 %i.r, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ad = load <4 x i64>, ptr %i.ab, align 1, !tbaa !27 ; 2 uses
  %i.ae = load <4 x i64>, ptr %i.ac, align 1, !tbaa !27 ; 2 uses
  %i.af = shufflevector <4 x i64> %i.ae, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.ag = insertelement <2 x i64> poison, i64 %3, i64 0
  %i.ah = shufflevector <2 x i64> %i.ag, <2 x i64> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.ai = add <2 x i64> %i.af, %i.ah
  %i.aj = shufflevector <4 x i64> %i.ad, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.ak = xor <2 x i64> %i.ai, %i.aj
  %i.al = shufflevector <4 x i64> %i.ae, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.am = sub <2 x i64> %i.al, %i.ah
  %i.an = shufflevector <4 x i64> %i.ad, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.ao = xor <2 x i64> %i.am, %i.an
  %i.ap = zext <2 x i64> %i.ak to <2 x i128>
  %i.aq = zext <2 x i64> %i.ao to <2 x i128>
  %i.ar = mul nuw <2 x i128> %i.aq, %i.ap         ; 2 uses
  %i.as = lshr <2 x i128> %i.ar, splat (i128 64)
  %i.at = xor <2 x i128> %i.as, %i.ar             ; 2 uses
  %i.au = bitcast <2 x i128> %i.at to <4 x i64>
  %i.av = extractelement <4 x i64> %i.au, i64 0
  %i.aw = add i64 %i.aa, %i.av
  %i.ax = bitcast <2 x i128> %i.at to <4 x i64>
  %i.ay = extractelement <4 x i64> %i.ax, i64 2
  %i.az = add i64 %i.aw, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bc = load <4 x i64>, ptr %i.ba, align 1, !tbaa !27 ; 2 uses
  %i.bd = load <4 x i64>, ptr %i.bb, align 1, !tbaa !27 ; 2 uses
  %i.be = shufflevector <4 x i64> %i.bd, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.bf = add <2 x i64> %i.be, %i.ah
  %i.bg = shufflevector <4 x i64> %i.bc, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.bh = xor <2 x i64> %i.bf, %i.bg
  %i.bi = shufflevector <4 x i64> %i.bd, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.bj = sub <2 x i64> %i.bi, %i.ah
  %i.bk = shufflevector <4 x i64> %i.bc, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.bl = xor <2 x i64> %i.bj, %i.bk
  %i.bm = zext <2 x i64> %i.bh to <2 x i128>
  %i.bn = zext <2 x i64> %i.bl to <2 x i128>
  %i.bo = mul nuw <2 x i128> %i.bn, %i.bm         ; 2 uses
  %i.bp = lshr <2 x i128> %i.bo, splat (i128 64)
  %i.bq = xor <2 x i128> %i.bp, %i.bo             ; 2 uses
  %i.br = bitcast <2 x i128> %i.bq to <4 x i64>
  %i.bs = extractelement <4 x i64> %i.br, i64 0
  %i.bt = add i64 %i.az, %i.bs
  %i.bu = bitcast <2 x i128> %i.bq to <4 x i64>
  %i.bv = extractelement <4 x i64> %i.bu, i64 2
  %i.bw = add i64 %i.bt, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.bz = load <4 x i64>, ptr %i.bx, align 1, !tbaa !27 ; 2 uses
  %i.ca = load <4 x i64>, ptr %i.by, align 1, !tbaa !27 ; 2 uses
  %i.cb = shufflevector <4 x i64> %i.ca, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.cc = add <2 x i64> %i.cb, %i.ah
  %i.cd = shufflevector <4 x i64> %i.bz, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.ce = xor <2 x i64> %i.cc, %i.cd
  %i.cf = shufflevector <4 x i64> %i.ca, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.cg = sub <2 x i64> %i.cf, %i.ah
  %i.ch = shufflevector <4 x i64> %i.bz, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.ci = xor <2 x i64> %i.cg, %i.ch
  %i.cj = zext <2 x i64> %i.ce to <2 x i128>
  %i.ck = zext <2 x i64> %i.ci to <2 x i128>
  %i.cl = mul nuw <2 x i128> %i.ck, %i.cj         ; 2 uses
  %i.cm = lshr <2 x i128> %i.cl, splat (i128 64)
  %i.cn = xor <2 x i128> %i.cm, %i.cl             ; 2 uses
  %i.co = bitcast <2 x i128> %i.cn to <4 x i64>
  %i.cp = extractelement <4 x i64> %i.co, i64 0
  %i.cq = add i64 %i.bw, %i.cp
  %i.cr = bitcast <2 x i128> %i.cn to <4 x i64>
  %i.cs = extractelement <4 x i64> %i.cr, i64 2
  %i.ct = add i64 %i.cq, %i.cs                    ; 2 uses
  %i.cu = trunc nuw nsw i64 %1 to i32
  %i.cv = lshr i32 %i.cu, 4                       ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -16
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 119
  %.val44 = load i64, ptr %i.cx, align 1, !tbaa !27
  %i.cz = getelementptr inbounds i8, ptr %i.cw, i64 -8
  %.val43 = load i64, ptr %i.cz, align 1, !tbaa !27
  %.val42 = load i64, ptr %i.cy, align 1, !tbaa !27
  %i.da = add i64 %.val42, %3
  %i.db = xor i64 %i.da, %.val44
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 127
  %.val41 = load i64, ptr %i.dc, align 1, !tbaa !27
  %i.dd = sub i64 %.val41, %3
  %i.de = xor i64 %i.dd, %.val43
  %i.df = zext i64 %i.db to i128
  %i.dg = zext i64 %i.de to i128
  %i.dh = mul nuw i128 %i.dg, %i.df               ; 2 uses
  %i.di = lshr i128 %i.dh, 64
  %i.dj = xor i128 %i.di, %i.dh
end_hunk_0
