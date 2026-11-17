Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/ProbabilityTrigonometricFunctionsRegistration?download=true
inline.NumInlined: 54762
inline.NumDeleted: 11385
loop-unroll.NumCompletelyUnrolled: 842
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 895
begin_hunk_0_@_ZN5boost4math6detail9ibeta_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_SB_RKT0_bbPSB_:bb.a
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ce, %bb.cf
  %i.gx = phi x86_fp80 [ %i.gw, %bb.cf ], [ 1.000000e+00, %bb.ce ]
  %i.gy = fneg x86_fp80 %i.gx
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #41
  %i.gz = call noundef x86_fp80 @_ZN5boost4math6detail12ibeta_seriesIeNS0_7lanczos12lanczos17m64ENS0_8policies6policyINS5_13promote_floatILb0EEENS5_14promote_doubleILb0EEENS5_14default_policyESB_SB_SB_SB_SB_SB_SB_SB_SB_SB_EEEET_SD_SD_SD_SD_RKT0_bPSD_SD_RKT1_(x86_fp80 noundef %i.bz, x86_fp80 noundef %i.by, x86_fp80 noundef %i.ca, x86_fp80 noundef %i.gy, ptr noundef nonnull align 1 dereferenceable(1) %14, i1 noundef zeroext %5, ptr noundef %6, x86_fp80 noundef %i.bx, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.ha = fneg x86_fp80 %i.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  br label %bb.dj

bb.ch:                                            ; preds = %bb.cb
  %i.hb = fcmp ult x86_fp80 %i.bz, 1.500000e+01
  br i1 %i.hb, label %bb.cn, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  br i1 %.1, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.hc = tail call noundef x86_fp80 @_ZN5boost4math6detail27beta_small_b_large_a_seriesIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_SB_SB_SB_SB_RKT0_b(x86_fp80 noundef %i.bz, x86_fp80 noundef %i.by, x86_fp80 noundef %i.ca, x86_fp80 noundef %i.bx, x86_fp80 noundef 0.000000e+00, x86_fp80 noundef 1.000000e+00, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext %5)
  br label %bb.dj

bb.ck:                                            ; preds = %bb.ci
  br i1 %5, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.hd = tail call noundef x86_fp80 @_ZN5boost4math4betaIeeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_T0_T1_fffE4typeESC_SD_SE_(x86_fp80 noundef %i.bz, x86_fp80 noundef %i.by)
  br label %bb.cm

bb.cm:                                            ; preds = %bb.ck, %bb.cl
  %i.he = phi x86_fp80 [ %i.hd, %bb.cl ], [ 1.000000e+00, %bb.ck ]
  %i.hf = fneg x86_fp80 %i.he
  %i.hg = tail call noundef x86_fp80 @_ZN5boost4math6detail27beta_small_b_large_a_seriesIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_SB_SB_SB_SB_RKT0_b(x86_fp80 noundef %i.bz, x86_fp80 noundef %i.by, x86_fp80 noundef %i.ca, x86_fp80 noundef %i.bx, x86_fp80 noundef %i.hf, x86_fp80 noundef 1.000000e+00, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext %5)
  %i.hh = fneg x86_fp80 %i.hg
  br label %bb.dj

bb.cn:                                            ; preds = %bb.ch
  br i1 %5, label %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit267, label %.lr.ph.i263

.lr.ph.i263:                                      ; preds = %bb.cn
  %i.hi = fadd x86_fp80 %1, %0                    ; 20 uses
  %i.hj = fadd nnan x86_fp80 %i.hi, 0.000000e+00
  %i.hk = fdiv nnan x86_fp80 %i.hj, %i.bz
  %i.hl = fadd nnan x86_fp80 %i.hi, 1.000000e+00
  %i.hm = fadd x86_fp80 %i.bz, 1.000000e+00
  %i.hn = fdiv x86_fp80 %i.hl, %i.hm
  %i.ho = fmul x86_fp80 %i.hk, %i.hn
  %i.hp = fadd nnan x86_fp80 %i.hi, 2.000000e+00
  %i.hq = fadd x86_fp80 %i.bz, 2.000000e+00
  %i.hr = fdiv x86_fp80 %i.hp, %i.hq
  %i.hs = fmul x86_fp80 %i.ho, %i.hr
  %i.ht = fadd nnan x86_fp80 %i.hi, 3.000000e+00
  %i.hu = fadd x86_fp80 %i.bz, 3.000000e+00
  %i.hv = fdiv x86_fp80 %i.ht, %i.hu
  %i.hw = fmul x86_fp80 %i.hs, %i.hv
  %i.hx = fadd nnan x86_fp80 %i.hi, 4.000000e+00
  %i.hy = fadd x86_fp80 %i.bz, 4.000000e+00
  %i.hz = fdiv x86_fp80 %i.hx, %i.hy
  %i.ia = fmul x86_fp80 %i.hw, %i.hz
  %i.ib = fadd nnan x86_fp80 %i.hi, 5.000000e+00
  %i.ic = fadd x86_fp80 %i.bz, 5.000000e+00
  %i.id = fdiv x86_fp80 %i.ib, %i.ic
  %i.ie = fmul x86_fp80 %i.ia, %i.id
  %i.if = fadd nnan x86_fp80 %i.hi, 6.000000e+00
  %i.ig = fadd x86_fp80 %i.bz, 6.000000e+00
  %i.ih = fdiv x86_fp80 %i.if, %i.ig
  %i.ii = fmul x86_fp80 %i.ie, %i.ih
  %i.ij = fadd nnan x86_fp80 %i.hi, 7.000000e+00
  %i.ik = fadd x86_fp80 %i.bz, 7.000000e+00
  %i.il = fdiv x86_fp80 %i.ij, %i.ik
  %i.im = fmul x86_fp80 %i.ii, %i.il
  %i.in = fadd nnan x86_fp80 %i.hi, 8.000000e+00
  %i.io = fadd x86_fp80 %i.bz, 8.000000e+00
  %i.ip = fdiv x86_fp80 %i.in, %i.io
  %i.iq = fmul x86_fp80 %i.im, %i.ip
  %i.ir = fadd nnan x86_fp80 %i.hi, 9.000000e+00
  %i.is = fadd x86_fp80 %i.bz, 9.000000e+00
  %i.it = fdiv x86_fp80 %i.ir, %i.is
  %i.iu = fmul x86_fp80 %i.iq, %i.it
  %i.iv = fadd nnan x86_fp80 %i.hi, 1.000000e+01
  %i.iw = fadd x86_fp80 %i.bz, 1.000000e+01
  %i.ix = fdiv x86_fp80 %i.iv, %i.iw
  %i.iy = fmul x86_fp80 %i.iu, %i.ix
  %i.iz = fadd nnan x86_fp80 %i.hi, 1.100000e+01
  %i.ja = fadd x86_fp80 %i.bz, 1.100000e+01
  %i.jb = fdiv x86_fp80 %i.iz, %i.ja
  %i.jc = fmul x86_fp80 %i.iy, %i.jb
  %i.jd = fadd nnan x86_fp80 %i.hi, 1.200000e+01
  %i.je = fadd x86_fp80 %i.bz, 1.200000e+01
  %i.jf = fdiv x86_fp80 %i.jd, %i.je
  %i.jg = fmul x86_fp80 %i.jc, %i.jf
  %i.jh = fadd nnan x86_fp80 %i.hi, 1.300000e+01
  %i.ji = fadd x86_fp80 %i.bz, 1.300000e+01
  %i.jj = fdiv x86_fp80 %i.jh, %i.ji
  %i.jk = fmul x86_fp80 %i.jg, %i.jj
  %i.jl = fadd nnan x86_fp80 %i.hi, 1.400000e+01
  %i.jm = fadd x86_fp80 %i.bz, 1.400000e+01
  %i.jn = fdiv x86_fp80 %i.jl, %i.jm
  %i.jo = fmul x86_fp80 %i.jk, %i.jn
  %i.jp = fadd nnan x86_fp80 %i.hi, 1.500000e+01
  %i.jq = fadd x86_fp80 %i.bz, 1.500000e+01
  %i.jr = fdiv x86_fp80 %i.jp, %i.jq
  %i.js = fmul x86_fp80 %i.jo, %i.jr
  %i.jt = fadd nnan x86_fp80 %i.hi, 1.600000e+01
  %i.ju = fadd x86_fp80 %i.bz, 1.600000e+01
  %i.jv = fdiv x86_fp80 %i.jt, %i.ju
  %i.jw = fmul x86_fp80 %i.js, %i.jv
  %i.jx = fadd nnan x86_fp80 %i.hi, 1.700000e+01
  %i.jy = fadd x86_fp80 %i.bz, 1.700000e+01
  %i.jz = fdiv x86_fp80 %i.jx, %i.jy
  %i.ka = fmul x86_fp80 %i.jw, %i.jz
  %i.kb = fadd nnan x86_fp80 %i.hi, 1.800000e+01
  %i.kc = fadd x86_fp80 %i.bz, 1.800000e+01
  %i.kd = fdiv x86_fp80 %i.kb, %i.kc
  %i.ke = fmul x86_fp80 %i.ka, %i.kd
  %i.kf = fadd nnan x86_fp80 %i.hi, 1.900000e+01
  %i.kg = fadd x86_fp80 %i.bz, 1.900000e+01
  %i.kh = fdiv x86_fp80 %i.kf, %i.kg
  %i.ki = fmul x86_fp80 %i.ke, %i.kh              ; 2 uses
  %i.kj = tail call noundef x86_fp80 @_ZN5boost4math6detail12ibeta_a_stepIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_SB_SB_iRKT0_bPSB_(x86_fp80 noundef %i.bz, x86_fp80 noundef %i.by, x86_fp80 noundef %i.ca, x86_fp80 noundef %i.bx, i32 noundef 20, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext false, ptr noundef %6) ; 2 uses
  br i1 %.1, label %bb.co, label %.thread325

_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit267: ; preds = %bb.cn
  %i.kk = tail call noundef x86_fp80 @_ZN5boost4math6detail12ibeta_a_stepIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_SB_SB_iRKT0_bPSB_(x86_fp80 noundef %i.bz, x86_fp80 noundef %i.by, x86_fp80 noundef %i.ca, x86_fp80 noundef %i.bx, i32 noundef 20, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext true, ptr noundef %6) ; 2 uses
  br i1 %.1, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %.lr.ph.i263, %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit267
  %i.kl = phi x86_fp80 [ %i.kj, %.lr.ph.i263 ], [ %i.kk, %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit267 ]
  %.0226324 = phi x86_fp80 [ %i.ki, %.lr.ph.i263 ], [ 1.000000e+00, %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit267 ]
  %i.km = fadd x86_fp80 %i.bz, 2.000000e+01
  %i.kn = tail call noundef x86_fp80 @_ZN5boost4math6detail27beta_small_b_large_a_seriesIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_SB_SB_SB_SB_RKT0_b(x86_fp80 noundef %i.km, x86_fp80 noundef %i.by, x86_fp80 noundef %i.ca, x86_fp80 noundef %i.bx, x86_fp80 noundef %i.kl, x86_fp80 noundef %.0226324, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext %5)
  br label %bb.dj

.thread325:                                       ; preds = %.lr.ph.i263
  %i.ko = tail call noundef x86_fp80 @_ZN5boost4math4betaIeeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_T0_T1_fffE4typeESC_SD_SE_(x86_fp80 noundef %i.bz, x86_fp80 noundef %i.by)
  br label %bb.cp

bb.cp:                                            ; preds = %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit267, %.thread325
  %.0226323328 = phi x86_fp80 [ %i.ki, %.thread325 ], [ 1.000000e+00, %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit267 ]
  %i.kp = phi x86_fp80 [ %i.kj, %.thread325 ], [ %i.kk, %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit267 ]
  %i.kq = phi x86_fp80 [ %i.ko, %.thread325 ], [ 1.000000e+00, %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit267 ]
  %i.kr = fsub x86_fp80 %i.kp, %i.kq
  %i.ks = fadd x86_fp80 %i.bz, 2.000000e+01
  %i.kt = tail call noundef x86_fp80 @_ZN5boost4math6detail27beta_small_b_large_a_seriesIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_SB_SB_SB_SB_RKT0_b(x86_fp80 noundef %i.ks, x86_fp80 noundef %i.by, x86_fp80 noundef %i.ca, x86_fp80 noundef %i.bx, x86_fp80 noundef %i.kr, x86_fp80 noundef %.0226323328, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext %5)
  %i.ku = fneg x86_fp80 %i.kt
  br label %bb.dj

bb.cq:                                            ; preds = %bb.bb
  %i.kv = fcmp olt x86_fp80 %0, %1
  %i.kw = fadd nnan x86_fp80 %1, %0               ; 2 uses
  %i.kx = fmul nnan x86_fp80 %i.kw, %2
  %i.ky = fsub x86_fp80 %0, %i.kx
  %i.kz = fmul x86_fp80 %i.f, %i.kw
  %i.la = fsub x86_fp80 %i.kz, %1
  %.0224 = select i1 %i.kv, x86_fp80 %i.ky, x86_fp80 %i.la
  %i.lb = fcmp olt x86_fp80 %.0224, 0.000000e+00
  br i1 %i.lb, label %bb.cr, label %thread-pre-split329

bb.cr:                                            ; preds = %bb.cq
  store x86_fp80 %1, ptr %i.a, align 16, !tbaa !1244
  store x86_fp80 %0, ptr %i.b, align 16, !tbaa !1244
  store x86_fp80 %i.f, ptr %i.c, align 16, !tbaa !1244
  %i.lc = xor i1 %4, true
  br label %thread-pre-split329

thread-pre-split329:                              ; preds = %bb.cq, %bb.cr
  %i.ld = phi x86_fp80 [ %i.f, %bb.cr ], [ %2, %bb.cq ] ; 6 uses
  %i.le = phi x86_fp80 [ %1, %bb.cr ], [ %0, %bb.cq ] ; 11 uses
  %i.lf = phi x86_fp80 [ %0, %bb.cr ], [ %1, %bb.cq ] ; 13 uses
  %.2 = phi x86_fp80 [ %2, %bb.cr ], [ %i.f, %bb.cq ] ; 19 uses
  %.4.in = phi i1 [ %i.lc, %bb.cr ], [ %4, %bb.cq ] ; 8 uses
  %i.lg = fcmp olt x86_fp80 %i.lf, 4.000000e+01
  br i1 %i.lg, label %bb.cs, label %bb.di

bb.cs:                                            ; preds = %thread-pre-split329
  %i.lh = tail call x86_fp80 @llvm.trunc.f80(x86_fp80 %i.le)
  %i.li = fcmp oeq x86_fp80 %i.lh, %i.le
  %i.lj = tail call x86_fp80 @llvm.trunc.f80(x86_fp80 %i.lf)
  %i.lk = fcmp oeq x86_fp80 %i.lj, %i.lf
  %or.cond333 = and i1 %i.lk, %i.li
  br i1 %or.cond333, label %bb.ct, label %bb.cw

bb.ct:                                            ; preds = %bb.cs
  %i.ll = fcmp olt x86_fp80 %i.le, f0x401DFFFFFF3600000000
  %i.lm = fcmp une x86_fp80 %.2, 1.000000e+00
  %or.cond5 = and i1 %i.ll, %i.lm
  br i1 %or.cond5, label %bb.cu, label %bb.cw

bb.cu:                                            ; preds = %bb.ct
  %i.ln = fadd x86_fp80 %i.le, -1.000000e+00      ; 2 uses
  %i.lo = fadd x86_fp80 %i.lf, %i.ln
  %i.lp = tail call noundef x86_fp80 @_ZN5boost4math6detail13binomial_ccdfIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_SB_SB_RKT0_(x86_fp80 noundef %i.lo, x86_fp80 noundef %i.ln, x86_fp80 noundef %i.ld, x86_fp80 noundef %.2, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 2 uses
  br i1 %5, label %bb.dj, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.lq = tail call noundef x86_fp80 @_ZN5boost4math4betaIeeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_T0_T1_fffE4typeESC_SD_SE_(x86_fp80 noundef %i.le, x86_fp80 noundef %i.lf)
  %i.lr = fmul x86_fp80 %i.lp, %i.lq
  br label %bb.dj

bb.cw:                                            ; preds = %bb.ct, %bb.cs
  %i.ls = fmul x86_fp80 %i.lf, %i.ld
  %i.lt = fcmp ugt x86_fp80 %i.ls, f0x3FFEB333333333333000
  br i1 %i.lt, label %bb.dc, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  br i1 %.4.in, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #41
  %i.lu = call noundef x86_fp80 @_ZN5boost4math6detail12ibeta_seriesIeNS0_7lanczos12lanczos17m64ENS0_8policies6policyINS5_13promote_floatILb0EEENS5_14promote_doubleILb0EEENS5_14default_policyESB_SB_SB_SB_SB_SB_SB_SB_SB_SB_EEEET_SD_SD_SD_SD_RKT0_bPSD_SD_RKT1_(x86_fp80 noundef %i.le, x86_fp80 noundef %i.lf, x86_fp80 noundef %i.ld, x86_fp80 noundef 0.000000e+00, ptr noundef nonnull align 1 dereferenceable(1) %15, i1 noundef zeroext %5, ptr noundef %6, x86_fp80 noundef %.2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #41
  br label %bb.dj

bb.cz:                                            ; preds = %bb.cx
  br i1 %5, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.lv = tail call noundef x86_fp80 @_ZN5boost4math4betaIeeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_T0_T1_fffE4typeESC_SD_SE_(x86_fp80 noundef %i.le, x86_fp80 noundef %i.lf)
  br label %bb.db

bb.db:                                            ; preds = %bb.cz, %bb.da
  %i.lw = phi x86_fp80 [ %i.lv, %bb.da ], [ 1.000000e+00, %bb.cz ]
  %i.lx = fneg x86_fp80 %i.lw
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #41
  %i.ly = call noundef x86_fp80 @_ZN5boost4math6detail12ibeta_seriesIeNS0_7lanczos12lanczos17m64ENS0_8policies6policyINS5_13promote_floatILb0EEENS5_14promote_doubleILb0EEENS5_14default_policyESB_SB_SB_SB_SB_SB_SB_SB_SB_SB_EEEET_SD_SD_SD_SD_RKT0_bPSD_SD_RKT1_(x86_fp80 noundef %i.le, x86_fp80 noundef %i.lf, x86_fp80 noundef %i.ld, x86_fp80 noundef %i.lx, ptr noundef nonnull align 1 dereferenceable(1) %16, i1 noundef zeroext %5, ptr noundef %6, x86_fp80 noundef %.2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.lz = fneg x86_fp80 %i.ly
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #41
  br label %bb.dj

bb.dc:                                            ; preds = %bb.cw
  %i.ma = fcmp ogt x86_fp80 %i.le, 1.500000e+01
  br i1 %i.ma, label %bb.dd, label %bb.df

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #41
  %i.mb = tail call noundef x86_fp80 @llvm.floor.f80(x86_fp80 %i.lf)
  store x86_fp80 %i.mb, ptr %i.d, align 16, !tbaa !1244
  %i.mc = call noundef i32 @_ZN5boost4math6itruncIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEiRKT_RKT0_(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  %i.md = sitofp i32 %i.mc to x86_fp80
  %i.me = load x86_fp80, ptr %i.b, align 16, !tbaa !1244 ; 2 uses
  %i.mf = fcmp oeq x86_fp80 %i.me, %i.md
  %i.mg = sext i1 %i.mf to i32                    ; 2 uses
  %spec.select = add i32 %i.mc, %i.mg             ; 5 uses
  %i.mh = sitofp i32 %spec.select to x86_fp80
  %i.mi = fsub x86_fp80 %i.me, %i.mh              ; 8 uses
  %.pre = load x86_fp80, ptr %i.a, align 16, !tbaa !1244 ; 2 uses
  br i1 %5, label %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit272, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.mj = fadd x86_fp80 %i.mi, %.pre              ; 5 uses
  %i.mk = icmp sgt i32 %spec.select, 0
  br i1 %i.mk, label %.lr.ph.i268.preheader, label %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit272

.lr.ph.i268.preheader:                            ; preds = %bb.de
  %i.ml = add i32 %i.mc, %i.mg
  %i.mm = add i32 %i.ml, -1
  %xtraiter = and i32 %spec.select, 3             ; 3 uses
  %i.mn = icmp ult i32 %i.mm, 3
  br i1 %i.mn, label %.lr.ph.i268.epil.preheader, label %.lr.ph.i268.preheader.new

.lr.ph.i268.preheader.new:                        ; preds = %.lr.ph.i268.preheader
  %unroll_iter = and i32 %spec.select, 2147483644
  br label %.lr.ph.i268

.lr.ph.i268:                                      ; preds = %.lr.ph.i268, %.lr.ph.i268.preheader.new
  %.014.i269 = phi i32 [ 0, %.lr.ph.i268.preheader.new ], [ %i.nl, %.lr.ph.i268 ] ; 5 uses
  %.01013.i270 = phi x86_fp80 [ 1.000000e+00, %.lr.ph.i268.preheader.new ], [ %i.nk, %.lr.ph.i268 ]
  %niter = phi i32 [ 0, %.lr.ph.i268.preheader.new ], [ %niter.next.3, %.lr.ph.i268 ]
  %i.mo = uitofp nneg i32 %.014.i269 to x86_fp80  ; 2 uses
  %i.mp = fadd x86_fp80 %i.mj, %i.mo
  %i.mq = fadd x86_fp80 %i.mi, %i.mo
  %i.mr = fdiv x86_fp80 %i.mp, %i.mq
  %i.ms = fmul x86_fp80 %.01013.i270, %i.mr
  %i.mt = or disjoint i32 %.014.i269, 1
  %i.mu = uitofp nneg i32 %i.mt to x86_fp80       ; 2 uses
  %i.mv = fadd x86_fp80 %i.mj, %i.mu
  %i.mw = fadd x86_fp80 %i.mi, %i.mu
  %i.mx = fdiv x86_fp80 %i.mv, %i.mw
  %i.my = fmul x86_fp80 %i.ms, %i.mx
  %i.mz = or disjoint i32 %.014.i269, 2
  %i.na = uitofp nneg i32 %i.mz to x86_fp80       ; 2 uses
  %i.nb = fadd x86_fp80 %i.mj, %i.na
  %i.nc = fadd x86_fp80 %i.mi, %i.na
  %i.nd = fdiv x86_fp80 %i.nb, %i.nc
  %i.ne = fmul x86_fp80 %i.my, %i.nd
  %i.nf = or disjoint i32 %.014.i269, 3
  %i.ng = uitofp nneg i32 %i.nf to x86_fp80       ; 2 uses
  %i.nh = fadd x86_fp80 %i.mj, %i.ng
  %i.ni = fadd x86_fp80 %i.mi, %i.ng
  %i.nj = fdiv x86_fp80 %i.nh, %i.ni
  %i.nk = fmul x86_fp80 %i.ne, %i.nj              ; 3 uses
  %i.nl = add nuw nsw i32 %.014.i269, 4           ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit272.loopexit.unr-lcssa, label %.lr.ph.i268, !llvm.loop !31

_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit272.loopexit.unr-lcssa: ; preds = %.lr.ph.i268
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit272, label %.lr.ph.i268.epil.preheader

.lr.ph.i268.epil.preheader:                       ; preds = %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit272.loopexit.unr-lcssa, %.lr.ph.i268.preheader
  %.014.i269.epil.init = phi i32 [ 0, %.lr.ph.i268.preheader ], [ %i.nl, %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit272.loopexit.unr-lcssa ]
  %.01013.i270.epil.init = phi x86_fp80 [ 1.000000e+00, %.lr.ph.i268.preheader ], [ %i.nk, %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit272.loopexit.unr-lcssa ]
  %lcmp.mod377 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod377)
  br label %.lr.ph.i268.epil

.lr.ph.i268.epil:                                 ; preds = %.lr.ph.i268.epil, %.lr.ph.i268.epil.preheader
  %.014.i269.epil = phi i32 [ %i.nr, %.lr.ph.i268.epil ], [ %.014.i269.epil.init, %.lr.ph.i268.epil.preheader ] ; 2 uses
  %.01013.i270.epil = phi x86_fp80 [ %i.nq, %.lr.ph.i268.epil ], [ %.01013.i270.epil.init, %.lr.ph.i268.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i268.epil ], [ 0, %.lr.ph.i268.epil.preheader ]
  %i.nm = uitofp nneg i32 %.014.i269.epil to x86_fp80 ; 2 uses
  %i.nn = fadd x86_fp80 %i.mj, %i.nm
  %i.no = fadd x86_fp80 %i.mi, %i.nm
  %i.np = fdiv x86_fp80 %i.nn, %i.no
  %i.nq = fmul x86_fp80 %.01013.i270.epil, %i.np  ; 2 uses
  %i.nr = add nuw nsw i32 %.014.i269.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit272, label %.lr.ph.i268.epil, !llvm.loop !7052

_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit272: ; preds = %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit272.loopexit.unr-lcssa, %.lr.ph.i268.epil, %bb.de, %bb.dd
  %.0212 = phi x86_fp80 [ 1.000000e+00, %bb.dd ], [ 1.000000e+00, %bb.de ], [ %i.nk, %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit272.loopexit.unr-lcssa ], [ %i.nq, %.lr.ph.i268.epil ]
  %i.ns = load x86_fp80, ptr %i.c, align 16, !tbaa !1244
  %i.nt = call noundef x86_fp80 @_ZN5boost4math6detail12ibeta_a_stepIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_SB_SB_iRKT0_bPSB_(x86_fp80 noundef %i.mi, x86_fp80 noundef %.pre, x86_fp80 noundef %.2, x86_fp80 noundef %i.ns, i32 noundef %spec.select, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext %5, ptr noundef null)
  %i.nu = load x86_fp80, ptr %i.a, align 16, !tbaa !1244
  %i.nv = load x86_fp80, ptr %i.c, align 16, !tbaa !1244
  %i.nw = call noundef x86_fp80 @_ZN5boost4math6detail27beta_small_b_large_a_seriesIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_SB_SB_SB_SB_RKT0_b(x86_fp80 noundef %i.nu, x86_fp80 noundef %i.mi, x86_fp80 noundef %i.nv, x86_fp80 noundef %.2, x86_fp80 noundef %i.nt, x86_fp80 noundef 1.000000e+00, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext %5)
  %i.nx = fdiv x86_fp80 %i.nw, %.0212
  br label %bb.dj

bb.df:                                            ; preds = %bb.dc
  br i1 %5, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41
  %i.ny = tail call noundef x86_fp80 @llvm.floor.f80(x86_fp80 %i.lf)
  store x86_fp80 %i.ny, ptr %i.e, align 16, !tbaa !1244
  %i.nz = call noundef i32 @_ZN5boost4math6itruncIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEiRKT_RKT0_(ptr noundef nonnull align 16 dereferenceable(16) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  %i.oa = load x86_fp80, ptr %i.b, align 16, !tbaa !1244
  %i.ob = sitofp i32 %i.nz to x86_fp80
  %i.oc = fsub x86_fp80 %i.oa, %i.ob              ; 3 uses
  %i.od = fcmp ole x86_fp80 %i.oc, 0.000000e+00   ; 2 uses
  %i.oe = fadd x86_fp80 %i.oc, 1.000000e+00
  %i.of = sext i1 %i.od to i32
  %.0211 = add nsw i32 %i.nz, %i.of
  %.0209 = select i1 %i.od, x86_fp80 %i.oe, x86_fp80 %i.oc ; 3 uses
  %i.og = load x86_fp80, ptr %i.a, align 16, !tbaa !1244
  %i.oh = load x86_fp80, ptr %i.c, align 16, !tbaa !1244
  %i.oi = call noundef x86_fp80 @_ZN5boost4math6detail12ibeta_a_stepIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_SB_SB_iRKT0_bPSB_(x86_fp80 noundef %.0209, x86_fp80 noundef %i.og, x86_fp80 noundef %.2, x86_fp80 noundef %i.oh, i32 noundef %.0211, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext true, ptr noundef null)
  %i.oj = load x86_fp80, ptr %i.a, align 16, !tbaa !1244
  %i.ok = load x86_fp80, ptr %i.c, align 16, !tbaa !1244
  %i.ol = call noundef x86_fp80 @_ZN5boost4math6detail12ibeta_a_stepIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_SB_SB_iRKT0_bPSB_(x86_fp80 noundef %i.oj, x86_fp80 noundef %.0209, x86_fp80 noundef %i.ok, x86_fp80 noundef %.2, i32 noundef 20, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext true, ptr noundef null)
  %i.om = fadd x86_fp80 %i.oi, %i.ol              ; 2 uses
  %i.on = fadd x86_fp80 %i.om, -1.000000e+00
  %.3216 = select i1 %.4.in, x86_fp80 %i.on, x86_fp80 %i.om
  %i.oo = load x86_fp80, ptr %i.a, align 16, !tbaa !1244
  %i.op = fadd x86_fp80 %i.oo, 2.000000e+01
  %i.oq = load x86_fp80, ptr %i.c, align 16, !tbaa !1244
  %i.or = call noundef x86_fp80 @_ZN5boost4math6detail27beta_small_b_large_a_seriesIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_SB_SB_SB_SB_RKT0_b(x86_fp80 noundef %i.op, x86_fp80 noundef %.0209, x86_fp80 noundef %i.oq, x86_fp80 noundef %.2, x86_fp80 noundef %.3216, x86_fp80 noundef 1.000000e+00, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext true) ; 2 uses
  %i.os = fneg x86_fp80 %i.or
  %.4217 = select i1 %.4.in, x86_fp80 %i.os, x86_fp80 %i.or
  br label %bb.dj

bb.dh:                                            ; preds = %bb.df
  %i.ot = tail call noundef x86_fp80 @_ZN5boost4math6detail15ibeta_fraction2IeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_SB_SB_RKT0_bPSB_(x86_fp80 noundef %i.le, x86_fp80 noundef %i.lf, x86_fp80 noundef %i.ld, x86_fp80 noundef %.2, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext false, ptr noundef %6)
  br label %bb.dj

bb.di:                                            ; preds = %thread-pre-split329
  %i.ou = tail call noundef x86_fp80 @_ZN5boost4math6detail15ibeta_fraction2IeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_SB_SB_RKT0_bPSB_(x86_fp80 noundef %i.le, x86_fp80 noundef %i.lf, x86_fp80 noundef %i.ld, x86_fp80 noundef %.2, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext %5, ptr noundef %6)
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.db, %bb.cy, %bb.dg, %bb.dh, %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit272, %bb.cv, %bb.cu, %bb.co, %bb.cp, %bb.br, %bb.bs, %bb.bp, %bb.bm, %bb.bg, %bb.bj, %bb.cg, %bb.cd, %bb.cj, %bb.cm, %bb.bx, %bb.ca
  %.3 = phi x86_fp80 [ %.2, %bb.cu ], [ %.2, %bb.cv ], [ %.2, %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit272 ], [ %.2, %bb.dg ], [ %.2, %bb.dh ], [ %.2, %bb.db ], [ %.2, %bb.cy ], [ %.2, %bb.di ], [ %i.bx, %bb.co ], [ %i.bx, %bb.cp ], [ %i.bx, %bb.cj ], [ %i.bx, %bb.cm ], [ %i.bx, %bb.cd ], [ %i.bx, %bb.cg ], [ %i.ca, %bb.ca ], [ %i.ca, %bb.bx ], [ %i.bx, %bb.br ], [ %i.bx, %bb.bs ], [ %i.bx, %bb.bm ], [ %i.bx, %bb.bp ], [ %i.ca, %bb.bj ], [ %i.ca, %bb.bg ] ; 2 uses
  %.6219 = phi x86_fp80 [ %i.lp, %bb.cu ], [ %i.lr, %bb.cv ], [ %i.nx, %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit272 ], [ %.4217, %bb.dg ], [ %i.ot, %bb.dh ], [ %i.lz, %bb.db ], [ %i.lu, %bb.cy ], [ %i.ou, %bb.di ], [ %i.kn, %bb.co ], [ %i.ku, %bb.cp ], [ %i.hc, %bb.cj ], [ %i.hh, %bb.cm ], [ %i.gv, %bb.cd ], [ %i.ha, %bb.cg ], [ %i.gt, %bb.ca ], [ %i.go, %bb.bx ], [ %i.gb, %bb.br ], [ %i.gi, %bb.bs ], [ %i.cp, %bb.bm ], [ %i.cu, %bb.bp ], [ %i.cn, %bb.bj ], [ %i.ci, %bb.bg ] ; 2 uses
  %.7.shrunk = phi i1 [ %.4.in, %bb.cu ], [ %.4.in, %bb.cv ], [ %.4.in, %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit272 ], [ false, %bb.dg ], [ %.4.in, %bb.dh ], [ false, %bb.db ], [ false, %bb.cy ], [ %.4.in, %bb.di ], [ false, %bb.co ], [ false, %bb.cp ], [ false, %bb.cj ], [ false, %bb.cm ], [ false, %bb.cd ], [ false, %bb.cg ], [ false, %bb.ca ], [ false, %bb.bx ], [ false, %bb.br ], [ false, %bb.bs ], [ false, %bb.bm ], [ false, %bb.bp ], [ false, %bb.bj ], [ false, %bb.bg ]
  br i1 %.not, label %bb.dn, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.ov = load x86_fp80, ptr %6, align 16, !tbaa !1244 ; 2 uses
  %i.ow = fcmp olt x86_fp80 %i.ov, 0.000000e+00
  %.pre343 = load x86_fp80, ptr %i.c, align 16, !tbaa !1244 ; 2 uses
  br i1 %i.ow, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.ox = load x86_fp80, ptr %i.a, align 16, !tbaa !1244
  %i.oy = load x86_fp80, ptr %i.b, align 16, !tbaa !1244
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #41
  %i.oz = call noundef x86_fp80 @_ZN5boost4math6detail17ibeta_power_termsIeNS0_7lanczos12lanczos17m64ENS0_8policies6policyINS5_13promote_floatILb0EEENS5_14promote_doubleILb0EEENS5_14default_policyESB_SB_SB_SB_SB_SB_SB_SB_SB_SB_EEEET_SD_SD_SD_SD_RKT0_bRKT1_SD_PKc(x86_fp80 noundef %i.ox, x86_fp80 noundef %i.oy, x86_fp80 noundef %.pre343, x86_fp80 noundef %.3, ptr noundef nonnull align 1 dereferenceable(1) %17, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %3, x86_fp80 noundef 1.000000e+00, ptr noundef nonnull @.str.237) ; 2 uses
  store x86_fp80 %i.oz, ptr %6, align 16, !tbaa !1244
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #41
  %.pre342 = load x86_fp80, ptr %i.c, align 16, !tbaa !1244
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.pa = phi x86_fp80 [ %.pre342, %bb.dl ], [ %.pre343, %bb.dk ]
  %i.pb = phi x86_fp80 [ %i.oz, %bb.dl ], [ %i.ov, %bb.dk ] ; 3 uses
  %i.pc = fcmp une x86_fp80 %i.pb, 0.000000e+00
  br i1 %i.pc, label %.sink.split, label %bb.dn
end_hunk_0
begin_hunk_1_@_ZN5boost4math6detail18lower_gamma_seriesIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_RKT0_SB_:bb.a
  %i.h = fcmp olt x86_fp80 %i.f, %i.g
  br i1 %i.h, label %bb.c, label %_ZN5boost4math5tools10sum_seriesINS0_6detail29lower_incomplete_gamma_seriesIeEEeeEENT_11result_typeERS6_RKT0_RmRKT1_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = fadd x86_fp80 %i.b, 1.000000e+00         ; 2 uses
  %i.j = fdiv x86_fp80 %1, %i.i
  %i.k = fmul x86_fp80 %i.c, %i.j                 ; 3 uses
  %i.l = fadd x86_fp80 %i.k, %i.d                 ; 4 uses
  %i.m = fmul x86_fp80 %i.l, f0x3FC08000000000000000
  %i.n = tail call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.m)
  %i.o = tail call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.k)
  %i.p = fcmp olt x86_fp80 %i.n, %i.o
  br i1 %i.p, label %bb.d, label %_ZN5boost4math5tools10sum_seriesINS0_6detail29lower_incomplete_gamma_seriesIeEEeeEENT_11result_typeERS6_RKT0_RmRKT1_.exit.split.loop.exit10

bb.d:                                             ; preds = %bb.c
  %i.q = fadd x86_fp80 %i.i, 1.000000e+00         ; 2 uses
  %i.r = fdiv x86_fp80 %1, %i.q
  %i.s = fmul x86_fp80 %i.k, %i.r
  %i.t = add nsw i64 %.0.i, -2                    ; 2 uses
  %.not.i.1 = icmp eq i64 %i.t, 0
  br i1 %.not.i.1, label %_ZN5boost4math5tools10sum_seriesINS0_6detail29lower_incomplete_gamma_seriesIeEEeeEENT_11result_typeERS6_RKT0_RmRKT1_.exit, label %bb.b, !llvm.loop !7133

_ZN5boost4math5tools10sum_seriesINS0_6detail29lower_incomplete_gamma_seriesIeEEeeEENT_11result_typeERS6_RKT0_RmRKT1_.exit.split.loop.exit10: ; preds = %bb.c
  %i.u = add nsw i64 %.0.i, -1
  br label %_ZN5boost4math5tools10sum_seriesINS0_6detail29lower_incomplete_gamma_seriesIeEEeeEENT_11result_typeERS6_RKT0_RmRKT1_.exit

_ZN5boost4math5tools10sum_seriesINS0_6detail29lower_incomplete_gamma_seriesIeEEeeEENT_11result_typeERS6_RKT0_RmRKT1_.exit: ; preds = %bb.b, %bb.d, %_ZN5boost4math5tools10sum_seriesINS0_6detail29lower_incomplete_gamma_seriesIeEEeeEENT_11result_typeERS6_RKT0_RmRKT1_.exit.split.loop.exit10
  %.lcssa = phi x86_fp80 [ %i.l, %_ZN5boost4math5tools10sum_seriesINS0_6detail29lower_incomplete_gamma_seriesIeEEeeEENT_11result_typeERS6_RKT0_RmRKT1_.exit.split.loop.exit10 ], [ %i.l, %bb.d ], [ %i.d, %bb.b ]
  %.1.i = phi i64 [ %i.u, %_ZN5boost4math5tools10sum_seriesINS0_6detail29lower_incomplete_gamma_seriesIeEEeeEENT_11result_typeERS6_RKT0_RmRKT1_.exit.split.loop.exit10 ], [ 0, %bb.d ], [ %.0.i, %bb.b ]
  %i.v = sub i64 1000000, %.1.i                   ; 2 uses
  %.not.i4 = icmp ult i64 %i.v, 1000000
  br i1 %.not.i4, label %_ZN5boost4math8policies23check_series_iterationsIeNS1_6policyINS1_13promote_floatILb0EEENS1_14promote_doubleILb0EEENS1_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEvPKcmRKT0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost4math5tools10sum_seriesINS0_6detail29lower_incomplete_gamma_seriesIeEEeeEENT_11result_typeERS6_RKT0_RmRKT1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.w = uitofp i64 %i.v to double
  %i.x = fpext double %i.w to x86_fp80
  store x86_fp80 %i.x, ptr %i.a, align 16, !tbaa !1244
  call void @_ZN5boost4math8policies6detail11raise_errorINS0_16evaluation_errorEeEEvPKcS6_RKT0_(ptr noundef nonnull @.str.282, ptr noundef nonnull @.str.260, ptr noundef nonnull align 16 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %_ZN5boost4math8policies23check_series_iterationsIeNS1_6policyINS1_13promote_floatILb0EEENS1_14promote_doubleILb0EEENS1_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEvPKcmRKT0_.exit

_ZN5boost4math8policies23check_series_iterationsIeNS1_6policyINS1_13promote_floatILb0EEENS1_14promote_doubleILb0EEENS1_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEvPKcmRKT0_.exit: ; preds = %_ZN5boost4math5tools10sum_seriesINS0_6detail29lower_incomplete_gamma_seriesIeEEeeEENT_11result_typeERS6_RKT0_RmRKT1_.exit, %bb.e
  ret x86_fp80 %.lcssa
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef x86_fp80 @_ZN5boost4math6lgammaIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeESC_RKT0_(x86_fp80 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #10 comdat !guid !7135 {
bb.a:
  %2 = alloca %"struct.boost::math::policies::policy", align 1 ; 3 uses
  %3 = alloca %"struct.boost::math::lanczos::lanczos17m64", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.a = call noundef x86_fp80 @_ZN5boost4math6detail10lgamma_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EENS0_7lanczos12lanczos17m64EEET_SD_RKT0_RKT1_Pi(x86_fp80 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef null) ; 2 uses
  %i.b = call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.a)
  %i.c = fcmp ogt x86_fp80 %i.b, f0x7FFEFFFFFFFFFFFFFFFF
  br i1 %i.c, label %bb.b, label %_ZN5boost4math6lgammaIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeESC_PiRKT0_.exit

bb.b:                                             ; preds = %bb.a
  call void @_ZN5boost4math8policies6detail11raise_errorISt14overflow_erroreEEvPKcS6_(ptr noundef nonnull @.str.262, ptr noundef nonnull @.str.235)
  br label %_ZN5boost4math6lgammaIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeESC_PiRKT0_.exit

_ZN5boost4math6lgammaIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeESC_PiRKT0_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  ret x86_fp80 %i.a
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef x86_fp80 @_ZN5boost4math6detail14finite_gamma_qIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_RKT0_PSB_(x86_fp80 noundef %0, x86_fp80 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3) local_unnamed_addr #10 comdat !guid !7137 {
bb.a:
  %i.a = alloca x86_fp80, align 16                ; 4 uses
  %i.b = alloca x86_fp80, align 16                ; 4 uses
  %i.c = fneg x86_fp80 %1
  %i.d = tail call noundef x86_fp80 @expl(x86_fp80 noundef %i.c) #41 ; 5 uses
  %i.e = fcmp une x86_fp80 %i.d, 0.000000e+00
  %i.f = fcmp ogt x86_fp80 %0, 1.000000e+00
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.g = phi x86_fp80 [ %i.l, %.lr.ph ], [ 1.000000e+00, %bb.a ]
  %.029 = phi i32 [ %i.k, %.lr.ph ], [ 1, %bb.a ]
  %.02128 = phi x86_fp80 [ %i.i, %.lr.ph ], [ %i.d, %bb.a ]
  %.02227 = phi x86_fp80 [ %i.j, %.lr.ph ], [ %i.d, %bb.a ]
  %i.h = fdiv x86_fp80 %.02128, %i.g
  %i.i = fmul x86_fp80 %1, %i.h                   ; 2 uses
  %i.j = fadd x86_fp80 %.02227, %i.i              ; 2 uses
  %i.k = add i32 %.029, 1                         ; 2 uses
  %i.l = uitofp i32 %i.k to x86_fp80              ; 2 uses
  %i.m = fcmp ogt x86_fp80 %0, %i.l
  br i1 %i.m, label %.lr.ph, label %.loopexit, !llvm.loop !7136

.loopexit:                                        ; preds = %.lr.ph, %bb.a
  %.1 = phi x86_fp80 [ %i.d, %bb.a ], [ %i.j, %.lr.ph ]
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %.loopexit
  %i.n = tail call noundef x86_fp80 @powl(x86_fp80 noundef %1, x86_fp80 noundef %0) #41
  %i.o = fmul x86_fp80 %i.d, %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.p = fadd x86_fp80 %0, -1.000000e+00          ; 6 uses
  store x86_fp80 %i.p, ptr %i.b, align 16, !tbaa !1244
  %i.q = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %i.p)
  %i.r = fcmp ueq x86_fp80 %i.q, +inf
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  store x86_fp80 %i.p, ptr %i.a, align 16, !tbaa !1244
  call void @_ZN5boost4math8policies6detail11raise_errorINS0_14rounding_errorEeEEvPKcS6_RKT0_(ptr noundef nonnull @.str.257, ptr noundef nonnull @.str.258, ptr noundef nonnull align 16 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %_ZN5boost4math5truncIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeERKSC_RKT0_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.s = fcmp ult x86_fp80 %i.p, 0.000000e+00
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = tail call noundef x86_fp80 @llvm.floor.f80(x86_fp80 %i.p)
  br label %_ZN5boost4math5truncIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeERKSC_RKT0_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.u = tail call noundef x86_fp80 @llvm.ceil.f80(x86_fp80 %i.p)
  br label %_ZN5boost4math5truncIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeERKSC_RKT0_.exit.i

_ZN5boost4math5truncIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeERKSC_RKT0_.exit.i: ; preds = %bb.f, %bb.e, %bb.c
  %.0.i.i.i = phi x86_fp80 [ 0.000000e+00, %bb.c ], [ %i.t, %bb.e ], [ %i.u, %bb.f ] ; 3 uses
  %i.v = fcmp ult x86_fp80 %.0.i.i.i, f0x401E8000000000000000
  %i.w = fcmp uge x86_fp80 %.0.i.i.i, f0xC01E8000000000000000
  %or.cond.not.i = and i1 %i.v, %i.w              ; 2 uses
  br i1 %or.cond.not.i, label %_ZN5boost4math6itruncIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEiRKT_RKT0_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost4math5truncIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeERKSC_RKT0_.exit.i
  call void @_ZN5boost4math8policies6detail11raise_errorINS0_14rounding_errorEeEEvPKcS6_RKT0_(ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.258, ptr noundef nonnull align 16 dereferenceable(16) %i.b)
  br label %_ZN5boost4math6itruncIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEiRKT_RKT0_.exit

_ZN5boost4math6itruncIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEiRKT_RKT0_.exit: ; preds = %_ZN5boost4math5truncIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeERKSC_RKT0_.exit.i, %bb.g
  %i.x = fptosi x86_fp80 %.0.i.i.i to i32
  %i.y = zext i32 %i.x to i64
  %i.z = select i1 %or.cond.not.i, i64 %i.y, i64 0
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr @_ZN5boost4math24unchecked_factorial_dataIeLb1EE10factorialsE, i64 %i.z
  %i.ab = load x86_fp80, ptr %i.aa, align 16, !tbaa !1244
  %i.ac = fdiv x86_fp80 %i.o, %i.ab
  store x86_fp80 %i.ac, ptr %3, align 16, !tbaa !1244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  br label %bb.h

bb.h:                                             ; preds = %_ZN5boost4math6itruncIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEiRKT_RKT0_.exit, %.loopexit
  ret x86_fp80 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef x86_fp80 @_ZN5boost4math6detail19finite_half_gamma_qIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_PSB_RKT0_(x86_fp80 noundef %0, x86_fp80 noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat !guid !7139 {
bb.a:
  %4 = alloca %"struct.boost::math::policies::policy", align 1 ; 3 uses
  %5 = alloca %"struct.std::integral_constant.2002", align 1 ; 3 uses
  %i.a = tail call noundef x86_fp80 @sqrtl(x86_fp80 noundef %1) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.b = call noundef x86_fp80 @_ZN5boost4math6detail7erf_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_bRKT0_RKSt17integral_constantIiLi64EE(x86_fp80 noundef %i.a, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) ; 5 uses
  %i.c = call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.b)
  %i.d = fcmp ogt x86_fp80 %i.c, f0x7FFEFFFFFFFFFFFFFFFF
  br i1 %i.d, label %bb.b, label %_ZN5boost4math4erfcIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeESC_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  call void @_ZN5boost4math8policies6detail11raise_errorISt14overflow_erroreEEvPKcS6_(ptr noundef nonnull @.str.283, ptr noundef nonnull @.str.235)
  br label %_ZN5boost4math4erfcIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeESC_RKT0_.exit

_ZN5boost4math4erfcIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeESC_RKT0_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  %i.e = fcmp une x86_fp80 %i.b, 0.000000e+00
  %i.f = fcmp ogt x86_fp80 %0, 1.000000e+00
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5boost4math4erfcIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeESC_RKT0_.exit
  %i.g = fneg x86_fp80 %1
  %i.h = call noundef x86_fp80 @expl(x86_fp80 noundef %i.g) #41
  %i.i = fmul x86_fp80 %1, f0x4000C90FDAA22168C235
  %i.j = call noundef x86_fp80 @sqrtl(x86_fp80 noundef %i.i) #41
  %i.k = fdiv x86_fp80 %i.h, %i.j
  %i.l = fmul x86_fp80 %1, %i.k
  %i.m = fmul x86_fp80 %i.l, 2.000000e+00         ; 3 uses
  %i.n = fcmp ogt x86_fp80 %0, 2.000000e+00
  br i1 %i.n, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.028.lcssa = phi x86_fp80 [ %i.m, %bb.c ], [ %i.t, %.lr.ph ]
  %i.o = fadd x86_fp80 %i.b, %.028.lcssa          ; 2 uses
  %.not35 = icmp eq ptr %2, null
  br i1 %.not35, label %bb.f, label %.sink.split

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %i.p = phi x86_fp80 [ %i.v, %.lr.ph ], [ 2.000000e+00, %bb.c ]
  %.038 = phi i32 [ %i.u, %.lr.ph ], [ 2, %bb.c ]
  %.02837 = phi x86_fp80 [ %i.t, %.lr.ph ], [ %i.m, %bb.c ]
  %.03036 = phi x86_fp80 [ %i.s, %.lr.ph ], [ %i.m, %bb.c ]
  %i.q = fadd nnan x86_fp80 %i.p, -5.000000e-01
  %i.r = fdiv x86_fp80 %.03036, %i.q
  %i.s = fmul x86_fp80 %1, %i.r                   ; 2 uses
  %i.t = fadd x86_fp80 %.02837, %i.s              ; 2 uses
  %i.u = add i32 %.038, 1                         ; 2 uses
  %i.v = uitofp i32 %i.u to x86_fp80              ; 2 uses
  %i.w = fcmp ogt x86_fp80 %0, %i.v
  br i1 %i.w, label %.lr.ph, label %._crit_edge, !llvm.loop !7138

bb.d:                                             ; preds = %_ZN5boost4math4erfcIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeESC_RKT0_.exit
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = call noundef x86_fp80 @sqrtl(x86_fp80 noundef %1) #41
  %i.y = fneg x86_fp80 %1
  %i.z = call noundef x86_fp80 @expl(x86_fp80 noundef %i.y) #41
  %i.aa = fmul x86_fp80 %i.x, %i.z
  %i.ab = fdiv x86_fp80 %i.aa, f0x3FFFE2DFC48DA77B553D
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge, %bb.e
  %.sink = phi x86_fp80 [ %i.ab, %bb.e ], [ 0.000000e+00, %._crit_edge ]
  %.029.ph = phi x86_fp80 [ %i.b, %bb.e ], [ %i.o, %._crit_edge ]
  store x86_fp80 %.sink, ptr %2, align 16, !tbaa !1244
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %._crit_edge, %bb.d
  %.029 = phi x86_fp80 [ %i.b, %bb.d ], [ %i.o, %._crit_edge ], [ %.029.ph, %.sink.split ]
  ret x86_fp80 %.029
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef x86_fp80 @_ZN5boost4math6detail23tgamma_small_upper_partIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_RKT0_PSB_bSF_(x86_fp80 noundef %0, x86_fp80 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3, i1 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #10 comdat !guid !7141 {
bb.a:
  %i.a = alloca x86_fp80, align 16                ; 4 uses
  %6 = alloca %"struct.boost::math::policies::policy", align 1 ; 3 uses
  %7 = alloca %"struct.boost::math::lanczos::lanczos17m64", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.b = call noundef x86_fp80 @_ZN5boost4math6detail14tgammap1m1_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EENS0_7lanczos12lanczos17m64EEET_SD_RKT0_RKT1_(x86_fp80 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) ; 3 uses
  %i.c = call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.b)
  %i.d = fcmp ogt x86_fp80 %i.c, f0x7FFEFFFFFFFFFFFFFFFF
  br i1 %i.d, label %bb.b, label %_ZN5boost4math10tgamma1pm1IeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeESC_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  call void @_ZN5boost4math8policies6detail11raise_errorISt14overflow_erroreEEvPKcS6_(ptr noundef nonnull @.str.285, ptr noundef nonnull @.str.235)
  br label %_ZN5boost4math10tgamma1pm1IeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeESC_RKT0_.exit

_ZN5boost4math10tgamma1pm1IeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeESC_RKT0_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5boost4math10tgamma1pm1IeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeESC_RKT0_.exit
  %i.e = fadd x86_fp80 %i.b, 1.000000e+00
  %i.f = fdiv x86_fp80 %i.e, %0
  store x86_fp80 %i.f, ptr %3, align 16, !tbaa !1244
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN5boost4math10tgamma1pm1IeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeESC_RKT0_.exit
  %i.g = call noundef x86_fp80 @_ZN5boost4math6detail9powm1_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_RKT0_(x86_fp80 noundef %1, x86_fp80 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %2) ; 2 uses
  %i.h = fsub x86_fp80 %i.b, %i.g
  %i.i = fdiv x86_fp80 %i.h, %0
  %i.j = fneg x86_fp80 %1                         ; 3 uses
  %i.k = fadd x86_fp80 %i.g, 1.000000e+00         ; 3 uses
  %.not32 = icmp eq ptr %5, null
  br i1 %.not32, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load x86_fp80, ptr %3, align 16, !tbaa !1244
  %i.m = call noundef x86_fp80 @expl(x86_fp80 noundef %1) #41
  %i.n = fmul x86_fp80 %i.l, %i.m
  %i.o = fdiv x86_fp80 %i.k, %i.n
  store x86_fp80 %i.o, ptr %5, align 16, !tbaa !1244
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %4, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = load x86_fp80, ptr %3, align 16, !tbaa !1244
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.q = phi x86_fp80 [ %i.p, %bb.g ], [ 0.000000e+00, %bb.f ]
  %i.r = fsub x86_fp80 %i.q, %i.i
  %i.s = fdiv x86_fp80 %i.r, %i.k
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %.in = phi x86_fp80 [ %0, %bb.h ], [ %i.ag, %bb.k ]
  %i.t = phi x86_fp80 [ %i.j, %bb.h ], [ %i.aq, %bb.k ] ; 2 uses
  %i.u = phi i32 [ 1, %bb.h ], [ %i.ao, %bb.k ]   ; 2 uses
  %.012.i = phi x86_fp80 [ %i.s, %bb.h ], [ %i.ai, %bb.k ]
  %.0.i = phi i64 [ 999990, %bb.h ], [ %i.ar, %bb.k ] ; 3 uses
  %i.v = fadd x86_fp80 %.in, 1.000000e+00         ; 2 uses
  %i.w = fdiv x86_fp80 %i.t, %i.v                 ; 2 uses
  %i.x = fadd x86_fp80 %i.w, %.012.i              ; 3 uses
  %i.y = fmul x86_fp80 %i.x, f0x3FC08000000000000000
  %i.z = call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.y)
  %i.aa = call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.w)
  %i.ab = fcmp olt x86_fp80 %i.z, %i.aa
  br i1 %i.ab, label %bb.j, label %_ZN5boost4math5tools10sum_seriesINS0_6detail19small_gamma2_seriesIeEEeeEENT_11result_typeERS6_RKT0_RmRKT1_.exit

bb.j:                                             ; preds = %bb.i
  %i.ac = fmul x86_fp80 %i.t, %i.j
  %i.ad = add nuw nsw i32 %i.u, 1
  %i.ae = uitofp nneg i32 %i.ad to x86_fp80
  %i.af = fdiv x86_fp80 %i.ac, %i.ae              ; 2 uses
  %i.ag = fadd x86_fp80 %i.v, 1.000000e+00        ; 2 uses
  %i.ah = fdiv x86_fp80 %i.af, %i.ag              ; 2 uses
  %i.ai = fadd x86_fp80 %i.ah, %i.x               ; 4 uses
  %i.aj = fmul x86_fp80 %i.ai, f0x3FC08000000000000000
  %i.ak = call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.aj)
  %i.al = call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.ah)
  %i.am = fcmp olt x86_fp80 %i.ak, %i.al
  br i1 %i.am, label %bb.k, label %_ZN5boost4math5tools10sum_seriesINS0_6detail19small_gamma2_seriesIeEEeeEENT_11result_typeERS6_RKT0_RmRKT1_.exit.split.loop.exit43

bb.k:                                             ; preds = %bb.j
  %i.an = fmul x86_fp80 %i.af, %i.j
  %i.ao = add nuw nsw i32 %i.u, 2                 ; 2 uses
  %i.ap = uitofp nneg i32 %i.ao to x86_fp80
  %i.aq = fdiv x86_fp80 %i.an, %i.ap
  %i.ar = add nsw i64 %.0.i, -2                   ; 2 uses
  %.not.i.1 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.1, label %_ZN5boost4math5tools10sum_seriesINS0_6detail19small_gamma2_seriesIeEEeeEENT_11result_typeERS6_RKT0_RmRKT1_.exit, label %bb.i, !llvm.loop !7140

_ZN5boost4math5tools10sum_seriesINS0_6detail19small_gamma2_seriesIeEEeeEENT_11result_typeERS6_RKT0_RmRKT1_.exit.split.loop.exit43: ; preds = %bb.j
  %i.as = add nsw i64 %.0.i, -1
  br label %_ZN5boost4math5tools10sum_seriesINS0_6detail19small_gamma2_seriesIeEEeeEENT_11result_typeERS6_RKT0_RmRKT1_.exit

_ZN5boost4math5tools10sum_seriesINS0_6detail19small_gamma2_seriesIeEEeeEENT_11result_typeERS6_RKT0_RmRKT1_.exit: ; preds = %bb.i, %bb.k, %_ZN5boost4math5tools10sum_seriesINS0_6detail19small_gamma2_seriesIeEEeeEENT_11result_typeERS6_RKT0_RmRKT1_.exit.split.loop.exit43
  %.lcssa = phi x86_fp80 [ %i.ai, %_ZN5boost4math5tools10sum_seriesINS0_6detail19small_gamma2_seriesIeEEeeEENT_11result_typeERS6_RKT0_RmRKT1_.exit.split.loop.exit43 ], [ %i.ai, %bb.k ], [ %i.x, %bb.i ]
  %.1.i = phi i64 [ %i.as, %_ZN5boost4math5tools10sum_seriesINS0_6detail19small_gamma2_seriesIeEEeeEENT_11result_typeERS6_RKT0_RmRKT1_.exit.split.loop.exit43 ], [ 0, %bb.k ], [ %.0.i, %bb.i ]
  %i.at = sub i64 999990, %.1.i                   ; 2 uses
  %.not.i33 = icmp ult i64 %i.at, 1000000
  br i1 %.not.i33, label %_ZN5boost4math8policies23check_series_iterationsIeNS1_6policyINS1_13promote_floatILb0EEENS1_14promote_doubleILb0EEENS1_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEvPKcmRKT0_.exit, label %bb.l

bb.l:                                             ; preds = %_ZN5boost4math5tools10sum_seriesINS0_6detail19small_gamma2_seriesIeEEeeEENT_11result_typeERS6_RKT0_RmRKT1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.au = uitofp i64 %i.at to double
  %i.av = fpext double %i.au to x86_fp80
  store x86_fp80 %i.av, ptr %i.a, align 16, !tbaa !1244
  call void @_ZN5boost4math8policies6detail11raise_errorINS0_16evaluation_errorEeEEvPKcS6_RKT0_(ptr noundef nonnull @.str.284, ptr noundef nonnull @.str.260, ptr noundef nonnull align 16 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %_ZN5boost4math8policies23check_series_iterationsIeNS1_6policyINS1_13promote_floatILb0EEENS1_14promote_doubleILb0EEENS1_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEvPKcmRKT0_.exit

_ZN5boost4math8policies23check_series_iterationsIeNS1_6policyINS1_13promote_floatILb0EEENS1_14promote_doubleILb0EEENS1_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEvPKcmRKT0_.exit: ; preds = %_ZN5boost4math5tools10sum_seriesINS0_6detail19small_gamma2_seriesIeEEeeEENT_11result_typeERS6_RKT0_RmRKT1_.exit, %bb.l
  %i.aw = fneg x86_fp80 %i.k
  %i.ax = fmul x86_fp80 %.lcssa, %i.aw            ; 2 uses
  %i.ay = fneg x86_fp80 %i.ax
  %spec.select = select i1 %4, x86_fp80 %i.ay, x86_fp80 %i.ax
  ret x86_fp80 %spec.select
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef x86_fp80 @_ZN5boost4math6detail18igamma_temme_largeIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_RKT0_PKSt17integral_constantIiLi64EE(x86_fp80 noundef %0, x86_fp80 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3) local_unnamed_addr #0 comdat !guid !7142 {
bb.a:
  %4 = alloca %"struct.boost::math::policies::policy", align 1 ; 3 uses
  %5 = alloca %"struct.std::integral_constant.2002", align 1 ; 3 uses
  %i.a = alloca x86_fp80, align 16                ; 4 uses
  %i.b = alloca x86_fp80, align 16                ; 4 uses
  %i.c = fsub x86_fp80 %1, %0
  %i.d = fdiv x86_fp80 %i.c, %0                   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store x86_fp80 %i.d, ptr %i.b, align 16, !tbaa !1244
  %i.e = fcmp olt x86_fp80 %i.d, -1.000000e+00
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @_ZZN5boost4math7log1pmxIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeESC_RKT0_E8function, align 8, !tbaa !1581
  call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_erroreEEvPKcS6_RKT0_(ptr noundef %i.f, ptr noundef nonnull @.str.274, ptr noundef nonnull align 16 dereferenceable(16) %i.b)
  br label %_ZN5boost4math7log1pmxIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeESC_RKT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = fcmp oeq x86_fp80 %i.d, -1.000000e+00
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_ZZN5boost4math7log1pmxIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeESC_RKT0_E8function, align 8, !tbaa !1581
  tail call void @_ZN5boost4math8policies6detail11raise_errorISt14overflow_erroreEEvPKcS6_(ptr noundef %i.h, ptr noundef nonnull @.str.251)
  br label %_ZN5boost4math7log1pmxIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeESC_RKT0_.exit

bb.e:                                             ; preds = %bb.c
  %i.i = tail call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.d) ; 2 uses
  %i.j = fcmp ogt x86_fp80 %i.i, f0x3FFEF333330000000000
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = fadd x86_fp80 %i.d, 1.000000e+00
  %i.l = tail call noundef x86_fp80 @logl(x86_fp80 noundef %i.k) #41
  %i.m = fsub x86_fp80 %i.l, %i.d
  br label %_ZN5boost4math7log1pmxIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeESC_RKT0_.exit

bb.g:                                             ; preds = %bb.e
  %i.n = fcmp olt x86_fp80 %i.i, f0x3FC08000000000000000
  %i.o = fneg x86_fp80 %i.d                       ; 3 uses
  br i1 %i.n, label %bb.h, label %.preheader

end_hunk_1
begin_hunk_2_@_ZN5boost4math6detail9ibeta_impIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_S7_S7_S7_RKT0_bbPS7_:bb.a
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ce, %bb.cf
  %i.gx = phi x86_fp80 [ %i.gw, %bb.cf ], [ 1.000000e+00, %bb.ce ]
  %i.gy = fneg x86_fp80 %i.gx
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #41
  %i.gz = call noundef x86_fp80 @_ZN5boost4math6detail12ibeta_seriesIeNS0_7lanczos12lanczos17m64ENS0_8policies6policyINS5_14default_policyES7_S7_S7_S7_S7_S7_S7_S7_S7_S7_S7_S7_EEEET_S9_S9_S9_S9_RKT0_bPS9_S9_RKT1_(x86_fp80 noundef %i.bz, x86_fp80 noundef %i.by, x86_fp80 noundef %i.ca, x86_fp80 noundef %i.gy, ptr noundef nonnull align 1 dereferenceable(1) %14, i1 noundef zeroext %5, ptr noundef %6, x86_fp80 noundef %i.bx, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.ha = fneg x86_fp80 %i.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  br label %bb.dj

bb.ch:                                            ; preds = %bb.cb
  %i.hb = fcmp ult x86_fp80 %i.bz, 1.500000e+01
  br i1 %i.hb, label %bb.cn, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  br i1 %.1, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.hc = tail call noundef x86_fp80 @_ZN5boost4math6detail27beta_small_b_large_a_seriesIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_S7_S7_S7_S7_S7_S7_RKT0_b(x86_fp80 noundef %i.bz, x86_fp80 noundef %i.by, x86_fp80 noundef %i.ca, x86_fp80 noundef %i.bx, x86_fp80 noundef 0.000000e+00, x86_fp80 noundef 1.000000e+00, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext %5)
  br label %bb.dj

bb.ck:                                            ; preds = %bb.ci
  br i1 %5, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.hd = tail call noundef x86_fp80 @_ZN5boost4math4betaIeeNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_T1_fffE4typeES8_S9_SA_(x86_fp80 noundef %i.bz, x86_fp80 noundef %i.by)
  br label %bb.cm

bb.cm:                                            ; preds = %bb.ck, %bb.cl
  %i.he = phi x86_fp80 [ %i.hd, %bb.cl ], [ 1.000000e+00, %bb.ck ]
  %i.hf = fneg x86_fp80 %i.he
  %i.hg = tail call noundef x86_fp80 @_ZN5boost4math6detail27beta_small_b_large_a_seriesIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_S7_S7_S7_S7_S7_S7_RKT0_b(x86_fp80 noundef %i.bz, x86_fp80 noundef %i.by, x86_fp80 noundef %i.ca, x86_fp80 noundef %i.bx, x86_fp80 noundef %i.hf, x86_fp80 noundef 1.000000e+00, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext %5)
  %i.hh = fneg x86_fp80 %i.hg
  br label %bb.dj

bb.cn:                                            ; preds = %bb.ch
  br i1 %5, label %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit267, label %.lr.ph.i263

.lr.ph.i263:                                      ; preds = %bb.cn
  %i.hi = fadd x86_fp80 %1, %0                    ; 20 uses
  %i.hj = fadd nnan x86_fp80 %i.hi, 0.000000e+00
  %i.hk = fdiv nnan x86_fp80 %i.hj, %i.bz
  %i.hl = fadd nnan x86_fp80 %i.hi, 1.000000e+00
  %i.hm = fadd x86_fp80 %i.bz, 1.000000e+00
  %i.hn = fdiv x86_fp80 %i.hl, %i.hm
  %i.ho = fmul x86_fp80 %i.hk, %i.hn
  %i.hp = fadd nnan x86_fp80 %i.hi, 2.000000e+00
  %i.hq = fadd x86_fp80 %i.bz, 2.000000e+00
  %i.hr = fdiv x86_fp80 %i.hp, %i.hq
  %i.hs = fmul x86_fp80 %i.ho, %i.hr
  %i.ht = fadd nnan x86_fp80 %i.hi, 3.000000e+00
  %i.hu = fadd x86_fp80 %i.bz, 3.000000e+00
  %i.hv = fdiv x86_fp80 %i.ht, %i.hu
  %i.hw = fmul x86_fp80 %i.hs, %i.hv
  %i.hx = fadd nnan x86_fp80 %i.hi, 4.000000e+00
  %i.hy = fadd x86_fp80 %i.bz, 4.000000e+00
  %i.hz = fdiv x86_fp80 %i.hx, %i.hy
  %i.ia = fmul x86_fp80 %i.hw, %i.hz
  %i.ib = fadd nnan x86_fp80 %i.hi, 5.000000e+00
  %i.ic = fadd x86_fp80 %i.bz, 5.000000e+00
  %i.id = fdiv x86_fp80 %i.ib, %i.ic
  %i.ie = fmul x86_fp80 %i.ia, %i.id
  %i.if = fadd nnan x86_fp80 %i.hi, 6.000000e+00
  %i.ig = fadd x86_fp80 %i.bz, 6.000000e+00
  %i.ih = fdiv x86_fp80 %i.if, %i.ig
  %i.ii = fmul x86_fp80 %i.ie, %i.ih
  %i.ij = fadd nnan x86_fp80 %i.hi, 7.000000e+00
  %i.ik = fadd x86_fp80 %i.bz, 7.000000e+00
  %i.il = fdiv x86_fp80 %i.ij, %i.ik
  %i.im = fmul x86_fp80 %i.ii, %i.il
  %i.in = fadd nnan x86_fp80 %i.hi, 8.000000e+00
  %i.io = fadd x86_fp80 %i.bz, 8.000000e+00
  %i.ip = fdiv x86_fp80 %i.in, %i.io
  %i.iq = fmul x86_fp80 %i.im, %i.ip
  %i.ir = fadd nnan x86_fp80 %i.hi, 9.000000e+00
  %i.is = fadd x86_fp80 %i.bz, 9.000000e+00
  %i.it = fdiv x86_fp80 %i.ir, %i.is
  %i.iu = fmul x86_fp80 %i.iq, %i.it
  %i.iv = fadd nnan x86_fp80 %i.hi, 1.000000e+01
  %i.iw = fadd x86_fp80 %i.bz, 1.000000e+01
  %i.ix = fdiv x86_fp80 %i.iv, %i.iw
  %i.iy = fmul x86_fp80 %i.iu, %i.ix
  %i.iz = fadd nnan x86_fp80 %i.hi, 1.100000e+01
  %i.ja = fadd x86_fp80 %i.bz, 1.100000e+01
  %i.jb = fdiv x86_fp80 %i.iz, %i.ja
  %i.jc = fmul x86_fp80 %i.iy, %i.jb
  %i.jd = fadd nnan x86_fp80 %i.hi, 1.200000e+01
  %i.je = fadd x86_fp80 %i.bz, 1.200000e+01
  %i.jf = fdiv x86_fp80 %i.jd, %i.je
  %i.jg = fmul x86_fp80 %i.jc, %i.jf
  %i.jh = fadd nnan x86_fp80 %i.hi, 1.300000e+01
  %i.ji = fadd x86_fp80 %i.bz, 1.300000e+01
  %i.jj = fdiv x86_fp80 %i.jh, %i.ji
  %i.jk = fmul x86_fp80 %i.jg, %i.jj
  %i.jl = fadd nnan x86_fp80 %i.hi, 1.400000e+01
  %i.jm = fadd x86_fp80 %i.bz, 1.400000e+01
  %i.jn = fdiv x86_fp80 %i.jl, %i.jm
  %i.jo = fmul x86_fp80 %i.jk, %i.jn
  %i.jp = fadd nnan x86_fp80 %i.hi, 1.500000e+01
  %i.jq = fadd x86_fp80 %i.bz, 1.500000e+01
  %i.jr = fdiv x86_fp80 %i.jp, %i.jq
  %i.js = fmul x86_fp80 %i.jo, %i.jr
  %i.jt = fadd nnan x86_fp80 %i.hi, 1.600000e+01
  %i.ju = fadd x86_fp80 %i.bz, 1.600000e+01
  %i.jv = fdiv x86_fp80 %i.jt, %i.ju
  %i.jw = fmul x86_fp80 %i.js, %i.jv
  %i.jx = fadd nnan x86_fp80 %i.hi, 1.700000e+01
  %i.jy = fadd x86_fp80 %i.bz, 1.700000e+01
  %i.jz = fdiv x86_fp80 %i.jx, %i.jy
  %i.ka = fmul x86_fp80 %i.jw, %i.jz
  %i.kb = fadd nnan x86_fp80 %i.hi, 1.800000e+01
  %i.kc = fadd x86_fp80 %i.bz, 1.800000e+01
  %i.kd = fdiv x86_fp80 %i.kb, %i.kc
  %i.ke = fmul x86_fp80 %i.ka, %i.kd
  %i.kf = fadd nnan x86_fp80 %i.hi, 1.900000e+01
  %i.kg = fadd x86_fp80 %i.bz, 1.900000e+01
  %i.kh = fdiv x86_fp80 %i.kf, %i.kg
  %i.ki = fmul x86_fp80 %i.ke, %i.kh              ; 2 uses
  %i.kj = tail call noundef x86_fp80 @_ZN5boost4math6detail12ibeta_a_stepIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_S7_S7_S7_S7_iRKT0_bPS7_(x86_fp80 noundef %i.bz, x86_fp80 noundef %i.by, x86_fp80 noundef %i.ca, x86_fp80 noundef %i.bx, i32 noundef 20, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext false, ptr noundef %6) ; 2 uses
  br i1 %.1, label %bb.co, label %.thread325

_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit267: ; preds = %bb.cn
  %i.kk = tail call noundef x86_fp80 @_ZN5boost4math6detail12ibeta_a_stepIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_S7_S7_S7_S7_iRKT0_bPS7_(x86_fp80 noundef %i.bz, x86_fp80 noundef %i.by, x86_fp80 noundef %i.ca, x86_fp80 noundef %i.bx, i32 noundef 20, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext true, ptr noundef %6) ; 2 uses
  br i1 %.1, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %.lr.ph.i263, %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit267
  %i.kl = phi x86_fp80 [ %i.kj, %.lr.ph.i263 ], [ %i.kk, %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit267 ]
  %.0226324 = phi x86_fp80 [ %i.ki, %.lr.ph.i263 ], [ 1.000000e+00, %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit267 ]
  %i.km = fadd x86_fp80 %i.bz, 2.000000e+01
  %i.kn = tail call noundef x86_fp80 @_ZN5boost4math6detail27beta_small_b_large_a_seriesIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_S7_S7_S7_S7_S7_S7_RKT0_b(x86_fp80 noundef %i.km, x86_fp80 noundef %i.by, x86_fp80 noundef %i.ca, x86_fp80 noundef %i.bx, x86_fp80 noundef %i.kl, x86_fp80 noundef %.0226324, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext %5)
  br label %bb.dj

.thread325:                                       ; preds = %.lr.ph.i263
  %i.ko = tail call noundef x86_fp80 @_ZN5boost4math4betaIeeNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_T1_fffE4typeES8_S9_SA_(x86_fp80 noundef %i.bz, x86_fp80 noundef %i.by)
  br label %bb.cp

bb.cp:                                            ; preds = %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit267, %.thread325
  %.0226323328 = phi x86_fp80 [ %i.ki, %.thread325 ], [ 1.000000e+00, %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit267 ]
  %i.kp = phi x86_fp80 [ %i.kj, %.thread325 ], [ %i.kk, %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit267 ]
  %i.kq = phi x86_fp80 [ %i.ko, %.thread325 ], [ 1.000000e+00, %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit267 ]
  %i.kr = fsub x86_fp80 %i.kp, %i.kq
  %i.ks = fadd x86_fp80 %i.bz, 2.000000e+01
  %i.kt = tail call noundef x86_fp80 @_ZN5boost4math6detail27beta_small_b_large_a_seriesIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_S7_S7_S7_S7_S7_S7_RKT0_b(x86_fp80 noundef %i.ks, x86_fp80 noundef %i.by, x86_fp80 noundef %i.ca, x86_fp80 noundef %i.bx, x86_fp80 noundef %i.kr, x86_fp80 noundef %.0226323328, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext %5)
  %i.ku = fneg x86_fp80 %i.kt
  br label %bb.dj

bb.cq:                                            ; preds = %bb.bb
  %i.kv = fcmp olt x86_fp80 %0, %1
  %i.kw = fadd nnan x86_fp80 %1, %0               ; 2 uses
  %i.kx = fmul nnan x86_fp80 %i.kw, %2
  %i.ky = fsub x86_fp80 %0, %i.kx
  %i.kz = fmul x86_fp80 %i.f, %i.kw
  %i.la = fsub x86_fp80 %i.kz, %1
  %.0224 = select i1 %i.kv, x86_fp80 %i.ky, x86_fp80 %i.la
  %i.lb = fcmp olt x86_fp80 %.0224, 0.000000e+00
  br i1 %i.lb, label %bb.cr, label %thread-pre-split329

bb.cr:                                            ; preds = %bb.cq
  store x86_fp80 %1, ptr %i.a, align 16, !tbaa !1244
  store x86_fp80 %0, ptr %i.b, align 16, !tbaa !1244
  store x86_fp80 %i.f, ptr %i.c, align 16, !tbaa !1244
  %i.lc = xor i1 %4, true
  br label %thread-pre-split329

thread-pre-split329:                              ; preds = %bb.cq, %bb.cr
  %i.ld = phi x86_fp80 [ %i.f, %bb.cr ], [ %2, %bb.cq ] ; 6 uses
  %i.le = phi x86_fp80 [ %1, %bb.cr ], [ %0, %bb.cq ] ; 11 uses
  %i.lf = phi x86_fp80 [ %0, %bb.cr ], [ %1, %bb.cq ] ; 13 uses
  %.2 = phi x86_fp80 [ %2, %bb.cr ], [ %i.f, %bb.cq ] ; 19 uses
  %.4.in = phi i1 [ %i.lc, %bb.cr ], [ %4, %bb.cq ] ; 8 uses
  %i.lg = fcmp olt x86_fp80 %i.lf, 4.000000e+01
  br i1 %i.lg, label %bb.cs, label %bb.di

bb.cs:                                            ; preds = %thread-pre-split329
  %i.lh = tail call x86_fp80 @llvm.trunc.f80(x86_fp80 %i.le)
  %i.li = fcmp oeq x86_fp80 %i.lh, %i.le
  %i.lj = tail call x86_fp80 @llvm.trunc.f80(x86_fp80 %i.lf)
  %i.lk = fcmp oeq x86_fp80 %i.lj, %i.lf
  %or.cond333 = and i1 %i.lk, %i.li
  br i1 %or.cond333, label %bb.ct, label %bb.cw

bb.ct:                                            ; preds = %bb.cs
  %i.ll = fcmp olt x86_fp80 %i.le, f0x401DFFFFFF3600000000
  %i.lm = fcmp une x86_fp80 %.2, 1.000000e+00
  %or.cond5 = and i1 %i.ll, %i.lm
  br i1 %or.cond5, label %bb.cu, label %bb.cw

bb.cu:                                            ; preds = %bb.ct
  %i.ln = fadd x86_fp80 %i.le, -1.000000e+00      ; 2 uses
  %i.lo = fadd x86_fp80 %i.lf, %i.ln
  %i.lp = tail call noundef x86_fp80 @_ZN5boost4math6detail13binomial_ccdfIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_S7_S7_S7_S7_RKT0_(x86_fp80 noundef %i.lo, x86_fp80 noundef %i.ln, x86_fp80 noundef %i.ld, x86_fp80 noundef %.2, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 2 uses
  br i1 %5, label %bb.dj, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.lq = tail call noundef x86_fp80 @_ZN5boost4math4betaIeeNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_T1_fffE4typeES8_S9_SA_(x86_fp80 noundef %i.le, x86_fp80 noundef %i.lf)
  %i.lr = fmul x86_fp80 %i.lp, %i.lq
  br label %bb.dj

bb.cw:                                            ; preds = %bb.ct, %bb.cs
  %i.ls = fmul x86_fp80 %i.lf, %i.ld
  %i.lt = fcmp ugt x86_fp80 %i.ls, f0x3FFEB333333333333000
  br i1 %i.lt, label %bb.dc, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  br i1 %.4.in, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #41
  %i.lu = call noundef x86_fp80 @_ZN5boost4math6detail12ibeta_seriesIeNS0_7lanczos12lanczos17m64ENS0_8policies6policyINS5_14default_policyES7_S7_S7_S7_S7_S7_S7_S7_S7_S7_S7_S7_EEEET_S9_S9_S9_S9_RKT0_bPS9_S9_RKT1_(x86_fp80 noundef %i.le, x86_fp80 noundef %i.lf, x86_fp80 noundef %i.ld, x86_fp80 noundef 0.000000e+00, ptr noundef nonnull align 1 dereferenceable(1) %15, i1 noundef zeroext %5, ptr noundef %6, x86_fp80 noundef %.2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #41
  br label %bb.dj

bb.cz:                                            ; preds = %bb.cx
  br i1 %5, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.lv = tail call noundef x86_fp80 @_ZN5boost4math4betaIeeNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_T1_fffE4typeES8_S9_SA_(x86_fp80 noundef %i.le, x86_fp80 noundef %i.lf)
  br label %bb.db

bb.db:                                            ; preds = %bb.cz, %bb.da
  %i.lw = phi x86_fp80 [ %i.lv, %bb.da ], [ 1.000000e+00, %bb.cz ]
  %i.lx = fneg x86_fp80 %i.lw
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #41
  %i.ly = call noundef x86_fp80 @_ZN5boost4math6detail12ibeta_seriesIeNS0_7lanczos12lanczos17m64ENS0_8policies6policyINS5_14default_policyES7_S7_S7_S7_S7_S7_S7_S7_S7_S7_S7_S7_EEEET_S9_S9_S9_S9_RKT0_bPS9_S9_RKT1_(x86_fp80 noundef %i.le, x86_fp80 noundef %i.lf, x86_fp80 noundef %i.ld, x86_fp80 noundef %i.lx, ptr noundef nonnull align 1 dereferenceable(1) %16, i1 noundef zeroext %5, ptr noundef %6, x86_fp80 noundef %.2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.lz = fneg x86_fp80 %i.ly
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #41
  br label %bb.dj

bb.dc:                                            ; preds = %bb.cw
  %i.ma = fcmp ogt x86_fp80 %i.le, 1.500000e+01
  br i1 %i.ma, label %bb.dd, label %bb.df

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #41
  %i.mb = tail call noundef x86_fp80 @llvm.floor.f80(x86_fp80 %i.lf)
  store x86_fp80 %i.mb, ptr %i.d, align 16, !tbaa !1244
  %i.mc = call noundef i32 @_ZN5boost4math6itruncIeNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEiRKT_RKT0_(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  %i.md = sitofp i32 %i.mc to x86_fp80
  %i.me = load x86_fp80, ptr %i.b, align 16, !tbaa !1244 ; 2 uses
  %i.mf = fcmp oeq x86_fp80 %i.me, %i.md
  %i.mg = sext i1 %i.mf to i32                    ; 2 uses
  %spec.select = add i32 %i.mc, %i.mg             ; 5 uses
  %i.mh = sitofp i32 %spec.select to x86_fp80
  %i.mi = fsub x86_fp80 %i.me, %i.mh              ; 8 uses
  %.pre = load x86_fp80, ptr %i.a, align 16, !tbaa !1244 ; 2 uses
  br i1 %5, label %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit272, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.mj = fadd x86_fp80 %i.mi, %.pre              ; 5 uses
  %i.mk = icmp sgt i32 %spec.select, 0
  br i1 %i.mk, label %.lr.ph.i268.preheader, label %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit272

.lr.ph.i268.preheader:                            ; preds = %bb.de
  %i.ml = add i32 %i.mc, %i.mg
  %i.mm = add i32 %i.ml, -1
  %xtraiter = and i32 %spec.select, 3             ; 3 uses
  %i.mn = icmp ult i32 %i.mm, 3
  br i1 %i.mn, label %.lr.ph.i268.epil.preheader, label %.lr.ph.i268.preheader.new

.lr.ph.i268.preheader.new:                        ; preds = %.lr.ph.i268.preheader
  %unroll_iter = and i32 %spec.select, 2147483644
  br label %.lr.ph.i268

.lr.ph.i268:                                      ; preds = %.lr.ph.i268, %.lr.ph.i268.preheader.new
  %.014.i269 = phi i32 [ 0, %.lr.ph.i268.preheader.new ], [ %i.nl, %.lr.ph.i268 ] ; 5 uses
  %.01013.i270 = phi x86_fp80 [ 1.000000e+00, %.lr.ph.i268.preheader.new ], [ %i.nk, %.lr.ph.i268 ]
  %niter = phi i32 [ 0, %.lr.ph.i268.preheader.new ], [ %niter.next.3, %.lr.ph.i268 ]
  %i.mo = uitofp nneg i32 %.014.i269 to x86_fp80  ; 2 uses
  %i.mp = fadd x86_fp80 %i.mj, %i.mo
  %i.mq = fadd x86_fp80 %i.mi, %i.mo
  %i.mr = fdiv x86_fp80 %i.mp, %i.mq
  %i.ms = fmul x86_fp80 %.01013.i270, %i.mr
  %i.mt = or disjoint i32 %.014.i269, 1
  %i.mu = uitofp nneg i32 %i.mt to x86_fp80       ; 2 uses
  %i.mv = fadd x86_fp80 %i.mj, %i.mu
  %i.mw = fadd x86_fp80 %i.mi, %i.mu
  %i.mx = fdiv x86_fp80 %i.mv, %i.mw
  %i.my = fmul x86_fp80 %i.ms, %i.mx
  %i.mz = or disjoint i32 %.014.i269, 2
  %i.na = uitofp nneg i32 %i.mz to x86_fp80       ; 2 uses
  %i.nb = fadd x86_fp80 %i.mj, %i.na
  %i.nc = fadd x86_fp80 %i.mi, %i.na
  %i.nd = fdiv x86_fp80 %i.nb, %i.nc
  %i.ne = fmul x86_fp80 %i.my, %i.nd
  %i.nf = or disjoint i32 %.014.i269, 3
  %i.ng = uitofp nneg i32 %i.nf to x86_fp80       ; 2 uses
  %i.nh = fadd x86_fp80 %i.mj, %i.ng
  %i.ni = fadd x86_fp80 %i.mi, %i.ng
  %i.nj = fdiv x86_fp80 %i.nh, %i.ni
  %i.nk = fmul x86_fp80 %i.ne, %i.nj              ; 3 uses
  %i.nl = add nuw nsw i32 %.014.i269, 4           ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit272.loopexit.unr-lcssa, label %.lr.ph.i268, !llvm.loop !31

_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit272.loopexit.unr-lcssa: ; preds = %.lr.ph.i268
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit272, label %.lr.ph.i268.epil.preheader

.lr.ph.i268.epil.preheader:                       ; preds = %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit272.loopexit.unr-lcssa, %.lr.ph.i268.preheader
  %.014.i269.epil.init = phi i32 [ 0, %.lr.ph.i268.preheader ], [ %i.nl, %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit272.loopexit.unr-lcssa ]
  %.01013.i270.epil.init = phi x86_fp80 [ 1.000000e+00, %.lr.ph.i268.preheader ], [ %i.nk, %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit272.loopexit.unr-lcssa ]
  %lcmp.mod377 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod377)
  br label %.lr.ph.i268.epil

.lr.ph.i268.epil:                                 ; preds = %.lr.ph.i268.epil, %.lr.ph.i268.epil.preheader
  %.014.i269.epil = phi i32 [ %i.nr, %.lr.ph.i268.epil ], [ %.014.i269.epil.init, %.lr.ph.i268.epil.preheader ] ; 2 uses
  %.01013.i270.epil = phi x86_fp80 [ %i.nq, %.lr.ph.i268.epil ], [ %.01013.i270.epil.init, %.lr.ph.i268.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i268.epil ], [ 0, %.lr.ph.i268.epil.preheader ]
  %i.nm = uitofp nneg i32 %.014.i269.epil to x86_fp80 ; 2 uses
  %i.nn = fadd x86_fp80 %i.mj, %i.nm
  %i.no = fadd x86_fp80 %i.mi, %i.nm
  %i.np = fdiv x86_fp80 %i.nn, %i.no
  %i.nq = fmul x86_fp80 %.01013.i270.epil, %i.np  ; 2 uses
  %i.nr = add nuw nsw i32 %.014.i269.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit272, label %.lr.ph.i268.epil, !llvm.loop !27161

_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit272: ; preds = %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit272.loopexit.unr-lcssa, %.lr.ph.i268.epil, %bb.de, %bb.dd
  %.0212 = phi x86_fp80 [ 1.000000e+00, %bb.dd ], [ 1.000000e+00, %bb.de ], [ %i.nk, %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit272.loopexit.unr-lcssa ], [ %i.nq, %.lr.ph.i268.epil ]
  %i.ns = load x86_fp80, ptr %i.c, align 16, !tbaa !1244
  %i.nt = call noundef x86_fp80 @_ZN5boost4math6detail12ibeta_a_stepIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_S7_S7_S7_S7_iRKT0_bPS7_(x86_fp80 noundef %i.mi, x86_fp80 noundef %.pre, x86_fp80 noundef %.2, x86_fp80 noundef %i.ns, i32 noundef %spec.select, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext %5, ptr noundef null)
  %i.nu = load x86_fp80, ptr %i.a, align 16, !tbaa !1244
  %i.nv = load x86_fp80, ptr %i.c, align 16, !tbaa !1244
  %i.nw = call noundef x86_fp80 @_ZN5boost4math6detail27beta_small_b_large_a_seriesIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_S7_S7_S7_S7_S7_S7_RKT0_b(x86_fp80 noundef %i.nu, x86_fp80 noundef %i.mi, x86_fp80 noundef %i.nv, x86_fp80 noundef %.2, x86_fp80 noundef %i.nt, x86_fp80 noundef 1.000000e+00, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext %5)
  %i.nx = fdiv x86_fp80 %i.nw, %.0212
  br label %bb.dj

bb.df:                                            ; preds = %bb.dc
  br i1 %5, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41
  %i.ny = tail call noundef x86_fp80 @llvm.floor.f80(x86_fp80 %i.lf)
  store x86_fp80 %i.ny, ptr %i.e, align 16, !tbaa !1244
  %i.nz = call noundef i32 @_ZN5boost4math6itruncIeNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEiRKT_RKT0_(ptr noundef nonnull align 16 dereferenceable(16) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  %i.oa = load x86_fp80, ptr %i.b, align 16, !tbaa !1244
  %i.ob = sitofp i32 %i.nz to x86_fp80
  %i.oc = fsub x86_fp80 %i.oa, %i.ob              ; 3 uses
  %i.od = fcmp ole x86_fp80 %i.oc, 0.000000e+00   ; 2 uses
  %i.oe = fadd x86_fp80 %i.oc, 1.000000e+00
  %i.of = sext i1 %i.od to i32
  %.0211 = add nsw i32 %i.nz, %i.of
  %.0209 = select i1 %i.od, x86_fp80 %i.oe, x86_fp80 %i.oc ; 3 uses
  %i.og = load x86_fp80, ptr %i.a, align 16, !tbaa !1244
  %i.oh = load x86_fp80, ptr %i.c, align 16, !tbaa !1244
  %i.oi = call noundef x86_fp80 @_ZN5boost4math6detail12ibeta_a_stepIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_S7_S7_S7_S7_iRKT0_bPS7_(x86_fp80 noundef %.0209, x86_fp80 noundef %i.og, x86_fp80 noundef %.2, x86_fp80 noundef %i.oh, i32 noundef %.0211, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext true, ptr noundef null)
  %i.oj = load x86_fp80, ptr %i.a, align 16, !tbaa !1244
  %i.ok = load x86_fp80, ptr %i.c, align 16, !tbaa !1244
  %i.ol = call noundef x86_fp80 @_ZN5boost4math6detail12ibeta_a_stepIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_S7_S7_S7_S7_iRKT0_bPS7_(x86_fp80 noundef %i.oj, x86_fp80 noundef %.0209, x86_fp80 noundef %i.ok, x86_fp80 noundef %.2, i32 noundef 20, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext true, ptr noundef null)
  %i.om = fadd x86_fp80 %i.oi, %i.ol              ; 2 uses
  %i.on = fadd x86_fp80 %i.om, -1.000000e+00
  %.3216 = select i1 %.4.in, x86_fp80 %i.on, x86_fp80 %i.om
  %i.oo = load x86_fp80, ptr %i.a, align 16, !tbaa !1244
  %i.op = fadd x86_fp80 %i.oo, 2.000000e+01
  %i.oq = load x86_fp80, ptr %i.c, align 16, !tbaa !1244
  %i.or = call noundef x86_fp80 @_ZN5boost4math6detail27beta_small_b_large_a_seriesIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_S7_S7_S7_S7_S7_S7_RKT0_b(x86_fp80 noundef %i.op, x86_fp80 noundef %.0209, x86_fp80 noundef %i.oq, x86_fp80 noundef %.2, x86_fp80 noundef %.3216, x86_fp80 noundef 1.000000e+00, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext true) ; 2 uses
  %i.os = fneg x86_fp80 %i.or
  %.4217 = select i1 %.4.in, x86_fp80 %i.os, x86_fp80 %i.or
  br label %bb.dj

bb.dh:                                            ; preds = %bb.df
  %i.ot = tail call noundef x86_fp80 @_ZN5boost4math6detail15ibeta_fraction2IeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_S7_S7_S7_S7_RKT0_bPS7_(x86_fp80 noundef %i.le, x86_fp80 noundef %i.lf, x86_fp80 noundef %i.ld, x86_fp80 noundef %.2, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext false, ptr noundef %6)
  br label %bb.dj

bb.di:                                            ; preds = %thread-pre-split329
  %i.ou = tail call noundef x86_fp80 @_ZN5boost4math6detail15ibeta_fraction2IeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_S7_S7_S7_S7_RKT0_bPS7_(x86_fp80 noundef %i.le, x86_fp80 noundef %i.lf, x86_fp80 noundef %i.ld, x86_fp80 noundef %.2, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext %5, ptr noundef %6)
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.db, %bb.cy, %bb.dg, %bb.dh, %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit272, %bb.cv, %bb.cu, %bb.co, %bb.cp, %bb.br, %bb.bs, %bb.bp, %bb.bm, %bb.bg, %bb.bj, %bb.cg, %bb.cd, %bb.cj, %bb.cm, %bb.bx, %bb.ca
  %.3 = phi x86_fp80 [ %.2, %bb.cu ], [ %.2, %bb.cv ], [ %.2, %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit272 ], [ %.2, %bb.dg ], [ %.2, %bb.dh ], [ %.2, %bb.db ], [ %.2, %bb.cy ], [ %.2, %bb.di ], [ %i.bx, %bb.co ], [ %i.bx, %bb.cp ], [ %i.bx, %bb.cj ], [ %i.bx, %bb.cm ], [ %i.bx, %bb.cd ], [ %i.bx, %bb.cg ], [ %i.ca, %bb.ca ], [ %i.ca, %bb.bx ], [ %i.bx, %bb.br ], [ %i.bx, %bb.bs ], [ %i.bx, %bb.bm ], [ %i.bx, %bb.bp ], [ %i.ca, %bb.bj ], [ %i.ca, %bb.bg ] ; 2 uses
  %.6219 = phi x86_fp80 [ %i.lp, %bb.cu ], [ %i.lr, %bb.cv ], [ %i.nx, %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit272 ], [ %.4217, %bb.dg ], [ %i.ot, %bb.dh ], [ %i.lz, %bb.db ], [ %i.lu, %bb.cy ], [ %i.ou, %bb.di ], [ %i.kn, %bb.co ], [ %i.ku, %bb.cp ], [ %i.hc, %bb.cj ], [ %i.hh, %bb.cm ], [ %i.gv, %bb.cd ], [ %i.ha, %bb.cg ], [ %i.gt, %bb.ca ], [ %i.go, %bb.bx ], [ %i.gb, %bb.br ], [ %i.gi, %bb.bs ], [ %i.cp, %bb.bm ], [ %i.cu, %bb.bp ], [ %i.cn, %bb.bj ], [ %i.ci, %bb.bg ] ; 2 uses
  %.7.shrunk = phi i1 [ %.4.in, %bb.cu ], [ %.4.in, %bb.cv ], [ %.4.in, %_ZN5boost4math6detail22rising_factorial_ratioIeEET_S3_S3_i.exit272 ], [ false, %bb.dg ], [ %.4.in, %bb.dh ], [ false, %bb.db ], [ false, %bb.cy ], [ %.4.in, %bb.di ], [ false, %bb.co ], [ false, %bb.cp ], [ false, %bb.cj ], [ false, %bb.cm ], [ false, %bb.cd ], [ false, %bb.cg ], [ false, %bb.ca ], [ false, %bb.bx ], [ false, %bb.br ], [ false, %bb.bs ], [ false, %bb.bm ], [ false, %bb.bp ], [ false, %bb.bj ], [ false, %bb.bg ]
  br i1 %.not, label %bb.dn, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.ov = load x86_fp80, ptr %6, align 16, !tbaa !1244 ; 2 uses
  %i.ow = fcmp olt x86_fp80 %i.ov, 0.000000e+00
  %.pre343 = load x86_fp80, ptr %i.c, align 16, !tbaa !1244 ; 2 uses
  br i1 %i.ow, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.ox = load x86_fp80, ptr %i.a, align 16, !tbaa !1244
  %i.oy = load x86_fp80, ptr %i.b, align 16, !tbaa !1244
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #41
  %i.oz = call noundef x86_fp80 @_ZN5boost4math6detail17ibeta_power_termsIeNS0_7lanczos12lanczos17m64ENS0_8policies6policyINS5_14default_policyES7_S7_S7_S7_S7_S7_S7_S7_S7_S7_S7_S7_EEEET_S9_S9_S9_S9_RKT0_bRKT1_S9_PKc(x86_fp80 noundef %i.ox, x86_fp80 noundef %i.oy, x86_fp80 noundef %.pre343, x86_fp80 noundef %.3, ptr noundef nonnull align 1 dereferenceable(1) %17, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %3, x86_fp80 noundef 1.000000e+00, ptr noundef nonnull @.str.237) ; 2 uses
  store x86_fp80 %i.oz, ptr %6, align 16, !tbaa !1244
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #41
  %.pre342 = load x86_fp80, ptr %i.c, align 16, !tbaa !1244
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.pa = phi x86_fp80 [ %.pre342, %bb.dl ], [ %.pre343, %bb.dk ]
  %i.pb = phi x86_fp80 [ %i.oz, %bb.dl ], [ %i.ov, %bb.dk ] ; 3 uses
  %i.pc = fcmp une x86_fp80 %i.pb, 0.000000e+00
  br i1 %i.pc, label %.sink.split, label %bb.dn
end_hunk_2
