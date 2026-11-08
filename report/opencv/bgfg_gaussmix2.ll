Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/bgfg_gaussmix2?download=true
inline.NumInlined: 282
inline.NumDeleted: 153
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK2cv11MOG2InvokerclERKNS_5RangeE:bb.a
._crit_edge304:                                   ; preds = %_ZN2cvL15detectShadowGMMEPKfiiPKNS_3GMMES1_fff.exit.thread, %bb.o
  %indvars.iv.next360 = add nsw i64 %indvars.iv359, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next360 to i32
  %exitcond362.not = icmp eq i32 %i.d, %lftr.wideiv
  br i1 %exitcond362.not, label %._crit_edge307.loopexit, label %bb.d, !llvm.loop !137

.lr.ph303:                                        ; preds = %.lr.ph303.preheader, %_ZN2cvL15detectShadowGMMEPKfiiPKNS_3GMMES1_fff.exit.thread
  %indvars.iv354 = phi i64 [ 0, %.lr.ph303.preheader ], [ %indvars.iv.next355, %_ZN2cvL15detectShadowGMMEPKfiiPKNS_3GMMES1_fff.exit.thread ] ; 5 uses
  %.0213298 = phi ptr [ %i.cs, %.lr.ph303.preheader ], [ %i.oe, %_ZN2cvL15detectShadowGMMEPKfiiPKNS_3GMMES1_fff.exit.thread ] ; 18 uses
  %.0214296 = phi ptr [ %i.cx, %.lr.ph303.preheader ], [ %i.oh, %_ZN2cvL15detectShadowGMMEPKfiiPKNS_3GMMES1_fff.exit.thread ] ; 9 uses
  %.1224293 = phi ptr [ %.0223, %.lr.ph303.preheader ], [ %i.ob, %_ZN2cvL15detectShadowGMMEPKfiiPKNS_3GMMES1_fff.exit.thread ] ; 18 uses
  %.0214296413 = ptrtoaddr ptr %.0214296 to i64
  %i.cy = load ptr, ptr %i.ak, align 8, !tbaa !165, !nonnull !51, !align !166
  %i.cz = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %i.cy)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %.lr.ph303
  br i1 %i.cz, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.da = load ptr, ptr %i.ak, align 8, !tbaa !165, !nonnull !51, !align !166 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !84
  %i.dd = icmp slt i32 %i.dc, 2
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !40
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 128
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = mul i64 %i.dh, %indvars.iv359
  %.sink.idx.i = select i1 %i.dd, i64 0, i64 %i.di
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.df, i64 %.sink.idx.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.sink.i, i64 %indvars.iv354
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !33
  %.not239 = icmp eq i8 %i.dk, 0
  br i1 %.not239, label %bb.s, label %_ZN2cvL15detectShadowGMMEPKfiiPKNS_3GMMES1_fff.exit.thread

bb.r:                                             ; preds = %.lr.ph303
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cf, i64 %indvars.iv354 ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !33  ; 2 uses
  %.not308 = icmp eq i8 %i.dn, 0
  br i1 %.not308, label %._crit_edge281.thread, label %.lr.ph273

.lr.ph273:                                        ; preds = %bb.s
  %i.do = zext i8 %i.dn to i32
  %i.dp = getelementptr inbounds nuw i8, ptr %.1224293, i64 8
  %.pre = load float, ptr %i.al, align 8, !tbaa !70
  br label %bb.t

._crit_edge:                                      ; preds = %.loopexit252
  %i.dq = trunc nuw i8 %.2208 to i1
  %i.dr = call noundef float @llvm.fabs.f32(float %i.hz)
  %i.ds = fcmp ogt float %i.dr, f0x34000000
  %i.dt = fdiv float 1.000000e+00, %i.hz
  %.0189 = select i1 %i.ds, float %i.dt, float 0.000000e+00 ; 2 uses
  %i.du = icmp sgt i32 %.1204, 0
  br i1 %i.du, label %.lr.ph280.preheader, label %._crit_edge281

.lr.ph280.preheader:                              ; preds = %._crit_edge
  %wide.trip.count334 = zext nneg i32 %.1204 to i64 ; 3 uses
  %min.iters.check437 = icmp ult i32 %.1204, 5
  br i1 %min.iters.check437, label %.lr.ph280.preheader483, label %vector.ph438

.lr.ph280.preheader483:                           ; preds = %vector.body442, %.lr.ph280.preheader
  %indvars.iv331.ph = phi i64 [ 0, %.lr.ph280.preheader ], [ %n.vec439, %vector.body442 ]
  br label %.lr.ph280

