Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/bgfg_gaussmix2?download=true
inline.NumInlined: 282
inline.NumDeleted: 153
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK2cv11MOG2InvokerclERKNS_5RangeE:bb.a
  br label %.lr.ph303

._crit_edge304:                                   ; preds = %_ZN2cvL15detectShadowGMMEPKfiiPKNS_3GMMES1_fff.exit.thread, %bb.o
  %indvars.iv.next360 = add nsw i64 %indvars.iv359, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next360 to i32
  %exitcond362.not = icmp eq i32 %i.d, %lftr.wideiv
  br i1 %exitcond362.not, label %._crit_edge307.loopexit, label %bb.d, !llvm.loop !143

.lr.ph303:                                        ; preds = %.lr.ph303.preheader, %_ZN2cvL15detectShadowGMMEPKfiiPKNS_3GMMES1_fff.exit.thread
  %indvars.iv354 = phi i64 [ 0, %.lr.ph303.preheader ], [ %indvars.iv.next355, %_ZN2cvL15detectShadowGMMEPKfiiPKNS_3GMMES1_fff.exit.thread ] ; 5 uses
  %.0213298 = phi ptr [ %i.cs, %.lr.ph303.preheader ], [ %i.oh, %_ZN2cvL15detectShadowGMMEPKfiiPKNS_3GMMES1_fff.exit.thread ] ; 18 uses
  %.0214296 = phi ptr [ %i.cx, %.lr.ph303.preheader ], [ %i.ok, %_ZN2cvL15detectShadowGMMEPKfiiPKNS_3GMMES1_fff.exit.thread ] ; 9 uses
  %.1224293 = phi ptr [ %.0223, %.lr.ph303.preheader ], [ %i.oe, %_ZN2cvL15detectShadowGMMEPKfiiPKNS_3GMMES1_fff.exit.thread ] ; 18 uses
  %.0214296411 = ptrtoaddr ptr %.0214296 to i64
  %i.cy = mul i64 %i.be, %indvars.iv354
  %i.cz = sub i64 %i.cy, %.0223412
  %i.da = load ptr, ptr %i.ak, align 8, !tbaa !144, !nonnull !61, !align !145
  %i.db = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %i.da)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %.lr.ph303
  br i1 %i.db, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dc = load ptr, ptr %i.ak, align 8, !tbaa !144, !nonnull !61, !align !145 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !96
  %i.df = icmp slt i32 %i.de, 2
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !50
  %i.di = getelementptr inbounds nuw i8, ptr %i.dc, i64 128
  %i.dj = load i64, ptr %i.di, align 8
  %i.dk = mul i64 %i.dj, %indvars.iv359
  %.sink.idx.i = select i1 %i.df, i64 0, i64 %i.dk
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.sink.idx.i
  %i.dl = getelementptr inbounds nuw i8, ptr %.sink.i, i64 %indvars.iv354
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !37
  %.not239 = icmp eq i8 %i.dm, 0
  br i1 %.not239, label %bb.s, label %_ZN2cvL15detectShadowGMMEPKfiiPKNS_3GMMES1_fff.exit.thread

bb.r:                                             ; preds = %.lr.ph303
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.do = getelementptr inbounds nuw i8, ptr %i.cf, i64 %indvars.iv354 ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !37  ; 2 uses
  %.not308 = icmp eq i8 %i.dp, 0
  br i1 %.not308, label %._crit_edge281.thread, label %.lr.ph273

.lr.ph273:                                        ; preds = %bb.s
  %i.dq = zext i8 %i.dp to i32
  %i.dr = getelementptr inbounds nuw i8, ptr %.1224293, i64 8
  %.pre = load float, ptr %i.al, align 8, !tbaa !81
  br label %bb.t

