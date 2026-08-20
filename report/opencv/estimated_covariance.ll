inline.NumInlined: 333
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2cv8ximgproc18EstimateCovariance21computeOneCombinationEiNS_3MatES2_S2_St6vectorIiSaIiEES5_:bb.a
  %.sink.i258 = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.sink.idx.i257
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %.sink.i258, i64 %i.ft ; 2 uses
  %i.hf = load <2 x float>, ptr %i.hc, align 4, !tbaa !61 ; 4 uses
  %i.hg = load float, ptr %i.he, align 4          ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  %i.hi = load float, ptr %i.hh, align 4          ; 2 uses
  %.sroa.0.0.vec.extract.i.i259 = extractelement <2 x float> %i.hf, i64 0
  %.sroa.0.4.vec.extract.i.i260 = extractelement <2 x float> %i.hf, i64 1
  %i.hj = insertelement <2 x float> poison, float %i.hi, i64 0
  %i.hk = shufflevector <2 x float> %i.hf, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hl = shufflevector <2 x float> %i.hj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hm = fmul <2 x float> %i.hk, %i.hl           ; 2 uses
  %i.hn = insertelement <2 x float> poison, float %i.hg, i64 0
  %i.ho = shufflevector <2 x float> %i.hn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hp = fmul <2 x float> %i.ho, %i.hf           ; 2 uses
  %i.hq = fsub <2 x float> %i.hp, %i.hm           ; 2 uses
  %i.hr = fadd <2 x float> %i.hp, %i.hm           ; 2 uses
  %i.hs = shufflevector <2 x float> %i.hq, <2 x float> %i.hr, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ht = extractelement <2 x float> %i.hq, i64 0
  %i.hu = fcmp uno float %i.ht, 0.000000e+00
  br i1 %i.hu, label %bb.o, label %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit263, !prof !62

bb.o:                                             ; preds = %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit254
  %i.hv = extractelement <2 x float> %i.hr, i64 1
  %i.hw = fcmp uno float %i.hv, 0.000000e+00
  br i1 %i.hw, label %bb.p, label %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit263, !prof !62

bb.p:                                             ; preds = %bb.o
  %i.hx = tail call noundef <2 x float> @__mulsc3(float noundef %.sroa.0.0.vec.extract.i.i259, float noundef %.sroa.0.4.vec.extract.i.i260, float noundef %i.hg, float noundef %i.hi) #19
  br label %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit263

_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit263: ; preds = %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit254, %bb.o, %bb.p
  %i.hy = phi <2 x float> [ %i.hs, %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit254 ], [ %i.hs, %bb.o ], [ %i.hx, %bb.p ]
  %i.hz = fadd <2 x float> %i.fs, %i.hy           ; 2 uses
  %indvars.iv.next651 = add nuw nsw i64 %indvars.iv650, 1 ; 2 uses
  %exitcond654.not = icmp eq i64 %indvars.iv.next651, %wide.trip.count653
  br i1 %exitcond654.not, label %.loopexit502, label %bb.l, !llvm.loop !67

bb.q:                                             ; preds = %.lr.ph546, %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit281
  %indvars.iv645 = phi i64 [ 0, %.lr.ph546 ], [ %indvars.iv.next646, %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit281 ] ; 4 uses
  %i.ia = phi <2 x float> [ zeroinitializer, %.lr.ph546 ], [ %i.ji, %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit281 ]
  %i.ib = phi <2 x float> [ zeroinitializer, %.lr.ph546 ], [ %i.ki, %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit281 ]
  %i.ic = add nuw nsw i64 %indvars.iv645, %i.es   ; 2 uses
  %i.id = load i32, ptr %i.ep, align 4, !tbaa !52 ; 3 uses
  %i.ie = icmp slt i32 %i.id, 2                   ; 2 uses
  %i.if = load ptr, ptr %i.eq, align 8, !tbaa !60 ; 4 uses
  %i.ig = load i64, ptr %i.er, align 8            ; 4 uses
  %i.ih = mul i64 %i.ig, %i.fn
  %.sink.idx.i264 = select i1 %i.ie, i64 0, i64 %i.ih
  %.sink.i265 = getelementptr inbounds nuw i8, ptr %i.if, i64 %.sink.idx.i264
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %.sink.i265, i64 %indvars.iv645
  %i.ij = mul i64 %i.ig, %i.fo
  %.sink.idx.i266 = select i1 %i.ie, i64 0, i64 %i.ij
  %.sink.i267 = getelementptr inbounds nuw i8, ptr %i.if, i64 %.sink.idx.i266
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %.sink.i267, i64 %i.ic ; 2 uses
  %i.il = load <2 x float>, ptr %i.ii, align 4, !tbaa !61 ; 4 uses
  %i.im = load float, ptr %i.ik, align 4          ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 4
  %i.io = load float, ptr %i.in, align 4          ; 2 uses
  %.sroa.0.0.vec.extract.i.i268 = extractelement <2 x float> %i.il, i64 0
  %.sroa.0.4.vec.extract.i.i269 = extractelement <2 x float> %i.il, i64 1
  %i.ip = insertelement <2 x float> poison, float %i.io, i64 0
  %i.iq = shufflevector <2 x float> %i.il, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ir = shufflevector <2 x float> %i.ip, <2 x float> poison, <2 x i32> zeroinitializer
  %i.is = fmul <2 x float> %i.iq, %i.ir           ; 2 uses
  %i.it = insertelement <2 x float> poison, float %i.im, i64 0
  %i.iu = shufflevector <2 x float> %i.it, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iv = fmul <2 x float> %i.iu, %i.il           ; 2 uses
  %i.iw = fsub <2 x float> %i.iv, %i.is           ; 2 uses
  %i.ix = fadd <2 x float> %i.iv, %i.is           ; 2 uses
  %i.iy = shufflevector <2 x float> %i.iw, <2 x float> %i.ix, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.iz = extractelement <2 x float> %i.iw, i64 0
  %i.ja = fcmp uno float %i.iz, 0.000000e+00
  br i1 %i.ja, label %bb.r, label %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit272, !prof !62

bb.r:                                             ; preds = %bb.q
  %i.jb = extractelement <2 x float> %i.ix, i64 1
  %i.jc = fcmp uno float %i.jb, 0.000000e+00
  br i1 %i.jc, label %bb.s, label %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit272, !prof !62

bb.s:                                             ; preds = %bb.r
  %i.jd = tail call noundef <2 x float> @__mulsc3(float noundef %.sroa.0.0.vec.extract.i.i268, float noundef %.sroa.0.4.vec.extract.i.i269, float noundef %i.im, float noundef %i.io) #19
  %.pre = load i32, ptr %i.ep, align 4, !tbaa !52
  %.pre689 = load ptr, ptr %i.eq, align 8, !tbaa !60
  %.pre690 = load i64, ptr %i.er, align 8
  br label %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit272

_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit272: ; preds = %bb.q, %bb.r, %bb.s
  %i.je = phi i64 [ %i.ig, %bb.q ], [ %i.ig, %bb.r ], [ %.pre690, %bb.s ] ; 2 uses
  %i.jf = phi ptr [ %i.if, %bb.q ], [ %i.if, %bb.r ], [ %.pre689, %bb.s ] ; 2 uses
  %i.jg = phi i32 [ %i.id, %bb.q ], [ %i.id, %bb.r ], [ %.pre, %bb.s ]
  %i.jh = phi <2 x float> [ %i.iy, %bb.q ], [ %i.iy, %bb.r ], [ %i.jd, %bb.s ]
  %i.ji = fadd <2 x float> %i.ia, %i.jh           ; 2 uses
  %i.jj = icmp slt i32 %i.jg, 2                   ; 2 uses
  %i.jk = mul i64 %i.je, %i.fm
  %.sink.idx.i273 = select i1 %i.jj, i64 0, i64 %i.jk
  %.sink.i274 = getelementptr inbounds nuw i8, ptr %i.jf, i64 %.sink.idx.i273
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %.sink.i274, i64 %indvars.iv645
  %i.jm = mul i64 %i.je, %i.fi
  %.sink.idx.i275 = select i1 %i.jj, i64 0, i64 %i.jm
  %.sink.i276 = getelementptr inbounds nuw i8, ptr %i.jf, i64 %.sink.idx.i275
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %.sink.i276, i64 %i.ic ; 2 uses
  %i.jo = load <2 x float>, ptr %i.jl, align 4, !tbaa !61 ; 4 uses
  %i.jp = load float, ptr %i.jn, align 4          ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 4
  %i.jr = load float, ptr %i.jq, align 4          ; 2 uses
  %.sroa.0.0.vec.extract.i.i277 = extractelement <2 x float> %i.jo, i64 0
  %.sroa.0.4.vec.extract.i.i278 = extractelement <2 x float> %i.jo, i64 1
  %i.js = insertelement <2 x float> poison, float %i.jr, i64 0
  %i.jt = shufflevector <2 x float> %i.jo, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ju = shufflevector <2 x float> %i.js, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jv = fmul <2 x float> %i.jt, %i.ju           ; 2 uses
  %i.jw = insertelement <2 x float> poison, float %i.jp, i64 0
  %i.jx = shufflevector <2 x float> %i.jw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jy = fmul <2 x float> %i.jx, %i.jo           ; 2 uses
  %i.jz = fsub <2 x float> %i.jy, %i.jv           ; 2 uses
  %i.ka = fadd <2 x float> %i.jy, %i.jv           ; 2 uses
  %i.kb = shufflevector <2 x float> %i.jz, <2 x float> %i.ka, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.kc = extractelement <2 x float> %i.jz, i64 0
  %i.kd = fcmp uno float %i.kc, 0.000000e+00
  br i1 %i.kd, label %bb.t, label %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit281, !prof !62

bb.t:                                             ; preds = %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit272
  %i.ke = extractelement <2 x float> %i.ka, i64 1
  %i.kf = fcmp uno float %i.ke, 0.000000e+00
  br i1 %i.kf, label %bb.u, label %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit281, !prof !62

bb.u:                                             ; preds = %bb.t
  %i.kg = tail call noundef <2 x float> @__mulsc3(float noundef %.sroa.0.0.vec.extract.i.i277, float noundef %.sroa.0.4.vec.extract.i.i278, float noundef %i.jp, float noundef %i.jr) #19
  br label %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit281

