Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/physics_world?download=true
inline.NumInlined: 282
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 21
begin_hunk_0_@b3CollideTask:bb.a
  %shift = shufflevector <4 x float> %i.gp, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.gp, %shift
  %shift600 = shufflevector <4 x float> %i.gp, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop601 = fadd <4 x float> %shift600, %foldExtExtBinop
  %shift603 = shufflevector <4 x float> %foldExtExtBinop601, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop604 = fadd <4 x float> %i.gp, %shift603 ; 2 uses
  %i.gq = extractelement <4 x float> %foldExtExtBinop604, i64 0
  %i.gr = load <2 x float>, ptr %5, align 8       ; 2 uses
  %i.gs = load <2 x float>, ptr %.sroa.4503.0..sroa_idx, align 4 ; 2 uses
  %i.gt = load <2 x float>, ptr %4, align 8       ; 2 uses
  %i.gu = load <2 x float>, ptr %.sroa.4496.0..sroa_idx, align 4 ; 2 uses
  %i.gv = shufflevector <2 x float> %i.gs, <2 x float> %i.gr, <2 x i32> <i32 1, i32 2>
  %i.gw = shufflevector <2 x float> %i.gu, <2 x float> %i.gt, <2 x i32> <i32 1, i32 2>
  %i.gx = fsub <2 x float> %i.gv, %i.gw           ; 4 uses
  %i.gy = fsub <2 x float> %i.gr, %i.gt           ; 4 uses
  %i.gz = fsub <2 x float> %i.gs, %i.gu
  %i.ha = fmul <2 x float> %i.gj, %i.gx
  %i.hb = shufflevector <2 x float> %i.gy, <2 x float> %i.gx, <2 x i32> <i32 1, i32 2>
  %i.hc = fmul <2 x float> %i.ft, %i.hb
  %i.hd = fmul <2 x float> %i.ft, %i.gy
  %i.he = fmul <2 x float> %i.em, %i.gx
  %i.hf = fsub <2 x float> %i.ha, %i.hc
  %i.hg = fsub <2 x float> %i.hd, %i.he
  %i.hh = fmul <2 x float> %i.gb, %i.gy
  %i.hi = fmul <2 x float> %i.gb, %i.gz
  %i.hj = fsub <2 x float> %i.hf, %i.hh           ; 2 uses
  %i.hk = fsub <2 x float> %i.hg, %i.hi           ; 2 uses
  %foldExtExtBinop606 = fmul <2 x float> %i.en, %i.hj
  %shift608 = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop609 = fmul <2 x float> %i.em, %shift608
  %foldExtExtBinop611 = fsub <2 x float> %foldExtExtBinop606, %foldExtExtBinop609
  %i.hl = extractelement <2 x float> %foldExtExtBinop611, i64 0
  %i.hm = fmul <2 x float> %i.em, %i.hk
  %i.hn = fmul <2 x float> %i.gj, %i.hj
  %i.ho = fsub <2 x float> %i.hm, %i.hn
  %i.hp = fmul <2 x float> %i.ho, splat (float 2.000000e+00)
  %i.hq = fmul float %i.hl, 2.000000e+00
  %i.hr = extractelement <2 x float> %i.gy, i64 1
  %i.hs = fadd float %i.hr, %i.hq
  %i.ht = fadd <2 x float> %i.gx, %i.hp
  %i.hu = getelementptr inbounds nuw i8, ptr %i.av, i64 116
  %.sroa.0145.0.copyload = load <2 x float>, ptr %i.hu, align 4, !tbaa !142 ; 2 uses
  %.sroa.4146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 124
  %.sroa.4146.0.copyload = load float, ptr %.sroa.4146.0..sroa_idx, align 4, !tbaa !142
  %.sroa.5147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 128
  %.sroa.5147.0.copyload = load <2 x float>, ptr %.sroa.5147.0..sroa_idx, align 8, !tbaa !142 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 136
  %.sroa.6.0.copyload = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !142 ; 4 uses
  br i1 %i.co, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hv = getelementptr inbounds nuw i8, ptr %.0289, i64 184
  %.sroa.0141.0.copyload142 = load <2 x float>, ptr %i.hv, align 4, !tbaa !142
  %.sroa.5143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0289, i64 192
  %.sroa.5143.0.copyload144 = load float, ptr %.sroa.5143.0..sroa_idx, align 4, !tbaa !142
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.sroa.0141.0 = phi <2 x float> [ %.sroa.0141.0.copyload142, %bb.o ], [ zeroinitializer, %bb.n ] ; 3 uses
  %.sroa.5143.0 = phi float [ %.sroa.5143.0.copyload144, %bb.o ], [ 0.000000e+00, %bb.n ] ; 2 uses
  br i1 %i.cr, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hw = getelementptr inbounds nuw i8, ptr %i.du, i64 184
  %.sroa.0138.0.copyload139 = load <2 x float>, ptr %i.hw, align 4, !tbaa !142
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 192
  %.sroa.5.0.copyload140 = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !142
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.sroa.0138.0 = phi <2 x float> [ %.sroa.0138.0.copyload139, %bb.q ], [ zeroinitializer, %bb.p ] ; 3 uses
  %.sroa.5.0 = phi float [ %.sroa.5.0.copyload140, %bb.q ], [ 0.000000e+00, %bb.p ] ; 2 uses
  %.sroa.05.4.vec.extract.i = extractelement <2 x float> %.sroa.0145.0.copyload, i64 1
  %i.hx = fsub float %.sroa.05.4.vec.extract.i, %i.hs ; 2 uses
  %i.hy = fmul float %i.hx, %i.hx
  %i.hz = shufflevector <2 x float> %.sroa.0145.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ia = insertelement <2 x float> %i.hz, float %.sroa.4146.0.copyload, i64 0
  %i.ib = fsub <2 x float> %i.ia, %i.ht           ; 2 uses
  %i.ic = fmul <2 x float> %i.ib, %i.ib           ; 2 uses
  %i.id = extractelement <2 x float> %i.ic, i64 1
  %i.ie = fadd float %i.id, %i.hy
  %i.if = extractelement <2 x float> %i.ic, i64 0
  %i.ig = fadd float %i.if, %i.ie                 ; 2 uses
  %i.ih = fcmp ogt float %i.fo, f0x3F7E0E2E
  %i.ii = fmul float %i.eh, %i.eh
  %i.ij = fcmp olt float %i.ig, %i.ii
  %or.cond303 = select i1 %i.ih, i1 %i.ij, i1 false
  br i1 %or.cond303, label %bb.s, label %.thread521

