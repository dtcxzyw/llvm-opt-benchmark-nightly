Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/aead_aes256gcm_aesni?download=true
inline.NumInlined: 110
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumUnrolled: 43
begin_hunk_0_@crypto_aead_aes256gcm_beforenm:bb.a
  store <2 x i64> %i.hc, ptr %i.gm, align 16
  %i.hd = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.gk, <2 x i64> %i.gk, i8 0) ; 2 uses
  %i.he = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.gk, <2 x i64> %i.gk, i8 17)
  %i.hf = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.hd, <2 x i64> <i64 -4467570830351532032, i64 poison>, i8 0)
  %i.hg = shufflevector <2 x i64> %i.hd, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.hh = xor <2 x i64> %i.hf, %i.hg              ; 2 uses
  %i.hi = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.hh, <2 x i64> <i64 -4467570830351532032, i64 poison>, i8 0)
  %i.hj = shufflevector <2 x i64> %i.hh, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.hk = xor <2 x i64> %i.hi, %i.he
  %i.hl = xor <2 x i64> %i.hk, %i.hj              ; 9 uses
  %i.hm = getelementptr i8, ptr %0, i64 288
  store <2 x i64> %i.hl, ptr %i.hm, align 16
  %i.hn = getelementptr i8, ptr %0, i64 304
  %i.ho = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.hl, <2 x i64> %i.gb, i8 17)
  %i.hp = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.hl, <2 x i64> %i.gb, i8 0)
  %i.hq = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.hl, <2 x i64> %i.gb, i8 1)
  %i.hr = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.hl, <2 x i64> %i.gb, i8 16)
  %i.hs = xor <2 x i64> %i.hr, %i.hq              ; 2 uses
  %i.ht = shufflevector <2 x i64> %i.hs, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.hu = shufflevector <2 x i64> %i.hs, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 3, i32 0>
  %i.hv = xor <2 x i64> %i.hp, %i.hu              ; 2 uses
  %i.hw = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.hv, <2 x i64> <i64 -4467570830351532032, i64 poison>, i8 0)
  %i.hx = shufflevector <2 x i64> %i.hv, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.hy = xor <2 x i64> %i.hw, %i.hx              ; 2 uses
  %i.hz = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.hy, <2 x i64> <i64 -4467570830351532032, i64 poison>, i8 0)
  %i.ia = shufflevector <2 x i64> %i.hy, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ib = xor <2 x i64> %i.hz, %i.ho
  %i.ic = xor <2 x i64> %i.ib, %i.ht
  %i.id = xor <2 x i64> %i.ic, %i.ia              ; 5 uses
  store <2 x i64> %i.id, ptr %i.hn, align 16
  %i.ie = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.hc, <2 x i64> %i.hc, i8 0) ; 2 uses
  %i.if = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.hc, <2 x i64> %i.hc, i8 17)
  %i.ig = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ie, <2 x i64> <i64 -4467570830351532032, i64 poison>, i8 0)
  %i.ih = shufflevector <2 x i64> %i.ie, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ii = xor <2 x i64> %i.ig, %i.ih              ; 2 uses
  %i.ij = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ii, <2 x i64> <i64 -4467570830351532032, i64 poison>, i8 0)
  %i.ik = shufflevector <2 x i64> %i.ii, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.il = xor <2 x i64> %i.ij, %i.if
  %i.im = xor <2 x i64> %i.il, %i.ik              ; 9 uses
  %i.in = getelementptr i8, ptr %0, i64 320
  store <2 x i64> %i.im, ptr %i.in, align 16
  %i.io = getelementptr i8, ptr %0, i64 336
  %i.ip = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.im, <2 x i64> %i.gb, i8 17)
  %i.iq = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.im, <2 x i64> %i.gb, i8 0)
  %i.ir = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.im, <2 x i64> %i.gb, i8 1)
  %i.is = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.im, <2 x i64> %i.gb, i8 16)
  %i.it = xor <2 x i64> %i.is, %i.ir              ; 2 uses
  %i.iu = shufflevector <2 x i64> %i.it, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.iv = shufflevector <2 x i64> %i.it, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 3, i32 0>
  %i.iw = xor <2 x i64> %i.iq, %i.iv              ; 2 uses
  %i.ix = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.iw, <2 x i64> <i64 -4467570830351532032, i64 poison>, i8 0)
  %i.iy = shufflevector <2 x i64> %i.iw, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.iz = xor <2 x i64> %i.ix, %i.iy              ; 2 uses
  %i.ja = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.iz, <2 x i64> <i64 -4467570830351532032, i64 poison>, i8 0)
  %i.jb = shufflevector <2 x i64> %i.iz, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.jc = xor <2 x i64> %i.ja, %i.ip
  %i.jd = xor <2 x i64> %i.jc, %i.iu
  %i.je = xor <2 x i64> %i.jd, %i.jb              ; 5 uses
  store <2 x i64> %i.je, ptr %i.io, align 16
  %i.jf = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.hl, <2 x i64> %i.hl, i8 0) ; 2 uses
  %i.jg = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.hl, <2 x i64> %i.hl, i8 17)
  %i.jh = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.jf, <2 x i64> <i64 -4467570830351532032, i64 poison>, i8 0)
  %i.ji = shufflevector <2 x i64> %i.jf, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.jj = xor <2 x i64> %i.jh, %i.ji              ; 2 uses
  %i.jk = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.jj, <2 x i64> <i64 -4467570830351532032, i64 poison>, i8 0)
  %i.jl = shufflevector <2 x i64> %i.jj, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.jm = xor <2 x i64> %i.jk, %i.jg
  %i.jn = xor <2 x i64> %i.jm, %i.jl              ; 5 uses
  %i.jo = getelementptr i8, ptr %0, i64 352
  store <2 x i64> %i.jn, ptr %i.jo, align 16
  %i.jp = getelementptr i8, ptr %0, i64 368
  %i.jq = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.jn, <2 x i64> %i.gb, i8 17)
  %i.jr = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.jn, <2 x i64> %i.gb, i8 0)
  %i.js = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.jn, <2 x i64> %i.gb, i8 1)
  %i.jt = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.jn, <2 x i64> %i.gb, i8 16)
  %i.ju = xor <2 x i64> %i.jt, %i.js              ; 2 uses
  %i.jv = shufflevector <2 x i64> %i.ju, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.jw = shufflevector <2 x i64> %i.ju, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 3, i32 0>
  %i.jx = xor <2 x i64> %i.jr, %i.jw              ; 2 uses
  %i.jy = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.jx, <2 x i64> <i64 -4467570830351532032, i64 poison>, i8 0)
  %i.jz = shufflevector <2 x i64> %i.jx, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ka = xor <2 x i64> %i.jy, %i.jz              ; 2 uses
  %i.kb = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ka, <2 x i64> <i64 -4467570830351532032, i64 poison>, i8 0)
  %i.kc = shufflevector <2 x i64> %i.ka, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.kd = xor <2 x i64> %i.kb, %i.jq
  %i.ke = xor <2 x i64> %i.kd, %i.jv
  %i.kf = xor <2 x i64> %i.ke, %i.kc
  store <2 x i64> %i.kf, ptr %i.jp, align 16
  %i.kg = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.id, <2 x i64> %i.id, i8 0) ; 2 uses
  %i.kh = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.id, <2 x i64> %i.id, i8 17)
  %i.ki = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.kg, <2 x i64> <i64 -4467570830351532032, i64 poison>, i8 0)
  %i.kj = shufflevector <2 x i64> %i.kg, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.kk = xor <2 x i64> %i.ki, %i.kj              ; 2 uses
  %i.kl = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.kk, <2 x i64> <i64 -4467570830351532032, i64 poison>, i8 0)
  %i.km = shufflevector <2 x i64> %i.kk, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.kn = xor <2 x i64> %i.kl, %i.kh
  %i.ko = xor <2 x i64> %i.kn, %i.km              ; 5 uses
  %i.kp = getelementptr i8, ptr %0, i64 384
  store <2 x i64> %i.ko, ptr %i.kp, align 16
  %i.kq = getelementptr i8, ptr %0, i64 400
  %i.kr = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ko, <2 x i64> %i.gb, i8 17)
  %i.ks = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ko, <2 x i64> %i.gb, i8 0)
  %i.kt = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ko, <2 x i64> %i.gb, i8 1)
  %i.ku = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ko, <2 x i64> %i.gb, i8 16)
  %i.kv = xor <2 x i64> %i.ku, %i.kt              ; 2 uses
  %i.kw = shufflevector <2 x i64> %i.kv, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.kx = shufflevector <2 x i64> %i.kv, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 3, i32 0>
  %i.ky = xor <2 x i64> %i.ks, %i.kx              ; 2 uses
  %i.kz = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ky, <2 x i64> <i64 -4467570830351532032, i64 poison>, i8 0)
  %i.la = shufflevector <2 x i64> %i.ky, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.lb = xor <2 x i64> %i.kz, %i.la              ; 2 uses
  %i.lc = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.lb, <2 x i64> <i64 -4467570830351532032, i64 poison>, i8 0)
  %i.ld = shufflevector <2 x i64> %i.lb, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.le = xor <2 x i64> %i.lc, %i.kr
  %i.lf = xor <2 x i64> %i.le, %i.kw
  %i.lg = xor <2 x i64> %i.lf, %i.ld
  store <2 x i64> %i.lg, ptr %i.kq, align 16
  %i.lh = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.im, <2 x i64> %i.im, i8 0) ; 2 uses
  %i.li = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.im, <2 x i64> %i.im, i8 17)
  %i.lj = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.lh, <2 x i64> <i64 -4467570830351532032, i64 poison>, i8 0)
  %i.lk = shufflevector <2 x i64> %i.lh, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ll = xor <2 x i64> %i.lj, %i.lk              ; 2 uses
  %i.lm = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ll, <2 x i64> <i64 -4467570830351532032, i64 poison>, i8 0)
  %i.ln = shufflevector <2 x i64> %i.ll, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.lo = xor <2 x i64> %i.lm, %i.li
  %i.lp = xor <2 x i64> %i.lo, %i.ln              ; 5 uses
  %i.lq = getelementptr i8, ptr %0, i64 416
  store <2 x i64> %i.lp, ptr %i.lq, align 16
  %i.lr = getelementptr i8, ptr %0, i64 432
  %i.ls = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.lp, <2 x i64> %i.gb, i8 17)
  %i.lt = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.lp, <2 x i64> %i.gb, i8 0)
  %i.lu = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.lp, <2 x i64> %i.gb, i8 1)
  %i.lv = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.lp, <2 x i64> %i.gb, i8 16)
  %i.lw = xor <2 x i64> %i.lv, %i.lu              ; 2 uses
  %i.lx = shufflevector <2 x i64> %i.lw, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.ly = shufflevector <2 x i64> %i.lw, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 3, i32 0>
  %i.lz = xor <2 x i64> %i.lt, %i.ly              ; 2 uses
  %i.ma = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.lz, <2 x i64> <i64 -4467570830351532032, i64 poison>, i8 0)
  %i.mb = shufflevector <2 x i64> %i.lz, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.mc = xor <2 x i64> %i.ma, %i.mb              ; 2 uses
  %i.md = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.mc, <2 x i64> <i64 -4467570830351532032, i64 poison>, i8 0)
  %i.me = shufflevector <2 x i64> %i.mc, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.mf = xor <2 x i64> %i.md, %i.ls
  %i.mg = xor <2 x i64> %i.mf, %i.lx
  %i.mh = xor <2 x i64> %i.mg, %i.me
  store <2 x i64> %i.mh, ptr %i.lr, align 16
  %i.mi = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.je, <2 x i64> %i.je, i8 0) ; 2 uses
  %i.mj = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.je, <2 x i64> %i.je, i8 17)
  %i.mk = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.mi, <2 x i64> <i64 -4467570830351532032, i64 poison>, i8 0)
  %i.ml = shufflevector <2 x i64> %i.mi, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.mm = xor <2 x i64> %i.mk, %i.ml              ; 2 uses
  %i.mn = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.mm, <2 x i64> <i64 -4467570830351532032, i64 poison>, i8 0)
  %i.mo = shufflevector <2 x i64> %i.mm, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.mp = xor <2 x i64> %i.mn, %i.mj
  %i.mq = xor <2 x i64> %i.mp, %i.mo
  %i.mr = getelementptr i8, ptr %0, i64 448
  store <2 x i64> %i.mq, ptr %i.mr, align 16
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind ssp memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local range(i32 -1, 1) i32 @crypto_aead_aes256gcm_encrypt_detached_afternm(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, i64 noundef %6, ptr nofree readnone captures(none) %7, ptr nofree noundef nonnull readonly captures(none) %8, ptr nofree noundef nonnull readonly %9) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 10 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  %10 = alloca %struct.GHash, align 16            ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %2, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = add i64 %6, 15
  %i.d = lshr i64 %i.c, 4
  %i.e = icmp ugt i64 %6, -225
  %i.f = icmp ugt i64 %4, -225
  %or.cond.i = or i1 %i.f, %i.e
  %i.g = icmp ult i64 %6, %i.d
  %or.cond19.i = or i1 %or.cond.i, %i.g
  br i1 %or.cond19.i, label %required_blocks.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = add nuw i64 %4, 15
  %i.i = lshr i64 %i.h, 4
  %i.j = icmp ult i64 %4, %i.i
  %i.k = icmp ugt i64 %4, 68719476688
  %or.cond3.i = or i1 %i.k, %i.j
  br i1 %or.cond3.i, label %required_blocks.exit.thread, label %required_blocks.exit

