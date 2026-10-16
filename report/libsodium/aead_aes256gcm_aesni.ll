Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/aead_aes256gcm_aesni?download=true
inline.NumInlined: 110
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumUnrolled: 43
begin_hunk_0_@gh_ad_blocks:bb.a
  %i.ha = load <2 x i64>, ptr %i.q, align 16      ; 4 uses
  %.val84116 = load <16 x i8>, ptr %i.gz, align 1
  %i.hb = shufflevector <16 x i8> %.val84116, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.hc = bitcast <16 x i8> %i.hb to <2 x i64>
  %i.hd = xor <2 x i64> %.val83, %i.hc            ; 4 uses
  %i.he = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.hd, <2 x i64> %i.ha, i8 17)
  %i.hf = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.hd, <2 x i64> %i.ha, i8 0)
  %i.hg = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.hd, <2 x i64> %i.ha, i8 1)
  %i.hh = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.hd, <2 x i64> %i.ha, i8 16)
  %i.hi = xor <2 x i64> %i.hh, %i.hg
  %i.hj = getelementptr i8, ptr %i.gz, i64 16
  %i.hk = load <2 x i64>, ptr %i.r, align 16      ; 4 uses
  %.val89117 = load <16 x i8>, ptr %i.hj, align 1
  %i.hl = shufflevector <16 x i8> %.val89117, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.hm = bitcast <16 x i8> %i.hl to <2 x i64>    ; 4 uses
  %i.hn = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.hm, <2 x i64> %i.hk, i8 17)
  %i.ho = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.hm, <2 x i64> %i.hk, i8 0)
  %i.hp = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.hm, <2 x i64> %i.hk, i8 1)
  %i.hq = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.hm, <2 x i64> %i.hk, i8 16)
  %i.hr = xor <2 x i64> %i.hn, %i.he
  %i.hs = xor <2 x i64> %i.ho, %i.hf
  %i.ht = xor <2 x i64> %i.hp, %i.hi
  %i.hu = xor <2 x i64> %i.ht, %i.hq
  %i.hv = getelementptr i8, ptr %i.gz, i64 32
  %i.hw = load <2 x i64>, ptr %i.s, align 16      ; 4 uses
  %.val89117.1 = load <16 x i8>, ptr %i.hv, align 1
  %i.hx = shufflevector <16 x i8> %.val89117.1, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.hy = bitcast <16 x i8> %i.hx to <2 x i64>    ; 4 uses
  %i.hz = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.hy, <2 x i64> %i.hw, i8 17)
  %i.ia = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.hy, <2 x i64> %i.hw, i8 0)
  %i.ib = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.hy, <2 x i64> %i.hw, i8 1)
  %i.ic = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.hy, <2 x i64> %i.hw, i8 16)
  %i.id = xor <2 x i64> %i.hz, %i.hr
  %i.ie = xor <2 x i64> %i.ia, %i.hs
  %i.if = xor <2 x i64> %i.ib, %i.hu
  %i.ig = xor <2 x i64> %i.if, %i.ic
  %i.ih = getelementptr i8, ptr %i.gz, i64 48
  %i.ii = load <2 x i64>, ptr %i.t, align 16      ; 4 uses
  %.val89117.2 = load <16 x i8>, ptr %i.ih, align 1
  %i.ij = shufflevector <16 x i8> %.val89117.2, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ik = bitcast <16 x i8> %i.ij to <2 x i64>    ; 4 uses
  %i.il = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ik, <2 x i64> %i.ii, i8 17)
  %i.im = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ik, <2 x i64> %i.ii, i8 0)
  %i.in = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ik, <2 x i64> %i.ii, i8 1)
  %i.io = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ik, <2 x i64> %i.ii, i8 16)
  %i.ip = xor <2 x i64> %i.il, %i.id
  %i.iq = xor <2 x i64> %i.im, %i.ie
  %i.ir = xor <2 x i64> %i.in, %i.ig
  %i.is = xor <2 x i64> %i.ir, %i.io
  %i.it = getelementptr i8, ptr %i.gz, i64 64
  %i.iu = load <2 x i64>, ptr %i.u, align 16      ; 4 uses
  %.val89117.3 = load <16 x i8>, ptr %i.it, align 1
  %i.iv = shufflevector <16 x i8> %.val89117.3, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.iw = bitcast <16 x i8> %i.iv to <2 x i64>    ; 4 uses
  %i.ix = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.iw, <2 x i64> %i.iu, i8 17)
  %i.iy = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.iw, <2 x i64> %i.iu, i8 0)
  %i.iz = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.iw, <2 x i64> %i.iu, i8 1)
  %i.ja = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.iw, <2 x i64> %i.iu, i8 16)
  %i.jb = xor <2 x i64> %i.ix, %i.ip
  %i.jc = xor <2 x i64> %i.iy, %i.iq
  %i.jd = xor <2 x i64> %i.iz, %i.is
  %i.je = xor <2 x i64> %i.jd, %i.ja
  %i.jf = getelementptr i8, ptr %i.gz, i64 80
  %i.jg = load <2 x i64>, ptr %i.v, align 16      ; 4 uses
  %.val89117.4 = load <16 x i8>, ptr %i.jf, align 1
  %i.jh = shufflevector <16 x i8> %.val89117.4, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ji = bitcast <16 x i8> %i.jh to <2 x i64>    ; 4 uses
  %i.jj = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ji, <2 x i64> %i.jg, i8 17)
  %i.jk = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ji, <2 x i64> %i.jg, i8 0)
  %i.jl = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ji, <2 x i64> %i.jg, i8 1)
  %i.jm = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ji, <2 x i64> %i.jg, i8 16)
  %i.jn = xor <2 x i64> %i.jj, %i.jb
  %i.jo = xor <2 x i64> %i.jk, %i.jc
  %i.jp = xor <2 x i64> %i.jl, %i.je
  %i.jq = xor <2 x i64> %i.jp, %i.jm
  %i.jr = getelementptr i8, ptr %i.gz, i64 96
  %i.js = load <2 x i64>, ptr %i.p, align 16      ; 4 uses
  %.val89117.5 = load <16 x i8>, ptr %i.jr, align 1
  %i.jt = shufflevector <16 x i8> %.val89117.5, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ju = bitcast <16 x i8> %i.jt to <2 x i64>    ; 4 uses
  %i.jv = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ju, <2 x i64> %i.js, i8 17)
  %i.jw = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ju, <2 x i64> %i.js, i8 0)
  %i.jx = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ju, <2 x i64> %i.js, i8 1)
  %i.jy = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ju, <2 x i64> %i.js, i8 16)
  %i.jz = xor <2 x i64> %i.jv, %i.jn
  %i.ka = xor <2 x i64> %i.jw, %i.jo
  %i.kb = xor <2 x i64> %i.jx, %i.jq
  %i.kc = xor <2 x i64> %i.kb, %i.jy              ; 2 uses
  %i.kd = shufflevector <2 x i64> %i.kc, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.ke = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.kc, <2 x i32> <i32 1, i32 2>
  %i.kf = xor <2 x i64> %i.ka, %i.ke              ; 2 uses
  %i.kg = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.kf, <2 x i64> <i64 -4467570830351532032, i64 poison>, i8 0)
  %i.kh = shufflevector <2 x i64> %i.kf, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ki = xor <2 x i64> %i.kg, %i.kh              ; 2 uses
  %i.kj = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ki, <2 x i64> <i64 -4467570830351532032, i64 poison>, i8 0)
  %i.kk = shufflevector <2 x i64> %i.ki, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.kl = xor <2 x i64> %i.kj, %i.kd
  %i.km = xor <2 x i64> %i.kl, %i.kk
  %i.kn = xor <2 x i64> %i.km, %i.jz              ; 2 uses
  store <2 x i64> %i.kn, ptr %1, align 16
  %i.ko = add i64 %i.gy, 112                      ; 2 uses
  %.not75 = icmp ugt i64 %i.ko, %3
  br i1 %.not75, label %.preheader123, label %bb.c, !llvm.loop !32