._crit_edge:                                      ; preds = %.loopexit252
  %i.ds = trunc nuw i8 %.2208 to i1
  %i.dt = call noundef float @llvm.fabs.f32(float %i.ie)
  %i.du = fcmp ogt float %i.dt, f0x34000000
  %i.dv = fdiv float 1.000000e+00, %i.ie
  %.0189 = select i1 %i.du, float %i.dv, float 0.000000e+00 ; 2 uses
  %i.dw = icmp sgt i32 %.1204, 0
  br i1 %i.dw, label %.lr.ph280.preheader, label %._crit_edge281

.lr.ph280.preheader:                              ; preds = %._crit_edge
  %wide.trip.count334 = zext nneg i32 %.1204 to i64 ; 3 uses
  %min.iters.check435 = icmp ult i32 %.1204, 5
  br i1 %min.iters.check435, label %.lr.ph280.preheader481, label %vector.ph436

.lr.ph280.preheader481:                           ; preds = %vector.body440, %.lr.ph280.preheader
  %indvars.iv331.ph = phi i64 [ 0, %.lr.ph280.preheader ], [ %n.vec437, %vector.body440 ]
  br label %.lr.ph280

vector.ph436:                                     ; preds = %.lr.ph280.preheader
  %i.dx = and i64 %wide.trip.count334, 3          ; 2 uses
  %i.dy = icmp eq i64 %i.dx, 0
  %i.dz = select i1 %i.dy, i64 4, i64 %i.dx
  %n.vec437 = sub nsw i64 %wide.trip.count334, %i.dz ; 2 uses
  %broadcast.splatinsert438 = insertelement <4 x float> poison, float %.0189, i64 0
  %broadcast.splat439 = shufflevector <4 x float> %broadcast.splatinsert438, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body440

vector.body440:                                   ; preds = %vector.body440, %vector.ph436
  %index441 = phi i64 [ 0, %vector.ph436 ], [ %index.next444, %vector.body440 ] ; 5 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %.0213298, i64 %index441 ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.0213298, i64 %index441
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.0213298, i64 %index441
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %.0213298, i64 %index441
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %wide.vec442 = load <8 x float>, ptr %i.ea, align 4, !tbaa !146
  %strided.vec443 = shufflevector <8 x float> %wide.vec442, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.eh = fmul <4 x float> %broadcast.splat439, %strided.vec443 ; 4 uses
  %i.ei = extractelement <4 x float> %i.eh, i64 0
  store float %i.ei, ptr %i.ea, align 4, !tbaa !146
  %i.ej = extractelement <4 x float> %i.eh, i64 1
  store float %i.ej, ptr %i.ec, align 4, !tbaa !146
  %i.ek = extractelement <4 x float> %i.eh, i64 2
  store float %i.ek, ptr %i.ee, align 4, !tbaa !146
  %i.el = extractelement <4 x float> %i.eh, i64 3
  store float %i.el, ptr %i.eg, align 4, !tbaa !146
  %index.next444 = add nuw i64 %index441, 4       ; 2 uses
  %i.em = icmp eq i64 %index.next444, %n.vec437
  br i1 %i.em, label %.lr.ph280.preheader481, label %vector.body440, !llvm.loop !148