bb.s:                                             ; preds = %bb.r
  %sqrt = tail call float @llvm.sqrt.f32(float %i.ig)
  %i.ik = fsub float %i.eh, %sqrt                 ; 2 uses
  %i.il = shufflevector <2 x float> %.sroa.5147.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.im = fcmp ogt float %.sroa.5143.0, %.sroa.5.0
  %i.in = fcmp ogt <2 x float> %.sroa.0141.0, %.sroa.0138.0 ; 2 uses
  %i.io = shufflevector <2 x i1> %i.in, <2 x i1> poison, <2 x i32> <i32 1, i32 poison>
  %i.ip = insertelement <2 x i1> %i.io, i1 %i.im, i64 1
  %i.iq = shufflevector <2 x float> %.sroa.0141.0, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ir = insertelement <2 x float> %i.iq, float %.sroa.5143.0, i64 1
  %i.is = shufflevector <2 x float> %.sroa.0138.0, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.it = insertelement <2 x float> %i.is, float %.sroa.5.0, i64 1
  %i.iu = select <2 x i1> %i.ip, <2 x float> %i.ir, <2 x float> %i.it ; 2 uses
  %i.iv = select <2 x i1> %i.in, <2 x float> %.sroa.0141.0, <2 x float> %.sroa.0138.0 ; 2 uses
  %i.iw = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> %.sroa.5147.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.ix = fmul <2 x float> %i.gm, %i.iw
  %i.iy = shufflevector <2 x float> %i.gm, <2 x float> %i.gl, <2 x i32> <i32 1, i32 2>
  %i.iz = shufflevector <2 x float> %.sroa.5147.0.copyload, <2 x float> %.sroa.6.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.ja = fmul <2 x float> %i.iy, %i.iz
  %i.jb = fsub <2 x float> %i.ix, %i.ja
  %i.jc = fmul <2 x float> %i.gl, %i.il           ; 2 uses
  %shift613 = shufflevector <2 x float> %i.jc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop614 = fsub <2 x float> %i.jc, %shift613
  %i.jd = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.je = fmul <2 x float> %i.gl, %i.jd
  %i.jf = fadd <2 x float> %i.je, %i.jb
  %i.jg = shufflevector <4 x float> %foldExtExtBinop604, <4 x float> poison, <2 x i32> zeroinitializer
  %i.jh = fmul <2 x float> %i.jg, %.sroa.5147.0.copyload
  %i.ji = fsub <2 x float> %i.jf, %i.jh           ; 3 uses
  %i.jj = insertelement <2 x float> %i.gm, float %i.gq, i64 0
  %i.jk = fmul <2 x float> %i.jj, %.sroa.6.0.copyload ; 2 uses
  %shift616 = shufflevector <2 x float> %i.jk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop617 = fadd <2 x float> %foldExtExtBinop614, %shift616
  %foldExtExtBinop619 = fsub <2 x float> %foldExtExtBinop617, %i.jk
  %i.jl = extractelement <2 x float> %foldExtExtBinop619, i64 0 ; 3 uses
  %i.jm = fcmp olt <2 x float> %i.ji, zeroinitializer
  %i.jn = fneg <2 x float> %i.ji
  %i.jo = select <2 x i1> %i.jm, <2 x float> %i.jn, <2 x float> %i.ji ; 3 uses
  %i.jp = fcmp olt float %i.jl, 0.000000e+00
  %i.jq = fneg float %i.jl
  %i.jr = select i1 %i.jp, float %i.jq, float %i.jl ; 2 uses
  %i.js = extractelement <2 x float> %i.iv, i64 0
  %i.jt = fmul float %i.jr, %i.js
  %shift621 = shufflevector <2 x float> %i.iu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop622 = fmul <2 x float> %i.jo, %shift621
  %i.ju = extractelement <2 x float> %foldExtExtBinop622, i64 0
  %i.jv = fadd float %i.jt, %i.ju                 ; 2 uses
  %i.jw = fmul <2 x float> %i.jo, %i.iu
  %i.jx = shufflevector <2 x float> %i.jo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.jy = insertelement <2 x float> %i.jx, float %i.jr, i64 1
  %i.jz = fmul <2 x float> %i.jy, %i.iv
  %i.ka = fadd <2 x float> %i.jw, %i.jz           ; 2 uses
  %i.kb = fmul float %i.jv, %i.jv
  %i.kc = fmul <2 x float> %i.ka, %i.ka           ; 2 uses
  %i.kd = extractelement <2 x float> %i.kc, i64 1
  %i.ke = fadd float %i.kd, %i.kb
  %i.kf = extractelement <2 x float> %i.kc, i64 0
  %i.kg = fadd float %i.kf, %i.ke
  %i.kh = fmul float %i.kg, 4.000000e+00
  %i.ki = fmul float %i.ik, %i.ik
  %i.kj = fcmp uge float %i.kh, %i.ki
  br i1 %i.kj, label %.thread521, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.kk = fneg float %.sroa.0.4.vec.extract.i320
  %i.kl = shufflevector <2 x float> %i.em, <2 x float> %i.en, <4 x i32> <i32 1, i32 2, i32 1, i32 poison>
  %i.km = insertelement <4 x float> %i.kl, float %.sroa.01.4.vec.extract.i323, i64 3 ; 2 uses
  %i.kn = shufflevector <2 x float> %i.eo, <2 x float> %i.ex, <4 x i32> <i32 0, i32 1, i32 0, i32 2>
  %i.ko = fmul <4 x float> %i.km, %i.kn
  %i.kp = shufflevector <2 x float> %i.en, <2 x float> %i.em, <4 x i32> <i32 0, i32 3, i32 2, i32 poison>
  %i.kq = insertelement <4 x float> %i.kp, float %.sroa.32.8.vec.extract.i325, i64 3
  %i.kr = shufflevector <2 x float> %i.eo, <2 x float> %i.eq, <4 x i32> <i32 1, i32 0, i32 2, i32 poison>
  %i.ks = insertelement <4 x float> %i.kr, float %.sroa.0.4.vec.extract.i324, i64 3
  %i.kt = fmul <4 x float> %i.kq, %i.ks
  %i.ku = shufflevector <2 x float> %i.em, <2 x float> %i.ev, <4 x i32> <i32 0, i32 1, i32 0, i32 2>
  %i.kv = shufflevector <2 x float> %i.eo, <2 x float> %i.eq, <4 x i32> <i32 1, i32 2, i32 1, i32 poison> ; 2 uses
  %i.kw = insertelement <4 x float> %i.kv, float %.sroa.0.4.vec.extract.i324, i64 3
  %i.kx = fmul <4 x float> %i.ku, %i.kw
  %i.ky = shufflevector <2 x float> %i.em, <2 x float> %i.en, <4 x i32> <i32 1, i32 0, i32 2, i32 poison>
  %i.kz = insertelement <4 x float> %i.ky, float %.sroa.01.4.vec.extract.i323, i64 3
  %i.la = shufflevector <2 x float> %i.eq, <2 x float> %i.eo, <4 x i32> <i32 0, i32 3, i32 2, i32 poison>
  %i.lb = insertelement <4 x float> %i.la, float %.sroa.3.8.vec.extract.i326, i64 3
  %i.lc = fmul <4 x float> %i.kz, %i.lb
  %i.ld = shufflevector <2 x float> %i.en, <2 x float> %i.ew, <4 x i32> <i32 1, i32 1, i32 1, i32 3> ; 3 uses
  %i.le = shufflevector <2 x float> %i.eq, <2 x float> %i.eo, <4 x i32> <i32 0, i32 2, i32 0, i32 poison>
  %i.lf = insertelement <4 x float> %i.le, float %.sroa.3.8.vec.extract.i326, i64 3
  %i.lg = fmul <4 x float> %i.ld, %i.lf
  %i.lh = shufflevector <2 x float> %i.eo, <2 x float> %i.eq, <4 x i32> <i32 0, i32 2, i32 1, i32 poison>
  %i.li = insertelement <4 x float> %i.lh, float %.sroa.0.0.vec.extract.i322, i64 3
  %i.lj = fmul <4 x float> %i.ld, %i.li
  %i.lk = shufflevector <2 x float> %i.en, <2 x float> %i.em, <4 x i32> <i32 0, i32 2, i32 0, i32 poison>
  %i.ll = insertelement <4 x float> %i.lk, float %.sroa.32.8.vec.extract.i325, i64 3
  %i.lm = shufflevector <2 x float> %i.eq, <2 x float> %i.ez, <4 x i32> <i32 1, i32 1, i32 1, i32 3> ; 3 uses
  %i.ln = fmul <4 x float> %i.ll, %i.lm
  %i.lo = shufflevector <2 x float> %i.em, <2 x float> %i.en, <4 x i32> <i32 0, i32 2, i32 1, i32 poison>
  %i.lp = insertelement <4 x float> %i.lo, float %.sroa.01.0.vec.extract.i321, i64 3
  %i.lq = fmul <4 x float> %i.lp, %i.lm
  %i.lr = fmul float %.sroa.01.4.vec.extract.i, %i.kk
  %i.ls = extractelement <4 x float> %i.et, i64 0
  %i.lt = fsub float %i.lr, %i.ls
  %i.lu = fneg float %.sroa.0.4.vec.extract.i324
  %foldExtExtBinop624 = fmul <2 x float> %i.ev, %i.ez
  %foldExtExtBinop626 = fmul <2 x float> %i.ew, %i.ex
  %foldExtExtBinop628 = fsub <2 x float> %foldExtExtBinop624, %foldExtExtBinop626
  %i.lv = shufflevector <2 x float> %foldExtExtBinop628, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.lw = fmul float %.sroa.01.4.vec.extract.i323, %i.lu
  %i.lx = extractelement <4 x float> %i.fc, i64 0
  %i.ly = fsub float %i.lw, %i.lx
  %i.lz = extractelement <4 x float> %i.fc, i64 2
  %i.ma = fsub float %i.ly, %i.lz
  %i.mb = extractelement <4 x float> %i.fc, i64 3
  %i.mc = fsub float %i.mb, %i.ma                 ; 3 uses
  %i.md = fsub <4 x float> %i.kt, %i.lc           ; 2 uses
  %i.me = fsub <4 x float> %i.ko, %i.kx
  %i.mf = shufflevector <2 x float> %i.en, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.mg = shufflevector <4 x float> %i.mf, <4 x float> %i.et, <4 x i32> <i32 1, i32 1, i32 6, i32 poison>
  %i.mh = shufflevector <4 x float> %i.mg, <4 x float> %i.ld, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.mi = insertelement <4 x float> %i.kv, float 1.000000e+00, i64 2
  %i.mj = insertelement <4 x float> %i.mi, float %.sroa.0.4.vec.extract.i324, i64 3
  %i.mk = fmul <4 x float> %i.mh, %i.mj
  %i.ml = fsub <4 x float> %i.md, %i.lj
  %i.mm = shufflevector <4 x float> %i.md, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 poison, i32 poison>
  %i.mn = insertelement <4 x float> %i.mm, float %i.lt, i64 2
  %i.mo = shufflevector <4 x float> %i.mn, <4 x float> %i.lv, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.mp = fsub <4 x float> %i.mo, %i.mk           ; 2 uses
  %i.mq = fsub <4 x float> %i.me, %i.lg
  %i.mr = shufflevector <4 x float> %i.km, <4 x float> %i.et, <4 x i32> <i32 0, i32 1, i32 7, i32 3>
  %i.ms = insertelement <4 x float> %i.lm, float 1.000000e+00, i64 2
  %i.mt = fmul <4 x float> %i.mr, %i.ms           ; 2 uses
  %i.mu = fadd <4 x float> %i.lq, %i.ml           ; 2 uses
  %i.mv = fadd <4 x float> %i.mt, %i.mp           ; 3 uses
  %i.mw = fsub <4 x float> %i.mt, %i.mp           ; 2 uses
  %i.mx = shufflevector <4 x float> %i.mv, <4 x float> %i.mw, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 3 uses
  %i.my = fadd <4 x float> %i.ln, %i.mq           ; 5 uses
  %i.mz = shufflevector <4 x float> %i.mv, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.na = fmul <4 x float> %i.mx, %i.mz           ; 4 uses
  %i.nb = shufflevector <4 x float> %i.my, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.nc = fmul <4 x float> %i.my, %i.nb           ; 4 uses
  %i.nd = fadd <4 x float> %i.nc, %i.na
  %i.ne = fsub <4 x float> %i.nc, %i.na
  %i.nf = shufflevector <4 x float> %i.nd, <4 x float> %i.ne, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.ng = fmul <4 x float> %i.nf, <float 2.000000e+00, float 2.000000e+00, float 1.000000e+00, float 2.000000e+00> ; 2 uses
  %i.nh = shufflevector <4 x float> %i.mx, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ni = fmul <4 x float> %i.mu, %i.nh           ; 4 uses
  %i.nj = shufflevector <4 x float> %i.my, <4 x float> %i.mw, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.nk = insertelement <4 x float> %i.nj, float %i.mc, i64 3
  %i.nl = shufflevector <4 x float> %i.mx, <4 x float> %i.my, <4 x i32> <i32 2, i32 0, i32 5, i32 7>
  %i.nm = fmul <4 x float> %i.nk, %i.nl           ; 4 uses
  %i.nn = fsub <4 x float> %i.ni, %i.nm
  %i.no = fadd <4 x float> %i.ni, %i.nm
  %i.np = shufflevector <4 x float> %i.nn, <4 x float> %i.no, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %6 = extractelement <4 x float> %i.mu, i64 3    ; 4 uses
  %7 = extractelement <4 x float> %i.my, i64 3    ; 2 uses
  %8 = fmul float %i.mc, %6                       ; 2 uses
  %9 = extractelement <4 x float> %i.mv, i64 3    ; 2 uses
  %10 = fmul float %7, %9                         ; 2 uses
  %11 = fmul float %i.mc, %9                      ; 2 uses
  %12 = fsub <4 x float> <float 1.000000e+00, float 1.000000e+00, float poison, float 1.000000e+00>, %i.ng
  %13 = fmul <4 x float> %i.ng, <float poison, float poison, float 2.000000e+00, float poison>
  %14 = shufflevector <4 x float> %12, <4 x float> %13, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %15 = fmul <4 x float> %i.np, splat (float 2.000000e+00)
  %16 = extractelement <4 x float> %i.nc, i64 3
  %17 = fsub float %10, %8
  %18 = fmul float %6, %6                         ; 2 uses
  %19 = shufflevector <4 x float> %i.nc, <4 x float> %i.ni, <4 x i32> <i32 1, i32 2, i32 6, i32 poison>
  %i.nq = shufflevector <4 x float> %19, <4 x float> %i.na, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %20 = shufflevector <4 x float> %i.na, <4 x float> %i.nm, <4 x i32> <i32 0, i32 2, i32 6, i32 poison>
  %21 = insertelement <4 x float> %20, float %18, i64 3 ; 2 uses
  %i.nr = fadd <4 x float> %i.nq, %21
  %i.ns = fsub <4 x float> %i.nq, %21
  %22 = shufflevector <4 x float> %i.nr, <4 x float> %i.ns, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.nt = fmul <4 x float> %22, splat (float 2.000000e+00) ; 3 uses
  %23 = extractelement <4 x float> %i.nt, i64 0
  %24 = fsub float 1.000000e+00, %23
  %25 = fmul float %7, %6                         ; 2 uses
  %i.nu = fadd <4 x float> %i.nm, %i.ni
  %26 = extractelement <4 x float> %i.nu, i64 3
  %27 = fsub float %25, %11
  %28 = fmul float %27, 2.000000e+00
  %29 = fadd float %16, %18
  %30 = fmul float %29, 2.000000e+00
  %i.nv = fsub float 1.000000e+00, %30
  %31 = fadd float %10, %8
  %32 = insertelement <2 x float> poison, float %26, i64 0
  %33 = insertelement <2 x float> %32, float %31, i64 1
  %34 = fmul <2 x float> %33, splat (float 2.000000e+00)
  %35 = fadd float %25, %11
  %36 = fmul float %35, 2.000000e+00
  %i.nw = fmul float %17, 2.000000e+00
  %37 = extractelement <4 x float> %i.nt, i64 3
  %i.nx = fsub float 1.000000e+00, %37
  %i.ny = getelementptr inbounds nuw i8, ptr %i.du, i64 28
  %i.nz = getelementptr inbounds nuw i8, ptr %.0289, i64 28
  %.sroa.084.0.copyload = load <2 x float>, ptr %i.ny, align 4 ; 2 uses
  %.sroa.285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 36
  %.sroa.285.0.copyload = load float, ptr %.sroa.285.0..sroa_idx, align 4
  %.sroa.082.0.copyload = load <2 x float>, ptr %i.nz, align 4 ; 2 uses
  %.sroa.283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0289, i64 36
  %.sroa.283.0.copyload = load float, ptr %.sroa.283.0..sroa_idx, align 4
  %foldExtExtBinop635 = fsub <2 x float> %.sroa.084.0.copyload, %.sroa.082.0.copyload
  %i.oa = extractelement <2 x float> %foldExtExtBinop635, i64 0
  %foldExtExtBinop637.a = fsub <2 x float> %.sroa.084.0.copyload, %.sroa.082.0.copyload
  %i.ob = fsub float %.sroa.285.0.copyload, %.sroa.283.0.copyload
  %i.oc = getelementptr inbounds nuw i8, ptr %i.av, i64 80
  %i.od = load i32, ptr %i.oc, align 8, !tbaa !272 ; 3 uses
  %i.oe = icmp sgt i32 %i.od, 0
  br i1 %i.oe, label %.lr.ph543, label %._crit_edge544.thread

