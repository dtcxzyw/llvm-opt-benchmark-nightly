Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBody?download=true
inline.NumInlined: 5223
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 199
loop-unroll.NumUnrolled: 249
begin_hunk_0_@_ZN10btSoftBody16PSolve_RContactsEPS_ff:bb.a
  %lcmp.mod336.not = icmp eq i64 %xtraiter335, 0
  br i1 %lcmp.mod336.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.0247255.epil.init = phi float [ 0.000000e+00, %.lr.ph ], [ %i.hc, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod338 = icmp ne i64 %xtraiter335, 0
  call void @llvm.assume(i1 %lcmp.mod338)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.s ] ; 3 uses
  %.0247255.epil = phi float [ %.0247255.epil.init, %.epil.preheader ], [ %i.hh, %bb.s ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.s ]
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv.epil
  %i.he = load float, ptr %i.hd, align 4, !tbaa !253
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv.epil
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !253
  %i.hh = call float @llvm.fmuladd.f32(float %i.he, float %i.hg, float %.0247255.epil) ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter335
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.s, !llvm.loop !1255

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.s, %.preheader
  %.0247.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.hc, %._crit_edge.loopexit.unr-lcssa ], [ %i.hh, %bb.s ] ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.hj = load float, ptr %i.hi, align 8, !tbaa !253
  %i.hk = fmul float %.0247.lcssa, %i.hj
  %i.hl = load <2 x float>, ptr %i.fy, align 8, !tbaa !253
  %i.hm = insertelement <2 x float> poison, float %.0247.lcssa, i64 0
  %i.hn = shufflevector <2 x float> %i.hm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ho = fmul <2 x float> %i.hn, %i.hl
  %i.hp = fmul <2 x float> %i.ar, %i.ho
  %i.hq = fmul float %i.b, %i.hk
  %.sroa.3.12.vec.insert.i132 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hq, i64 0
  br label %bb.t

