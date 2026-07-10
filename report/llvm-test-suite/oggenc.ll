inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 207
begin_hunk_0_@dradf4:bb.a
  %i.ir = sub i64 %i.fn, %i.iq                    ; 2 uses
  %i.is = shl i64 %index762, 1                    ; 5 uses
  %i.it = add i64 %i.is, %i.fm                    ; 2 uses
  %.reass = add i64 %i.is, %invariant.op          ; 2 uses
  %i.iu = add nuw nsw i64 %.reass, %i.cl          ; 2 uses
  %i.iv = getelementptr inbounds [4 x i8], ptr %4, i64 %i.is
  %wide.vec = load <8 x float>, ptr %i.iv, align 4, !alias.scope !940 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec763 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.iw = getelementptr [4 x i8], ptr %2, i64 %i.iu
  %i.ix = getelementptr i8, ptr %i.iw, i64 -4
  %wide.vec764 = load <8 x float>, ptr %i.ix, align 4, !alias.scope !943 ; 2 uses
  %strided.vec765 = shufflevector <8 x float> %wide.vec764, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec766 = shufflevector <8 x float> %wide.vec764, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.iy = fmul <4 x float> %strided.vec, %strided.vec765
  %i.iz = fmul <4 x float> %strided.vec763, %strided.vec766
  %i.ja = fadd <4 x float> %i.iy, %i.iz           ; 2 uses
  %i.jb = fmul <4 x float> %strided.vec, %strided.vec766
  %i.jc = fmul <4 x float> %strided.vec765, %strided.vec763
  %i.jd = fsub <4 x float> %i.jb, %i.jc           ; 2 uses
  %i.je = add nuw nsw i64 %i.iu, %i.cl            ; 2 uses
  %i.jf = getelementptr inbounds [4 x i8], ptr %5, i64 %i.is
  %wide.vec767 = load <8 x float>, ptr %i.jf, align 4, !alias.scope !945 ; 2 uses
  %strided.vec768 = shufflevector <8 x float> %wide.vec767, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec769 = shufflevector <8 x float> %wide.vec767, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.jg = getelementptr [4 x i8], ptr %2, i64 %i.je
  %i.jh = getelementptr i8, ptr %i.jg, i64 -4
  %wide.vec770 = load <8 x float>, ptr %i.jh, align 4, !alias.scope !947 ; 2 uses
  %strided.vec771 = shufflevector <8 x float> %wide.vec770, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec772 = shufflevector <8 x float> %wide.vec770, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.ji = fmul <4 x float> %strided.vec768, %strided.vec771
  %i.jj = fmul <4 x float> %strided.vec769, %strided.vec772
  %i.jk = fadd <4 x float> %i.ji, %i.jj           ; 2 uses
  %i.jl = fmul <4 x float> %strided.vec768, %strided.vec772
  %i.jm = fmul <4 x float> %strided.vec771, %strided.vec769
  %i.jn = fsub <4 x float> %i.jl, %i.jm           ; 2 uses
  %i.jo = getelementptr inbounds [4 x i8], ptr %6, i64 %i.is
  %wide.vec773 = load <8 x float>, ptr %i.jo, align 4, !alias.scope !949 ; 2 uses
  %strided.vec774 = shufflevector <8 x float> %wide.vec773, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec775 = shufflevector <8 x float> %wide.vec773, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.jp = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.je
  %i.jq = getelementptr i8, ptr %i.jp, i64 -4
  %wide.vec776 = load <8 x float>, ptr %i.jq, align 4, !alias.scope !951 ; 2 uses
  %strided.vec777 = shufflevector <8 x float> %wide.vec776, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec778 = shufflevector <8 x float> %wide.vec776, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.jr = fmul <4 x float> %strided.vec774, %strided.vec777
  %i.js = fmul <4 x float> %strided.vec775, %strided.vec778
  %i.jt = fadd <4 x float> %i.jr, %i.js           ; 2 uses
  %i.ju = fmul <4 x float> %strided.vec774, %strided.vec778
  %i.jv = fmul <4 x float> %strided.vec777, %strided.vec775
  %i.jw = fsub <4 x float> %i.ju, %i.jv           ; 2 uses
  %i.jx = fadd <4 x float> %i.ja, %i.jt           ; 2 uses
  %i.jy = fsub <4 x float> %i.jt, %i.ja           ; 2 uses
  %i.jz = fadd <4 x float> %i.jd, %i.jw           ; 2 uses
  %i.ka = fsub <4 x float> %i.jd, %i.jw           ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.reass
  %i.kc = getelementptr inbounds i8, ptr %i.kb, i64 -4
  %wide.vec779 = load <8 x float>, ptr %i.kc, align 4, !alias.scope !953 ; 2 uses
  %strided.vec780 = shufflevector <8 x float> %wide.vec779, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec781 = shufflevector <8 x float> %wide.vec779, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.kd = fadd <4 x float> %i.jn, %strided.vec781 ; 2 uses
  %i.ke = fsub <4 x float> %strided.vec781, %i.jn ; 2 uses
  %i.kf = fadd <4 x float> %i.jk, %strided.vec780 ; 2 uses
  %i.kg = fsub <4 x float> %strided.vec780, %i.jk ; 2 uses
  %i.kh = fadd <4 x float> %i.jx, %i.kf
  %i.ki = getelementptr [4 x i8], ptr %3, i64 %i.it
  %i.kj = getelementptr i8, ptr %i.ki, i64 4
  %i.kk = fadd <4 x float> %i.kd, %i.jz
  %interleaved.vec782 = shufflevector <4 x float> %i.kh, <4 x float> %i.kk, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec782, ptr %i.kj, align 4
  %i.kl = fsub <4 x float> %i.kg, %i.ka
  %i.km = getelementptr [4 x i8], ptr %3, i64 %i.ir
  %i.kn = fsub <4 x float> %i.jy, %i.ke
  %i.ko = getelementptr i8, ptr %i.km, i64 -36
  %interleaved.vec784 = shufflevector <4 x float> %i.kl, <4 x float> %i.kn, <8 x i32> <i32 3, i32 7, i32 2, i32 6, i32 1, i32 5, i32 0, i32 4>
  store <8 x float> %interleaved.vec784, ptr %i.ko, align 4
  %i.kp = fadd <4 x float> %i.ka, %i.kg
  %i.kq = getelementptr [4 x i8], ptr %invariant.gep313, i64 %i.it
  %i.kr = getelementptr i8, ptr %i.kq, i64 4
  %i.ks = fadd <4 x float> %i.ke, %i.jy
  %interleaved.vec785 = shufflevector <4 x float> %i.kp, <4 x float> %i.ks, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec785, ptr %i.kr, align 4
  %i.kt = fsub <4 x float> %i.kf, %i.jx
  %i.ku = getelementptr [4 x i8], ptr %invariant.gep315, i64 %i.ir
  %i.kv = fsub <4 x float> %i.jz, %i.kd
  %i.kw = getelementptr i8, ptr %i.ku, i64 -36
  %interleaved.vec788 = shufflevector <4 x float> %i.kt, <4 x float> %i.kv, <8 x i32> <i32 3, i32 7, i32 2, i32 6, i32 1, i32 5, i32 0, i32 4>
  store <8 x float> %interleaved.vec788, ptr %i.kw, align 4
  %index.next789 = add nuw i64 %index762, 4       ; 2 uses
  %i.kx = icmp eq i64 %index.next789, %n.vec760
  br i1 %i.kx, label %middle.block790, label %vector.body761, !llvm.loop !955

middle.block790:                                  ; preds = %vector.body761
  br i1 %cmp.n791, label %._crit_edge250, label %scalar.ph756.preheader

scalar.ph756.preheader:                           ; preds = %vector.memcheck375, %vector.scevcheck350, %.lr.ph249, %middle.block790
  %indvars.iv283.ph = phi i64 [ %i.fn, %vector.memcheck375 ], [ %i.fn, %vector.scevcheck350 ], [ %i.fn, %.lr.ph249 ], [ %i.in, %middle.block790 ]
  %indvars.iv279.ph = phi i64 [ %i.fm, %vector.memcheck375 ], [ %i.fm, %vector.scevcheck350 ], [ %i.fm, %.lr.ph249 ], [ %i.io, %middle.block790 ]
  %indvars.iv275.ph = phi i64 [ %indvars.iv273, %vector.memcheck375 ], [ %indvars.iv273, %vector.scevcheck350 ], [ %indvars.iv273, %.lr.ph249 ], [ %i.ip, %middle.block790 ]
  %indvars.iv271.ph = phi i64 [ 2, %vector.memcheck375 ], [ 2, %vector.scevcheck350 ], [ 2, %.lr.ph249 ], [ %i.fh, %middle.block790 ]
  br label %scalar.ph756

scalar.ph756:                                     ; preds = %scalar.ph756.preheader, %scalar.ph756
  %indvars.iv283 = phi i64 [ %indvars.iv.next284, %scalar.ph756 ], [ %indvars.iv283.ph, %scalar.ph756.preheader ] ; 2 uses
  %indvars.iv279 = phi i64 [ %indvars.iv.next280, %scalar.ph756 ], [ %indvars.iv279.ph, %scalar.ph756.preheader ] ; 2 uses
  %indvars.iv275 = phi i64 [ %indvars.iv.next276, %scalar.ph756 ], [ %indvars.iv275.ph, %scalar.ph756.preheader ] ; 2 uses
  %indvars.iv271 = phi i64 [ %indvars.iv.next272, %scalar.ph756 ], [ %indvars.iv271.ph, %scalar.ph756.preheader ] ; 3 uses
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 2 ; 3 uses
  %indvars.iv.next280 = add nsw i64 %indvars.iv279, 2 ; 3 uses
  %indvars.iv.next284 = add nsw i64 %indvars.iv283, -2 ; 3 uses
  %i.ky = add nuw nsw i64 %indvars.iv.next276, %i.cl ; 2 uses
  %i.kz = add nsw i64 %indvars.iv271, -2          ; 3 uses
  %i.la = getelementptr inbounds [4 x i8], ptr %4, i64 %i.kz
  %i.lb = load float, ptr %i.la, align 4          ; 2 uses
  %i.lc = getelementptr [4 x i8], ptr %2, i64 %i.ky ; 2 uses
  %i.ld = getelementptr i8, ptr %i.lc, i64 -4
  %i.le = load float, ptr %i.ld, align 4          ; 2 uses
  %i.lf = fmul float %i.lb, %i.le
  %i.lg = add nsw i64 %indvars.iv271, -1          ; 3 uses
  %i.lh = getelementptr inbounds [4 x i8], ptr %4, i64 %i.lg
  %i.li = load float, ptr %i.lh, align 4          ; 2 uses
  %i.lj = load float, ptr %i.lc, align 4          ; 2 uses
  %i.lk = fmul float %i.li, %i.lj
  %i.ll = fadd float %i.lf, %i.lk                 ; 2 uses
  %i.lm = fmul float %i.lb, %i.lj
  %i.ln = fmul float %i.le, %i.li
  %i.lo = fsub float %i.lm, %i.ln                 ; 2 uses
  %i.lp = add nuw nsw i64 %i.ky, %i.cl            ; 2 uses
  %i.lq = getelementptr inbounds [4 x i8], ptr %5, i64 %i.kz
  %i.lr = load float, ptr %i.lq, align 4          ; 2 uses
  %i.ls = getelementptr [4 x i8], ptr %2, i64 %i.lp ; 2 uses
  %i.lt = getelementptr i8, ptr %i.ls, i64 -4
  %i.lu = load float, ptr %i.lt, align 4          ; 2 uses
  %i.lv = fmul float %i.lr, %i.lu
  %i.lw = getelementptr inbounds [4 x i8], ptr %5, i64 %i.lg
  %i.lx = load float, ptr %i.lw, align 4          ; 2 uses
  %i.ly = load float, ptr %i.ls, align 4          ; 2 uses
  %i.lz = fmul float %i.lx, %i.ly
  %i.ma = fadd float %i.lv, %i.lz                 ; 2 uses
  %i.mb = fmul float %i.lr, %i.ly
  %i.mc = fmul float %i.lu, %i.lx
  %i.md = fsub float %i.mb, %i.mc                 ; 2 uses
  %i.me = getelementptr inbounds [4 x i8], ptr %6, i64 %i.kz
  %i.mf = load float, ptr %i.me, align 4          ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.lp ; 2 uses
  %i.mg = getelementptr i8, ptr %gep, i64 -4
  %i.mh = load float, ptr %i.mg, align 4          ; 2 uses
  %i.mi = fmul float %i.mf, %i.mh
  %i.mj = getelementptr inbounds [4 x i8], ptr %6, i64 %i.lg
  %i.mk = load float, ptr %i.mj, align 4          ; 2 uses
  %i.ml = load float, ptr %gep, align 4           ; 2 uses
  %i.mm = fmul float %i.mk, %i.ml
  %i.mn = fadd float %i.mi, %i.mm                 ; 2 uses
  %i.mo = fmul float %i.mf, %i.ml
  %i.mp = fmul float %i.mh, %i.mk
  %i.mq = fsub float %i.mo, %i.mp                 ; 2 uses
  %i.mr = fadd float %i.ll, %i.mn                 ; 2 uses
  %i.ms = fsub float %i.mn, %i.ll                 ; 2 uses
  %i.mt = fadd float %i.lo, %i.mq                 ; 2 uses
  %i.mu = fsub float %i.lo, %i.mq                 ; 2 uses
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next276
  %i.mw = load float, ptr %i.mv, align 4          ; 2 uses
  %i.mx = fadd float %i.md, %i.mw                 ; 2 uses
  %i.my = fsub float %i.mw, %i.md                 ; 2 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv275
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 4
  %i.nb = load float, ptr %i.na, align 4          ; 2 uses
  %i.nc = fadd float %i.ma, %i.nb                 ; 2 uses
  %i.nd = fsub float %i.nb, %i.ma                 ; 2 uses
  %i.ne = fadd float %i.mr, %i.nc
  %i.nf = getelementptr [4 x i8], ptr %3, i64 %indvars.iv279
  %i.ng = getelementptr i8, ptr %i.nf, i64 4
  store float %i.ne, ptr %i.ng, align 4
  %i.nh = fadd float %i.mx, %i.mt
  %i.ni = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.next280
  store float %i.nh, ptr %i.ni, align 4
  %i.nj = fsub float %i.nd, %i.mu
  %i.nk = getelementptr [4 x i8], ptr %3, i64 %indvars.iv283
  %i.nl = getelementptr i8, ptr %i.nk, i64 -12
  store float %i.nj, ptr %i.nl, align 4
  %i.nm = fsub float %i.ms, %i.my
  %i.nn = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.next284
  store float %i.nm, ptr %i.nn, align 4
  %i.no = fadd float %i.mu, %i.nd
  %gep314 = getelementptr [4 x i8], ptr %invariant.gep313, i64 %indvars.iv.next280 ; 2 uses
  %i.np = getelementptr i8, ptr %gep314, i64 -4
  store float %i.no, ptr %i.np, align 4
  %i.nq = fadd float %i.my, %i.ms
  store float %i.nq, ptr %gep314, align 4
  %i.nr = fsub float %i.nc, %i.mr
  %gep316 = getelementptr [4 x i8], ptr %invariant.gep315, i64 %indvars.iv.next284 ; 2 uses
  %i.ns = getelementptr i8, ptr %gep316, i64 -4
  store float %i.nr, ptr %i.ns, align 4
  %i.nt = fsub float %i.mt, %i.mx
  store float %i.nt, ptr %gep316, align 4
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 2 ; 2 uses
  %i.nu = icmp samesign ult i64 %indvars.iv.next272, %i.ck
  br i1 %i.nu, label %scalar.ph756, label %._crit_edge250, !llvm.loop !956

