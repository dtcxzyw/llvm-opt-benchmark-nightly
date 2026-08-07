inline.NumInlined: 47
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 93
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 103
begin_hunk_0_@find_sad_16x16:bb.a

bb.an:                                            ; preds = %bb.am, %bb.ay
  %indvars.iv350 = phi i64 [ 0, %bb.am ], [ %indvars.iv.next351, %bb.ay ] ; 9 uses
  %.0236295 = phi i32 [ 999999, %bb.am ], [ %.1237, %bb.ay ] ; 7 uses
  %i.hx = load i32, ptr %i.gw, align 8, !tbaa !250
  %i.hy = icmp eq i32 %i.hx, 0
  br i1 %i.hy, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hz = load i32, ptr %i.gy, align 4, !tbaa !55
  %.not240 = icmp eq i32 %i.hz, 2
  br i1 %.not240, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ia = load i32, ptr %i.gz, align 8, !tbaa !340
  %.not241 = icmp ne i32 %i.ia, 0
  %or.cond = icmp samesign ult i64 %indvars.iv350, 2
  %or.cond244 = select i1 %.not241, i1 %or.cond, i1 false
  br i1 %or.cond244, label %bb.ay, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ib = load i32, ptr %i.ha, align 4, !tbaa !341
  %i.ic = icmp eq i32 %i.ib, 0
  %i.id = icmp ne i64 %indvars.iv350, 3
  %or.cond3.not301 = or i1 %i.id, %i.ic
  %i.ie = icmp ne i64 %indvars.iv350, 0
  %or.cond5 = select i1 %i.ie, i1 true, i1 %i.hb
  %or.cond297 = select i1 %or.cond3.not301, i1 %or.cond5, i1 false
  br i1 %or.cond297, label %bb.as, label %bb.ay

bb.ar:                                            ; preds = %bb.ao
  %.old = icmp ne i64 %indvars.iv350, 0
  %or.cond5.old = select i1 %.old, i1 true, i1 %i.hb
  br i1 %or.cond5.old, label %bb.as, label %bb.ay

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %i.if = icmp ne i64 %indvars.iv350, 1
  %or.cond7 = select i1 %i.if, i1 true, i1 %i.hc
  br i1 %or.cond7, label %bb.at, label %bb.ay

bb.at:                                            ; preds = %bb.as
  %i.ig = icmp ne i64 %indvars.iv350, 3
  %brmerge = select i1 %i.ig, i1 true, i1 %or.cond11
  br i1 %brmerge, label %bb.au, label %.thread

bb.au:                                            ; preds = %bb.at
  %i.ih = load i32, ptr %i.hf, align 4, !tbaa !45
  %i.ii = load i32, ptr %i.hg, align 8, !tbaa !35
  %i.ij = getelementptr inbounds nuw [512 x i8], ptr %i.hh, i64 %indvars.iv350
  %i.ik = sext i32 %i.ii to i64                   ; 2 uses
  %i.il = sext i32 %i.ih to i64
  %invariant.gep408 = getelementptr [8 x i8], ptr %i.he, i64 %i.il
  br label %.preheader248