bb.t:                                             ; preds = %bb.e, %bb.f, %._crit_edge
  %.sroa.0239.0 = phi <2 x float> [ %i.cc, %bb.f ], [ zeroinitializer, %bb.e ], [ %i.hp, %._crit_edge ]
  %.sroa.9.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i, %bb.f ], [ zeroinitializer, %bb.e ], [ %.sroa.3.12.vec.insert.i132, %._crit_edge ]
  %.063 = phi ptr [ %i.av, %bb.f ], [ null, %bb.e ], [ null, %._crit_edge ] ; 2 uses
  %.062 = phi ptr [ null, %bb.f ], [ null, %bb.e ], [ %i.av, %._crit_edge ] ; 2 uses
  %.061 = phi ptr [ null, %bb.f ], [ null, %bb.e ], [ %i.fz, %._crit_edge ] ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.au, i64 64 ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !503 ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 32
  %i.hv = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  %i.hx = load <3 x float>, ptr %i.ht, align 4, !tbaa !253 ; 3 uses
  %i.hy = load <3 x float>, ptr %i.hu, align 4, !tbaa !253
  %i.hz = fsub <3 x float> %i.hx, %i.hy
  %i.ia = shufflevector <3 x float> %i.hz, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.ib = shufflevector <2 x float> %.sroa.0239.0, <2 x float> %.sroa.9.0, <3 x i32> <i32 2, i32 0, i32 1>
  %i.ic = fsub <3 x float> %i.ia, %i.ib           ; 5 uses
  %i.id = load float, ptr %i.hw, align 4, !tbaa !253 ; 2 uses
  %i.ie = load <3 x float>, ptr %i.hv, align 8, !tbaa !253 ; 3 uses
  %i.if = extractelement <3 x float> %i.ic, i64 2
  %i.ig = fmul float %i.if, %i.id
  %i.ih = extractelement <3 x float> %i.ic, i64 1
  %i.ii = extractelement <3 x float> %i.ie, i64 0 ; 2 uses
  %i.ij = call float @llvm.fmuladd.f32(float %i.ih, float %i.ii, float %i.ig)
  %i.ik = extractelement <3 x float> %i.ic, i64 0
  %i.il = extractelement <3 x float> %i.ie, i64 2 ; 2 uses
  %i.im = call noundef float @llvm.fmuladd.f32(float %i.ik, float %i.il, float %i.ij) ; 2 uses
  %i.in = fcmp ugt float %i.im, f0x34000000
  br i1 %i.in, label %bb.ac, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.io = getelementptr inbounds nuw i8, ptr %i.hs, i64 20
  %i.ip = load float, ptr %i.io, align 4, !tbaa !253
  %i.iq = fmul float %i.ip, %i.id
  %i.ir = extractelement <3 x float> %i.hx, i64 0
  %i.is = call float @llvm.fmuladd.f32(float %i.ir, float %i.ii, float %i.iq)
  %i.it = extractelement <3 x float> %i.hx, i64 2
  %i.iu = call noundef float @llvm.fmuladd.f32(float %i.it, float %i.il, float %i.is)
  %i.iv = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.iw = load float, ptr %i.iv, align 8, !tbaa !489
  %i.ix = fadd float %i.iu, %i.iw                 ; 2 uses
  %i.iy = fcmp olt float %i.ix, %i.h
  %.sroa.speculated = select i1 %i.iy, float %i.ix, float %i.h
  %i.iz = insertelement <3 x float> poison, float %i.im, i64 0
  %i.ja = shufflevector <3 x float> %i.ie, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.jb = shufflevector <3 x float> %i.iz, <3 x float> poison, <3 x i32> zeroinitializer
  %i.jc = fmul <3 x float> %i.ja, %i.jb
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  %i.jd = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  %i.je = getelementptr inbounds nuw i8, ptr %i.au, i64 140
  %i.jf = load float, ptr %i.je, align 4, !tbaa !253
  %i.jg = getelementptr inbounds nuw i8, ptr %i.au, i64 144
  %i.jh = load float, ptr %i.jg, align 8, !tbaa !504
  %i.ji = fmul float %.sroa.speculated, %i.jh
  %i.jj = getelementptr inbounds nuw i8, ptr %i.au, i64 80
  %i.jk = load float, ptr %i.jj, align 8, !tbaa !253
  %i.jl = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  %i.jm = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  %i.jn = load float, ptr %i.jm, align 8, !tbaa !253
  %i.jo = getelementptr inbounds nuw i8, ptr %i.au, i64 104
  %i.jp = load float, ptr %i.jo, align 8, !tbaa !253
  %i.jq = getelementptr inbounds nuw i8, ptr %i.au, i64 108
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !253
  %i.js = getelementptr inbounds nuw i8, ptr %i.au, i64 112
  %i.jt = load float, ptr %i.js, align 8, !tbaa !253
  %i.ju = getelementptr inbounds nuw i8, ptr %i.au, i64 136
  %i.jv = fsub <3 x float> %i.ic, %i.jc
  %i.jw = insertelement <3 x float> poison, float %i.jf, i64 0
  %i.jx = shufflevector <3 x float> %i.jw, <3 x float> poison, <3 x i32> zeroinitializer
  %i.jy = fmul <3 x float> %i.jv, %i.jx
  %i.jz = fsub <3 x float> %i.ic, %i.jy
  %i.ka = load <3 x float>, ptr %i.hv, align 8, !tbaa !253
  %i.kb = insertelement <3 x float> poison, float %i.ji, i64 0
  %i.kc = shufflevector <3 x float> %i.ka, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.kd = shufflevector <3 x float> %i.kb, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ke = fmul <3 x float> %i.kc, %i.kd
  %i.kf = fadd <3 x float> %i.jz, %i.ke
  %i.kg = fmul <3 x float> %i.ap, %i.kf           ; 6 uses
  %i.kh = load <2 x float>, ptr %i.jd, align 8, !tbaa !253 ; 2 uses
  %i.ki = load <2 x float>, ptr %i.jl, align 8, !tbaa !253 ; 2 uses
  %i.kj = shufflevector <2 x float> %i.kh, <2 x float> %i.ki, <2 x i32> <i32 1, i32 3>
  %i.kk = shufflevector <3 x float> %i.kg, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.kl = fmul <2 x float> %i.kj, %i.kk
  %i.km = shufflevector <2 x float> %i.kh, <2 x float> %i.ki, <2 x i32> <i32 0, i32 2>
  %i.kn = shufflevector <3 x float> %i.kg, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ko = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.km, <2 x float> %i.kn, <2 x float> %i.kl)
  %i.kp = insertelement <2 x float> poison, float %i.jk, i64 0
  %i.kq = insertelement <2 x float> %i.kp, float %i.jn, i64 1
  %i.kr = shufflevector <3 x float> %i.kg, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ks = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kq, <2 x float> %i.kr, <2 x float> %i.ko) ; 5 uses
  %i.kt = extractelement <3 x float> %i.kg, i64 2
  %i.ku = fmul float %i.kt, %i.jr
  %i.kv = extractelement <3 x float> %i.kg, i64 1
  %i.kw = call float @llvm.fmuladd.f32(float %i.jp, float %i.kv, float %i.ku)
  %i.kx = extractelement <3 x float> %i.kg, i64 0
  %i.ky = call noundef float @llvm.fmuladd.f32(float %i.jt, float %i.kx, float %i.kw) ; 4 uses
  %.sroa.3.12.vec.insert.i182 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ky, i64 0
  store <2 x float> %i.ks, ptr %6, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i182, ptr %i.an, align 8
  %i.kz = load float, ptr %i.ju, align 8, !tbaa !253 ; 2 uses
  %i.la = insertelement <2 x float> poison, float %i.kz, i64 0
  %i.lb = shufflevector <2 x float> %i.la, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lc = fmul <2 x float> %i.lb, %i.ks
  %i.ld = fmul float %i.kz, %i.ky
  %i.le = load ptr, ptr %i.hr, align 8, !tbaa !503 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 16 ; 2 uses
  %i.lg = load <2 x float>, ptr %i.lf, align 4, !tbaa !253
  %i.lh = fsub <2 x float> %i.lg, %i.lc
  store <2 x float> %i.lh, ptr %i.lf, align 4, !tbaa !253
  %i.li = getelementptr inbounds nuw i8, ptr %i.le, i64 24 ; 2 uses
  %i.lj = load float, ptr %i.li, align 4, !tbaa !253
  %i.lk = fsub float %i.lj, %i.ld
  store float %i.lk, ptr %i.li, align 4, !tbaa !253
  %i.ll = load ptr, ptr %i.au, align 8, !tbaa !488
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 272
  %i.ln = load i32, ptr %i.lm, align 8, !tbaa !272 ; 2 uses
  %i.lo = icmp eq i32 %i.ln, 2
  br i1 %i.lo, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %.not88 = icmp eq ptr %.063, null
  br i1 %.not88, label %_ZN11btMultiBody21applyDeltaVeeMultiDofEPKff.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.lp = getelementptr inbounds nuw i8, ptr %i.au, i64 120
  invoke void @_ZN11btRigidBody12applyImpulseERK9btVector3S2_(ptr noundef nonnull align 8 dereferenceable(744) %.063, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %i.lp)
          to label %_ZN11btMultiBody21applyDeltaVeeMultiDofEPKff.exit unwind label %bb.aa