._crit_edge250:                                   ; preds = %scalar.ph756, %middle.block790
  %indvars.iv.next274 = add i64 %indvars.iv273, %i.ck
  %i.nv = add nuw nsw i32 %.1252, 1               ; 2 uses
  %indvars.iv.next278 = add i32 %indvars.iv277, %i.cm
  %indvars.iv.next282 = add i32 %indvars.iv281, %i.cm
  %exitcond293.not = icmp eq i32 %i.nv, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond293.not, label %._crit_edge254.split, label %.lr.ph249, !llvm.loop !957

._crit_edge254.split:                             ; preds = %._crit_edge250, %.preheader
  %.not = trunc i32 %0 to i1
  %brmerge = or i1 %i.c, %.not
  br i1 %brmerge, label %.loopexit, label %.lr.ph261.preheader

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %.loopexit, label %.lr.ph261.preheader

.lr.ph261.preheader:                              ; preds = %._crit_edge254.split, %bb.c
  %i.nw = shl nuw i32 %0, 1
  %i.nx = shl i32 %0, 2
  %i.ny = add nsw i32 %0, -1
  %i.nz = add i32 %i.ny, %i.a                     ; 2 uses
  %i.oa = add i32 %i.nz, %i.b
  %i.ob = sext i32 %i.nz to i64
  %i.oc = zext nneg i32 %0 to i64                 ; 3 uses
  %i.od = sext i32 %i.a to i64
  %i.oe = sext i32 %i.oa to i64
  %i.of = sext i32 %i.nx to i64
  %i.og = sext i32 %i.nw to i64
  %i.oh = zext nneg i32 %0 to i64                 ; 2 uses
  %invariant.gep317 = getelementptr [4 x i8], ptr %3, i64 %i.og
  %invariant.gep319 = getelementptr [4 x i8], ptr %2, i64 %i.od
  br label %.lr.ph261

.lr.ph261:                                        ; preds = %.lr.ph261.preheader, %.lr.ph261
  %indvars.iv300 = phi i64 [ %i.oh, %.lr.ph261.preheader ], [ %indvars.iv.next301, %.lr.ph261 ] ; 2 uses
  %indvars.iv298 = phi i64 [ %i.oc, %.lr.ph261.preheader ], [ %indvars.iv.next299, %.lr.ph261 ] ; 3 uses
  %indvars.iv296 = phi i64 [ %i.oe, %.lr.ph261.preheader ], [ %indvars.iv.next297, %.lr.ph261 ] ; 2 uses
  %indvars.iv294 = phi i64 [ %i.ob, %.lr.ph261.preheader ], [ %indvars.iv.next295, %.lr.ph261 ] ; 3 uses
  %.2259 = phi i32 [ 0, %.lr.ph261.preheader ], [ %i.pd, %.lr.ph261 ]
  %i.oi = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv294
  %i.oj = load float, ptr %i.oi, align 4          ; 2 uses
  %i.ok = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv296
  %i.ol = load float, ptr %i.ok, align 4          ; 2 uses
  %i.om = fadd float %i.oj, %i.ol
  %i.on = fmul float %i.om, f0xBF3504F3           ; 2 uses
  %i.oo = fsub float %i.oj, %i.ol
  %i.op = fmul float %i.oo, f0x3F3504F3           ; 2 uses
  %i.oq = getelementptr [4 x i8], ptr %2, i64 %indvars.iv300
  %i.or = getelementptr i8, ptr %i.oq, i64 -4     ; 2 uses
  %i.os = load float, ptr %i.or, align 4
  %i.ot = fadd float %i.os, %i.op
  %i.ou = getelementptr [4 x i8], ptr %3, i64 %indvars.iv298 ; 2 uses
  %i.ov = getelementptr i8, ptr %i.ou, i64 -4
  store float %i.ot, ptr %i.ov, align 4
  %i.ow = load float, ptr %i.or, align 4
  %i.ox = fsub float %i.ow, %i.op
  %gep318 = getelementptr [4 x i8], ptr %invariant.gep317, i64 %indvars.iv298 ; 2 uses
  %i.oy = getelementptr i8, ptr %gep318, i64 -4
  store float %i.ox, ptr %i.oy, align 4
  %gep320 = getelementptr [4 x i8], ptr %invariant.gep319, i64 %indvars.iv294 ; 2 uses
  %i.oz = load float, ptr %gep320, align 4
  %i.pa = fsub float %i.on, %i.oz
  store float %i.pa, ptr %i.ou, align 4
  %i.pb = load float, ptr %gep320, align 4
  %i.pc = fadd float %i.on, %i.pb
  store float %i.pc, ptr %gep318, align 4
  %indvars.iv.next295 = add nsw i64 %indvars.iv294, %i.oc
  %indvars.iv.next297 = add nsw i64 %indvars.iv296, %i.oc
  %indvars.iv.next299 = add nsw i64 %indvars.iv298, %i.of
  %indvars.iv.next301 = add nuw nsw i64 %indvars.iv300, %i.oh
  %i.pd = add nuw nsw i32 %.2259, 1               ; 2 uses
  %exitcond309.not = icmp eq i32 %i.pd, %1
  br i1 %exitcond309.not, label %.loopexit, label %.lr.ph261, !llvm.loop !958

.loopexit:                                        ; preds = %.lr.ph261, %._crit_edge254.split, %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @dradf2(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #43 {
bb.a:
  %i.a = mul i32 %1, %0                           ; 3 uses
  %i.b = shl i32 %0, 1                            ; 5 uses
  %i.c = icmp slt i32 %1, 1                       ; 4 uses
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = sext i32 %i.a to i64                     ; 5 uses
  %i.e = sext i32 %0 to i64                       ; 2 uses
  %i.f = zext nneg i32 %1 to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %1, 16
  br i1 %min.iters.check, label %.lr.ph.preheader247, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %ident.check = icmp ne i32 %0, 1
  %i.g = shl nuw i32 %1, 1
  %i.h = icmp slt i32 %i.g, 2
  %i.i = or i1 %ident.check, %i.h
  br i1 %i.i, label %.lr.ph.preheader247, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.j = zext nneg i32 %1 to i64
  %i.k = shl nuw nsw i64 %i.j, 2                  ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.k
  %i.l = add nsw i32 %1, -1
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = shl nuw nsw i64 %i.m, 2                  ; 2 uses
  %i.o = getelementptr i8, ptr %2, i64 %i.k
  %i.p = getelementptr i8, ptr %i.o, i64 %i.n
  %scevgep190 = getelementptr i8, ptr %i.p, i64 4
  %i.q = shl nuw nsw i64 %i.m, 3
  %i.r = getelementptr i8, ptr %3, i64 %i.q
  %scevgep191 = getelementptr i8, ptr %i.r, i64 8 ; 2 uses
  %i.s = getelementptr i8, ptr %2, i64 %i.n
  %scevgep192 = getelementptr i8, ptr %i.s, i64 4
  %bound0 = icmp ult ptr %scevgep, %scevgep191
  %bound1 = icmp ult ptr %3, %scevgep190
  %found.conflict = and i1 %bound0, %bound1
  %bound0193 = icmp ult ptr %2, %scevgep191
  %bound1194 = icmp ult ptr %3, %scevgep192
  %found.conflict195 = and i1 %bound0193, %bound1194
  %conflict.rdx = or i1 %found.conflict, %found.conflict195
  br i1 %conflict.rdx, label %.lr.ph.preheader247, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.f, 2147483644               ; 5 uses
  %i.t = add nuw nsw i64 %n.vec, %i.d
  %i.u = trunc nuw nsw i64 %n.vec to i32
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %i.d
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.v = trunc i64 %index to i32
  %i.w = getelementptr inbounds [4 x i8], ptr %2, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.w, align 4, !alias.scope !959, !noalias !962
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  %wide.load196 = load <4 x float>, ptr %gep, align 4, !alias.scope !964, !noalias !962 ; 2 uses
  %i.x = fadd <4 x float> %wide.load, %wide.load196
  %i.y = shl i32 %i.v, 1
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %3, i64 %i.z
  %wide.load197 = load <4 x float>, ptr %i.w, align 4, !alias.scope !959, !noalias !962
  %i.ab = fsub <4 x float> %wide.load197, %wide.load196
  %interleaved.vec = shufflevector <4 x float> %i.x, <4 x float> %i.ab, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.aa, align 4, !alias.scope !962
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !966

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.f
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader247

.lr.ph.preheader247:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv138.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %indvars.iv.ph = phi i64 [ %i.d, %vector.memcheck ], [ %i.d, %vector.scevcheck ], [ %i.d, %.lr.ph.preheader ], [ %i.t, %middle.block ]
  %.0111116.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader247, %.lr.ph
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %.lr.ph ], [ %indvars.iv138.ph, %.lr.ph.preheader247 ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader247 ] ; 2 uses
  %.0111116 = phi i32 [ %i.at, %.lr.ph ], [ %.0111116.ph, %.lr.ph.preheader247 ]
  %i.ad = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv138 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4
  %i.af = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.ag = load float, ptr %i.af, align 4
  %i.ah = fadd float %i.ae, %i.ag
  %i.ai = trunc nsw i64 %indvars.iv138 to i32
  %i.aj = shl i32 %i.ai, 1                        ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ak
  store float %i.ah, ptr %i.al, align 4
  %i.am = load float, ptr %i.ad, align 4
  %i.an = load float, ptr %i.af, align 4
  %i.ao = fsub float %i.am, %i.an
  %i.ap = add nsw i32 %i.aj, %i.b
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr [4 x i8], ptr %3, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 -4
  store float %i.ao, ptr %i.as, align 4
  %indvars.iv.next139 = add nsw i64 %indvars.iv138, %i.e
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.e
  %i.at = add nuw nsw i32 %.0111116, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.at, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !967

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.au = icmp slt i32 %0, 2
  br i1 %i.au, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.av = icmp eq i32 %0, 2
  br i1 %i.av, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.b
  br i1 %i.c, label %._crit_edge131.split, label %.lr.ph125.preheader

.lr.ph125.preheader:                              ; preds = %.preheader
  %i.aw = zext nneg i32 %0 to i64
end_hunk_0
begin_hunk_1_@dradfg:bb.a
  br i1 %cmp.n1545, label %._crit_edge800, label %scalar.ph1532.preheader

scalar.ph1532.preheader:                          ; preds = %vector.memcheck1524, %.lr.ph799, %middle.block1544
  %indvars.iv1041.ph = phi i64 [ %i.sb, %vector.memcheck1524 ], [ %i.sb, %.lr.ph799 ], [ %i.se, %middle.block1544 ] ; 3 uses
  %indvars.iv1037.ph = phi i64 [ 0, %vector.memcheck1524 ], [ 0, %.lr.ph799 ], [ %n.vec1536, %middle.block1544 ] ; 4 uses
  br i1 %lcmp.mod1595.not, label %scalar.ph1532.prol.loopexit, label %scalar.ph1532.prol

scalar.ph1532.prol:                               ; preds = %scalar.ph1532.preheader
  %indvars.iv.next1042.prol = add nuw nsw i64 %indvars.iv1041.ph, 1
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv1041.ph
  %i.sm = load float, ptr %i.sl, align 4
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv1037.ph ; 2 uses
  %i.so = load float, ptr %i.sn, align 4
  %i.sp = fadd float %i.sm, %i.so
  store float %i.sp, ptr %i.sn, align 4
  %indvars.iv.next1038.prol = or disjoint i64 %indvars.iv1037.ph, 1
  br label %scalar.ph1532.prol.loopexit

