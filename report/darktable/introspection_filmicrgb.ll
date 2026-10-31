Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_filmicrgb?download=true
inline.NumInlined: 325
inline.NumDeleted: 106
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 80
begin_hunk_0_@process:bb.a
  %i.ir = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.i.6
  store <4 x float> %.sroa.0.12.vec.insert.i.6, ptr %i.ir, align 16, !tbaa !109, !alias.scope !322, !nontemporal !110
  %i.is = or disjoint i64 %.01012.i, 7            ; 2 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.is
  %i.iu = load float, ptr %i.it, align 4, !tbaa !13, !alias.scope !320
  %.sroa.0.0.vec.insert.i.7 = insertelement <4 x float> poison, float %i.iu, i64 0
  %.sroa.0.12.vec.insert.i.7 = shufflevector <4 x float> %.sroa.0.0.vec.insert.i.7, <4 x float> poison, <4 x i32> zeroinitializer
  %.idx.i.7 = shl i64 %i.is, 4
  %i.iv = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.i.7
  store <4 x float> %.sroa.0.12.vec.insert.i.7, ptr %i.iv, align 16, !tbaa !109, !alias.scope !322, !nontemporal !110
  %i.iw = add nuw i64 %.01012.i, 8                ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %display_mask.exit.loopexit.unr-lcssa, label %.lr.ph.i211

display_mask.exit.loopexit.unr-lcssa:             ; preds = %.lr.ph.i211
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %display_mask.exit, label %.lr.ph.i211.epil.preheader

.lr.ph.i211.epil.preheader:                       ; preds = %display_mask.exit.loopexit.unr-lcssa, %.lr.ph.i211.preheader
  %.01012.i.epil.init = phi i64 [ 0, %.lr.ph.i211.preheader ], [ %i.iw, %display_mask.exit.loopexit.unr-lcssa ]
  %lcmp.mod523 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod523)
  br label %.lr.ph.i211.epil

.lr.ph.i211.epil:                                 ; preds = %.lr.ph.i211.epil, %.lr.ph.i211.epil.preheader
  %.01012.i.epil = phi i64 [ %i.ja, %.lr.ph.i211.epil ], [ %.01012.i.epil.init, %.lr.ph.i211.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i211.epil ], [ 0, %.lr.ph.i211.epil.preheader ]
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.01012.i.epil
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !13, !alias.scope !320
  %.sroa.0.0.vec.insert.i.epil = insertelement <4 x float> poison, float %i.iy, i64 0
  %.sroa.0.12.vec.insert.i.epil = shufflevector <4 x float> %.sroa.0.0.vec.insert.i.epil, <4 x float> poison, <4 x i32> zeroinitializer
  %.idx.i.epil = shl i64 %.01012.i.epil, 4
  %i.iz = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.i.epil
  store <4 x float> %.sroa.0.12.vec.insert.i.epil, ptr %i.iz, align 16, !tbaa !109, !alias.scope !322, !nontemporal !110
  %i.ja = add nuw i64 %.01012.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %display_mask.exit, label %.lr.ph.i211.epil, !llvm.loop !275

display_mask.exit:                                ; preds = %display_mask.exit.loopexit.unr-lcssa, %.lr.ph.i211.epil, %bb.g
  call void @llvm.x86.sse.sfence(), !noalias !323
  br label %.sink.split

.critedge:                                        ; preds = %bb.d, %bb.f, %bb.e
  %i.jb = and i32 %.val.pre, 256
  %.not205 = icmp eq i32 %i.jb, 0
  br i1 %.not205, label %bb.h, label %.thread

bb.h:                                             ; preds = %.critedge
  %i.jc = load i32, ptr %i.al, align 4, !tbaa !68
  %i.jd = sext i32 %i.jc to i64
  %i.je = load i32, ptr %i.ao, align 4, !tbaa !69
  %i.jf = sext i32 %i.je to i64
  %i.jg = shl nsw i64 %i.jd, 4
  %i.jh = mul i64 %i.jg, %i.jf
  %i.ji = call ptr @dt_alloc_aligned(i64 noundef %i.jh) #20 ; 15 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ji, i64 64) ]
  %i.jj = icmp ne ptr %i.at, null
  %or.cond5 = select i1 %i.ha, i1 %i.jj, i1 false
  %i.jk = icmp ne ptr %i.ji, null
  %or.cond7 = select i1 %or.cond5, i1 %i.jk, i1 false
  br i1 %or.cond7, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.jl = load i32, ptr %i.al, align 4, !tbaa !68
  %i.jm = sext i32 %i.jl to i64
  %i.jn = load i32, ptr %i.ao, align 4, !tbaa !69
  %i.jo = sext i32 %i.jn to i64
  %i.jp = shl nsw i64 %i.jm, 4
  %i.jq = mul i64 %i.jp, %i.jo
  %i.jr = call ptr @dt_alloc_aligned(i64 noundef %i.jq) #20 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jr, i64 64) ]
  %.not206 = icmp eq ptr %i.jr, null
  br i1 %.not206, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.js = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.jt = load float, ptr %i.js, align 64, !tbaa !112
  %i.ju = fdiv reassoc nsz arcp contract afn float %i.jt, %i.az
  %i.jv = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.jw = load float, ptr %i.jv, align 16, !tbaa !113
  %i.jx = getelementptr inbounds nuw i8, ptr %i.af, i64 272
  %i.jy = load i32, ptr %i.jx, align 16, !tbaa !114
  %i.jz = load i32, ptr %i.al, align 4, !tbaa !68 ; 2 uses
  %i.ka = sext i32 %i.jz to i64                   ; 2 uses
  %i.kb = load i32, ptr %i.ao, align 4, !tbaa !69 ; 2 uses
  %i.kc = sext i32 %i.kb to i64
  %.not.i212 = icmp eq i32 %i.kb, 0
  br i1 %.not.i212, label %.loopexit398, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.j
  %.not82.i = icmp eq i32 %i.jz, 0
  %i.kd = call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float +inf)
  %i.ke = fmul reassoc nsz arcp contract afn float %i.kd, 0.000000e+00
  br i1 %.not82.i, label %.loopexit398, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader.lr.ph.i
  %i.kf = insertelement <4 x float> poison, float %i.jw, i64 0
  %i.kg = shufflevector <4 x float> %i.kf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kh = insertelement <4 x float> poison, float %i.ju, i64 0
  %i.ki = shufflevector <4 x float> %i.kh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kj = insertelement <4 x float> poison, float %i.ke, i64 3 ; 2 uses
  %i.kk = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.kg
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.i
  %.04280.i = phi i64 [ %i.kn, %._crit_edge.i ], [ 0, %.preheader.i.preheader ] ; 3 uses
  %i.kl = add i64 %.04280.i, 3
  %i.km = mul i64 %.04280.i, %i.ka
  br label %bb.k

._crit_edge.i:                                    ; preds = %dt_noise_generator_simd.exit.i
  %i.kn = add nuw i64 %.04280.i, 1                ; 2 uses
  %exitcond83.not.i = icmp eq i64 %i.kn, %i.kc
  br i1 %exitcond83.not.i, label %.loopexit398, label %.preheader.i

bb.k:                                             ; preds = %dt_noise_generator_simd.exit.i, %.preheader.i
  %.04178.i = phi i64 [ 0, %.preheader.i ], [ %i.kt, %dt_noise_generator_simd.exit.i ] ; 2 uses
  %i.ko = add i64 %.04178.i, %i.km                ; 2 uses
  %i.kp = shl i64 %i.ko, 2                        ; 2 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ko
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !13
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kp ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ks, i64 16) ]
  %i.kt = add nuw i64 %.04178.i, 1                ; 5 uses
  %i.ku = lshr i64 %i.kt, 33
  %i.kv = xor i64 %i.ku, %i.kt
  %i.kw = mul i64 %i.kv, 7109453100751455733      ; 2 uses
  %i.kx = lshr i64 %i.kw, 28
  %i.ky = xor i64 %i.kx, %i.kw
  %i.kz = mul i64 %i.ky, -3808689974395783757
  %i.la = lshr i64 %i.kz, 32
  %i.lb = trunc nuw i64 %i.la to i32              ; 2 uses
  %i.lc = mul i64 %i.kt, %i.kl                    ; 2 uses
  %i.ld = lshr i64 %i.lc, 33
  %i.le = xor i64 %i.ld, %i.lc
  %i.lf = mul i64 %i.le, 7109453100751455733      ; 2 uses
  %i.lg = lshr i64 %i.lf, 28
  %i.lh = xor i64 %i.lg, %i.lf
  %i.li = mul i64 %i.lh, -3808689974395783757
  %i.lj = lshr i64 %i.li, 32
  %i.lk = trunc nuw i64 %i.lj to i32              ; 3 uses
  %i.ll = shl i32 %i.lk, 9
  %i.lm = xor i32 %i.lb, 635086878                ; 2 uses
  %i.ln = xor i32 %i.lk, -1171427716              ; 3 uses
  %i.lo = xor i32 %i.lm, %i.lk                    ; 3 uses
  %i.lp = xor i32 %i.ln, %i.lb                    ; 2 uses
  %i.lq = xor i32 %i.ll, %i.lm
  %i.lr = call noundef i32 @llvm.fshl.i32(i32 %i.ln, i32 %i.ln, i32 11)
  %i.ls = shl i32 %i.lo, 9
  %i.lt = xor i32 %i.lq, %i.lp                    ; 2 uses
  %i.lu = xor i32 %i.lr, %i.lo                    ; 3 uses
  %i.lv = xor i32 %i.lt, %i.lo                    ; 3 uses
  %i.lw = xor i32 %i.lu, %i.lp                    ; 2 uses
  %i.lx = xor i32 %i.lt, %i.ls
  %i.ly = call noundef i32 @llvm.fshl.i32(i32 %i.lu, i32 %i.lu, i32 11)
  %i.lz = shl i32 %i.lv, 9
  %i.ma = xor i32 %i.lx, %i.lw                    ; 2 uses
  %i.mb = xor i32 %i.lv, %i.ly                    ; 3 uses
  %i.mc = xor i32 %i.ma, %i.lv                    ; 3 uses
  %i.md = xor i32 %i.mb, %i.lw                    ; 2 uses
  %i.me = xor i32 %i.ma, %i.lz
  %i.mf = call noundef i32 @llvm.fshl.i32(i32 %i.mb, i32 %i.mb, i32 11)
  %i.mg = shl i32 %i.mc, 9
  %i.mh = xor i32 %i.me, %i.md                    ; 2 uses
  %i.mi = xor i32 %i.mc, %i.mf                    ; 3 uses
  %i.mj = xor i32 %i.mh, %i.mc                    ; 4 uses
  %i.mk = xor i32 %i.mi, %i.md                    ; 5 uses
  %i.ml = xor i32 %i.mh, %i.mg
  %i.mm = xor i32 %i.ml, %i.mk                    ; 3 uses
  %i.mn = xor i32 %i.mm, %i.mj                    ; 7 uses
  %i.mo = load <4 x float>, ptr %i.ks, align 16, !tbaa !13 ; 7 uses
  %i.mp = fmul reassoc nsz arcp contract afn <4 x float> %i.ki, %i.mo
  %i.mq = fmul reassoc nsz arcp contract afn <4 x float> %i.mp, %i.kk ; 7 uses
  %i.mr = call noundef i32 @llvm.fshl.i32(i32 %i.mi, i32 %i.mi, i32 11) ; 4 uses
  %i.ms = xor i32 %i.mj, %i.mr                    ; 3 uses
  %i.mt = xor i32 %i.ms, %i.mk                    ; 8 uses
  %i.mu = call noundef i32 @llvm.fshl.i32(i32 %i.ms, i32 %i.ms, i32 11) ; 6 uses
  switch i32 %i.jy, label %bb.l [
    i32 2, label %poisson_noise_simd.exit.i.i
    i32 1, label %gaussian_noise_simd.exit.i.i
  ]

bb.l:                                             ; preds = %bb.k
  %i.mv = add i32 %i.mr, %i.mk
  %i.mw = add i32 %i.mu, %i.mt
  %i.mx = xor i32 %i.mn, %i.mu                    ; 3 uses
  %i.my = xor i32 %i.mx, %i.mt
  %i.mz = call noundef i32 @llvm.fshl.i32(i32 %i.mx, i32 %i.mx, i32 11)
  %i.na = add i32 %i.mz, %i.my
  %i.nb = lshr i32 %i.na, 8
  %i.nc = uitofp reassoc nsz arcp contract afn nneg i32 %i.nb to float
  %i.nd = fmul reassoc nnan nsz arcp contract afn float %i.nc, f0x34000000
  %i.ne = fadd reassoc nnan nsz arcp contract afn float %i.nd, -1.000000e+00
  %i.nf = extractelement <4 x float> %i.mq, i64 2
  %i.ng = fmul reassoc nsz arcp contract afn float %i.ne, %i.nf
  %i.nh = insertelement <2 x i32> poison, i32 %i.mv, i64 0
  %i.ni = insertelement <2 x i32> %i.nh, i32 %i.mw, i64 1
  %i.nj = lshr <2 x i32> %i.ni, splat (i32 8)
  %i.nk = uitofp reassoc nsz arcp contract afn nneg <2 x i32> %i.nj to <2 x float>
  %i.nl = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.nk, splat (float f0x34000000)
  %i.nm = fadd reassoc nnan nsz arcp contract afn <2 x float> %i.nl, splat (float -1.000000e+00)
  %i.nn = shufflevector <4 x float> %i.mq, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.no = fmul reassoc nsz arcp contract afn <2 x float> %i.nm, %i.nn
  %i.np = shufflevector <4 x float> %i.mo, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.nq = fadd reassoc nsz arcp contract afn <2 x float> %i.no, %i.np
  %i.nr = shufflevector <4 x float> %i.mo, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.ns = shufflevector <4 x float> %i.mq, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.nt = insertelement <2 x float> %i.ns, float %i.ng, i64 0 ; 2 uses
  %i.nu = fadd reassoc nsz arcp contract afn <2 x float> %i.nr, %i.nt
  %i.nv = fsub reassoc nsz arcp contract afn <2 x float> %i.nr, %i.nt
  %i.nw = shufflevector <2 x float> %i.nu, <2 x float> %i.nv, <4 x i32> <i32 poison, i32 poison, i32 0, i32 3>
  %i.nx = shufflevector <2 x float> %i.nq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ny = shufflevector <4 x float> %i.nx, <4 x float> %i.nw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %dt_noise_generator_simd.exit.i