_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit281: ; preds = %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit272, %bb.t, %bb.u
  %i.kh = phi <2 x float> [ %i.kb, %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit272 ], [ %i.kb, %bb.t ], [ %i.kg, %bb.u ]
  %i.ki = fadd <2 x float> %i.ib, %i.kh           ; 2 uses
  %indvars.iv.next646 = add nuw nsw i64 %indvars.iv645, 1 ; 2 uses
  %exitcond649.not = icmp eq i64 %indvars.iv.next646, %wide.trip.count648
  br i1 %exitcond649.not, label %.loopexit502, label %bb.q, !llvm.loop !68

.loopexit502:                                     ; preds = %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit281, %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit263, %.preheader503, %.preheader501
  %i.kj = phi <2 x float> [ %i.gz, %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit263 ], [ zeroinitializer, %.preheader501 ], [ zeroinitializer, %.preheader503 ], [ %i.ji, %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit281 ]
  %i.kk = phi <2 x float> [ %i.hz, %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit263 ], [ zeroinitializer, %.preheader501 ], [ zeroinitializer, %.preheader503 ], [ %i.ki, %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit281 ]
  %i.kl = fadd <2 x float> %i.kj, zeroinitializer
  %i.km = load i32, ptr %i.ek, align 4, !tbaa !52
  %i.kn = icmp slt i32 %i.km, 2                   ; 2 uses
  %i.ko = load ptr, ptr %i.ej, align 8, !tbaa !60 ; 2 uses
  %i.kp = load i64, ptr %i.ei, align 8            ; 2 uses
  %i.kq = mul i64 %i.kp, %i.fi
  %.sink.idx.i282 = select i1 %i.kn, i64 0, i64 %i.kq
  %.sink.i283 = getelementptr inbounds nuw i8, ptr %i.ko, i64 %.sink.idx.i282
  %i.kr = mul i64 %i.kp, %indvars.iv655
  %.sink.idx.i284 = select i1 %i.kn, i64 0, i64 %i.kr
  %.sink.i285 = getelementptr inbounds nuw i8, ptr %i.ko, i64 %.sink.idx.i284 ; 2 uses
  %i.ks = load <2 x float>, ptr %.sink.i283, align 4
  %i.kt = load <2 x float>, ptr %.sink.i285, align 4
  %i.ku = fadd <2 x float> %i.ks, %i.kt
  store <2 x float> %i.ku, ptr %.sink.i285, align 4
  %i.kv = load i32, ptr %i.ek, align 4, !tbaa !52
  %i.kw = icmp slt i32 %i.kv, 2
  %i.kx = load ptr, ptr %i.ej, align 8, !tbaa !60
  %i.ky = load i64, ptr %i.ei, align 8
  %i.kz = mul i64 %i.ky, %indvars.iv655
  %.sink.idx.i286 = select i1 %i.kw, i64 0, i64 %i.kz
  %.sink.i287 = getelementptr inbounds nuw i8, ptr %i.kx, i64 %.sink.idx.i286 ; 2 uses
  %i.la = fsub <2 x float> %i.kl, %i.kk
  %i.lb = load <2 x float>, ptr %.sink.i287, align 4
  %i.lc = fadd <2 x float> %i.la, %i.lb
  store <2 x float> %i.lc, ptr %.sink.i287, align 4
  %i.ld = load ptr, ptr %5, align 8, !tbaa !40    ; 2 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %i.fi
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !25
  %i.lg = add nsw i32 %i.lf, 1
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %indvars.iv655
  store i32 %i.lg, ptr %i.lh, align 4, !tbaa !25
  %i.li = load ptr, ptr %6, align 8, !tbaa !40    ; 2 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %i.fi
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !25
  %i.ll = add nsw i32 %i.lk, 1
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %indvars.iv655
  store i32 %i.ll, ptr %i.lm, align 4, !tbaa !25
  %indvars.iv.next656 = add nuw nsw i64 %indvars.iv655, 1 ; 3 uses
  %i.ln = load i32, ptr %i.r, align 8, !tbaa !8
  %i.lo = sub nsw i32 %i.ln, %i.k
  %i.lp = sext i32 %i.lo to i64
  %i.lq = icmp slt i64 %indvars.iv.next656, %i.lp
  br i1 %i.lq, label %bb.k, label %.preheader500.loopexit, !llvm.loop !69

.preheader:                                       ; preds = %._crit_edge595, %.preheader500
  %i.lr = mul nsw i32 %i.w, %i.t                  ; 2 uses
  %i.ls = icmp sgt i32 %i.lr, 0
  br i1 %i.ls, label %.lr.ph601, label %._crit_edge602

.lr.ph601:                                        ; preds = %.preheader
  %i.lt = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.lu = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.lv = getelementptr inbounds nuw i8, ptr %3, i64 128
  %wide.trip.count687 = zext nneg i32 %i.lr to i64
  br label %bb.az

bb.v:                                             ; preds = %.lr.ph599, %._crit_edge595
  %indvars.iv679 = phi i64 [ 1, %.lr.ph599 ], [ %indvars.iv.next680, %._crit_edge595 ] ; 4 uses
  %.2222597 = phi i32 [ %.1221.lcssa, %.lr.ph599 ], [ %.3223.lcssa, %._crit_edge595 ] ; 3 uses
  %i.lw = add nsw i64 %indvars.iv679, -1          ; 8 uses
  %i.lx = trunc nuw nsw i64 %indvars.iv679 to i32
  %i.ly = add i32 %i.ab, %i.lx                    ; 4 uses
  %i.lz = add nsw i64 %i.lw, %i.fh                ; 6 uses
  %i.ma = add nsw i32 %i.ly, %i.q                 ; 3 uses
  br i1 %.not, label %.preheader497, label %.preheader498

.preheader498:                                    ; preds = %bb.v
  br i1 %.not229567, label %.loopexit, label %.lr.ph573

.lr.ph573:                                        ; preds = %.preheader498
  %i.mb = sext i32 %i.ly to i64
  %i.mc = sext i32 %i.ma to i64
  br label %bb.ab

.preheader497:                                    ; preds = %bb.v
  br i1 %.not229567, label %.loopexit, label %.lr.ph584

.lr.ph584:                                        ; preds = %.preheader497
  %i.md = sext i32 %i.ly to i64
  %i.me = sext i32 %i.ma to i64
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph584, %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit305
  %indvars.iv665 = phi i64 [ 0, %.lr.ph584 ], [ %indvars.iv.next666, %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit305 ] ; 4 uses
  %i.mf = phi <2 x float> [ zeroinitializer, %.lr.ph584 ], [ %i.nm, %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit305 ]
  %i.mg = phi <2 x float> [ zeroinitializer, %.lr.ph584 ], [ %i.ok, %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit305 ]
  %i.mh = add nuw nsw i64 %indvars.iv665, %i.fc   ; 2 uses
  %i.mi = load i32, ptr %i.ey, align 4, !tbaa !52 ; 3 uses
  %i.mj = icmp slt i32 %i.mi, 2                   ; 2 uses
  %i.mk = load ptr, ptr %i.ez, align 8, !tbaa !60 ; 4 uses
  %i.ml = load i64, ptr %i.fa, align 8            ; 2 uses
  %i.mm = mul i64 %i.ml, %indvars.iv665           ; 3 uses
  %.sink.idx.i288 = select i1 %i.mj, i64 0, i64 %i.mm
  %.sink.i289 = getelementptr inbounds nuw i8, ptr %i.mk, i64 %.sink.idx.i288
  %i.mn = getelementptr inbounds [8 x i8], ptr %.sink.i289, i64 %i.md
  %i.mo = mul i64 %i.ml, %i.mh                    ; 3 uses
  %.sink.idx.i290 = select i1 %i.mj, i64 0, i64 %i.mo
  %.sink.i291 = getelementptr inbounds nuw i8, ptr %i.mk, i64 %.sink.idx.i290
  %i.mp = getelementptr inbounds [8 x i8], ptr %.sink.i291, i64 %i.me ; 2 uses
  %i.mq = load <2 x float>, ptr %i.mn, align 4, !tbaa !61 ; 4 uses
  %i.mr = load float, ptr %i.mp, align 4          ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mp, i64 4
  %i.mt = load float, ptr %i.ms, align 4          ; 2 uses
  %.sroa.0.0.vec.extract.i.i292 = extractelement <2 x float> %i.mq, i64 0
  %.sroa.0.4.vec.extract.i.i293 = extractelement <2 x float> %i.mq, i64 1
  %i.mu = insertelement <2 x float> poison, float %i.mt, i64 0
  %i.mv = shufflevector <2 x float> %i.mq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.mw = shufflevector <2 x float> %i.mu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mx = fmul <2 x float> %i.mv, %i.mw           ; 2 uses
  %i.my = insertelement <2 x float> poison, float %i.mr, i64 0
  %i.mz = shufflevector <2 x float> %i.my, <2 x float> poison, <2 x i32> zeroinitializer
  %i.na = fmul <2 x float> %i.mz, %i.mq           ; 2 uses
  %i.nb = fsub <2 x float> %i.na, %i.mx           ; 2 uses
  %i.nc = fadd <2 x float> %i.na, %i.mx           ; 2 uses
  %i.nd = shufflevector <2 x float> %i.nb, <2 x float> %i.nc, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ne = extractelement <2 x float> %i.nb, i64 0
  %i.nf = fcmp uno float %i.ne, 0.000000e+00
  br i1 %i.nf, label %bb.x, label %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit296, !prof !62

bb.x:                                             ; preds = %bb.w
  %i.ng = extractelement <2 x float> %i.nc, i64 1
  %i.nh = fcmp uno float %i.ng, 0.000000e+00
  br i1 %i.nh, label %bb.y, label %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit296, !prof !62

bb.y:                                             ; preds = %bb.x
  %i.ni = tail call noundef <2 x float> @__mulsc3(float noundef %.sroa.0.0.vec.extract.i.i292, float noundef %.sroa.0.4.vec.extract.i.i293, float noundef %i.mr, float noundef %i.mt) #19
  %.pre697 = load i32, ptr %i.ey, align 4, !tbaa !52
  %.pre698.a = load ptr, ptr %i.ez, align 8, !tbaa !60
  %.pre699.a = load i64, ptr %i.fa, align 8       ; 2 uses
  %.pre733.a = mul i64 %.pre699.a, %indvars.iv665
  %.pre735.a = mul i64 %.pre699.a, %i.mh
  br label %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit296