required_blocks.exit:                             ; preds = %bb.d
  store <2 x i64> zeroinitializer, ptr %10, align 16
  %.sroa.0.0.copyload = load <3 x i32>, ptr %8, align 1
  %.sroa.0.0.vec.expand = shufflevector <3 x i32> %.sroa.0.0.copyload, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %.sroa.0.12.vec.insert = insertelement <4 x i32> %.sroa.0.0.vec.expand, i32 33554432, i64 3 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.l = icmp ne ptr %5, null
  %i.m = icmp ne i64 %6, 0
  %or.cond.i25 = and i1 %i.l, %i.m
  br i1 %or.cond.i25, label %bb.e, label %bb.g

required_blocks.exit.thread:                      ; preds = %bb.c, %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %1, i8 noundef -48, i64 noundef 16, i1 noundef false) #13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %0, i8 noundef 0, i64 noundef %4, i1 noundef false) #13
  br label %bb.m

bb.e:                                             ; preds = %required_blocks.exit
  %i.n = and i64 %6, -16
  call fastcc void @gh_ad_blocks(ptr noundef nonnull readonly %9, ptr noundef nonnull %10, ptr noundef nonnull readonly %5, i64 noundef %i.n)
  %i.o = and i64 %6, 15                           ; 3 uses
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 noundef 0, i64 noundef 16, i1 noundef false) #13
  %i.p = getelementptr i8, ptr %5, i64 %6
  %i.q = sub nsw i64 0, %i.o
  %i.r = getelementptr i8, ptr %i.p, i64 %i.q
  %i.s = call ptr @__memcpy_chk(ptr noundef nonnull %i.b, ptr noundef nonnull readonly %i.r, i64 noundef range(i64 1, 16) %i.o, i64 noundef 16) #13, !alias.scope !13 ; 0 uses
  call fastcc void @gh_ad_blocks(ptr noundef nonnull readonly %9, ptr noundef nonnull %10, ptr noundef nonnull %i.b, i64 noundef 16)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %required_blocks.exit
  %11 = bitcast <4 x i32> %.sroa.0.12.vec.insert to <16 x i8>
  %i.t = shufflevector <16 x i8> %11, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.u = bitcast <16 x i8> %i.t to <2 x i64>      ; 8 uses
  %i.v = icmp samesign ugt i64 %4, 223
  br i1 %i.v, label %.preheader454.preheader.i, label %bb.h

.preheader454.preheader.i:                        ; preds = %bb.g
  %i.w = bitcast <4 x i32> %.sroa.0.12.vec.insert to <2 x i64>
  %i.x = add <2 x i64> %i.u, <i64 1, i64 0>
  %i.y = bitcast <2 x i64> %i.x to <16 x i8>
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.aa = bitcast <16 x i8> %i.z to <2 x i64>
  %i.ab = add <2 x i64> %i.u, <i64 2, i64 0>
  %i.ac = bitcast <2 x i64> %i.ab to <16 x i8>
  %i.ad = shufflevector <16 x i8> %i.ac, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ae = bitcast <16 x i8> %i.ad to <2 x i64>
  %i.af = add <2 x i64> %i.u, <i64 3, i64 0>
  %i.ag = bitcast <2 x i64> %i.af to <16 x i8>
  %i.ah = shufflevector <16 x i8> %i.ag, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ai = bitcast <16 x i8> %i.ah to <2 x i64>
  %i.aj = add <2 x i64> %i.u, <i64 4, i64 0>
  %i.ak = bitcast <2 x i64> %i.aj to <16 x i8>
  %i.al = shufflevector <16 x i8> %i.ak, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.am = bitcast <16 x i8> %i.al to <2 x i64>
  %i.an = add <2 x i64> %i.u, <i64 5, i64 0>
  %i.ao = bitcast <2 x i64> %i.an to <16 x i8>
  %i.ap = shufflevector <16 x i8> %i.ao, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.aq = bitcast <16 x i8> %i.ap to <2 x i64>
  %i.ar = add <2 x i64> %i.u, <i64 6, i64 0>
  %i.as = bitcast <2 x i64> %i.ar to <16 x i8>
  %i.at = shufflevector <16 x i8> %i.as, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.au = bitcast <16 x i8> %i.at to <2 x i64>
  %i.av = load <2 x i64>, ptr %9, align 16        ; 7 uses
  %i.aw = xor <2 x i64> %i.av, %i.w
  %i.ax = xor <2 x i64> %i.av, %i.aa
  %i.ay = xor <2 x i64> %i.av, %i.ae
  %i.az = xor <2 x i64> %i.av, %i.ai
  %i.ba = xor <2 x i64> %i.av, %i.am
  %i.bb = xor <2 x i64> %i.av, %i.aq
  %i.bc = xor <2 x i64> %i.av, %i.au
  %i.bd = getelementptr i8, ptr %9, i64 16        ; 3 uses
  %i.be = load <2 x i64>, ptr %i.bd, align 16     ; 7 uses
  %i.bf = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.aw, <2 x i64> %i.be)
  %i.bg = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ax, <2 x i64> %i.be)
  %i.bh = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ay, <2 x i64> %i.be)
  %i.bi = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.az, <2 x i64> %i.be)
  %i.bj = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ba, <2 x i64> %i.be)
  %i.bk = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bb, <2 x i64> %i.be)
  %i.bl = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bc, <2 x i64> %i.be)
  %i.bm = getelementptr i8, ptr %9, i64 32        ; 3 uses
  %i.bn = load <2 x i64>, ptr %i.bm, align 16     ; 7 uses
  %i.bo = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bf, <2 x i64> %i.bn)
  %i.bp = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bg, <2 x i64> %i.bn)
  %i.bq = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bh, <2 x i64> %i.bn)
  %i.br = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bi, <2 x i64> %i.bn)
  %i.bs = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bj, <2 x i64> %i.bn)
  %i.bt = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bk, <2 x i64> %i.bn)
  %i.bu = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bl, <2 x i64> %i.bn)
  %i.bv = getelementptr i8, ptr %9, i64 48        ; 3 uses
  %i.bw = load <2 x i64>, ptr %i.bv, align 16     ; 7 uses
  %i.bx = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bo, <2 x i64> %i.bw)
  %i.by = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bp, <2 x i64> %i.bw)
  %i.bz = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bq, <2 x i64> %i.bw)
  %i.ca = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.br, <2 x i64> %i.bw)
  %i.cb = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bs, <2 x i64> %i.bw)
  %i.cc = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bt, <2 x i64> %i.bw)
  %i.cd = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bu, <2 x i64> %i.bw)
  %i.ce = getelementptr i8, ptr %9, i64 64        ; 3 uses
  %i.cf = load <2 x i64>, ptr %i.ce, align 16     ; 7 uses
  %i.cg = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bx, <2 x i64> %i.cf)
  %i.ch = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.by, <2 x i64> %i.cf)
  %i.ci = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bz, <2 x i64> %i.cf)
  %i.cj = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ca, <2 x i64> %i.cf)
  %i.ck = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.cb, <2 x i64> %i.cf)
  %i.cl = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.cc, <2 x i64> %i.cf)
  %i.cm = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.cd, <2 x i64> %i.cf)
  %i.cn = getelementptr i8, ptr %9, i64 80        ; 3 uses
  %i.co = load <2 x i64>, ptr %i.cn, align 16     ; 7 uses
  %i.cp = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.cg, <2 x i64> %i.co)
  %i.cq = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ch, <2 x i64> %i.co)
  %i.cr = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ci, <2 x i64> %i.co)
  %i.cs = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.cj, <2 x i64> %i.co)
  %i.ct = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ck, <2 x i64> %i.co)
  %i.cu = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.cl, <2 x i64> %i.co)
  %i.cv = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.cm, <2 x i64> %i.co)
  %i.cw = getelementptr i8, ptr %9, i64 96        ; 3 uses
  %i.cx = load <2 x i64>, ptr %i.cw, align 16     ; 7 uses
  %i.cy = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.cp, <2 x i64> %i.cx)
  %i.cz = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.cq, <2 x i64> %i.cx)
  %i.da = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.cr, <2 x i64> %i.cx)
  %i.db = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.cs, <2 x i64> %i.cx)
  %i.dc = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ct, <2 x i64> %i.cx)
  %i.dd = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.cu, <2 x i64> %i.cx)
  %i.de = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.cv, <2 x i64> %i.cx)
  %i.df = getelementptr i8, ptr %9, i64 112       ; 3 uses
  %i.dg = load <2 x i64>, ptr %i.df, align 16     ; 7 uses
  %i.dh = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.cy, <2 x i64> %i.dg)
  %i.di = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.cz, <2 x i64> %i.dg)
  %i.dj = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.da, <2 x i64> %i.dg)
  %i.dk = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.db, <2 x i64> %i.dg)
  %i.dl = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.dc, <2 x i64> %i.dg)
  %i.dm = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.dd, <2 x i64> %i.dg)
  %i.dn = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.de, <2 x i64> %i.dg)
  %i.do = getelementptr i8, ptr %9, i64 128       ; 3 uses
  %i.dp = load <2 x i64>, ptr %i.do, align 16     ; 7 uses
  %i.dq = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.dh, <2 x i64> %i.dp)
  %i.dr = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.di, <2 x i64> %i.dp)
  %i.ds = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.dj, <2 x i64> %i.dp)
  %i.dt = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.dk, <2 x i64> %i.dp)
  %i.du = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.dl, <2 x i64> %i.dp)
  %i.dv = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.dm, <2 x i64> %i.dp)
  %i.dw = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.dn, <2 x i64> %i.dp)
  %i.dx = getelementptr i8, ptr %9, i64 144       ; 3 uses
  %i.dy = load <2 x i64>, ptr %i.dx, align 16     ; 7 uses
  %i.dz = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.dq, <2 x i64> %i.dy)
  %i.ea = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.dr, <2 x i64> %i.dy)
  %i.eb = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ds, <2 x i64> %i.dy)
  %i.ec = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.dt, <2 x i64> %i.dy)
  %i.ed = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.du, <2 x i64> %i.dy)
  %i.ee = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.dv, <2 x i64> %i.dy)
  %i.ef = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.dw, <2 x i64> %i.dy)
  %i.eg = getelementptr i8, ptr %9, i64 160       ; 3 uses
  %i.eh = load <2 x i64>, ptr %i.eg, align 16     ; 7 uses
  %i.ei = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.dz, <2 x i64> %i.eh)
  %i.ej = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ea, <2 x i64> %i.eh)
  %i.ek = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.eb, <2 x i64> %i.eh)
  %i.el = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ec, <2 x i64> %i.eh)
  %i.em = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ed, <2 x i64> %i.eh)
  %i.en = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ee, <2 x i64> %i.eh)
  %i.eo = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ef, <2 x i64> %i.eh)
  %i.ep = getelementptr i8, ptr %9, i64 176       ; 3 uses
  %i.eq = load <2 x i64>, ptr %i.ep, align 16     ; 7 uses
  %i.er = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ei, <2 x i64> %i.eq)
  %i.es = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ej, <2 x i64> %i.eq)
  %i.et = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ek, <2 x i64> %i.eq)
  %i.eu = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.el, <2 x i64> %i.eq)
  %i.ev = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.em, <2 x i64> %i.eq)
  %i.ew = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.en, <2 x i64> %i.eq)
  %i.ex = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.eo, <2 x i64> %i.eq)
  %i.ey = getelementptr i8, ptr %9, i64 192       ; 3 uses
  %i.ez = load <2 x i64>, ptr %i.ey, align 16     ; 7 uses
  %i.fa = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.er, <2 x i64> %i.ez)
  %i.fb = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.es, <2 x i64> %i.ez)
  %i.fc = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.et, <2 x i64> %i.ez)
  %i.fd = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.eu, <2 x i64> %i.ez)
  %i.fe = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ev, <2 x i64> %i.ez)
  %i.ff = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ew, <2 x i64> %i.ez)
  %i.fg = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ex, <2 x i64> %i.ez)
  %i.fh = getelementptr i8, ptr %9, i64 208       ; 3 uses
  %i.fi = load <2 x i64>, ptr %i.fh, align 16     ; 7 uses
  %i.fj = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.fa, <2 x i64> %i.fi)
  %i.fk = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.fb, <2 x i64> %i.fi)
  %i.fl = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.fc, <2 x i64> %i.fi)
  %i.fm = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.fd, <2 x i64> %i.fi)
  %i.fn = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.fe, <2 x i64> %i.fi)
  %i.fo = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ff, <2 x i64> %i.fi)
  %i.fp = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.fg, <2 x i64> %i.fi)
  %i.fq = add <2 x i64> %i.u, <i64 7, i64 0>      ; 2 uses
  %i.fr = getelementptr i8, ptr %9, i64 224       ; 3 uses
  %i.fs = load <2 x i64>, ptr %i.fr, align 16     ; 7 uses
  %i.ft = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %i.fj, <2 x i64> %i.fs)
  %i.fu = load <2 x i64>, ptr %3, align 1
  %i.fv = xor <2 x i64> %i.fu, %i.ft
  %i.fw = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %i.fk, <2 x i64> %i.fs)
  %i.fx = getelementptr i8, ptr %3, i64 16
  %i.fy = load <2 x i64>, ptr %i.fx, align 1
  %i.fz = xor <2 x i64> %i.fy, %i.fw
  %i.ga = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %i.fl, <2 x i64> %i.fs)
  %i.gb = getelementptr i8, ptr %3, i64 32
  %i.gc = load <2 x i64>, ptr %i.gb, align 1
  %i.gd = xor <2 x i64> %i.gc, %i.ga
  %i.ge = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %i.fm, <2 x i64> %i.fs)
  %i.gf = getelementptr i8, ptr %3, i64 48
  %i.gg = load <2 x i64>, ptr %i.gf, align 1
  %i.gh = xor <2 x i64> %i.gg, %i.ge
  %i.gi = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %i.fn, <2 x i64> %i.fs)
  %i.gj = getelementptr i8, ptr %3, i64 64
  %i.gk = load <2 x i64>, ptr %i.gj, align 1
  %i.gl = xor <2 x i64> %i.gk, %i.gi
  %i.gm = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %i.fo, <2 x i64> %i.fs)
  %i.gn = getelementptr i8, ptr %3, i64 80
  %i.go = load <2 x i64>, ptr %i.gn, align 1
  %i.gp = xor <2 x i64> %i.go, %i.gm
  %i.gq = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %i.fp, <2 x i64> %i.fs)
  %i.gr = getelementptr i8, ptr %3, i64 96
  %i.gs = load <2 x i64>, ptr %i.gr, align 1
  %i.gt = xor <2 x i64> %i.gs, %i.gq
  store <2 x i64> %i.fv, ptr %0, align 1
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.fz, ptr %.sroa.9.0..sroa_idx.i.i, align 1
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.gd, ptr %.sroa.15.0..sroa_idx.i.i, align 1
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %i.gh, ptr %.sroa.21.0..sroa_idx.i.i, align 1
  %.sroa.27.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x i64> %i.gl, ptr %.sroa.27.0..sroa_idx.i.i, align 1
  %.sroa.33.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x i64> %i.gp, ptr %.sroa.33.0..sroa_idx.i.i, align 1
  %.sroa.39.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x i64> %i.gt, ptr %.sroa.39.0..sroa_idx.i.i, align 1
  %.not255504.i = icmp samesign ult i64 %4, 336
  br i1 %.not255504.i, label %.preheader454.preheader.._crit_edge_crit_edge.i, label %.preheader453.lr.ph.i