gaussian_noise_simd.exit.i.i:                     ; preds = %bb.k
  %i.nz = shl i32 %i.mj, 9
  %i.oa = shl i32 %i.mn, 9
  %i.ob = xor i32 %i.nz, %i.mm
  %i.oc = xor i32 %i.ob, %i.mt                    ; 2 uses
  %i.od = xor i32 %i.mn, %i.mu                    ; 3 uses
  %i.oe = xor i32 %i.oc, %i.mn                    ; 3 uses
  %i.of = xor i32 %i.od, %i.mt                    ; 3 uses
  %i.og = xor i32 %i.oc, %i.oa
  %i.oh = call noundef i32 @llvm.fshl.i32(i32 %i.od, i32 %i.od, i32 11) ; 2 uses
  %i.oi = shl i32 %i.oe, 9
  %i.oj = xor i32 %i.og, %i.of                    ; 2 uses
  %i.ok = xor i32 %i.oe, %i.oh                    ; 3 uses
  %i.ol = xor i32 %i.oj, %i.oe                    ; 2 uses
  %i.om = xor i32 %i.ok, %i.of                    ; 3 uses
  %i.on = xor i32 %i.oj, %i.oi
  %i.oo = call noundef i32 @llvm.fshl.i32(i32 %i.ok, i32 %i.ok, i32 11) ; 2 uses
  %i.op = add i32 %i.oo, %i.om
  %i.oq = xor i32 %i.on, %i.om
  %i.or = xor i32 %i.ol, %i.oo                    ; 3 uses
  %i.os = xor i32 %i.oq, %i.ol
  %i.ot = xor i32 %i.or, %i.om                    ; 2 uses
  %i.ou = call noundef i32 @llvm.fshl.i32(i32 %i.or, i32 %i.or, i32 11) ; 2 uses
  %i.ov = lshr i32 %i.op, 8
  %i.ow = uitofp reassoc nsz arcp contract afn nneg i32 %i.ov to float
  %i.ox = add i32 %i.ou, %i.ot
  %i.oy = xor i32 %i.os, %i.ou                    ; 3 uses
  %i.oz = xor i32 %i.oy, %i.ot
  %i.pa = call noundef i32 @llvm.fshl.i32(i32 %i.oy, i32 %i.oy, i32 11)
  %i.pb = lshr i32 %i.ox, 8
  %i.pc = uitofp reassoc nsz arcp contract afn nneg i32 %i.pb to float
  %i.pd = add i32 %i.pa, %i.oz
  %i.pe = lshr i32 %i.pd, 8
  %i.pf = uitofp reassoc nsz arcp contract afn nneg i32 %i.pe to float
  %i.pg = fmul reassoc nnan nsz arcp contract afn float %i.ow, f0x34C90FDB
  %sincos.i.i.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.pg)
  %cos.i.i.i = extractvalue { float, float } %sincos.i.i.i, 1
  %i.ph = fmul reassoc nnan nsz arcp contract afn float %i.pc, f0x34C90FDB
  %sincos70.i.i.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.ph)
  %sin71.i.i.i = extractvalue { float, float } %sincos70.i.i.i, 0
  %i.pi = fmul reassoc nnan nsz arcp contract afn float %i.pf, f0x34C90FDB
  %sincos73.i.i.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.pi)
  %cos75.i.i.i = extractvalue { float, float } %sincos73.i.i.i, 1
  %i.pj = add i32 %i.oh, %i.of
  %i.pk = lshr i32 %i.pj, 8
  %i.pl = uitofp reassoc nsz arcp contract afn nneg i32 %i.pk to float
  %i.pm = fmul reassoc nnan nsz arcp contract afn float %i.pl, f0x33800000
  %i.pn = call reassoc nnan nsz arcp contract afn float @llvm.maxnum.f32(float %i.pm, float f0x00800000)
  %i.po = call fast float @llvm.log.f32(float %i.pn)
  %i.pp = fmul reassoc nnan nsz arcp contract afn float %i.po, -2.000000e+00
  %i.pq = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.pp)
  %i.pr = add i32 %i.mu, %i.mt
  %i.ps = add i32 %i.mr, %i.mk
  %i.pt = insertelement <2 x i32> poison, i32 %i.ps, i64 0
  %i.pu = insertelement <2 x i32> %i.pt, i32 %i.pr, i64 1
  %i.pv = lshr <2 x i32> %i.pu, splat (i32 8)
  %i.pw = uitofp reassoc nsz arcp contract afn nneg <2 x i32> %i.pv to <2 x float>
  %i.px = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.pw, splat (float f0x33800000)
  %i.py = call reassoc nnan nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.px, <2 x float> splat (float f0x00800000))
  %i.pz = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.py)
  %i.qa = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.pz, splat (float -2.000000e+00)
  %i.qb = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.pq, i64 2
  %i.qc = call reassoc nsz arcp contract afn <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.qa)
  %i.qd = shufflevector <2 x float> %i.qc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qe = shufflevector <4 x float> %i.qd, <4 x float> %i.qb, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.qf = fmul reassoc nsz arcp contract afn <4 x float> %i.mq, %i.qe
  %i.qg = insertelement <4 x float> %i.kj, float %cos.i.i.i, i64 0
  %i.qh = insertelement <4 x float> %i.qg, float %sin71.i.i.i, i64 1
  %i.qi = insertelement <4 x float> %i.qh, float %cos75.i.i.i, i64 2
  %i.qj = fmul reassoc nsz arcp contract afn <4 x float> %i.qf, %i.qi
  %i.qk = fadd reassoc nsz arcp contract afn <4 x float> %i.qj, %i.mo
  br label %dt_noise_generator_simd.exit.i

poisson_noise_simd.exit.i.i:                      ; preds = %bb.k
  %i.ql = shl i32 %i.mj, 9
  %i.qm = add i32 %i.mu, %i.mt
  %i.qn = shl i32 %i.mn, 9
  %i.qo = xor i32 %i.ql, %i.mm
  %i.qp = xor i32 %i.qo, %i.mt                    ; 2 uses
  %i.qq = xor i32 %i.mn, %i.mu                    ; 3 uses
  %i.qr = xor i32 %i.qp, %i.mn                    ; 3 uses
  %i.qs = xor i32 %i.qq, %i.mt                    ; 3 uses
  %i.qt = xor i32 %i.qp, %i.qn
  %i.qu = call noundef i32 @llvm.fshl.i32(i32 %i.qq, i32 %i.qq, i32 11) ; 2 uses
  %i.qv = lshr i32 %i.qm, 8
  %i.qw = uitofp reassoc nsz arcp contract afn nneg i32 %i.qv to float
  %i.qx = shl i32 %i.qr, 9
  %i.qy = xor i32 %i.qt, %i.qs                    ; 2 uses
  %i.qz = xor i32 %i.qr, %i.qu                    ; 3 uses
  %i.ra = xor i32 %i.qy, %i.qr                    ; 2 uses
  %i.rb = xor i32 %i.qz, %i.qs                    ; 3 uses
  %i.rc = xor i32 %i.qy, %i.qx
  %i.rd = call noundef i32 @llvm.fshl.i32(i32 %i.qz, i32 %i.qz, i32 11) ; 2 uses
  %i.re = add i32 %i.rd, %i.rb
  %i.rf = xor i32 %i.rc, %i.rb
  %i.rg = xor i32 %i.ra, %i.rd                    ; 3 uses
  %i.rh = xor i32 %i.rf, %i.ra
  %i.ri = xor i32 %i.rg, %i.rb                    ; 2 uses
  %i.rj = call noundef i32 @llvm.fshl.i32(i32 %i.rg, i32 %i.rg, i32 11) ; 2 uses
  %i.rk = lshr i32 %i.re, 8
  %i.rl = uitofp reassoc nsz arcp contract afn nneg i32 %i.rk to float
  %i.rm = xor i32 %i.rh, %i.rj                    ; 3 uses
  %i.rn = xor i32 %i.rm, %i.ri
  %i.ro = call noundef i32 @llvm.fshl.i32(i32 %i.rm, i32 %i.rm, i32 11)
  %i.rp = add i32 %i.ro, %i.rn
  %i.rq = lshr i32 %i.rp, 8
  %i.rr = uitofp reassoc nsz arcp contract afn nneg i32 %i.rq to float
  %i.rs = fmul reassoc nnan nsz arcp contract afn float %i.qw, f0x34C90FDB
  %sincos.i16.i.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.rs)
  %cos.i17.i.i = extractvalue { float, float } %sincos.i16.i.i, 1
  %i.rt = fmul reassoc nnan nsz arcp contract afn float %i.rl, f0x34C90FDB
  %sincos60.i.i.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.rt)
  %sin61.i.i.i = extractvalue { float, float } %sincos60.i.i.i, 0
  %i.ru = fmul reassoc nnan nsz arcp contract afn float %i.rr, f0x34C90FDB
  %sincos63.i.i.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.ru)
  %cos65.i.i.i = extractvalue { float, float } %sincos63.i.i.i, 1
  %i.rv = add i32 %i.rj, %i.ri
  %i.rw = lshr i32 %i.rv, 8
  %i.rx = uitofp reassoc nsz arcp contract afn nneg i32 %i.rw to float
  %i.ry = fmul reassoc nnan nsz arcp contract afn float %i.rx, f0x33800000
  %i.rz = call reassoc nnan nsz arcp contract afn float @llvm.maxnum.f32(float %i.ry, float f0x00800000)
  %i.sa = call fast float @llvm.log.f32(float %i.rz)
  %i.sb = fmul reassoc nnan nsz arcp contract afn float %i.sa, -2.000000e+00
  %i.sc = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.sb)
  %i.sd = fadd reassoc nsz arcp contract afn <4 x float> %i.mo, splat (float 3.750000e-01)
  %i.se = fmul reassoc nsz arcp contract afn <4 x float> %i.mq, %i.mq
  %i.sf = add i32 %i.qu, %i.qs
  %i.sg = add i32 %i.mr, %i.mk
  %i.sh = insertelement <2 x i32> poison, i32 %i.sg, i64 0
  %i.si = insertelement <2 x i32> %i.sh, i32 %i.sf, i64 1
  %i.sj = lshr <2 x i32> %i.si, splat (i32 8)
  %i.sk = uitofp reassoc nsz arcp contract afn nneg <2 x i32> %i.sj to <2 x float>
  %i.sl = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.sk, splat (float f0x33800000)
  %i.sm = call reassoc nnan nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.sl, <2 x float> splat (float f0x00800000))
  %i.sn = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.sm)
  %i.so = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.sn, splat (float -2.000000e+00)
  %i.sp = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.sc, i64 2
  %i.sq = call reassoc nsz arcp contract afn <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.so)
  %i.sr = shufflevector <2 x float> %i.sq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ss = shufflevector <4 x float> %i.sr, <4 x float> %i.sp, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.st = fmul reassoc nsz arcp contract afn <4 x float> %i.mq, %i.ss
  %i.su = insertelement <4 x float> %i.kj, float %cos.i17.i.i, i64 0
  %i.sv = insertelement <4 x float> %i.su, float %sin61.i.i.i, i64 1
  %i.sw = insertelement <4 x float> %i.sv, float %cos65.i.i.i, i64 2
  %i.sx = fmul reassoc nsz arcp contract afn <4 x float> %i.st, %i.sw
  %i.sy = call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.sd, <4 x float> zeroinitializer)
  %i.sz = call reassoc nnan nsz arcp contract afn <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.sy)
  %i.ta = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.sz, splat (float 2.000000e+00)
  %i.tb = fadd reassoc nsz arcp contract afn <4 x float> %i.ta, %i.sx ; 2 uses
  %i.tc = fmul reassoc nsz arcp contract afn <4 x float> %i.tb, %i.tb
  %i.td = fsub reassoc nsz arcp contract afn <4 x float> %i.tc, %i.se
  %i.te = fmul reassoc nsz arcp contract afn <4 x float> %i.td, splat (float 2.500000e-01)
  %i.tf = fadd reassoc nsz arcp contract afn <4 x float> %i.te, splat (float -3.750000e-01)
  br label %dt_noise_generator_simd.exit.i

dt_noise_generator_simd.exit.i:                   ; preds = %poisson_noise_simd.exit.i.i, %gaussian_noise_simd.exit.i.i, %bb.l
  %i.tg = phi <4 x float> [ %i.ny, %bb.l ], [ %i.tf, %poisson_noise_simd.exit.i.i ], [ %i.qk, %gaussian_noise_simd.exit.i.i ]
  %i.th = fsub reassoc nsz arcp contract afn <4 x float> %i.tg, %i.mo
  %i.ti = insertelement <4 x float> poison, float %i.kr, i64 0
  %i.tj = shufflevector <4 x float> %i.ti, <4 x float> poison, <4 x i32> zeroinitializer
  %i.tk = fmul reassoc nsz arcp contract afn <4 x float> %i.th, %i.tj
  %i.tl = fadd reassoc nsz arcp contract afn <4 x float> %i.tk, %i.mo ; 2 uses
  %i.tm = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.tl, zeroinitializer
  %i.tn = select <4 x i1> %i.tm, <4 x float> %i.tl, <4 x float> zeroinitializer
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.kp
  store <4 x float> %i.tn, ptr %i.to, align 16, !tbaa !109, !alias.scope !324, !nontemporal !110
  %exitcond.not.i215 = icmp eq i64 %i.kt, %i.ka
  br i1 %exitcond.not.i215, label %._crit_edge.i, label %bb.k

.loopexit398:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.i, %bb.j
  call void @llvm.x86.sse.sfence()
  %.val209 = load float, ptr %i.aw, align 4, !tbaa !26
  %i.tp = call fastcc i32 @reconstruct_highlights(ptr noundef %i.jr, ptr noundef %i.at, ptr noundef %i.ji, i32 noundef 0, ptr noundef %i.af, ptr noundef %1, float %.val209, ptr noundef %5)
  call void @free(ptr noundef nonnull %i.jr) #20
  %.fr = freeze i32 %i.tp
  %i.tq = icmp ne i32 %.fr, 0                     ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.af, i64 80 ; 3 uses
  %i.ts = load i32, ptr %i.tr, align 16, !tbaa !67
  %i.tt = icmp sgt i32 %i.ts, 0
  %or.cond9 = and i1 %i.tt, %i.tq
  br i1 %or.cond9, label %bb.m, label %.thread394

bb.m:                                             ; preds = %.loopexit398
  %i.tu = load i32, ptr %i.al, align 4, !tbaa !68
  %i.tv = sext i32 %i.tu to i64
  %i.tw = load i32, ptr %i.ao, align 4, !tbaa !69
  %i.tx = sext i32 %i.tw to i64
  %i.ty = shl nsw i64 %i.tv, 2
  %i.tz = mul i64 %i.ty, %i.tx
  %i.ua = call ptr @dt_alloc_aligned(i64 noundef %i.tz) #20 ; 9 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ua, i64 64) ]
  %i.ub = load i32, ptr %i.al, align 4, !tbaa !68
  %i.uc = sext i32 %i.ub to i64
  %i.ud = load i32, ptr %i.ao, align 4, !tbaa !69
  %i.ue = sext i32 %i.ud to i64
  %i.uf = shl nsw i64 %i.uc, 4
  %i.ug = mul i64 %i.uf, %i.ue
  %i.uh = call ptr @dt_alloc_aligned(i64 noundef %i.ug) #20 ; 8 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.uh, i64 64) ]
  %i.ui = icmp ne ptr %i.ua, null
  %i.uj = icmp ne ptr %i.uh, null
  %or.cond11 = select i1 %i.ui, i1 %i.uj, i1 false
  br i1 %or.cond11, label %.preheader, label %.critedge504

.preheader:                                       ; preds = %bb.m
  %i.uk = load i32, ptr %i.tr, align 16, !tbaa !67
  %i.ul = icmp sgt i32 %i.uk, 0
  br i1 %i.ul, label %.lr.ph.preheader, label %.critedge504

.lr.ph.preheader:                                 ; preds = %.preheader
  %.pre409 = load i32, ptr %i.al, align 4, !tbaa !68
  %.pre410 = load i32, ptr %i.ao, align 4, !tbaa !69
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %restore_ratios.exit
  %i.um = phi i32 [ %i.xa, %restore_ratios.exit ], [ %.pre410, %.lr.ph.preheader ]
  %i.un = phi i32 [ %i.wy, %restore_ratios.exit ], [ %.pre409, %.lr.ph.preheader ]
  %.0406 = phi i32 [ %i.yf, %restore_ratios.exit ], [ 0, %.lr.ph.preheader ]
  %.0188405 = phi i1 [ %i.wx, %restore_ratios.exit ], [ true, %.lr.ph.preheader ]
  %i.uo = sext i32 %i.un to i64
  %i.up = sext i32 %i.um to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !325)
  call void @llvm.experimental.noalias.scope.decl(metadata !326)
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %i.uq = shl nsw i64 %i.uo, 2
  %i.ur = mul i64 %i.uq, %i.up                    ; 2 uses
  %.not.i216 = icmp eq i64 %i.ur, 0
  br i1 %.not.i216, label %compute_ratios.exit, label %.lr.ph.i217.preheader