._crit_edge544.thread:                            ; preds = %bb.t
  %i.of = load i32, ptr %i.ag, align 4, !tbaa !242
  %i.og = add nsw i32 %i.of, 1
  store i32 %i.og, ptr %i.ag, align 4, !tbaa !242
  br label %.loopexit

.lr.ph543:                                        ; preds = %bb.t
  %i.oh = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !273
  %wide.trip.count560 = zext nneg i32 %i.od to i64
  %38 = insertelement <2 x float> poison, float %i.nw, i64 0
  %i.oj = insertelement <2 x float> %38, float %i.nx, i64 1
  %i.ok = insertelement <2 x float> poison, float %i.nv, i64 0
  %39 = insertelement <2 x float> %i.ok, float %28, i64 1
  %40 = shufflevector <4 x float> %i.nt, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %41 = insertelement <4 x float> %40, float %24, i64 2
  %42 = insertelement <4 x float> %41, float %36, i64 3
  %shift639 = shufflevector <2 x float> %foldExtExtBinop637.a, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  br label %bb.u

._crit_edge544:                                   ; preds = %._crit_edge
  %i.ol = load i32, ptr %i.ag, align 4, !tbaa !242
  %i.om = add nsw i32 %i.ol, 1
  store i32 %i.om, ptr %i.ag, align 4, !tbaa !242
  %i.on = tail call i32 @llvm.umin.i32(i32 %i.od, i32 7)
  %i.oo = zext nneg i32 %i.on to i64
  %i.op = getelementptr [4 x i8], ptr %i.f, i64 %i.oo
  %i.oq = getelementptr i8, ptr %i.op, i64 3748   ; 2 uses
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !82
  %i.os = add nsw i32 %i.or, 1
  store i32 %i.os, ptr %i.oq, align 4, !tbaa !82
  br label %.loopexit