vector.ph438:                                     ; preds = %.lr.ph280.preheader
  %i.dv = and i64 %wide.trip.count334, 3          ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 0
  %i.dx = select i1 %i.dw, i64 4, i64 %i.dv
  %n.vec439 = sub nsw i64 %wide.trip.count334, %i.dx ; 2 uses
  %broadcast.splatinsert440 = insertelement <4 x float> poison, float %.0189, i64 0
  %broadcast.splat441 = shufflevector <4 x float> %broadcast.splatinsert440, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body442

vector.body442:                                   ; preds = %vector.body442, %vector.ph438
  %index443 = phi i64 [ 0, %vector.ph438 ], [ %index.next446, %vector.body442 ] ; 5 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %.0213298, i64 %index443 ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.0213298, i64 %index443
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.0213298, i64 %index443
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.0213298, i64 %index443
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %wide.vec444 = load <8 x float>, ptr %i.dy, align 4, !tbaa !168
  %strided.vec445 = shufflevector <8 x float> %wide.vec444, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ef = fmul <4 x float> %broadcast.splat441, %strided.vec445 ; 4 uses
  %i.eg = extractelement <4 x float> %i.ef, i64 0
  store float %i.eg, ptr %i.dy, align 4, !tbaa !168
  %i.eh = extractelement <4 x float> %i.ef, i64 1
  store float %i.eh, ptr %i.ea, align 4, !tbaa !168
  %i.ei = extractelement <4 x float> %i.ef, i64 2
  store float %i.ei, ptr %i.ec, align 4, !tbaa !168
  %i.ej = extractelement <4 x float> %i.ef, i64 3
  store float %i.ej, ptr %i.ee, align 4, !tbaa !168
  %index.next446 = add nuw i64 %index443, 4       ; 2 uses
  %i.ek = icmp eq i64 %index.next446, %n.vec439
  br i1 %i.ek, label %.lr.ph280.preheader483, label %vector.body442, !llvm.loop !138

bb.t:                                             ; preds = %.lr.ph273, %.loopexit252
  %i.el = phi float [ %.pre, %.lr.ph273 ], [ %i.hu, %.loopexit252 ]
  %indvars.iv325.a = phi i64 [ 0, %.lr.ph273 ], [ %indvars.iv.next326, %.loopexit252 ] ; 7 uses
  %.0201270 = phi ptr [ %.0214296, %.lr.ph273 ], [ %i.ia, %.loopexit252 ] ; 8 uses
  %.0202269 = phi float [ 0.000000e+00, %.lr.ph273 ], [ %i.hz, %.loopexit252 ] ; 2 uses
  %.0203268 = phi i32 [ %i.do, %.lr.ph273 ], [ %.1204, %.loopexit252 ]
  %.0206267 = phi i8 [ 0, %.lr.ph273 ], [ %.2208, %.loopexit252 ]
  %.0209266 = phi i1 [ false, %.lr.ph273 ], [ %.2211, %.loopexit252 ] ; 3 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %.0213298, i64 %indvars.iv325.a ; 2 uses
  %i.en = load float, ptr %i.em, align 4, !tbaa !168
  %i.eo = call float @llvm.fmuladd.f32(float %i.x, float %i.en, float %i.el) ; 3 uses
  %i.ep = trunc nuw i8 %.0206267 to i1
  br i1 %i.ep, label %.loopexit252, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 4 ; 2 uses
  %i.er = load float, ptr %i.eq, align 4, !tbaa !171 ; 4 uses
  br i1 %i.am, label %bb.v, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.u
  br i1 %i.bi, label %.preheader.epil.preheader, label %.preheader