.lr.ph.i217.preheader:                            ; preds = %.lr.ph
  %i.us = add i64 %i.ur, -4                       ; 3 uses
  %i.ut = lshr exact i64 %i.us, 2
  %i.uu = add nuw nsw i64 %i.ut, 1                ; 2 uses
  %i.uv = icmp eq i64 %i.us, 0
  br i1 %i.uv, label %.lr.ph.i217.epil.preheader, label %.lr.ph.i217.preheader.new

.lr.ph.i217.preheader.new:                        ; preds = %.lr.ph.i217.preheader
  %unroll_iter528 = and i64 %i.uu, 9223372036854775806
  br label %.lr.ph.i217

.lr.ph.i217:                                      ; preds = %.lr.ph.i217, %.lr.ph.i217.preheader.new
  %.0232.i = phi i64 [ 0, %.lr.ph.i217.preheader.new ], [ %i.wd, %.lr.ph.i217 ] ; 5 uses
  %niter529 = phi i64 [ 0, %.lr.ph.i217.preheader.new ], [ %niter529.next.1, %.lr.ph.i217 ]
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %.0232.i ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 4
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ua, i64 %.0232.i
  %i.uz = load <4 x float>, ptr %i.uw, align 32, !tbaa !13, !alias.scope !325 ; 5 uses
  %i.va = load float, ptr %i.ux, align 4, !tbaa !13, !alias.scope !325 ; 2 uses
  %foldExtExtBinop = fmul reassoc nsz arcp contract afn <4 x float> %i.uz, %i.uz
  %i.vb = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.vc = fmul reassoc nsz arcp contract afn float %i.va, %i.va
  %i.vd = fadd reassoc nsz arcp contract afn float %i.vc, %i.vb
  %foldExtExtBinop506 = fmul reassoc nsz arcp contract afn <4 x float> %i.uz, %i.uz
  %i.ve = extractelement <4 x float> %foldExtExtBinop506, i64 2
  %i.vf = fadd reassoc nsz arcp contract afn float %i.vd, %i.ve
  %i.vg = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.vf) ; 2 uses
  %i.vh = fcmp reassoc nsz arcp contract afn ogt float %i.vg, f0x37800000
  %spec.select.i218 = select reassoc nsz arcp contract afn i1 %i.vh, float %i.vg, float f0x37800000 ; 2 uses
  store float %spec.select.i218, ptr %i.uy, align 8, !tbaa !13, !alias.scope !326
  %i.vi = insertelement <4 x float> poison, float %spec.select.i218, i64 0
  %i.vj = shufflevector <4 x float> %i.vi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vk = fdiv reassoc nsz arcp contract afn <4 x float> %i.uz, %i.vj
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %.0232.i
  store <4 x float> %i.vk, ptr %i.vl, align 32, !tbaa !109, !alias.scope !328, !nontemporal !110
  %i.vm = or disjoint i64 %.0232.i, 4             ; 3 uses
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %i.vm ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 4
  %i.vp = getelementptr inbounds nuw i8, ptr %i.ua, i64 %i.vm
  %i.vq = load <4 x float>, ptr %i.vn, align 16, !tbaa !13, !alias.scope !325 ; 5 uses
  %i.vr = load float, ptr %i.vo, align 4, !tbaa !13, !alias.scope !325 ; 2 uses
  %foldExtExtBinop.1 = fmul reassoc nsz arcp contract afn <4 x float> %i.vq, %i.vq
  %i.vs = extractelement <4 x float> %foldExtExtBinop.1, i64 0
  %i.vt = fmul reassoc nsz arcp contract afn float %i.vr, %i.vr
  %i.vu = fadd reassoc nsz arcp contract afn float %i.vt, %i.vs
  %foldExtExtBinop506.1 = fmul reassoc nsz arcp contract afn <4 x float> %i.vq, %i.vq
  %i.vv = extractelement <4 x float> %foldExtExtBinop506.1, i64 2
  %i.vw = fadd reassoc nsz arcp contract afn float %i.vu, %i.vv
  %i.vx = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.vw) ; 2 uses
  %i.vy = fcmp reassoc nsz arcp contract afn ogt float %i.vx, f0x37800000
  %spec.select.i218.1 = select reassoc nsz arcp contract afn i1 %i.vy, float %i.vx, float f0x37800000 ; 2 uses
  store float %spec.select.i218.1, ptr %i.vp, align 4, !tbaa !13, !alias.scope !326
  %i.vz = insertelement <4 x float> poison, float %spec.select.i218.1, i64 0
  %i.wa = shufflevector <4 x float> %i.vz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wb = fdiv reassoc nsz arcp contract afn <4 x float> %i.vq, %i.wa
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %i.vm
  store <4 x float> %i.wb, ptr %i.wc, align 16, !tbaa !109, !alias.scope !328, !nontemporal !110
  %i.wd = add nuw i64 %.0232.i, 8                 ; 2 uses
  %niter529.next.1 = add i64 %niter529, 2         ; 2 uses
  %niter529.ncmp.1.not = icmp eq i64 %niter529.next.1, %unroll_iter528
  br i1 %niter529.ncmp.1.not, label %compute_ratios.exit.loopexit.unr-lcssa, label %.lr.ph.i217

compute_ratios.exit.loopexit.unr-lcssa:           ; preds = %.lr.ph.i217
  %i.we = and i64 %i.us, 4
  %lcmp.mod526.not.not = icmp eq i64 %i.we, 0
  br i1 %lcmp.mod526.not.not, label %.lr.ph.i217.epil.preheader, label %compute_ratios.exit

.lr.ph.i217.epil.preheader:                       ; preds = %compute_ratios.exit.loopexit.unr-lcssa, %.lr.ph.i217.preheader
  %.0232.i.epil.init = phi i64 [ 0, %.lr.ph.i217.preheader ], [ %i.wd, %compute_ratios.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod527 = trunc i64 %i.uu to i1
  call void @llvm.assume(i1 %lcmp.mod527)
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %.0232.i.epil.init ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 4
  %i.wh = getelementptr inbounds nuw i8, ptr %i.ua, i64 %.0232.i.epil.init
  %i.wi = load <4 x float>, ptr %i.wf, align 16, !tbaa !13, !alias.scope !325 ; 5 uses
  %i.wj = load float, ptr %i.wg, align 4, !tbaa !13, !alias.scope !325 ; 2 uses
  %foldExtExtBinop.epil = fmul reassoc nsz arcp contract afn <4 x float> %i.wi, %i.wi
  %i.wk = extractelement <4 x float> %foldExtExtBinop.epil, i64 0
  %i.wl = fmul reassoc nsz arcp contract afn float %i.wj, %i.wj
  %i.wm = fadd reassoc nsz arcp contract afn float %i.wl, %i.wk
  %foldExtExtBinop506.epil = fmul reassoc nsz arcp contract afn <4 x float> %i.wi, %i.wi
  %i.wn = extractelement <4 x float> %foldExtExtBinop506.epil, i64 2
  %i.wo = fadd reassoc nsz arcp contract afn float %i.wm, %i.wn
  %i.wp = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.wo) ; 2 uses
  %i.wq = fcmp reassoc nsz arcp contract afn ogt float %i.wp, f0x37800000
  %spec.select.i218.epil = select reassoc nsz arcp contract afn i1 %i.wq, float %i.wp, float f0x37800000 ; 2 uses
  store float %spec.select.i218.epil, ptr %i.wh, align 4, !tbaa !13, !alias.scope !326
  %i.wr = insertelement <4 x float> poison, float %spec.select.i218.epil, i64 0
  %i.ws = shufflevector <4 x float> %i.wr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wt = fdiv reassoc nsz arcp contract afn <4 x float> %i.wi, %i.ws
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %.0232.i.epil.init
  store <4 x float> %i.wt, ptr %i.wu, align 16, !tbaa !109, !alias.scope !328, !nontemporal !110
  br label %compute_ratios.exit

compute_ratios.exit:                              ; preds = %.lr.ph.i217.epil.preheader, %compute_ratios.exit.loopexit.unr-lcssa, %.lr.ph
  call void @llvm.x86.sse.sfence(), !noalias !329
  br i1 %.0188405, label %bb.n, label %bb.o

bb.n:                                             ; preds = %compute_ratios.exit
  %.val208 = load float, ptr %i.aw, align 4, !tbaa !26
  %i.wv = call fastcc i32 @reconstruct_highlights(ptr noundef %i.uh, ptr noundef %i.at, ptr noundef %i.ji, i32 noundef 1, ptr noundef nonnull %i.af, ptr noundef %1, float %.val208, ptr noundef nonnull %5)
  %.fr503 = freeze i32 %i.wv
  %i.ww = icmp ne i32 %.fr503, 0