.preheader454.preheader.._crit_edge_crit_edge.i:  ; preds = %.preheader454.preheader.i
  %.val270.pre.i = load <2 x i64>, ptr %10, align 16
  %.phi.trans.insert = getelementptr i8, ptr %9, i64 304
  %.pre = load <2 x i64>, ptr %.phi.trans.insert, align 16
  %.phi.trans.insert70.a = getelementptr i8, ptr %9, i64 288
end_hunk_0
begin_hunk_1_@crypto_aead_aes256gcm_encrypt_detached_afternm:bb.a
  %i.bkt = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bkr, <2 x i64> %i.bks)
  %i.bku = load <2 x i64>, ptr %i.bjj, align 16
  %i.bkv = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bkt, <2 x i64> %i.bku)
  %i.bkw = load <2 x i64>, ptr %i.bjk, align 16
  %i.bkx = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bkv, <2 x i64> %i.bkw)
  %i.bky = load <2 x i64>, ptr %i.bjl, align 16
  %i.bkz = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bkx, <2 x i64> %i.bky)
  %i.bla = load <2 x i64>, ptr %i.bjm, align 16
  %i.blb = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bkz, <2 x i64> %i.bla)
  %i.blc = load <2 x i64>, ptr %i.bjn, align 16
  %i.bld = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.blb, <2 x i64> %i.blc)
  %i.ble = load <2 x i64>, ptr %i.bjo, align 16
  %i.blf = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %i.bld, <2 x i64> %i.ble)
  %i.blg = load <2 x i64>, ptr %i.bkb, align 1
  %i.blh = xor <2 x i64> %i.blg, %i.blf           ; 2 uses
  store <2 x i64> %i.blh, ptr %i.bka, align 1
  %i.bli = getelementptr i8, ptr %i.bka, i64 16
  %i.blj = getelementptr i8, ptr %i.bkb, i64 16
  %i.blk = load <2 x i64>, ptr %9, align 16
  %i.bll = xor <2 x i64> %i.blk, %i.bjz
  %i.blm = load <2 x i64>, ptr %i.bjb, align 16
  %i.bln = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bll, <2 x i64> %i.blm)
  %i.blo = load <2 x i64>, ptr %i.bjc, align 16
  %i.blp = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bln, <2 x i64> %i.blo)
  %i.blq = load <2 x i64>, ptr %i.bjd, align 16
  %i.blr = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.blp, <2 x i64> %i.blq)
  %i.bls = load <2 x i64>, ptr %i.bje, align 16
  %i.blt = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.blr, <2 x i64> %i.bls)
  %i.blu = load <2 x i64>, ptr %i.bjf, align 16
  %i.blv = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.blt, <2 x i64> %i.blu)
  %i.blw = load <2 x i64>, ptr %i.bjg, align 16
  %i.blx = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.blv, <2 x i64> %i.blw)
  %i.bly = load <2 x i64>, ptr %i.bjh, align 16
  %i.blz = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.blx, <2 x i64> %i.bly)
  %i.bma = load <2 x i64>, ptr %i.bji, align 16
  %i.bmb = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.blz, <2 x i64> %i.bma)
  %i.bmc = load <2 x i64>, ptr %i.bjj, align 16
  %i.bmd = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bmb, <2 x i64> %i.bmc)
  %i.bme = load <2 x i64>, ptr %i.bjk, align 16
  %i.bmf = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bmd, <2 x i64> %i.bme)
  %i.bmg = load <2 x i64>, ptr %i.bjl, align 16
  %i.bmh = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bmf, <2 x i64> %i.bmg)
  %i.bmi = load <2 x i64>, ptr %i.bjm, align 16
  %i.bmj = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bmh, <2 x i64> %i.bmi)
  %i.bmk = load <2 x i64>, ptr %i.bjn, align 16
  %i.bml = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bmj, <2 x i64> %i.bmk)
  %i.bmm = load <2 x i64>, ptr %i.bjo, align 16
  %i.bmn = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %i.bml, <2 x i64> %i.bmm)
  %i.bmo = load <2 x i64>, ptr %i.blj, align 1
  %i.bmp = xor <2 x i64> %i.bmo, %i.bmn           ; 2 uses
  store <2 x i64> %i.bmp, ptr %i.bli, align 1
  %i.bmq = add <2 x i64> %.5242538.i, <i64 2, i64 0> ; 2 uses
  %i.bmr = load <2 x i64>, ptr %i.bjq, align 16   ; 4 uses
  %i.bms = bitcast <2 x i64> %i.blh to <16 x i8>
  %i.bmt = shufflevector <16 x i8> %i.bms, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.bmu = bitcast <16 x i8> %i.bmt to <2 x i64>
  %i.bmv = xor <2 x i64> %i.bjr, %i.bmu           ; 4 uses
  %i.bmw = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.bmv, <2 x i64> %i.bmr, i8 17)
  %i.bmx = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.bmv, <2 x i64> %i.bmr, i8 0)
  %i.bmy = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.bmv, <2 x i64> %i.bmr, i8 1)
  %i.bmz = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.bmv, <2 x i64> %i.bmr, i8 16)
  %i.bna = load <2 x i64>, ptr %i.bjp, align 16   ; 4 uses
  %i.bnb = bitcast <2 x i64> %i.bmp to <16 x i8>
  %i.bnc = shufflevector <16 x i8> %i.bnb, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.bnd = bitcast <16 x i8> %i.bnc to <2 x i64>  ; 4 uses
  %i.bne = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.bnd, <2 x i64> %i.bna, i8 17)
  %i.bnf = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.bnd, <2 x i64> %i.bna, i8 0)
  %i.bng = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.bnd, <2 x i64> %i.bna, i8 1)
  %i.bnh = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.bnd, <2 x i64> %i.bna, i8 16)
  %i.bni = xor <2 x i64> %i.bne, %i.bmw
  %i.bnj = xor <2 x i64> %i.bnf, %i.bmx
  %i.bnk = xor <2 x i64> %i.bmz, %i.bmy
  %i.bnl = xor <2 x i64> %i.bnk, %i.bng
  %i.bnm = xor <2 x i64> %i.bnl, %i.bnh           ; 2 uses
  %i.bnn = shufflevector <2 x i64> %i.bnm, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.bno = shufflevector <2 x i64> %i.bnm, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 3, i32 0>
  %i.bnp = xor <2 x i64> %i.bnj, %i.bno           ; 2 uses
  %i.bnq = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.bnp, <2 x i64> <i64 -4467570830351532032, i64 poison>, i8 0)
  %i.bnr = shufflevector <2 x i64> %i.bnp, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bns = xor <2 x i64> %i.bnq, %i.bnr           ; 2 uses
  %i.bnt = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.bns, <2 x i64> <i64 -4467570830351532032, i64 poison>, i8 0)
  %i.bnu = shufflevector <2 x i64> %i.bns, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bnv = xor <2 x i64> %i.bni, %i.bnt
  %i.bnw = xor <2 x i64> %i.bnv, %i.bnn
  %i.bnx = xor <2 x i64> %i.bnw, %i.bnu           ; 2 uses
  %i.bny = add nuw nsw i64 %i.bjs, 32             ; 2 uses
  %.not258.i = icmp samesign ugt i64 %i.bny, %4
  br i1 %.not258.i, label %.preheader446.i.loopexit, label %.preheader447.i, !llvm.loop !11

.preheader446.i.loopexit:                         ; preds = %.preheader447.i
  store <2 x i64> %i.bnx, ptr %10, align 16
  br label %.preheader446.i

.preheader446.i:                                  ; preds = %.preheader446.i.loopexit, %.preheader448.i
  %.5242.lcssa.i = phi <2 x i64> [ %.4241.lcssa.i, %.preheader448.i ], [ %i.bmq, %.preheader446.i.loopexit ] ; 2 uses
  %.5235.lcssa.i = phi i64 [ %.4234.lcssa.i, %.preheader448.i ], [ %i.bjs, %.preheader446.i.loopexit ] ; 3 uses
  %i.bnz = add nuw nsw i64 %.5235.lcssa.i, 16     ; 2 uses
  %i.boa = icmp samesign ult i64 %i.bnz, %4
  br i1 %i.boa, label %.lr.ph.i, label %._crit_edge544.i

.lr.ph.i:                                         ; preds = %.preheader446.i
  %i.bob = getelementptr i8, ptr %9, i64 16
  %i.boc = getelementptr i8, ptr %9, i64 32
  %i.bod = getelementptr i8, ptr %9, i64 48
  %i.boe = getelementptr i8, ptr %9, i64 64
  %i.bof = getelementptr i8, ptr %9, i64 80
  %i.bog = getelementptr i8, ptr %9, i64 96
  %i.boh = getelementptr i8, ptr %9, i64 112
  %i.boi = getelementptr i8, ptr %9, i64 128
  %i.boj = getelementptr i8, ptr %9, i64 144
  %i.bok = getelementptr i8, ptr %9, i64 160
  %i.bol = getelementptr i8, ptr %9, i64 176
  %i.bom = getelementptr i8, ptr %9, i64 192
  %i.bon = getelementptr i8, ptr %9, i64 208
  %i.boo = getelementptr i8, ptr %9, i64 224
  %i.bop = getelementptr i8, ptr %9, i64 240
  %.promoted45 = load <2 x i64>, ptr %10, align 16
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %i.boq = phi <2 x i64> [ %.promoted45, %.lr.ph.i ], [ %i.bqx, %bb.j ]
  %i.bor = phi i64 [ %i.bnz, %.lr.ph.i ], [ %i.bqz, %bb.j ] ; 3 uses
  %.6236543.i = phi i64 [ %.5235.lcssa.i, %.lr.ph.i ], [ %i.bor, %bb.j ] ; 2 uses
  %.6243542.i = phi <2 x i64> [ %.5242.lcssa.i, %.lr.ph.i ], [ %i.bqy, %bb.j ] ; 2 uses
  %i.bos = getelementptr i8, ptr %0, i64 %.6236543.i
  %i.bot = getelementptr i8, ptr %3, i64 %.6236543.i
  %i.bou = bitcast <2 x i64> %.6243542.i to <16 x i8>
  %i.bov = shufflevector <16 x i8> %i.bou, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.bow = bitcast <16 x i8> %i.bov to <2 x i64>
  %i.box = load <2 x i64>, ptr %9, align 16
  %i.boy = xor <2 x i64> %i.box, %i.bow
  %i.boz = load <2 x i64>, ptr %i.bob, align 16
  %i.bpa = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.boy, <2 x i64> %i.boz)
  %i.bpb = load <2 x i64>, ptr %i.boc, align 16
  %i.bpc = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bpa, <2 x i64> %i.bpb)
  %i.bpd = load <2 x i64>, ptr %i.bod, align 16
  %i.bpe = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bpc, <2 x i64> %i.bpd)
  %i.bpf = load <2 x i64>, ptr %i.boe, align 16
  %i.bpg = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bpe, <2 x i64> %i.bpf)
  %i.bph = load <2 x i64>, ptr %i.bof, align 16
  %i.bpi = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bpg, <2 x i64> %i.bph)
  %i.bpj = load <2 x i64>, ptr %i.bog, align 16
  %i.bpk = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bpi, <2 x i64> %i.bpj)
  %i.bpl = load <2 x i64>, ptr %i.boh, align 16
  %i.bpm = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bpk, <2 x i64> %i.bpl)
  %i.bpn = load <2 x i64>, ptr %i.boi, align 16
  %i.bpo = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bpm, <2 x i64> %i.bpn)
  %i.bpp = load <2 x i64>, ptr %i.boj, align 16
  %i.bpq = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bpo, <2 x i64> %i.bpp)
  %i.bpr = load <2 x i64>, ptr %i.bok, align 16
  %i.bps = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bpq, <2 x i64> %i.bpr)
  %i.bpt = load <2 x i64>, ptr %i.bol, align 16
  %i.bpu = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bps, <2 x i64> %i.bpt)
  %i.bpv = load <2 x i64>, ptr %i.bom, align 16
  %i.bpw = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bpu, <2 x i64> %i.bpv)
  %i.bpx = load <2 x i64>, ptr %i.bon, align 16
  %i.bpy = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bpw, <2 x i64> %i.bpx)
  %i.bpz = load <2 x i64>, ptr %i.boo, align 16
  %i.bqa = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %i.bpy, <2 x i64> %i.bpz)
  %i.bqb = load <2 x i64>, ptr %i.bot, align 1
  %i.bqc = xor <2 x i64> %i.bqb, %i.bqa           ; 2 uses
  store <2 x i64> %i.bqc, ptr %i.bos, align 1
  %i.bqd = load <2 x i64>, ptr %i.bop, align 16   ; 4 uses
  %i.bqe = bitcast <2 x i64> %i.bqc to <16 x i8>
  %i.bqf = shufflevector <16 x i8> %i.bqe, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.bqg = bitcast <16 x i8> %i.bqf to <2 x i64>
  %i.bqh = xor <2 x i64> %i.boq, %i.bqg           ; 4 uses
  %i.bqi = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.bqh, <2 x i64> %i.bqd, i8 17)
  %i.bqj = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.bqh, <2 x i64> %i.bqd, i8 0)
  %i.bqk = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.bqh, <2 x i64> %i.bqd, i8 1)
  %i.bql = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.bqh, <2 x i64> %i.bqd, i8 16)
  %i.bqm = xor <2 x i64> %i.bql, %i.bqk           ; 2 uses
  %i.bqn = shufflevector <2 x i64> %i.bqm, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.bqo = shufflevector <2 x i64> %i.bqm, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 3, i32 0>
  %i.bqp = xor <2 x i64> %i.bqj, %i.bqo           ; 2 uses
  %i.bqq = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.bqp, <2 x i64> <i64 -4467570830351532032, i64 poison>, i8 0)
  %i.bqr = shufflevector <2 x i64> %i.bqp, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bqs = xor <2 x i64> %i.bqq, %i.bqr           ; 2 uses
  %i.bqt = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.bqs, <2 x i64> <i64 -4467570830351532032, i64 poison>, i8 0)
  %i.bqu = shufflevector <2 x i64> %i.bqs, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bqv = xor <2 x i64> %i.bqt, %i.bqi
  %i.bqw = xor <2 x i64> %i.bqv, %i.bqn
  %i.bqx = xor <2 x i64> %i.bqw, %i.bqu           ; 2 uses
  %i.bqy = add <2 x i64> %.6243542.i, <i64 1, i64 0> ; 2 uses
  %i.bqz = add nuw nsw i64 %i.bor, 16             ; 2 uses
  %i.bra = icmp samesign ult i64 %i.bqz, %4
  br i1 %i.bra, label %bb.j, label %._crit_edge544.i.loopexit, !llvm.loop !12