scalar.ph1532.prol.loopexit:                      ; preds = %scalar.ph1532.prol, %scalar.ph1532.preheader
  %indvars.iv1041.unr = phi i64 [ %indvars.iv1041.ph, %scalar.ph1532.preheader ], [ %indvars.iv.next1042.prol, %scalar.ph1532.prol ]
  %indvars.iv1037.unr = phi i64 [ %indvars.iv1037.ph, %scalar.ph1532.preheader ], [ %indvars.iv.next1038.prol, %scalar.ph1532.prol ]
  %i.sq = icmp eq i64 %indvars.iv1037.ph, %i.ph
  br i1 %i.sq, label %._crit_edge800, label %scalar.ph1532

scalar.ph1532:                                    ; preds = %scalar.ph1532.prol.loopexit, %scalar.ph1532
  %indvars.iv1041 = phi i64 [ %indvars.iv.next1042.1, %scalar.ph1532 ], [ %indvars.iv1041.unr, %scalar.ph1532.prol.loopexit ] ; 3 uses
  %indvars.iv1037 = phi i64 [ %indvars.iv.next1038.1, %scalar.ph1532 ], [ %indvars.iv1037.unr, %scalar.ph1532.prol.loopexit ] ; 3 uses
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv1041
  %i.ss = load float, ptr %i.sr, align 4
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv1037 ; 2 uses
  %i.su = load float, ptr %i.st, align 4
  %i.sv = fadd float %i.ss, %i.su
  store float %i.sv, ptr %i.st, align 4
  %indvars.iv.next1042.1 = add nuw nsw i64 %indvars.iv1041, 2
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv1041
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 4
  %i.sy = load float, ptr %i.sx, align 4
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv1037
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 4 ; 2 uses
  %i.tb = load float, ptr %i.ta, align 4
  %i.tc = fadd float %i.sy, %i.tb
  store float %i.tc, ptr %i.ta, align 4
  %indvars.iv.next1038.1 = add nuw nsw i64 %indvars.iv1037, 2 ; 2 uses
  %exitcond1047.not.1 = icmp eq i64 %indvars.iv.next1038.1, %wide.trip.count1046
  br i1 %exitcond1047.not.1, label %._crit_edge800, label %scalar.ph1532, !llvm.loop !1044

._crit_edge800:                                   ; preds = %scalar.ph1532.prol.loopexit, %scalar.ph1532, %middle.block1544
  %i.td = add nuw nsw i32 %.7557802, 1            ; 2 uses
  %indvars.iv.next1040 = add i32 %indvars.iv1039, %3
  %exitcond1048.not = icmp eq i32 %i.td, %i.k
  br i1 %exitcond1048.not, label %._crit_edge804.split, label %.lr.ph799, !llvm.loop !1045

._crit_edge804.split:                             ; preds = %._crit_edge800, %._crit_edge766.split, %.preheader667
  %i.te = icmp slt i32 %0, %2
  %i.tf = icmp sgt i32 %0, 0
  %or.cond886 = and i1 %i.tf, %i.lp               ; 2 uses
  br i1 %i.te, label %.preheader662, label %.preheader665

.preheader665:                                    ; preds = %._crit_edge804.split
  br i1 %or.cond886, label %.preheader664.preheader, label %.loopexit663

.preheader664.preheader:                          ; preds = %.preheader665
  %i.tg = zext nneg i32 %0 to i64                 ; 4 uses
  %i.th = sext i32 %i.o to i64                    ; 2 uses
  %i.ti = add nsw i32 %2, -1
  %i.tj = zext i32 %i.ti to i64                   ; 2 uses
  %i.tk = mul nsw i64 %i.th, %i.tj
  %i.tl = zext i32 %i.l to i64                    ; 2 uses
  %i.tm = add i64 %i.tk, %i.tl
  %i.tn = shl i64 %i.tm, 2
  %i.to = getelementptr i8, ptr %4, i64 %i.tn
  %scevgep1549 = getelementptr i8, ptr %i.to, i64 4
  %i.tp = mul nuw nsw i64 %i.tg, %i.tj
  %i.tq = add nuw i64 %i.tp, %i.tl
  %i.tr = shl i64 %i.tq, 2
  %i.ts = getelementptr i8, ptr %7, i64 %i.tr
  %scevgep1550 = getelementptr i8, ptr %i.ts, i64 4
  %min.iters.check1555 = icmp ult i32 %0, 8
  %bound01551 = icmp ult ptr %4, %scevgep1550
  %bound11552 = icmp ult ptr %7, %scevgep1549
  %found.conflict1553 = and i1 %bound01551, %bound11552
  %stride.check = icmp slt i32 %i.o, 0
  %i.tt = or i1 %found.conflict1553, %stride.check
  %n.vec1558 = and i64 %i.tg, 2147483640          ; 5 uses
  %i.tu = trunc nuw nsw i64 %n.vec1558 to i32
  %cmp.n1565 = icmp eq i64 %n.vec1558, %i.tg
  br label %.preheader664

.preheader662:                                    ; preds = %._crit_edge804.split
  br i1 %or.cond886, label %.preheader661.preheader, label %.loopexit663

.preheader661.preheader:                          ; preds = %.preheader662
  %i.tv = zext nneg i32 %0 to i64                 ; 6 uses
  %i.tw = sext i32 %i.o to i64                    ; 5 uses
  %i.tx = add nsw i32 %2, -1
  %xtraiter1601 = and i32 %2, 3                   ; 3 uses
  %i.ty = icmp ult i32 %i.tx, 3
  %unroll_iter1605 = and i32 %2, 2147483644
  %lcmp.mod1603.not = icmp eq i32 %xtraiter1601, 0
  %lcmp.mod1604 = icmp ne i32 %xtraiter1601, 0
  br label %.preheader661

.preheader664:                                    ; preds = %.preheader664.preheader, %._crit_edge809
  %indvars.iv1054 = phi i64 [ 0, %.preheader664.preheader ], [ %indvars.iv.next1055, %._crit_edge809 ] ; 4 uses
  %indvars.iv1050 = phi i64 [ 0, %.preheader664.preheader ], [ %indvars.iv.next1051, %._crit_edge809 ] ; 4 uses
  %.6564812 = phi i32 [ 0, %.preheader664.preheader ], [ %i.vi, %._crit_edge809 ]
  %brmerge1655 = select i1 %min.iters.check1555, i1 true, i1 %i.tt
  br i1 %brmerge1655, label %scalar.ph1554.preheader, label %vector.ph1556

vector.ph1556:                                    ; preds = %.preheader664
  %i.tz = add i64 %indvars.iv1054, %n.vec1558
  %i.ua = add nuw i64 %indvars.iv1050, %n.vec1558
  %i.ub = getelementptr [4 x i8], ptr %7, i64 %indvars.iv1050
  %i.uc = getelementptr [4 x i8], ptr %4, i64 %indvars.iv1054
  br label %vector.body1559

vector.body1559:                                  ; preds = %vector.body1559, %vector.ph1556
  %index1560 = phi i64 [ 0, %vector.ph1556 ], [ %index.next1563, %vector.body1559 ] ; 3 uses
  %i.ud = getelementptr [4 x i8], ptr %i.ub, i64 %index1560 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 16
  %wide.load1561 = load <4 x float>, ptr %i.ud, align 4, !alias.scope !1046
  %wide.load1562 = load <4 x float>, ptr %i.ue, align 4, !alias.scope !1046
  %i.uf = getelementptr [4 x i8], ptr %i.uc, i64 %index1560 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 16
  store <4 x float> %wide.load1561, ptr %i.uf, align 4, !alias.scope !1049, !noalias !1046
  store <4 x float> %wide.load1562, ptr %i.ug, align 4, !alias.scope !1049, !noalias !1046
  %index.next1563 = add nuw i64 %index1560, 8     ; 2 uses
  %i.uh = icmp eq i64 %index.next1563, %n.vec1558
  br i1 %i.uh, label %middle.block1564, label %vector.body1559, !llvm.loop !1051

middle.block1564:                                 ; preds = %vector.body1559
  br i1 %cmp.n1565, label %._crit_edge809, label %scalar.ph1554.preheader

scalar.ph1554.preheader:                          ; preds = %.preheader664, %middle.block1564
  %indvars.iv1056.ph = phi i64 [ %i.tz, %middle.block1564 ], [ %indvars.iv1054, %.preheader664 ] ; 2 uses
  %indvars.iv1052.ph = phi i64 [ %i.ua, %middle.block1564 ], [ %indvars.iv1050, %.preheader664 ] ; 2 uses
  %.4807.ph = phi i32 [ %i.tu, %middle.block1564 ], [ 0, %.preheader664 ] ; 4 uses
  %i.ui = sub i32 %0, %.4807.ph
  %xtraiter1597 = and i32 %i.ui, 3                ; 2 uses
  %lcmp.mod1598.not = icmp eq i32 %xtraiter1597, 0
  br i1 %lcmp.mod1598.not, label %scalar.ph1554.prol.loopexit, label %scalar.ph1554.prol

scalar.ph1554.prol:                               ; preds = %scalar.ph1554.preheader, %scalar.ph1554.prol
  %indvars.iv1056.prol = phi i64 [ %indvars.iv.next1057.prol, %scalar.ph1554.prol ], [ %indvars.iv1056.ph, %scalar.ph1554.preheader ] ; 2 uses
  %indvars.iv1052.prol = phi i64 [ %indvars.iv.next1053.prol, %scalar.ph1554.prol ], [ %indvars.iv1052.ph, %scalar.ph1554.preheader ] ; 2 uses
  %.4807.prol = phi i32 [ %i.um, %scalar.ph1554.prol ], [ %.4807.ph, %scalar.ph1554.preheader ]
  %prol.iter1599 = phi i32 [ %prol.iter1599.next, %scalar.ph1554.prol ], [ 0, %scalar.ph1554.preheader ]
  %indvars.iv.next1053.prol = add nuw nsw i64 %indvars.iv1052.prol, 1 ; 2 uses
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv1052.prol
  %i.uk = load float, ptr %i.uj, align 4
  %indvars.iv.next1057.prol = add nsw i64 %indvars.iv1056.prol, 1 ; 2 uses
  %i.ul = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv1056.prol
  store float %i.uk, ptr %i.ul, align 4
  %i.um = add nuw nsw i32 %.4807.prol, 1          ; 2 uses
  %prol.iter1599.next = add i32 %prol.iter1599, 1 ; 2 uses
  %prol.iter1599.cmp.not = icmp eq i32 %prol.iter1599.next, %xtraiter1597
  br i1 %prol.iter1599.cmp.not, label %scalar.ph1554.prol.loopexit, label %scalar.ph1554.prol, !llvm.loop !1052

scalar.ph1554.prol.loopexit:                      ; preds = %scalar.ph1554.prol, %scalar.ph1554.preheader
  %indvars.iv1056.unr = phi i64 [ %indvars.iv1056.ph, %scalar.ph1554.preheader ], [ %indvars.iv.next1057.prol, %scalar.ph1554.prol ]
  %indvars.iv1052.unr = phi i64 [ %indvars.iv1052.ph, %scalar.ph1554.preheader ], [ %indvars.iv.next1053.prol, %scalar.ph1554.prol ]
  %.4807.unr = phi i32 [ %.4807.ph, %scalar.ph1554.preheader ], [ %i.um, %scalar.ph1554.prol ]
  %i.un = sub i32 %.4807.ph, %0
  %i.uo = icmp ugt i32 %i.un, -4
  br i1 %i.uo, label %._crit_edge809, label %scalar.ph1554

scalar.ph1554:                                    ; preds = %scalar.ph1554.prol.loopexit, %scalar.ph1554
  %indvars.iv1056 = phi i64 [ %indvars.iv.next1057.3, %scalar.ph1554 ], [ %indvars.iv1056.unr, %scalar.ph1554.prol.loopexit ] ; 5 uses
  %indvars.iv1052 = phi i64 [ %indvars.iv.next1053.3, %scalar.ph1554 ], [ %indvars.iv1052.unr, %scalar.ph1554.prol.loopexit ] ; 5 uses
  %.4807 = phi i32 [ %i.vh, %scalar.ph1554 ], [ %.4807.unr, %scalar.ph1554.prol.loopexit ]
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv1052
  %i.uq = load float, ptr %i.up, align 4
  %i.ur = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv1056
  store float %i.uq, ptr %i.ur, align 4
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv1052
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 4
  %i.uu = load float, ptr %i.ut, align 4
  %i.uv = getelementptr [4 x i8], ptr %4, i64 %indvars.iv1056
  %i.uw = getelementptr i8, ptr %i.uv, i64 4
  store float %i.uu, ptr %i.uw, align 4
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv1052
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 8
  %i.uz = load float, ptr %i.uy, align 4
  %i.va = getelementptr [4 x i8], ptr %4, i64 %indvars.iv1056
  %i.vb = getelementptr i8, ptr %i.va, i64 8
  store float %i.uz, ptr %i.vb, align 4
  %indvars.iv.next1053.3 = add nuw nsw i64 %indvars.iv1052, 4
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv1052
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 12
  %i.ve = load float, ptr %i.vd, align 4
  %indvars.iv.next1057.3 = add nsw i64 %indvars.iv1056, 4
  %i.vf = getelementptr [4 x i8], ptr %4, i64 %indvars.iv1056
  %i.vg = getelementptr i8, ptr %i.vf, i64 12
  store float %i.ve, ptr %i.vg, align 4
  %i.vh = add nuw nsw i32 %.4807, 4               ; 2 uses
  %exitcond1061.not.3 = icmp eq i32 %i.vh, %0
  br i1 %exitcond1061.not.3, label %._crit_edge809, label %scalar.ph1554, !llvm.loop !1053