bb.t:                                             ; preds = %.lr.ph273, %.loopexit252
  %i.en = phi float [ %.pre, %.lr.ph273 ], [ %i.hw, %.loopexit252 ]
  %indvars.iv325 = phi i64 [ 0, %.lr.ph273 ], [ %indvars.iv.next326, %.loopexit252 ] ; 7 uses
  %.0201270 = phi ptr [ %.0214296, %.lr.ph273 ], [ %i.if, %.loopexit252 ] ; 8 uses
  %.0202269 = phi float [ 0.000000e+00, %.lr.ph273 ], [ %i.ie, %.loopexit252 ] ; 2 uses
  %.0203268 = phi i32 [ %i.dq, %.lr.ph273 ], [ %.1204, %.loopexit252 ]
  %.0206267 = phi i8 [ 0, %.lr.ph273 ], [ %.2208, %.loopexit252 ]
  %.0209266 = phi i1 [ false, %.lr.ph273 ], [ %.2211, %.loopexit252 ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %.0213298, i64 %indvars.iv325 ; 2 uses
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !146
  %i.eq = call float @llvm.fmuladd.f32(float %i.x, float %i.ep, float %i.en) ; 3 uses
  %i.er = trunc nuw i8 %.0206267 to i1
  br i1 %i.er, label %.loopexit252, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 4 ; 2 uses
  %i.et = load float, ptr %i.es, align 4, !tbaa !151 ; 4 uses
  br i1 %i.am, label %bb.v, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.u
  br i1 %i.bi, label %.preheader.epil.preheader, label %.preheader

bb.v:                                             ; preds = %bb.u
  %i.eu = load <2 x float>, ptr %.0201270, align 4, !tbaa !77
  %i.ev = load <2 x float>, ptr %.1224293, align 4, !tbaa !77
  %i.ew = fsub <2 x float> %i.eu, %i.ev           ; 4 uses
  store <2 x float> %i.ew, ptr %i.a, align 16, !tbaa !77
  %i.ex = getelementptr inbounds nuw i8, ptr %.0201270, i64 8
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !77
  %i.ez = load float, ptr %i.dr, align 4, !tbaa !77
  %i.fa = fsub float %i.ey, %i.ez                 ; 3 uses
  store float %i.fa, ptr %i.an, align 8, !tbaa !77
  %foldExtExtBinop = fmul <2 x float> %i.ew, %i.ew
  %i.fb = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.fc = extractelement <2 x float> %i.ew, i64 0 ; 2 uses
  %i.fd = call float @llvm.fmuladd.f32(float %i.fc, float %i.fc, float %i.fb)
  %i.fe = call float @llvm.fmuladd.f32(float %i.fa, float %i.fa, float %i.fd)
  br label %.loopexit253

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader ], [ 0, %.preheader.preheader ] ; 5 uses
  %.0194258 = phi float [ %i.fs, %.preheader ], [ 0.000000e+00, %.preheader.preheader ]
  %niter = phi i64 [ %niter.next.1, %.preheader ], [ 0, %.preheader.preheader ]
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %.0201270, i64 %indvars.iv
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !77
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.1224293, i64 %indvars.iv
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !77
  %i.fj = fsub float %i.fg, %i.fi                 ; 3 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store float %i.fj, ptr %i.fk, align 8, !tbaa !77
  %i.fl = call float @llvm.fmuladd.f32(float %i.fj, float %i.fj, float %.0194258)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.0201270, i64 %indvars.iv.next
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !77
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.1224293, i64 %indvars.iv.next
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !77
  %i.fq = fsub float %i.fn, %i.fp                 ; 3 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next
  store float %i.fq, ptr %i.fr, align 4, !tbaa !77
  %i.fs = call float @llvm.fmuladd.f32(float %i.fq, float %i.fq, float %i.fl) ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit253.loopexit.unr-lcssa, label %.preheader, !llvm.loop !152

.loopexit253.loopexit.unr-lcssa:                  ; preds = %.preheader
  br i1 %lcmp.mod.not, label %.loopexit253, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.loopexit253.loopexit.unr-lcssa, %.preheader.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next.1, %.loopexit253.loopexit.unr-lcssa ] ; 3 uses
  %.0194258.epil.init = phi float [ 0.000000e+00, %.preheader.preheader ], [ %i.fs, %.loopexit253.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod487)
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.0201270, i64 %indvars.iv.epil.init
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !77
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.1224293, i64 %indvars.iv.epil.init
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !77
  %i.fx = fsub float %i.fu, %i.fw                 ; 3 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  store float %i.fx, ptr %i.fy, align 4, !tbaa !77
  %i.fz = call float @llvm.fmuladd.f32(float %i.fx, float %i.fx, float %.0194258.epil.init)
  br label %.loopexit253