._crit_edge544.i.loopexit:                        ; preds = %bb.j
  store <2 x i64> %i.bqx, ptr %10, align 16
  br label %._crit_edge544.i

._crit_edge544.i:                                 ; preds = %._crit_edge544.i.loopexit, %.preheader446.i
  %.6243.lcssa.i = phi <2 x i64> [ %.5242.lcssa.i, %.preheader446.i ], [ %i.bqy, %._crit_edge544.i.loopexit ]
  %.6236.lcssa.i = phi i64 [ %.5235.lcssa.i, %.preheader446.i ], [ %i.bor, %._crit_edge544.i.loopexit ] ; 5 uses
  %i.brb = insertelement <2 x i64> poison, i64 %4, i64 0
  %i.brc = insertelement <2 x i64> %i.brb, i64 %6, i64 1
  %i.brd = shl <2 x i64> %i.brc, splat (i64 3)
  %i.bre = bitcast <2 x i64> %i.brd to <16 x i8>
  %i.brf = shufflevector <16 x i8> %i.bre, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %.sroa.0.12.vec.insert63 = insertelement <4 x i32> %.sroa.0.12.vec.insert, i32 16777216, i64 3
  %i.brg = bitcast <4 x i32> %.sroa.0.12.vec.insert63 to <2 x i64>
  %i.brh = load <2 x i64>, ptr %9, align 16
  %i.bri = xor <2 x i64> %i.brh, %i.brg
  %i.brj = getelementptr i8, ptr %9, i64 16       ; 2 uses
  %i.brk = load <2 x i64>, ptr %i.brj, align 16
  %i.brl = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bri, <2 x i64> %i.brk)
  %i.brm = getelementptr i8, ptr %9, i64 32       ; 2 uses
  %i.brn = load <2 x i64>, ptr %i.brm, align 16
  %i.bro = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.brl, <2 x i64> %i.brn)
  %i.brp = getelementptr i8, ptr %9, i64 48       ; 2 uses
  %i.brq = load <2 x i64>, ptr %i.brp, align 16
  %i.brr = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bro, <2 x i64> %i.brq)
  %i.brs = getelementptr i8, ptr %9, i64 64       ; 2 uses
  %i.brt = load <2 x i64>, ptr %i.brs, align 16
  %i.bru = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.brr, <2 x i64> %i.brt)
  %i.brv = getelementptr i8, ptr %9, i64 80       ; 2 uses
  %i.brw = load <2 x i64>, ptr %i.brv, align 16
  %i.brx = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bru, <2 x i64> %i.brw)
  %i.bry = getelementptr i8, ptr %9, i64 96       ; 2 uses
  %i.brz = load <2 x i64>, ptr %i.bry, align 16
  %i.bsa = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.brx, <2 x i64> %i.brz)
  %i.bsb = getelementptr i8, ptr %9, i64 112      ; 2 uses
  %i.bsc = load <2 x i64>, ptr %i.bsb, align 16
  %i.bsd = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bsa, <2 x i64> %i.bsc)
  %i.bse = getelementptr i8, ptr %9, i64 128      ; 2 uses
  %i.bsf = load <2 x i64>, ptr %i.bse, align 16
  %i.bsg = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bsd, <2 x i64> %i.bsf)
  %i.bsh = getelementptr i8, ptr %9, i64 144      ; 2 uses
  %i.bsi = load <2 x i64>, ptr %i.bsh, align 16
  %i.bsj = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bsg, <2 x i64> %i.bsi)
  %i.bsk = getelementptr i8, ptr %9, i64 160      ; 2 uses
  %i.bsl = load <2 x i64>, ptr %i.bsk, align 16
  %i.bsm = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bsj, <2 x i64> %i.bsl)
  %i.bsn = getelementptr i8, ptr %9, i64 176      ; 2 uses
  %i.bso = load <2 x i64>, ptr %i.bsn, align 16
  %i.bsp = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bsm, <2 x i64> %i.bso)
  %i.bsq = getelementptr i8, ptr %9, i64 192      ; 2 uses
  %i.bsr = load <2 x i64>, ptr %i.bsq, align 16
  %i.bss = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bsp, <2 x i64> %i.bsr)
  %i.bst = getelementptr i8, ptr %9, i64 208      ; 2 uses
  %i.bsu = load <2 x i64>, ptr %i.bst, align 16
  %i.bsv = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bss, <2 x i64> %i.bsu)
  %i.bsw = getelementptr i8, ptr %9, i64 224      ; 2 uses
  %i.bsx = load <2 x i64>, ptr %i.bsw, align 16
  %i.bsy = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %i.bsv, <2 x i64> %i.bsx)
  store <2 x i64> %i.bsy, ptr %1, align 1
  %i.bsz = sub nsw i64 %4, %.6236.lcssa.i         ; 4 uses
  %.not259.i = icmp eq i64 %4, %.6236.lcssa.i
  br i1 %.not259.i, label %bb.k, label %._crit_edge549.i

._crit_edge549.i:                                 ; preds = %._crit_edge544.i
  %i.bta = getelementptr i8, ptr %3, i64 %.6236.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.bta, i64 %i.bsz, i1 false)
  %i.btb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <16 x i8> %i.brf, ptr %i.btb, align 16
  %i.btc = bitcast <2 x i64> %.6243.lcssa.i to <16 x i8>
  %i.btd = shufflevector <16 x i8> %i.btc, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.bte = bitcast <16 x i8> %i.btd to <2 x i64>
  %i.btf = load <2 x i64>, ptr %9, align 16
  %i.btg = xor <2 x i64> %i.btf, %i.bte
  %i.bth = load <2 x i64>, ptr %i.brj, align 16
  %i.bti = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.btg, <2 x i64> %i.bth)
  %i.btj = load <2 x i64>, ptr %i.brm, align 16
  %i.btk = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bti, <2 x i64> %i.btj)
  %i.btl = load <2 x i64>, ptr %i.brp, align 16
  %i.btm = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.btk, <2 x i64> %i.btl)
  %i.btn = load <2 x i64>, ptr %i.brs, align 16
  %i.bto = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.btm, <2 x i64> %i.btn)
  %i.btp = load <2 x i64>, ptr %i.brv, align 16
  %i.btq = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bto, <2 x i64> %i.btp)
  %i.btr = load <2 x i64>, ptr %i.bry, align 16
  %i.bts = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.btq, <2 x i64> %i.btr)
  %i.btt = load <2 x i64>, ptr %i.bsb, align 16
  %i.btu = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bts, <2 x i64> %i.btt)
  %i.btv = load <2 x i64>, ptr %i.bse, align 16
  %i.btw = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.btu, <2 x i64> %i.btv)
  %i.btx = load <2 x i64>, ptr %i.bsh, align 16
  %i.bty = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.btw, <2 x i64> %i.btx)
  %i.btz = load <2 x i64>, ptr %i.bsk, align 16
  %i.bua = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bty, <2 x i64> %i.btz)
  %i.bub = load <2 x i64>, ptr %i.bsn, align 16
  %i.buc = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bua, <2 x i64> %i.bub)
  %i.bud = load <2 x i64>, ptr %i.bsq, align 16
  %i.bue = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.buc, <2 x i64> %i.bud)
  %i.buf = load <2 x i64>, ptr %i.bst, align 16
  %i.bug = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bue, <2 x i64> %i.buf)
  %i.buh = load <2 x i64>, ptr %i.bsw, align 16
  %i.bui = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %i.bug, <2 x i64> %i.buh)
  %i.buj = load <2 x i64>, ptr %i.a, align 16
  %i.buk = xor <2 x i64> %i.buj, %i.bui
  store <2 x i64> %i.buk, ptr %i.a, align 16
  %i.bul = icmp ult i64 %i.bsz, 16
  br i1 %i.bul, label %.lr.ph553.preheader.i, label %._crit_edge556.i

.lr.ph553.preheader.i:                            ; preds = %._crit_edge549.i
  %scevgep.i = getelementptr i8, ptr %i.a, i64 %i.bsz
  %reass.sub = sub nsw i64 %.6236.lcssa.i, %4
  %i.bum = add nsw i64 %reass.sub, 16
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 0, i64 range(i64 0, 17) %i.bum, i1 false)
  br label %._crit_edge556.i

._crit_edge556.i:                                 ; preds = %.lr.ph553.preheader.i, %._crit_edge549.i
  %i.bun = getelementptr i8, ptr %0, i64 %.6236.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bun, ptr nonnull align 16 %i.a, i64 %i.bsz, i1 false)
  br label %aes_gcm_encrypt_generic.exit

bb.k:                                             ; preds = %._crit_edge544.i
  store <16 x i8> %i.brf, ptr %i.a, align 16
  br label %aes_gcm_encrypt_generic.exit

aes_gcm_encrypt_generic.exit:                     ; preds = %._crit_edge556.i, %bb.k
  %.sink.i = phi i64 [ 16, %bb.k ], [ 32, %._crit_edge556.i ]
  call fastcc void @gh_ad_blocks(ptr noundef nonnull readonly %9, ptr noundef nonnull %10, ptr noundef nonnull %i.a, i64 noundef %.sink.i)
  %i.buo = load <2 x i64>, ptr %1, align 1
  %i.bup = load <16 x i8>, ptr %10, align 16
  %i.buq = shufflevector <16 x i8> %i.bup, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.bur = bitcast <16 x i8> %i.buq to <2 x i64>
  %i.bus = xor <2 x i64> %i.buo, %i.bur
  store <2 x i64> %i.bus, ptr %1, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %aes_gcm_encrypt_generic.exit
  store i64 16, ptr %2, align 8
  br label %bb.m

bb.m:                                             ; preds = %aes_gcm_encrypt_generic.exit, %bb.l, %required_blocks.exit.thread
  %.0 = phi i32 [ -1, %required_blocks.exit.thread ], [ 0, %bb.l ], [ 0, %aes_gcm_encrypt_generic.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  ret i32 %.0
}

; Function Attrs: nounwind ssp uwtable
define dso_local range(i32 -1, 1) i32 @crypto_aead_aes256gcm_encrypt(ptr noundef nonnull %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i64 noundef %5, ptr nofree noundef readnone captures(none) %6, ptr nofree noundef nonnull readonly captures(none) %7, ptr nofree noundef nonnull readonly captures(none) %8) local_unnamed_addr #3 {
bb.a:
  %9 = alloca %struct.crypto_aead_aes256gcm_state_, align 16 ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 %3
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  tail call void @llvm.prefetch.p0(ptr nonnull %0, i32 0, i32 2, i32 1)
  tail call void @llvm.prefetch.p0(ptr readonly %2, i32 0, i32 2, i32 1)
  tail call void @llvm.prefetch.p0(ptr readonly %4, i32 0, i32 2, i32 1)
  %i.b = call i32 @crypto_aead_aes256gcm_beforenm(ptr noundef %9, ptr noundef nonnull readonly %8) ; 0 uses
  %i.c = call i32 @crypto_aead_aes256gcm_encrypt_detached_afternm(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef readonly %2, i64 noundef %3, ptr noundef readonly %4, i64 noundef %5, ptr readnone poison, ptr noundef nonnull readonly %7, ptr noundef %9) ; 2 uses
  call void @sodium_memzero(ptr noundef nonnull %9, i64 noundef 512) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %.sink.split