_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit296: ; preds = %bb.w, %bb.x, %bb.y
  %.pre-phi736.a = phi i64 [ %i.mo, %bb.w ], [ %i.mo, %bb.x ], [ %.pre735.a, %bb.y ]
  %.pre-phi734.a = phi i64 [ %i.mm, %bb.w ], [ %i.mm, %bb.x ], [ %.pre733.a, %bb.y ]
  %i.nj = phi ptr [ %i.mk, %bb.w ], [ %i.mk, %bb.x ], [ %.pre698.a, %bb.y ] ; 2 uses
  %i.nk = phi i32 [ %i.mi, %bb.w ], [ %i.mi, %bb.x ], [ %.pre697, %bb.y ]
  %i.nl = phi <2 x float> [ %i.nd, %bb.w ], [ %i.nd, %bb.x ], [ %i.ni, %bb.y ]
  %i.nm = fadd <2 x float> %i.mf, %i.nl           ; 2 uses
  %i.nn = icmp slt i32 %i.nk, 2                   ; 2 uses
  %.sink.idx.i297 = select i1 %i.nn, i64 0, i64 %.pre-phi734.a
  %.sink.i298 = getelementptr inbounds nuw i8, ptr %i.nj, i64 %.sink.idx.i297
  %i.no = getelementptr inbounds [8 x i8], ptr %.sink.i298, i64 %i.lw
  %.sink.idx.i299 = select i1 %i.nn, i64 0, i64 %.pre-phi736.a
  %.sink.i300 = getelementptr inbounds nuw i8, ptr %i.nj, i64 %.sink.idx.i299
  %i.np = getelementptr inbounds [8 x i8], ptr %.sink.i300, i64 %i.lz ; 2 uses
  %i.nq = load <2 x float>, ptr %i.no, align 4, !tbaa !61 ; 4 uses
  %i.nr = load float, ptr %i.np, align 4          ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.np, i64 4
  %i.nt = load float, ptr %i.ns, align 4          ; 2 uses
  %.sroa.0.0.vec.extract.i.i301 = extractelement <2 x float> %i.nq, i64 0
  %.sroa.0.4.vec.extract.i.i302 = extractelement <2 x float> %i.nq, i64 1
  %i.nu = insertelement <2 x float> poison, float %i.nt, i64 0
  %i.nv = shufflevector <2 x float> %i.nq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.nw = shufflevector <2 x float> %i.nu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nx = fmul <2 x float> %i.nv, %i.nw           ; 2 uses
  %i.ny = insertelement <2 x float> poison, float %i.nr, i64 0
  %i.nz = shufflevector <2 x float> %i.ny, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oa = fmul <2 x float> %i.nz, %i.nq           ; 2 uses
  %i.ob = fsub <2 x float> %i.oa, %i.nx           ; 2 uses
  %i.oc = fadd <2 x float> %i.oa, %i.nx           ; 2 uses
  %i.od = shufflevector <2 x float> %i.ob, <2 x float> %i.oc, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.oe = extractelement <2 x float> %i.ob, i64 0
  %i.of = fcmp uno float %i.oe, 0.000000e+00
  br i1 %i.of, label %bb.z, label %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit305, !prof !62

bb.z:                                             ; preds = %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit296
  %i.og = extractelement <2 x float> %i.oc, i64 1
  %i.oh = fcmp uno float %i.og, 0.000000e+00
  br i1 %i.oh, label %bb.aa, label %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit305, !prof !62

bb.aa:                                            ; preds = %bb.z
  %i.oi = tail call noundef <2 x float> @__mulsc3(float noundef %.sroa.0.0.vec.extract.i.i301, float noundef %.sroa.0.4.vec.extract.i.i302, float noundef %i.nr, float noundef %i.nt) #19
  br label %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit305

_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit305: ; preds = %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit296, %bb.z, %bb.aa
  %i.oj = phi <2 x float> [ %i.od, %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit296 ], [ %i.od, %bb.z ], [ %i.oi, %bb.aa ]
  %i.ok = fadd <2 x float> %i.mg, %i.oj           ; 2 uses
  %indvars.iv.next666 = add nuw nsw i64 %indvars.iv665, 1 ; 2 uses
  %exitcond669.not = icmp eq i64 %indvars.iv.next666, %wide.trip.count668
  br i1 %exitcond669.not, label %.loopexit, label %bb.w, !llvm.loop !70

bb.ab:                                            ; preds = %.lr.ph573, %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit323
  %indvars.iv660 = phi i64 [ 0, %.lr.ph573 ], [ %indvars.iv.next661, %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit323 ] ; 4 uses
  %i.ol = phi <2 x float> [ zeroinitializer, %.lr.ph573 ], [ %i.ps, %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit323 ]
  %i.om = phi <2 x float> [ zeroinitializer, %.lr.ph573 ], [ %i.qq, %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit323 ]
  %i.on = add nuw nsw i64 %indvars.iv660, %i.fc   ; 2 uses
  %i.oo = load i32, ptr %i.ey, align 4, !tbaa !52 ; 3 uses
  %i.op = icmp slt i32 %i.oo, 2                   ; 2 uses
  %i.oq = load ptr, ptr %i.ez, align 8, !tbaa !60 ; 4 uses
  %i.or = load i64, ptr %i.fa, align 8            ; 2 uses
  %i.os = mul i64 %i.or, %i.on                    ; 3 uses
  %.sink.idx.i306 = select i1 %i.op, i64 0, i64 %i.os
  %.sink.i307 = getelementptr inbounds nuw i8, ptr %i.oq, i64 %.sink.idx.i306
  %i.ot = getelementptr inbounds [8 x i8], ptr %.sink.i307, i64 %i.mb
  %i.ou = mul i64 %i.or, %indvars.iv660           ; 3 uses
  %.sink.idx.i308 = select i1 %i.op, i64 0, i64 %i.ou
  %.sink.i309 = getelementptr inbounds nuw i8, ptr %i.oq, i64 %.sink.idx.i308
  %i.ov = getelementptr inbounds [8 x i8], ptr %.sink.i309, i64 %i.mc ; 2 uses
  %i.ow = load <2 x float>, ptr %i.ot, align 4, !tbaa !61 ; 4 uses
  %i.ox = load float, ptr %i.ov, align 4          ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ov, i64 4
  %i.oz = load float, ptr %i.oy, align 4          ; 2 uses
  %.sroa.0.0.vec.extract.i.i310 = extractelement <2 x float> %i.ow, i64 0
  %.sroa.0.4.vec.extract.i.i311 = extractelement <2 x float> %i.ow, i64 1
  %i.pa = insertelement <2 x float> poison, float %i.oz, i64 0
  %i.pb = shufflevector <2 x float> %i.ow, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.pc = shufflevector <2 x float> %i.pa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pd = fmul <2 x float> %i.pb, %i.pc           ; 2 uses
  %i.pe = insertelement <2 x float> poison, float %i.ox, i64 0
  %i.pf = shufflevector <2 x float> %i.pe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pg = fmul <2 x float> %i.pf, %i.ow           ; 2 uses
  %i.ph = fsub <2 x float> %i.pg, %i.pd           ; 2 uses
  %i.pi = fadd <2 x float> %i.pg, %i.pd           ; 2 uses
  %i.pj = shufflevector <2 x float> %i.ph, <2 x float> %i.pi, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.pk = extractelement <2 x float> %i.ph, i64 0
  %i.pl = fcmp uno float %i.pk, 0.000000e+00
  br i1 %i.pl, label %bb.ac, label %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit314, !prof !62

bb.ac:                                            ; preds = %bb.ab
  %i.pm = extractelement <2 x float> %i.pi, i64 1
  %i.pn = fcmp uno float %i.pm, 0.000000e+00
  br i1 %i.pn, label %bb.ad, label %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit314, !prof !62

bb.ad:                                            ; preds = %bb.ac
  %i.po = tail call noundef <2 x float> @__mulsc3(float noundef %.sroa.0.0.vec.extract.i.i310, float noundef %.sroa.0.4.vec.extract.i.i311, float noundef %i.ox, float noundef %i.oz) #19
  %.pre694 = load i32, ptr %i.ey, align 4, !tbaa !52
  %.pre695 = load ptr, ptr %i.ez, align 8, !tbaa !60
  %.pre696 = load i64, ptr %i.fa, align 8         ; 2 uses
  %.pre737 = mul i64 %.pre696, %i.on
  %.pre739 = mul i64 %.pre696, %indvars.iv660
  br label %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit314

_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit314: ; preds = %bb.ab, %bb.ac, %bb.ad
  %.pre-phi740 = phi i64 [ %i.ou, %bb.ab ], [ %i.ou, %bb.ac ], [ %.pre739, %bb.ad ]
  %.pre-phi738 = phi i64 [ %i.os, %bb.ab ], [ %i.os, %bb.ac ], [ %.pre737, %bb.ad ]
  %i.pp = phi ptr [ %i.oq, %bb.ab ], [ %i.oq, %bb.ac ], [ %.pre695, %bb.ad ] ; 2 uses
  %i.pq = phi i32 [ %i.oo, %bb.ab ], [ %i.oo, %bb.ac ], [ %.pre694, %bb.ad ]
  %i.pr = phi <2 x float> [ %i.pj, %bb.ab ], [ %i.pj, %bb.ac ], [ %i.po, %bb.ad ]
  %i.ps = fadd <2 x float> %i.ol, %i.pr           ; 2 uses
  %i.pt = icmp slt i32 %i.pq, 2                   ; 2 uses
  %.sink.idx.i315 = select i1 %i.pt, i64 0, i64 %.pre-phi738
  %.sink.i316 = getelementptr inbounds nuw i8, ptr %i.pp, i64 %.sink.idx.i315
  %i.pu = getelementptr inbounds [8 x i8], ptr %.sink.i316, i64 %i.lw
  %.sink.idx.i317 = select i1 %i.pt, i64 0, i64 %.pre-phi740
  %.sink.i318 = getelementptr inbounds nuw i8, ptr %i.pp, i64 %.sink.idx.i317
  %i.pv = getelementptr inbounds [8 x i8], ptr %.sink.i318, i64 %i.lz ; 2 uses
  %i.pw = load <2 x float>, ptr %i.pu, align 4, !tbaa !61 ; 4 uses
  %i.px = load float, ptr %i.pv, align 4          ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.pv, i64 4
  %i.pz = load float, ptr %i.py, align 4          ; 2 uses
  %.sroa.0.0.vec.extract.i.i319 = extractelement <2 x float> %i.pw, i64 0
  %.sroa.0.4.vec.extract.i.i320 = extractelement <2 x float> %i.pw, i64 1
  %i.qa = insertelement <2 x float> poison, float %i.pz, i64 0
  %i.qb = shufflevector <2 x float> %i.pw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qc = shufflevector <2 x float> %i.qa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qd = fmul <2 x float> %i.qb, %i.qc           ; 2 uses
  %i.qe = insertelement <2 x float> poison, float %i.px, i64 0
  %i.qf = shufflevector <2 x float> %i.qe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qg = fmul <2 x float> %i.qf, %i.pw           ; 2 uses
  %i.qh = fsub <2 x float> %i.qg, %i.qd           ; 2 uses
  %i.qi = fadd <2 x float> %i.qg, %i.qd           ; 2 uses
  %i.qj = shufflevector <2 x float> %i.qh, <2 x float> %i.qi, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.qk = extractelement <2 x float> %i.qh, i64 0
  %i.ql = fcmp uno float %i.qk, 0.000000e+00
  br i1 %i.ql, label %bb.ae, label %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit323, !prof !62