bb.v:                                             ; preds = %bb.u
  %i.es = load <2 x float>, ptr %.0201270, align 4, !tbaa !66
  %i.et = load <2 x float>, ptr %.1224293, align 4, !tbaa !66
  %i.eu = fsub <2 x float> %i.es, %i.et           ; 4 uses
  store <2 x float> %i.eu, ptr %i.a, align 16, !tbaa !66
  %i.ev = getelementptr inbounds nuw i8, ptr %.0201270, i64 8
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !66
  %i.ex = load float, ptr %i.dp, align 4, !tbaa !66
  %i.ey = fsub float %i.ew, %i.ex                 ; 3 uses
  store float %i.ey, ptr %i.an, align 8, !tbaa !66
  %foldExtExtBinop = fmul <2 x float> %i.eu, %i.eu
  %i.ez = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.fa = extractelement <2 x float> %i.eu, i64 0 ; 2 uses
  %i.fb = call float @llvm.fmuladd.f32(float %i.fa, float %i.fa, float %i.ez)
  %i.fc = call float @llvm.fmuladd.f32(float %i.ey, float %i.ey, float %i.fb)
  br label %.loopexit253

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader ], [ 0, %.preheader.preheader ] ; 5 uses
  %.0194258 = phi float [ %i.fq, %.preheader ], [ 0.000000e+00, %.preheader.preheader ]
  %niter = phi i64 [ %niter.next.1, %.preheader ], [ 0, %.preheader.preheader ]
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.0201270, i64 %indvars.iv
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !66
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %.1224293, i64 %indvars.iv
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !66
  %i.fh = fsub float %i.fe, %i.fg                 ; 3 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store float %i.fh, ptr %i.fi, align 8, !tbaa !66
  %i.fj = call float @llvm.fmuladd.f32(float %i.fh, float %i.fh, float %.0194258)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.0201270, i64 %indvars.iv.next
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !66
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.1224293, i64 %indvars.iv.next
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !66
  %i.fo = fsub float %i.fl, %i.fn                 ; 3 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next
  store float %i.fo, ptr %i.fp, align 4, !tbaa !66
  %i.fq = call float @llvm.fmuladd.f32(float %i.fo, float %i.fo, float %i.fj) ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit253.loopexit.unr-lcssa, label %.preheader, !llvm.loop !139

.loopexit253.loopexit.unr-lcssa:                  ; preds = %.preheader
  br i1 %lcmp.mod.not, label %.loopexit253, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.loopexit253.loopexit.unr-lcssa, %.preheader.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next.1, %.loopexit253.loopexit.unr-lcssa ] ; 3 uses
  %.0194258.epil.init = phi float [ 0.000000e+00, %.preheader.preheader ], [ %i.fq, %.loopexit253.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod489)
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.0201270, i64 %indvars.iv.epil.init
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !66
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.1224293, i64 %indvars.iv.epil.init
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !66
  %i.fv = fsub float %i.fs, %i.fu                 ; 3 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  store float %i.fv, ptr %i.fw, align 4, !tbaa !66
  %i.fx = call float @llvm.fmuladd.f32(float %i.fv, float %i.fv, float %.0194258.epil.init)
  br label %.loopexit253

.loopexit253:                                     ; preds = %.preheader.epil.preheader, %.loopexit253.loopexit.unr-lcssa, %bb.v
  %.1 = phi float [ %i.fc, %bb.v ], [ %i.fq, %.loopexit253.loopexit.unr-lcssa ], [ %i.fx, %.preheader.epil.preheader ] ; 3 uses
  %i.fy = load float, ptr %i.ao, align 4, !tbaa !172
  %i.fz = fcmp olt float %.0202269, %i.fy
  br i1 %i.fz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.loopexit253
  %i.ga = load float, ptr %i.ap, align 8, !tbaa !173
  %i.gb = fmul float %i.er, %i.ga
  %i.gc = fcmp olt float %.1, %i.gb
  %spec.select = select i1 %i.gc, i1 true, i1 %.0209266
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.loopexit253
  %.1210 = phi i1 [ %.0209266, %.loopexit253 ], [ %spec.select, %bb.w ] ; 3 uses
  %i.gd = load float, ptr %i.aq, align 8, !tbaa !174
  %i.ge = fmul float %i.er, %i.gd
  %i.gf = fcmp olt float %.1, %i.ge
  br i1 %i.gf, label %bb.y, label %.loopexit252

bb.y:                                             ; preds = %bb.x
  %i.gg = load float, ptr %i.v, align 4, !tbaa !162 ; 2 uses
  %i.gh = fadd float %i.eo, %i.gg                 ; 4 uses
  %i.gi = fdiv float %i.gg, %i.gh                 ; 2 uses
  %i.gj = fneg float %i.gi                        ; 2 uses
  br i1 %min.iters.check464, label %scalar.ph463.preheader, label %vector.ph465

vector.ph465:                                     ; preds = %bb.y
  %broadcast.splatinsert467 = insertelement <4 x float> poison, float %i.gj, i64 0
  %broadcast.splat468 = shufflevector <4 x float> %broadcast.splatinsert467, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body469

vector.body469:                                   ; preds = %vector.body469, %vector.ph465
  %index470 = phi i64 [ 0, %vector.ph465 ], [ %index.next475, %vector.body469 ] ; 3 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index470 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %wide.load471 = load <4 x float>, ptr %i.gk, align 16, !tbaa !66
  %wide.load472 = load <4 x float>, ptr %i.gl, align 16, !tbaa !66
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.0201270, i64 %index470 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16 ; 2 uses
  %wide.load473 = load <4 x float>, ptr %i.gm, align 4, !tbaa !66
  %wide.load474 = load <4 x float>, ptr %i.gn, align 4, !tbaa !66
  %i.go = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat468, <4 x float> %wide.load471, <4 x float> %wide.load473)
  %i.gp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat468, <4 x float> %wide.load472, <4 x float> %wide.load474)
  store <4 x float> %i.go, ptr %i.gm, align 4, !tbaa !66
  store <4 x float> %i.gp, ptr %i.gn, align 4, !tbaa !66
  %index.next475 = add nuw i64 %index470, 8       ; 2 uses
  %i.gq = icmp eq i64 %index.next475, %n.vec466
  br i1 %i.gq, label %middle.block476, label %vector.body469, !llvm.loop !140