.sink.split:                                      ; preds = %bb.a
  %i.d = icmp eq i32 %i.c, 0
  %i.e = add i64 %3, 16
  %.sink = select i1 %i.d, i64 %i.e, i64 0
  store i64 %.sink, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  ret i32 %i.c
}

; Function Attrs: nounwind ssp uwtable
define dso_local range(i32 -1, 1) i32 @crypto_aead_aes256gcm_encrypt_detached(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, i64 noundef %6, ptr nofree noundef readnone captures(none) %7, ptr nofree noundef nonnull readonly captures(none) %8, ptr nofree noundef nonnull readonly captures(none) %9) local_unnamed_addr #3 {
bb.a:
  %10 = alloca %struct.crypto_aead_aes256gcm_state_, align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  tail call void @llvm.prefetch.p0(ptr nonnull %0, i32 0, i32 2, i32 1)
  tail call void @llvm.prefetch.p0(ptr %3, i32 0, i32 2, i32 1)
  tail call void @llvm.prefetch.p0(ptr %5, i32 0, i32 2, i32 1)
  %i.a = call i32 @crypto_aead_aes256gcm_beforenm(ptr noundef %10, ptr noundef %9) ; 0 uses
  %i.b = call i32 @crypto_aead_aes256gcm_encrypt_detached_afternm(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr poison, ptr noundef %8, ptr noundef %10)
  call void @sodium_memzero(ptr noundef nonnull %10, i64 noundef 512) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  ret i32 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #4

declare void @sodium_memzero(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind ssp memory(readwrite, target_mem: none) uwtable
define dso_local range(i32 -1, 1) i32 @crypto_aead_aes256gcm_encrypt_afternm(ptr noundef nonnull %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i64 noundef %5, ptr nofree noundef readnone captures(none) %6, ptr nofree noundef nonnull readonly captures(none) %7, ptr noundef nonnull %8) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 %3
  %i.b = tail call i32 @crypto_aead_aes256gcm_encrypt_detached_afternm(ptr noundef %0, ptr noundef %i.a, ptr noundef null, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr poison, ptr noundef %7, ptr noundef %8)
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %3, 16
  store i64 %i.c, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 %i.b
}

; Function Attrs: nounwind ssp uwtable
define dso_local i32 @crypto_aead_aes256gcm_decrypt_detached_afternm(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, i64 noundef %3, ptr noundef nonnull %4, ptr nofree noundef readonly captures(address_is_null) %5, i64 noundef %6, ptr nofree noundef nonnull readonly captures(none) %7, ptr nofree noundef nonnull readonly %8) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 11 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  %9 = alloca %struct.GHash, align 16             ; 9 uses
  %i.c = alloca [16 x i8], align 16               ; 5 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = alloca [16 x i8], align 16               ; 5 uses
  %i.f = alloca [16 x i8], align 16               ; 5 uses
  %10 = alloca %struct.GHash, align 16            ; 18 uses
  %i.g = alloca [16 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  %i.h = icmp eq ptr %0, null
  br i1 %i.h, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.i = add i64 %6, 15
  %i.j = lshr i64 %i.i, 4
  %i.k = icmp ugt i64 %6, -225
  %i.l = icmp ugt i64 %3, -225
  %or.cond.i.i = or i1 %i.l, %i.k
  %i.m = icmp ult i64 %6, %i.j
  %or.cond19.i.i = or i1 %or.cond.i.i, %i.m
  br i1 %or.cond19.i.i, label %crypto_aead_aes256gcm_verify_mac.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = add nuw i64 %3, 15
  %i.o = lshr i64 %i.n, 4
  %i.p = icmp ult i64 %3, %i.o
  %i.q = icmp ugt i64 %3, 68719476688
  %or.cond3.i.i = or i1 %i.q, %i.p
  br i1 %or.cond3.i.i, label %crypto_aead_aes256gcm_verify_mac.exit, label %required_blocks.exit.i

required_blocks.exit.i:                           ; preds = %bb.c
  store <2 x i64> zeroinitializer, ptr %9, align 16
  %.sroa.0.0.copyload.i = load <3 x i32>, ptr %7, align 1
  %.sroa.0.0.vec.expand.i = shufflevector <3 x i32> %.sroa.0.0.copyload.i, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.r = and i64 %6, -16
  call fastcc void @gh_ad_blocks(ptr noundef nonnull readonly %8, ptr noundef %9, ptr noundef readonly %5, i64 noundef %i.r)
  %i.s = and i64 %6, 15                           ; 3 uses
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %required_blocks.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, i8 noundef 0, i64 noundef 16, i1 noundef false) #13
  %i.t = getelementptr i8, ptr %5, i64 %6
  %i.u = sub nsw i64 0, %i.s
  %i.v = getelementptr i8, ptr %i.t, i64 %i.u
  %i.w = call ptr @__memcpy_chk(ptr noundef nonnull %i.e, ptr noundef nonnull readonly %i.v, i64 noundef range(i64 1, 16) %i.s, i64 noundef 16) #13, !alias.scope !28 ; 0 uses
  call fastcc void @gh_ad_blocks(ptr noundef nonnull readonly %8, ptr noundef %9, ptr noundef nonnull %i.e, i64 noundef 16)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %required_blocks.exit.i
  %i.x = and i64 %3, 68719476720
  call fastcc void @gh_ad_blocks(ptr noundef nonnull readonly %8, ptr noundef %9, ptr noundef nonnull readonly %2, i64 noundef %i.x)
  %i.y = and i64 %3, 15                           ; 3 uses
  %.not39.i = icmp eq i64 %i.y, 0
  br i1 %.not39.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, i8 noundef 0, i64 noundef 16, i1 noundef false) #13
  %i.z = getelementptr i8, ptr %2, i64 %3
  %i.aa = sub nsw i64 0, %i.y
  %i.ab = getelementptr i8, ptr %i.z, i64 %i.aa
  %i.ac = call ptr @__memcpy_chk(ptr noundef nonnull %i.f, ptr noundef nonnull readonly %i.ab, i64 noundef range(i64 1, 16) %i.y, i64 noundef 16) #13, !alias.scope !29 ; 0 uses
  call fastcc void @gh_ad_blocks(ptr noundef nonnull readonly %8, ptr noundef %9, ptr noundef nonnull %i.f, i64 noundef 16)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ad = insertelement <2 x i64> poison, i64 %3, i64 0
  %i.ae = insertelement <2 x i64> %i.ad, i64 %6, i64 1
  %i.af = shl <2 x i64> %i.ae, splat (i64 3)
  %i.ag = bitcast <2 x i64> %i.af to <16 x i8>
  %i.ah = shufflevector <16 x i8> %i.ag, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %.sroa.0.12.vec.insert3.i = insertelement <4 x i32> %.sroa.0.0.vec.expand.i, i32 16777216, i64 3
  %i.ai = bitcast <4 x i32> %.sroa.0.12.vec.insert3.i to <2 x i64>
  %i.aj = load <2 x i64>, ptr %8, align 16
  %i.ak = xor <2 x i64> %i.aj, %i.ai
  %i.al = getelementptr i8, ptr %8, i64 16
  %i.am = load <2 x i64>, ptr %i.al, align 16
  %i.an = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ak, <2 x i64> %i.am)
  %i.ao = getelementptr i8, ptr %8, i64 32
  %i.ap = load <2 x i64>, ptr %i.ao, align 16
  %i.aq = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.an, <2 x i64> %i.ap)
  %i.ar = getelementptr i8, ptr %8, i64 48
  %i.as = load <2 x i64>, ptr %i.ar, align 16
  %i.at = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.aq, <2 x i64> %i.as)
  %i.au = getelementptr i8, ptr %8, i64 64
  %i.av = load <2 x i64>, ptr %i.au, align 16
  %i.aw = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.at, <2 x i64> %i.av)
  %i.ax = getelementptr i8, ptr %8, i64 80
  %i.ay = load <2 x i64>, ptr %i.ax, align 16
  %i.az = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.aw, <2 x i64> %i.ay)
  %i.ba = getelementptr i8, ptr %8, i64 96
  %i.bb = load <2 x i64>, ptr %i.ba, align 16
  %i.bc = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.az, <2 x i64> %i.bb)
  %i.bd = getelementptr i8, ptr %8, i64 112
  %i.be = load <2 x i64>, ptr %i.bd, align 16
  %i.bf = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bc, <2 x i64> %i.be)
  %i.bg = getelementptr i8, ptr %8, i64 128
  %i.bh = load <2 x i64>, ptr %i.bg, align 16
  %i.bi = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bf, <2 x i64> %i.bh)
  %i.bj = getelementptr i8, ptr %8, i64 144
  %i.bk = load <2 x i64>, ptr %i.bj, align 16
  %i.bl = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bi, <2 x i64> %i.bk)
  %i.bm = getelementptr i8, ptr %8, i64 160
  %i.bn = load <2 x i64>, ptr %i.bm, align 16
  %i.bo = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bl, <2 x i64> %i.bn)
  %i.bp = getelementptr i8, ptr %8, i64 176
  %i.bq = load <2 x i64>, ptr %i.bp, align 16
  %i.br = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bo, <2 x i64> %i.bq)
  %i.bs = getelementptr i8, ptr %8, i64 192
  %i.bt = load <2 x i64>, ptr %i.bs, align 16
  %i.bu = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.br, <2 x i64> %i.bt)
  %i.bv = getelementptr i8, ptr %8, i64 208
  %i.bw = load <2 x i64>, ptr %i.bv, align 16
  %i.bx = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bu, <2 x i64> %i.bw)
  %i.by = getelementptr i8, ptr %8, i64 224
  %i.bz = load <2 x i64>, ptr %i.by, align 16
  %i.ca = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %i.bx, <2 x i64> %i.bz)
  store <16 x i8> %i.ah, ptr %i.d, align 16
  call fastcc void @gh_ad_blocks(ptr noundef nonnull readonly %8, ptr noundef %9, ptr noundef nonnull %i.d, i64 noundef 16)
  %i.cb = load <16 x i8>, ptr %9, align 16
  %i.cc = shufflevector <16 x i8> %i.cb, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.cd = bitcast <16 x i8> %i.cc to <2 x i64>
  %i.ce = xor <2 x i64> %i.ca, %i.cd
  store <2 x i64> %i.ce, ptr %i.c, align 16
  %i.cf = call i32 @crypto_verify_16(ptr noundef nonnull %4, ptr noundef nonnull %i.c) #13
  call void @sodium_memzero(ptr noundef nonnull %i.c, i64 noundef 16) #13
  br label %crypto_aead_aes256gcm_verify_mac.exit

crypto_aead_aes256gcm_verify_mac.exit:            ; preds = %bb.b, %bb.c, %bb.g
  %.0.i = phi i32 [ %i.cf, %bb.g ], [ -1, %bb.b ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %required_blocks.exit.thread

bb.h:                                             ; preds = %bb.a
  %i.cg = add i64 %6, 15
  %i.ch = lshr i64 %i.cg, 4
  %i.ci = icmp ugt i64 %6, -225
  %i.cj = icmp ugt i64 %3, -225
  %or.cond.i = or i1 %i.cj, %i.ci
  %i.ck = icmp ult i64 %6, %i.ch
  %or.cond19.i = or i1 %or.cond.i, %i.ck
  br i1 %or.cond19.i, label %required_blocks.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cl = add nuw i64 %3, 15
  %i.cm = lshr i64 %i.cl, 4
  %i.cn = icmp ult i64 %3, %i.cm
  %i.co = icmp ugt i64 %3, 68719476688
  %or.cond3.i = or i1 %i.co, %i.cn
  br i1 %or.cond3.i, label %required_blocks.exit.thread, label %required_blocks.exit

required_blocks.exit:                             ; preds = %bb.i
  store <2 x i64> zeroinitializer, ptr %10, align 16
  %.sroa.0.0.copyload = load <3 x i32>, ptr %7, align 1
  %.sroa.0.0.vec.expand = shufflevector <3 x i32> %.sroa.0.0.copyload, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %.sroa.0.12.vec.insert = insertelement <4 x i32> %.sroa.0.0.vec.expand, i32 33554432, i64 3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.cp = icmp ne ptr %5, null
  %i.cq = icmp ne i64 %6, 0
  %or.cond.i31 = and i1 %i.cp, %i.cq
  br i1 %or.cond.i31, label %bb.j, label %bb.l

bb.j:                                             ; preds = %required_blocks.exit
  %i.cr = and i64 %6, -16
  call fastcc void @gh_ad_blocks(ptr noundef nonnull readonly %8, ptr noundef nonnull %10, ptr noundef nonnull readonly %5, i64 noundef %i.cr)
  %i.cs = and i64 %6, 15                          ; 3 uses
  %.not.i32 = icmp eq i64 %i.cs, 0
  br i1 %.not.i32, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 noundef 0, i64 noundef 16, i1 noundef false) #13
  %i.ct = getelementptr i8, ptr %5, i64 %6
  %i.cu = sub nsw i64 0, %i.cs
  %i.cv = getelementptr i8, ptr %i.ct, i64 %i.cu
  %i.cw = call ptr @__memcpy_chk(ptr noundef nonnull %i.b, ptr noundef nonnull readonly %i.cv, i64 noundef range(i64 1, 16) %i.cs, i64 noundef 16) #13, !alias.scope !30 ; 0 uses
  call fastcc void @gh_ad_blocks(ptr noundef nonnull readonly %8, ptr noundef nonnull %10, ptr noundef nonnull %i.b, i64 noundef 16)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %required_blocks.exit
  %11 = bitcast <4 x i32> %.sroa.0.12.vec.insert to <16 x i8>
  %i.cx = shufflevector <16 x i8> %11, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.cy = bitcast <16 x i8> %i.cx to <2 x i64>    ; 2 uses
  %.not195358.i = icmp samesign ult i64 %3, 224
  br i1 %.not195358.i, label %.preheader323.i, label %.preheader324.lr.ph.i