bb.ae:                                            ; preds = %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit314
  %i.qm = extractelement <2 x float> %i.qi, i64 1
  %i.qn = fcmp uno float %i.qm, 0.000000e+00
  br i1 %i.qn, label %bb.af, label %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit323, !prof !62

bb.af:                                            ; preds = %bb.ae
  %i.qo = tail call noundef <2 x float> @__mulsc3(float noundef %.sroa.0.0.vec.extract.i.i319, float noundef %.sroa.0.4.vec.extract.i.i320, float noundef %i.px, float noundef %i.pz) #19
  br label %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit323

_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit323: ; preds = %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit314, %bb.ae, %bb.af
  %i.qp = phi <2 x float> [ %i.qj, %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit314 ], [ %i.qj, %bb.ae ], [ %i.qo, %bb.af ]
  %i.qq = fadd <2 x float> %i.om, %i.qp           ; 2 uses
  %indvars.iv.next661 = add nuw nsw i64 %indvars.iv660, 1 ; 2 uses
  %exitcond664.not = icmp eq i64 %indvars.iv.next661, %wide.trip.count663
  br i1 %exitcond664.not, label %.loopexit, label %bb.ab, !llvm.loop !71

.loopexit:                                        ; preds = %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit323, %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit305, %.preheader498, %.preheader497
  %i.qr = phi <2 x float> [ %i.nm, %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit305 ], [ zeroinitializer, %.preheader497 ], [ zeroinitializer, %.preheader498 ], [ %i.ps, %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit323 ]
  %i.qs = phi <2 x float> [ %i.ok, %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit305 ], [ zeroinitializer, %.preheader497 ], [ zeroinitializer, %.preheader498 ], [ %i.qq, %_ZN2cv8ximgproc18EstimateCovariance20complexConjMulAndAddERSt7complexIfES4_S4_.exit323 ]
  %i.qt = fadd <2 x float> %i.qr, zeroinitializer
  %i.qu = mul nsw i64 %i.lw, %i.fg                ; 3 uses
  %i.qv = load i32, ptr %i.ek, align 4, !tbaa !52
  %i.qw = icmp slt i32 %i.qv, 2                   ; 2 uses
  %i.qx = load ptr, ptr %i.ej, align 8, !tbaa !60 ; 2 uses
  %i.qy = load i64, ptr %i.ei, align 8            ; 2 uses
  %i.qz = mul i64 %i.qy, %i.qu
  %.sink.idx.i324 = select i1 %i.qw, i64 0, i64 %i.qz
  %.sink.i325 = getelementptr inbounds nuw i8, ptr %i.qx, i64 %.sink.idx.i324
  %i.ra = mul nsw i64 %indvars.iv679, %i.fg       ; 4 uses
  %i.rb = mul i64 %i.qy, %i.ra
  %.sink.idx.i326 = select i1 %i.qw, i64 0, i64 %i.rb
  %.sink.i327 = getelementptr inbounds nuw i8, ptr %i.qx, i64 %.sink.idx.i326 ; 2 uses
  %i.rc = load <2 x float>, ptr %.sink.i325, align 4
  %i.rd = load <2 x float>, ptr %.sink.i327, align 4
  %i.re = fadd <2 x float> %i.rc, %i.rd
  store <2 x float> %i.re, ptr %.sink.i327, align 4
  %i.rf = load i32, ptr %i.ek, align 4, !tbaa !52
  %i.rg = icmp slt i32 %i.rf, 2
  %i.rh = load ptr, ptr %i.ej, align 8, !tbaa !60
  %i.ri = load i64, ptr %i.ei, align 8
  %i.rj = mul i64 %i.ri, %i.ra
  %.sink.idx.i328 = select i1 %i.rg, i64 0, i64 %i.rj
  %.sink.i329 = getelementptr inbounds nuw i8, ptr %i.rh, i64 %.sink.idx.i328 ; 2 uses
  %i.rk = fsub <2 x float> %i.qt, %i.qs
  %i.rl = load <2 x float>, ptr %.sink.i329, align 4
  %i.rm = fadd <2 x float> %i.rk, %i.rl
  store <2 x float> %i.rm, ptr %.sink.i329, align 4
  %i.rn = sub nsw i32 %.2222597, %i.t
  %i.ro = sext i32 %i.rn to i64                   ; 2 uses
  %i.rp = load ptr, ptr %5, align 8, !tbaa !40    ; 2 uses
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.rp, i64 %i.ro
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !25
  %i.rs = load i32, ptr %i.r, align 8, !tbaa !8
  %i.rt = add nsw i32 %i.rs, %i.rr
  %i.ru = sext i32 %.2222597 to i64               ; 3 uses
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.rp, i64 %i.ru
  store i32 %i.rt, ptr %i.rv, align 4, !tbaa !25
  %i.rw = load ptr, ptr %6, align 8, !tbaa !40    ; 2 uses
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %i.ro
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !25
  %i.rz = load i32, ptr %i.r, align 8, !tbaa !8
  %i.sa = add nsw i32 %i.rz, %i.ry
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %i.ru
  store i32 %i.sa, ptr %i.sb, align 4, !tbaa !25
  %.3223589 = add i32 %.2222597, 1                ; 2 uses
  br i1 %i.fb, label %.lr.ph594, label %._crit_edge595

.lr.ph594:                                        ; preds = %.loopexit
  %i.sc = sext i32 %i.ly to i64                   ; 4 uses
  %i.sd = sext i32 %i.ma to i64                   ; 4 uses
  %i.se = sext i32 %.3223589 to i64
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph594, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit370
  %indvars.iv672.a = phi i64 [ %i.ru, %.lr.ph594 ], [ %indvars.iv.next671, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit370 ] ; 3 uses
  %indvars.iv670.a = phi i64 [ 1, %.lr.ph594 ], [ %indvars.iv.next673, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit370 ] ; 5 uses
  %.3223.in590 = phi i64 [ %i.se, %.lr.ph594 ], [ %indvars.iv.next673.a, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit370 ] ; 3 uses
  %i.sf = add nsw i64 %indvars.iv670.a, -1        ; 7 uses
  %i.sg = trunc nuw nsw i64 %indvars.iv670.a to i32
  %i.sh = add nsw i32 %i.y, %i.sg                 ; 3 uses
  %i.si = add nsw i64 %i.sf, %i.ff                ; 4 uses
  %i.sj = add nsw i32 %i.sh, %i.k                 ; 2 uses
  %i.sk = load i32, ptr %i.ey, align 4, !tbaa !52 ; 5 uses
  %i.sl = icmp slt i32 %i.sk, 2                   ; 4 uses
  %i.sm = load ptr, ptr %i.ez, align 8, !tbaa !60 ; 8 uses
  %i.sn = load i64, ptr %i.fa, align 8            ; 8 uses
  br i1 %.not, label %bb.ah, label %bb.aq

bb.ah:                                            ; preds = %bb.ag
  %i.so = mul i64 %i.sn, %i.sf                    ; 3 uses
  %.sink.idx.i330 = select i1 %i.sl, i64 0, i64 %i.so
  %.sink.i331 = getelementptr inbounds nuw i8, ptr %i.sm, i64 %.sink.idx.i330
  %i.sp = getelementptr inbounds [8 x i8], ptr %.sink.i331, i64 %i.lw
  %i.sq = mul i64 %i.sn, %i.si                    ; 3 uses
  %.sink.idx.i332 = select i1 %i.sl, i64 0, i64 %i.sq
  %.sink.i333 = getelementptr inbounds nuw i8, ptr %i.sm, i64 %.sink.idx.i332
  %i.sr = getelementptr inbounds [8 x i8], ptr %.sink.i333, i64 %i.lz
  %i.ss = load <2 x float>, ptr %i.sp, align 4, !tbaa !61 ; 4 uses
  %i.st = shufflevector <2 x float> %i.ss, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.0.0.vec.extract.i.i334 = extractelement <2 x float> %i.ss, i64 0
  %i.su = load <2 x float>, ptr %i.sr, align 4    ; 4 uses
  %i.sv = fmul <2 x float> %i.su, %i.ss           ; 2 uses
  %i.sw = fmul <2 x float> %i.st, %i.su           ; 2 uses
  %shift = shufflevector <2 x float> %i.sv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.sv, %shift
  %i.sx = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %shift852 = shufflevector <2 x float> %i.sw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop853 = fadd <2 x float> %i.sw, %shift852
  %i.sy = extractelement <2 x float> %foldExtExtBinop853, i64 0 ; 3 uses
  %i.sz = fcmp uno float %i.sx, 0.000000e+00
  br i1 %i.sz, label %bb.ai, label %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit, !prof !62

bb.ai:                                            ; preds = %bb.ah
  %i.ta = fcmp uno float %i.sy, 0.000000e+00
  br i1 %i.ta, label %bb.aj, label %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit, !prof !62