end_hunk_0
begin_hunk_1_@dt_iop_filmic_rgb_compute_spline:bb.a
  %i.cf = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ce)
  %i.cg = fmul reassoc nsz arcp contract afn float %i.bz, %i.cf
  %i.ch = fadd reassoc nsz arcp contract afn float %i.cg, %i.aj ; 2 uses
  %i.ci = fmul reassoc nsz arcp contract afn float %i.by, %i.aj
  %i.cj = fsub reassoc nsz arcp contract afn float %.0, %i.ci
  %i.ck = fmul reassoc nsz arcp contract afn float %i.cd, %i.by
  %i.cl = fmul reassoc nsz arcp contract afn float %i.ch, %i.by
  %i.cm = fmul reassoc nsz arcp contract afn float %i.by, %i.by
  %i.cn = fadd reassoc nsz arcp contract afn float %i.cm, 1.000000e+00
  %i.co = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.cn) ; 2 uses
  %i.cp = fmul reassoc nsz arcp contract afn float %i.bl, -2.000000e+00
  %i.cq = fmul reassoc nsz arcp contract afn float %i.cp, %i.bt
  %i.cr = fdiv reassoc nsz arcp contract afn float %i.cq, %i.ah ; 2 uses
  %i.cs = fmul reassoc nsz arcp contract afn float %i.cr, %i.by
  %i.ct = fdiv reassoc nsz arcp contract afn float %i.cs, %i.co
  %i.cu = fadd reassoc nsz arcp contract afn float %i.ct, %i.cj ; 2 uses
  %i.cv = fadd reassoc nsz arcp contract afn float %i.cu, %i.ck
  %i.cw = fadd reassoc nsz arcp contract afn float %i.cu, %i.cl
  %i.cx = fdiv reassoc nsz arcp contract afn float %i.cr, %i.co ; 2 uses
  %i.cy = fadd reassoc nsz arcp contract afn float %i.cx, %i.cd ; 2 uses
  %i.cz = fadd reassoc nsz arcp contract afn float %i.cx, %i.ch
  %.pre = fmul reassoc nsz arcp contract afn float %i.cy, %i.by
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.db = load float, ptr %i.da, align 4, !tbaa !23
  %i.dc = fmul reassoc nsz arcp contract afn float %i.ah, 1.250000e-01
  %i.dd = fmul reassoc nsz arcp contract afn float %i.dc, %i.db
  %i.de = fadd reassoc nsz arcp contract afn float %i.ac, -1.000000e+00
  %i.df = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.0, float %i.de)
  %i.dg = fmul reassoc nsz arcp contract afn float %i.df, %i.ac
  %i.dh = fdiv reassoc nsz arcp contract afn float %i.dd, %i.dg ; 4 uses
  %i.di = fcmp reassoc nsz arcp contract afn ogt float %i.dh, 1.000000e+02
  br i1 %i.di, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dj = fsub reassoc nsz arcp contract afn float %.0336, %.0
  %i.dk = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.aj
  %i.dl = fdiv reassoc nsz arcp contract afn float %i.dj, %i.dk
  %i.dm = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dl, float 1.000000e+00)
  %i.dn = fsub reassoc nsz arcp contract afn float %.0, %.0335
  %i.do = fdiv reassoc nsz arcp contract afn float %i.dn, %i.aj
  %i.dp = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dm, float %i.do)
  %i.dq = fadd reassoc nsz arcp contract afn float %i.dp, f0x3C23D70A ; 2 uses
  %i.dr = fcmp reassoc nsz arcp contract afn olt float %i.dh, %i.dq
  %i.ds = select reassoc nsz arcp contract afn i1 %i.dr, float %i.dq, float %i.dh
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.dt = phi reassoc nsz arcp contract afn float [ %i.ds, %bb.l ], [ 1.000000e+02, %bb.k ] ; 7 uses
  %i.du = fcmp reassoc nsz arcp contract afn une float %i.dt, %i.dh
  %i.dv = zext i1 %i.du to i32
  %i.dw = fmul reassoc nsz arcp contract afn float %i.dt, %i.aj
  %i.dx = fsub reassoc nsz arcp contract afn float %.0, %i.dw ; 4 uses
  %i.dy = fsub reassoc nsz arcp contract afn float %.0336, %.0335
  %i.dz = fmul reassoc nsz arcp contract afn float %i.dy, f0x3C23D70A ; 2 uses
  %i.ea = fadd reassoc nsz arcp contract afn float %i.dz, %.0335
  %i.eb = fsub reassoc nsz arcp contract afn float %i.ea, %i.dx
  %i.ec = fdiv reassoc nsz arcp contract afn float %i.eb, %i.dt ; 2 uses
  %i.ed = fadd reassoc nsz arcp contract afn float %i.dz, %i.dx
  %i.ee = fsub reassoc nsz arcp contract afn float %.0336, %i.ed
  %i.ef = fdiv reassoc nsz arcp contract afn float %i.ee, %i.dt ; 3 uses
  %i.eg = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bs
  %i.eh = fmul reassoc nsz arcp contract afn float %i.eg, %i.aj ; 2 uses
  %i.ei = fmul reassoc nsz arcp contract afn float %i.ec, %i.bs
  %i.ej = fadd reassoc nsz arcp contract afn float %i.ei, %i.eh ; 2 uses
  %i.ek = fmul reassoc nsz arcp contract afn float %i.ef, %i.bs
  %i.el = fadd reassoc nsz arcp contract afn float %i.ek, %i.eh ; 2 uses
  %i.em = fcmp reassoc nsz arcp contract afn ogt float %i.bl, 0.000000e+00
  %i.en = fmul reassoc nsz arcp contract afn float %i.bl, 2.000000e+00
  %i.eo = fsub reassoc nsz arcp contract afn float %i.aj, %i.ej
  %i.ep = fsub reassoc nsz arcp contract afn float %i.el, %i.aj
  %.sink = select i1 %i.em, float %i.ep, float %i.eo
  %i.eq = fmul reassoc nsz arcp contract afn float %i.en, %.sink ; 2 uses
  %i.er = fsub reassoc nsz arcp contract afn float %i.ej, %i.eq
  %i.es = fsub reassoc nsz arcp contract afn float %i.el, %i.eq ; 2 uses
  %i.et = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.er, float %i.ec) ; 2 uses
  %i.eu = fcmp reassoc nsz arcp contract afn olt float %i.es, %i.ef
  %i.ev = select reassoc nsz arcp contract afn i1 %i.eu, float %i.es, float %i.ef ; 2 uses
  %i.ew = fmul reassoc nsz arcp contract afn float %i.et, %i.dt ; 2 uses
  %i.ex = fadd reassoc nsz arcp contract afn float %i.ew, %i.dx
  %i.ey = fmul reassoc nsz arcp contract afn float %i.ev, %i.dt
  %i.ez = fadd reassoc nsz arcp contract afn float %i.ey, %i.dx
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.pre-phi = phi float [ %i.ew, %bb.m ], [ %.pre, %bb.j ] ; 2 uses
  %.0341 = phi nsz float [ %i.dt, %bb.m ], [ %i.by, %bb.j ] ; 10 uses
  %.0340 = phi nsz float [ %i.ez, %bb.m ], [ %i.cw, %bb.j ] ; 3 uses
  %.0339 = phi nsz float [ %i.ex, %bb.m ], [ %i.cv, %bb.j ] ; 6 uses
  %.0338 = phi nsz float [ %i.ev, %bb.m ], [ %i.cz, %bb.j ] ; 4 uses
  %.0337 = phi nsz float [ %i.et, %bb.m ], [ %i.cy, %bb.j ] ; 7 uses
  %.0334 = phi i32 [ %i.dv, %bb.m ], [ 0, %bb.j ]
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 108
  store float 0.000000e+00, ptr %i.fa, align 4, !tbaa !13
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 112
  store float %.0337, ptr %i.fb, align 4, !tbaa !13
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 116
  store float %i.aj, ptr %i.fc, align 4, !tbaa !13
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 120
  store float %.0338, ptr %i.fd, align 4, !tbaa !13
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 124
  store float 1.000000e+00, ptr %i.fe, align 4, !tbaa !13
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 88
  store float %.0335, ptr %i.ff, align 8, !tbaa !13
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 92
  store float %.0339, ptr %i.fg, align 4, !tbaa !13
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 96
  store float %.0, ptr %i.fh, align 8, !tbaa !13
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 3 uses
  store float %.0340, ptr %i.fi, align 4, !tbaa !13
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  store float %.0336, ptr %i.fj, align 8, !tbaa !13
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 80
  store float %.0337, ptr %i.fk, align 16, !tbaa !124
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 84
  store float %.0338, ptr %i.fl, align 4, !tbaa !125
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !416
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i32 %i.fn, ptr %i.fo, align 16, !tbaa !14
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !417
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 132
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !14
  %i.fs = fpext reassoc nsz arcp contract afn float %.0337 to double ; 10 uses
  %i.ft = fmul reassoc nsz arcp contract afn double %i.fs, %i.fs ; 6 uses
  %i.fu = fmul reassoc nsz arcp contract afn double %i.ft, %i.fs ; 4 uses
  %i.fv = fpext reassoc nsz arcp contract afn float %.0338 to double ; 10 uses
  %i.fw = fmul reassoc nsz arcp contract afn double %i.fv, %i.fv ; 6 uses
  %i.fx = fmul reassoc nsz arcp contract afn double %i.fw, %i.fv ; 4 uses
  %i.fy = fmul reassoc nsz arcp contract afn double %i.fx, %i.fv
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store float %.0341, ptr %i.ga, align 8, !tbaa !13
  %i.gb = fsub reassoc nsz arcp contract afn float %.0339, %.pre-phi
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.gb, ptr %i.gc, align 8, !tbaa !13
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float 0.000000e+00, ptr %i.ge, align 8, !tbaa !13
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 56
  store float 0.000000e+00, ptr %i.gg, align 8, !tbaa !13
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 72
  store float 0.000000e+00, ptr %i.gi, align 8, !tbaa !13
  %i.gj = load i32, ptr %i.fm, align 4, !tbaa !416
  switch i32 %i.gj, label %bb.q [
    i32 0, label %bb.o
    i32 1, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.gk = fmul reassoc nsz arcp contract afn double %i.fu, %i.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.gl = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.gl, align 16, !tbaa !185
  %i.gm = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.gn = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gm, i8 0, i64 24, i1 false)
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.gn, align 16, !tbaa !185
  %i.go = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store double %i.gk, ptr %i.go, align 16, !tbaa !185
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store double %i.fu, ptr %i.gp, align 8, !tbaa !185
  %i.gq = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store double %i.ft, ptr %i.gq, align 16, !tbaa !185
  %i.gr = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store double %i.fs, ptr %i.gr, align 8, !tbaa !185
  %i.gs = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store double 1.000000e+00, ptr %i.gs, align 16, !tbaa !185
  %i.gt = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.gu = insertelement <4 x double> <double poison, double poison, double poison, double 1.000000e+00>, double %i.fu, i64 0
  %i.gv = insertelement <4 x double> %i.gu, double %i.ft, i64 1
  %i.gw = insertelement <4 x double> %i.gv, double %i.fs, i64 2
  %i.gx = fmul reassoc nsz arcp contract afn <4 x double> %i.gw, <double 4.000000e+00, double 3.000000e+00, double 2.000000e+00, double 1.000000e+00>
  store <4 x double> %i.gx, ptr %i.gt, align 8, !tbaa !185
  %i.gy = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store double 0.000000e+00, ptr %i.gy, align 8, !tbaa !185
  %i.gz = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.ha = fmul reassoc nsz arcp contract afn double %i.ft, 1.200000e+01
  store double %i.ha, ptr %i.gz, align 16, !tbaa !185
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.hc = fmul reassoc nsz arcp contract afn double %i.fs, 6.000000e+00
  store double %i.hc, ptr %i.hb, align 8, !tbaa !185
  %i.hd = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store double 2.000000e+00, ptr %i.hd, align 16, !tbaa !185
  %i.he = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.he, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.hf = fpext reassoc nsz arcp contract afn float %.0335 to double
  store double %i.hf, ptr %i.b, align 16, !tbaa !185
  %i.hg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double 0.000000e+00, ptr %i.hg, align 8, !tbaa !185
  %i.hh = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.hi = insertelement <2 x float> poison, float %.0339, i64 0
  %i.hj = insertelement <2 x float> %i.hi, float %.0341, i64 1
  %i.hk = fpext reassoc nsz arcp contract afn <2 x float> %i.hj to <2 x double>
  store <2 x double> %i.hk, ptr %i.hh, align 16, !tbaa !185
  %i.hl = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store double 0.000000e+00, ptr %i.hl, align 16, !tbaa !185
  call fastcc void @gauss_solve(ptr noundef %i.a, ptr noundef %i.b, i32 noundef 5)
  %i.hm = load <4 x double>, ptr %i.b, align 16, !tbaa !185
  %i.hn = fptrunc reassoc nsz arcp contract afn <4 x double> %i.hm to <4 x float> ; 4 uses
  %i.ho = extractelement <4 x float> %i.hn, i64 0
  store float %i.ho, ptr %i.gh, align 16, !tbaa !13
  %i.hp = extractelement <4 x float> %i.hn, i64 1
  store float %i.hp, ptr %i.gf, align 16, !tbaa !13
  %i.hq = extractelement <4 x float> %i.hn, i64 2
  store float %i.hq, ptr %i.gd, align 16, !tbaa !13
  %i.hr = extractelement <4 x float> %i.hn, i64 3
  store float %i.hr, ptr %i.fz, align 16, !tbaa !13
  %i.hs = load double, ptr %i.hl, align 16, !tbaa !185
  %i.ht = fptrunc reassoc nsz arcp contract afn double %i.hs to float
  store float %i.ht, ptr %1, align 16, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.hu = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.hu, align 8, !tbaa !185
  %i.hv = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store double %i.fu, ptr %i.hv, align 16, !tbaa !185
  %i.hw = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store double %i.ft, ptr %i.hw, align 8, !tbaa !185
  %i.hx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store double %i.fs, ptr %i.hx, align 16, !tbaa !185
  %i.hy = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store double 1.000000e+00, ptr %i.hy, align 8, !tbaa !185
  %i.hz = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.ia = insertelement <2 x double> poison, double %i.ft, i64 0
  %i.ib = insertelement <2 x double> %i.ia, double %i.fs, i64 1
  %i.ic = fmul reassoc nsz arcp contract afn <2 x double> %i.ib, <double 3.000000e+00, double 2.000000e+00>
  store <2 x double> %i.ic, ptr %i.hz, align 16, !tbaa !185
  %i.id = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.id, align 16, !tbaa !185
  %i.ie = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.if = fmul reassoc nsz arcp contract afn double %i.fs, 6.000000e+00
  store double %i.if, ptr %i.ie, align 16, !tbaa !185
  %i.ig = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store double 2.000000e+00, ptr %i.ig, align 8, !tbaa !185
  %i.ih = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ih, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.ii = insertelement <2 x float> poison, float %.0335, i64 0
  %i.ij = insertelement <2 x float> %i.ii, float %.0339, i64 1
  %i.ik = fpext reassoc nsz arcp contract afn <2 x float> %i.ij to <2 x double>
  store <2 x double> %i.ik, ptr %i.d, align 16, !tbaa !185
  %i.il = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.im = fpext reassoc nsz arcp contract afn float %.0341 to double
  store double %i.im, ptr %i.il, align 16, !tbaa !185
  %i.in = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store double 0.000000e+00, ptr %i.in, align 8, !tbaa !185
  call fastcc void @gauss_solve(ptr noundef %i.c, ptr noundef %i.d, i32 noundef 4)
  store float 0.000000e+00, ptr %i.gh, align 16, !tbaa !13
  %i.io = load <4 x double>, ptr %i.d, align 16, !tbaa !185
  %i.ip = fptrunc reassoc nsz arcp contract afn <4 x double> %i.io to <4 x float>
  %i.iq = shufflevector <4 x float> %i.ip, <4 x float> poison, <13 x i32> <i32 3, i32 poison, i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 0>
  tail call void @llvm.masked.store.v13f32.p0(<13 x float> %i.iq, ptr align 16 %1, <13 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true>), !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.ir = fsub reassoc nsz arcp contract afn float %.0339, %.0335 ; 3 uses
  %i.is = fmul reassoc nsz arcp contract afn float %i.ir, 2.000000e+00
  %i.it = fdiv reassoc nsz arcp contract afn float %.0341, %i.is
  %i.iu = fdiv reassoc nsz arcp contract afn float %.pre-phi, %i.ir
  %i.iv = fadd reassoc nsz arcp contract afn float %i.iu, 1.000000e+00 ; 2 uses
  %i.iw = fmul reassoc nsz arcp contract afn float %i.iv, %i.iv
  %i.ix = fadd reassoc nsz arcp contract afn float %i.iw, -4.000000e+00
  %i.iy = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.ix)
  %i.iz = fadd reassoc nsz arcp contract afn float %i.iy, -1.000000e+00
  %i.ja = fmul reassoc nsz arcp contract afn float %.0337, 2.000000e+00
  %i.jb = fdiv reassoc nsz arcp contract afn float %i.iz, %i.ja
  %i.jc = fadd reassoc nsz arcp contract afn float %i.jb, %i.it ; 2 uses
  %i.jd = fdiv reassoc nsz arcp contract afn float %i.ir, %.0341 ; 2 uses
  %i.je = fmul reassoc nsz arcp contract afn float %.0337, %.0337
  %i.jf = fmul reassoc nsz arcp contract afn float %i.je, %i.jc
  %i.jg = fadd reassoc nsz arcp contract afn float %i.jf, %.0337 ; 2 uses
  %i.jh = fmul reassoc nsz arcp contract afn float %i.jg, %i.jd
  %i.ji = fsub reassoc nsz arcp contract afn float %i.jg, %i.jd
  %i.jj = fdiv reassoc nsz arcp contract afn float %i.jh, %i.ji ; 2 uses
  %i.jk = fmul reassoc nsz arcp contract afn float %i.jj, %.0341
  store float %i.jk, ptr %1, align 16, !tbaa !13
  store float %i.jc, ptr %i.fz, align 16, !tbaa !13
  store float %i.jj, ptr %i.gd, align 16, !tbaa !13
  store float %.0339, ptr %i.gf, align 16, !tbaa !13
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.o
  %i.jl = load i32, ptr %i.fp, align 4, !tbaa !417
  switch i32 %i.jl, label %bb.u [
    i32 1, label %bb.s
    i32 0, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store <4 x double> splat (double 1.000000e+00), ptr %i.e, align 16, !tbaa !185
  %i.jm = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store double %i.fx, ptr %i.jm, align 16, !tbaa !185
  %i.jn = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store double %i.fw, ptr %i.jn, align 8, !tbaa !185
  %i.jo = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store double %i.fv, ptr %i.jo, align 16, !tbaa !185
  %i.jp = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store double 1.000000e+00, ptr %i.jp, align 8, !tbaa !185
  %i.jq = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.jr = insertelement <2 x double> poison, double %i.fw, i64 0
  %i.js = insertelement <2 x double> %i.jr, double %i.fv, i64 1
  %i.jt = fmul reassoc nsz arcp contract afn <2 x double> %i.js, <double 3.000000e+00, double 2.000000e+00>
  store <2 x double> %i.jt, ptr %i.jq, align 16, !tbaa !185
  %i.ju = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.ju, align 16, !tbaa !185
  %i.jv = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.jw = fmul reassoc nsz arcp contract afn double %i.fv, 6.000000e+00
  store double %i.jw, ptr %i.jv, align 16, !tbaa !185
  %i.jx = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store double 2.000000e+00, ptr %i.jx, align 8, !tbaa !185
  %i.jy = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.jy, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %i.jz = load <2 x float>, ptr %i.fi, align 4, !tbaa !13
  %i.ka = shufflevector <2 x float> %i.jz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.kb = fpext reassoc nsz arcp contract afn <2 x float> %i.ka to <2 x double>
  store <2 x double> %i.kb, ptr %i.f, align 16, !tbaa !185
  %i.kc = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.kd = load float, ptr %i.ga, align 8, !tbaa !13
  %i.ke = fpext reassoc nsz arcp contract afn float %i.kd to double
  store double %i.ke, ptr %i.kc, align 16, !tbaa !185
  %i.kf = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store double 0.000000e+00, ptr %i.kf, align 8, !tbaa !185
  call fastcc void @gauss_solve(ptr noundef %i.e, ptr noundef %i.f, i32 noundef 4)
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 68
  store float 0.000000e+00, ptr %i.kg, align 4, !tbaa !13
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ki = load <4 x double>, ptr %i.f, align 16, !tbaa !185
  %i.kj = fptrunc reassoc nsz arcp contract afn <4 x double> %i.ki to <4 x float>
  %i.kk = shufflevector <4 x float> %i.kj, <4 x float> poison, <13 x i32> <i32 3, i32 poison, i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 0>
  tail call void @llvm.masked.store.v13f32.p0(<13 x float> %i.kk, ptr align 4 %i.kh, <13 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true>), !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  store <4 x double> splat (double 1.000000e+00), ptr %i.g, align 16, !tbaa !185
  %i.kl = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store <4 x double> <double 1.000000e+00, double 4.000000e+00, double 3.000000e+00, double 2.000000e+00>, ptr %i.kl, align 16, !tbaa !185
  %i.km = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.km, align 16, !tbaa !185
  %i.kn = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store double %i.fy, ptr %i.kn, align 16, !tbaa !185
  %i.ko = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store double %i.fx, ptr %i.ko, align 8, !tbaa !185
  %i.kp = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store double %i.fw, ptr %i.kp, align 16, !tbaa !185
  %i.kq = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  store double %i.fv, ptr %i.kq, align 8, !tbaa !185
  %i.kr = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  store double 1.000000e+00, ptr %i.kr, align 16, !tbaa !185
  %i.ks = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.kt = insertelement <4 x double> <double poison, double poison, double poison, double 1.000000e+00>, double %i.fx, i64 0
  %i.ku = insertelement <4 x double> %i.kt, double %i.fw, i64 1
  %i.kv = insertelement <4 x double> %i.ku, double %i.fv, i64 2
  %i.kw = fmul reassoc nsz arcp contract afn <4 x double> %i.kv, <double 4.000000e+00, double 3.000000e+00, double 2.000000e+00, double 1.000000e+00>
  store <4 x double> %i.kw, ptr %i.ks, align 8, !tbaa !185
  %i.kx = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  store double 0.000000e+00, ptr %i.kx, align 8, !tbaa !185
  %i.ky = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.kz = fmul reassoc nsz arcp contract afn double %i.fw, 1.200000e+01
  store double %i.kz, ptr %i.ky, align 16, !tbaa !185
  %i.la = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.lb = fmul reassoc nsz arcp contract afn double %i.fv, 6.000000e+00
  store double %i.lb, ptr %i.la, align 8, !tbaa !185
  %i.lc = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  store double 2.000000e+00, ptr %i.lc, align 16, !tbaa !185
  %i.ld = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ld, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  %i.le = load float, ptr %i.fj, align 8, !tbaa !13
  %i.lf = fpext reassoc nsz arcp contract afn float %i.le to double
  store double %i.lf, ptr %i.h, align 16, !tbaa !185
  %i.lg = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store double 0.000000e+00, ptr %i.lg, align 8, !tbaa !185
  %i.lh = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.li = load float, ptr %i.fi, align 4, !tbaa !13
  %i.lj = load float, ptr %i.ga, align 8, !tbaa !13
  %i.lk = insertelement <2 x float> poison, float %i.li, i64 0
  %i.ll = insertelement <2 x float> %i.lk, float %i.lj, i64 1
  %i.lm = fpext reassoc nsz arcp contract afn <2 x float> %i.ll to <2 x double>
  store <2 x double> %i.lm, ptr %i.lh, align 16, !tbaa !185
  %i.ln = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  store double 0.000000e+00, ptr %i.ln, align 16, !tbaa !185
  call fastcc void @gauss_solve(ptr noundef %i.g, ptr noundef %i.h, i32 noundef 5)
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.lr = load <4 x double>, ptr %i.h, align 16, !tbaa !185
  %i.ls = fptrunc reassoc nsz arcp contract afn <4 x double> %i.lr to <4 x float> ; 4 uses
  %i.lt = extractelement <4 x float> %i.ls, i64 0
  store float %i.lt, ptr %i.lo, align 4, !tbaa !13
  %i.lu = extractelement <4 x float> %i.ls, i64 1
  store float %i.lu, ptr %i.lp, align 4, !tbaa !13
  %i.lv = extractelement <4 x float> %i.ls, i64 2
  store float %i.lv, ptr %i.lq, align 4, !tbaa !13
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.lx = extractelement <4 x float> %i.ls, i64 3
  store float %i.lx, ptr %i.lw, align 4, !tbaa !13
  %i.ly = load double, ptr %i.ln, align 16, !tbaa !185
  %i.lz = fptrunc reassoc nsz arcp contract afn double %i.ly to float
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.lz, ptr %i.ma, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.mb = fsub reassoc nsz arcp contract afn float 1.000000e+00, %.0338 ; 5 uses
  %i.mc = fsub reassoc nsz arcp contract afn float %.0336, %.0340 ; 3 uses
  %i.md = fmul reassoc nsz arcp contract afn float %i.mc, 2.000000e+00
  %i.me = fdiv reassoc nsz arcp contract afn float %.0341, %i.md
  %i.mf = fmul reassoc nsz arcp contract afn float %i.mb, %.0341
  %i.mg = fdiv reassoc nsz arcp contract afn float %i.mf, %i.mc
  %i.mh = fadd reassoc nsz arcp contract afn float %i.mg, 1.000000e+00 ; 2 uses
  %i.mi = fmul reassoc nsz arcp contract afn float %i.mh, %i.mh
  %i.mj = fadd reassoc nsz arcp contract afn float %i.mi, -4.000000e+00
  %i.mk = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.mj)
  %i.ml = fadd reassoc nsz arcp contract afn float %i.mk, -1.000000e+00
  %i.mm = fmul reassoc nsz arcp contract afn float %i.mb, 2.000000e+00
  %i.mn = fdiv reassoc nsz arcp contract afn float %i.ml, %i.mm
  %i.mo = fadd reassoc nsz arcp contract afn float %i.mn, %i.me ; 2 uses
  %i.mp = fdiv reassoc nsz arcp contract afn float %i.mc, %.0341 ; 2 uses
  %i.mq = fmul reassoc nsz arcp contract afn float %i.mb, %i.mb
  %i.mr = fmul reassoc nsz arcp contract afn float %i.mq, %i.mo
  %i.ms = fadd reassoc nsz arcp contract afn float %i.mr, %i.mb ; 2 uses
  %i.mt = fmul reassoc nsz arcp contract afn float %i.ms, %i.mp
  %i.mu = fsub reassoc nsz arcp contract afn float %i.ms, %i.mp
  %i.mv = fdiv reassoc nsz arcp contract afn float %i.mt, %i.mu ; 2 uses
  %i.mw = fmul reassoc nsz arcp contract afn float %i.mv, %.0341
  %i.mx = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.mw, ptr %i.mx, align 4, !tbaa !13
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float %i.mo, ptr %i.my, align 4, !tbaa !13
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 36
  store float %i.mv, ptr %i.mz, align 4, !tbaa !13
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 52
  store float %.0340, ptr %i.na, align 4, !tbaa !13
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.s
  ret i32 %.0334
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #9