._crit_edge809:                                   ; preds = %scalar.ph1554.prol.loopexit, %scalar.ph1554, %middle.block1564
  %indvars.iv.next1051 = add nuw nsw i64 %indvars.iv1050, %i.tg
  %indvars.iv.next1055 = add i64 %indvars.iv1054, %i.th
  %i.vi = add nuw nsw i32 %.6564812, 1            ; 2 uses
  %exitcond1065.not = icmp eq i32 %i.vi, %2
  br i1 %exitcond1065.not, label %.loopexit663, label %.preheader664, !llvm.loop !1054

.preheader661:                                    ; preds = %.preheader661.preheader, %._crit_edge817
  %indvars.iv1066 = phi i64 [ 0, %.preheader661.preheader ], [ %indvars.iv.next1067, %._crit_edge817 ] ; 5 uses
  br i1 %i.ty, label %.epil.preheader1600, label %.preheader661.new

.preheader661.new:                                ; preds = %.preheader661, %.preheader661.new
  %indvars.iv1070 = phi i64 [ %indvars.iv.next1071.3, %.preheader661.new ], [ %indvars.iv1066, %.preheader661 ] ; 2 uses
  %indvars.iv1068 = phi i64 [ %indvars.iv.next1069.3, %.preheader661.new ], [ %indvars.iv1066, %.preheader661 ] ; 2 uses
  %niter1606 = phi i32 [ %niter1606.next.3, %.preheader661.new ], [ 0, %.preheader661 ]
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv1068
  %i.vk = load float, ptr %i.vj, align 4
  %i.vl = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv1070
  store float %i.vk, ptr %i.vl, align 4
  %indvars.iv.next1069 = add nuw nsw i64 %indvars.iv1068, %i.tv ; 2 uses
  %indvars.iv.next1071 = add nsw i64 %indvars.iv1070, %i.tw ; 2 uses
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next1069
  %i.vn = load float, ptr %i.vm, align 4
  %i.vo = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next1071
  store float %i.vn, ptr %i.vo, align 4
  %indvars.iv.next1069.1 = add nuw nsw i64 %indvars.iv.next1069, %i.tv ; 2 uses
  %indvars.iv.next1071.1 = add nsw i64 %indvars.iv.next1071, %i.tw ; 2 uses
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next1069.1
  %i.vq = load float, ptr %i.vp, align 4
  %i.vr = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next1071.1
  store float %i.vq, ptr %i.vr, align 4
  %indvars.iv.next1069.2 = add nuw nsw i64 %indvars.iv.next1069.1, %i.tv ; 2 uses
  %indvars.iv.next1071.2 = add nsw i64 %indvars.iv.next1071.1, %i.tw ; 2 uses
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next1069.2
  %i.vt = load float, ptr %i.vs, align 4
  %i.vu = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next1071.2
  store float %i.vt, ptr %i.vu, align 4
  %indvars.iv.next1069.3 = add nuw nsw i64 %indvars.iv.next1069.2, %i.tv ; 2 uses
  %indvars.iv.next1071.3 = add nsw i64 %indvars.iv.next1071.2, %i.tw ; 2 uses
  %niter1606.next.3 = add i32 %niter1606, 4       ; 2 uses
  %niter1606.ncmp.3 = icmp eq i32 %niter1606.next.3, %unroll_iter1605
  br i1 %niter1606.ncmp.3, label %._crit_edge817.unr-lcssa, label %.preheader661.new, !llvm.loop !1055

._crit_edge817.unr-lcssa:                         ; preds = %.preheader661.new
  br i1 %lcmp.mod1603.not, label %._crit_edge817, label %.epil.preheader1600

.epil.preheader1600:                              ; preds = %._crit_edge817.unr-lcssa, %.preheader661
  %indvars.iv1070.epil.init = phi i64 [ %indvars.iv1066, %.preheader661 ], [ %indvars.iv.next1071.3, %._crit_edge817.unr-lcssa ]
  %indvars.iv1068.epil.init = phi i64 [ %indvars.iv1066, %.preheader661 ], [ %indvars.iv.next1069.3, %._crit_edge817.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1604)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader1600
  %indvars.iv1070.epil = phi i64 [ %indvars.iv1070.epil.init, %.epil.preheader1600 ], [ %indvars.iv.next1071.epil, %bb.f ] ; 2 uses
  %indvars.iv1068.epil = phi i64 [ %indvars.iv1068.epil.init, %.epil.preheader1600 ], [ %indvars.iv.next1069.epil, %bb.f ] ; 2 uses
  %epil.iter1602 = phi i32 [ 0, %.epil.preheader1600 ], [ %epil.iter1602.next, %bb.f ]
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv1068.epil
  %i.vw = load float, ptr %i.vv, align 4
  %i.vx = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv1070.epil
  store float %i.vw, ptr %i.vx, align 4
  %indvars.iv.next1069.epil = add nuw nsw i64 %indvars.iv1068.epil, %i.tv
  %indvars.iv.next1071.epil = add nsw i64 %indvars.iv1070.epil, %i.tw
  %epil.iter1602.next = add i32 %epil.iter1602, 1 ; 2 uses
  %epil.iter1602.cmp.not = icmp eq i32 %epil.iter1602.next, %xtraiter1601
  br i1 %epil.iter1602.cmp.not, label %._crit_edge817, label %bb.f, !llvm.loop !1056

._crit_edge817:                                   ; preds = %bb.f, %._crit_edge817.unr-lcssa
  %indvars.iv.next1067 = add nuw nsw i64 %indvars.iv1066, 1 ; 2 uses
  %exitcond1078.not = icmp eq i64 %indvars.iv.next1067, %i.tv
  br i1 %exitcond1078.not, label %.loopexit663, label %.preheader661, !llvm.loop !1057

.loopexit663:                                     ; preds = %._crit_edge809, %._crit_edge817, %.preheader665, %.preheader662
  %i.vy = shl i32 %0, 1                           ; 9 uses
  br i1 %or.cond880, label %.lr.ph824.preheader, label %._crit_edge832.split

.lr.ph824.preheader:                              ; preds = %.loopexit663
  %i.vz = mul i32 %i.n, %i.og
  %i.wa = sext i32 %0 to i64                      ; 4 uses
  %i.wb = sext i32 %i.o to i64                    ; 2 uses
  %xtraiter1608 = and i32 %2, 1
  %i.wc = icmp eq i32 %2, 1
  %unroll_iter1612 = and i32 %2, 2147483646
  %lcmp.mod1610.not = icmp eq i32 %xtraiter1608, 0
  %lcmp.mod1611 = trunc i32 %2 to i1
  br label %.lr.ph824

.lr.ph824:                                        ; preds = %.lr.ph824.preheader, %._crit_edge825
  %indvars.iv1087 = phi i32 [ %i.vy, %.lr.ph824.preheader ], [ %indvars.iv.next1088, %._crit_edge825 ] ; 2 uses
  %indvars.iv1083 = phi i32 [ %i.n, %.lr.ph824.preheader ], [ %indvars.iv.next1084, %._crit_edge825 ] ; 2 uses
  %indvars.iv1079 = phi i32 [ %i.vz, %.lr.ph824.preheader ], [ %indvars.iv.next1080, %._crit_edge825 ] ; 2 uses
  %.8829 = phi i32 [ 1, %.lr.ph824.preheader ], [ %i.wy, %._crit_edge825 ]
  %i.wd = sext i32 %indvars.iv1079 to i64         ; 2 uses
  %i.we = sext i32 %indvars.iv1083 to i64         ; 2 uses
  %i.wf = sext i32 %indvars.iv1087 to i64         ; 2 uses
  br i1 %i.wc, label %.epil.preheader1607, label %.lr.ph824.new

.lr.ph824.new:                                    ; preds = %.lr.ph824, %.lr.ph824.new
  %indvars.iv1089 = phi i64 [ %indvars.iv.next1090.1, %.lr.ph824.new ], [ %i.wf, %.lr.ph824 ] ; 2 uses
  %indvars.iv1085 = phi i64 [ %indvars.iv.next1086.1, %.lr.ph824.new ], [ %i.we, %.lr.ph824 ] ; 2 uses
  %indvars.iv1081 = phi i64 [ %indvars.iv.next1082.1, %.lr.ph824.new ], [ %i.wd, %.lr.ph824 ] ; 2 uses
  %niter1613 = phi i32 [ %niter1613.next.1, %.lr.ph824.new ], [ 0, %.lr.ph824 ]
  %i.wg = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv1085
  %i.wh = load float, ptr %i.wg, align 4
  %i.wi = getelementptr [4 x i8], ptr %4, i64 %indvars.iv1089 ; 2 uses
  %i.wj = getelementptr i8, ptr %i.wi, i64 -4
  store float %i.wh, ptr %i.wj, align 4
  %i.wk = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv1081
  %i.wl = load float, ptr %i.wk, align 4
  store float %i.wl, ptr %i.wi, align 4
  %indvars.iv.next1090 = add nsw i64 %indvars.iv1089, %i.wb ; 2 uses
  %indvars.iv.next1086 = add nsw i64 %indvars.iv1085, %i.wa ; 2 uses
  %indvars.iv.next1082 = add nsw i64 %indvars.iv1081, %i.wa ; 2 uses
  %i.wm = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next1086
  %i.wn = load float, ptr %i.wm, align 4
  %i.wo = getelementptr [4 x i8], ptr %4, i64 %indvars.iv.next1090 ; 2 uses
  %i.wp = getelementptr i8, ptr %i.wo, i64 -4
  store float %i.wn, ptr %i.wp, align 4
  %i.wq = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next1082
  %i.wr = load float, ptr %i.wq, align 4
  store float %i.wr, ptr %i.wo, align 4
  %indvars.iv.next1090.1 = add nsw i64 %indvars.iv.next1090, %i.wb ; 2 uses
  %indvars.iv.next1086.1 = add nsw i64 %indvars.iv.next1086, %i.wa ; 2 uses
  %indvars.iv.next1082.1 = add nsw i64 %indvars.iv.next1082, %i.wa ; 2 uses
  %niter1613.next.1 = add i32 %niter1613, 2       ; 2 uses
  %niter1613.ncmp.1 = icmp eq i32 %niter1613.next.1, %unroll_iter1612
  br i1 %niter1613.ncmp.1, label %._crit_edge825.unr-lcssa, label %.lr.ph824.new, !llvm.loop !1058

._crit_edge825.unr-lcssa:                         ; preds = %.lr.ph824.new
  br i1 %lcmp.mod1610.not, label %._crit_edge825, label %.epil.preheader1607

.epil.preheader1607:                              ; preds = %._crit_edge825.unr-lcssa, %.lr.ph824
  %indvars.iv1089.epil.init = phi i64 [ %i.wf, %.lr.ph824 ], [ %indvars.iv.next1090.1, %._crit_edge825.unr-lcssa ]
  %indvars.iv1085.epil.init = phi i64 [ %i.we, %.lr.ph824 ], [ %indvars.iv.next1086.1, %._crit_edge825.unr-lcssa ]
  %indvars.iv1081.epil.init = phi i64 [ %i.wd, %.lr.ph824 ], [ %indvars.iv.next1082.1, %._crit_edge825.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1611)
  %i.ws = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv1085.epil.init
  %i.wt = load float, ptr %i.ws, align 4
  %i.wu = getelementptr [4 x i8], ptr %4, i64 %indvars.iv1089.epil.init ; 2 uses
  %i.wv = getelementptr i8, ptr %i.wu, i64 -4
  store float %i.wt, ptr %i.wv, align 4
  %i.ww = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv1081.epil.init
  %i.wx = load float, ptr %i.ww, align 4
  store float %i.wx, ptr %i.wu, align 4
  br label %._crit_edge825

._crit_edge825:                                   ; preds = %._crit_edge825.unr-lcssa, %.epil.preheader1607
  %i.wy = add nuw nsw i32 %.8829, 1               ; 2 uses
  %indvars.iv.next1080 = sub i32 %indvars.iv1079, %i.n
  %indvars.iv.next1084 = add i32 %indvars.iv1083, %i.n
  %indvars.iv.next1088 = add i32 %indvars.iv1087, %i.vy
  %exitcond1097.not = icmp eq i32 %i.wy, %i.k
  br i1 %exitcond1097.not, label %._crit_edge832.split, label %.lr.ph824, !llvm.loop !1059

._crit_edge832.split:                             ; preds = %._crit_edge825, %.loopexit663
  br i1 %i.p, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %._crit_edge832.split
  %i.wz = icmp slt i32 %i.m, %2
  br i1 %i.wz, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.lo, label %.lr.ph848, label %.loopexit