middle.block476:                                  ; preds = %vector.body469
  br i1 %cmp.n477, label %.loopexit479, label %scalar.ph463.preheader

scalar.ph463.preheader:                           ; preds = %bb.y, %middle.block476
  %indvars.iv315.ph = phi i64 [ 0, %bb.y ], [ %n.vec466, %middle.block476 ]
  br label %scalar.ph463

.loopexit479:                                     ; preds = %scalar.ph463, %middle.block476
  %i.gr = fsub float %.1, %i.er
  %i.gs = call float @llvm.fmuladd.f32(float %i.gi, float %i.gr, float %i.er) ; 2 uses
  %i.gt = load float, ptr %i.ar, align 8, !tbaa !68 ; 2 uses
  %i.gu = fcmp olt float %i.gs, %i.gt
  %. = select i1 %i.gu, float %i.gt, float %i.gs  ; 2 uses
  %i.gv = load float, ptr %i.as, align 4, !tbaa !69 ; 2 uses
  %i.gw = fcmp ogt float %., %i.gv
  %i.gx = select i1 %i.gw, float %i.gv, float %.
  store float %i.gx, ptr %i.eq, align 4, !tbaa !171
  %.not309 = icmp eq i64 %indvars.iv325.a, 0
  br i1 %.not309, label %.loopexit252, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.loopexit479
  %i.gy = trunc nuw nsw i64 %indvars.iv325.a to i32
  br label %.lr.ph

scalar.ph463:                                     ; preds = %scalar.ph463.preheader, %scalar.ph463
  %indvars.iv315 = phi i64 [ %indvars.iv.next316, %scalar.ph463 ], [ %indvars.iv315.ph, %scalar.ph463.preheader ] ; 3 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv315
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !66
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %.0201270, i64 %indvars.iv315 ; 2 uses
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !66
  %i.hd = call float @llvm.fmuladd.f32(float %i.gj, float %i.ha, float %i.hc)
  store float %i.hd, ptr %i.hb, align 4, !tbaa !66
  %indvars.iv.next316 = add nuw nsw i64 %indvars.iv315, 1 ; 2 uses
  %exitcond319.not = icmp eq i64 %indvars.iv.next316, %i.at
  br i1 %exitcond319.not, label %.loopexit479, label %scalar.ph463, !llvm.loop !141

.loopexit:                                        ; preds = %scalar.ph449, %middle.block460
  %i.he = add nuw nsw i32 %.0195262, 1            ; 2 uses
  %i.hf = zext nneg i32 %i.he to i64
  %exitcond330.not = icmp eq i64 %indvars.iv325.a, %i.hf
  br i1 %exitcond330.not, label %.loopexit252.loopexit, label %.lr.ph, !llvm.loop !142

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit
  %indvars.iv327 = phi i64 [ %indvars.iv325.a, %.lr.ph.preheader ], [ %indvars.iv.next328, %.loopexit ] ; 2 uses
  %.0195262 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.he, %.loopexit ] ; 2 uses
  %indvars.iv.next328 = add nsw i64 %indvars.iv327, -1 ; 3 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %.0213298, i64 %indvars.iv.next328 ; 3 uses
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !168
  %i.hi = fcmp olt float %i.gh, %i.hh
  br i1 %i.hi, label %.loopexit252.loopexit, label %bb.z

bb.z:                                             ; preds = %.lr.ph
  %i.hj = load <2 x i64>, ptr %i.hg, align 4, !tbaa !66
  %i.hk = shufflevector <2 x i64> %i.hj, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.hk, ptr %i.hg, align 4, !tbaa !66
  %i.hl = mul nuw nsw i64 %indvars.iv327, %i.ay
  %i.hm = mul nuw nsw i64 %indvars.iv.next328, %i.ay
  %invariant.gep = getelementptr [4 x i8], ptr %.0214296, i64 %i.hl ; 2 uses
  %invariant.gep395 = getelementptr [4 x i8], ptr %.0214296, i64 %i.hm ; 2 uses
  br i1 %min.iters.check450, label %scalar.ph449.preheader, label %vector.body453