bb.u:                                             ; preds = %.lr.ph543, %._crit_edge
  %indvars.iv557 = phi i64 [ 0, %.lr.ph543 ], [ %indvars.iv.next558, %._crit_edge ] ; 2 uses
  %i.ot = getelementptr inbounds nuw [268 x i8], ptr %i.oi, i64 %indvars.iv557 ; 4 uses
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ot, i64 232
  %.sroa.469.0.copyload = load float, ptr %.sroa.469.0..sroa_idx, align 4, !tbaa !142
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 264
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !275 ; 2 uses
  %i.ow = icmp sgt i32 %i.ov, 0
  br i1 %i.ow, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.u
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ot, i64 224
  %.sroa.068.0.copyload = load <2 x float>, ptr %i.ox, align 4, !tbaa !142 ; 2 uses
  %.sroa.01.0.vec.extract.i438 = extractelement <2 x float> %.sroa.068.0.copyload, i64 0
  %wide.trip.count = zext nneg i32 %i.ov to i64
  %shift642 = shufflevector <2 x float> %.sroa.068.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  br label %bb.v

._crit_edge:                                      ; preds = %bb.v, %bb.u
  %indvars.iv.next558 = add nuw nsw i64 %indvars.iv557, 1 ; 2 uses
  %exitcond561.not = icmp eq i64 %indvars.iv.next558, %wide.trip.count560
  br i1 %exitcond561.not, label %._crit_edge544, label %bb.u, !llvm.loop !645