.loopexit253:                                     ; preds = %.preheader.epil.preheader, %.loopexit253.loopexit.unr-lcssa, %bb.v
  %.1 = phi float [ %i.fe, %bb.v ], [ %i.fs, %.loopexit253.loopexit.unr-lcssa ], [ %i.fz, %.preheader.epil.preheader ] ; 3 uses
  %i.ga = load float, ptr %i.ao, align 4, !tbaa !153
  %i.gb = fcmp olt float %.0202269, %i.ga
  br i1 %i.gb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.loopexit253
  %i.gc = load float, ptr %i.ap, align 8, !tbaa !154
  %i.gd = fmul float %i.et, %i.gc
  %i.ge = fcmp olt float %.1, %i.gd
  %spec.select = select i1 %i.ge, i1 true, i1 %.0209266
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.loopexit253
  %.1210 = phi i1 [ %.0209266, %.loopexit253 ], [ %spec.select, %bb.w ] ; 4 uses
  %i.gf = load float, ptr %i.aq, align 8, !tbaa !155
  %i.gg = fmul float %i.et, %i.gf
  %i.gh = fcmp olt float %.1, %i.gg
  br i1 %i.gh, label %bb.y, label %.loopexit252

bb.y:                                             ; preds = %bb.x
  %i.gi = load float, ptr %i.v, align 4, !tbaa !138 ; 2 uses
  %i.gj = fadd float %i.eq, %i.gi                 ; 5 uses
  %i.gk = fdiv float %i.gi, %i.gj                 ; 2 uses
  %i.gl = fneg float %i.gk                        ; 2 uses
  br i1 %min.iters.check462, label %scalar.ph461.preheader, label %vector.ph463

vector.ph463:                                     ; preds = %bb.y
  %broadcast.splatinsert465 = insertelement <4 x float> poison, float %i.gl, i64 0
  %broadcast.splat466 = shufflevector <4 x float> %broadcast.splatinsert465, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body467

vector.body467:                                   ; preds = %vector.body467, %vector.ph463
  %index468 = phi i64 [ 0, %vector.ph463 ], [ %index.next473, %vector.body467 ] ; 3 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index468 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %wide.load469 = load <4 x float>, ptr %i.gm, align 16, !tbaa !77
  %wide.load470 = load <4 x float>, ptr %i.gn, align 16, !tbaa !77
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.0201270, i64 %index468 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16 ; 2 uses
  %wide.load471 = load <4 x float>, ptr %i.go, align 4, !tbaa !77
  %wide.load472 = load <4 x float>, ptr %i.gp, align 4, !tbaa !77
  %i.gq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat466, <4 x float> %wide.load469, <4 x float> %wide.load471)
  %i.gr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat466, <4 x float> %wide.load470, <4 x float> %wide.load472)
  store <4 x float> %i.gq, ptr %i.go, align 4, !tbaa !77
  store <4 x float> %i.gr, ptr %i.gp, align 4, !tbaa !77
  %index.next473 = add nuw i64 %index468, 8       ; 2 uses
  %i.gs = icmp eq i64 %index.next473, %n.vec464
  br i1 %i.gs, label %middle.block474, label %vector.body467, !llvm.loop !156

middle.block474:                                  ; preds = %vector.body467
  br i1 %cmp.n475, label %.loopexit477, label %scalar.ph461.preheader

scalar.ph461.preheader:                           ; preds = %bb.y, %middle.block474
  %indvars.iv315.ph = phi i64 [ 0, %bb.y ], [ %n.vec464, %middle.block474 ]
  br label %scalar.ph461