; Function Attrs: nounwind uwtable
define void @gui_focus(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !101 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 464 ; 2 uses
  %i.d = load i32, ptr %i.c, align 16, !tbaa !108
  store i32 0, ptr %i.c, align 16, !tbaa !108
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.f = load ptr, ptr %i.e, align 64, !tbaa !186
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.f, i32 noundef 0) #20
  %.not6 = icmp eq i32 %i.d, 0
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !84
  tail call void @dt_dev_reprocess_center(ptr noundef %i.h) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

declare void @gtk_toggle_button_set_active(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_dev_reprocess_center(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @init_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((16, 24)) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dt_alloc_aligned(i64 noundef 320) #20 ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %dt_calloc_aligned.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(320) %i.a, i8 0, i64 320, i1 false)
  br label %dt_calloc_aligned.exit

dt_calloc_aligned.exit:                           ; preds = %bb.a, %bb.b
  call void @llvm.assume(i1 true) [ "align"(ptr %i.a, i64 64) ]
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.b, align 16, !tbaa !45
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !45
  tail call void @free(ptr noundef %i.b) #20
  store ptr null, ptr %i.a, align 16, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_update(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !101 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !127  ; 3 uses
  tail call void @dt_iop_color_picker_reset(ptr noundef %0, i32 noundef 1) #20
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  store i32 0, ptr %i.e, align 16, !tbaa !108
  %i.f = tail call i32 @dt_conf_get_int(ptr noundef nonnull @.str.7) #20
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 468
  store i32 %i.f, ptr %i.g, align 4, !tbaa !187
  %i.h = tail call i32 @dt_conf_get_int(ptr noundef nonnull @.str.8) #20
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  store i32 %i.h, ptr %i.i, align 8, !tbaa !188
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 476
  store i32 0, ptr %i.j, align 4, !tbaa !189
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  store i32 0, ptr %i.k, align 32, !tbaa !190
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.m = load ptr, ptr %i.l, align 64, !tbaa !191
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.o = load i32, ptr %i.n, align 4, !tbaa !192
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.m, i32 noundef %i.o) #20
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !193
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  %i.s = load i32, ptr %i.r, align 4, !tbaa !178
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.q, i32 noundef %i.s) #20
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.u = load ptr, ptr %i.t, align 16, !tbaa !194
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.w = load i32, ptr %i.v, align 4, !tbaa !182
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.u, i32 noundef %i.w) #20
  tail call void @gui_changed(ptr noundef %0, ptr noundef null, ptr noundef null)
  ret void
}