bb.v:                                             ; preds = %.lr.ph, %bb.v
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.v ] ; 2 uses
  %i.oy = getelementptr inbounds nuw [56 x i8], ptr %i.ot, i64 %indvars.iv ; 7 uses
  %.sroa.055.0.copyload = load <2 x float>, ptr %i.oy, align 4 ; 2 uses
  %.sroa.256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  %.sroa.256.0.copyload = load float, ptr %.sroa.256.0..sroa_idx, align 4
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 12
  %.sroa.047.0.copyload = load <2 x float>, ptr %i.oz, align 4 ; 4 uses
  %.sroa.248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oy, i64 20
  %.sroa.248.0.copyload = load float, ptr %.sroa.248.0..sroa_idx, align 4 ; 2 uses
  %43 = shufflevector <2 x float> %.sroa.047.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.pa = shufflevector <2 x float> %.sroa.055.0.copyload, <2 x float> %.sroa.047.0.copyload, <4 x i32> <i32 0, i32 1, i32 0, i32 2>
  %i.pb = fmul <4 x float> %14, %i.pa
  %i.pc = shufflevector <2 x float> %.sroa.055.0.copyload, <2 x float> %.sroa.047.0.copyload, <4 x i32> <i32 1, i32 0, i32 1, i32 3>
  %i.pd = fmul <4 x float> %15, %i.pc
  %i.pe = fadd <4 x float> %i.pb, %i.pd
  %44 = insertelement <4 x float> poison, float %.sroa.256.0.copyload, i64 0
  %45 = insertelement <4 x float> %44, float %.sroa.248.0.copyload, i64 1
  %46 = shufflevector <4 x float> %45, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %47 = fmul <4 x float> %42, %46
  %48 = fadd <4 x float> %47, %i.pe               ; 3 uses
  %shift636 = shufflevector <4 x float> %48, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop637 = fsub <4 x float> %shift636, %48
  %49 = extractelement <4 x float> %foldExtExtBinop637, i64 0
  %50 = fmul <2 x float> %39, %43
  %51 = fmul <2 x float> %34, %.sroa.047.0.copyload
  %52 = fadd <2 x float> %50, %51
  %i.pf = insertelement <2 x float> poison, float %.sroa.248.0.copyload, i64 0
  %i.pg = shufflevector <2 x float> %i.pf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ph = fmul <2 x float> %i.oj, %i.pg
  %i.pi = fadd <2 x float> %i.ph, %52
  %53 = shufflevector <4 x float> %48, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.pj = fsub <2 x float> %i.pi, %53             ; 2 uses
  %i.pk = fadd float %i.oa, %49
  %foldExtExtBinop640 = fadd <2 x float> %shift639, %i.pj
  %i.pl = extractelement <2 x float> %i.pj, i64 1
  %i.pm = fadd float %i.ob, %i.pl
  %i.pn = getelementptr inbounds nuw i8, ptr %i.oy, i64 28
  %i.po = load float, ptr %i.pn, align 4, !tbaa !651
  %i.pp = fmul float %.sroa.01.0.vec.extract.i438, %i.pk
  %foldExtExtBinop643 = fmul <2 x float> %shift642, %foldExtExtBinop640
  %i.pq = extractelement <2 x float> %foldExtExtBinop643, i64 0
  %i.pr = fadd float %i.pp, %i.pq
  %i.ps = fmul float %.sroa.469.0.copyload, %i.pm
  %i.pt = fadd float %i.ps, %i.pr
  %i.pu = fadd float %i.po, %i.pt
  %i.pv = getelementptr inbounds nuw i8, ptr %i.oy, i64 24
  store float %i.pu, ptr %i.pv, align 4, !tbaa !277
  %i.pw = getelementptr inbounds nuw i8, ptr %i.oy, i64 52
  store i8 1, ptr %i.pw, align 4, !tbaa !278
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.v, !llvm.loop !646