.preheader248:                                    ; preds = %bb.au, %.preheader248
  %indvars.iv = phi i64 [ 0, %bb.au ], [ %indvars.iv.next, %.preheader248 ] ; 5 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep408, i64 %indvars.iv
  %i.im = load ptr, ptr %gep, align 8, !tbaa !146 ; 2 uses
  %i.in = getelementptr inbounds nuw [32 x i8], ptr %i.ij, i64 %indvars.iv ; 2 uses
  %i.io = and i64 %indvars.iv, 3                  ; 16 uses
  %i.ip = lshr i64 %indvars.iv, 2
  %i.iq = and i64 %i.ip, 1073741823               ; 16 uses
  %i.ir = getelementptr inbounds [2 x i8], ptr %i.im, i64 %i.ik
  %i.is = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.io
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.iq
  %i.iu = getelementptr inbounds nuw [16 x i8], ptr %i.hj, i64 %i.io
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.iq
  %i.iw = getelementptr inbounds nuw [16 x i8], ptr %i.hk, i64 %i.io
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %i.iq
  %i.iy = getelementptr inbounds nuw [16 x i8], ptr %i.hi, i64 %i.io
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %i.iq
  %i.ja = getelementptr inbounds nuw [16 x i8], ptr %i.hl, i64 %i.io
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.iq
  %i.jc = getelementptr inbounds nuw [16 x i8], ptr %i.hm, i64 %i.io
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %i.iq
  %i.je = getelementptr inbounds nuw [16 x i8], ptr %i.hn, i64 %i.io
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %i.iq
  %i.jg = load <8 x i16>, ptr %i.ir, align 2, !tbaa !179
  %i.jh = zext <8 x i16> %i.jg to <8 x i32>
  %i.ji = load <8 x i16>, ptr %i.in, align 2, !tbaa !179
  %i.jj = zext <8 x i16> %i.ji to <8 x i32>
  %i.jk = sub nsw <8 x i32> %i.jh, %i.jj          ; 8 uses
  %i.jl = extractelement <8 x i32> %i.jk, i64 0
  store i32 %i.jl, ptr %i.it, align 4, !tbaa !4
  %i.jm = extractelement <8 x i32> %i.jk, i64 1
  store i32 %i.jm, ptr %i.iv, align 4, !tbaa !4
  %i.jn = extractelement <8 x i32> %i.jk, i64 2
  store i32 %i.jn, ptr %i.ix, align 4, !tbaa !4
  %i.jo = extractelement <8 x i32> %i.jk, i64 3
  store i32 %i.jo, ptr %i.iz, align 4, !tbaa !4
  %i.jp = extractelement <8 x i32> %i.jk, i64 4
  store i32 %i.jp, ptr %i.jb, align 4, !tbaa !4
  %i.jq = extractelement <8 x i32> %i.jk, i64 5
  store i32 %i.jq, ptr %i.jd, align 4, !tbaa !4
  %i.jr = extractelement <8 x i32> %i.jk, i64 6
  store i32 %i.jr, ptr %i.jf, align 4, !tbaa !4
  %i.js = getelementptr inbounds nuw [16 x i8], ptr %i.ho, i64 %i.io
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.iq
  %i.ju = extractelement <8 x i32> %i.jk, i64 7
  store i32 %i.ju, ptr %i.jt, align 4, !tbaa !4
  %i.jv = getelementptr [2 x i8], ptr %i.im, i64 %i.ik
  %i.jw = getelementptr i8, ptr %i.jv, i64 16
  %i.jx = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %i.jy = getelementptr inbounds nuw [16 x i8], ptr %i.hp, i64 %i.io
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %i.iq
  %i.ka = getelementptr inbounds nuw [16 x i8], ptr %i.hq, i64 %i.io
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %i.iq
  %i.kc = getelementptr inbounds nuw [16 x i8], ptr %i.hr, i64 %i.io
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %i.iq
  %i.ke = getelementptr inbounds nuw [16 x i8], ptr %i.hs, i64 %i.io
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %i.iq
  %i.kg = getelementptr inbounds nuw [16 x i8], ptr %i.ht, i64 %i.io
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %i.iq
  %i.ki = getelementptr inbounds nuw [16 x i8], ptr %i.hu, i64 %i.io
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %i.iq
  %i.kk = getelementptr inbounds nuw [16 x i8], ptr %i.hv, i64 %i.io
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %i.iq
  %i.km = load <8 x i16>, ptr %i.jw, align 2, !tbaa !179
  %i.kn = zext <8 x i16> %i.km to <8 x i32>
  %i.ko = load <8 x i16>, ptr %i.jx, align 2, !tbaa !179
  %i.kp = zext <8 x i16> %i.ko to <8 x i32>
  %i.kq = sub nsw <8 x i32> %i.kn, %i.kp          ; 8 uses
  %i.kr = extractelement <8 x i32> %i.kq, i64 0
  store i32 %i.kr, ptr %i.jz, align 4, !tbaa !4
  %i.ks = extractelement <8 x i32> %i.kq, i64 1
  store i32 %i.ks, ptr %i.kb, align 4, !tbaa !4
  %i.kt = extractelement <8 x i32> %i.kq, i64 2
  store i32 %i.kt, ptr %i.kd, align 4, !tbaa !4
  %i.ku = extractelement <8 x i32> %i.kq, i64 3
  store i32 %i.ku, ptr %i.kf, align 4, !tbaa !4
  %i.kv = extractelement <8 x i32> %i.kq, i64 4
  store i32 %i.kv, ptr %i.kh, align 4, !tbaa !4
  %i.kw = extractelement <8 x i32> %i.kq, i64 5
  store i32 %i.kw, ptr %i.kj, align 4, !tbaa !4
  %i.kx = extractelement <8 x i32> %i.kq, i64 6
  store i32 %i.kx, ptr %i.kl, align 4, !tbaa !4
  %i.ky = getelementptr inbounds nuw [16 x i8], ptr %i.hw, i64 %i.io
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.iq
  %i.la = extractelement <8 x i32> %i.kq, i64 7
  store i32 %i.la, ptr %i.kz, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %.preheader247, label %.preheader248, !llvm.loop !342