bb.x:                                             ; preds = %bb.u
  %i.lq = icmp eq i32 %i.ln, 64
  %i.lr = icmp ne ptr %.062, null
  %or.cond = and i1 %i.lr, %i.lq
  br i1 %or.cond, label %bb.y, label %_ZN11btMultiBody21applyDeltaVeeMultiDofEPKff.exit

bb.y:                                             ; preds = %bb.x
  %i.ls = getelementptr inbounds nuw i8, ptr %.062, i64 376
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !367 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.ks, %i.ks
  %i.lu = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.lv = extractelement <2 x float> %i.ks, i64 0 ; 2 uses
  %i.lw = call float @llvm.fmuladd.f32(float %i.lv, float %i.lv, float %i.lu)
  %i.lx = call noundef float @llvm.fmuladd.f32(float %i.ky, float %i.ky, float %i.lw)
  %sqrt.i = call noundef float @llvm.sqrt.f32(float %i.lx)
  %i.ly = fmul float %sqrt.i, -5.000000e-01       ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lt, i64 628
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !375 ; 2 uses
  %i.mb = icmp sgt i32 %i.ma, -6
  br i1 %i.mb, label %.lr.ph.i190, label %_ZN11btMultiBody21applyDeltaVeeMultiDofEPKff.exit

.lr.ph.i190:                                      ; preds = %bb.y
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lt, i64 288
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !161 ; 8 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.lt, i64 620 ; 3 uses
  %i.mf = add i32 %i.ma, 5                        ; 2 uses
  %smax.i = call i32 @llvm.smax.i32(i32 %i.mf, i32 0) ; 2 uses
  %i.mg = add nuw i32 %smax.i, 1
  %wide.trip.count.i191 = zext i32 %i.mg to i64   ; 3 uses
  %min.iters.check = icmp slt i32 %i.mf, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i190
  %scevgep281 = getelementptr i8, ptr %i.md, i64 4
  %i.mh = zext nneg i32 %smax.i to i64
  %i.mi = shl nuw nsw i64 %i.mh, 2                ; 2 uses
  %scevgep282 = getelementptr i8, ptr %scevgep281, i64 %i.mi ; 2 uses
  %scevgep283 = getelementptr i8, ptr %.061, i64 4
  %scevgep284 = getelementptr i8, ptr %scevgep283, i64 %i.mi
  %scevgep285 = getelementptr i8, ptr %i.lt, i64 624
  %bound0 = icmp ult ptr %i.md, %scevgep284
  %bound1 = icmp ult ptr %.061, %scevgep282
  %found.conflict = and i1 %bound0, %bound1
  %bound0286 = icmp ult ptr %i.md, %scevgep285
  %bound1287 = icmp ult ptr %i.me, %scevgep282
  %found.conflict288 = and i1 %bound0286, %bound1287
  %conflict.rdx = or i1 %found.conflict, %found.conflict288
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i191, 4294967292 ; 3 uses
  %i.mj = load float, ptr %i.me, align 4, !tbaa !1263, !alias.scope !1264
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.mj, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.mk = fneg <4 x float> %broadcast.splat       ; 2 uses
  %broadcast.splatinsert289 = insertelement <4 x float> poison, float %i.ly, i64 0
  %broadcast.splat290 = shufflevector <4 x float> %broadcast.splatinsert289, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue297, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue297 ] ; 6 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %.061, i64 %index
  %wide.load = load <4 x float>, ptr %i.ml, align 4, !tbaa !253, !alias.scope !1265
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %index ; 3 uses
  %wide.load291 = load <4 x float>, ptr %i.mm, align 4, !tbaa !253, !alias.scope !1266, !noalias !1267
  %i.mn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat290, <4 x float> %wide.load291) ; 3 uses
  store <4 x float> %i.mn, ptr %i.mm, align 4, !tbaa !253, !alias.scope !1266, !noalias !1267
  %i.mo = fcmp olt <4 x float> %i.mn, %i.mk       ; 2 uses
  %i.mp = fcmp olt <4 x float> %broadcast.splat, %i.mn
  %i.mq = or <4 x i1> %i.mo, %i.mp                ; 4 uses
  %predphi = select <4 x i1> %i.mo, <4 x float> %i.mk, <4 x float> %broadcast.splat ; 4 uses
  %i.mr = extractelement <4 x i1> %i.mq, i64 0
  br i1 %i.mr, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.ms = extractelement <4 x float> %predphi, i64 0
  store float %i.ms, ptr %i.mm, align 4, !tbaa !253, !alias.scope !1266, !noalias !1267
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.mt = extractelement <4 x i1> %i.mq, i64 1
  br i1 %i.mt, label %pred.store.if292, label %pred.store.continue293