vector.body453:                                   ; preds = %bb.z, %vector.body453
  %index454 = phi i64 [ %index.next459, %vector.body453 ], [ 0, %bb.z ] ; 3 uses
  %i.hn = getelementptr [4 x i8], ptr %invariant.gep, i64 %index454 ; 3 uses
  %i.ho = getelementptr [4 x i8], ptr %invariant.gep395, i64 %index454 ; 3 uses
  %i.hp = getelementptr i8, ptr %i.hn, i64 16     ; 2 uses
  %wide.load455 = load <4 x float>, ptr %i.hn, align 4, !tbaa !66
  %wide.load456 = load <4 x float>, ptr %i.hp, align 4, !tbaa !66
  %i.hq = getelementptr i8, ptr %i.ho, i64 16     ; 2 uses
  %wide.load457 = load <4 x float>, ptr %i.ho, align 4, !tbaa !66
  %wide.load458 = load <4 x float>, ptr %i.hq, align 4, !tbaa !66
  store <4 x float> %wide.load457, ptr %i.hn, align 4, !tbaa !66
  store <4 x float> %wide.load458, ptr %i.hp, align 4, !tbaa !66
  store <4 x float> %wide.load455, ptr %i.ho, align 4, !tbaa !66
  store <4 x float> %wide.load456, ptr %i.hq, align 4, !tbaa !66
  %index.next459 = add nuw i64 %index454, 8       ; 2 uses
  %i.hr = icmp eq i64 %index.next459, %n.vec452
  br i1 %i.hr, label %middle.block460, label %vector.body453, !llvm.loop !143

middle.block460:                                  ; preds = %vector.body453
  br i1 %cmp.n461, label %.loopexit, label %scalar.ph449.preheader

scalar.ph449.preheader:                           ; preds = %bb.z, %middle.block460
  %indvars.iv320.ph = phi i64 [ 0, %bb.z ], [ %n.vec452, %middle.block460 ]
  br label %scalar.ph449