.lr.ph848:                                        ; preds = %bb.h
  %i.xa = icmp slt i32 %2, 1
  %i.xb = icmp slt i32 %0, 3
  %brmerge890 = or i1 %i.xa, %i.xb
  br i1 %brmerge890, label %.loopexit, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph848
  %i.xc = sub nsw i32 0, %0
  %i.xd = zext nneg i32 %0 to i64                 ; 3 uses
  %i.xe = mul i32 %i.n, %i.og
  %i.xf = sext i32 %i.o to i64
  br label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge841
  %indvars.iv1109 = phi i32 [ %i.vy, %.preheader.lr.ph.preheader ], [ %indvars.iv.next1110, %._crit_edge841 ] ; 2 uses
  %indvars.iv1105 = phi i32 [ %i.n, %.preheader.lr.ph.preheader ], [ %indvars.iv.next1106, %._crit_edge841 ] ; 2 uses
  %indvars.iv1101 = phi i32 [ %i.xe, %.preheader.lr.ph.preheader ], [ %indvars.iv.next1102, %._crit_edge841 ] ; 2 uses
  %.9846 = phi i32 [ 1, %.preheader.lr.ph.preheader ], [ %i.yi, %._crit_edge841 ]
  %.11845 = phi i32 [ %i.xc, %.preheader.lr.ph.preheader ], [ %i.xj, %._crit_edge841 ]
  %i.xg = sext i32 %indvars.iv1101 to i64
  %i.xh = sext i32 %indvars.iv1105 to i64
  %i.xi = sext i32 %indvars.iv1109 to i64
  %i.xj = add nsw i32 %.11845, %i.vy              ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge835
  %indvars.iv1111 = phi i64 [ %i.xi, %.preheader.lr.ph ], [ %indvars.iv.next1112, %._crit_edge835 ] ; 2 uses
  %indvars.iv1107 = phi i64 [ %i.xh, %.preheader.lr.ph ], [ %indvars.iv.next1108, %._crit_edge835 ] ; 2 uses
  %indvars.iv1103 = phi i64 [ %i.xg, %.preheader.lr.ph ], [ %indvars.iv.next1104, %._crit_edge835 ] ; 2 uses
  %.9567840 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.yh, %._crit_edge835 ]
  %.5636836 = phi i32 [ %i.xj, %.preheader.lr.ph ], [ %i.yg, %._crit_edge835 ] ; 2 uses
  %i.xk = add i32 %.5636836, %0
  %invariant.gep = getelementptr [4 x i8], ptr %7, i64 %indvars.iv1107
  %invariant.gep1195 = getelementptr [4 x i8], ptr %7, i64 %indvars.iv1103
  %invariant.gep1197 = getelementptr [4 x i8], ptr %4, i64 %indvars.iv1111
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %bb.i
  %indvars.iv1098 = phi i64 [ 2, %.preheader ], [ %indvars.iv.next1099, %bb.i ] ; 5 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv1098 ; 3 uses
end_hunk_1
begin_hunk_2_@dradb4:bb.a
  %wide.vec784 = load <8 x float>, ptr %i.mi, align 4, !alias.scope !1096, !noalias !1085 ; 2 uses
  %reverse786 = shufflevector <8 x float> %wide.vec784, <8 x float> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0> ; 2 uses
  %reverse788 = shufflevector <8 x float> %wide.vec784, <8 x float> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1> ; 2 uses
  %i.mj = fsub <4 x float> %strided.vec783, %reverse788 ; 2 uses
  %i.mk = fadd <4 x float> %strided.vec783, %reverse788 ; 2 uses
  %i.ml = fsub <4 x float> %strided.vec, %reverse ; 2 uses
  %i.mm = fadd <4 x float> %strided.vec, %reverse ; 2 uses
  %i.mn = fsub <4 x float> %strided.vec782, %reverse786 ; 2 uses
  %i.mo = fadd <4 x float> %strided.vec782, %reverse786 ; 2 uses
  %i.mp = fadd <4 x float> %i.mm, %i.mo
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.mb
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 4
  %i.ms = fsub <4 x float> %i.mm, %i.mo           ; 2 uses
  %i.mt = fadd <4 x float> %i.mg, %i.mj
  %interleaved.vec = shufflevector <4 x float> %i.mp, <4 x float> %i.mt, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.mr, align 4
  %i.mu = fsub <4 x float> %i.mg, %i.mj           ; 2 uses
  %i.mv = fsub <4 x float> %i.ml, %i.mk           ; 2 uses
  %i.mw = fadd <4 x float> %i.mk, %i.ml           ; 2 uses
  %i.mx = fadd <4 x float> %i.mf, %i.mn           ; 2 uses
  %i.my = fsub <4 x float> %i.mf, %i.mn           ; 2 uses
  %i.mz = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ma ; 2 uses
  %wide.vec789 = load <8 x float>, ptr %i.mz, align 4, !alias.scope !1098, !noalias !1085 ; 2 uses
  %strided.vec790 = shufflevector <8 x float> %wide.vec789, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec791 = shufflevector <8 x float> %wide.vec789, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.na = fmul <4 x float> %i.mv, %strided.vec790
  %i.nb = fmul <4 x float> %i.mx, %strided.vec791
  %i.nc = fsub <4 x float> %i.na, %i.nb
  %.reass = add nuw nsw i64 %i.mb, %invariant.op  ; 2 uses
  %i.nd = getelementptr [4 x i8], ptr %3, i64 %.reass
  %i.ne = getelementptr i8, ptr %i.nd, i64 -4
  %wide.vec792 = load <8 x float>, ptr %i.mz, align 4, !alias.scope !1098, !noalias !1085 ; 2 uses
  %strided.vec793 = shufflevector <8 x float> %wide.vec792, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec794 = shufflevector <8 x float> %wide.vec792, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.nf = fmul <4 x float> %i.mx, %strided.vec793
  %i.ng = fmul <4 x float> %i.mv, %strided.vec794
  %i.nh = fadd <4 x float> %i.nf, %i.ng
  %interleaved.vec795 = shufflevector <4 x float> %i.nc, <4 x float> %i.nh, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec795, ptr %i.ne, align 4
  %i.ni = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ma ; 2 uses
  %wide.vec796 = load <8 x float>, ptr %i.ni, align 4, !alias.scope !1100, !noalias !1085 ; 2 uses
  %strided.vec797 = shufflevector <8 x float> %wide.vec796, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec798 = shufflevector <8 x float> %wide.vec796, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.nj = fmul <4 x float> %i.ms, %strided.vec797
  %i.nk = fmul <4 x float> %i.mu, %strided.vec798
  %i.nl = fsub <4 x float> %i.nj, %i.nk
  %i.nm = add nuw nsw i64 %.reass, %i.el          ; 2 uses
  %i.nn = getelementptr [4 x i8], ptr %3, i64 %i.nm
  %i.no = getelementptr i8, ptr %i.nn, i64 -4
  %wide.vec799 = load <8 x float>, ptr %i.ni, align 4, !alias.scope !1100, !noalias !1085 ; 2 uses
  %strided.vec800 = shufflevector <8 x float> %wide.vec799, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec801 = shufflevector <8 x float> %wide.vec799, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.np = fmul <4 x float> %i.mu, %strided.vec800
  %i.nq = fmul <4 x float> %i.ms, %strided.vec801
  %i.nr = fadd <4 x float> %i.np, %i.nq
  %interleaved.vec802 = shufflevector <4 x float> %i.nl, <4 x float> %i.nr, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec802, ptr %i.no, align 4
  %i.ns = getelementptr inbounds [4 x i8], ptr %6, i64 %i.ma ; 2 uses
  %wide.vec803 = load <8 x float>, ptr %i.ns, align 4, !alias.scope !1102, !noalias !1085 ; 2 uses
  %strided.vec804 = shufflevector <8 x float> %wide.vec803, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec805 = shufflevector <8 x float> %wide.vec803, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.nt = fmul <4 x float> %i.mw, %strided.vec804
  %i.nu = fmul <4 x float> %i.my, %strided.vec805
  %i.nv = fsub <4 x float> %i.nt, %i.nu
  %i.nw = getelementptr [4 x i8], ptr %invariant.gep313, i64 %i.nm
  %i.nx = getelementptr i8, ptr %i.nw, i64 -4
  %wide.vec806 = load <8 x float>, ptr %i.ns, align 4, !alias.scope !1102, !noalias !1085 ; 2 uses
  %strided.vec807 = shufflevector <8 x float> %wide.vec806, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec808 = shufflevector <8 x float> %wide.vec806, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ny = fmul <4 x float> %i.my, %strided.vec807
  %i.nz = fmul <4 x float> %i.mw, %strided.vec808
  %i.oa = fadd <4 x float> %i.ny, %i.nz
  %interleaved.vec809 = shufflevector <4 x float> %i.nv, <4 x float> %i.oa, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec809, ptr %i.nx, align 4
  %index.next810 = add nuw i64 %index775, 4       ; 2 uses
  %i.ob = icmp eq i64 %index.next810, %n.vec773
  br i1 %i.ob, label %middle.block811, label %vector.body774, !llvm.loop !1104

middle.block811:                                  ; preds = %vector.body774
  br i1 %cmp.n812, label %._crit_edge247, label %scalar.ph769.preheader

scalar.ph769.preheader:                           ; preds = %vector.memcheck396, %vector.scevcheck371, %.lr.ph246, %middle.block811
  %indvars.iv281.ph = phi i64 [ %indvars.iv279, %vector.memcheck396 ], [ %indvars.iv279, %vector.scevcheck371 ], [ %indvars.iv279, %.lr.ph246 ], [ %i.lv, %middle.block811 ]
  %indvars.iv277.ph = phi i64 [ %i.jl, %vector.memcheck396 ], [ %i.jl, %vector.scevcheck371 ], [ %i.jl, %.lr.ph246 ], [ %i.lw, %middle.block811 ]
  %indvars.iv273.ph = phi i64 [ %i.jk, %vector.memcheck396 ], [ %i.jk, %vector.scevcheck371 ], [ %i.jk, %.lr.ph246 ], [ %i.lx, %middle.block811 ]
  %indvars.iv271.ph = phi i64 [ %i.jk, %vector.memcheck396 ], [ %i.jk, %vector.scevcheck371 ], [ %i.jk, %.lr.ph246 ], [ %i.ly, %middle.block811 ]
  %indvars.iv267.ph = phi i64 [ %i.jj, %vector.memcheck396 ], [ %i.jj, %vector.scevcheck371 ], [ %i.jj, %.lr.ph246 ], [ %i.lz, %middle.block811 ]
  %indvars.iv263.ph = phi i64 [ 2, %vector.memcheck396 ], [ 2, %vector.scevcheck371 ], [ 2, %.lr.ph246 ], [ %i.jc, %middle.block811 ]
  br label %scalar.ph769

scalar.ph769:                                     ; preds = %scalar.ph769.preheader, %scalar.ph769
  %indvars.iv281 = phi i64 [ %indvars.iv.next282, %scalar.ph769 ], [ %indvars.iv281.ph, %scalar.ph769.preheader ] ; 2 uses
  %indvars.iv277 = phi i64 [ %indvars.iv.next278, %scalar.ph769 ], [ %indvars.iv277.ph, %scalar.ph769.preheader ] ; 2 uses
  %indvars.iv273 = phi i64 [ %indvars.iv.next274, %scalar.ph769 ], [ %indvars.iv273.ph, %scalar.ph769.preheader ] ; 2 uses
  %indvars.iv271 = phi i64 [ %indvars.iv.next272, %scalar.ph769 ], [ %indvars.iv271.ph, %scalar.ph769.preheader ] ; 2 uses
  %indvars.iv267 = phi i64 [ %indvars.iv.next268, %scalar.ph769 ], [ %indvars.iv267.ph, %scalar.ph769.preheader ] ; 2 uses
  %indvars.iv263 = phi i64 [ %indvars.iv.next264, %scalar.ph769 ], [ %indvars.iv263.ph, %scalar.ph769.preheader ] ; 3 uses
  %indvars.iv.next268 = add nsw i64 %indvars.iv267, 2 ; 2 uses
  %indvars.iv.next272 = add nsw i64 %indvars.iv271, 2 ; 2 uses
  %indvars.iv.next274 = add nsw i64 %indvars.iv273, -2 ; 2 uses
  %indvars.iv.next278 = add nsw i64 %indvars.iv277, -2 ; 2 uses
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 2 ; 3 uses
  %i.oc = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next268
  %i.od = load float, ptr %i.oc, align 4          ; 2 uses
  %i.oe = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next278
  %i.of = load float, ptr %i.oe, align 4          ; 2 uses
  %i.og = fadd float %i.od, %i.of                 ; 2 uses
  %i.oh = fsub float %i.od, %i.of                 ; 2 uses
  %i.oi = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next272
  %i.oj = load float, ptr %i.oi, align 4          ; 2 uses
  %i.ok = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next274
  %i.ol = load float, ptr %i.ok, align 4          ; 2 uses
  %i.om = fsub float %i.oj, %i.ol                 ; 2 uses
  %i.on = fadd float %i.oj, %i.ol                 ; 2 uses
  %i.oo = getelementptr [4 x i8], ptr %2, i64 %indvars.iv267
  %i.op = getelementptr i8, ptr %i.oo, i64 4
  %i.oq = load float, ptr %i.op, align 4          ; 2 uses
  %i.or = getelementptr [4 x i8], ptr %2, i64 %indvars.iv277
  %i.os = getelementptr i8, ptr %i.or, i64 -12
  %i.ot = load float, ptr %i.os, align 4          ; 2 uses
  %i.ou = fsub float %i.oq, %i.ot                 ; 2 uses
  %i.ov = fadd float %i.oq, %i.ot                 ; 2 uses
  %i.ow = getelementptr [4 x i8], ptr %2, i64 %indvars.iv271
  %i.ox = getelementptr i8, ptr %i.ow, i64 4
  %i.oy = load float, ptr %i.ox, align 4          ; 2 uses
  %i.oz = getelementptr [4 x i8], ptr %2, i64 %indvars.iv273
  %i.pa = getelementptr i8, ptr %i.oz, i64 -12
  %i.pb = load float, ptr %i.pa, align 4          ; 2 uses
  %i.pc = fsub float %i.oy, %i.pb                 ; 2 uses
  %i.pd = fadd float %i.oy, %i.pb                 ; 2 uses
  %i.pe = fadd float %i.ov, %i.pd
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv281
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 4
  store float %i.pe, ptr %i.pg, align 4
  %i.ph = fsub float %i.ov, %i.pd                 ; 2 uses
  %i.pi = fadd float %i.oh, %i.om
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next282
  store float %i.pi, ptr %i.pj, align 4
  %i.pk = fsub float %i.oh, %i.om                 ; 2 uses
  %i.pl = fsub float %i.ou, %i.on                 ; 2 uses
  %i.pm = fadd float %i.on, %i.ou                 ; 2 uses
  %i.pn = fadd float %i.og, %i.pc                 ; 2 uses
  %i.po = fsub float %i.og, %i.pc                 ; 2 uses
  %i.pp = add nsw i64 %indvars.iv263, -2          ; 3 uses
  %i.pq = getelementptr inbounds [4 x i8], ptr %4, i64 %i.pp ; 2 uses
  %i.pr = load float, ptr %i.pq, align 4
  %i.ps = fmul float %i.pl, %i.pr
  %i.pt = add nsw i64 %indvars.iv263, -1          ; 3 uses
  %i.pu = getelementptr inbounds [4 x i8], ptr %4, i64 %i.pt ; 2 uses
  %i.pv = load float, ptr %i.pu, align 4
  %i.pw = fmul float %i.pn, %i.pv
  %i.px = fsub float %i.ps, %i.pw
  %i.py = add nuw nsw i64 %indvars.iv.next282, %i.el ; 2 uses
  %i.pz = getelementptr [4 x i8], ptr %3, i64 %i.py ; 2 uses
  %i.qa = getelementptr i8, ptr %i.pz, i64 -4
  store float %i.px, ptr %i.qa, align 4
  %i.qb = load float, ptr %i.pq, align 4
  %i.qc = fmul float %i.pn, %i.qb
  %i.qd = load float, ptr %i.pu, align 4
  %i.qe = fmul float %i.pl, %i.qd
  %i.qf = fadd float %i.qc, %i.qe
  store float %i.qf, ptr %i.pz, align 4
  %i.qg = getelementptr inbounds [4 x i8], ptr %5, i64 %i.pp ; 2 uses
  %i.qh = load float, ptr %i.qg, align 4
  %i.qi = fmul float %i.ph, %i.qh
  %i.qj = getelementptr inbounds [4 x i8], ptr %5, i64 %i.pt ; 2 uses
  %i.qk = load float, ptr %i.qj, align 4
  %i.ql = fmul float %i.pk, %i.qk
  %i.qm = fsub float %i.qi, %i.ql
  %i.qn = add nuw nsw i64 %i.py, %i.el            ; 2 uses
  %i.qo = getelementptr [4 x i8], ptr %3, i64 %i.qn ; 2 uses
  %i.qp = getelementptr i8, ptr %i.qo, i64 -4
  store float %i.qm, ptr %i.qp, align 4
  %i.qq = load float, ptr %i.qg, align 4
  %i.qr = fmul float %i.pk, %i.qq
  %i.qs = load float, ptr %i.qj, align 4
  %i.qt = fmul float %i.ph, %i.qs
  %i.qu = fadd float %i.qr, %i.qt
  store float %i.qu, ptr %i.qo, align 4
  %i.qv = getelementptr inbounds [4 x i8], ptr %6, i64 %i.pp ; 2 uses
  %i.qw = load float, ptr %i.qv, align 4
  %i.qx = fmul float %i.pm, %i.qw
  %i.qy = getelementptr inbounds [4 x i8], ptr %6, i64 %i.pt ; 2 uses
  %i.qz = load float, ptr %i.qy, align 4
  %i.ra = fmul float %i.po, %i.qz
  %i.rb = fsub float %i.qx, %i.ra
  %gep314 = getelementptr [4 x i8], ptr %invariant.gep313, i64 %i.qn ; 2 uses
  %i.rc = getelementptr i8, ptr %gep314, i64 -4
  store float %i.rb, ptr %i.rc, align 4
  %i.rd = load float, ptr %i.qv, align 4
  %i.re = fmul float %i.po, %i.rd
  %i.rf = load float, ptr %i.qy, align 4
  %i.rg = fmul float %i.pm, %i.rf
  %i.rh = fadd float %i.re, %i.rg
  store float %i.rh, ptr %gep314, align 4
  %indvars.iv.next264 = add nuw nsw i64 %indvars.iv263, 2 ; 2 uses
  %i.ri = icmp samesign ult i64 %indvars.iv.next264, %i.ek
  br i1 %i.ri, label %scalar.ph769, label %._crit_edge247, !llvm.loop !1105