bb.aj:                                            ; preds = %bb.ai
  %i.tb = extractelement <2 x float> %i.su, i64 0
  %i.tc = extractelement <2 x float> %i.su, i64 1
  %i.td = extractelement <2 x float> %i.ss, i64 1
  %i.te = tail call noundef <2 x float> @__mulsc3(float noundef %.sroa.0.0.vec.extract.i.i334, float noundef %i.td, float noundef %i.tb, float noundef %i.tc) #19 ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i336 = extractelement <2 x float> %i.te, i64 0
  %.sroa.0.4.vec.extract.i.i.i337 = extractelement <2 x float> %i.te, i64 1
  %.pre709.a = load i32, ptr %i.ey, align 4, !tbaa !52
  %.pre710.a = load ptr, ptr %i.ez, align 8, !tbaa !60
  %.pre711.a = load i64, ptr %i.fa, align 8       ; 3 uses
  %.pre718.a = mul i64 %.pre711.a, %i.sf
  %.pre719.a = mul i64 %.pre711.a, %i.si
  br label %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit

_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit: ; preds = %bb.ah, %bb.ai, %bb.aj
  %.pre-phi720 = phi i64 [ %i.sq, %bb.ah ], [ %i.sq, %bb.ai ], [ %.pre719.a, %bb.aj ]
  %.pre-phi = phi i64 [ %i.so, %bb.ah ], [ %i.so, %bb.ai ], [ %.pre718.a, %bb.aj ]
  %i.tf = phi i64 [ %i.sn, %bb.ah ], [ %i.sn, %bb.ai ], [ %.pre711.a, %bb.aj ] ; 2 uses
  %i.tg = phi ptr [ %i.sm, %bb.ah ], [ %i.sm, %bb.ai ], [ %.pre710.a, %bb.aj ] ; 4 uses
  %i.th = phi i32 [ %i.sk, %bb.ah ], [ %i.sk, %bb.ai ], [ %.pre709.a, %bb.aj ] ; 3 uses
  %i.ti = phi float [ %i.sx, %bb.ah ], [ %i.sx, %bb.ai ], [ %.sroa.0.0.vec.extract.i.i.i336, %bb.aj ]
  %i.tj = phi float [ %i.sy, %bb.ah ], [ %i.sy, %bb.ai ], [ %.sroa.0.4.vec.extract.i.i.i337, %bb.aj ]
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.ti, i64 0
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.tj, i64 1 ; 3 uses
  %i.tk = icmp slt i32 %i.th, 2                   ; 2 uses
  %.sink.idx.i338 = select i1 %i.tk, i64 0, i64 %.pre-phi
  %.sink.i339 = getelementptr inbounds nuw i8, ptr %i.tg, i64 %.sink.idx.i338
  %i.tl = getelementptr inbounds [8 x i8], ptr %.sink.i339, i64 %i.sc
  %.sink.idx.i340 = select i1 %i.tk, i64 0, i64 %.pre-phi720
  %.sink.i341 = getelementptr inbounds nuw i8, ptr %i.tg, i64 %.sink.idx.i340
  %i.tm = getelementptr inbounds [8 x i8], ptr %.sink.i341, i64 %i.sd
  %i.tn = load <2 x float>, ptr %i.tl, align 4, !tbaa !61 ; 4 uses
  %i.to = shufflevector <2 x float> %i.tn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.0.0.vec.extract.i.i342 = extractelement <2 x float> %i.tn, i64 0
  %i.tp = load <2 x float>, ptr %i.tm, align 4    ; 4 uses
  %i.tq = fmul <2 x float> %i.tp, %i.tn           ; 2 uses
  %i.tr = fmul <2 x float> %i.to, %i.tp           ; 2 uses
  %shift855 = shufflevector <2 x float> %i.tq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop856 = fsub <2 x float> %i.tq, %shift855
  %i.ts = extractelement <2 x float> %foldExtExtBinop856, i64 0 ; 3 uses
  %shift858 = shufflevector <2 x float> %i.tr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop859 = fadd <2 x float> %i.tr, %shift858
  %i.tt = extractelement <2 x float> %foldExtExtBinop859, i64 0 ; 3 uses
  %i.tu = fcmp uno float %i.ts, 0.000000e+00
  br i1 %i.tu, label %bb.ak, label %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit348, !prof !62

bb.ak:                                            ; preds = %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit
  %i.tv = fcmp uno float %i.tt, 0.000000e+00
  br i1 %i.tv, label %bb.al, label %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit348, !prof !62

bb.al:                                            ; preds = %bb.ak
  %i.tw = extractelement <2 x float> %i.tp, i64 0
  %i.tx = extractelement <2 x float> %i.tp, i64 1
  %i.ty = extractelement <2 x float> %i.tn, i64 1
  %i.tz = tail call noundef <2 x float> @__mulsc3(float noundef %.sroa.0.0.vec.extract.i.i342, float noundef %i.ty, float noundef %i.tw, float noundef %i.tx) #19 ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i346 = extractelement <2 x float> %i.tz, i64 0
  %.sroa.0.4.vec.extract.i.i.i347 = extractelement <2 x float> %i.tz, i64 1
  %.pre712.a = load i32, ptr %i.ey, align 4, !tbaa !52
  %.pre713 = load ptr, ptr %i.ez, align 8, !tbaa !60
  %.pre714 = load i64, ptr %i.fa, align 8
  br label %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit348

_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit348: ; preds = %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit, %bb.ak, %bb.al
  %i.ua = phi i64 [ %i.tf, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit ], [ %i.tf, %bb.ak ], [ %.pre714, %bb.al ] ; 2 uses
  %i.ub = phi ptr [ %i.tg, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit ], [ %i.tg, %bb.ak ], [ %.pre713, %bb.al ] ; 4 uses
  %i.uc = phi i32 [ %i.th, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit ], [ %i.th, %bb.ak ], [ %.pre712.a, %bb.al ] ; 3 uses
  %i.ud = phi float [ %i.ts, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit ], [ %i.ts, %bb.ak ], [ %.sroa.0.0.vec.extract.i.i.i346, %bb.al ]
  %i.ue = phi float [ %i.tt, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit ], [ %i.tt, %bb.ak ], [ %.sroa.0.4.vec.extract.i.i.i347, %bb.al ]
  %.sroa.0.0.vec.insert.i.i344 = insertelement <2 x float> poison, float %i.ud, i64 0
  %.sroa.0.4.vec.insert.i.i345 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i344, float %i.ue, i64 1 ; 3 uses
  %i.uf = icmp slt i32 %i.uc, 2                   ; 2 uses
  %i.ug = sext i32 %i.sh to i64                   ; 2 uses
  %i.uh = mul i64 %i.ua, %i.ug                    ; 3 uses
  %.sink.idx.i349 = select i1 %i.uf, i64 0, i64 %i.uh
  %.sink.i350 = getelementptr inbounds nuw i8, ptr %i.ub, i64 %.sink.idx.i349
  %i.ui = getelementptr inbounds [8 x i8], ptr %.sink.i350, i64 %i.lw
  %i.uj = sext i32 %i.sj to i64                   ; 2 uses
  %i.uk = mul i64 %i.ua, %i.uj                    ; 3 uses
  %.sink.idx.i351 = select i1 %i.uf, i64 0, i64 %i.uk
  %.sink.i352 = getelementptr inbounds nuw i8, ptr %i.ub, i64 %.sink.idx.i351
  %i.ul = getelementptr inbounds [8 x i8], ptr %.sink.i352, i64 %i.lz
  %i.um = load <2 x float>, ptr %i.ui, align 4, !tbaa !61 ; 4 uses
  %i.un = shufflevector <2 x float> %i.um, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.0.0.vec.extract.i.i353 = extractelement <2 x float> %i.um, i64 0
  %i.uo = load <2 x float>, ptr %i.ul, align 4    ; 4 uses
  %i.up = fmul <2 x float> %i.uo, %i.um           ; 2 uses
  %i.uq = fmul <2 x float> %i.un, %i.uo           ; 2 uses
  %shift861 = shufflevector <2 x float> %i.up, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop862 = fsub <2 x float> %i.up, %shift861
  %i.ur = extractelement <2 x float> %foldExtExtBinop862, i64 0 ; 3 uses
  %shift864 = shufflevector <2 x float> %i.uq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop865 = fadd <2 x float> %i.uq, %shift864
  %i.us = extractelement <2 x float> %foldExtExtBinop865, i64 0 ; 3 uses
  %i.ut = fcmp uno float %i.ur, 0.000000e+00
  br i1 %i.ut, label %bb.am, label %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit359, !prof !62

bb.am:                                            ; preds = %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit348
  %i.uu = fcmp uno float %i.us, 0.000000e+00
  br i1 %i.uu, label %bb.an, label %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit359, !prof !62

bb.an:                                            ; preds = %bb.am
  %i.uv = extractelement <2 x float> %i.uo, i64 0
  %i.uw = extractelement <2 x float> %i.uo, i64 1
  %i.ux = extractelement <2 x float> %i.um, i64 1
  %i.uy = tail call noundef <2 x float> @__mulsc3(float noundef %.sroa.0.0.vec.extract.i.i353, float noundef %i.ux, float noundef %i.uv, float noundef %i.uw) #19 ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i357 = extractelement <2 x float> %i.uy, i64 0
  %.sroa.0.4.vec.extract.i.i.i358 = extractelement <2 x float> %i.uy, i64 1
  %.pre715 = load i32, ptr %i.ey, align 4, !tbaa !52
  %.pre716 = load ptr, ptr %i.ez, align 8, !tbaa !60
  %.pre717 = load i64, ptr %i.fa, align 8         ; 2 uses
  %.pre721 = mul i64 %.pre717, %i.ug
  %.pre723 = mul i64 %.pre717, %i.uj
  br label %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit359