.thread521:                                       ; preds = %bb.s, %bb.r, %bb.m, %bb.l, %bb.k
  %i.px = getelementptr inbounds nuw i8, ptr %i.av, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.px, ptr noundef nonnull align 4 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !267
  %i.py = getelementptr inbounds nuw i8, ptr %i.av, i64 100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.py, ptr noundef nonnull align 4 dereferenceable(16) %i.ae, i64 16, i1 false), !tbaa.struct !267
  %i.pz = getelementptr inbounds nuw i8, ptr %i.av, i64 116
  %.sroa.6494.0.copyload = load <2 x float>, ptr %i.ae, align 4 ; 4 uses
  %.sroa.7.0.copyload = load <2 x float>, ptr %i.af, align 4 ; 4 uses
  %.sroa.6487.0.copyload = load <2 x float>, ptr %i.ac, align 4 ; 10 uses
  %.sroa.8489.0.copyload = load <2 x float>, ptr %i.ad, align 4 ; 6 uses
  %i.qa = shufflevector <2 x float> %.sroa.8489.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qb = shufflevector <2 x float> %.sroa.6487.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qc = fmul <2 x float> %.sroa.6494.0.copyload, %i.qb ; 2 uses
  %shift645 = shufflevector <2 x float> %i.qc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop646 = fsub <2 x float> %i.qc, %shift645
  %i.qd = shufflevector <2 x float> %.sroa.6494.0.copyload, <2 x float> %.sroa.7.0.copyload, <4 x i32> <i32 1, i32 2, i32 2, i32 0>
  %i.qe = shufflevector <2 x float> %.sroa.8489.0.copyload, <2 x float> %.sroa.6487.0.copyload, <4 x i32> <i32 0, i32 3, i32 2, i32 0>
  %i.qf = fmul <4 x float> %i.qd, %i.qe           ; 2 uses
  %i.qg = shufflevector <4 x float> %i.qf, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.qh = shufflevector <4 x float> %i.qf, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.qi = fsub <2 x float> %i.qg, %i.qh
  %i.qj = shufflevector <2 x float> %.sroa.8489.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.qk = fmul <2 x float> %.sroa.6494.0.copyload, %i.qj
  %i.ql = fadd <2 x float> %i.qk, %i.qi
  %i.qm = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.qn = fmul <2 x float> %i.qm, %.sroa.6487.0.copyload
  %i.qo = fsub <2 x float> %i.ql, %i.qn
  %i.qp = fmul <2 x float> %.sroa.7.0.copyload, %i.qa ; 2 uses
  %foldExtExtBinop648 = fadd <2 x float> %foldExtExtBinop646, %i.qp
  %i.qq = shufflevector <2 x float> %i.qp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.251.8.vec.insert.i450 = fsub <2 x float> %foldExtExtBinop648, %i.qq
  %i.qr = shufflevector <2 x float> %.sroa.6494.0.copyload, <2 x float> %.sroa.7.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.qs = shufflevector <2 x float> %.sroa.6487.0.copyload, <2 x float> %.sroa.8489.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.qt = fmul <4 x float> %i.qr, %i.qs           ; 4 uses
  %shift653 = shufflevector <4 x float> %i.qt, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop654 = fadd <4 x float> %i.qt, %shift653
  %shift656 = shufflevector <4 x float> %i.qt, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop657 = fadd <4 x float> %shift656, %foldExtExtBinop654
  %shift659 = shufflevector <4 x float> %i.qt, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop660 = fadd <4 x float> %shift659, %foldExtExtBinop657
  %i.qu = shufflevector <4 x float> %foldExtExtBinop660, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.251.12.vec.insert.i451 = shufflevector <2 x float> %.sroa.251.8.vec.insert.i450, <2 x float> %i.qu, <2 x i32> <i32 0, i32 2>
  %i.qv = load <2 x float>, ptr %5, align 8
  %i.qw = load <2 x float>, ptr %.sroa.4503.0..sroa_idx, align 4
  %i.qx = load <2 x float>, ptr %4, align 8
  %i.qy = load <2 x float>, ptr %.sroa.4496.0..sroa_idx, align 4
  %i.qz = fsub <2 x float> %i.qv, %i.qx           ; 4 uses
  %i.ra = fsub <2 x float> %i.qw, %i.qy           ; 4 uses
  %i.rb = fmul <2 x float> %i.ra, %.sroa.6487.0.copyload
  %i.rc = shufflevector <2 x float> %.sroa.8489.0.copyload, <2 x float> %.sroa.6487.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.rd = fmul <2 x float> %i.qz, %i.rc
  %i.re = shufflevector <2 x float> %.sroa.6487.0.copyload, <2 x float> %.sroa.8489.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.rf = fmul <2 x float> %i.qz, %i.re
  %i.rg = shufflevector <2 x float> %i.ra, <2 x float> %i.qz, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.rh = fmul <2 x float> %i.rg, %.sroa.6487.0.copyload
  %i.ri = fsub <2 x float> %i.rb, %i.rf
  %i.rj = fsub <2 x float> %i.rd, %i.rh
  %i.rk = fmul <2 x float> %i.rg, %i.qj
  %i.rl = fmul <2 x float> %i.ra, %i.qj
  %i.rm = fsub <2 x float> %i.ri, %i.rk           ; 2 uses
  %i.rn = fsub <2 x float> %i.rj, %i.rl           ; 2 uses
  %i.ro = fmul <2 x float> %i.re, %i.rm
  %i.rp = fmul <2 x float> %i.rc, %i.rn
  %i.rq = fsub <2 x float> %i.ro, %i.rp
  %foldExtExtBinop662 = fmul <2 x float> %.sroa.6487.0.copyload, %i.rn
  %foldExtExtBinop664 = fmul <2 x float> %.sroa.6487.0.copyload, %i.rm
  %shift666 = shufflevector <2 x float> %foldExtExtBinop664, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop667 = fsub <2 x float> %foldExtExtBinop662, %shift666
  %i.rr = extractelement <2 x float> %foldExtExtBinop667, i64 0
  %i.rs = fmul <2 x float> %i.rq, splat (float 2.000000e+00)
  %i.rt = fadd <2 x float> %i.qz, %i.rs
  %i.ru = fmul float %i.rr, 2.000000e+00
  %i.rv = extractelement <2 x float> %i.ra, i64 1
  %i.rw = fadd float %i.rv, %i.ru
  store <2 x float> %i.rt, ptr %i.pz, align 4, !tbaa !142
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 124
  store float %i.rw, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !142
  %.sroa.5.0..sroa_idx465 = getelementptr inbounds nuw i8, ptr %i.av, i64 128
  store <2 x float> %i.qo, ptr %.sroa.5.0..sroa_idx465, align 8, !tbaa !142
  %.sroa.6.0..sroa_idx466 = getelementptr inbounds nuw i8, ptr %i.av, i64 136
  store <2 x float> %.sroa.251.12.vec.insert.i451, ptr %.sroa.6.0..sroa_idx466, align 8, !tbaa !142
  %i.rx = load i32, ptr %i.cs, align 4, !tbaa !190
  %i.ry = or i32 %i.rx, 8388608
  store i32 %i.ry, ptr %i.cs, align 4, !tbaa !190
  %i.rz = getelementptr inbounds nuw i8, ptr %.0289, i64 68
  %i.sa = getelementptr inbounds nuw i8, ptr %i.du, i64 68
  %.sroa.015.0.copyload = load <2 x float>, ptr %i.rz, align 4
  %.sroa.216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0289, i64 76
  %.sroa.216.0.copyload = load float, ptr %.sroa.216.0..sroa_idx, align 4
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.sa, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 76
  %.sroa.2.0.copyload = load float, ptr %.sroa.2.0..sroa_idx, align 4
  %i.sb = tail call zeroext i1 @b3UpdateContact(ptr noundef %i.b, i32 noundef %2, ptr noundef nonnull %i.av, ptr noundef nonnull %i.az, <2 x float> %.sroa.015.0.copyload, float %.sroa.216.0.copyload, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, ptr noundef nonnull %i.bd, <2 x float> %.sroa.0.0.copyload, float %.sroa.2.0.copyload, ptr noundef nonnull byval(%struct.b3Transform) align 8 %5, i1 noundef zeroext %i.ec, ptr noundef byval(%struct.b3Arena) align 8 %i.f) #21 ; 3 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.av, i64 80 ; 3 uses
  %i.sd = load i32, ptr %i.sc, align 8, !tbaa !272 ; 2 uses
  %i.se = icmp sgt i32 %i.sd, 0
  br i1 %i.se, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.thread521
  %i.sf = tail call i32 @llvm.umin.i32(i32 %i.sd, i32 7)
  %i.sg = zext nneg i32 %i.sf to i64
  %i.sh = getelementptr [4 x i8], ptr %i.f, i64 %i.sg
  %i.si = getelementptr i8, ptr %i.sh, i64 3748   ; 2 uses
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !82
  %i.sk = add nsw i32 %i.sj, 1
  store i32 %i.sk, ptr %i.si, align 4, !tbaa !82
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.thread521
  %.not304 = xor i1 %i.sb, true
  %brmerge = or i1 %.not300, %.not304
  br i1 %brmerge, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.sl = load i32, ptr %i.cs, align 4, !tbaa !190
  %i.sm = and i32 %i.sl, 4194304
  %.not299 = icmp eq i32 %i.sm, 0
  br i1 %.not299, label %.thread524, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.sn = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !252
  %i.sp = sext i32 %i.so to i64
  %i.sq = getelementptr [112 x i8], ptr %i.b, i64 %i.sp
  %i.sr = getelementptr i8, ptr %i.sq, i64 1192
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !239
  %i.st = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.su = load i32, ptr %i.st, align 8, !tbaa !250
  %i.sv = sext i32 %i.su to i64
  %i.sw = getelementptr inbounds [12 x i8], ptr %i.ss, i64 %i.sv
  %i.sx = load i32, ptr %i.sc, align 8, !tbaa !272
  %i.sy = trunc i32 %i.sx to i16
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  store i16 %i.sy, ptr %i.sz, align 4, !tbaa !652
  br label %.thread524