.preheader251:                                    ; preds = %bb.aw
  %i.lb = load <4 x i32>, ptr %i.a, align 16, !tbaa !4 ; 4 uses
  %i.lc = load <4 x i32>, ptr %i.hl, align 16, !tbaa !4 ; 4 uses
  %i.ld = load <4 x i32>, ptr %i.hp, align 16, !tbaa !4 ; 4 uses
  %i.le = load <4 x i32>, ptr %i.ht, align 16, !tbaa !4 ; 4 uses
  %i.lf = shufflevector <4 x i32> %i.ld, <4 x i32> %i.lc, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.lg = shufflevector <4 x i32> %i.lf, <4 x i32> %i.le, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.lh = shufflevector <4 x i32> %i.lg, <4 x i32> %i.lb, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.li = sdiv <4 x i32> %i.lh, splat (i32 4)     ; 3 uses
  %i.lj = shufflevector <4 x i32> %i.ld, <4 x i32> %i.lc, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.lk = shufflevector <4 x i32> %i.lj, <4 x i32> %i.le, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.ll = shufflevector <4 x i32> %i.lk, <4 x i32> %i.lb, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.lm = sdiv <4 x i32> %i.ll, splat (i32 4)     ; 3 uses
  %i.ln = shufflevector <4 x i32> %i.ld, <4 x i32> %i.lc, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.lo = shufflevector <4 x i32> %i.ln, <4 x i32> %i.le, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.lp = shufflevector <4 x i32> %i.lo, <4 x i32> %i.lb, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.lq = sdiv <4 x i32> %i.lp, splat (i32 4)     ; 3 uses
  %i.lr = shufflevector <4 x i32> %i.ld, <4 x i32> %i.lc, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.ls = shufflevector <4 x i32> %i.lr, <4 x i32> %i.le, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.lt = shufflevector <4 x i32> %i.ls, <4 x i32> %i.lb, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.lu = sdiv <4 x i32> %i.lt, splat (i32 4)     ; 3 uses
  %i.lv = shufflevector <4 x i32> %i.li, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.lw = add nsw <4 x i32> %i.li, %i.lv
  %i.lx = sub nsw <4 x i32> %i.li, %i.lv
  %i.ly = shufflevector <4 x i32> %i.lw, <4 x i32> %i.lx, <4 x i32> <i32 0, i32 5, i32 2, i32 7> ; 3 uses
  %i.lz = shufflevector <4 x i32> %i.ly, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.ma = add nsw <4 x i32> %i.ly, %i.lz
  %i.mb = sub nsw <4 x i32> %i.ly, %i.lz
  %i.mc = shufflevector <4 x i32> %i.ma, <4 x i32> %i.mb, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.md = shufflevector <4 x i32> %i.lm, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.me = add nsw <4 x i32> %i.lm, %i.md
  %i.mf = sub nsw <4 x i32> %i.lm, %i.md
  %i.mg = shufflevector <4 x i32> %i.me, <4 x i32> %i.mf, <4 x i32> <i32 0, i32 5, i32 2, i32 7> ; 3 uses
  %i.mh = shufflevector <4 x i32> %i.mg, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.mi = add nsw <4 x i32> %i.mg, %i.mh
  %i.mj = sub nsw <4 x i32> %i.mg, %i.mh
  %i.mk = shufflevector <4 x i32> %i.mi, <4 x i32> %i.mj, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.ml = shufflevector <4 x i32> %i.lq, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.mm = add nsw <4 x i32> %i.lq, %i.ml
  %i.mn = sub nsw <4 x i32> %i.lq, %i.ml
  %i.mo = shufflevector <4 x i32> %i.mm, <4 x i32> %i.mn, <4 x i32> <i32 0, i32 5, i32 2, i32 7> ; 3 uses
  %i.mp = shufflevector <4 x i32> %i.mo, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.mq = add nsw <4 x i32> %i.mo, %i.mp
  %i.mr = sub nsw <4 x i32> %i.mo, %i.mp
  %i.ms = shufflevector <4 x i32> %i.mq, <4 x i32> %i.mr, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.mt = shufflevector <4 x i32> %i.lu, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.mu = add nsw <4 x i32> %i.lu, %i.mt
  %i.mv = sub nsw <4 x i32> %i.lu, %i.mt
  %i.mw = shufflevector <4 x i32> %i.mu, <4 x i32> %i.mv, <4 x i32> <i32 0, i32 5, i32 2, i32 7> ; 3 uses
  %i.mx = shufflevector <4 x i32> %i.mw, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.my = add nsw <4 x i32> %i.mw, %i.mx
  %i.mz = sub nsw <4 x i32> %i.mw, %i.mx
  %i.na = shufflevector <4 x i32> %i.my, <4 x i32> %i.mz, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.nb = add nsw <4 x i32> %i.na, %i.mc          ; 2 uses
  %i.nc = add nsw <4 x i32> %i.ms, %i.mk          ; 2 uses
  %i.nd = sub nsw <4 x i32> %i.mk, %i.ms          ; 2 uses
  %3 = sub nsw <4 x i32> %i.mc, %i.na             ; 2 uses
  %4 = add nsw <4 x i32> %i.nc, %i.nb
  %5 = add nsw <4 x i32> %i.nd, %3
  %6 = shufflevector <4 x i32> %4, <4 x i32> %5, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %7 = sub nsw <4 x i32> %i.nb, %i.nc
  %8 = sub nsw <4 x i32> %3, %i.nd
  %9 = shufflevector <4 x i32> %7, <4 x i32> %8, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ne = shufflevector <8 x i32> %6, <8 x i32> %9, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.nf = call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.ne, i1 true)
  %i.ng = call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.nf)
  %op.rdx = add i32 %i.ng, %i.sp                  ; 2 uses
  %i.nh = icmp slt i32 %op.rdx, %.0236295
  br i1 %i.nh, label %bb.ax, label %bb.ay