_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit359: ; preds = %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit348, %bb.am, %bb.an
  %.pre-phi724 = phi i64 [ %i.uk, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit348 ], [ %i.uk, %bb.am ], [ %.pre723, %bb.an ]
  %.pre-phi722 = phi i64 [ %i.uh, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit348 ], [ %i.uh, %bb.am ], [ %.pre721, %bb.an ]
  %i.uz = phi ptr [ %i.ub, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit348 ], [ %i.ub, %bb.am ], [ %.pre716, %bb.an ] ; 2 uses
  %i.va = phi i32 [ %i.uc, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit348 ], [ %i.uc, %bb.am ], [ %.pre715, %bb.an ]
  %i.vb = phi float [ %i.ur, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit348 ], [ %i.ur, %bb.am ], [ %.sroa.0.0.vec.extract.i.i.i357, %bb.an ]
  %i.vc = phi float [ %i.us, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit348 ], [ %i.us, %bb.am ], [ %.sroa.0.4.vec.extract.i.i.i358, %bb.an ]
  %.sroa.0.0.vec.insert.i.i355 = insertelement <2 x float> poison, float %i.vb, i64 0
  %.sroa.0.4.vec.insert.i.i356 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i355, float %i.vc, i64 1 ; 3 uses
  %i.vd = icmp slt i32 %i.va, 2                   ; 2 uses
  %.sink.idx.i360 = select i1 %i.vd, i64 0, i64 %.pre-phi722
  %.sink.i361 = getelementptr inbounds nuw i8, ptr %i.uz, i64 %.sink.idx.i360
  %i.ve = getelementptr inbounds [8 x i8], ptr %.sink.i361, i64 %i.sc
  %.sink.idx.i362 = select i1 %i.vd, i64 0, i64 %.pre-phi724
  %.sink.i363 = getelementptr inbounds nuw i8, ptr %i.uz, i64 %.sink.idx.i362
  %i.vf = getelementptr inbounds [8 x i8], ptr %.sink.i363, i64 %i.sd ; 2 uses
  %i.vg = load <2 x float>, ptr %i.ve, align 4, !tbaa !61 ; 4 uses
  %i.vh = load float, ptr %i.vf, align 4          ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vf, i64 4
  %i.vj = load float, ptr %i.vi, align 4          ; 2 uses
  %.sroa.0.0.vec.extract.i.i364 = extractelement <2 x float> %i.vg, i64 0
  %.sroa.0.4.vec.extract.i.i365 = extractelement <2 x float> %i.vg, i64 1
  %i.vk = insertelement <2 x float> poison, float %i.vj, i64 0
  %i.vl = shufflevector <2 x float> %i.vg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vm = shufflevector <2 x float> %i.vk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vn = fmul <2 x float> %i.vl, %i.vm           ; 2 uses
  %i.vo = insertelement <2 x float> poison, float %i.vh, i64 0
  %i.vp = shufflevector <2 x float> %i.vo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vq = fmul <2 x float> %i.vp, %i.vg           ; 2 uses
  %i.vr = fsub <2 x float> %i.vq, %i.vn           ; 2 uses
  %i.vs = fadd <2 x float> %i.vq, %i.vn           ; 2 uses
  %i.vt = shufflevector <2 x float> %i.vr, <2 x float> %i.vs, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.vu = extractelement <2 x float> %i.vr, i64 0
  %i.vv = fcmp uno float %i.vu, 0.000000e+00
  br i1 %i.vv, label %bb.ao, label %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit370, !prof !62

bb.ao:                                            ; preds = %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit359
  %i.vw = extractelement <2 x float> %i.vs, i64 1
  %i.vx = fcmp uno float %i.vw, 0.000000e+00
  br i1 %i.vx, label %bb.ap, label %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit370, !prof !62

bb.ap:                                            ; preds = %bb.ao
  %i.vy = tail call noundef <2 x float> @__mulsc3(float noundef %.sroa.0.0.vec.extract.i.i364, float noundef %.sroa.0.4.vec.extract.i.i365, float noundef %i.vh, float noundef %i.vj) #19
  br label %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit370

bb.aq:                                            ; preds = %bb.ag
  %i.vz = mul i64 %i.sn, %i.si                    ; 3 uses
  %.sink.idx.i371 = select i1 %i.sl, i64 0, i64 %i.vz
  %.sink.i372 = getelementptr inbounds nuw i8, ptr %i.sm, i64 %.sink.idx.i371
  %i.wa = getelementptr inbounds [8 x i8], ptr %.sink.i372, i64 %i.lw
  %i.wb = mul i64 %i.sn, %i.sf                    ; 3 uses
  %.sink.idx.i373 = select i1 %i.sl, i64 0, i64 %i.wb
  %.sink.i374 = getelementptr inbounds nuw i8, ptr %i.sm, i64 %.sink.idx.i373
  %i.wc = getelementptr inbounds [8 x i8], ptr %.sink.i374, i64 %i.lz
  %i.wd = load <2 x float>, ptr %i.wa, align 4, !tbaa !61 ; 4 uses
  %i.we = shufflevector <2 x float> %i.wd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.0.0.vec.extract.i.i375 = extractelement <2 x float> %i.wd, i64 0
  %i.wf = load <2 x float>, ptr %i.wc, align 4    ; 4 uses
  %i.wg = fmul <2 x float> %i.wf, %i.wd           ; 2 uses
  %i.wh = fmul <2 x float> %i.we, %i.wf           ; 2 uses
  %shift867 = shufflevector <2 x float> %i.wg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop868 = fsub <2 x float> %i.wg, %shift867
  %i.wi = extractelement <2 x float> %foldExtExtBinop868, i64 0 ; 3 uses
  %shift870 = shufflevector <2 x float> %i.wh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop871 = fadd <2 x float> %i.wh, %shift870
  %i.wj = extractelement <2 x float> %foldExtExtBinop871, i64 0 ; 3 uses
  %i.wk = fcmp uno float %i.wi, 0.000000e+00
  br i1 %i.wk, label %bb.ar, label %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit381, !prof !62

bb.ar:                                            ; preds = %bb.aq
  %i.wl = fcmp uno float %i.wj, 0.000000e+00
  br i1 %i.wl, label %bb.as, label %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit381, !prof !62

bb.as:                                            ; preds = %bb.ar
  %i.wm = extractelement <2 x float> %i.wf, i64 0
  %i.wn = extractelement <2 x float> %i.wf, i64 1
  %i.wo = extractelement <2 x float> %i.wd, i64 1
  %i.wp = tail call noundef <2 x float> @__mulsc3(float noundef %.sroa.0.0.vec.extract.i.i375, float noundef %i.wo, float noundef %i.wm, float noundef %i.wn) #19 ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i379 = extractelement <2 x float> %i.wp, i64 0
  %.sroa.0.4.vec.extract.i.i.i380 = extractelement <2 x float> %i.wp, i64 1
  %.pre700 = load i32, ptr %i.ey, align 4, !tbaa !52
  %.pre701 = load ptr, ptr %i.ez, align 8, !tbaa !60
  %.pre702 = load i64, ptr %i.fa, align 8         ; 3 uses
  %.pre725 = mul i64 %.pre702, %i.si
  %.pre727 = mul i64 %.pre702, %i.sf
  br label %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit381

_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit381: ; preds = %bb.aq, %bb.ar, %bb.as
  %.pre-phi728 = phi i64 [ %i.wb, %bb.aq ], [ %i.wb, %bb.ar ], [ %.pre727, %bb.as ]
  %.pre-phi726 = phi i64 [ %i.vz, %bb.aq ], [ %i.vz, %bb.ar ], [ %.pre725, %bb.as ]
  %i.wq = phi i64 [ %i.sn, %bb.aq ], [ %i.sn, %bb.ar ], [ %.pre702, %bb.as ] ; 2 uses
  %i.wr = phi ptr [ %i.sm, %bb.aq ], [ %i.sm, %bb.ar ], [ %.pre701, %bb.as ] ; 4 uses
  %i.ws = phi i32 [ %i.sk, %bb.aq ], [ %i.sk, %bb.ar ], [ %.pre700, %bb.as ] ; 3 uses
  %i.wt = phi float [ %i.wi, %bb.aq ], [ %i.wi, %bb.ar ], [ %.sroa.0.0.vec.extract.i.i.i379, %bb.as ]
  %i.wu = phi float [ %i.wj, %bb.aq ], [ %i.wj, %bb.ar ], [ %.sroa.0.4.vec.extract.i.i.i380, %bb.as ]
  %.sroa.0.0.vec.insert.i.i377 = insertelement <2 x float> poison, float %i.wt, i64 0
  %.sroa.0.4.vec.insert.i.i378 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i377, float %i.wu, i64 1 ; 3 uses
  %i.wv = icmp slt i32 %i.ws, 2                   ; 2 uses
  %.sink.idx.i382 = select i1 %i.wv, i64 0, i64 %.pre-phi726
  %.sink.i383 = getelementptr inbounds nuw i8, ptr %i.wr, i64 %.sink.idx.i382
  %i.ww = getelementptr inbounds [8 x i8], ptr %.sink.i383, i64 %i.sc
  %.sink.idx.i384 = select i1 %i.wv, i64 0, i64 %.pre-phi728
  %.sink.i385 = getelementptr inbounds nuw i8, ptr %i.wr, i64 %.sink.idx.i384
  %i.wx = getelementptr inbounds [8 x i8], ptr %.sink.i385, i64 %i.sd
  %i.wy = load <2 x float>, ptr %i.ww, align 4, !tbaa !61 ; 4 uses
  %i.wz = shufflevector <2 x float> %i.wy, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.0.0.vec.extract.i.i386 = extractelement <2 x float> %i.wy, i64 0
  %i.xa = load <2 x float>, ptr %i.wx, align 4    ; 4 uses
  %i.xb = fmul <2 x float> %i.xa, %i.wy           ; 2 uses
  %i.xc = fmul <2 x float> %i.wz, %i.xa           ; 2 uses
  %shift873 = shufflevector <2 x float> %i.xb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop874 = fsub <2 x float> %i.xb, %shift873
  %i.xd = extractelement <2 x float> %foldExtExtBinop874, i64 0 ; 3 uses
  %shift876 = shufflevector <2 x float> %i.xc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop877 = fadd <2 x float> %i.xc, %shift876
  %i.xe = extractelement <2 x float> %foldExtExtBinop877, i64 0 ; 3 uses
  %i.xf = fcmp uno float %i.xd, 0.000000e+00
  br i1 %i.xf, label %bb.at, label %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit392, !prof !62

bb.at:                                            ; preds = %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit381
  %i.xg = fcmp uno float %i.xe, 0.000000e+00
  br i1 %i.xg, label %bb.au, label %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit392, !prof !62