.preheader324.lr.ph.i:                            ; preds = %bb.l
  %i.cz = getelementptr i8, ptr %8, i64 240
  %i.da = getelementptr i8, ptr %8, i64 448
  %i.db = getelementptr i8, ptr %8, i64 224       ; 2 uses
  %i.dc = getelementptr i8, ptr %8, i64 16        ; 2 uses
  %i.dd = getelementptr i8, ptr %8, i64 432
  %i.de = getelementptr i8, ptr %8, i64 416
  %i.df = getelementptr i8, ptr %8, i64 400
  %i.dg = getelementptr i8, ptr %8, i64 384
  %i.dh = getelementptr i8, ptr %8, i64 368
  %i.di = getelementptr i8, ptr %8, i64 352
  %i.dj = getelementptr i8, ptr %8, i64 32        ; 2 uses
  %i.dk = getelementptr i8, ptr %8, i64 48        ; 2 uses
  %i.dl = getelementptr i8, ptr %8, i64 64        ; 2 uses
  %i.dm = getelementptr i8, ptr %8, i64 80        ; 2 uses
  %i.dn = getelementptr i8, ptr %8, i64 96        ; 2 uses
  %i.do = getelementptr i8, ptr %8, i64 112       ; 2 uses
  %i.dp = getelementptr i8, ptr %8, i64 128       ; 2 uses
  %i.dq = getelementptr i8, ptr %8, i64 144       ; 2 uses
  %i.dr = getelementptr i8, ptr %8, i64 160       ; 2 uses
  %i.ds = getelementptr i8, ptr %8, i64 176       ; 2 uses
  %i.dt = getelementptr i8, ptr %8, i64 192       ; 2 uses
  %i.du = getelementptr i8, ptr %8, i64 208       ; 2 uses
  %i.dv = getelementptr i8, ptr %8, i64 336
  %i.dw = getelementptr i8, ptr %8, i64 320
  %i.dx = getelementptr i8, ptr %8, i64 304
  %i.dy = getelementptr i8, ptr %8, i64 288
  %i.dz = getelementptr i8, ptr %8, i64 272
  %i.ea = getelementptr i8, ptr %8, i64 256
  %.promoted = load <2 x i64>, ptr %10, align 16
  br label %.preheader324.i

.preheader324.i:                                  ; preds = %.preheader324.i, %.preheader324.lr.ph.i
  %i.eb = phi <2 x i64> [ %.promoted, %.preheader324.lr.ph.i ], [ %i.sg, %.preheader324.i ]
  %i.ec = phi i64 [ 224, %.preheader324.lr.ph.i ], [ %i.xn, %.preheader324.i ] ; 3 uses
  %.0176360.i = phi i64 [ 0, %.preheader324.lr.ph.i ], [ %i.ec, %.preheader324.i ] ; 3 uses
  %.0181359.i = phi <2 x i64> [ %i.cy, %.preheader324.lr.ph.i ], [ %i.wp, %.preheader324.i ] ; 15 uses
  %i.ed = bitcast <2 x i64> %.0181359.i to <16 x i8>
  %i.ee = shufflevector <16 x i8> %i.ed, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ef = bitcast <16 x i8> %i.ee to <2 x i64>
  %i.eg = add <2 x i64> %.0181359.i, <i64 1, i64 0>
  %i.eh = bitcast <2 x i64> %i.eg to <16 x i8>
  %i.ei = shufflevector <16 x i8> %i.eh, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ej = bitcast <16 x i8> %i.ei to <2 x i64>
  %i.ek = add <2 x i64> %.0181359.i, <i64 2, i64 0>
  %i.el = bitcast <2 x i64> %i.ek to <16 x i8>
  %i.em = shufflevector <16 x i8> %i.el, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.en = bitcast <16 x i8> %i.em to <2 x i64>
  %i.eo = add <2 x i64> %.0181359.i, <i64 3, i64 0>
  %i.ep = bitcast <2 x i64> %i.eo to <16 x i8>
  %i.eq = shufflevector <16 x i8> %i.ep, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.er = bitcast <16 x i8> %i.eq to <2 x i64>
  %i.es = add <2 x i64> %.0181359.i, <i64 4, i64 0>
  %i.et = bitcast <2 x i64> %i.es to <16 x i8>
  %i.eu = shufflevector <16 x i8> %i.et, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ev = bitcast <16 x i8> %i.eu to <2 x i64>
  %i.ew = add <2 x i64> %.0181359.i, <i64 5, i64 0>
  %i.ex = bitcast <2 x i64> %i.ew to <16 x i8>
  %i.ey = shufflevector <16 x i8> %i.ex, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ez = bitcast <16 x i8> %i.ey to <2 x i64>
  %i.fa = add <2 x i64> %.0181359.i, <i64 6, i64 0>
  %i.fb = bitcast <2 x i64> %i.fa to <16 x i8>
  %i.fc = shufflevector <16 x i8> %i.fb, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.fd = bitcast <16 x i8> %i.fc to <2 x i64>
  %i.fe = getelementptr i8, ptr %2, i64 %.0176360.i ; 7 uses
  %i.ff = load <2 x i64>, ptr %i.da, align 16     ; 4 uses
  %.val209.i = load <2 x i64>, ptr %i.fe, align 1 ; 2 uses
  %i.fg = bitcast <2 x i64> %.val209.i to <16 x i8>
  %i.fh = shufflevector <16 x i8> %i.fg, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.fi = bitcast <16 x i8> %i.fh to <2 x i64>
  %i.fj = xor <2 x i64> %i.eb, %i.fi              ; 4 uses
  %i.fk = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.fj, <2 x i64> %i.ff, i8 17)
  %i.fl = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.fj, <2 x i64> %i.ff, i8 0)
  %i.fm = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.fj, <2 x i64> %i.ff, i8 1)
  %i.fn = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.fj, <2 x i64> %i.ff, i8 16)
  %i.fo = xor <2 x i64> %i.fn, %i.fm
  %i.fp = getelementptr i8, ptr %i.fe, i64 16     ; 2 uses
  %i.fq = load <2 x i64>, ptr %i.dd, align 16     ; 4 uses
  %.val214307.i = load <16 x i8>, ptr %i.fp, align 1
  %i.fr = getelementptr i8, ptr %i.fe, i64 32     ; 2 uses
  %i.fs = load <2 x i64>, ptr %i.de, align 16     ; 4 uses
  %.val214307.1.i = load <16 x i8>, ptr %i.fr, align 1
  %i.ft = getelementptr i8, ptr %i.fe, i64 48     ; 2 uses
  %i.fu = load <2 x i64>, ptr %i.df, align 16     ; 4 uses
  %.val214307.2.i = load <16 x i8>, ptr %i.ft, align 1
  %i.fv = getelementptr i8, ptr %i.fe, i64 64     ; 2 uses
  %i.fw = load <2 x i64>, ptr %i.dg, align 16     ; 4 uses
  %.val214307.3.i = load <16 x i8>, ptr %i.fv, align 1
  %i.fx = getelementptr i8, ptr %i.fe, i64 80     ; 2 uses
  %i.fy = load <2 x i64>, ptr %i.dh, align 16     ; 4 uses
  %.val214307.4.i = load <16 x i8>, ptr %i.fx, align 1
  %i.fz = getelementptr i8, ptr %i.fe, i64 96     ; 2 uses
  %i.ga = load <2 x i64>, ptr %i.di, align 16     ; 4 uses
  %.val214307.5.i = load <16 x i8>, ptr %i.fz, align 1
  %i.gb = load <2 x i64>, ptr %8, align 16        ; 7 uses
  %i.gc = xor <2 x i64> %i.gb, %i.ef
  %i.gd = xor <2 x i64> %i.gb, %i.ej
  %i.ge = xor <2 x i64> %i.gb, %i.en
  %i.gf = xor <2 x i64> %i.gb, %i.er
  %i.gg = xor <2 x i64> %i.gb, %i.ev
  %i.gh = xor <2 x i64> %i.gb, %i.ez
  %i.gi = xor <2 x i64> %i.gb, %i.fd
  %i.gj = load <2 x i64>, ptr %i.dc, align 16     ; 7 uses
  %i.gk = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.gc, <2 x i64> %i.gj)
  %i.gl = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.gd, <2 x i64> %i.gj)
  %i.gm = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ge, <2 x i64> %i.gj)
  %i.gn = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.gf, <2 x i64> %i.gj)
  %i.go = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.gg, <2 x i64> %i.gj)
  %i.gp = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.gh, <2 x i64> %i.gj)
  %i.gq = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.gi, <2 x i64> %i.gj)
  %i.gr = load <2 x i64>, ptr %i.dj, align 16     ; 7 uses
  %i.gs = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.gk, <2 x i64> %i.gr)
  %i.gt = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.gl, <2 x i64> %i.gr)
  %i.gu = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.gm, <2 x i64> %i.gr)
  %i.gv = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.gn, <2 x i64> %i.gr)
  %i.gw = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.go, <2 x i64> %i.gr)
  %i.gx = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.gp, <2 x i64> %i.gr)
  %i.gy = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.gq, <2 x i64> %i.gr)
  %i.gz = load <2 x i64>, ptr %i.dk, align 16     ; 7 uses
  %i.ha = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.gs, <2 x i64> %i.gz)
  %i.hb = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.gt, <2 x i64> %i.gz)
  %i.hc = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.gu, <2 x i64> %i.gz)
  %i.hd = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.gv, <2 x i64> %i.gz)
  %i.he = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.gw, <2 x i64> %i.gz)
  %i.hf = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.gx, <2 x i64> %i.gz)
  %i.hg = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.gy, <2 x i64> %i.gz)
  %i.hh = load <2 x i64>, ptr %i.dl, align 16     ; 7 uses
  %i.hi = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ha, <2 x i64> %i.hh)
  %i.hj = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.hb, <2 x i64> %i.hh)
  %i.hk = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.hc, <2 x i64> %i.hh)
  %i.hl = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.hd, <2 x i64> %i.hh)
  %i.hm = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.he, <2 x i64> %i.hh)
  %i.hn = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.hf, <2 x i64> %i.hh)
  %i.ho = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.hg, <2 x i64> %i.hh)
  %i.hp = load <2 x i64>, ptr %i.dm, align 16     ; 7 uses
  %i.hq = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.hi, <2 x i64> %i.hp)
  %i.hr = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.hj, <2 x i64> %i.hp)
  %i.hs = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.hk, <2 x i64> %i.hp)
  %i.ht = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.hl, <2 x i64> %i.hp)
  %i.hu = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.hm, <2 x i64> %i.hp)
  %i.hv = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.hn, <2 x i64> %i.hp)
  %i.hw = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ho, <2 x i64> %i.hp)
  %i.hx = load <2 x i64>, ptr %i.dn, align 16     ; 7 uses
  %i.hy = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.hq, <2 x i64> %i.hx)
  %i.hz = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.hr, <2 x i64> %i.hx)
  %i.ia = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.hs, <2 x i64> %i.hx)
  %i.ib = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ht, <2 x i64> %i.hx)
  %i.ic = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.hu, <2 x i64> %i.hx)
  %i.id = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.hv, <2 x i64> %i.hx)
  %i.ie = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.hw, <2 x i64> %i.hx)
  %i.if = load <2 x i64>, ptr %i.do, align 16     ; 7 uses
  %i.ig = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.hy, <2 x i64> %i.if)
  %i.ih = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.hz, <2 x i64> %i.if)
  %i.ii = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ia, <2 x i64> %i.if)
  %i.ij = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ib, <2 x i64> %i.if)
  %i.ik = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ic, <2 x i64> %i.if)
  %i.il = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.id, <2 x i64> %i.if)
  %i.im = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ie, <2 x i64> %i.if)
  %i.in = load <2 x i64>, ptr %i.dp, align 16     ; 7 uses
  %i.io = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ig, <2 x i64> %i.in)
  %i.ip = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ih, <2 x i64> %i.in)
  %i.iq = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ii, <2 x i64> %i.in)
  %i.ir = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ij, <2 x i64> %i.in)
  %i.is = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ik, <2 x i64> %i.in)
  %i.it = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.il, <2 x i64> %i.in)
  %i.iu = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.im, <2 x i64> %i.in)
  %i.iv = load <2 x i64>, ptr %i.dq, align 16     ; 7 uses
  %i.iw = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.io, <2 x i64> %i.iv)
  %i.ix = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ip, <2 x i64> %i.iv)
  %i.iy = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.iq, <2 x i64> %i.iv)
  %i.iz = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ir, <2 x i64> %i.iv)
  %i.ja = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.is, <2 x i64> %i.iv)
  %i.jb = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.it, <2 x i64> %i.iv)
  %i.jc = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.iu, <2 x i64> %i.iv)
  %i.jd = load <2 x i64>, ptr %i.dr, align 16     ; 7 uses
  %i.je = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.iw, <2 x i64> %i.jd)
  %i.jf = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ix, <2 x i64> %i.jd)
  %i.jg = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.iy, <2 x i64> %i.jd)
  %i.jh = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.iz, <2 x i64> %i.jd)
  %i.ji = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ja, <2 x i64> %i.jd)
  %i.jj = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.jb, <2 x i64> %i.jd)
  %i.jk = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.jc, <2 x i64> %i.jd)
  %i.jl = load <2 x i64>, ptr %i.ds, align 16     ; 7 uses
  %i.jm = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.je, <2 x i64> %i.jl)
  %i.jn = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.jf, <2 x i64> %i.jl)
  %i.jo = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.jg, <2 x i64> %i.jl)
  %i.jp = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.jh, <2 x i64> %i.jl)
  %i.jq = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ji, <2 x i64> %i.jl)
  %i.jr = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.jj, <2 x i64> %i.jl)
  %i.js = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.jk, <2 x i64> %i.jl)
  %i.jt = load <2 x i64>, ptr %i.dt, align 16     ; 7 uses
  %i.ju = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.jm, <2 x i64> %i.jt)
  %i.jv = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.jn, <2 x i64> %i.jt)
  %i.jw = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.jo, <2 x i64> %i.jt)
  %i.jx = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.jp, <2 x i64> %i.jt)
  %i.jy = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.jq, <2 x i64> %i.jt)