declare void @dt_iop_color_picker_reset(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @dt_conf_get_int(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @gui_changed(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !127  ; 18 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !101 ; 32 uses
  %.not = icmp eq ptr %1, null                    ; 5 uses
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.f = load ptr, ptr %i.e, align 64, !tbaa !191
  %i.g = icmp eq ptr %1, %i.f
  br i1 %i.g, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !195
  %i.j = icmp eq ptr %1, %i.i
  br i1 %i.j, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !126
  %i.m = icmp eq ptr %1, %i.l
  br i1 %i.m, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !173
  %i.p = icmp eq ptr %1, %i.o
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.d, align 64, !tbaa !174
  %i.r = icmp eq ptr %1, %i.q
end_hunk_1
begin_hunk_2_@dt_iop_tonecurve_draw:bb.a
  %i.cp = fptrunc reassoc nsz arcp contract afn double %i.co to float
  %i.cq = load i32, ptr %i.r, align 4, !tbaa !227 ; 2 uses
  %i.cr = sitofp reassoc nsz arcp contract afn i32 %i.cq to float
  %i.cs = fadd reassoc nsz arcp contract afn float %.01084, %i.cp
  %i.ct = fsub reassoc nsz arcp contract afn float %i.cr, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 580 ; 21 uses
  store float %i.ct, ptr %i.cu, align 4, !tbaa !451
  %i.cv = load i32, ptr %i.m, align 32, !tbaa !226 ; 2 uses
  %i.cw = sitofp reassoc nsz arcp contract afn i32 %i.cv to float
  %i.cx = fadd reassoc nsz arcp contract afn float %.01083, %i.cj
  %i.cy = fsub reassoc nsz arcp contract afn float %i.cw, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 584 ; 24 uses
  store float %i.cy, ptr %i.cz, align 8, !tbaa !452
  %i.da = load ptr, ptr %i.aq, align 8, !tbaa !442
  %i.db = sitofp reassoc nsz arcp contract afn i32 %i.cq to double
  %i.dc = sitofp reassoc nsz arcp contract afn i32 %i.cv to double
  call void @gtk_render_background(ptr noundef %i.da, ptr noundef %i.aj, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.db, double noundef %i.dc) #20
  %i.dd = load i32, ptr %i.r, align 4, !tbaa !227
  %i.de = sitofp reassoc nsz arcp contract afn i32 %i.dd to float ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.e, i64 488 ; 2 uses
  %i.dg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !206
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 332
  %i.di = load float, ptr %i.dh, align 4, !tbaa !450 ; 7 uses
  %i.dj = fsub reassoc nsz arcp contract afn float %i.de, %i.di ; 2 uses
  %i.dk = load i32, ptr %i.bs, align 4, !tbaa !449
  %i.dl = sitofp reassoc nsz arcp contract afn i32 %i.dk to float
  %i.dm = fadd reassoc nsz arcp contract afn float %i.di, %i.dl ; 3 uses
  %invariant.op = fadd reassoc nsz arcp contract afn float %i.di, %i.cj ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.e, i64 492
  store float %i.de, ptr %i.dn, align 4, !tbaa !228
  store float %i.dj, ptr %i.df, align 8, !tbaa !215
  %i.do = fmul reassoc nsz arcp contract afn float %i.dm, 0.000000e+00 ; 2 uses
  %i.dp = fadd reassoc nsz arcp contract afn float %i.do, %i.cj
  %i.dq = getelementptr inbounds nuw i8, ptr %i.e, i64 496
  store float %i.dp, ptr %i.dq, align 16, !tbaa !216
  %.reass = fadd reassoc nsz arcp contract afn float %i.do, %invariant.op
  %i.dr = getelementptr inbounds nuw i8, ptr %i.e, i64 500
  store float %.reass, ptr %i.dr, align 4, !tbaa !229
  %i.ds = getelementptr inbounds nuw i8, ptr %i.e, i64 504
  store float %i.di, ptr %i.ds, align 8, !tbaa !217
  %i.dt = getelementptr inbounds nuw i8, ptr %i.e, i64 508
  store float %i.di, ptr %i.dt, align 4, !tbaa !224
  %i.du = getelementptr inbounds nuw i8, ptr %i.e, i64 516
  store i32 0, ptr %i.du, align 4, !tbaa !453
  %i.dv = getelementptr inbounds nuw i8, ptr %i.e, i64 528 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.e, i64 532
  store float %i.de, ptr %i.dw, align 4, !tbaa !228
  store float %i.dj, ptr %i.dv, align 16, !tbaa !215
  %i.dx = fadd reassoc nsz arcp contract afn float %i.dm, %i.cj
  %i.dy = getelementptr inbounds nuw i8, ptr %i.e, i64 536
  store float %i.dx, ptr %i.dy, align 8, !tbaa !216
  %.reass.1 = fadd reassoc nsz arcp contract afn float %i.dm, %invariant.op
  %i.dz = getelementptr inbounds nuw i8, ptr %i.e, i64 540
  store float %.reass.1, ptr %i.dz, align 4, !tbaa !229
  %i.ea = getelementptr inbounds nuw i8, ptr %i.e, i64 544
  store float %i.di, ptr %i.ea, align 32, !tbaa !217
  %i.eb = getelementptr inbounds nuw i8, ptr %i.e, i64 548
  store float %i.di, ptr %i.eb, align 4, !tbaa !224
  %i.ec = getelementptr inbounds nuw i8, ptr %i.e, i64 556
  store i32 0, ptr %i.ec, align 4, !tbaa !453
  %i.ed = getelementptr inbounds nuw i8, ptr %i.e, i64 480
  store i32 1, ptr %i.ed, align 32, !tbaa !190
  %i.ee = getelementptr inbounds nuw i8, ptr %i.e, i64 520
  store ptr @dtgtk_cairo_paint_refresh, ptr %i.ee, align 8, !tbaa !225
  %i.ef = getelementptr inbounds nuw i8, ptr %i.e, i64 560
  store ptr @dtgtk_cairo_paint_text_label, ptr %i.ef, align 16, !tbaa !225
  %i.eg = getelementptr inbounds nuw i8, ptr %i.e, i64 476
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !189
  %.not1111 = icmp eq i32 %i.eh, 0
  br i1 %.not1111, label %.loopexit1327, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.d
  call void @filmic_gui_draw_icon(ptr noundef %i.aj, ptr noundef nonnull %i.df, ptr noundef nonnull %i.e)
  call void @filmic_gui_draw_icon(ptr noundef %i.aj, ptr noundef nonnull %i.dv, ptr noundef nonnull %i.e)
  br label %.loopexit1327

.loopexit1327:                                    ; preds = %.preheader.preheader, %bb.d
  %i.ei = load float, ptr %i.c, align 4, !tbaa !128 ; 6 uses
  %i.ej = fmul reassoc nsz arcp contract afn float %i.ei, f0x3C23D70A ; 8 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 10 uses
  %i.el = load float, ptr %i.ek, align 4, !tbaa !20
  %i.em = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 24 uses
  %i.en = load float, ptr %i.em, align 4, !tbaa !21
  %i.eo = fsub reassoc nsz arcp contract afn float %i.el, %i.en ; 18 uses
  %i.ep = fpext reassoc nsz arcp contract afn float %.01084 to double
  %i.eq = fpext reassoc nsz arcp contract afn float %i.cj to double
  call void @cairo_translate(ptr noundef %i.aj, double noundef %i.ep, double noundef %i.eq) #20
  call void @cairo_set_line_cap(ptr noundef %i.aj, i32 noundef 1) #20
  call void @pango_font_description_set_size(ptr noundef %i.ai, i32 noundef %i.ar) #20
  call void @pango_layout_set_font_description(ptr noundef %i.ak, ptr noundef %i.ai) #20
  %i.er = getelementptr inbounds nuw i8, ptr %i.e, i64 468 ; 18 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !187 ; 2 uses
  %i.et = icmp ult i32 %i.es, 4
  br i1 %i.et, label %switch.lookup, label %bb.e

switch.lookup:                                    ; preds = %.loopexit1327
  %i.eu = zext nneg i32 %i.es to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dt_iop_tonecurve_draw, i64 %i.eu
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.ev = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %switch.load, i32 noundef 5) #20
  %i.ew = call i64 @g_strlcpy(ptr noundef nonnull %i.a, ptr noundef %i.ev, i64 noundef 256) #20 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.loopexit1327, %switch.lookup
  call void @pango_layout_set_text(ptr noundef %i.ak, ptr noundef nonnull %i.a, i32 noundef -1) #20
  call void @pango_layout_get_pixel_extents(ptr noundef %i.ak, ptr noundef nonnull %i.aw, ptr noundef null) #20
  %i.ex = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !206 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 584
  %.sroa.0.0.copyload = load double, ptr %i.ey, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 592
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 600
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 608
  %.sroa.6.0.copyload = load double, ptr %.sroa.6.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.aj, double noundef %.sroa.0.0.copyload, double noundef %.sroa.4.0.copyload, double noundef %.sroa.5.0.copyload, double noundef %.sroa.6.0.copyload) #20
  %i.ez = load i32, ptr %i.r, align 4, !tbaa !227
  %i.fa = sitofp reassoc nsz arcp contract afn i32 %i.ez to float
  %i.fb = load i32, ptr %i.bc, align 4, !tbaa !445 ; 2 uses
  %i.fc = sitofp reassoc nsz arcp contract afn i32 %i.fb to float
  %i.fd = load i32, ptr %i.aw, align 4, !tbaa !454
  %i.fe = sitofp reassoc nsz arcp contract afn i32 %i.fd to float
  %i.ff = fadd reassoc nsz arcp contract afn float %.01084, %i.fc
  %i.fg = fadd reassoc nsz arcp contract afn float %i.ff, %i.fe
  %i.fh = fsub reassoc nsz arcp contract afn float %i.fa, %i.fg
  %i.fi = fpext reassoc nsz arcp contract afn float %i.fh to double
  %i.fj = load i32, ptr %i.bs, align 4, !tbaa !449 ; 2 uses
  %i.fk = sitofp reassoc nsz arcp contract afn i32 %i.fj to double ; 3 uses
  %i.fl = fmul reassoc nnan nsz arcp contract afn double %i.fk, 2.000000e+00 ; 2 uses
  %i.fm = fsub reassoc nsz arcp contract afn double %i.fi, %i.fl
  %i.fn = load float, ptr %i.ba, align 8, !tbaa !444
  %i.fo = sitofp reassoc nsz arcp contract afn i32 %i.fj to float
  %i.fp = fadd reassoc nsz arcp contract afn float %i.fn, %i.fo
  %i.fq = fneg reassoc nsz arcp contract afn float %i.fp
  %i.fr = fpext reassoc nsz arcp contract afn float %i.fq to double
  %i.fs = load i32, ptr %i.ax, align 16, !tbaa !443
  %i.ft = sitofp reassoc nsz arcp contract afn i32 %i.fs to double ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.e, i64 616 ; 18 uses
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !455
  %i.fw = sitofp reassoc nsz arcp contract afn i32 %i.fv to double
  %.neg1224 = fmul reassoc nnan nsz arcp contract afn double %i.ft, -5.000000e-01
  %i.fx = fadd reassoc nsz arcp contract afn double %i.fk, %i.fw
  %.neg1227 = fsub reassoc nsz arcp contract afn double %i.fr, %i.fx
  %i.fy = fadd reassoc nsz arcp contract afn double %.neg1227, %.neg1224
  %i.fz = sitofp reassoc nsz arcp contract afn i32 %i.fb to double
  %i.ga = fmul reassoc nnan nsz arcp contract afn double %i.fk, 3.000000e+00
  %i.gb = fadd reassoc nsz arcp contract afn double %i.ga, %i.fz
  %i.gc = fadd reassoc nsz arcp contract afn double %i.fl, %i.ft
  call void @cairo_rectangle(ptr noundef %i.aj, double noundef %i.fm, double noundef %i.fy, double noundef %i.gb, double noundef %i.gc) #20
  call void @cairo_fill(ptr noundef %i.aj) #20
  %i.gd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !206 ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 680
  %.sroa.01128.0.copyload = load double, ptr %i.ge, align 8
  %.sroa.41129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gd, i64 688
  %.sroa.41129.0.copyload = load double, ptr %.sroa.41129.0..sroa_idx, align 8
  %.sroa.51130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gd, i64 696
  %.sroa.51130.0.copyload = load double, ptr %.sroa.51130.0..sroa_idx, align 8
  %.sroa.61131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gd, i64 704
  %.sroa.61131.0.copyload = load double, ptr %.sroa.61131.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.aj, double noundef %.sroa.01128.0.copyload, double noundef %.sroa.41129.0.copyload, double noundef %.sroa.51130.0.copyload, double noundef %.sroa.61131.0.copyload) #20
  %i.gf = load i32, ptr %i.r, align 4, !tbaa !227
  %i.gg = sitofp reassoc nsz arcp contract afn i32 %i.gf to float
  %i.gh = load i32, ptr %i.bc, align 4, !tbaa !445
  %i.gi = sitofp reassoc nsz arcp contract afn i32 %i.gh to float
  %i.gj = load i32, ptr %i.aw, align 4, !tbaa !454
  %i.gk = sitofp reassoc nsz arcp contract afn i32 %i.gj to float
  %i.gl = load i32, ptr %i.bs, align 4, !tbaa !449
  %i.gm = sitofp reassoc nsz arcp contract afn i32 %i.gl to float ; 2 uses
  %i.gn = fadd reassoc nsz arcp contract afn float %.01084, %i.gi
  %i.go = fadd reassoc nsz arcp contract afn float %i.gn, %i.gk
  %i.gp = fadd reassoc nsz arcp contract afn float %i.go, %i.gm
  %i.gq = fsub reassoc nsz arcp contract afn float %i.gg, %i.gp
  %i.gr = fpext reassoc nsz arcp contract afn float %i.gq to double
  %i.gs = load float, ptr %i.ba, align 8, !tbaa !444
  %i.gt = fadd reassoc nsz arcp contract afn float %i.gs, %i.gm
  %i.gu = fneg reassoc nsz arcp contract afn float %i.gt
  %i.gv = fpext reassoc nsz arcp contract afn float %i.gu to double
  %i.gw = load i32, ptr %i.ax, align 16, !tbaa !443
  %i.gx = sitofp reassoc nsz arcp contract afn i32 %i.gw to double
  %i.gy = load i32, ptr %i.fu, align 8, !tbaa !455
  %i.gz = sitofp reassoc nsz arcp contract afn i32 %i.gy to double
  %.neg1234 = fmul reassoc nnan nsz arcp contract afn double %i.gx, -5.000000e-01
  %.neg1236 = fsub reassoc nsz arcp contract afn double %i.gv, %i.gz
  %i.ha = fadd reassoc nsz arcp contract afn double %.neg1236, %.neg1234
  call void @cairo_move_to(ptr noundef %i.aj, double noundef %i.gr, double noundef %i.ha) #20
  call void @pango_cairo_show_layout(ptr noundef %i.aj, ptr noundef %i.ak) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  call void @pango_font_description_set_size(ptr noundef %i.ai, i32 noundef %i.au) #20
  call void @pango_layout_set_font_description(ptr noundef %i.ak, ptr noundef %i.ai) #20
  %i.hb = load i32, ptr %i.er, align 4, !tbaa !187
  %.not1112 = icmp eq i32 %i.hb, 3
  br i1 %.not1112, label %bb.bs, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.hc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !172
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 1432
  %i.he = load double, ptr %i.hd, align 8, !tbaa !223
  %i.hf = fmul reassoc nsz arcp contract afn double %i.he, 5.000000e-01
  call void @cairo_set_line_width(ptr noundef %i.aj, double noundef %i.hf) #20
  %i.hg = load <2 x float>, ptr %i.cu, align 4, !tbaa !13
  %i.hh = fpext reassoc nsz arcp contract afn <2 x float> %i.hg to <2 x double> ; 2 uses
  %i.hi = extractelement <2 x double> %i.hh, i64 0
  %i.hj = extractelement <2 x double> %i.hh, i64 1
  call void @cairo_rectangle(ptr noundef %i.aj, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.hi, double noundef %i.hj) #20
  %i.hk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !206 ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 584
  %.sroa.01132.0.copyload = load double, ptr %i.hl, align 8
  %.sroa.41133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hk, i64 592
  %.sroa.41133.0.copyload = load double, ptr %.sroa.41133.0..sroa_idx, align 8
  %.sroa.51134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hk, i64 600
  %.sroa.51134.0.copyload = load double, ptr %.sroa.51134.0..sroa_idx, align 8
  %.sroa.61135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hk, i64 608
  %.sroa.61135.0.copyload = load double, ptr %.sroa.61135.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.aj, double noundef %.sroa.01132.0.copyload, double noundef %.sroa.41133.0.copyload, double noundef %.sroa.51134.0.copyload, double noundef %.sroa.61135.0.copyload) #20
  call void @cairo_fill_preserve(ptr noundef %i.aj) #20
  %i.hm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !206 ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 648
  %.sroa.01136.0.copyload = load double, ptr %i.hn, align 8
  %.sroa.41137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hm, i64 656
  %.sroa.41137.0.copyload = load double, ptr %.sroa.41137.0..sroa_idx, align 8
  %.sroa.51138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hm, i64 664
  %.sroa.51138.0.copyload = load double, ptr %.sroa.51138.0..sroa_idx, align 8
  %.sroa.61139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hm, i64 672
  %.sroa.61139.0.copyload = load double, ptr %.sroa.61139.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.aj, double noundef %.sroa.01136.0.copyload, double noundef %.sroa.41137.0.copyload, double noundef %.sroa.51138.0.copyload, double noundef %.sroa.61139.0.copyload) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %i.ho = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !172
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 1432
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !223
  %i.hr = fmul reassoc nsz arcp contract afn double %i.hq, 5.000000e-01
  call void @cairo_set_line_width(ptr noundef %i.aj, double noundef %i.hr) #20
  %i.hs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !206 ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 648
  %.sroa.01140.0.copyload = load double, ptr %i.ht, align 8
  %.sroa.41141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hs, i64 656
  %.sroa.41141.0.copyload = load double, ptr %.sroa.41141.0..sroa_idx, align 8
  %.sroa.51142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hs, i64 664
  %.sroa.51142.0.copyload = load double, ptr %.sroa.51142.0..sroa_idx, align 8
  %.sroa.61143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hs, i64 672
  %.sroa.61143.0.copyload = load double, ptr %.sroa.61143.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.aj, double noundef %.sroa.01140.0.copyload, double noundef %.sroa.41141.0.copyload, double noundef %.sroa.51142.0.copyload, double noundef %.sroa.61143.0.copyload) #20
  call void @cairo_save(ptr noundef %i.aj) #20
  call void @cairo_scale(ptr noundef %i.aj, double noundef 1.000000e+00, double noundef -1.000000e+00) #20
  %i.hu = load float, ptr %i.cz, align 8, !tbaa !452
  %i.hv = fneg reassoc nsz arcp contract afn float %i.hu
  %i.hw = fpext reassoc nsz arcp contract afn float %i.hv to double
  call void @cairo_translate(ptr noundef %i.aj, double noundef 0.000000e+00, double noundef %i.hw) #20
  %i.hx = load i32, ptr %i.er, align 4, !tbaa !187
  switch i32 %i.hx, label %bb.i [
    i32 0, label %bb.g
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.hy = load float, ptr %i.cu, align 4, !tbaa !451
  %i.hz = fptosi float %i.hy to i32               ; 2 uses
  %i.ia = load float, ptr %i.cz, align 8, !tbaa !452
  %i.ib = fptosi float %i.ia to i32               ; 2 uses
  %i.ic = sitofp reassoc nsz arcp contract afn i32 %i.hz to float ; 3 uses
  %i.id = sitofp reassoc nsz arcp contract afn i32 %i.ib to float ; 3 uses
  %invariant.op.i = fmul reassoc nnan nsz arcp contract afn float %i.ic, 2.500000e-01
  %factor.op.fmul.i = fmul reassoc nnan nsz arcp contract afn float %i.id, 2.500000e-01
  %i.ie = sitofp i32 %i.ib to double              ; 3 uses
  %i.if = sitofp i32 %i.hz to double              ; 3 uses
  %i.ig = fpext reassoc nsz arcp contract afn float %invariant.op.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.aj, double noundef %i.ig, double noundef 0.000000e+00) #20
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %i.ig, double noundef %i.ie) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %i.ih = fpext reassoc nsz arcp contract afn float %factor.op.fmul.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.aj, double noundef 0.000000e+00, double noundef %i.ih) #20
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %i.if, double noundef %i.ih) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %.reass31.1.i = fmul reassoc nnan nsz arcp contract afn float %i.id, 5.000000e-01
  %.reass.1.i = fmul reassoc nnan nsz arcp contract afn float %i.ic, 5.000000e-01
  %i.ii = fpext reassoc nsz arcp contract afn float %.reass.1.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.aj, double noundef %i.ii, double noundef 0.000000e+00) #20
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %i.ii, double noundef %i.ie) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %i.ij = fpext reassoc nsz arcp contract afn float %.reass31.1.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.aj, double noundef 0.000000e+00, double noundef %i.ij) #20
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %i.if, double noundef %i.ij) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %.reass31.2.i = fmul reassoc nnan nsz arcp contract afn float %i.id, 7.500000e-01
  %.reass.2.i = fmul reassoc nnan nsz arcp contract afn float %i.ic, 7.500000e-01
  br label %.sink.split1430

bb.h:                                             ; preds = %bb.f
  %i.ik = load float, ptr %i.cu, align 4, !tbaa !451
  %i.il = fptosi float %i.ik to i32               ; 2 uses
  %i.im = load float, ptr %i.cz, align 8, !tbaa !452
  %i.in = fptosi float %i.im to i32               ; 2 uses
  %i.io = sitofp reassoc nsz arcp contract afn i32 %i.il to float ; 3 uses
  %i.ip = sitofp reassoc nsz arcp contract afn i32 %i.in to float ; 3 uses
  %i.iq = sitofp i32 %i.in to double              ; 3 uses
  %i.ir = sitofp i32 %i.il to double              ; 3 uses
  %.reass30.i = fmul reassoc nnan nsz arcp contract afn float %i.ip, f0x3F157A4A
  %.reass.i = fmul reassoc nnan nsz arcp contract afn float %i.io, f0x3F157A4A
  %i.is = fpext reassoc nsz arcp contract afn float %.reass.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.aj, double noundef %i.is, double noundef 0.000000e+00) #20
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %i.is, double noundef %i.iq) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %i.it = fpext reassoc nsz arcp contract afn float %.reass30.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.aj, double noundef 0.000000e+00, double noundef %i.it) #20
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %i.ir, double noundef %i.it) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %.reass30.1.i = fmul reassoc nnan nsz arcp contract afn float %i.ip, f0x3F48EFC1
  %.reass.1.i1126 = fmul reassoc nnan nsz arcp contract afn float %i.io, f0x3F48EFC1
  %i.iu = fpext reassoc nsz arcp contract afn float %.reass.1.i1126 to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.aj, double noundef %i.iu, double noundef 0.000000e+00) #20
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %i.iu, double noundef %i.iq) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %i.iv = fpext reassoc nsz arcp contract afn float %.reass30.1.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.aj, double noundef 0.000000e+00, double noundef %i.iv) #20
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %i.ir, double noundef %i.iv) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %.reass30.2.i = fmul reassoc nnan nsz arcp contract afn float %i.ip, f0x3F68D423
  %.reass.2.i1127 = fmul reassoc nnan nsz arcp contract afn float %i.io, f0x3F68D423
  br label %.sink.split1430

.sink.split1430:                                  ; preds = %bb.g, %bb.h
  %.reass.2.i1127.sink = phi float [ %.reass.2.i1127, %bb.h ], [ %.reass.2.i, %bb.g ]
  %.sink1434 = phi double [ %i.iq, %bb.h ], [ %i.ie, %bb.g ]
  %.reass30.2.i.sink = phi float [ %.reass30.2.i, %bb.h ], [ %.reass31.2.i, %bb.g ]
  %.sink = phi double [ %i.ir, %bb.h ], [ %i.if, %bb.g ]
  %i.iw = fpext reassoc nsz arcp contract afn float %.reass.2.i1127.sink to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.aj, double noundef %i.iw, double noundef 0.000000e+00) #20
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %i.iw, double noundef %.sink1434) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %i.ix = fpext reassoc nsz arcp contract afn float %.reass30.2.i.sink to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.aj, double noundef 0.000000e+00, double noundef %i.ix) #20
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %.sink, double noundef %i.ix) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  br label %bb.i