bb.au:                                            ; preds = %bb.at
  %i.xh = extractelement <2 x float> %i.xa, i64 0
  %i.xi = extractelement <2 x float> %i.xa, i64 1
  %i.xj = extractelement <2 x float> %i.wy, i64 1
  %i.xk = tail call noundef <2 x float> @__mulsc3(float noundef %.sroa.0.0.vec.extract.i.i386, float noundef %i.xj, float noundef %i.xh, float noundef %i.xi) #19 ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i390 = extractelement <2 x float> %i.xk, i64 0
  %.sroa.0.4.vec.extract.i.i.i391 = extractelement <2 x float> %i.xk, i64 1
  %.pre703 = load i32, ptr %i.ey, align 4, !tbaa !52
  %.pre704 = load ptr, ptr %i.ez, align 8, !tbaa !60
  %.pre705 = load i64, ptr %i.fa, align 8
  br label %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit392

_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit392: ; preds = %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit381, %bb.at, %bb.au
  %i.xl = phi i64 [ %i.wq, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit381 ], [ %i.wq, %bb.at ], [ %.pre705, %bb.au ] ; 2 uses
  %i.xm = phi ptr [ %i.wr, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit381 ], [ %i.wr, %bb.at ], [ %.pre704, %bb.au ] ; 4 uses
  %i.xn = phi i32 [ %i.ws, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit381 ], [ %i.ws, %bb.at ], [ %.pre703, %bb.au ] ; 3 uses
  %i.xo = phi float [ %i.xd, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit381 ], [ %i.xd, %bb.at ], [ %.sroa.0.0.vec.extract.i.i.i390, %bb.au ]
  %i.xp = phi float [ %i.xe, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit381 ], [ %i.xe, %bb.at ], [ %.sroa.0.4.vec.extract.i.i.i391, %bb.au ]
  %.sroa.0.0.vec.insert.i.i388 = insertelement <2 x float> poison, float %i.xo, i64 0
  %.sroa.0.4.vec.insert.i.i389 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i388, float %i.xp, i64 1 ; 3 uses
  %i.xq = icmp slt i32 %i.xn, 2                   ; 2 uses
  %i.xr = sext i32 %i.sj to i64                   ; 2 uses
  %i.xs = mul i64 %i.xl, %i.xr                    ; 3 uses
  %.sink.idx.i393 = select i1 %i.xq, i64 0, i64 %i.xs
  %.sink.i394 = getelementptr inbounds nuw i8, ptr %i.xm, i64 %.sink.idx.i393
  %i.xt = getelementptr inbounds [8 x i8], ptr %.sink.i394, i64 %i.lw
  %i.xu = sext i32 %i.sh to i64                   ; 2 uses
  %i.xv = mul i64 %i.xl, %i.xu                    ; 3 uses
  %.sink.idx.i395 = select i1 %i.xq, i64 0, i64 %i.xv
  %.sink.i396 = getelementptr inbounds nuw i8, ptr %i.xm, i64 %.sink.idx.i395
  %i.xw = getelementptr inbounds [8 x i8], ptr %.sink.i396, i64 %i.lz
  %i.xx = load <2 x float>, ptr %i.xt, align 4, !tbaa !61 ; 4 uses
  %i.xy = shufflevector <2 x float> %i.xx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.0.0.vec.extract.i.i397 = extractelement <2 x float> %i.xx, i64 0
  %i.xz = load <2 x float>, ptr %i.xw, align 4    ; 4 uses
  %i.ya = fmul <2 x float> %i.xz, %i.xx           ; 2 uses
  %i.yb = fmul <2 x float> %i.xy, %i.xz           ; 2 uses
  %shift879 = shufflevector <2 x float> %i.ya, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop880 = fsub <2 x float> %i.ya, %shift879
  %i.yc = extractelement <2 x float> %foldExtExtBinop880, i64 0 ; 3 uses
  %shift882 = shufflevector <2 x float> %i.yb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop883 = fadd <2 x float> %i.yb, %shift882
  %i.yd = extractelement <2 x float> %foldExtExtBinop883, i64 0 ; 3 uses
  %i.ye = fcmp uno float %i.yc, 0.000000e+00
  br i1 %i.ye, label %bb.av, label %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit403, !prof !62

bb.av:                                            ; preds = %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit392
  %i.yf = fcmp uno float %i.yd, 0.000000e+00
  br i1 %i.yf, label %bb.aw, label %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit403, !prof !62

bb.aw:                                            ; preds = %bb.av
  %i.yg = extractelement <2 x float> %i.xz, i64 0
  %i.yh = extractelement <2 x float> %i.xz, i64 1
  %i.yi = extractelement <2 x float> %i.xx, i64 1
  %i.yj = tail call noundef <2 x float> @__mulsc3(float noundef %.sroa.0.0.vec.extract.i.i397, float noundef %i.yi, float noundef %i.yg, float noundef %i.yh) #19 ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i401 = extractelement <2 x float> %i.yj, i64 0
  %.sroa.0.4.vec.extract.i.i.i402 = extractelement <2 x float> %i.yj, i64 1
  %.pre706 = load i32, ptr %i.ey, align 4, !tbaa !52
  %.pre707 = load ptr, ptr %i.ez, align 8, !tbaa !60
  %.pre708 = load i64, ptr %i.fa, align 8         ; 2 uses
  %.pre729 = mul i64 %.pre708, %i.xr
  %.pre731 = mul i64 %.pre708, %i.xu
  br label %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit403

_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit403: ; preds = %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit392, %bb.av, %bb.aw
  %.pre-phi732 = phi i64 [ %i.xv, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit392 ], [ %i.xv, %bb.av ], [ %.pre731, %bb.aw ]
  %.pre-phi730 = phi i64 [ %i.xs, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit392 ], [ %i.xs, %bb.av ], [ %.pre729, %bb.aw ]
  %i.yk = phi ptr [ %i.xm, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit392 ], [ %i.xm, %bb.av ], [ %.pre707, %bb.aw ] ; 2 uses
  %i.yl = phi i32 [ %i.xn, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit392 ], [ %i.xn, %bb.av ], [ %.pre706, %bb.aw ]
  %i.ym = phi float [ %i.yc, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit392 ], [ %i.yc, %bb.av ], [ %.sroa.0.0.vec.extract.i.i.i401, %bb.aw ]
  %i.yn = phi float [ %i.yd, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit392 ], [ %i.yd, %bb.av ], [ %.sroa.0.4.vec.extract.i.i.i402, %bb.aw ]
  %.sroa.0.0.vec.insert.i.i399 = insertelement <2 x float> poison, float %i.ym, i64 0
  %.sroa.0.4.vec.insert.i.i400 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i399, float %i.yn, i64 1 ; 3 uses
  %i.yo = icmp slt i32 %i.yl, 2                   ; 2 uses
  %.sink.idx.i404 = select i1 %i.yo, i64 0, i64 %.pre-phi730
  %.sink.i405 = getelementptr inbounds nuw i8, ptr %i.yk, i64 %.sink.idx.i404
  %i.yp = getelementptr inbounds [8 x i8], ptr %.sink.i405, i64 %i.sc
  %.sink.idx.i406 = select i1 %i.yo, i64 0, i64 %.pre-phi732
  %.sink.i407 = getelementptr inbounds nuw i8, ptr %i.yk, i64 %.sink.idx.i406
  %i.yq = getelementptr inbounds [8 x i8], ptr %.sink.i407, i64 %i.sd ; 2 uses
  %i.yr = load <2 x float>, ptr %i.yp, align 4, !tbaa !61 ; 4 uses
  %i.ys = load float, ptr %i.yq, align 4          ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yq, i64 4
  %i.yu = load float, ptr %i.yt, align 4          ; 2 uses
  %.sroa.0.0.vec.extract.i.i408 = extractelement <2 x float> %i.yr, i64 0
  %.sroa.0.4.vec.extract.i.i409 = extractelement <2 x float> %i.yr, i64 1
  %i.yv = insertelement <2 x float> poison, float %i.yu, i64 0
  %i.yw = shufflevector <2 x float> %i.yr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.yx = shufflevector <2 x float> %i.yv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yy = fmul <2 x float> %i.yw, %i.yx           ; 2 uses
  %i.yz = insertelement <2 x float> poison, float %i.ys, i64 0
  %i.za = shufflevector <2 x float> %i.yz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zb = fmul <2 x float> %i.za, %i.yr           ; 2 uses
  %i.zc = fsub <2 x float> %i.zb, %i.yy           ; 2 uses
  %i.zd = fadd <2 x float> %i.zb, %i.yy           ; 2 uses
  %i.ze = shufflevector <2 x float> %i.zc, <2 x float> %i.zd, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.zf = extractelement <2 x float> %i.zc, i64 0
  %i.zg = fcmp uno float %i.zf, 0.000000e+00
  br i1 %i.zg, label %bb.ax, label %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit370, !prof !62

bb.ax:                                            ; preds = %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit403
  %i.zh = extractelement <2 x float> %i.zd, i64 1
  %i.zi = fcmp uno float %i.zh, 0.000000e+00
  br i1 %i.zi, label %bb.ay, label %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit370, !prof !62

bb.ay:                                            ; preds = %bb.ax
  %i.zj = tail call noundef <2 x float> @__mulsc3(float noundef %.sroa.0.0.vec.extract.i.i408, float noundef %.sroa.0.4.vec.extract.i.i409, float noundef %i.ys, float noundef %i.yu) #19
  br label %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit370