end_hunk_1
begin_hunk_2_@crypto_aead_aes256gcm_decrypt_detached_afternm:bb.a
  %i.ast = xor <2 x i64> %i.asp, %i.ash
  %i.asu = xor <2 x i64> %i.asq, %i.asi
  %i.asv = xor <2 x i64> %i.ask, %i.asj
  %i.asw = xor <2 x i64> %i.asv, %i.asr
  %i.asx = xor <2 x i64> %i.asw, %i.ass           ; 2 uses
  %i.asy = shufflevector <2 x i64> %i.asx, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.asz = shufflevector <2 x i64> %i.asx, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 3, i32 0>
  %i.ata = xor <2 x i64> %i.asu, %i.asz           ; 2 uses
  %i.atb = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ata, <2 x i64> <i64 -4467570830351532032, i64 poison>, i8 0)
  %i.atc = shufflevector <2 x i64> %i.ata, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.atd = xor <2 x i64> %i.atb, %i.atc           ; 2 uses
  %i.ate = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.atd, <2 x i64> <i64 -4467570830351532032, i64 poison>, i8 0)
  %i.atf = shufflevector <2 x i64> %i.atd, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.atg = xor <2 x i64> %i.ast, %i.ate
  %i.ath = xor <2 x i64> %i.atg, %i.asy
  %i.ati = xor <2 x i64> %i.ath, %i.atf           ; 2 uses
  %i.atj = getelementptr i8, ptr %0, i64 %.3179384.i ; 2 uses
  %i.atk = load <2 x i64>, ptr %8, align 16
  %i.atl = xor <2 x i64> %i.atk, %i.arx
  %i.atm = load <2 x i64>, ptr %i.arf, align 16
  %i.atn = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.atl, <2 x i64> %i.atm)
  %i.ato = load <2 x i64>, ptr %i.arg, align 16
  %i.atp = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.atn, <2 x i64> %i.ato)
  %i.atq = load <2 x i64>, ptr %i.arh, align 16
  %i.atr = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.atp, <2 x i64> %i.atq)
  %i.ats = load <2 x i64>, ptr %i.ari, align 16
  %i.att = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.atr, <2 x i64> %i.ats)
  %i.atu = load <2 x i64>, ptr %i.arj, align 16
  %i.atv = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.att, <2 x i64> %i.atu)
  %i.atw = load <2 x i64>, ptr %i.ark, align 16
  %i.atx = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.atv, <2 x i64> %i.atw)
  %i.aty = load <2 x i64>, ptr %i.arl, align 16
  %i.atz = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.atx, <2 x i64> %i.aty)
  %i.aua = load <2 x i64>, ptr %i.arm, align 16
  %i.aub = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.atz, <2 x i64> %i.aua)
  %i.auc = load <2 x i64>, ptr %i.arn, align 16
  %i.aud = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.aub, <2 x i64> %i.auc)
  %i.aue = load <2 x i64>, ptr %i.aro, align 16
  %i.auf = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.aud, <2 x i64> %i.aue)
  %i.aug = load <2 x i64>, ptr %i.arp, align 16
  %i.auh = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.auf, <2 x i64> %i.aug)
  %i.aui = load <2 x i64>, ptr %i.arq, align 16
  %i.auj = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.auh, <2 x i64> %i.aui)
  %i.auk = load <2 x i64>, ptr %i.arr, align 16
  %i.aul = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.auj, <2 x i64> %i.auk)
  %i.aum = load <2 x i64>, ptr %i.ars, align 16
  %i.aun = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %i.aul, <2 x i64> %i.aum)
  %i.auo = bitcast <16 x i8> %.val203312.i to <2 x i64>
  %i.aup = xor <2 x i64> %i.aun, %i.auo
  store <2 x i64> %i.aup, ptr %i.atj, align 1
  %i.auq = getelementptr i8, ptr %i.atj, i64 16
  %i.aur = load <2 x i64>, ptr %8, align 16
  %i.aus = xor <2 x i64> %i.aur, %i.asb
  %i.aut = load <2 x i64>, ptr %i.arf, align 16
  %i.auu = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.aus, <2 x i64> %i.aut)
  %i.auv = load <2 x i64>, ptr %i.arg, align 16
  %i.auw = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.auu, <2 x i64> %i.auv)
  %i.aux = load <2 x i64>, ptr %i.arh, align 16
  %i.auy = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.auw, <2 x i64> %i.aux)
  %i.auz = load <2 x i64>, ptr %i.ari, align 16
  %i.ava = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.auy, <2 x i64> %i.auz)
  %i.avb = load <2 x i64>, ptr %i.arj, align 16
  %i.avc = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ava, <2 x i64> %i.avb)
  %i.avd = load <2 x i64>, ptr %i.ark, align 16
  %i.ave = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.avc, <2 x i64> %i.avd)
  %i.avf = load <2 x i64>, ptr %i.arl, align 16
  %i.avg = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ave, <2 x i64> %i.avf)
  %i.avh = load <2 x i64>, ptr %i.arm, align 16
  %i.avi = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.avg, <2 x i64> %i.avh)
  %i.avj = load <2 x i64>, ptr %i.arn, align 16
  %i.avk = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.avi, <2 x i64> %i.avj)
  %i.avl = load <2 x i64>, ptr %i.aro, align 16
  %i.avm = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.avk, <2 x i64> %i.avl)
  %i.avn = load <2 x i64>, ptr %i.arp, align 16
  %i.avo = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.avm, <2 x i64> %i.avn)
  %i.avp = load <2 x i64>, ptr %i.arq, align 16
  %i.avq = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.avo, <2 x i64> %i.avp)
  %i.avr = load <2 x i64>, ptr %i.arr, align 16
  %i.avs = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.avq, <2 x i64> %i.avr)
  %i.avt = load <2 x i64>, ptr %i.ars, align 16
  %i.avu = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %i.avs, <2 x i64> %i.avt)
  %i.avv = load <2 x i64>, ptr %i.asl, align 1
  %i.avw = xor <2 x i64> %i.avv, %i.avu
  store <2 x i64> %i.avw, ptr %i.auq, align 1
  %i.avx = add <2 x i64> %.3184383.i, <i64 2, i64 0> ; 2 uses
  %i.avy = add nuw nsw i64 %i.aru, 32             ; 2 uses
  %.not198.i = icmp samesign ugt i64 %i.avy, %3
  br i1 %.not198.i, label %.preheader316.i.loopexit, label %.critedge.preheader.i, !llvm.loop !26

.preheader316.i.loopexit:                         ; preds = %.critedge.preheader.i
  store <2 x i64> %i.ati, ptr %10, align 16
  br label %.preheader316.i

.preheader316.i:                                  ; preds = %.preheader316.i.loopexit, %.preheader318.i
  %.3184.lcssa.i = phi <2 x i64> [ %.2183.lcssa.i, %.preheader318.i ], [ %i.avx, %.preheader316.i.loopexit ] ; 2 uses
  %.3179.lcssa.i = phi i64 [ %.2178.lcssa.i, %.preheader318.i ], [ %i.aru, %.preheader316.i.loopexit ] ; 3 uses
  %i.avz = add nuw nsw i64 %.3179.lcssa.i, 16     ; 2 uses
  %i.awa = icmp samesign ult i64 %i.avz, %3
  br i1 %i.awa, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader316.i
  %i.awb = getelementptr i8, ptr %8, i64 240
  %i.awc = getelementptr i8, ptr %8, i64 16
  %i.awd = getelementptr i8, ptr %8, i64 32
  %i.awe = getelementptr i8, ptr %8, i64 48
  %i.awf = getelementptr i8, ptr %8, i64 64
  %i.awg = getelementptr i8, ptr %8, i64 80
  %i.awh = getelementptr i8, ptr %8, i64 96
  %i.awi = getelementptr i8, ptr %8, i64 112
  %i.awj = getelementptr i8, ptr %8, i64 128
  %i.awk = getelementptr i8, ptr %8, i64 144
  %i.awl = getelementptr i8, ptr %8, i64 160
  %i.awm = getelementptr i8, ptr %8, i64 176
  %i.awn = getelementptr i8, ptr %8, i64 192
  %i.awo = getelementptr i8, ptr %8, i64 208
  %i.awp = getelementptr i8, ptr %8, i64 224
  %.promoted50 = load <2 x i64>, ptr %10, align 16
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i
  %i.awq = phi <2 x i64> [ %.promoted50, %.lr.ph.i ], [ %i.axm, %bb.m ]
  %i.awr = phi i64 [ %i.avz, %.lr.ph.i ], [ %i.ayy, %bb.m ] ; 3 uses
  %.4180388.i = phi i64 [ %.3179.lcssa.i, %.lr.ph.i ], [ %i.awr, %bb.m ] ; 2 uses
  %.4185387.i = phi <2 x i64> [ %.3184.lcssa.i, %.lr.ph.i ], [ %i.ayx, %bb.m ] ; 2 uses
  %i.aws = getelementptr i8, ptr %2, i64 %.4180388.i
  %i.awt = load <2 x i64>, ptr %i.awb, align 16   ; 4 uses
  %.val201314.i = load <16 x i8>, ptr %i.aws, align 1 ; 2 uses
  %i.awu = shufflevector <16 x i8> %.val201314.i, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.awv = bitcast <16 x i8> %i.awu to <2 x i64>
  %i.aww = xor <2 x i64> %i.awq, %i.awv           ; 4 uses
  %i.awx = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.aww, <2 x i64> %i.awt, i8 17)
  %i.awy = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.aww, <2 x i64> %i.awt, i8 0)
  %i.awz = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.aww, <2 x i64> %i.awt, i8 1)
  %i.axa = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.aww, <2 x i64> %i.awt, i8 16)
  %i.axb = xor <2 x i64> %i.axa, %i.awz           ; 2 uses
  %i.axc = shufflevector <2 x i64> %i.axb, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.axd = shufflevector <2 x i64> %i.axb, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 3, i32 0>
  %i.axe = xor <2 x i64> %i.awy, %i.axd           ; 2 uses
  %i.axf = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.axe, <2 x i64> <i64 -4467570830351532032, i64 poison>, i8 0)
  %i.axg = shufflevector <2 x i64> %i.axe, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.axh = xor <2 x i64> %i.axf, %i.axg           ; 2 uses
  %i.axi = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.axh, <2 x i64> <i64 -4467570830351532032, i64 poison>, i8 0)
  %i.axj = shufflevector <2 x i64> %i.axh, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.axk = xor <2 x i64> %i.axi, %i.awx
  %i.axl = xor <2 x i64> %i.axk, %i.axc
  %i.axm = xor <2 x i64> %i.axl, %i.axj           ; 2 uses
  %i.axn = getelementptr i8, ptr %0, i64 %.4180388.i
  %i.axo = bitcast <2 x i64> %.4185387.i to <16 x i8>
  %i.axp = shufflevector <16 x i8> %i.axo, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.axq = bitcast <16 x i8> %i.axp to <2 x i64>
  %i.axr = load <2 x i64>, ptr %8, align 16
  %i.axs = xor <2 x i64> %i.axr, %i.axq
  %i.axt = load <2 x i64>, ptr %i.awc, align 16
  %i.axu = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.axs, <2 x i64> %i.axt)
  %i.axv = load <2 x i64>, ptr %i.awd, align 16
  %i.axw = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.axu, <2 x i64> %i.axv)
  %i.axx = load <2 x i64>, ptr %i.awe, align 16
  %i.axy = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.axw, <2 x i64> %i.axx)
  %i.axz = load <2 x i64>, ptr %i.awf, align 16
  %i.aya = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.axy, <2 x i64> %i.axz)
  %i.ayb = load <2 x i64>, ptr %i.awg, align 16
  %i.ayc = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.aya, <2 x i64> %i.ayb)
  %i.ayd = load <2 x i64>, ptr %i.awh, align 16
  %i.aye = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ayc, <2 x i64> %i.ayd)
  %i.ayf = load <2 x i64>, ptr %i.awi, align 16
  %i.ayg = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.aye, <2 x i64> %i.ayf)
  %i.ayh = load <2 x i64>, ptr %i.awj, align 16
  %i.ayi = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ayg, <2 x i64> %i.ayh)
  %i.ayj = load <2 x i64>, ptr %i.awk, align 16
  %i.ayk = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ayi, <2 x i64> %i.ayj)
  %i.ayl = load <2 x i64>, ptr %i.awl, align 16
  %i.aym = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ayk, <2 x i64> %i.ayl)
  %i.ayn = load <2 x i64>, ptr %i.awm, align 16
  %i.ayo = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.aym, <2 x i64> %i.ayn)
  %i.ayp = load <2 x i64>, ptr %i.awn, align 16
  %i.ayq = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ayo, <2 x i64> %i.ayp)
  %i.ayr = load <2 x i64>, ptr %i.awo, align 16
  %i.ays = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ayq, <2 x i64> %i.ayr)
  %i.ayt = load <2 x i64>, ptr %i.awp, align 16
  %i.ayu = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %i.ays, <2 x i64> %i.ayt)
  %i.ayv = bitcast <16 x i8> %.val201314.i to <2 x i64>
  %i.ayw = xor <2 x i64> %i.ayu, %i.ayv
  store <2 x i64> %i.ayw, ptr %i.axn, align 1
  %i.ayx = add <2 x i64> %.4185387.i, <i64 1, i64 0> ; 2 uses
  %i.ayy = add nuw nsw i64 %i.awr, 16             ; 2 uses
  %i.ayz = icmp samesign ult i64 %i.ayy, %3
  br i1 %i.ayz, label %bb.m, label %._crit_edge.i.loopexit, !llvm.loop !27