._crit_edge247:                                   ; preds = %scalar.ph769, %middle.block811
  %indvars.iv.next280 = add i64 %indvars.iv279, %i.ek
  %i.rj = add nuw nsw i32 %.1249, 1               ; 2 uses
  %indvars.iv.next266 = add i32 %indvars.iv265, %i.b
  %indvars.iv.next270 = add i32 %indvars.iv269, %i.b
  %indvars.iv.next276 = add i32 %indvars.iv275, %i.b
  %exitcond295.not = icmp eq i32 %i.rj, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond295.not, label %._crit_edge251.split, label %.lr.ph246, !llvm.loop !1106

._crit_edge251.split:                             ; preds = %._crit_edge247, %.preheader
  %.not = trunc i32 %0 to i1
  %brmerge = or i1 %i.d, %.not
  br i1 %brmerge, label %.loopexit, label %.lr.ph257.preheader

bb.c:                                             ; preds = %bb.b
  br i1 %i.d, label %.loopexit, label %.lr.ph257.preheader

.lr.ph257.preheader:                              ; preds = %._crit_edge251.split, %bb.c
  %i.rk = mul i32 %0, 3
  %i.rl = add nsw i32 %0, -1
  %i.rm = zext nneg i32 %0 to i64                 ; 2 uses
  %i.rn = sext i32 %i.b to i64                    ; 2 uses
  %i.ro = zext nneg i32 %i.rl to i64
  %i.rp = zext nneg i32 %i.a to i64               ; 3 uses
  %i.rq = sext i32 %i.rk to i64
  %invariant.gep315 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.rp
  br label %.lr.ph257

.lr.ph257:                                        ; preds = %.lr.ph257.preheader, %.lr.ph257
  %indvars.iv300 = phi i64 [ %i.rq, %.lr.ph257.preheader ], [ %indvars.iv.next301, %.lr.ph257 ] ; 2 uses
  %indvars.iv298 = phi i64 [ %i.ro, %.lr.ph257.preheader ], [ %indvars.iv.next299, %.lr.ph257 ] ; 3 uses
  %indvars.iv296 = phi i64 [ %i.rm, %.lr.ph257.preheader ], [ %indvars.iv.next297, %.lr.ph257 ] ; 2 uses
  %.2255 = phi i32 [ 0, %.lr.ph257.preheader ], [ %i.so, %.lr.ph257 ]
  %i.rr = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv296 ; 2 uses
  %i.rs = load float, ptr %i.rr, align 4          ; 2 uses
  %i.rt = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv300 ; 2 uses
  %i.ru = load float, ptr %i.rt, align 4          ; 2 uses
  %i.rv = fadd float %i.rs, %i.ru                 ; 2 uses
  %i.rw = fsub float %i.ru, %i.rs                 ; 2 uses
  %i.rx = getelementptr i8, ptr %i.rr, i64 -4
  %i.ry = load float, ptr %i.rx, align 4          ; 2 uses
  %i.rz = getelementptr i8, ptr %i.rt, i64 -4
  %i.sa = load float, ptr %i.rz, align 4          ; 2 uses
  %i.sb = fsub float %i.ry, %i.sa                 ; 2 uses
  %i.sc = fadd float %i.ry, %i.sa                 ; 2 uses
  %i.sd = fadd float %i.sc, %i.sc
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv298
  store float %i.sd, ptr %i.se, align 4
  %i.sf = fsub float %i.sb, %i.rv
  %i.sg = fmul float %i.sf, f0x3FB504F3
  %i.sh = add nuw nsw i64 %indvars.iv298, %i.rp   ; 2 uses
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.sh
  store float %i.sg, ptr %i.si, align 4
  %i.sj = fadd float %i.rw, %i.rw
  %i.sk = add nuw nsw i64 %i.sh, %i.rp            ; 2 uses
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.sk
  store float %i.sj, ptr %i.sl, align 4
  %i.sm = fadd float %i.rv, %i.sb
  %i.sn = fmul float %i.sm, f0xBFB504F3
  %gep316 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep315, i64 %i.sk
  store float %i.sn, ptr %gep316, align 4
  %indvars.iv.next299 = add nuw nsw i64 %indvars.iv298, %i.rm
  %indvars.iv.next297 = add nsw i64 %indvars.iv296, %i.rn
  %indvars.iv.next301 = add nsw i64 %indvars.iv300, %i.rn
  %i.so = add nuw nsw i32 %.2255, 1               ; 2 uses
  %exitcond307.not = icmp eq i32 %i.so, %1
  br i1 %exitcond307.not, label %.loopexit, label %.lr.ph257, !llvm.loop !1107

.loopexit:                                        ; preds = %.lr.ph257, %._crit_edge251.split, %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @dradb2(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #43 {
bb.a:
  %i.a = mul i32 %1, %0                           ; 3 uses
  %i.b = shl i32 %0, 1                            ; 5 uses
  %i.c = add nsw i32 %i.b, -1                     ; 5 uses
  %i.d = icmp sgt i32 %1, 0                       ; 3 uses
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = sext i32 %0 to i64
  %i.f = sext i32 %i.a to i64
  %invariant.gep = getelementptr [4 x i8], ptr %3, i64 %i.f ; 2 uses
  %i.g = zext nneg i32 %1 to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %1, 17
  br i1 %min.iters.check, label %.lr.ph.preheader356, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %ident.check = icmp ne i32 %0, 1
  %i.h = shl nuw i32 %1, 1
  %mul.result = add i32 %i.h, -2
  %i.i = icmp slt i32 %mul.result, 0
  %i.j = or i1 %ident.check, %i.i
  br i1 %i.j, label %.lr.ph.preheader356, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.k = zext nneg i32 %1 to i64
  %i.l = shl nuw nsw i64 %i.k, 2                  ; 2 uses
  %scevgep = getelementptr i8, ptr %3, i64 %i.l
  %i.m = add nsw i32 %1, -1
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = shl nuw nsw i64 %i.n, 2                  ; 2 uses
  %i.p = getelementptr i8, ptr %3, i64 %i.l
  %i.q = getelementptr i8, ptr %i.p, i64 %i.o
  %scevgep180 = getelementptr i8, ptr %i.q, i64 4
  %i.r = shl nuw nsw i64 %i.n, 3
  %i.s = getelementptr i8, ptr %2, i64 %i.r
  %scevgep181 = getelementptr i8, ptr %i.s, i64 8 ; 2 uses
  %i.t = getelementptr i8, ptr %3, i64 %i.o
  %scevgep182 = getelementptr i8, ptr %i.t, i64 4
  %bound0 = icmp ult ptr %scevgep, %scevgep181
  %bound1 = icmp ult ptr %2, %scevgep180
  %found.conflict = and i1 %bound0, %bound1
  %bound0183 = icmp ult ptr %3, %scevgep181
  %bound1184 = icmp ult ptr %2, %scevgep182
  %found.conflict185 = and i1 %bound0183, %bound1184
  %conflict.rdx = or i1 %found.conflict, %found.conflict185
  br i1 %conflict.rdx, label %.lr.ph.preheader356, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %i.g, 3                     ; 2 uses
  %i.u = icmp eq i64 %n.mod.vf, 0
  %i.v = select i1 %i.u, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.g, %i.v                 ; 3 uses
  %i.w = trunc i64 %n.vec to i32                  ; 2 uses
  %i.x = shl i32 %i.w, 1
  %invariant.op = or disjoint i32 2, %i.c
  %invariant.op358 = or disjoint i32 4, %i.c
  %invariant.op360 = or disjoint i32 6, %i.c
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.y = trunc i64 %index to i32
  %i.z = shl i32 %i.y, 1                          ; 5 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %2, i64 %i.aa ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.ab, align 4, !alias.scope !1108
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ac = or disjoint i32 %i.c, %i.z
  %.reass = or disjoint i32 %i.z, %invariant.op
  %.reass359 = or disjoint i32 %i.z, %invariant.op358
  %.reass361 = or disjoint i32 %i.z, %invariant.op360
  %i.ad = sext i32 %i.ac to i64
  %i.ae = sext i32 %.reass to i64
  %i.af = sext i32 %.reass359 to i64
  %i.ag = sext i32 %.reass361 to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ad ; 2 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ae ; 2 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %2, i64 %i.af ; 2 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ag ; 2 uses
  %i.al = load float, ptr %i.ah, align 4, !alias.scope !1108
  %i.am = load float, ptr %i.ai, align 4, !alias.scope !1108
  %i.an = load float, ptr %i.aj, align 4, !alias.scope !1108
  %i.ao = load float, ptr %i.ak, align 4, !alias.scope !1108
  %i.ap = insertelement <4 x float> poison, float %i.al, i64 0
  %i.aq = insertelement <4 x float> %i.ap, float %i.am, i64 1
  %i.ar = insertelement <4 x float> %i.aq, float %i.an, i64 2
  %i.as = insertelement <4 x float> %i.ar, float %i.ao, i64 3
  %i.at = fadd <4 x float> %strided.vec, %i.as
  %i.au = getelementptr inbounds [4 x i8], ptr %3, i64 %index
  store <4 x float> %i.at, ptr %i.au, align 4, !alias.scope !1111, !noalias !1108
  %wide.vec186 = load <8 x float>, ptr %i.ab, align 4, !alias.scope !1108
  %strided.vec187 = shufflevector <8 x float> %wide.vec186, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.av = load float, ptr %i.ah, align 4, !alias.scope !1108
  %i.aw = load float, ptr %i.ai, align 4, !alias.scope !1108
  %i.ax = load float, ptr %i.aj, align 4, !alias.scope !1108
  %i.ay = load float, ptr %i.ak, align 4, !alias.scope !1108
  %i.az = insertelement <4 x float> poison, float %i.av, i64 0
  %i.ba = insertelement <4 x float> %i.az, float %i.aw, i64 1
  %i.bb = insertelement <4 x float> %i.ba, float %i.ax, i64 2
  %i.bc = insertelement <4 x float> %i.bb, float %i.ay, i64 3
  %i.bd = fsub <4 x float> %strided.vec187, %i.bc
  %i.be = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  store <4 x float> %i.bd, ptr %i.be, align 4, !alias.scope !1113, !noalias !1108
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %.lr.ph.preheader356, label %vector.body, !llvm.loop !1115

.lr.ph.preheader356:                              ; preds = %vector.body, %vector.memcheck, %vector.scevcheck, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  %.0100115.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %i.w, %vector.body ]
  %.0105114.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %i.x, %vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader356, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader356 ] ; 3 uses
  %.0100115 = phi i32 [ %i.bu, %.lr.ph ], [ %.0100115.ph, %.lr.ph.preheader356 ]
  %.0105114 = phi i32 [ %i.bt, %.lr.ph ], [ %.0105114.ph, %.lr.ph.preheader356 ] ; 2 uses
  %i.bg = sext i32 %.0105114 to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bg ; 2 uses
  %i.bi = load float, ptr %i.bh, align 4
  %i.bj = add nsw i32 %i.c, %.0105114
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bk ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4
  %i.bn = fadd float %i.bi, %i.bm
  %i.bo = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv
  store float %i.bn, ptr %i.bo, align 4