scalar.ph449:                                     ; preds = %scalar.ph449.preheader, %scalar.ph449
  %indvars.iv320 = phi i64 [ %indvars.iv.next321, %scalar.ph449 ], [ %indvars.iv320.ph, %scalar.ph449.preheader ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv320 ; 2 uses
  %gep396 = getelementptr [4 x i8], ptr %invariant.gep395, i64 %indvars.iv320 ; 2 uses
  %i.hs = load float, ptr %gep, align 4, !tbaa !66
  %i.ht = load float, ptr %gep396, align 4, !tbaa !66
  store float %i.ht, ptr %gep, align 4, !tbaa !66
  store float %i.hs, ptr %gep396, align 4, !tbaa !66
  %indvars.iv.next321 = add nuw nsw i64 %indvars.iv320, 1 ; 2 uses
  %exitcond324.not = icmp eq i64 %indvars.iv.next321, %i.at
  br i1 %exitcond324.not, label %.loopexit, label %scalar.ph449, !llvm.loop !144

.loopexit252.loopexit:                            ; preds = %.lr.ph, %.loopexit
  %.2.ph = phi i32 [ %i.gy, %.loopexit ], [ %.0195262, %.lr.ph ]
  %8 = sext i32 %.2.ph to i64
  br label %.loopexit252

.loopexit252:                                     ; preds = %.loopexit252.loopexit, %.loopexit479, %bb.x, %bb.t
  %.2211 = phi i1 [ %.0209266, %bb.t ], [ %.1210, %bb.x ], [ %.1210, %.loopexit479 ], [ %.1210, %.loopexit252.loopexit ] ; 3 uses
  %.2208 = phi i8 [ 1, %bb.t ], [ 0, %bb.x ], [ 1, %.loopexit479 ], [ 1, %.loopexit252.loopexit ] ; 2 uses
  %.1198 = phi float [ %i.eo, %bb.t ], [ %i.eo, %bb.x ], [ %i.gh, %.loopexit479 ], [ %i.gh, %.loopexit252.loopexit ] ; 2 uses
  %.2 = phi i64 [ 0, %bb.t ], [ 0, %bb.x ], [ 0, %.loopexit479 ], [ %8, %.loopexit252.loopexit ]
  %i.hu = load float, ptr %i.al, align 8, !tbaa !70 ; 2 uses
  %i.hv = fneg float %i.hu
  %i.hw = fcmp olt float %.1198, %i.hv            ; 2 uses
  %i.hx = sext i1 %i.hw to i32
  %.1204 = add nsw i32 %.0203268, %i.hx           ; 7 uses
  %.2199 = select i1 %i.hw, float 0.000000e+00, float %.1198 ; 2 uses
  %9 = sub nsw i64 %indvars.iv325.a, %.2
  %i.hy = getelementptr inbounds [8 x i8], ptr %.0213298, i64 %9
  store float %.2199, ptr %i.hy, align 4, !tbaa !168
  %i.hz = fadd float %.0202269, %.2199            ; 3 uses
  %indvars.iv.next326 = add nuw nsw i64 %indvars.iv325.a, 1 ; 2 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %.0201270, i64 %i.at
  %i.ib = sext i32 %.1204 to i64
  %i.ic = icmp slt i64 %indvars.iv.next326, %i.ib
  br i1 %i.ic, label %bb.t, label %._crit_edge, !llvm.loop !145

._crit_edge281:                                   ; preds = %.lr.ph280, %._crit_edge
  br i1 %i.dq, label %.loopexit254, label %._crit_edge281.thread

.lr.ph280:                                        ; preds = %.lr.ph280.preheader483, %.lr.ph280
  %indvars.iv331 = phi i64 [ %indvars.iv.next332, %.lr.ph280 ], [ %indvars.iv331.ph, %.lr.ph280.preheader483 ] ; 2 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %.0213298, i64 %indvars.iv331 ; 2 uses
  %i.ie = load float, ptr %i.id, align 4, !tbaa !168
  %i.if = fmul float %.0189, %i.ie
  store float %i.if, ptr %i.id, align 4, !tbaa !168
  %indvars.iv.next332 = add nuw nsw i64 %indvars.iv331, 1 ; 2 uses
  %exitcond335.not = icmp eq i64 %indvars.iv.next332, %wide.trip.count334
  br i1 %exitcond335.not, label %._crit_edge281, label %.lr.ph280, !llvm.loop !146

._crit_edge281.thread:                            ; preds = %bb.s, %._crit_edge281
  %.0209.lcssa382389 = phi i1 [ %.2211, %._crit_edge281 ], [ false, %bb.s ] ; 4 uses
  %.0203.lcssa384388 = phi i32 [ %.1204, %._crit_edge281 ], [ 0, %bb.s ] ; 5 uses
  %i.ig = load float, ptr %i.v, align 4, !tbaa !162 ; 2 uses
  %i.ih = fcmp ogt float %i.ig, 0.000000e+00
  br i1 %i.ih, label %bb.aa, label %.loopexit254

bb.aa:                                            ; preds = %._crit_edge281.thread
  %i.ii = load i32, ptr %i.af, align 8, !tbaa !65 ; 2 uses
  %i.ij = icmp ne i32 %.0203.lcssa384388, %i.ii   ; 3 uses
  %i.ik = add nsw i32 %i.ii, -1
  %i.il = zext i1 %i.ij to i32
  %.2205 = add nsw i32 %.0203.lcssa384388, %i.il  ; 8 uses
  %i.im = select i1 %i.ij, i32 %.0203.lcssa384388, i32 %i.ik ; 3 uses
  %i.in = icmp eq i32 %.2205, 1
  %i.io = sext i32 %i.im to i64
  %i.ip = getelementptr inbounds [8 x i8], ptr %.0213298, i64 %i.io ; 2 uses
  br i1 %i.in, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store float 1.000000e+00, ptr %i.ip, align 4, !tbaa !168
  br label %.loopexit255

bb.ac:                                            ; preds = %bb.aa
  store float %i.ig, ptr %i.ip, align 4, !tbaa !168
  %i.iq = icmp sgt i32 %.2205, 1
  br i1 %i.iq, label %.lr.ph284.preheader, label %.loopexit255

.lr.ph284.preheader:                              ; preds = %bb.ac
  %i.ir = add nsw i32 %.2205, -1
  %wide.trip.count339 = zext nneg i32 %i.ir to i64 ; 3 uses
  %min.iters.check428 = icmp ult i32 %.2205, 6
  br i1 %min.iters.check428, label %.lr.ph284.preheader482, label %vector.ph429

vector.ph429:                                     ; preds = %.lr.ph284.preheader
  %i.is = and i64 %wide.trip.count339, 3          ; 2 uses
  %i.it = icmp eq i64 %i.is, 0
  %i.iu = select i1 %i.it, i64 4, i64 %i.is
  %n.vec430 = sub nsw i64 %wide.trip.count339, %i.iu ; 2 uses
  br label %vector.body431

vector.body431:                                   ; preds = %vector.body431, %vector.ph429
  %index432 = phi i64 [ 0, %vector.ph429 ], [ %index.next433, %vector.body431 ] ; 5 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %.0213298, i64 %index432 ; 2 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %.0213298, i64 %index432
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %.0213298, i64 %index432
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %.0213298, i64 %index432
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %wide.vec = load <8 x float>, ptr %i.iv, align 4, !tbaa !168
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.jc = fmul <4 x float> %broadcast.splat, %strided.vec ; 4 uses
  %i.jd = extractelement <4 x float> %i.jc, i64 0
  store float %i.jd, ptr %i.iv, align 4, !tbaa !168
  %i.je = extractelement <4 x float> %i.jc, i64 1
  store float %i.je, ptr %i.ix, align 4, !tbaa !168
  %i.jf = extractelement <4 x float> %i.jc, i64 2
  store float %i.jf, ptr %i.iz, align 4, !tbaa !168
  %i.jg = extractelement <4 x float> %i.jc, i64 3
  store float %i.jg, ptr %i.jb, align 4, !tbaa !168
  %index.next433 = add nuw i64 %index432, 4       ; 2 uses
  %i.jh = icmp eq i64 %index.next433, %n.vec430
  br i1 %i.jh, label %.lr.ph284.preheader482, label %vector.body431, !llvm.loop !147

.lr.ph284.preheader482:                           ; preds = %vector.body431, %.lr.ph284.preheader
  %indvars.iv336.ph = phi i64 [ 0, %.lr.ph284.preheader ], [ %n.vec430, %vector.body431 ]
  br label %.lr.ph284

.lr.ph284:                                        ; preds = %.lr.ph284.preheader482, %.lr.ph284
  %indvars.iv336 = phi i64 [ %indvars.iv.next337, %.lr.ph284 ], [ %indvars.iv336.ph, %.lr.ph284.preheader482 ] ; 2 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %.0213298, i64 %indvars.iv336 ; 2 uses
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !168
  %i.jk = fmul float %i.x, %i.jj
  store float %i.jk, ptr %i.ji, align 4, !tbaa !168
  %indvars.iv.next337 = add nuw nsw i64 %indvars.iv336, 1 ; 2 uses
  %exitcond340.not = icmp eq i64 %indvars.iv.next337, %wide.trip.count339
  br i1 %exitcond340.not, label %.loopexit255, label %.lr.ph284, !llvm.loop !148

.loopexit255:                                     ; preds = %.lr.ph284, %bb.ac, %bb.ab
  %i.jl = mul nsw i32 %i.im, %i.l
  %i.jm = sext i32 %i.jl to i64                   ; 2 uses
  %invariant.gep397 = getelementptr [4 x i8], ptr %.0214296, i64 %i.jm ; 6 uses
  br i1 %min.iters.check416, label %scalar.ph415.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.loopexit255
  %i.jn = mul nsw i64 %indvars.iv354, %i.be
  %i.jo = sub i64 %i.jn, %.0223414
  %i.jp = shl nsw i64 %i.jm, 2
  %i.jq = add i64 %i.jo, %.0214296413
  %i.jr = add i64 %i.jq, %i.jp
  %i.js = add i64 %i.jr, -1
  %diff.check = icmp ult i64 %i.js, 31
  br i1 %diff.check, label %scalar.ph415.preheader, label %vector.body419

vector.body419:                                   ; preds = %vector.memcheck, %vector.body419
  %index420 = phi i64 [ %index.next423, %vector.body419 ], [ 0, %vector.memcheck ] ; 3 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %.1224293, i64 %index420 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %wide.load421 = load <4 x float>, ptr %i.jt, align 4, !tbaa !66
  %wide.load422 = load <4 x float>, ptr %i.ju, align 4, !tbaa !66
  %i.jv = getelementptr [4 x i8], ptr %invariant.gep397, i64 %index420 ; 2 uses
  %i.jw = getelementptr i8, ptr %i.jv, i64 16
  store <4 x float> %wide.load421, ptr %i.jv, align 4, !tbaa !66
  store <4 x float> %wide.load422, ptr %i.jw, align 4, !tbaa !66
  %index.next423 = add nuw i64 %index420, 8       ; 2 uses
  %i.jx = icmp eq i64 %index.next423, %n.vec418
  br i1 %i.jx, label %middle.block424, label %vector.body419, !llvm.loop !149

middle.block424:                                  ; preds = %vector.body419
  br i1 %cmp.n425, label %.loopexit480, label %scalar.ph415.preheader

scalar.ph415.preheader:                           ; preds = %vector.memcheck, %.loopexit255, %middle.block424
  %indvars.iv341.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.loopexit255 ], [ %n.vec418, %middle.block424 ] ; 3 uses
  %i.jy = sub nsw i64 %i.bg, %indvars.iv341.ph
  br i1 %lcmp.mod491.not, label %scalar.ph415.prol.loopexit, label %scalar.ph415.prol