._crit_edge.i.loopexit:                           ; preds = %bb.m
  store <2 x i64> %i.axm, ptr %10, align 16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %.preheader316.i
  %.4185.lcssa.i = phi <2 x i64> [ %.3184.lcssa.i, %.preheader316.i ], [ %i.ayx, %._crit_edge.i.loopexit ]
  %.4180.lcssa.i = phi i64 [ %.3179.lcssa.i, %.preheader316.i ], [ %i.awr, %._crit_edge.i.loopexit ] ; 5 uses
  %i.aza = insertelement <2 x i64> poison, i64 %3, i64 0
  %i.azb = insertelement <2 x i64> %i.aza, i64 %6, i64 1
  %i.azc = shl <2 x i64> %i.azb, splat (i64 3)
  %i.azd = bitcast <2 x i64> %i.azc to <16 x i8>
  %i.aze = shufflevector <16 x i8> %i.azd, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %.sroa.0.12.vec.insert68 = insertelement <4 x i32> %.sroa.0.12.vec.insert, i32 16777216, i64 3
  %i.azf = bitcast <4 x i32> %.sroa.0.12.vec.insert68 to <2 x i64>
  %i.azg = load <2 x i64>, ptr %8, align 16       ; 2 uses
  %i.azh = xor <2 x i64> %i.azg, %i.azf
  %i.azi = getelementptr i8, ptr %8, i64 16
  %i.azj = load <2 x i64>, ptr %i.azi, align 16   ; 2 uses
  %i.azk = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.azh, <2 x i64> %i.azj)
  %i.azl = getelementptr i8, ptr %8, i64 32
  %i.azm = load <2 x i64>, ptr %i.azl, align 16   ; 2 uses
  %i.azn = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.azk, <2 x i64> %i.azm)
  %i.azo = getelementptr i8, ptr %8, i64 48
  %i.azp = load <2 x i64>, ptr %i.azo, align 16   ; 2 uses
  %i.azq = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.azn, <2 x i64> %i.azp)
  %i.azr = getelementptr i8, ptr %8, i64 64
  %i.azs = load <2 x i64>, ptr %i.azr, align 16   ; 2 uses
  %i.azt = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.azq, <2 x i64> %i.azs)
  %i.azu = getelementptr i8, ptr %8, i64 80
  %i.azv = load <2 x i64>, ptr %i.azu, align 16   ; 2 uses
  %i.azw = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.azt, <2 x i64> %i.azv)
  %i.azx = getelementptr i8, ptr %8, i64 96
  %i.azy = load <2 x i64>, ptr %i.azx, align 16   ; 2 uses
  %i.azz = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.azw, <2 x i64> %i.azy)
  %i.baa = getelementptr i8, ptr %8, i64 112
  %i.bab = load <2 x i64>, ptr %i.baa, align 16   ; 2 uses
  %i.bac = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.azz, <2 x i64> %i.bab)
  %i.bad = getelementptr i8, ptr %8, i64 128
  %i.bae = load <2 x i64>, ptr %i.bad, align 16   ; 2 uses
  %i.baf = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bac, <2 x i64> %i.bae)
  %i.bag = getelementptr i8, ptr %8, i64 144
  %i.bah = load <2 x i64>, ptr %i.bag, align 16   ; 2 uses
  %i.bai = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.baf, <2 x i64> %i.bah)
  %i.baj = getelementptr i8, ptr %8, i64 160
  %i.bak = load <2 x i64>, ptr %i.baj, align 16   ; 2 uses
  %i.bal = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bai, <2 x i64> %i.bak)
  %i.bam = getelementptr i8, ptr %8, i64 176
  %i.ban = load <2 x i64>, ptr %i.bam, align 16   ; 2 uses
  %i.bao = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bal, <2 x i64> %i.ban)
  %i.bap = getelementptr i8, ptr %8, i64 192
  %i.baq = load <2 x i64>, ptr %i.bap, align 16   ; 2 uses
  %i.bar = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bao, <2 x i64> %i.baq)
  %i.bas = getelementptr i8, ptr %8, i64 208
  %i.bat = load <2 x i64>, ptr %i.bas, align 16   ; 2 uses
  %i.bau = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bar, <2 x i64> %i.bat)
  %i.bav = getelementptr i8, ptr %8, i64 224
  %i.baw = load <2 x i64>, ptr %i.bav, align 16   ; 2 uses
  %i.bax = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %i.bau, <2 x i64> %i.baw)
  %i.bay = sub nsw i64 %3, %.4180.lcssa.i         ; 4 uses
  %.not199.i = icmp eq i64 %3, %.4180.lcssa.i
  br i1 %.not199.i, label %bb.n, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i
  %i.baz = getelementptr i8, ptr %2, i64 %.4180.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.baz, i64 %i.bay, i1 false)
  %i.bba = icmp ult i64 %i.bay, 16
  br i1 %i.bba, label %.lr.ph395.preheader.i, label %.lr.ph399.i

.lr.ph395.preheader.i:                            ; preds = %.preheader.i
  %scevgep.i = getelementptr i8, ptr %i.a, i64 %i.bay
  %reass.sub = sub nsw i64 %.4180.lcssa.i, %3
  %i.bbb = add nsw i64 %reass.sub, 16
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 0, i64 range(i64 0, 17) %i.bbb, i1 false)
  br label %.lr.ph399.i

.lr.ph399.i:                                      ; preds = %.lr.ph395.preheader.i, %.preheader.i
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <16 x i8> %i.aze, ptr %i.bbc, align 16
  call fastcc void @gh_ad_blocks(ptr noundef nonnull readonly %8, ptr noundef nonnull %10, ptr noundef nonnull %i.a, i64 noundef 32)
  %i.bbd = bitcast <2 x i64> %.4185.lcssa.i to <16 x i8>
  %i.bbe = shufflevector <16 x i8> %i.bbd, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.bbf = bitcast <16 x i8> %i.bbe to <2 x i64>
  %i.bbg = xor <2 x i64> %i.azg, %i.bbf
  %i.bbh = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bbg, <2 x i64> %i.azj)
  %i.bbi = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bbh, <2 x i64> %i.azm)
  %i.bbj = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bbi, <2 x i64> %i.azp)
  %i.bbk = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bbj, <2 x i64> %i.azs)
  %i.bbl = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bbk, <2 x i64> %i.azv)
  %i.bbm = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bbl, <2 x i64> %i.azy)
  %i.bbn = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bbm, <2 x i64> %i.bab)
  %i.bbo = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bbn, <2 x i64> %i.bae)
  %i.bbp = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bbo, <2 x i64> %i.bah)
  %i.bbq = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bbp, <2 x i64> %i.bak)
  %i.bbr = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bbq, <2 x i64> %i.ban)
  %i.bbs = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bbr, <2 x i64> %i.baq)
  %i.bbt = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bbs, <2 x i64> %i.bat)
  %i.bbu = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %i.bbt, <2 x i64> %i.baw)
  %i.bbv = load <2 x i64>, ptr %i.a, align 16
  %i.bbw = xor <2 x i64> %i.bbv, %i.bbu
  store <2 x i64> %i.bbw, ptr %i.a, align 16
  %i.bbx = getelementptr i8, ptr %0, i64 %.4180.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bbx, ptr nonnull align 16 %i.a, i64 %i.bay, i1 false)
  br label %aes_gcm_decrypt_generic.exit

bb.n:                                             ; preds = %._crit_edge.i
  store <16 x i8> %i.aze, ptr %i.a, align 16
  call fastcc void @gh_ad_blocks(ptr noundef nonnull readonly %8, ptr noundef nonnull %10, ptr noundef nonnull %i.a, i64 noundef 16)
  br label %aes_gcm_decrypt_generic.exit

aes_gcm_decrypt_generic.exit:                     ; preds = %.lr.ph399.i, %bb.n
  %i.bby = load <16 x i8>, ptr %10, align 16
  %i.bbz = shufflevector <16 x i8> %i.bby, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.bca = bitcast <16 x i8> %i.bbz to <2 x i64>
  %i.bcb = xor <2 x i64> %i.bax, %i.bca
  store <2 x i64> %i.bcb, ptr %i.g, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.bcc = call i32 @crypto_verify_16(ptr noundef nonnull %4, ptr noundef nonnull %i.g) #13
  %.not = icmp eq i32 %i.bcc, 0
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %aes_gcm_decrypt_generic.exit
  call void @sodium_memzero(ptr noundef nonnull %i.g, i64 noundef 16) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %0, i8 noundef -48, i64 noundef %3, i1 noundef false) #13
  br label %required_blocks.exit.thread

bb.p:                                             ; preds = %aes_gcm_decrypt_generic.exit
  fence acquire
  br label %required_blocks.exit.thread

required_blocks.exit.thread:                      ; preds = %bb.h, %bb.i, %bb.p, %bb.o, %crypto_aead_aes256gcm_verify_mac.exit
  %.0 = phi i32 [ %.0.i, %crypto_aead_aes256gcm_verify_mac.exit ], [ 0, %bb.p ], [ -1, %bb.o ], [ -1, %bb.h ], [ -1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  ret i32 %.0
}

declare i32 @crypto_verify_16(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind ssp uwtable
define dso_local i32 @crypto_aead_aes256gcm_decrypt_afternm(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef readnone captures(none) %2, ptr noundef nonnull %3, i64 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, i64 noundef %6, ptr nofree noundef nonnull readonly captures(none) %7, ptr noundef nonnull %8) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ugt i64 %4, 15
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %4, -16
  %i.c = getelementptr i8, ptr %3, i64 %4
  %i.d = getelementptr i8, ptr %i.c, i64 -16
  %i.e = tail call i32 @crypto_aead_aes256gcm_decrypt_detached_afternm(ptr noundef %0, ptr poison, ptr noundef %3, i64 noundef %i.b, ptr noundef %i.d, ptr noundef %5, i64 noundef %6, ptr noundef %7, ptr noundef %8)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.e, %bb.b ], [ -1, %bb.a ]    ; 2 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp eq i32 %.0, 0
  %i.g = add i64 %4, -16
  %spec.select = select i1 %i.f, i64 %i.g, i64 0
  store i64 %spec.select, ptr %1, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i32 %.0
}

; Function Attrs: nounwind ssp uwtable
define dso_local i32 @crypto_aead_aes256gcm_decrypt_detached(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, i64 noundef %3, ptr noundef nonnull %4, ptr nofree noundef readonly captures(address_is_null) %5, i64 noundef %6, ptr nofree noundef nonnull readonly captures(none) %7, ptr nofree noundef nonnull readonly captures(none) %8) local_unnamed_addr #3 {
bb.a:
  %9 = alloca %struct.crypto_aead_aes256gcm_state_, align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  tail call void @llvm.prefetch.p0(ptr %0, i32 0, i32 2, i32 1)
  tail call void @llvm.prefetch.p0(ptr nonnull %2, i32 0, i32 2, i32 1)
  tail call void @llvm.prefetch.p0(ptr %5, i32 0, i32 2, i32 1)
  %i.a = call i32 @crypto_aead_aes256gcm_beforenm(ptr noundef %9, ptr noundef %8) ; 0 uses
  %i.b = call i32 @crypto_aead_aes256gcm_decrypt_detached_afternm(ptr noundef %0, ptr poison, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, ptr noundef %9)
  call void @sodium_memzero(ptr noundef nonnull %9, i64 noundef 512) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  ret i32 %i.b
}

; Function Attrs: nounwind ssp uwtable
define dso_local i32 @crypto_aead_aes256gcm_decrypt(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef readnone captures(none) %2, ptr noundef nonnull %3, i64 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, i64 noundef %6, ptr nofree noundef nonnull readonly captures(none) %7, ptr nofree noundef nonnull readonly captures(none) %8) local_unnamed_addr #3 {
bb.a:
  %9 = alloca %struct.crypto_aead_aes256gcm_state_, align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  tail call void @llvm.prefetch.p0(ptr %0, i32 0, i32 2, i32 1)
  tail call void @llvm.prefetch.p0(ptr nonnull %3, i32 0, i32 2, i32 1)
  tail call void @llvm.prefetch.p0(ptr %5, i32 0, i32 2, i32 1)
  %i.a = call i32 @crypto_aead_aes256gcm_beforenm(ptr noundef %9, ptr noundef %8) ; 0 uses
  %i.b = icmp ugt i64 %4, 15
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %4, -16
  %i.d = getelementptr i8, ptr %3, i64 %4
  %i.e = getelementptr i8, ptr %i.d, i64 -16
  %i.f = call i32 @crypto_aead_aes256gcm_decrypt_detached_afternm(ptr noundef %0, ptr readnone poison, ptr noundef nonnull %3, i64 noundef %i.c, ptr noundef %i.e, ptr noundef readonly %5, i64 noundef %6, ptr noundef nonnull readonly %7, ptr noundef nonnull %9)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi i32 [ %i.f, %bb.b ], [ -1, %bb.a ]  ; 2 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %crypto_aead_aes256gcm_decrypt_afternm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq i32 %.0.i, 0
  %i.h = add i64 %4, -16
  %spec.select.i = select i1 %i.g, i64 %i.h, i64 0
  store i64 %spec.select.i, ptr %1, align 8
  br label %crypto_aead_aes256gcm_decrypt_afternm.exit

crypto_aead_aes256gcm_decrypt_afternm.exit:       ; preds = %bb.c, %bb.d
end_hunk_2