end_hunk_2
begin_hunk_3_@dradb3:bb.a

._crit_edge162:                                   ; preds = %scalar.ph473, %middle.block511
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, %i.di
  %i.ke = add nuw nsw i32 %.1164, 1               ; 2 uses
  %indvars.iv.next179 = add i32 %indvars.iv178, %i.d
  %indvars.iv.next185 = add i32 %indvars.iv184, %i.d
  %indvars.iv.next189 = add i32 %indvars.iv188, %0
  %indvars.iv.next193 = add i32 %indvars.iv192, %0
  %exitcond214.not = icmp eq i32 %i.ke, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond214.not, label %.loopexit, label %.lr.ph161, !llvm.loop !1156

.loopexit:                                        ; preds = %._crit_edge162, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define internal fastcc void @dradbg(i32 noundef %0, i32 noundef range(i32 5, 3) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) %7, ptr nofree noundef captures(none) %8, ptr nofree noundef readonly captures(none) %9) unnamed_addr #56 {
bb.a:
  %i.a = ptrtoaddr ptr %6 to i64                  ; 7 uses
  %i.b = ptrtoaddr ptr %8 to i64                  ; 7 uses
  %i.c = mul i32 %1, %0                           ; 7 uses
  %i.d = mul i32 %2, %0                           ; 30 uses
  %i.e = sitofp i32 %1 to float
  %i.f = fdiv float f0x40C90FDB, %i.e
  %i.g = fpext float %i.f to double               ; 2 uses
  %i.h = tail call double @cos(double noundef %i.g) #62
  %i.i = fptrunc double %i.h to float             ; 2 uses
  %i.j = tail call double @sin(double noundef %i.g) #62
  %i.k = fptrunc double %i.j to float             ; 2 uses
  %i.l = add i32 %0, -1                           ; 2 uses
  %i.m = ashr i32 %i.l, 1                         ; 3 uses
  %i.n = add nsw i32 %1, 1
  %i.o = ashr i32 %i.n, 1                         ; 11 uses
  %i.p = icmp slt i32 %0, %2
  br i1 %i.p, label %.preheader666, label %.preheader669

.preheader669:                                    ; preds = %bb.a
  %i.q = icmp sgt i32 %2, 0
  %i.r = icmp sgt i32 %0, 0
  %or.cond = and i1 %i.q, %i.r
  br i1 %or.cond, label %.preheader668.preheader, label %.loopexit667

.preheader668.preheader:                          ; preds = %.preheader669
  %i.s = zext nneg i32 %0 to i64                  ; 4 uses
  %i.t = sext i32 %i.c to i64                     ; 2 uses
  %i.u = add nsw i32 %2, -1
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = mul nuw nsw i64 %i.s, %i.v
  %i.x = zext i32 %i.l to i64                     ; 2 uses
  %i.y = add nuw i64 %i.w, %i.x
  %i.z = shl i64 %i.y, 2
  %i.aa = getelementptr i8, ptr %7, i64 %i.z
  %scevgep = getelementptr i8, ptr %i.aa, i64 4
  %i.ab = mul nsw i64 %i.t, %i.v
  %i.ac = add i64 %i.ab, %i.x
  %i.ad = shl i64 %i.ac, 2
  %i.ae = getelementptr i8, ptr %4, i64 %i.ad
  %scevgep1203 = getelementptr i8, ptr %i.ae, i64 4
  %min.iters.check = icmp ult i32 %0, 8
  %bound0 = icmp ult ptr %7, %scevgep1203
  %bound1 = icmp ult ptr %4, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.c, 0
  %i.af = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.s, 2147483640               ; 5 uses
  %i.ag = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.s
  br label %.preheader668

.preheader666:                                    ; preds = %bb.a
  %i.ah = icmp sgt i32 %0, 0
  %i.ai = icmp sgt i32 %2, 0
  %or.cond861 = and i1 %i.ah, %i.ai
  br i1 %or.cond861, label %.preheader665.preheader, label %.loopexit667

.preheader665.preheader:                          ; preds = %.preheader666
  %i.aj = zext nneg i32 %0 to i64                 ; 7 uses
  %i.ak = sext i32 %i.c to i64                    ; 5 uses
  %i.al = add nsw i32 %2, -1
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = add nuw nsw i64 %i.aj, %i.am
  %i.ao = shl nuw nsw i64 %i.an, 2
  %scevgep1208 = getelementptr i8, ptr %7, i64 %i.ao
  %i.ap = sext i32 %1 to i64
  %i.aq = mul nsw i64 %i.ap, %i.am
  %i.ar = sext i32 %1 to i64                      ; 5 uses
  %i.as = zext nneg i32 %2 to i64                 ; 2 uses
  %min.iters.check1216 = icmp ugt i32 %2, 3
  %ident.check.not = icmp eq i32 %0, 1
  %or.cond1768 = and i1 %min.iters.check1216, %ident.check.not
  %n.vec1219 = and i64 %i.as, 2147483644          ; 5 uses
  %i.at = mul nsw i64 %n.vec1219, %i.ar
  %i.au = trunc nuw nsw i64 %n.vec1219 to i32
  %invariant.gep = getelementptr [4 x i8], ptr %4, i64 %i.ar
  %.idx = shl nsw i64 %i.ar, 3
  %invariant.gep1820 = getelementptr i8, ptr %4, i64 %.idx
  %.idx1763 = mul nsw i64 %i.ar, 12
  %invariant.gep1822 = getelementptr i8, ptr %4, i64 %.idx1763
  %cmp.n1224 = icmp eq i64 %n.vec1219, %i.as
  br label %.preheader665