pred.store.if292:                                 ; preds = %pred.store.continue
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %index
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 4
  %i.mw = extractelement <4 x float> %predphi, i64 1
  store float %i.mw, ptr %i.mv, align 4, !tbaa !253, !alias.scope !1266, !noalias !1267
  br label %pred.store.continue293

pred.store.continue293:                           ; preds = %pred.store.if292, %pred.store.continue
  %i.mx = extractelement <4 x i1> %i.mq, i64 2
  br i1 %i.mx, label %pred.store.if294, label %pred.store.continue295

pred.store.if294:                                 ; preds = %pred.store.continue293
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %index
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  %i.na = extractelement <4 x float> %predphi, i64 2
  store float %i.na, ptr %i.mz, align 4, !tbaa !253, !alias.scope !1266, !noalias !1267
  br label %pred.store.continue295

pred.store.continue295:                           ; preds = %pred.store.if294, %pred.store.continue293
  %i.nb = extractelement <4 x i1> %i.mq, i64 3
  br i1 %i.nb, label %pred.store.if296, label %pred.store.continue297

pred.store.if296:                                 ; preds = %pred.store.continue295
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %index
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 12
  %i.ne = extractelement <4 x float> %predphi, i64 3
  store float %i.ne, ptr %i.nd, align 4, !tbaa !253, !alias.scope !1266, !noalias !1267
  br label %pred.store.continue297

pred.store.continue297:                           ; preds = %pred.store.if296, %pred.store.continue295
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.nf = icmp eq i64 %index.next, %n.vec
  br i1 %i.nf, label %middle.block, label %vector.body, !llvm.loop !1260