.preheader:                                       ; preds = %bb.d, %.preheader123
  %.2.lcssa = phi i64 [ %.1.lcssa, %.preheader123 ], [ %i.ks, %bb.d ] ; 3 uses
  %i.kp = add nuw i64 %.2.lcssa, 32               ; 2 uses
  %.not77150 = icmp ugt i64 %i.kp, %3
  br i1 %.not77150, label %._crit_edge, label %.lr.ph152

.lr.ph152:                                        ; preds = %.preheader
  %i.kq = getelementptr i8, ptr %0, i64 240
  %i.kr = getelementptr i8, ptr %0, i64 256
  %.val79.pre = load <2 x i64>, ptr %1, align 16
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph145, %bb.d
  %.val81 = phi <2 x i64> [ %.val81.pre, %.lr.ph145 ], [ %i.mx, %bb.d ]
  %i.ks = phi i64 [ %i.gt, %.lr.ph145 ], [ %i.my, %bb.d ] ; 3 uses
  %.2144 = phi i64 [ %.1.lcssa, %.lr.ph145 ], [ %i.ks, %bb.d ]
  %i.kt = getelementptr i8, ptr %2, i64 %.2144    ; 4 uses
  %i.ku = load <2 x i64>, ptr %i.gv, align 16     ; 4 uses
  %.val82118 = load <16 x i8>, ptr %i.kt, align 1
  %i.kv = shufflevector <16 x i8> %.val82118, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.kw = bitcast <16 x i8> %i.kv to <2 x i64>
  %i.kx = xor <2 x i64> %.val81, %i.kw            ; 4 uses
  %i.ky = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.kx, <2 x i64> %i.ku, i8 17)
  %i.kz = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.kx, <2 x i64> %i.ku, i8 0)
  %i.la = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.kx, <2 x i64> %i.ku, i8 1)
  %i.lb = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.kx, <2 x i64> %i.ku, i8 16)
  %i.lc = xor <2 x i64> %i.lb, %i.la
  %i.ld = getelementptr i8, ptr %i.kt, i64 16
  %i.le = load <2 x i64>, ptr %i.gw, align 16     ; 4 uses
  %.val88119 = load <16 x i8>, ptr %i.ld, align 1
  %i.lf = shufflevector <16 x i8> %.val88119, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.lg = bitcast <16 x i8> %i.lf to <2 x i64>    ; 4 uses
  %i.lh = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.lg, <2 x i64> %i.le, i8 17)
  %i.li = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.lg, <2 x i64> %i.le, i8 0)
  %i.lj = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.lg, <2 x i64> %i.le, i8 1)
  %i.lk = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.lg, <2 x i64> %i.le, i8 16)
  %i.ll = xor <2 x i64> %i.lh, %i.ky
  %i.lm = xor <2 x i64> %i.li, %i.kz
  %i.ln = xor <2 x i64> %i.lj, %i.lc
  %i.lo = xor <2 x i64> %i.ln, %i.lk
  %i.lp = getelementptr i8, ptr %i.kt, i64 32
  %i.lq = load <2 x i64>, ptr %i.gx, align 16     ; 4 uses
  %.val88119.1 = load <16 x i8>, ptr %i.lp, align 1
  %i.lr = shufflevector <16 x i8> %.val88119.1, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ls = bitcast <16 x i8> %i.lr to <2 x i64>    ; 4 uses
  %i.lt = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ls, <2 x i64> %i.lq, i8 17)
  %i.lu = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ls, <2 x i64> %i.lq, i8 0)
  %i.lv = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ls, <2 x i64> %i.lq, i8 1)
  %i.lw = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ls, <2 x i64> %i.lq, i8 16)
  %i.lx = xor <2 x i64> %i.lt, %i.ll
  %i.ly = xor <2 x i64> %i.lu, %i.lm
  %i.lz = xor <2 x i64> %i.lv, %i.lo
  %i.ma = xor <2 x i64> %i.lz, %i.lw
  %i.mb = getelementptr i8, ptr %i.kt, i64 48
  %i.mc = load <2 x i64>, ptr %i.gu, align 16     ; 4 uses
  %.val88119.2 = load <16 x i8>, ptr %i.mb, align 1
  %i.md = shufflevector <16 x i8> %.val88119.2, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.me = bitcast <16 x i8> %i.md to <2 x i64>    ; 4 uses
  %i.mf = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.me, <2 x i64> %i.mc, i8 17)
  %i.mg = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.me, <2 x i64> %i.mc, i8 0)
  %i.mh = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.me, <2 x i64> %i.mc, i8 1)
  %i.mi = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.me, <2 x i64> %i.mc, i8 16)
  %i.mj = xor <2 x i64> %i.mf, %i.lx
  %i.mk = xor <2 x i64> %i.mg, %i.ly
  %i.ml = xor <2 x i64> %i.mh, %i.ma
  %i.mm = xor <2 x i64> %i.ml, %i.mi              ; 2 uses
  %i.mn = shufflevector <2 x i64> %i.mm, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.mo = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.mm, <2 x i32> <i32 1, i32 2>
  %i.mp = xor <2 x i64> %i.mk, %i.mo              ; 2 uses
  %i.mq = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.mp, <2 x i64> <i64 -4467570830351532032, i64 poison>, i8 0)
  %i.mr = shufflevector <2 x i64> %i.mp, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ms = xor <2 x i64> %i.mq, %i.mr              ; 2 uses
  %i.mt = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ms, <2 x i64> <i64 -4467570830351532032, i64 poison>, i8 0)
  %i.mu = shufflevector <2 x i64> %i.ms, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.mv = xor <2 x i64> %i.mt, %i.mn
  %i.mw = xor <2 x i64> %i.mv, %i.mu
  %i.mx = xor <2 x i64> %i.mw, %i.mj              ; 2 uses
  store <2 x i64> %i.mx, ptr %1, align 16
  %i.my = add i64 %i.ks, 64                       ; 2 uses
  %.not76 = icmp ugt i64 %i.my, %3
  br i1 %.not76, label %.preheader, label %bb.d, !llvm.loop !33