bb.i:                                             ; preds = %.sink.split1430, %bb.f
  call void @cairo_restore(ptr noundef %i.aj) #20
  %i.iy = load float, ptr %i.cz, align 8, !tbaa !452
  %i.iz = fpext reassoc nsz arcp contract afn float %i.iy to double
  call void @cairo_move_to(ptr noundef %i.aj, double noundef 0.000000e+00, double noundef %i.iz) #20
  %i.ja = load float, ptr %i.cu, align 4, !tbaa !451
  %i.jb = fpext reassoc nsz arcp contract afn float %i.ja to double
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %i.jb, double noundef 0.000000e+00) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %i.jc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !172
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 1432
  %i.je = load double, ptr %i.jd, align 8, !tbaa !223
  %i.jf = fmul reassoc nsz arcp contract afn double %i.je, 2.000000e+00
  call void @cairo_set_line_width(ptr noundef %i.aj, double noundef %i.jf) #20
  %i.jg = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !181
  %i.ji = fmul reassoc nsz arcp contract afn float %i.jh, 2.000000e-02
  %i.jj = fadd reassoc nsz arcp contract afn float %i.ji, 1.000000e+00 ; 7 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.e, i64 400 ; 5 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.e, i64 404 ; 4 uses
  %i.jm = load <2 x float>, ptr %i.jk, align 16, !tbaa !13 ; 2 uses
  %i.jn = fmul reassoc arcp contract afn <2 x float> %i.jm, <float poison, float f0x3EAAAAAB>
  %i.jo = fmul reassoc nsz arcp contract afn <2 x float> %i.jm, <float f0x3EAAAAAB, float poison>
  %i.jp = fsub reassoc nsz arcp contract afn <2 x float> <float poison, float f0x3EAAAAAB>, %i.jn
  %i.jq = shufflevector <2 x float> %i.jo, <2 x float> %i.jp, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.jr = fmul reassoc nsz arcp contract afn <2 x float> %i.jq, %i.jq ; 6 uses
  call void @cairo_set_source_rgb(ptr noundef %i.aj, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 5.000000e-01) #20
  call void @cairo_save(ptr noundef %i.aj) #20
  %i.js = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !172
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 1432
  %i.ju = load double, ptr %i.jt, align 8, !tbaa !223 ; 2 uses
  %i.jv = fmul reassoc nsz arcp contract afn double %i.ju, -2.000000e+00 ; 2 uses
  %i.jw = load float, ptr %i.cu, align 4, !tbaa !451
  %i.jx = fpext reassoc nsz arcp contract afn float %i.jw to double
  %i.jy = fmul reassoc nsz arcp contract afn double %i.ju, 4.000000e+00 ; 2 uses
  %i.jz = fadd reassoc nsz arcp contract afn double %i.jy, %i.jx
  %i.ka = load float, ptr %i.cz, align 8, !tbaa !452
  %i.kb = fpext reassoc nsz arcp contract afn float %i.ka to double
  %i.kc = fadd reassoc nsz arcp contract afn double %i.jy, %i.kb
  call void @cairo_rectangle(ptr noundef %i.aj, double noundef %i.jv, double noundef %i.jv, double noundef %i.jz, double noundef %i.kc) #20
  call void @cairo_clip(ptr noundef %i.aj) #20
  %i.kd = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !180
  switch i32 %i.ke, label %.loopexit [
    i32 0, label %bb.j
    i32 1, label %bb.o
    i32 2, label %bb.o
  ]

bb.j:                                             ; preds = %bb.i
  %i.kf = load float, ptr %i.cz, align 8, !tbaa !452
  %i.kg = fpext reassoc nsz arcp contract afn float %i.kf to double
  %i.kh = extractelement <2 x float> %i.jr, i64 0
  %i.ki = fdiv reassoc nsz arcp contract afn float -0.000000e+00, %i.kh
  %i.kj = call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.ki)
  %i.kk = extractelement <2 x float> %i.jr, i64 1
  %i.kl = fdiv reassoc nsz arcp contract afn float -5.000000e-01, %i.kk
  %i.km = call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.kl)
  %i.kn = fadd reassoc nsz arcp contract afn float %i.km, %i.kj
  %i.ko = fdiv reassoc nsz arcp contract afn float %i.kn, %i.jj
  %i.kp = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ko, float 0.000000e+00)
  %i.kq = call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.kp, float 1.000000e+00)
  %i.kr = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.kq
  %i.ks = fpext reassoc nnan nsz arcp contract afn float %i.kr to double
  %i.kt = fsub reassoc nnan nsz arcp contract afn double 1.000000e+00, %i.ks
  %i.ku = fmul reassoc nsz arcp contract afn double %i.kt, %i.kg
end_hunk_2
begin_hunk_3_@dt_iop_tonecurve_draw:bb.a

bb.n:                                             ; preds = %bb.k, %bb.m, %bb.l
  %.01079 = phi nsz float [ %i.ls, %bb.l ], [ %i.ma, %bb.m ], [ %i.la, %bb.k ]
  %i.mb = load float, ptr %i.cu, align 4, !tbaa !451
  %i.mc = fmul reassoc nsz arcp contract afn float %i.mb, %.01079
  %i.md = fpext reassoc nsz arcp contract afn float %i.mc to double
  %i.me = load float, ptr %i.cz, align 8, !tbaa !452
  %i.mf = fpext reassoc nsz arcp contract afn float %i.me to double
  %i.mg = fpext reassoc nnan nsz arcp contract afn float %i.lm to double
  %i.mh = fsub reassoc nnan nsz arcp contract afn double 1.000000e+00, %i.mg
  %i.mi = fmul reassoc nsz arcp contract afn double %i.mh, %i.mf
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %i.md, double noundef %i.mi) #20
  %i.mj = add nuw nsw i32 %.010801331, 1          ; 2 uses
  %exitcond1346.not = icmp eq i32 %i.mj, 256
  br i1 %exitcond1346.not, label %.loopexit, label %bb.k

bb.o:                                             ; preds = %bb.i, %bb.i
  %i.mk = load float, ptr %i.cz, align 8, !tbaa !452
  %i.ml = fpext reassoc nsz arcp contract afn float %i.mk to double
  %i.mm = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.jj)
  %i.mn = fdiv reassoc nsz arcp contract afn float 5.000000e-01, %i.mm ; 2 uses
  %i.mo = fmul reassoc nsz arcp contract afn float %i.mn, -0.000000e+00
  %i.mp = extractelement <2 x float> %i.jr, i64 0
  %i.mq = fdiv reassoc nsz arcp contract afn float %i.mo, %i.mp
  %i.mr = call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.mq)
  %i.ms = fneg reassoc nsz arcp contract afn float %i.mn ; 2 uses
  %i.mt = extractelement <2 x float> %i.jr, i64 1
  %i.mu = fdiv reassoc nsz arcp contract afn float %i.ms, %i.mt
  %i.mv = call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.mu)
  %i.mw = fadd reassoc nsz arcp contract afn float %i.mr, %i.mv
  %i.mx = fmul reassoc nsz arcp contract afn float %i.mw, %i.jj
  %i.my = fsub reassoc nsz arcp contract afn float %i.jj, %i.mx
  %i.mz = fpext reassoc nsz arcp contract afn float %i.my to double
  %i.na = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.mz
  %i.nb = fmul reassoc nsz arcp contract afn double %i.na, %i.ml
  call void @cairo_move_to(ptr noundef %i.aj, double noundef 0.000000e+00, double noundef %i.nb) #20
  %i.nc = fmul reassoc nsz arcp contract afn float %i.ei, 1.900000e-01
  %i.nd = insertelement <2 x float> poison, float %i.ms, i64 0
  %i.ne = shufflevector <2 x float> %i.nd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nf = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.jr
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.s
  %.010781330 = phi i32 [ 1, %bb.o ], [ %i.os, %bb.s ] ; 2 uses
  %i.ng = uitofp nsz nneg i32 %.010781330 to double
  %i.nh = fmul reassoc nnan nsz arcp contract afn double %i.ng, f0x3F70101010101010
  %i.ni = fptrunc reassoc nsz arcp contract afn double %i.nh to float ; 5 uses
  %i.nj = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ni
  %i.nk = insertelement <2 x float> poison, float %i.ni, i64 0
  %i.nl = insertelement <2 x float> %i.nk, float %i.nj, i64 1 ; 2 uses
  %i.nm = fmul reassoc nsz arcp contract afn <2 x float> %i.nl, %i.nl
  %i.nn = fmul reassoc nsz arcp contract afn <2 x float> %i.nm, %i.ne
  %i.no = fmul reassoc nsz arcp contract afn <2 x float> %i.nn, %i.nf ; 2 uses
  %i.np = extractelement <2 x float> %i.no, i64 0
  %i.nq = call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.np)
  %i.nr = extractelement <2 x float> %i.no, i64 1
  %i.ns = call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.nr)
  %i.nt = fadd reassoc nsz arcp contract afn float %i.ns, %i.nq
  %i.nu = fmul reassoc nsz arcp contract afn float %i.nt, %i.jj
  %i.nv = fsub reassoc nsz arcp contract afn float %i.jj, %i.nu
  %i.nw = load i32, ptr %i.er, align 4, !tbaa !187
  switch i32 %i.nw, label %bb.s [
    i32 1, label %bb.q
    i32 2, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.nx = load float, ptr %i.em, align 4, !tbaa !21
  %i.ny = fmul reassoc nsz arcp contract afn float %i.eo, %i.ni
  %i.nz = fadd reassoc nsz arcp contract afn float %i.nx, %i.ny
  %i.oa = call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.nz)
  %i.ob = fmul reassoc nsz arcp contract afn float %i.oa, %i.ej
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.oc = load float, ptr %i.em, align 4, !tbaa !21
  %i.od = fmul reassoc nsz arcp contract afn float %i.eo, %i.ni
  %i.oe = fadd reassoc nsz arcp contract afn float %i.oc, %i.od
  %i.of = call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.oe)
  %i.og = fmul reassoc nsz arcp contract afn float %i.nc, %i.of
  %i.oh = fadd reassoc nsz arcp contract afn float %i.og, 1.000000e+00
  %i.oi = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.oh)
  %i.oj = fmul reassoc nsz arcp contract afn float %i.oi, f0x3EAAE8E8
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r, %bb.q
  %.01077 = phi nsz float [ %i.ob, %bb.q ], [ %i.oj, %bb.r ], [ %i.ni, %bb.p ]
  %i.ok = load float, ptr %i.cu, align 4, !tbaa !451
  %i.ol = fmul reassoc nsz arcp contract afn float %i.ok, %.01077
  %i.om = fpext reassoc nsz arcp contract afn float %i.ol to double
  %i.on = load float, ptr %i.cz, align 8, !tbaa !452
  %i.oo = fpext reassoc nsz arcp contract afn float %i.on to double
  %i.op = fpext reassoc nsz arcp contract afn float %i.nv to double
  %i.oq = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.op
  %i.or = fmul reassoc nsz arcp contract afn double %i.oq, %i.oo
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %i.om, double noundef %i.or) #20
  %i.os = add nuw nsw i32 %.010781330, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.os, 256
  br i1 %exitcond.not, label %.loopexit, label %bb.p

.loopexit:                                        ; preds = %bb.s, %bb.n, %bb.i
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %i.ot = load i32, ptr %i.er, align 4, !tbaa !187 ; 2 uses
  %.off = add i32 %i.ot, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.loopexit
  %i.ou = load float, ptr %i.em, align 4, !tbaa !21
  %i.ov = fdiv reassoc nsz arcp contract afn float 0.000000e+00, %i.ej
  %i.ow = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.ov)
  %i.ox = fsub reassoc nsz arcp contract afn float %i.ow, %i.ou
  %i.oy = fdiv reassoc nsz arcp contract afn float %i.ox, %i.eo
  %i.oz = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.oy, float 0.000000e+00)
  %i.pa = call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.oz, float 1.000000e+00) ; 2 uses
  %i.pb = icmp eq i32 %i.ot, 2
  br i1 %i.pb, label %.thread1211, label %.thread1209

.thread1209:                                      ; preds = %bb.t
  %i.pc = getelementptr inbounds nuw i8, ptr %i.e, i64 336 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.e, i64 352 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.e, i64 368 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.e, i64 384 ; 2 uses
  %i.pg = load float, ptr %i.jk, align 16, !tbaa !456
  %i.ph = load float, ptr %i.jl, align 4, !tbaa !457
  %i.pi = getelementptr inbounds nuw i8, ptr %i.e, i64 448 ; 2 uses
  %i.pj = call reassoc nsz arcp contract afn fastcc float @filmic_spline(float noundef %i.pa, ptr noundef nonnull %i.f, ptr noundef nonnull %i.pc, ptr noundef nonnull %i.pd, ptr noundef nonnull %i.pe, ptr noundef nonnull %i.pf, float noundef %i.pg, float noundef %i.ph, ptr noundef nonnull %i.pi)
  %i.pk = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pj, float 0.000000e+00)
  %i.pl = call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.pk, float 1.000000e+00)
  %i.pm = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.pn = load float, ptr %i.pm, align 4, !tbaa !19
  %i.po = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.pl, float %i.pn)
  br label %bb.v

.thread1211:                                      ; preds = %bb.t
  %i.pp = fmul reassoc nnan nsz arcp contract afn float %i.pa, 1.900000e+01
  %i.pq = fadd reassoc nnan nsz arcp contract afn float %i.pp, 1.000000e+00
  %i.pr = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.pq)
  %i.ps = fmul reassoc nsz arcp contract afn float %i.pr, f0x3EAAE8E8
  %i.pt = getelementptr inbounds nuw i8, ptr %i.e, i64 336 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.e, i64 352 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.e, i64 368 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.e, i64 384 ; 2 uses
  %i.px = load float, ptr %i.jk, align 16, !tbaa !456
  %i.py = load float, ptr %i.jl, align 4, !tbaa !457
  %i.pz = getelementptr inbounds nuw i8, ptr %i.e, i64 448 ; 2 uses
  %i.qa = call reassoc nsz arcp contract afn fastcc float @filmic_spline(float noundef %i.ps, ptr noundef nonnull %i.f, ptr noundef nonnull %i.pt, ptr noundef nonnull %i.pu, ptr noundef nonnull %i.pv, ptr noundef nonnull %i.pw, float noundef %i.px, float noundef %i.py, ptr noundef nonnull %i.pz)
  %i.qb = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.qa, float 0.000000e+00)
  %i.qc = call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.qb, float 1.000000e+00)
  %i.qd = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !19
  %i.qf = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.qc, float %i.qe)
  %i.qg = fmul reassoc nsz arcp contract afn float %i.qf, 1.900000e+01
  %i.qh = fadd reassoc nsz arcp contract afn float %i.qg, 1.000000e+00
  %i.qi = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.qh)
  %i.qj = fmul reassoc nsz arcp contract afn float %i.qi, f0x3EAAE8E8
  br label %bb.v

bb.u:                                             ; preds = %.loopexit
  %i.qk = getelementptr inbounds nuw i8, ptr %i.e, i64 336 ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.e, i64 352 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.e, i64 368 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.e, i64 384 ; 2 uses
  %i.qo = load float, ptr %i.jk, align 16, !tbaa !456
  %i.qp = load float, ptr %i.jl, align 4, !tbaa !457
  %i.qq = getelementptr inbounds nuw i8, ptr %i.e, i64 448 ; 2 uses
  %i.qr = call reassoc nsz arcp contract afn fastcc float @filmic_spline(float noundef 0.000000e+00, ptr noundef nonnull %i.f, ptr noundef nonnull %i.qk, ptr noundef nonnull %i.ql, ptr noundef nonnull %i.qm, ptr noundef nonnull %i.qn, float noundef %i.qo, float noundef %i.qp, ptr noundef nonnull %i.qq)
  %i.qs = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.qr, float 0.000000e+00)
  %i.qt = call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.qs, float 1.000000e+00)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread1211, %.thread1209
  %i.qu = phi ptr [ %i.pi, %.thread1209 ], [ %i.pz, %.thread1211 ], [ %i.qq, %bb.u ]
  %i.qv = phi ptr [ %i.pf, %.thread1209 ], [ %i.pw, %.thread1211 ], [ %i.qn, %bb.u ]
  %i.qw = phi ptr [ %i.pe, %.thread1209 ], [ %i.pv, %.thread1211 ], [ %i.qm, %bb.u ]
  %i.qx = phi ptr [ %i.pd, %.thread1209 ], [ %i.pu, %.thread1211 ], [ %i.ql, %bb.u ]
  %i.qy = phi ptr [ %i.pc, %.thread1209 ], [ %i.pt, %.thread1211 ], [ %i.qk, %bb.u ]
  %.01074 = phi nsz float [ %i.po, %.thread1209 ], [ %i.qj, %.thread1211 ], [ %i.qt, %bb.u ]
  %i.qz = load float, ptr %i.cz, align 8, !tbaa !452
  %i.ra = fpext reassoc nsz arcp contract afn float %i.qz to double
  %i.rb = fpext reassoc nsz arcp contract afn float %.01074 to double
  %i.rc = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.rb
  %i.rd = fmul reassoc nsz arcp contract afn double %i.rc, %i.ra
  call void @cairo_move_to(ptr noundef %i.aj, double noundef 0.000000e+00, double noundef %i.rd) #20
  %i.re = getelementptr inbounds nuw i8, ptr %i.e, i64 424 ; 3 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.e, i64 408 ; 4 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 12 uses
  %i.rh = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ei
  %i.ri = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.eo
  br label %bb.x