.loopexit477:                                     ; preds = %scalar.ph461, %middle.block474
  %i.gt = fsub float %.1, %i.et
  %i.gu = call float @llvm.fmuladd.f32(float %i.gk, float %i.gt, float %i.et) ; 2 uses
  %i.gv = load float, ptr %i.ar, align 8, !tbaa !79 ; 2 uses
  %i.gw = fcmp olt float %i.gu, %i.gv
  %. = select i1 %i.gw, float %i.gv, float %i.gu  ; 2 uses
  %i.gx = load float, ptr %i.as, align 4, !tbaa !80 ; 2 uses
  %i.gy = fcmp ogt float %., %i.gx
  %i.gz = select i1 %i.gy, float %i.gx, float %.
  store float %i.gz, ptr %i.es, align 4, !tbaa !151
  %.not309 = icmp eq i64 %indvars.iv325, 0
  br i1 %.not309, label %.loopexit252, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.loopexit477
  %i.ha = trunc nuw nsw i64 %indvars.iv325 to i32
  br label %.lr.ph

scalar.ph461:                                     ; preds = %scalar.ph461.preheader, %scalar.ph461
  %indvars.iv315 = phi i64 [ %indvars.iv.next316, %scalar.ph461 ], [ %indvars.iv315.ph, %scalar.ph461.preheader ] ; 3 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv315
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !77
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.0201270, i64 %indvars.iv315 ; 2 uses
  %i.he = load float, ptr %i.hd, align 4, !tbaa !77
  %i.hf = call float @llvm.fmuladd.f32(float %i.gl, float %i.hc, float %i.he)
  store float %i.hf, ptr %i.hd, align 4, !tbaa !77
  %indvars.iv.next316 = add nuw nsw i64 %indvars.iv315, 1 ; 2 uses
  %exitcond319.not = icmp eq i64 %indvars.iv.next316, %i.at
  br i1 %exitcond319.not, label %.loopexit477, label %scalar.ph461, !llvm.loop !157

.loopexit:                                        ; preds = %scalar.ph447, %middle.block458
  %i.hg = add nuw nsw i32 %.0195262, 1            ; 2 uses
  %i.hh = zext nneg i32 %i.hg to i64
  %exitcond330.not = icmp eq i64 %indvars.iv325, %i.hh
  br i1 %exitcond330.not, label %.loopexit252, label %.lr.ph, !llvm.loop !158

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit
  %indvars.iv327 = phi i64 [ %indvars.iv325, %.lr.ph.preheader ], [ %indvars.iv.next328, %.loopexit ] ; 2 uses
  %.0195262 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.hg, %.loopexit ] ; 2 uses
  %indvars.iv.next328 = add nsw i64 %indvars.iv327, -1 ; 3 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %.0213298, i64 %indvars.iv.next328 ; 3 uses
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !146
  %i.hk = fcmp olt float %i.gj, %i.hj
  br i1 %i.hk, label %.loopexit252, label %bb.z

bb.z:                                             ; preds = %.lr.ph
  %i.hl = load <2 x i64>, ptr %i.hi, align 4
  %i.hm = shufflevector <2 x i64> %i.hl, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.hm, ptr %i.hi, align 4
  %i.hn = mul nuw nsw i64 %indvars.iv327, %i.ay
  %i.ho = mul nsw i64 %indvars.iv.next328, %i.ay
  %invariant.gep = getelementptr [4 x i8], ptr %.0214296, i64 %i.hn ; 2 uses
  %invariant.gep395 = getelementptr [4 x i8], ptr %.0214296, i64 %i.ho ; 2 uses
  br i1 %min.iters.check448, label %scalar.ph447.preheader, label %vector.body451