bb.e:                                             ; preds = %.lr.ph152, %bb.e
  %.val79 = phi <2 x i64> [ %.val79.pre, %.lr.ph152 ], [ %i.od, %bb.e ]
  %i.mz = phi i64 [ %i.kp, %.lr.ph152 ], [ %i.oe, %bb.e ] ; 3 uses
  %.3151 = phi i64 [ %.2.lcssa, %.lr.ph152 ], [ %i.mz, %bb.e ]
  %i.na = getelementptr i8, ptr %2, i64 %.3151    ; 2 uses
  %i.nb = load <2 x i64>, ptr %i.kr, align 16     ; 4 uses
  %.val80120 = load <16 x i8>, ptr %i.na, align 1
  %i.nc = shufflevector <16 x i8> %.val80120, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.nd = bitcast <16 x i8> %i.nc to <2 x i64>
  %i.ne = xor <2 x i64> %.val79, %i.nd            ; 4 uses
  %i.nf = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ne, <2 x i64> %i.nb, i8 17)
  %i.ng = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ne, <2 x i64> %i.nb, i8 0)
  %i.nh = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ne, <2 x i64> %i.nb, i8 1)
  %i.ni = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ne, <2 x i64> %i.nb, i8 16)
  %4 = xor <2 x i64> %i.ni, %i.nh
  %i.nj = getelementptr i8, ptr %i.na, i64 16
  %i.nk = load <2 x i64>, ptr %i.kq, align 16     ; 4 uses
  %.val87121 = load <16 x i8>, ptr %i.nj, align 1
  %i.nl = shufflevector <16 x i8> %.val87121, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.nm = bitcast <16 x i8> %i.nl to <2 x i64>    ; 4 uses
  %i.nn = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.nm, <2 x i64> %i.nk, i8 17)
  %i.no = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.nm, <2 x i64> %i.nk, i8 0)
  %i.np = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.nm, <2 x i64> %i.nk, i8 1)
  %i.nq = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.nm, <2 x i64> %i.nk, i8 16)
  %invariant.op = xor <2 x i64> %i.np, %i.nq
  %i.nr = xor <2 x i64> %i.nn, %i.nf
  %i.ns = xor <2 x i64> %i.no, %i.ng
  %.reass = xor <2 x i64> %4, %invariant.op       ; 2 uses
  %i.nt = shufflevector <2 x i64> %.reass, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.nu = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %.reass, <2 x i32> <i32 1, i32 2>
  %i.nv = xor <2 x i64> %i.ns, %i.nu              ; 2 uses
  %i.nw = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.nv, <2 x i64> <i64 -4467570830351532032, i64 poison>, i8 0)
  %i.nx = shufflevector <2 x i64> %i.nv, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ny = xor <2 x i64> %i.nw, %i.nx              ; 2 uses
  %i.nz = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ny, <2 x i64> <i64 -4467570830351532032, i64 poison>, i8 0)
  %i.oa = shufflevector <2 x i64> %i.ny, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ob = xor <2 x i64> %i.nr, %i.nt
  %i.oc = xor <2 x i64> %i.ob, %i.nz
  %i.od = xor <2 x i64> %i.oc, %i.oa              ; 2 uses
  store <2 x i64> %i.od, ptr %1, align 16
  %i.oe = add i64 %i.mz, 32                       ; 2 uses
  %.not77 = icmp ugt i64 %i.oe, %3
  br i1 %.not77, label %._crit_edge, label %bb.e, !llvm.loop !34

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %.3.lcssa = phi i64 [ %.2.lcssa, %.preheader ], [ %i.mz, %bb.e ] ; 2 uses
  %i.of = icmp ult i64 %.3.lcssa, %3
  br i1 %i.of, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.og = getelementptr i8, ptr %2, i64 %.3.lcssa
  %i.oh = getelementptr i8, ptr %0, i64 240
  %i.oi = load <2 x i64>, ptr %i.oh, align 16     ; 4 uses
  %.val = load <2 x i64>, ptr %1, align 16
  %.val78122 = load <16 x i8>, ptr %i.og, align 1
  %i.oj = shufflevector <16 x i8> %.val78122, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ok = bitcast <16 x i8> %i.oj to <2 x i64>
  %i.ol = xor <2 x i64> %.val, %i.ok              ; 4 uses
  %i.om = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ol, <2 x i64> %i.oi, i8 17)
  %i.on = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ol, <2 x i64> %i.oi, i8 0)
  %i.oo = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ol, <2 x i64> %i.oi, i8 1)
  %i.op = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ol, <2 x i64> %i.oi, i8 16)
  %i.oq = xor <2 x i64> %i.op, %i.oo              ; 2 uses
  %i.or = shufflevector <2 x i64> %i.oq, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.os = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.oq, <2 x i32> <i32 1, i32 2>
  %i.ot = xor <2 x i64> %i.on, %i.os              ; 2 uses
  %i.ou = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ot, <2 x i64> <i64 -4467570830351532032, i64 poison>, i8 0)
  %i.ov = shufflevector <2 x i64> %i.ot, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ow = xor <2 x i64> %i.ou, %i.ov              ; 2 uses
  %i.ox = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ow, <2 x i64> <i64 -4467570830351532032, i64 poison>, i8 0)
  %i.oy = shufflevector <2 x i64> %i.ow, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.oz = xor <2 x i64> %i.ox, %i.om
  %i.pa = xor <2 x i64> %i.oz, %i.or
  %i.pb = xor <2 x i64> %i.pa, %i.oy
  store <2 x i64> %i.pb, ptr %1, align 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.fshl.v2i64(<2 x i64>, <2 x i64>, <2 x i64>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind ssp willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind ssp memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nounwind ssp uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind ssp memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nounwind ssp uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { inlinehint nofree norecurse nosync nounwind ssp memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, i1 true, !"memcpy.inline"}
!6 = distinct !{!6, !5, !"memcpy.inline: argument 1"}
!7 = distinct !{!7, !5, !"memcpy.inline: argument 0"}
!8 = distinct !{!8, !4}
!9 = distinct !{!9, !4}
!10 = distinct !{!10, !4}
!11 = distinct !{!11, !4}
!12 = distinct !{!12, !4}
!13 = !{!7, !6}
!14 = distinct !{!14, i1 true, !"memcpy.inline"}
!15 = distinct !{!15, !14, !"memcpy.inline: argument 1"}
!16 = distinct !{!16, !14, !"memcpy.inline: argument 0"}
!17 = distinct !{!17, i1 true, !"memcpy.inline"}
!18 = distinct !{!18, !17, !"memcpy.inline: argument 1"}
!19 = distinct !{!19, !17, !"memcpy.inline: argument 0"}
!20 = distinct !{!20, i1 true, !"memcpy.inline"}
!21 = distinct !{!21, !20, !"memcpy.inline: argument 1"}
!22 = distinct !{!22, !20, !"memcpy.inline: argument 0"}
!23 = distinct !{!23, !4}
!24 = distinct !{!24, !4}
!25 = distinct !{!25, !4}
!26 = distinct !{!26, !4}
!27 = distinct !{!27, !4}
!28 = !{!16, !15}
!29 = !{!19, !18}
!30 = !{!22, !21}
!31 = distinct !{!31, !4}
!32 = distinct !{!32, !4}
!33 = distinct !{!33, !4}
!34 = distinct !{!34, !4}
end_hunk_0