scalar.ph415.prol:                                ; preds = %scalar.ph415.preheader, %scalar.ph415.prol
  %indvars.iv341.prol = phi i64 [ %indvars.iv.next342.prol, %scalar.ph415.prol ], [ %indvars.iv341.ph, %scalar.ph415.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph415.prol ], [ 0, %scalar.ph415.preheader ]
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %.1224293, i64 %indvars.iv341.prol
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !66
  %gep398.prol = getelementptr [4 x i8], ptr %invariant.gep397, i64 %indvars.iv341.prol
  store float %i.ka, ptr %gep398.prol, align 4, !tbaa !66
  %indvars.iv.next342.prol = add nuw nsw i64 %indvars.iv341.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter490
  br i1 %prol.iter.cmp.not, label %scalar.ph415.prol.loopexit, label %scalar.ph415.prol, !llvm.loop !150

scalar.ph415.prol.loopexit:                       ; preds = %scalar.ph415.prol, %scalar.ph415.preheader
  %indvars.iv341.unr = phi i64 [ %indvars.iv341.ph, %scalar.ph415.preheader ], [ %indvars.iv.next342.prol, %scalar.ph415.prol ]
  %i.kb = icmp ult i64 %i.jy, 3
  br i1 %i.kb, label %.loopexit480, label %scalar.ph415