vector.body451:                                   ; preds = %bb.z, %vector.body451
  %index452 = phi i64 [ %index.next457, %vector.body451 ], [ 0, %bb.z ] ; 3 uses
  %i.hp = getelementptr [4 x i8], ptr %invariant.gep, i64 %index452 ; 3 uses
  %i.hq = getelementptr [4 x i8], ptr %invariant.gep395, i64 %index452 ; 3 uses
  %i.hr = getelementptr i8, ptr %i.hp, i64 16     ; 2 uses
  %wide.load453 = load <4 x float>, ptr %i.hp, align 4, !tbaa !77
  %wide.load454 = load <4 x float>, ptr %i.hr, align 4, !tbaa !77
  %i.hs = getelementptr i8, ptr %i.hq, i64 16     ; 2 uses
  %wide.load455 = load <4 x float>, ptr %i.hq, align 4, !tbaa !77
  %wide.load456 = load <4 x float>, ptr %i.hs, align 4, !tbaa !77
  store <4 x float> %wide.load455, ptr %i.hp, align 4, !tbaa !77
  store <4 x float> %wide.load456, ptr %i.hr, align 4, !tbaa !77
  store <4 x float> %wide.load453, ptr %i.hq, align 4, !tbaa !77
  store <4 x float> %wide.load454, ptr %i.hs, align 4, !tbaa !77
  %index.next457 = add nuw i64 %index452, 8       ; 2 uses
  %i.ht = icmp eq i64 %index.next457, %n.vec450
  br i1 %i.ht, label %middle.block458, label %vector.body451, !llvm.loop !159

middle.block458:                                  ; preds = %vector.body451
  br i1 %cmp.n459, label %.loopexit, label %scalar.ph447.preheader

scalar.ph447.preheader:                           ; preds = %bb.z, %middle.block458
  %indvars.iv320.ph = phi i64 [ 0, %bb.z ], [ %n.vec450, %middle.block458 ]
  br label %scalar.ph447