.preheader247:                                    ; preds = %.preheader248, %bb.aw
  %indvars.iv326 = phi i64 [ %indvars.iv.next327, %bb.aw ], [ 0, %.preheader248 ] ; 21 uses
  %.0219283 = phi i32 [ %i.sp, %bb.aw ], [ 0, %.preheader248 ]
  %invariant.gep273 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv326
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv326
  %invariant.gep276 = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv326
  %invariant.gep278 = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %indvars.iv326
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %.preheader247
  %indvars.iv322 = phi i64 [ 0, %.preheader247 ], [ %indvars.iv.next323, %bb.av ] ; 6 uses
  %.1220281 = phi i32 [ %.0219283, %.preheader247 ], [ %i.sp, %bb.av ]
  %gep274 = getelementptr inbounds nuw [64 x i8], ptr %invariant.gep273, i64 %indvars.iv322 ; 4 uses
  %gep275 = getelementptr inbounds nuw [64 x i8], ptr %invariant.gep, i64 %indvars.iv322 ; 4 uses
  %gep277 = getelementptr inbounds nuw [64 x i8], ptr %invariant.gep276, i64 %indvars.iv322 ; 4 uses
  %gep279 = getelementptr inbounds nuw [64 x i8], ptr %invariant.gep278, i64 %indvars.iv322 ; 4 uses
  %i.ni = load i32, ptr %gep274, align 4, !tbaa !4 ; 2 uses
  %i.nj = load i32, ptr %gep275, align 4, !tbaa !4 ; 2 uses
  %i.nk = add nsw i32 %i.nj, %i.ni                ; 2 uses
  %i.nl = load i32, ptr %gep277, align 4, !tbaa !4 ; 2 uses
  %i.nm = load i32, ptr %gep279, align 4, !tbaa !4 ; 2 uses
  %i.nn = add nsw i32 %i.nm, %i.nl                ; 2 uses
  %i.no = sub nsw i32 %i.nl, %i.nm                ; 2 uses
  %i.np = sub nsw i32 %i.ni, %i.nj                ; 2 uses
  %i.nq = add nsw i32 %i.nn, %i.nk                ; 2 uses
  %i.nr = sub nsw i32 %i.nk, %i.nn                ; 2 uses
  %i.ns = add nsw i32 %i.no, %i.np                ; 2 uses
  %i.nt = sub nsw i32 %i.np, %i.no                ; 2 uses
  %gep.1 = getelementptr inbounds nuw i8, ptr %gep274, i64 16
  %i.nu = load i32, ptr %gep.1, align 4, !tbaa !4 ; 2 uses
  %gep259.1 = getelementptr inbounds nuw i8, ptr %gep275, i64 16
  %i.nv = load i32, ptr %gep259.1, align 4, !tbaa !4 ; 2 uses
  %i.nw = add nsw i32 %i.nv, %i.nu                ; 2 uses
  %gep261.1 = getelementptr inbounds nuw i8, ptr %gep277, i64 16
  %i.nx = load i32, ptr %gep261.1, align 4, !tbaa !4 ; 2 uses
  %gep263.1 = getelementptr inbounds nuw i8, ptr %gep279, i64 16
  %i.ny = load i32, ptr %gep263.1, align 4, !tbaa !4 ; 2 uses
  %i.nz = add nsw i32 %i.ny, %i.nx                ; 2 uses
  %i.oa = sub nsw i32 %i.nx, %i.ny                ; 2 uses
  %i.ob = sub nsw i32 %i.nu, %i.nv                ; 2 uses
  %i.oc = add nsw i32 %i.nz, %i.nw                ; 2 uses
  %i.od = sub nsw i32 %i.nw, %i.nz                ; 2 uses
  %i.oe = add nsw i32 %i.oa, %i.ob                ; 2 uses
  %i.of = sub nsw i32 %i.ob, %i.oa                ; 2 uses
  %gep.2 = getelementptr inbounds nuw i8, ptr %gep274, i64 32
  %i.og = load i32, ptr %gep.2, align 4, !tbaa !4 ; 2 uses
  %gep259.2 = getelementptr inbounds nuw i8, ptr %gep275, i64 32
  %i.oh = load i32, ptr %gep259.2, align 4, !tbaa !4 ; 2 uses
  %i.oi = add nsw i32 %i.oh, %i.og                ; 2 uses
  %gep261.2 = getelementptr inbounds nuw i8, ptr %gep277, i64 32
  %i.oj = load i32, ptr %gep261.2, align 4, !tbaa !4 ; 2 uses
  %gep263.2 = getelementptr inbounds nuw i8, ptr %gep279, i64 32
  %i.ok = load i32, ptr %gep263.2, align 4, !tbaa !4 ; 2 uses
  %i.ol = add nsw i32 %i.ok, %i.oj                ; 2 uses
  %i.om = sub nsw i32 %i.oj, %i.ok                ; 2 uses
  %i.on = sub nsw i32 %i.og, %i.oh                ; 2 uses
  %i.oo = add nsw i32 %i.ol, %i.oi                ; 2 uses
  %i.op = sub nsw i32 %i.oi, %i.ol                ; 2 uses
  %i.oq = add nsw i32 %i.om, %i.on                ; 2 uses
  %i.or = sub nsw i32 %i.on, %i.om                ; 2 uses
  %gep.3 = getelementptr inbounds nuw i8, ptr %gep274, i64 48
  %i.os = load i32, ptr %gep.3, align 4, !tbaa !4 ; 2 uses
  %gep259.3 = getelementptr inbounds nuw i8, ptr %gep275, i64 48
  %i.ot = load i32, ptr %gep259.3, align 4, !tbaa !4 ; 2 uses
  %i.ou = add nsw i32 %i.ot, %i.os                ; 2 uses
  %gep261.3 = getelementptr inbounds nuw i8, ptr %gep277, i64 48
  %i.ov = load i32, ptr %gep261.3, align 4, !tbaa !4 ; 2 uses
  %gep263.3 = getelementptr inbounds nuw i8, ptr %gep279, i64 48
  %i.ow = load i32, ptr %gep263.3, align 4, !tbaa !4 ; 2 uses
  %i.ox = add nsw i32 %i.ow, %i.ov                ; 2 uses
  %i.oy = sub nsw i32 %i.ov, %i.ow                ; 2 uses
  %i.oz = sub nsw i32 %i.os, %i.ot                ; 2 uses
  %i.pa = add nsw i32 %i.ox, %i.ou                ; 2 uses
  %i.pb = sub nsw i32 %i.ou, %i.ox                ; 2 uses
  %i.pc = add nsw i32 %i.oy, %i.oz                ; 2 uses
  %i.pd = sub nsw i32 %i.oz, %i.oy                ; 2 uses
  %invariant.gep269 = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %indvars.iv322 ; 16 uses
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep269, i64 %indvars.iv326
  %i.pf = getelementptr inbounds nuw i8, ptr %invariant.gep269, i64 48
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %indvars.iv326
  %i.ph = add nsw i32 %i.pa, %i.nq                ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %invariant.gep269, i64 16
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.pi, i64 %indvars.iv326
  %i.pk = getelementptr inbounds nuw i8, ptr %invariant.gep269, i64 32
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %indvars.iv326
  %i.pm = add nsw i32 %i.oo, %i.oc                ; 2 uses
  %i.pn = sub nsw i32 %i.oc, %i.oo                ; 2 uses
  %i.po = sub nsw i32 %i.nq, %i.pa                ; 2 uses
  %i.pp = add nsw i32 %i.pm, %i.ph
  store i32 %i.pp, ptr %i.pe, align 4, !tbaa !4
  %i.pq = sub nsw i32 %i.ph, %i.pm                ; 2 uses
  store i32 %i.pq, ptr %i.pl, align 4, !tbaa !4
  %i.pr = add nsw i32 %i.pn, %i.po                ; 2 uses
  store i32 %i.pr, ptr %i.pj, align 4, !tbaa !4
  %i.ps = sub nsw i32 %i.po, %i.pn                ; 2 uses
  store i32 %i.ps, ptr %i.pg, align 4, !tbaa !4
  %i.pt = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.pr, i1 true)
  %i.pu = add nuw nsw i32 %i.pt, %.1220281
  %i.pv = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.pq, i1 true)
  %i.pw = add nuw nsw i32 %i.pv, %i.pu
  %i.px = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.ps, i1 true)
  %i.py = add nuw nsw i32 %i.px, %i.pw
  %gep270.1 = getelementptr inbounds nuw i8, ptr %invariant.gep269, i64 256
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %gep270.1, i64 %indvars.iv326
  %i.qa = getelementptr inbounds nuw i8, ptr %invariant.gep269, i64 304
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.qa, i64 %indvars.iv326
  %i.qc = add nsw i32 %i.pc, %i.ns                ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %invariant.gep269, i64 272
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.qd, i64 %indvars.iv326
  %i.qf = getelementptr inbounds nuw i8, ptr %invariant.gep269, i64 288
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.qf, i64 %indvars.iv326
  %i.qh = add nsw i32 %i.oq, %i.oe                ; 2 uses
  %i.qi = sub nsw i32 %i.oe, %i.oq                ; 2 uses
  %i.qj = sub nsw i32 %i.ns, %i.pc                ; 2 uses
  %i.qk = add nsw i32 %i.qh, %i.qc                ; 2 uses
  store i32 %i.qk, ptr %i.pz, align 4, !tbaa !4
  %i.ql = sub nsw i32 %i.qc, %i.qh                ; 2 uses
  store i32 %i.ql, ptr %i.qg, align 4, !tbaa !4
  %i.qm = add nsw i32 %i.qi, %i.qj                ; 2 uses
  store i32 %i.qm, ptr %i.qe, align 4, !tbaa !4
  %i.qn = sub nsw i32 %i.qj, %i.qi                ; 2 uses
  store i32 %i.qn, ptr %i.qb, align 4, !tbaa !4
  %i.qo = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.qk, i1 true)
  %i.qp = add nuw nsw i32 %i.qo, %i.py
  %i.qq = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.qm, i1 true)
  %i.qr = add nuw nsw i32 %i.qq, %i.qp
  %i.qs = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.ql, i1 true)
  %i.qt = add nuw nsw i32 %i.qs, %i.qr
  %i.qu = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.qn, i1 true)
  %i.qv = add nuw nsw i32 %i.qu, %i.qt
  %gep270.2 = getelementptr inbounds nuw i8, ptr %invariant.gep269, i64 512
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %gep270.2, i64 %indvars.iv326
  %i.qx = getelementptr inbounds nuw i8, ptr %invariant.gep269, i64 560
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv326
  %i.qz = add nsw i32 %i.pb, %i.nr                ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %invariant.gep269, i64 528
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.ra, i64 %indvars.iv326
  %i.rc = getelementptr inbounds nuw i8, ptr %invariant.gep269, i64 544
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %indvars.iv326
  %i.re = add nsw i32 %i.op, %i.od                ; 2 uses
  %i.rf = sub nsw i32 %i.od, %i.op                ; 2 uses
  %i.rg = sub nsw i32 %i.nr, %i.pb                ; 2 uses
  %i.rh = add nsw i32 %i.re, %i.qz                ; 2 uses
  store i32 %i.rh, ptr %i.qw, align 4, !tbaa !4
  %i.ri = sub nsw i32 %i.qz, %i.re                ; 2 uses
  store i32 %i.ri, ptr %i.rd, align 4, !tbaa !4
  %i.rj = add nsw i32 %i.rf, %i.rg                ; 2 uses
  store i32 %i.rj, ptr %i.rb, align 4, !tbaa !4
  %i.rk = sub nsw i32 %i.rg, %i.rf                ; 2 uses
  store i32 %i.rk, ptr %i.qy, align 4, !tbaa !4
  %i.rl = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.rh, i1 true)
  %i.rm = add nuw nsw i32 %i.rl, %i.qv
  %i.rn = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.rj, i1 true)
  %i.ro = add nuw nsw i32 %i.rn, %i.rm
  %i.rp = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.ri, i1 true)
  %i.rq = add nuw nsw i32 %i.rp, %i.ro
  %i.rr = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.rk, i1 true)
  %i.rs = add nuw nsw i32 %i.rr, %i.rq
  %gep270.3 = getelementptr inbounds nuw i8, ptr %invariant.gep269, i64 768
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %gep270.3, i64 %indvars.iv326
  %i.ru = getelementptr inbounds nuw i8, ptr %invariant.gep269, i64 816
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %indvars.iv326
  %i.rw = add nsw i32 %i.pd, %i.nt                ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %invariant.gep269, i64 784
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %indvars.iv326
  %i.rz = getelementptr inbounds nuw i8, ptr %invariant.gep269, i64 800
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %indvars.iv326
  %i.sb = add nsw i32 %i.or, %i.of                ; 2 uses
  %i.sc = sub nsw i32 %i.of, %i.or                ; 2 uses
  %i.sd = sub nsw i32 %i.nt, %i.pd                ; 2 uses
  %i.se = add nsw i32 %i.sb, %i.rw                ; 2 uses
  store i32 %i.se, ptr %i.rt, align 4, !tbaa !4
  %i.sf = sub nsw i32 %i.rw, %i.sb                ; 2 uses
  store i32 %i.sf, ptr %i.sa, align 4, !tbaa !4
  %i.sg = add nsw i32 %i.sc, %i.sd                ; 2 uses
  store i32 %i.sg, ptr %i.ry, align 4, !tbaa !4
  %i.sh = sub nsw i32 %i.sd, %i.sc                ; 2 uses
  store i32 %i.sh, ptr %i.rv, align 4, !tbaa !4
  %i.si = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.se, i1 true)
  %i.sj = add nuw nsw i32 %i.si, %i.rs
  %i.sk = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.sg, i1 true)
  %i.sl = add nuw nsw i32 %i.sk, %i.sj
  %i.sm = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.sf, i1 true)
  %i.sn = add nuw nsw i32 %i.sm, %i.sl
  %i.so = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.sh, i1 true)
  %i.sp = add nuw nsw i32 %i.so, %i.sn            ; 3 uses
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 1 ; 2 uses
  %exitcond325.not = icmp eq i64 %indvars.iv.next323, 4
  br i1 %exitcond325.not, label %bb.aw, label %bb.av, !llvm.loop !343

bb.aw:                                            ; preds = %bb.av
  %indvars.iv.next327 = add nuw nsw i64 %indvars.iv326, 1 ; 2 uses
  %exitcond329.not = icmp eq i64 %indvars.iv.next327, 4
end_hunk_0