.preheader668:                                    ; preds = %.preheader668.preheader, %._crit_edge
  %indvars.iv892 = phi i64 [ 0, %.preheader668.preheader ], [ %indvars.iv.next893, %._crit_edge ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.preheader668.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %.0543676 = phi i32 [ 0, %.preheader668.preheader ], [ %i.ce, %._crit_edge ]
  %brmerge1870 = select i1 %min.iters.check, i1 true, i1 %i.af
  br i1 %brmerge1870, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader668
  %i.av = add i64 %indvars.iv892, %n.vec
  %i.aw = add nuw i64 %indvars.iv, %n.vec
  %i.ax = getelementptr [4 x i8], ptr %4, i64 %indvars.iv892
  %i.ay = getelementptr [4 x i8], ptr %7, i64 %indvars.iv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.az = getelementptr [4 x i8], ptr %i.ax, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load = load <4 x float>, ptr %i.az, align 4, !alias.scope !1157
  %wide.load1204 = load <4 x float>, ptr %i.ba, align 4, !alias.scope !1157
  %i.bb = getelementptr [4 x i8], ptr %i.ay, i64 %index ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <4 x float> %wide.load, ptr %i.bb, align 4, !alias.scope !1160, !noalias !1157
  store <4 x float> %wide.load1204, ptr %i.bc, align 4, !alias.scope !1160, !noalias !1157
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !1162

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader668, %middle.block
  %indvars.iv894.ph = phi i64 [ %i.av, %middle.block ], [ %indvars.iv892, %.preheader668 ] ; 2 uses
  %indvars.iv890.ph = phi i64 [ %i.aw, %middle.block ], [ %indvars.iv, %.preheader668 ] ; 2 uses
  %.0533673.ph = phi i32 [ %i.ag, %middle.block ], [ 0, %.preheader668 ] ; 4 uses
  %i.be = sub i32 %0, %.0533673.ph
  %xtraiter = and i32 %i.be, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv894.prol = phi i64 [ %indvars.iv.next895.prol, %scalar.ph.prol ], [ %indvars.iv894.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv890.prol = phi i64 [ %indvars.iv.next891.prol, %scalar.ph.prol ], [ %indvars.iv890.ph, %scalar.ph.preheader ] ; 2 uses
  %.0533673.prol = phi i32 [ %i.bi, %scalar.ph.prol ], [ %.0533673.ph, %scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bf = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv894.prol
  %i.bg = load float, ptr %i.bf, align 4
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv890.prol
  store float %i.bg, ptr %i.bh, align 4
  %indvars.iv.next891.prol = add nuw nsw i64 %indvars.iv890.prol, 1 ; 2 uses
  %indvars.iv.next895.prol = add nsw i64 %indvars.iv894.prol, 1 ; 2 uses
  %i.bi = add nuw nsw i32 %.0533673.prol, 1       ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1163

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv894.unr = phi i64 [ %indvars.iv894.ph, %scalar.ph.preheader ], [ %indvars.iv.next895.prol, %scalar.ph.prol ]
  %indvars.iv890.unr = phi i64 [ %indvars.iv890.ph, %scalar.ph.preheader ], [ %indvars.iv.next891.prol, %scalar.ph.prol ]
  %.0533673.unr = phi i32 [ %.0533673.ph, %scalar.ph.preheader ], [ %i.bi, %scalar.ph.prol ]
  %i.bj = sub i32 %.0533673.ph, %0
  %i.bk = icmp ugt i32 %i.bj, -4
  br i1 %i.bk, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv894 = phi i64 [ %indvars.iv.next895.3, %scalar.ph ], [ %indvars.iv894.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv890 = phi i64 [ %indvars.iv.next891.3, %scalar.ph ], [ %indvars.iv890.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.0533673 = phi i32 [ %i.cd, %scalar.ph ], [ %.0533673.unr, %scalar.ph.prol.loopexit ]
  %i.bl = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv894
  %i.bm = load float, ptr %i.bl, align 4
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv890
  store float %i.bm, ptr %i.bn, align 4
  %i.bo = getelementptr [4 x i8], ptr %4, i64 %indvars.iv894
  %i.bp = getelementptr i8, ptr %i.bo, i64 4
  %i.bq = load float, ptr %i.bp, align 4
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv890
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store float %i.bq, ptr %i.bs, align 4
  %i.bt = getelementptr [4 x i8], ptr %4, i64 %indvars.iv894
  %i.bu = getelementptr i8, ptr %i.bt, i64 8
  %i.bv = load float, ptr %i.bu, align 4
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv890
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store float %i.bv, ptr %i.bx, align 4
  %i.by = getelementptr [4 x i8], ptr %4, i64 %indvars.iv894
  %i.bz = getelementptr i8, ptr %i.by, i64 12
  %i.ca = load float, ptr %i.bz, align 4
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv890
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  store float %i.ca, ptr %i.cc, align 4
  %indvars.iv.next891.3 = add nuw nsw i64 %indvars.iv890, 4
  %indvars.iv.next895.3 = add nsw i64 %indvars.iv894, 4
  %i.cd = add nuw nsw i32 %.0533673, 4            ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.cd, %0
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !1164

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.s
  %indvars.iv.next893 = add i64 %indvars.iv892, %i.t
  %i.ce = add nuw nsw i32 %.0543676, 1            ; 2 uses
  %exitcond902.not = icmp eq i32 %i.ce, %2
  br i1 %exitcond902.not, label %.loopexit667, label %.preheader668, !llvm.loop !1165

.preheader665:                                    ; preds = %.preheader665.preheader, %._crit_edge680
  %indvars.iv903 = phi i64 [ 0, %.preheader665.preheader ], [ %indvars.iv.next904, %._crit_edge680 ] ; 11 uses
  br i1 %or.cond1768, label %vector.memcheck1207, label %scalar.ph1215.preheader

vector.memcheck1207:                              ; preds = %.preheader665
  %i.cf = shl nuw nsw i64 %indvars.iv903, 2
  %scevgep1209 = getelementptr i8, ptr %4, i64 %i.cf ; 4 uses
  %i.cg = add i64 %i.aq, %indvars.iv903
  %i.ch = shl i64 %i.cg, 2
  %scevgep1210 = getelementptr i8, ptr %4, i64 %i.ch ; 4 uses
  %i.ci = icmp ugt ptr %scevgep1209, %scevgep1210
  %umax = select i1 %i.ci, ptr %scevgep1209, ptr %scevgep1210
  %scevgep1211 = getelementptr i8, ptr %umax, i64 4
  %i.cj = icmp ult ptr %scevgep1209, %scevgep1210
  %umin = select i1 %i.cj, ptr %scevgep1209, ptr %scevgep1210
  %bound01212 = icmp ult ptr %7, %scevgep1211
  %bound11213 = icmp ult ptr %umin, %scevgep1208
  %found.conflict1214 = and i1 %bound01212, %bound11213
  br i1 %found.conflict1214, label %scalar.ph1215.preheader, label %vector.ph1217

vector.ph1217:                                    ; preds = %vector.memcheck1207
  %i.ck = add i64 %indvars.iv903, %i.at
  %i.cl = add nuw i64 %indvars.iv903, %n.vec1219
  %i.cm = getelementptr [4 x i8], ptr %7, i64 %indvars.iv903
  br label %vector.body1220

vector.body1220:                                  ; preds = %vector.body1220, %vector.ph1217
  %index1221 = phi i64 [ 0, %vector.ph1217 ], [ %index.next1222, %vector.body1220 ] ; 3 uses
  %i.cn = mul i64 %index1221, %i.ar
  %i.co = add i64 %indvars.iv903, %i.cn           ; 4 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %4, i64 %i.co
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.co
  %gep1821 = getelementptr [4 x i8], ptr %invariant.gep1820, i64 %i.co
  %gep1823 = getelementptr [4 x i8], ptr %invariant.gep1822, i64 %i.co
  %i.cq = load float, ptr %i.cp, align 4, !alias.scope !1166
  %i.cr = load float, ptr %gep, align 4, !alias.scope !1166
  %i.cs = load float, ptr %gep1821, align 4, !alias.scope !1166
  %i.ct = load float, ptr %gep1823, align 4, !alias.scope !1166
  %i.cu = insertelement <4 x float> poison, float %i.cq, i64 0
  %i.cv = insertelement <4 x float> %i.cu, float %i.cr, i64 1
  %i.cw = insertelement <4 x float> %i.cv, float %i.cs, i64 2
  %i.cx = insertelement <4 x float> %i.cw, float %i.ct, i64 3
  %i.cy = getelementptr [4 x i8], ptr %i.cm, i64 %index1221
  store <4 x float> %i.cx, ptr %i.cy, align 4, !alias.scope !1169, !noalias !1166
  %index.next1222 = add nuw i64 %index1221, 4     ; 2 uses
  %i.cz = icmp eq i64 %index.next1222, %n.vec1219
  br i1 %i.cz, label %middle.block1223, label %vector.body1220, !llvm.loop !1171

middle.block1223:                                 ; preds = %vector.body1220
  br i1 %cmp.n1224, label %._crit_edge680, label %scalar.ph1215.preheader

scalar.ph1215.preheader:                          ; preds = %vector.memcheck1207, %.preheader665, %middle.block1223
  %indvars.iv907.ph = phi i64 [ %indvars.iv903, %vector.memcheck1207 ], [ %indvars.iv903, %.preheader665 ], [ %i.ck, %middle.block1223 ] ; 2 uses
  %indvars.iv905.ph = phi i64 [ %indvars.iv903, %vector.memcheck1207 ], [ %indvars.iv903, %.preheader665 ], [ %i.cl, %middle.block1223 ] ; 2 uses
  %.1544679.ph = phi i32 [ 0, %vector.memcheck1207 ], [ 0, %.preheader665 ], [ %i.au, %middle.block1223 ] ; 4 uses
  %i.da = sub i32 %2, %.1544679.ph
  %xtraiter1803 = and i32 %i.da, 3                ; 2 uses
  %lcmp.mod1804.not = icmp eq i32 %xtraiter1803, 0
  br i1 %lcmp.mod1804.not, label %scalar.ph1215.prol.loopexit, label %scalar.ph1215.prol

scalar.ph1215.prol:                               ; preds = %scalar.ph1215.preheader, %scalar.ph1215.prol
  %indvars.iv907.prol = phi i64 [ %indvars.iv.next908.prol, %scalar.ph1215.prol ], [ %indvars.iv907.ph, %scalar.ph1215.preheader ] ; 2 uses
  %indvars.iv905.prol = phi i64 [ %indvars.iv.next906.prol, %scalar.ph1215.prol ], [ %indvars.iv905.ph, %scalar.ph1215.preheader ] ; 2 uses
  %.1544679.prol = phi i32 [ %i.de, %scalar.ph1215.prol ], [ %.1544679.ph, %scalar.ph1215.preheader ]
  %prol.iter1805 = phi i32 [ %prol.iter1805.next, %scalar.ph1215.prol ], [ 0, %scalar.ph1215.preheader ]
  %i.db = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv907.prol
  %i.dc = load float, ptr %i.db, align 4
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv905.prol
  store float %i.dc, ptr %i.dd, align 4
  %indvars.iv.next906.prol = add nuw nsw i64 %indvars.iv905.prol, %i.aj ; 2 uses
  %indvars.iv.next908.prol = add nsw i64 %indvars.iv907.prol, %i.ak ; 2 uses
  %i.de = add nuw nsw i32 %.1544679.prol, 1       ; 2 uses
  %prol.iter1805.next = add i32 %prol.iter1805, 1 ; 2 uses
  %prol.iter1805.cmp.not = icmp eq i32 %prol.iter1805.next, %xtraiter1803
  br i1 %prol.iter1805.cmp.not, label %scalar.ph1215.prol.loopexit, label %scalar.ph1215.prol, !llvm.loop !1172

scalar.ph1215.prol.loopexit:                      ; preds = %scalar.ph1215.prol, %scalar.ph1215.preheader
  %indvars.iv907.unr = phi i64 [ %indvars.iv907.ph, %scalar.ph1215.preheader ], [ %indvars.iv.next908.prol, %scalar.ph1215.prol ]
  %indvars.iv905.unr = phi i64 [ %indvars.iv905.ph, %scalar.ph1215.preheader ], [ %indvars.iv.next906.prol, %scalar.ph1215.prol ]
  %.1544679.unr = phi i32 [ %.1544679.ph, %scalar.ph1215.preheader ], [ %i.de, %scalar.ph1215.prol ]
  %i.df = sub i32 %.1544679.ph, %2
  %i.dg = icmp ugt i32 %i.df, -4
  br i1 %i.dg, label %._crit_edge680, label %scalar.ph1215

scalar.ph1215:                                    ; preds = %scalar.ph1215.prol.loopexit, %scalar.ph1215
  %indvars.iv907 = phi i64 [ %indvars.iv.next908.3, %scalar.ph1215 ], [ %indvars.iv907.unr, %scalar.ph1215.prol.loopexit ] ; 2 uses
  %indvars.iv905 = phi i64 [ %indvars.iv.next906.3, %scalar.ph1215 ], [ %indvars.iv905.unr, %scalar.ph1215.prol.loopexit ] ; 2 uses
  %.1544679 = phi i32 [ %i.dt, %scalar.ph1215 ], [ %.1544679.unr, %scalar.ph1215.prol.loopexit ]
  %i.dh = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv907
  %i.di = load float, ptr %i.dh, align 4
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv905
  store float %i.di, ptr %i.dj, align 4
  %indvars.iv.next906 = add nuw nsw i64 %indvars.iv905, %i.aj ; 2 uses
  %indvars.iv.next908 = add nsw i64 %indvars.iv907, %i.ak ; 2 uses
  %i.dk = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next908
  %i.dl = load float, ptr %i.dk, align 4
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next906
  store float %i.dl, ptr %i.dm, align 4
  %indvars.iv.next906.1 = add nuw nsw i64 %indvars.iv.next906, %i.aj ; 2 uses
  %indvars.iv.next908.1 = add nsw i64 %indvars.iv.next908, %i.ak ; 2 uses
  %i.dn = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next908.1
  %i.do = load float, ptr %i.dn, align 4
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next906.1
  store float %i.do, ptr %i.dp, align 4
  %indvars.iv.next906.2 = add nuw nsw i64 %indvars.iv.next906.1, %i.aj ; 2 uses
  %indvars.iv.next908.2 = add nsw i64 %indvars.iv.next908.1, %i.ak ; 2 uses
  %i.dq = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next908.2
  %i.dr = load float, ptr %i.dq, align 4
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next906.2
  store float %i.dr, ptr %i.ds, align 4
  %indvars.iv.next906.3 = add nuw nsw i64 %indvars.iv.next906.2, %i.aj
  %indvars.iv.next908.3 = add nsw i64 %indvars.iv.next908.2, %i.ak
  %i.dt = add nuw nsw i32 %.1544679, 4            ; 2 uses
  %exitcond912.not.3 = icmp eq i32 %i.dt, %2
  br i1 %exitcond912.not.3, label %._crit_edge680, label %scalar.ph1215, !llvm.loop !1173

._crit_edge680:                                   ; preds = %scalar.ph1215.prol.loopexit, %scalar.ph1215, %middle.block1223
  %indvars.iv.next904 = add nuw nsw i64 %indvars.iv903, 1 ; 2 uses
  %exitcond916.not = icmp eq i64 %indvars.iv.next904, %i.aj
  br i1 %exitcond916.not, label %.loopexit667, label %.preheader665, !llvm.loop !1174

.loopexit667:                                     ; preds = %._crit_edge, %._crit_edge680, %.preheader669, %.preheader666
  %i.du = shl i32 %0, 1                           ; 7 uses
  %i.dv = icmp sgt i32 %i.o, 1                    ; 7 uses
  %i.dw = icmp sgt i32 %2, 0                      ; 2 uses
  %or.cond862 = and i1 %i.dv, %i.dw               ; 2 uses
  br i1 %or.cond862, label %.lr.ph.preheader, label %._crit_edge695.split

.lr.ph.preheader:                                 ; preds = %.loopexit667
  %i.dx = sext i32 %0 to i64                      ; 6 uses
  %i.dy = sext i32 %i.du to i64                   ; 2 uses
  %i.dz = sext i32 %i.c to i64                    ; 3 uses
  %i.ea = add i32 %1, -1                          ; 2 uses
  %i.eb = mul i32 %i.d, %i.ea
  %i.ec = add nsw i32 %2, -1                      ; 3 uses
  %i.ed = sext i32 %1 to i64                      ; 2 uses
  %i.ee = shl nsw i64 %i.ed, 2                    ; 2 uses
  %i.ef = mul nsw i64 %i.ed, -4                   ; 2 uses
  %i.eg = zext i32 %i.ec to i64                   ; 2 uses
  %i.eh = shl nuw nsw i64 %i.eg, 2
  %i.ei = add nuw nsw i64 %i.eh, 4                ; 2 uses
  %scevgep1237 = getelementptr i8, ptr %7, i64 %i.ei
  %scevgep1240 = getelementptr i8, ptr %7, i64 %i.ei
  %i.ej = sext i32 %1 to i64
  %i.ek = mul nsw i64 %i.ej, %i.eg
  %i.el = shl i64 %i.ek, 2                        ; 2 uses
  %i.em = getelementptr i8, ptr %4, i64 %i.el
  %i.en = getelementptr i8, ptr %i.em, i64 8
  %i.eo = getelementptr i8, ptr %4, i64 %i.el
  %i.ep = getelementptr i8, ptr %i.eo, i64 4
  %i.eq = sext i32 %1 to i64                      ; 5 uses
  %i.er = zext nneg i32 %2 to i64                 ; 2 uses
  %min.iters.check1271 = icmp ult i32 %2, 36
  %ident.check1229 = icmp ne i32 %0, 1
  %i.es = icmp slt i32 %1, 0                      ; 2 uses
  %i.et = select i1 %i.es, i64 %i.ef, i64 %i.ee
  %i.eu = zext i32 %i.ec to i64
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.et, i64 %i.eu) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.ev = sub i64 0, %mul.result
  %i.ew = icmp slt i32 %1, 0                      ; 2 uses
  %i.ex = select i1 %i.ew, i64 %i.ef, i64 %i.ee
  %i.ey = zext i32 %i.ec to i64
  %mul1232 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ex, i64 %i.ey) ; 2 uses
  %mul.result1233 = extractvalue { i64, i1 } %mul1232, 0 ; 2 uses
  %mul.overflow1234 = extractvalue { i64, i1 } %mul1232, 1
  %i.ez = sub i64 0, %mul.result1233
  %invariant.op = or i1 %mul.overflow, %ident.check1229
  %n.vec1274 = and i64 %i.er, 2147483644          ; 6 uses
  %i.fa = mul nsw i64 %n.vec1274, %i.eq
  %i.fb = trunc nuw nsw i64 %n.vec1274 to i32
  %invariant.gep1824 = getelementptr [4 x i8], ptr %4, i64 %i.eq
  %.idx1764 = shl nsw i64 %i.eq, 3
  %invariant.gep1826 = getelementptr i8, ptr %4, i64 %.idx1764
  %.idx1765 = mul nsw i64 %i.eq, 12
  %invariant.gep1828 = getelementptr i8, ptr %4, i64 %.idx1765
  %cmp.n1279 = icmp eq i64 %n.vec1274, %i.er
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge688
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %._crit_edge688 ] ; 5 uses
  %indvars.iv925 = phi i32 [ %i.eb, %.lr.ph.preheader ], [ %indvars.iv.next926, %._crit_edge688 ] ; 2 uses
  %indvars.iv921 = phi i64 [ %i.dy, %.lr.ph.preheader ], [ %indvars.iv.next922, %._crit_edge688 ] ; 6 uses
  %indvars.iv917 = phi i32 [ %i.d, %.lr.ph.preheader ], [ %indvars.iv.next918, %._crit_edge688 ] ; 2 uses
  %.0535692 = phi i32 [ 1, %.lr.ph.preheader ], [ %i.ip, %._crit_edge688 ]
  %i.fc = trunc i64 %indvar to i32
  %i.fd = add i32 %i.fc, 1
  %i.fe = mul i32 %i.fd, %2
  %i.ff = sext i32 %i.fe to i64
  %i.fg = shl nsw i64 %i.ff, 2                    ; 2 uses
  %scevgep1236 = getelementptr i8, ptr %7, i64 %i.fg ; 3 uses
  %scevgep1238 = getelementptr i8, ptr %scevgep1237, i64 %i.fg ; 3 uses
  %i.fh = trunc i64 %indvar to i32
  %i.fi = sub i32 %i.ea, %i.fh
  %i.fj = mul i32 %2, %i.fi
end_hunk_3