scalar.ph447:                                     ; preds = %scalar.ph447.preheader, %scalar.ph447
  %indvars.iv320 = phi i64 [ %indvars.iv.next321, %scalar.ph447 ], [ %indvars.iv320.ph, %scalar.ph447.preheader ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv320 ; 2 uses
  %gep396 = getelementptr [4 x i8], ptr %invariant.gep395, i64 %indvars.iv320 ; 2 uses
  %i.hu = load float, ptr %gep, align 4, !tbaa !77
  %i.hv = load float, ptr %gep396, align 4, !tbaa !77
  store float %i.hv, ptr %gep, align 4, !tbaa !77
  store float %i.hu, ptr %gep396, align 4, !tbaa !77
  %indvars.iv.next321 = add nuw nsw i64 %indvars.iv320, 1 ; 2 uses
  %exitcond324.not = icmp eq i64 %indvars.iv.next321, %i.at
  br i1 %exitcond324.not, label %.loopexit, label %scalar.ph447, !llvm.loop !160

.loopexit252:                                     ; preds = %.loopexit, %.lr.ph, %.loopexit477, %bb.x, %bb.t
  %.2211 = phi i1 [ %.0209266, %bb.t ], [ %.1210, %bb.x ], [ %.1210, %.loopexit477 ], [ %.1210, %.lr.ph ], [ %.1210, %.loopexit ] ; 3 uses
  %.2208 = phi i8 [ 1, %bb.t ], [ 0, %bb.x ], [ 1, %.loopexit477 ], [ 1, %.lr.ph ], [ 1, %.loopexit ] ; 2 uses
  %.1198 = phi float [ %i.eq, %bb.t ], [ %i.eq, %bb.x ], [ %i.gj, %.loopexit477 ], [ %i.gj, %.lr.ph ], [ %i.gj, %.loopexit ] ; 2 uses
  %.2 = phi i32 [ 0, %bb.t ], [ 0, %bb.x ], [ 0, %.loopexit477 ], [ %i.ha, %.loopexit ], [ %.0195262, %.lr.ph ]
  %i.hw = load float, ptr %i.al, align 8, !tbaa !81 ; 2 uses
  %i.hx = fneg float %i.hw
  %i.hy = fcmp olt float %.1198, %i.hx            ; 2 uses
  %i.hz = sext i1 %i.hy to i32
  %.1204 = add nsw i32 %.0203268, %i.hz           ; 7 uses
  %.2199 = select i1 %i.hy, float 0.000000e+00, float %.1198 ; 2 uses
  %i.ia = trunc nuw nsw i64 %indvars.iv325 to i32
  %i.ib = sub nsw i32 %i.ia, %.2
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr inbounds [8 x i8], ptr %.0213298, i64 %i.ic
  store float %.2199, ptr %i.id, align 4, !tbaa !146
  %i.ie = fadd float %.0202269, %.2199            ; 3 uses
  %indvars.iv.next326 = add nuw nsw i64 %indvars.iv325, 1 ; 2 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %.0201270, i64 %i.at
  %i.ig = sext i32 %.1204 to i64
  %i.ih = icmp slt i64 %indvars.iv.next326, %i.ig
  br i1 %i.ih, label %bb.t, label %._crit_edge, !llvm.loop !161

._crit_edge281:                                   ; preds = %.lr.ph280, %._crit_edge
  br i1 %i.ds, label %.loopexit254, label %._crit_edge281.thread

.lr.ph280:                                        ; preds = %.lr.ph280.preheader481, %.lr.ph280
  %indvars.iv331 = phi i64 [ %indvars.iv.next332, %.lr.ph280 ], [ %indvars.iv331.ph, %.lr.ph280.preheader481 ] ; 2 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %.0213298, i64 %indvars.iv331 ; 2 uses
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !146
  %i.ik = fmul float %.0189, %i.ij
  store float %i.ik, ptr %i.ii, align 4, !tbaa !146
  %indvars.iv.next332 = add nuw nsw i64 %indvars.iv331, 1 ; 2 uses
  %exitcond335.not = icmp eq i64 %indvars.iv.next332, %wide.trip.count334
  br i1 %exitcond335.not, label %._crit_edge281, label %.lr.ph280, !llvm.loop !162

._crit_edge281.thread:                            ; preds = %bb.s, %._crit_edge281
  %.0209.lcssa382389 = phi i1 [ %.2211, %._crit_edge281 ], [ false, %bb.s ] ; 4 uses
  %.0203.lcssa384388 = phi i32 [ %.1204, %._crit_edge281 ], [ 0, %bb.s ] ; 5 uses
  %i.il = load float, ptr %i.v, align 4, !tbaa !138 ; 2 uses
  %i.im = fcmp ogt float %i.il, 0.000000e+00
  br i1 %i.im, label %bb.aa, label %.loopexit254

bb.aa:                                            ; preds = %._crit_edge281.thread
  %i.in = load i32, ptr %i.af, align 8, !tbaa !76 ; 2 uses
  %i.io = icmp ne i32 %.0203.lcssa384388, %i.in   ; 3 uses
  %i.ip = add nsw i32 %i.in, -1
  %i.iq = zext i1 %i.io to i32
  %.2205 = add nsw i32 %.0203.lcssa384388, %i.iq  ; 8 uses
  %i.ir = select i1 %i.io, i32 %.0203.lcssa384388, i32 %i.ip ; 3 uses
  %i.is = icmp eq i32 %.2205, 1
  %i.it = sext i32 %i.ir to i64
  %i.iu = getelementptr inbounds [8 x i8], ptr %.0213298, i64 %i.it ; 2 uses
  br i1 %i.is, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store float 1.000000e+00, ptr %i.iu, align 4, !tbaa !146
  br label %.loopexit255

bb.ac:                                            ; preds = %bb.aa
  store float %i.il, ptr %i.iu, align 4, !tbaa !146
  %i.iv = icmp sgt i32 %.2205, 1
  br i1 %i.iv, label %.lr.ph284.preheader, label %.loopexit255

.lr.ph284.preheader:                              ; preds = %bb.ac
  %i.iw = add nsw i32 %.2205, -1
  %wide.trip.count339 = zext nneg i32 %i.iw to i64 ; 3 uses
end_hunk_0