_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit370: ; preds = %bb.ay, %bb.ax, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit403, %bb.ap, %bb.ao, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit359
  %.sroa.0453.0 = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i, %bb.ap ], [ %.sroa.0.4.vec.insert.i.i, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit359 ], [ %.sroa.0.4.vec.insert.i.i, %bb.ao ], [ %.sroa.0.4.vec.insert.i.i378, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit403 ], [ %.sroa.0.4.vec.insert.i.i378, %bb.ax ], [ %.sroa.0.4.vec.insert.i.i378, %bb.ay ]
  %.sroa.0450.0 = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i345, %bb.ap ], [ %.sroa.0.4.vec.insert.i.i345, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit359 ], [ %.sroa.0.4.vec.insert.i.i345, %bb.ao ], [ %.sroa.0.4.vec.insert.i.i389, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit403 ], [ %.sroa.0.4.vec.insert.i.i389, %bb.ax ], [ %.sroa.0.4.vec.insert.i.i389, %bb.ay ]
  %.sroa.0447.0 = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i356, %bb.ap ], [ %.sroa.0.4.vec.insert.i.i356, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit359 ], [ %.sroa.0.4.vec.insert.i.i356, %bb.ao ], [ %.sroa.0.4.vec.insert.i.i400, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit403 ], [ %.sroa.0.4.vec.insert.i.i400, %bb.ax ], [ %.sroa.0.4.vec.insert.i.i400, %bb.ay ]
  %i.zk = phi <2 x float> [ %i.vy, %bb.ap ], [ %i.vt, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit359 ], [ %i.vt, %bb.ao ], [ %i.ze, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit403 ], [ %i.ze, %bb.ax ], [ %i.zj, %bb.ay ]
  %i.zl = add nsw i64 %indvars.iv670.a, %i.qu
  %i.zm = load i32, ptr %i.ek, align 4, !tbaa !52
  %i.zn = icmp slt i32 %i.zm, 2                   ; 4 uses
  %i.zo = load ptr, ptr %i.ej, align 8, !tbaa !60 ; 4 uses
  %i.zp = load i64, ptr %i.ei, align 8            ; 4 uses
  %i.zq = mul i64 %i.zp, %i.zl
  %.sink.idx.i415 = select i1 %i.zn, i64 0, i64 %i.zq
  %.sink.i416 = getelementptr inbounds nuw i8, ptr %i.zo, i64 %.sink.idx.i415
  %i.zr = add nsw i64 %i.sf, %i.qu
  %i.zs = mul i64 %i.zp, %i.zr
  %.sink.idx.i417 = select i1 %i.zn, i64 0, i64 %i.zs
  %.sink.i418 = getelementptr inbounds nuw i8, ptr %i.zo, i64 %.sink.idx.i417
  %i.zt = add nsw i64 %i.sf, %i.ra
  %i.zu = mul i64 %i.zp, %i.zt
  %.sink.idx.i419 = select i1 %i.zn, i64 0, i64 %i.zu
  %.sink.i420 = getelementptr inbounds nuw i8, ptr %i.zo, i64 %.sink.idx.i419
  %i.zv = add nuw nsw i64 %indvars.iv670.a, %i.ra
  %i.zw = mul i64 %i.zp, %i.zv
  %.sink.idx.i421 = select i1 %i.zn, i64 0, i64 %i.zw
  %.sink.i422 = getelementptr inbounds nuw i8, ptr %i.zo, i64 %.sink.idx.i421 ; 2 uses
  %i.zx = fadd <2 x float> %.sroa.0453.0, zeroinitializer
  %i.zy = fsub <2 x float> %i.zx, %.sroa.0450.0
  %i.zz = fsub <2 x float> %i.zy, %.sroa.0447.0
  %i.aaa = fadd <2 x float> %i.zk, %i.zz
  %i.aab = load <2 x float>, ptr %.sink.i416, align 4
  %i.aac = fadd <2 x float> %i.aab, zeroinitializer
  %i.aad = load <2 x float>, ptr %.sink.i418, align 4
  %i.aae = fsub <2 x float> %i.aac, %i.aad
  %i.aaf = fadd <2 x float> %i.aaa, %i.aae
  %i.aag = load <2 x float>, ptr %.sink.i420, align 4
  %i.aah = fadd <2 x float> %i.aag, %i.aaf
  %i.aai = load <2 x float>, ptr %.sink.i422, align 4
  %i.aaj = fadd <2 x float> %i.aah, %i.aai
  store <2 x float> %i.aaj, ptr %.sink.i422, align 4
  %i.aak = load ptr, ptr %5, align 8, !tbaa !40   ; 2 uses
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %i.aak, i64 %indvars.iv672.a
  %i.aam = load i32, ptr %i.aal, align 4, !tbaa !25
  %i.aan = add nsw i32 %i.aam, 1
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.aak, i64 %.3223.in590
  store i32 %i.aan, ptr %i.aao, align 4, !tbaa !25
  %i.aap = load ptr, ptr %6, align 8, !tbaa !40   ; 2 uses
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %i.aap, i64 %indvars.iv672.a
  %i.aar = load i32, ptr %i.aaq, align 4, !tbaa !25
  %i.aas = add nsw i32 %i.aar, 1
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %i.aap, i64 %.3223.in590
  store i32 %i.aas, ptr %i.aat, align 4, !tbaa !25
  %indvars.iv.next673 = add nuw nsw i64 %indvars.iv670.a, 1 ; 2 uses
  %indvars.iv.next673.a = add nsw i64 %.3223.in590, 1 ; 2 uses
  %indvars.iv.next671 = add nsw i64 %indvars.iv672.a, 1
  %exitcond678.not = icmp eq i64 %indvars.iv.next673, %wide.trip.count677
  br i1 %exitcond678.not, label %._crit_edge595.loopexit, label %bb.ag, !llvm.loop !72

._crit_edge595.loopexit:                          ; preds = %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit370
  %i.aau = trunc nsw i64 %indvars.iv.next673.a to i32
  br label %._crit_edge595

._crit_edge595:                                   ; preds = %._crit_edge595.loopexit, %.loopexit
  %.3223.lcssa = phi i32 [ %.3223589, %.loopexit ], [ %i.aau, %._crit_edge595.loopexit ]
  %indvars.iv.next680 = add nuw nsw i64 %indvars.iv679, 1 ; 2 uses
  %exitcond683.not = icmp eq i64 %indvars.iv.next680, %wide.trip.count682
  br i1 %exitcond683.not, label %.preheader, label %bb.v, !llvm.loop !73

bb.az:                                            ; preds = %.lr.ph601, %bb.az
  %indvars.iv684 = phi i64 [ 0, %.lr.ph601 ], [ %indvars.iv.next685, %bb.az ] ; 4 uses
  %i.aav = load i32, ptr %i.ek, align 4, !tbaa !52
  %i.aaw = icmp slt i32 %i.aav, 2
  %i.aax = load ptr, ptr %i.ej, align 8, !tbaa !60
  %i.aay = load i64, ptr %i.ei, align 8
  %i.aaz = mul i64 %i.aay, %indvars.iv684
  %.sink.idx.i423 = select i1 %i.aaw, i64 0, i64 %i.aaz
  %.sink.i424 = getelementptr inbounds nuw i8, ptr %i.aax, i64 %.sink.idx.i423
  %i.aba = load ptr, ptr %5, align 8, !tbaa !40
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %i.aba, i64 %indvars.iv684
  %i.abc = load i32, ptr %i.abb, align 4, !tbaa !25
  %i.abd = load ptr, ptr %6, align 8, !tbaa !40
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %i.abd, i64 %indvars.iv684
  %i.abf = load i32, ptr %i.abe, align 4, !tbaa !25
  %i.abg = load i32, ptr %i.lt, align 4, !tbaa !52
  %i.abh = icmp slt i32 %i.abg, 2
  %i.abi = load ptr, ptr %i.lu, align 8, !tbaa !60
  %i.abj = load i64, ptr %i.lv, align 8
  %i.abk = sext i32 %i.abc to i64
  %i.abl = mul i64 %i.abj, %i.abk
  %.sink.idx.i425 = select i1 %i.abh, i64 0, i64 %i.abl
  %.sink.i426 = getelementptr inbounds nuw i8, ptr %i.abi, i64 %.sink.idx.i425
  %i.abm = sext i32 %i.abf to i64
  %i.abn = getelementptr inbounds [8 x i8], ptr %.sink.i426, i64 %i.abm
  %i.abo = load i64, ptr %.sink.i424, align 4, !tbaa !61
  store i64 %i.abo, ptr %i.abn, align 4, !tbaa !61
  %indvars.iv.next685 = add nuw nsw i64 %indvars.iv684, 1 ; 2 uses
  %exitcond688.not = icmp eq i64 %indvars.iv.next685, %wide.trip.count687
  br i1 %exitcond688.not, label %._crit_edge602, label %bb.az, !llvm.loop !74

._crit_edge602:                                   ; preds = %bb.az, %.preheader
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: mustprogress uwtable
define void @_ZN2cv8ximgproc20covarianceEstimationERKNS_11_InputArrayERKNS_12_OutputArrayEii(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 15 uses
  %10 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %12 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %13 = alloca [2 x %"class.cv::Mat"], align 16   ; 11 uses
  %14 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %15 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %16 = alloca %"class.cv::ximgproc::EstimateCovariance", align 8 ; 9 uses
  %17 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %18 = alloca %"class.cv::Mat", align 8          ; 4 uses
  %19 = alloca %"class.cv::Mat", align 8          ; 4 uses
  %i.a = tail call noundef i32 @_ZNK2cv11_InputArray8channelsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  %i.b = icmp slt i32 %i.a, 3
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv8ximgproc20covarianceEstimationERKNS_11_InputArrayERKNS_12_OutputArrayEii, ptr noundef nonnull @.str.1, i32 noundef 348) #20
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load ptr, ptr %6, align 8, !tbaa !75     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.h = load i64, ptr %i.f, align 8, !tbaa !61
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.d, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.at

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.j = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.g
  %i.k = icmp eq i32 %i.j, 65536
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.noexc
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !29, !noalias !79
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %i.m)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.w

bb.i:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.w

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.h, %bb.i
  %i.n = load i32, ptr %9, align 8, !tbaa !82
  %i.o = and i32 %i.n, 4064
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.j, label %bb.aa

bb.j:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 0, ptr %i.r, align 8
  store i32 33619968, ptr %10, align 8, !tbaa !26
  store ptr %9, ptr %i.q, align 8, !tbaa !29
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef 37, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.k unwind label %bb.x

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.t = load i32, ptr %i.s, align 8, !tbaa !83   ; 6 uses
  %i.u = icmp slt i32 %i.t, 3
  br i1 %i.u, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc49 unwind label %bb.y

.noexc49:                                         ; preds = %bb.l
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.3, i32 noundef 109) #20
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.noexc49
  unreachable

bb.n:                                             ; preds = %.noexc49
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %4, align 8, !tbaa !75     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.n
  %i.z = load i64, ptr %i.x, align 8, !tbaa !61
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %.body

bb.o:                                             ; preds = %bb.k
  %i.ab = icmp sgt i32 %i.t, 0
  br i1 %i.ab, label %bb.p, label %.thread.i

.thread.i:                                        ; preds = %bb.o
  %i.ac = icmp eq i32 %i.t, 0
  %i.ad = zext i1 %i.ac to i32
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 84
  %i.af = icmp eq i32 %i.t, 2
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %9, i64 88
  %.sroa.gep.val = load i32, ptr %.sroa.gep, align 8
  %.val = load i32, ptr %i.ae, align 4            ; 2 uses
end_hunk_0