bb.aa:                                            ; preds = %bb.x
  %or.cond305 = and i1 %.not300, %i.sb
  br i1 %or.cond305, label %.sink.split, label %.thread524

.thread524:                                       ; preds = %bb.y, %bb.z, %bb.aa
  %brmerge306 = or i1 %.not300, %i.sb
  br i1 %brmerge306, label %bb.ab, label %.sink.split

.sink.split:                                      ; preds = %.thread524, %bb.aa
  %.sink597 = phi i32 [ 262144, %bb.aa ], [ 524288, %.thread524 ]
  %i.ta = load i32, ptr %i.cs, align 4, !tbaa !190
  %i.tb = or i32 %i.ta, %.sink597
  store i32 %i.tb, ptr %i.cs, align 4, !tbaa !190
  %.val = load ptr, ptr %i.ab, align 8, !tbaa !244
  %i.tc = lshr i32 %i.at, 6
  %i.td = and i32 %i.at, 63
  %i.te = zext nneg i32 %i.td to i64
  %i.tf = shl nuw i64 1, %i.te
  %i.tg = zext nneg i32 %i.tc to i64
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.tg ; 2 uses
  %i.ti = load i64, ptr %i.th, align 8, !tbaa !245
  %i.tj = or i64 %i.ti, %i.tf
  store i64 %i.tj, ptr %i.th, align 8, !tbaa !245
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %.thread524
  %i.tk = load i32, ptr %i.sc, align 8, !tbaa !272 ; 2 uses
  %i.tl = icmp sgt i32 %i.tk, 0
  br i1 %i.tl, label %.lr.ph551, label %.loopexit

.lr.ph551:                                        ; preds = %bb.ab
  %i.tm = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !273
  %wide.trip.count570 = zext nneg i32 %i.tk to i64
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph551, %._crit_edge548
  %indvars.iv567 = phi i64 [ 0, %.lr.ph551 ], [ %indvars.iv.next568, %._crit_edge548 ] ; 2 uses
  %i.to = getelementptr inbounds nuw [268 x i8], ptr %i.tn, i64 %indvars.iv567 ; 6 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 264
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !275 ; 3 uses
  %i.tr = icmp sgt i32 %i.tq, 0
  br i1 %i.tr, label %.lr.ph547.preheader, label %._crit_edge548

end_hunk_0