middle.block:                                     ; preds = %pred.store.continue297
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i191
  br i1 %cmp.n, label %_ZN11btMultiBody21applyDeltaVeeMultiDofEPKff.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i190, %middle.block
  %indvars.iv.i192.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i190 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_Z7btClampIfEvRT_RKS0_S3_.exit.i
  %indvars.iv.i192 = phi i64 [ %indvars.iv.next.i193, %_Z7btClampIfEvRT_RKS0_S3_.exit.i ], [ %indvars.iv.i192.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %.061, i64 %indvars.iv.i192
  %i.nh = load float, ptr %i.ng, align 4, !tbaa !253
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %indvars.iv.i192 ; 3 uses
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !253
  %i.nk = call float @llvm.fmuladd.f32(float %i.nh, float %i.ly, float %i.nj) ; 3 uses
  store float %i.nk, ptr %i.ni, align 4, !tbaa !253
  %i.nl = load float, ptr %i.me, align 4, !tbaa !1263 ; 3 uses
  %i.nm = fneg float %i.nl                        ; 2 uses
  %i.nn = fcmp olt float %i.nk, %i.nm
  br i1 %i.nn, label %.sink.split.i.i, label %bb.z

bb.z:                                             ; preds = %scalar.ph
  %i.no = fcmp olt float %i.nl, %i.nk
  br i1 %i.no, label %.sink.split.i.i, label %_Z7btClampIfEvRT_RKS0_S3_.exit.i

.sink.split.i.i:                                  ; preds = %bb.z, %scalar.ph
  %.sink.i.i = phi float [ %i.nm, %scalar.ph ], [ %i.nl, %bb.z ]
  store float %.sink.i.i, ptr %i.ni, align 4, !tbaa !253
  br label %_Z7btClampIfEvRT_RKS0_S3_.exit.i

_Z7btClampIfEvRT_RKS0_S3_.exit.i:                 ; preds = %.sink.split.i.i, %bb.z
  %indvars.iv.next.i193 = add nuw nsw i64 %indvars.iv.i192, 1 ; 2 uses
  %exitcond.not.i194 = icmp eq i64 %indvars.iv.next.i193, %wide.trip.count.i191
  br i1 %exitcond.not.i194, label %_ZN11btMultiBody21applyDeltaVeeMultiDofEPKff.exit, label %scalar.ph, !llvm.loop !1261

bb.aa:                                            ; preds = %bb.w
  %i.np = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %bb.ab

_ZN11btMultiBody21applyDeltaVeeMultiDofEPKff.exit: ; preds = %_Z7btClampIfEvRT_RKS0_S3_.exit.i, %middle.block, %bb.y, %bb.x, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %bb.q
  %.pn89.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gi, %bb.q ], [ %i.np, %bb.aa ]
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %5) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  br label %bb.ad

bb.ac:                                            ; preds = %bb.t, %_ZN11btMultiBody21applyDeltaVeeMultiDofEPKff.exit, %bb.d
  %indvars.iv.next264 = add nuw nsw i64 %indvars.iv263, 1 ; 2 uses
  %exitcond267.not = icmp eq i64 %indvars.iv.next264, %wide.trip.count266
  br i1 %exitcond267.not, label %._crit_edge260, label %bb.d, !llvm.loop !1262

bb.ad:                                            ; preds = %bb.ab, %bb.c
  %.pn89.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn89.pn.pn.pn.pn.pn.pn, %bb.ab ], [ %i.as, %bb.c ]
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  resume { ptr, i32 } %.pn89.pn.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZNK11btMultiBody30calcAccelerationDeltasMultiDofEPKfPfR20btAlignedObjectArrayIfERS3_I9btVector3E(ptr noundef nonnull align 8 dereferenceable(640), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(25), ptr noundef nonnull align 8 dereferenceable(25)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10btSoftBody16PSolve_SContactsEPS_ff(ptr nofree noundef readonly captures(none) %0, float %1, float %2) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.CProfileSample, align 1      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull @.str.7)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1412
  %i.b = load i32, ptr %i.a, align 4, !tbaa !223  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !222
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.f = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %indvars.iv ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !1270 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1271 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !316  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !316  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !316  ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.u = load float, ptr %i.t, align 8, !tbaa !253 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 3 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !253
  %i.x = fmul float %i.u, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 2 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !253 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !253
  %i.ac = fmul float %i.z, %i.ab
  %i.ad = fadd float %i.x, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.af = load float, ptr %i.ae, align 8, !tbaa !253 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 3 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !253
  %i.ai = fmul float %i.af, %i.ah
  %i.aj = fadd float %i.ad, %i.ai                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.ao = load float, ptr %i.an, align 4, !tbaa !253
  %i.ap = fmul float %i.u, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !253
end_hunk_0