bb.w:                                             ; preds = %bb.ah
  call void @cairo_restore(ptr noundef %i.aj) #20
  call void @cairo_save(ptr noundef %i.aj) #20
  %i.rj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !172
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 1432
  %i.rl = load double, ptr %i.rk, align 8, !tbaa !223 ; 2 uses
  %i.rm = fmul reassoc nsz arcp contract afn double %i.rl, -4.000000e+00 ; 2 uses
  %i.rn = fmul reassoc nsz arcp contract afn double %i.rl, 8.000000e+00 ; 2 uses
  %i.ro = load <2 x float>, ptr %i.cu, align 4, !tbaa !13
  %i.rp = fpext reassoc nsz arcp contract afn <2 x float> %i.ro to <2 x double> ; 2 uses
  %i.rq = extractelement <2 x double> %i.rp, i64 0
  %i.rr = fadd reassoc nsz arcp contract afn double %i.rn, %i.rq
  %i.rs = extractelement <2 x double> %i.rp, i64 1
  %i.rt = fadd reassoc nsz arcp contract afn double %i.rn, %i.rs
  call void @cairo_rectangle(ptr noundef %i.aj, double noundef %i.rm, double noundef %i.rm, double noundef %i.rr, double noundef %i.rt) #20
  call void @cairo_clip(ptr noundef %i.aj) #20
  %i.ru = getelementptr inbounds nuw i8, ptr %i.e, i64 428
  %i.rv = getelementptr inbounds nuw i8, ptr %i.e, i64 436
  %i.rw = load float, ptr %i.rv, align 4, !tbaa !13 ; 3 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.e, i64 416
  %i.ry = load float, ptr %i.rx, align 32, !tbaa !13 ; 3 uses
  %i.rz = load i32, ptr %i.er, align 4, !tbaa !187
  switch i32 %i.rz, label %bb.ak [
    i32 1, label %bb.ai
    i32 2, label %bb.aj
  ]

bb.x:                                             ; preds = %bb.v, %bb.ah
  %.010731332 = phi i32 [ 1, %bb.v ], [ %i.ub, %bb.ah ] ; 2 uses
  %i.sa = uitofp nsz nneg i32 %.010731332 to float
  %i.sb = fmul reassoc nnan nsz arcp contract afn float %i.sa, f0x3B808081
  %i.sc = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.sb, float 2.400000e+00) ; 5 uses
  %i.sd = load i32, ptr %i.er, align 4, !tbaa !187 ; 2 uses
  %.off1122 = add i32 %i.sd, -1
  %switch1123 = icmp ult i32 %.off1122, 2
  br i1 %switch1123, label %bb.y, label %.thread1213

bb.y:                                             ; preds = %bb.x
  %i.se = load float, ptr %i.em, align 4, !tbaa !21
  %i.sf = fmul reassoc nnan nsz arcp contract afn float %i.sc, 1.000000e+02
  %i.sg = fmul reassoc nsz arcp contract afn float %i.sf, %i.rh
  %i.sh = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.sg)
  %i.si = fsub reassoc nsz arcp contract afn float %i.sh, %i.se
  %i.sj = fmul reassoc nsz arcp contract afn float %i.si, %i.ri
  %i.sk = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.sj, float 0.000000e+00)
  %i.sl = call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.sk, float 1.000000e+00) ; 2 uses
  %i.sm = icmp eq i32 %i.sd, 2
  br i1 %i.sm, label %bb.z, label %.thread1213

bb.z:                                             ; preds = %bb.y
  %i.sn = fmul reassoc nnan nsz arcp contract afn float %i.sc, 1.900000e+01
  %i.so = fadd reassoc nnan nsz arcp contract afn float %i.sn, 1.000000e+00
  %i.sp = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.so)
  %i.sq = fmul reassoc nsz arcp contract afn float %i.sp, f0x3EAAE8E8
  br label %.thread1213

.thread1213:                                      ; preds = %bb.x, %bb.z, %bb.y
  %.010711215 = phi float [ %i.sl, %bb.z ], [ %i.sl, %bb.y ], [ %i.sc, %bb.x ]
  %.01072 = phi nsz float [ %i.sq, %bb.z ], [ %i.sc, %bb.y ], [ %i.sc, %bb.x ] ; 2 uses
  %i.sr = load float, ptr %i.jk, align 16, !tbaa !456
  %i.ss = load float, ptr %i.jl, align 4, !tbaa !457
  %i.st = call reassoc nsz arcp contract afn fastcc float @filmic_spline(float noundef %.010711215, ptr noundef nonnull %i.f, ptr noundef nonnull %i.qy, ptr noundef nonnull %i.qx, ptr noundef nonnull %i.qw, ptr noundef nonnull %i.qv, float noundef %i.sr, float noundef %i.ss, ptr noundef nonnull %i.qu) ; 5 uses
  %i.su = load float, ptr %i.re, align 8, !tbaa !13
  %i.sv = fadd reassoc nsz arcp contract afn float %i.su, f0x3727C5AC
  %i.sw = fcmp reassoc nsz arcp contract afn ogt float %i.st, %i.sv
  br i1 %i.sw, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.thread1213
  %i.sx = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.st, float 1.000000e+00)
  call void @cairo_set_source_rgb(ptr noundef %i.aj, double noundef 7.500000e-01, double noundef 5.000000e-01, double noundef 0.000000e+00) #20
  br label %bb.ae

bb.ab:                                            ; preds = %.thread1213
  %i.sy = load float, ptr %i.rf, align 8, !tbaa !13
  %i.sz = fadd reassoc nsz arcp contract afn float %i.sy, f0xB727C5AC
  %i.ta = fcmp reassoc nsz arcp contract afn olt float %i.st, %i.sz
  br i1 %i.ta, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.tb = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.st, float 0.000000e+00)
  call void @cairo_set_source_rgb(ptr noundef %i.aj, double noundef 7.500000e-01, double noundef 5.000000e-01, double noundef 0.000000e+00) #20
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.tc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !206 ; 4 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 680
  %.sroa.01144.0.copyload = load double, ptr %i.td, align 8
  %.sroa.41145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tc, i64 688
  %.sroa.41145.0.copyload = load double, ptr %.sroa.41145.0..sroa_idx, align 8
  %.sroa.51146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tc, i64 696
  %.sroa.51146.0.copyload = load double, ptr %.sroa.51146.0..sroa_idx, align 8
  %.sroa.61147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tc, i64 704
  %.sroa.61147.0.copyload = load double, ptr %.sroa.61147.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.aj, double noundef %.sroa.01144.0.copyload, double noundef %.sroa.41145.0.copyload, double noundef %.sroa.51146.0.copyload, double noundef %.sroa.61147.0.copyload) #20
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.aa
  %.01069 = phi nsz float [ %i.sx, %bb.aa ], [ %i.tb, %bb.ac ], [ %i.st, %bb.ad ] ; 3 uses
  %i.te = load i32, ptr %i.er, align 4, !tbaa !187
  switch i32 %i.te, label %bb.ah [
    i32 1, label %bb.af
    i32 2, label %bb.ag
  ]

bb.af:                                            ; preds = %bb.ae
  %i.tf = load float, ptr %i.rg, align 4, !tbaa !19
  %i.tg = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.01069, float %i.tf)
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.th = load float, ptr %i.rg, align 4, !tbaa !19
  %i.ti = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.01069, float %i.th)
  %i.tj = fmul reassoc nsz arcp contract afn float %i.ti, 1.900000e+01
  %i.tk = fadd reassoc nsz arcp contract afn float %i.tj, 1.000000e+00
  %i.tl = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.tk)
  %i.tm = fmul reassoc nsz arcp contract afn float %i.tl, f0x3EAAE8E8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ae, %bb.ag, %bb.af
  %.11070 = phi nsz float [ %i.tg, %bb.af ], [ %i.tm, %bb.ag ], [ %.01069, %bb.ae ]
  %i.tn = load float, ptr %i.cu, align 4, !tbaa !451
  %i.to = fmul reassoc nsz arcp contract afn float %i.tn, %.01072
  %i.tp = fpext reassoc nsz arcp contract afn float %i.to to double
  %i.tq = load float, ptr %i.cz, align 8, !tbaa !452
  %i.tr = fpext reassoc nsz arcp contract afn float %i.tq to double
  %i.ts = fpext reassoc nsz arcp contract afn float %.11070 to double
  %i.tt = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.ts ; 2 uses
  %i.tu = fmul reassoc nsz arcp contract afn double %i.tt, %i.tr
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %i.tp, double noundef %i.tu) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %i.tv = load float, ptr %i.cu, align 4, !tbaa !451
  %i.tw = fmul reassoc nsz arcp contract afn float %i.tv, %.01072
  %i.tx = fpext reassoc nsz arcp contract afn float %i.tw to double
  %i.ty = load float, ptr %i.cz, align 8, !tbaa !452
  %i.tz = fpext reassoc nsz arcp contract afn float %i.ty to double
  %i.ua = fmul reassoc nsz arcp contract afn double %i.tt, %i.tz
  call void @cairo_move_to(ptr noundef %i.aj, double noundef %i.tx, double noundef %i.ua) #20
  %i.ub = add nuw nsw i32 %.010731332, 1          ; 2 uses
  %exitcond1347.not = icmp eq i32 %i.ub, 256
  br i1 %exitcond1347.not, label %bb.w, label %bb.x

bb.ai:                                            ; preds = %bb.w
  %i.uc = load float, ptr %i.em, align 4, !tbaa !21
  %i.ud = fmul reassoc nsz arcp contract afn float %i.rw, %i.eo
  %i.ue = fadd reassoc nsz arcp contract afn float %i.uc, %i.ud
  %i.uf = call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.ue)
  %i.ug = fmul reassoc nsz arcp contract afn float %i.uf, %i.ej
  %i.uh = load float, ptr %i.rg, align 4, !tbaa !19
  %i.ui = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ry, float %i.uh)
  br label %bb.ak

bb.aj:                                            ; preds = %bb.w
  %i.uj = load float, ptr %i.em, align 4, !tbaa !21
  %i.uk = fmul reassoc nsz arcp contract afn float %i.rw, %i.eo
  %i.ul = fadd reassoc nsz arcp contract afn float %i.uj, %i.uk
  %i.um = call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.ul)
  %i.un = fmul reassoc nsz arcp contract afn float %i.ei, 1.900000e-01
  %i.uo = fmul reassoc nsz arcp contract afn float %i.un, %i.um
  %i.up = fadd reassoc nsz arcp contract afn float %i.uo, 1.000000e+00
  %i.uq = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.up)
  %i.ur = fmul reassoc nsz arcp contract afn float %i.uq, f0x3EAAE8E8
  %i.us = load float, ptr %i.rg, align 4, !tbaa !19
  %i.ut = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ry, float %i.us)
  %i.uu = fmul reassoc nsz arcp contract afn float %i.ut, 1.900000e+01
  %i.uv = fadd reassoc nsz arcp contract afn float %i.uu, 1.000000e+00
  %i.uw = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.uv)
  %i.ux = fmul reassoc nsz arcp contract afn float %i.uw, f0x3EAAE8E8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj, %bb.w
  %.01068 = phi nsz float [ %i.ug, %bb.ai ], [ %i.ur, %bb.aj ], [ %i.rw, %bb.w ] ; 2 uses
  %.01067 = phi nsz float [ %i.ui, %bb.ai ], [ %i.ux, %bb.aj ], [ %i.ry, %bb.w ]
  call void @cairo_set_source_rgb(ptr noundef %i.aj, double noundef 7.500000e-01, double noundef 5.000000e-01, double noundef 0.000000e+00) #20
  %i.uy = load float, ptr %i.cu, align 4, !tbaa !451
  %i.uz = fmul reassoc nsz arcp contract afn float %i.uy, %.01068
  %i.va = fpext reassoc nsz arcp contract afn float %i.uz to double
  %i.vb = fpext reassoc nsz arcp contract afn float %.01067 to double
  %i.vc = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.vb ; 2 uses
  %i.vd = load float, ptr %i.cz, align 8, !tbaa !452
  %i.ve = fpext reassoc nsz arcp contract afn float %i.vd to double
  %i.vf = fmul reassoc nsz arcp contract afn double %i.vc, %i.ve
  %i.vg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !172
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 1432
  %i.vi = load double, ptr %i.vh, align 8, !tbaa !223
  %i.vj = fmul reassoc nsz arcp contract afn double %i.vi, 6.000000e+00
  call void @cairo_arc(ptr noundef %i.aj, double noundef %i.va, double noundef %i.vf, double noundef %i.vj, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #20
  call void @cairo_fill(ptr noundef %i.aj) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %i.vk = getelementptr inbounds nuw i8, ptr %i.e, i64 412
  %i.vl = call <8 x float> @llvm.masked.load.v8f32.p0(ptr nonnull align 4 %i.vk, <8 x i1> <i1 true, i1 false, i1 true, i1 false, i1 false, i1 true, i1 false, i1 true>, <8 x float> poison), !tbaa !13 ; 2 uses
  %i.vm = shufflevector <8 x float> %i.vl, <8 x float> poison, <2 x i32> <i32 2, i32 7>
  %i.vn = shufflevector <8 x float> %i.vl, <8 x float> poison, <2 x i32> <i32 0, i32 5>
  %i.vo = fsub reassoc nsz arcp contract afn <2 x float> %i.vm, %i.vn
  %i.vp = load <2 x float>, ptr %i.cu, align 4, !tbaa !13
  %i.vq = fmul reassoc nsz arcp contract afn <2 x float> %i.vo, %i.vp ; 2 uses
  %shift1450 = shufflevector <2 x float> %i.vq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1451 = fdiv reassoc nsz arcp contract afn <2 x float> %i.vq, %shift1450
  %i.vr = extractelement <2 x float> %foldExtExtBinop1451, i64 0
  %i.vs = call reassoc nsz arcp contract afn float @llvm.atan.f32(float %i.vr) ; 2 uses
  %i.vt = fadd reassoc nsz arcp contract afn float %i.vs, f0x3FC90FDB ; 2 uses
  %i.vu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !206 ; 4 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 680
  %.sroa.01148.0.copyload = load double, ptr %i.vv, align 8
  %.sroa.41149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vu, i64 688
  %.sroa.41149.0.copyload = load double, ptr %.sroa.41149.0..sroa_idx, align 8
  %.sroa.51150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vu, i64 696
  %.sroa.51150.0.copyload = load double, ptr %.sroa.51150.0..sroa_idx, align 8
  %.sroa.61151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vu, i64 704
  %.sroa.61151.0.copyload = load double, ptr %.sroa.61151.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.aj, double noundef %.sroa.01148.0.copyload, double noundef %.sroa.41149.0.copyload, double noundef %.sroa.51150.0.copyload, double noundef %.sroa.61151.0.copyload) #20
end_hunk_3