.loopexit480:                                     ; preds = %scalar.ph415.prol.loopexit, %scalar.ph415, %middle.block424
  %i.kc = load float, ptr %i.au, align 4, !tbaa !67
  %i.kd = sext i32 %i.im to i64
  %i.ke = getelementptr inbounds [8 x i8], ptr %.0213298, i64 %i.kd
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 4
  store float %i.kc, ptr %i.kf, align 4, !tbaa !171
  %i.kg = icmp sgt i32 %.2205, 1
  br i1 %i.kg, label %.lr.ph291.preheader, label %.loopexit254

.lr.ph291.preheader:                              ; preds = %.loopexit480
  %i.kh = sext i32 %.0203.lcssa384388 to i64
  %i.ki = zext i1 %i.ij to i64
  %i.kj = add nsw i64 %i.kh, %i.ki
  br label %.lr.ph291

scalar.ph415:                                     ; preds = %scalar.ph415.prol.loopexit, %scalar.ph415
  %indvars.iv341 = phi i64 [ %indvars.iv.next342.3, %scalar.ph415 ], [ %indvars.iv341.unr, %scalar.ph415.prol.loopexit ] ; 6 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %.1224293, i64 %indvars.iv341
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !66
  %gep398 = getelementptr [4 x i8], ptr %invariant.gep397, i64 %indvars.iv341
  store float %i.kl, ptr %gep398, align 4, !tbaa !66
  %indvars.iv.next342 = add nuw nsw i64 %indvars.iv341, 1 ; 2 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %.1224293, i64 %indvars.iv.next342
  %i.kn = load float, ptr %i.km, align 4, !tbaa !66
  %gep398.1 = getelementptr [4 x i8], ptr %invariant.gep397, i64 %indvars.iv.next342
  store float %i.kn, ptr %gep398.1, align 4, !tbaa !66
  %indvars.iv.next342.1 = add nuw nsw i64 %indvars.iv341, 2 ; 2 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %.1224293, i64 %indvars.iv.next342.1
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !66
  %gep398.2 = getelementptr [4 x i8], ptr %invariant.gep397, i64 %indvars.iv.next342.1
  store float %i.kp, ptr %gep398.2, align 4, !tbaa !66
  %indvars.iv.next342.2 = add nuw nsw i64 %indvars.iv341, 3 ; 2 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %.1224293, i64 %indvars.iv.next342.2
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !66
  %gep398.3 = getelementptr [4 x i8], ptr %invariant.gep397, i64 %indvars.iv.next342.2
  store float %i.kr, ptr %gep398.3, align 4, !tbaa !66
  %indvars.iv.next342.3 = add nuw nsw i64 %indvars.iv341, 4 ; 2 uses
  %exitcond345.not.3 = icmp eq i64 %indvars.iv.next342.3, %i.at
  br i1 %exitcond345.not.3, label %.loopexit480, label %scalar.ph415, !llvm.loop !151

.loopexit251:                                     ; preds = %scalar.ph, %middle.block
  %i.ks = icmp sgt i64 %indvars.iv351, 2
  br i1 %i.ks, label %.lr.ph291, label %.loopexit254, !llvm.loop !152

.lr.ph291:                                        ; preds = %.lr.ph291.preheader, %.loopexit251
end_hunk_0
