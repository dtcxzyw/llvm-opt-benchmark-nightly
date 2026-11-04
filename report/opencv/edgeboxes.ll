Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/edgeboxes?download=true
inline.NumInlined: 1391
inline.NumDeleted: 525
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN2cv8ximgproc13EdgeBoxesImpl8scoreBoxERNS0_3BoxE:bb.a

bb.q:                                             ; preds = %bb.p
  %i.ho = sext i32 %.6304 to i64                  ; 2 uses
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ho
  store i32 %i.hj, ptr %i.hp, align 4, !tbaa !96
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ho
  store float 1.000000e+00, ptr %i.hq, align 4, !tbaa !66
  store i32 %i.j, ptr %i.hm, align 4, !tbaa !96
  %i.hr = add nsw i32 %.6304, 1
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.hl
  store i32 %.6304, ptr %i.hs, align 4, !tbaa !96
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.p, %bb.q
  %.7 = phi i32 [ %i.hr, %bb.q ], [ %.6304, %bb.p ], [ %.6304, %bb.o ] ; 2 uses
  %indvars.iv.next337 = add nsw i64 %indvars.iv336, 1 ; 2 uses
  %lftr.wideiv339 = trunc i64 %indvars.iv.next337 to i32
  %exitcond340.not = icmp eq i32 %i.hb, %lftr.wideiv339
  br i1 %exitcond340.not, label %.preheader284, label %bb.o, !llvm.loop !183

.preheader:                                       ; preds = %._crit_edge313
  %i.ht = icmp sgt i32 %.9.lcssa, 0
  br i1 %i.ht, label %.lr.ph322, label %._crit_edge323

.lr.ph322:                                        ; preds = %.preheader
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !70
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 280
  %wide.trip.count348 = zext nneg i32 %.9.lcssa to i64
  %i.hx = load ptr, ptr %i.hw, align 8
  br label %bb.ab

bb.s:                                             ; preds = %.lr.ph318, %._crit_edge313
  %.8317 = phi i32 [ %.6.lcssa, %.lr.ph318 ], [ %.9.lcssa, %._crit_edge313 ] ; 2 uses
  %storemerge220316 = phi i32 [ 0, %.lr.ph318 ], [ %i.jr, %._crit_edge313 ] ; 3 uses
  %i.hy = sext i32 %storemerge220316 to i64       ; 2 uses
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.hy
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !66
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.hy
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !96
  %i.id = sext i32 %i.ic to i64                   ; 2 uses
  %i.ie = getelementptr inbounds nuw [24 x i8], ptr %i.he, i64 %i.id ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !98
  %i.ih = load ptr, ptr %i.ie, align 8, !tbaa !77 ; 2 uses
  %i.ii = ptrtoint ptr %i.ig to i64
  %i.ij = ptrtoint ptr %i.ih to i64
  %i.ik = sub i64 %i.ii, %i.ij
  %i.il = lshr exact i64 %i.ik, 2                 ; 2 uses
  %i.im = trunc i64 %i.il to i32
  %i.in = icmp sgt i32 %i.im, 0
  br i1 %i.in, label %.lr.ph312, label %._crit_edge313

.lr.ph312:                                        ; preds = %bb.s
  %i.io = getelementptr inbounds nuw [24 x i8], ptr %i.hh, i64 %i.id
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !68
  %wide.trip.count = and i64 %i.il, 2147483647
  %i.iq = load ptr, ptr %i.hg, align 8
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph312, %bb.aa
  %indvars.iv341 = phi i64 [ 0, %.lr.ph312 ], [ %indvars.iv.next342, %bb.aa ] ; 3 uses
  %.9310 = phi i32 [ %.8317, %.lr.ph312 ], [ %.11, %bb.aa ] ; 8 uses
  %.0279308 = phi i32 [ %storemerge220316, %.lr.ph312 ], [ %.1280, %bb.aa ] ; 6 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %indvars.iv341
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !96 ; 2 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %indvars.iv341
  %i.iu = load float, ptr %i.it, align 4, !tbaa !66
  %i.iv = fmul float %i.ia, %i.iu                 ; 4 uses
  %i.iw = fcmp olt float %i.iv, 5.000000e-02
  br i1 %i.iw, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ix = sext i32 %i.is to i64                   ; 4 uses
  %i.iy = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ix ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !96
  %i.ja = icmp eq i32 %i.iz, %i.j
  br i1 %i.ja, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ix
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !96 ; 2 uses
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.jd ; 2 uses
  %i.jf = load float, ptr %i.je, align 4, !tbaa !66
  %i.jg = fcmp ogt float %i.iv, %i.jf
  br i1 %i.jg, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  store float %i.iv, ptr %i.je, align 4, !tbaa !66
  %i.jh = add nsw i32 %i.jc, -1
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.jh, i32 %.0279308)
  br label %bb.aa

bb.x:                                             ; preds = %bb.u
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %i.ix ; 2 uses
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !102 ; 2 uses
  %.not227 = icmp slt i32 %i.jj, %i.al
  %.not228 = icmp sgt i32 %i.jj, %i.ai
  %or.cond = select i1 %.not227, i1 true, i1 %.not228
  br i1 %or.cond, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !101 ; 2 uses
  %.not229 = icmp slt i32 %i.jl, %i.y
  %.not230 = icmp sgt i32 %i.jl, %i.v
  %or.cond281 = select i1 %.not229, i1 true, i1 %.not230
  br i1 %or.cond281, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.jm = zext nneg i32 %.9310 to i64             ; 2 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.jm
  store i32 %i.is, ptr %i.jn, align 4, !tbaa !96
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.jm
  store float %i.iv, ptr %i.jo, align 4, !tbaa !66
  store i32 %i.j, ptr %i.iy, align 4, !tbaa !96
  %i.jp = add nuw nsw i32 %.9310, 1
  %i.jq = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ix
  store i32 %.9310, ptr %i.jq, align 4, !tbaa !96
  br label %bb.aa

bb.aa:                                            ; preds = %bb.w, %bb.v, %bb.z, %bb.y, %bb.x, %bb.t
  %.1280 = phi i32 [ %.0279308, %bb.t ], [ %.sroa.speculated, %bb.w ], [ %.0279308, %bb.v ], [ %.0279308, %bb.x ], [ %.0279308, %bb.z ], [ %.0279308, %bb.y ] ; 2 uses
  %.11 = phi i32 [ %.9310, %bb.t ], [ %.9310, %bb.w ], [ %.9310, %bb.v ], [ %.9310, %bb.x ], [ %i.jp, %bb.z ], [ %.9310, %bb.y ] ; 2 uses
  %indvars.iv.next342 = add nuw nsw i64 %indvars.iv341, 1 ; 2 uses
  %exitcond344.not = icmp eq i64 %indvars.iv.next342, %wide.trip.count
  br i1 %exitcond344.not, label %._crit_edge313, label %bb.t, !llvm.loop !184

._crit_edge313:                                   ; preds = %bb.aa, %bb.s
  %.0279.lcssa = phi i32 [ %storemerge220316, %bb.s ], [ %.1280, %bb.aa ]
  %.9.lcssa = phi i32 [ %.8317, %bb.s ], [ %.11, %bb.aa ] ; 4 uses
  %i.jr = add nsw i32 %.0279.lcssa, 1             ; 2 uses
  %i.js = icmp slt i32 %i.jr, %.9.lcssa
  br i1 %i.js, label %bb.s, label %.preheader, !llvm.loop !185

bb.ab:                                            ; preds = %.lr.ph322, %bb.ae
  %indvars.iv345 = phi i64 [ 0, %.lr.ph322 ], [ %indvars.iv.next346, %bb.ae ] ; 3 uses
  %.0199321 = phi float [ %i.cw, %.lr.ph322 ], [ %.1200, %bb.ae ] ; 3 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv345
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !96
  %i.jv = sext i32 %i.ju to i64                   ; 2 uses
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.jv ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !102 ; 2 uses
  %.not223 = icmp slt i32 %i.jx, %i.al
  %.not224 = icmp sgt i32 %i.jx, %i.ai
  %or.cond282 = select i1 %.not223, i1 true, i1 %.not224
  br i1 %or.cond282, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 4
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !101 ; 2 uses
  %.not225 = icmp slt i32 %i.jz, %i.y
  %.not226 = icmp sgt i32 %i.jz, %i.v
  %or.cond283 = select i1 %.not225, i1 true, i1 %.not226
  br i1 %or.cond283, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv345
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !66
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.jv
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !66
  %i.ke = fneg float %i.kb
  %i.kf = tail call float @llvm.fmuladd.f32(float %i.ke, float %i.kd, float %.0199321)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ab, %bb.ac, %bb.ad
  %.1200 = phi float [ %i.kf, %bb.ad ], [ %.0199321, %bb.ab ], [ %.0199321, %bb.ac ] ; 2 uses
  %indvars.iv.next346 = add nuw nsw i64 %indvars.iv345, 1 ; 2 uses
  %exitcond349.not = icmp eq i64 %indvars.iv.next346, %wide.trip.count348
  br i1 %exitcond349.not, label %._crit_edge323.loopexit, label %bb.ab, !llvm.loop !186

._crit_edge323.loopexit:                          ; preds = %bb.ae
  %.pre356 = fmul float %i.dc, %.1200
  br label %._crit_edge323

._crit_edge323:                                   ; preds = %.preheader284, %._crit_edge323.loopexit, %.preheader
  %.pre-phi357 = phi float [ %.pre356, %._crit_edge323.loopexit ], [ %i.dd, %.preheader ], [ %i.dd, %.preheader284 ] ; 2 uses
  %i.kg = load float, ptr %i.df, align 4, !tbaa !56
  %i.kh = fcmp olt float %.pre-phi357, %i.kg
  %spec.store.select = select i1 %i.kh, float 0.000000e+00, float %.pre-phi357
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %._crit_edge323
  %storemerge222 = phi float [ %spec.store.select, %._crit_edge323 ], [ 0.000000e+00, %bb.a ]
  store float %storemerge222, ptr %i.de, align 4, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2cv8ximgproc13EdgeBoxesImpl9refineBoxERNS0_3BoxE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(2132) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(20) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %2 = alloca %"struct.cv::ximgproc::Box", align 4 ; 28 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.b = load <1 x float>, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load <2 x i32>, ptr %i.c, align 4, !tbaa !96
  %i.e = sitofp <2 x i32> %i.d to <2 x float>
  %i.f = shufflevector <1 x float> %i.b, <1 x float> poison, <2 x i32> zeroinitializer
  %i.g = fmul <2 x float> %i.f, %i.e
  %i.h = fptosi <2 x float> %i.g to <2 x i32>     ; 2 uses
  %3 = icmp slt <2 x i32> %i.h, splat (i32 6)     ; 2 uses
  %4 = extractelement <2 x i1> %3, i64 0
  %5 = extractelement <2 x i1> %3, i64 1
  %or.cond49 = select i1 %5, i1 %4, i1 false
  br i1 %or.cond49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.r
  %i.o = phi <2 x i32> [ %i.h, %.lr.ph ], [ %i.q, %bb.r ] ; 2 uses
  %i.p = sdiv <2 x i32> %i.o, splat (i32 2)
  %i.q = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.p, <2 x i32> splat (i32 1)) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %1, i64 20, i1 false), !tbaa.struct !110
  %i.r = load i32, ptr %i.i, align 4, !tbaa !105
  %i.s = extractelement <2 x i32> %i.q, i64 1     ; 6 uses
  %i.t = sub nsw i32 %i.r, %i.s
  store i32 %i.t, ptr %i.j, align 4, !tbaa !105
  %i.u = load i32, ptr %i.k, align 4, !tbaa !106
  %i.v = add nsw i32 %i.u, %i.s
  store i32 %i.v, ptr %i.k, align 4, !tbaa !106
  call void @_ZN2cv8ximgproc13EdgeBoxesImpl8scoreBoxERNS0_3BoxE(ptr noundef nonnull align 8 dereferenceable(2132) %0, ptr noundef nonnull align 4 dereferenceable(20) %2)
  %i.w = load float, ptr %i.l, align 4, !tbaa !109 ; 2 uses
  %i.x = load float, ptr %i.m, align 4, !tbaa !109 ; 2 uses
  %i.y = fcmp ugt float %i.w, %i.x
  br i1 %i.y, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %1, i64 20, i1 false), !tbaa.struct !110
  %i.z = load i32, ptr %i.i, align 4, !tbaa !105
  %i.aa = add nsw i32 %i.z, %i.s
  store i32 %i.aa, ptr %i.j, align 4, !tbaa !105
  %i.ab = load i32, ptr %i.k, align 4, !tbaa !106
  %i.ac = sub nsw i32 %i.ab, %i.s
  store i32 %i.ac, ptr %i.k, align 4, !tbaa !106
  call void @_ZN2cv8ximgproc13EdgeBoxesImpl8scoreBoxERNS0_3BoxE(ptr noundef nonnull align 8 dereferenceable(2132) %0, ptr noundef nonnull align 4 dereferenceable(20) %2)
  %.pre = load float, ptr %i.l, align 4, !tbaa !109
  %.pre52 = load float, ptr %i.m, align 4, !tbaa !109
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ad = phi float [ %.pre52, %bb.c ], [ %i.x, %bb.b ]
  %i.ae = phi float [ %.pre, %bb.c ], [ %i.w, %bb.b ]
  %i.af = fcmp ogt float %i.ae, %i.ad
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %1, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !110
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %1, i64 20, i1 false), !tbaa.struct !110
  %i.ag = load i32, ptr %i.k, align 4, !tbaa !106
  %i.ah = add nsw i32 %i.ag, %i.s
  store i32 %i.ah, ptr %i.k, align 4, !tbaa !106
  call void @_ZN2cv8ximgproc13EdgeBoxesImpl8scoreBoxERNS0_3BoxE(ptr noundef nonnull align 8 dereferenceable(2132) %0, ptr noundef nonnull align 4 dereferenceable(20) %2)
  %i.ai = load float, ptr %i.l, align 4, !tbaa !109 ; 2 uses
  %i.aj = load float, ptr %i.m, align 4, !tbaa !109 ; 2 uses
  %i.ak = fcmp ugt float %i.ai, %i.aj
  br i1 %i.ak, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %1, i64 20, i1 false), !tbaa.struct !110
  %i.al = load i32, ptr %i.k, align 4, !tbaa !106
  %i.am = sub nsw i32 %i.al, %i.s
  store i32 %i.am, ptr %i.k, align 4, !tbaa !106
  call void @_ZN2cv8ximgproc13EdgeBoxesImpl8scoreBoxERNS0_3BoxE(ptr noundef nonnull align 8 dereferenceable(2132) %0, ptr noundef nonnull align 4 dereferenceable(20) %2)
  %.pre53 = load float, ptr %i.l, align 4, !tbaa !109
  %.pre54 = load float, ptr %i.m, align 4, !tbaa !109
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.an = phi float [ %.pre54, %bb.g ], [ %i.aj, %bb.f ]
  %i.ao = phi float [ %.pre53, %bb.g ], [ %i.ai, %bb.f ]
  %i.ap = fcmp ogt float %i.ao, %i.an
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %1, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !110
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %1, i64 20, i1 false), !tbaa.struct !110
  %i.aq = load i32, ptr %1, align 4, !tbaa !107
  %i.ar = extractelement <2 x i32> %i.q, i64 0    ; 6 uses
  %i.as = sub nsw i32 %i.aq, %i.ar
  store i32 %i.as, ptr %2, align 4, !tbaa !107
  %i.at = load i32, ptr %i.n, align 4, !tbaa !108
  %i.au = add nsw i32 %i.at, %i.ar
  store i32 %i.au, ptr %i.n, align 4, !tbaa !108
  call void @_ZN2cv8ximgproc13EdgeBoxesImpl8scoreBoxERNS0_3BoxE(ptr noundef nonnull align 8 dereferenceable(2132) %0, ptr noundef nonnull align 4 dereferenceable(20) %2)
  %i.av = load float, ptr %i.l, align 4, !tbaa !109 ; 2 uses
  %i.aw = load float, ptr %i.m, align 4, !tbaa !109 ; 2 uses
  %i.ax = fcmp ugt float %i.av, %i.aw
  br i1 %i.ax, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %1, i64 20, i1 false), !tbaa.struct !110
  %i.ay = load i32, ptr %1, align 4, !tbaa !107
  %i.az = add nsw i32 %i.ay, %i.ar
  store i32 %i.az, ptr %2, align 4, !tbaa !107
  %i.ba = load i32, ptr %i.n, align 4, !tbaa !108
  %i.bb = sub nsw i32 %i.ba, %i.ar
  store i32 %i.bb, ptr %i.n, align 4, !tbaa !108
  call void @_ZN2cv8ximgproc13EdgeBoxesImpl8scoreBoxERNS0_3BoxE(ptr noundef nonnull align 8 dereferenceable(2132) %0, ptr noundef nonnull align 4 dereferenceable(20) %2)
  %.pre55 = load float, ptr %i.l, align 4, !tbaa !109
  %.pre56 = load float, ptr %i.m, align 4, !tbaa !109
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bc = phi float [ %.pre56, %bb.k ], [ %i.aw, %bb.j ]
  %i.bd = phi float [ %.pre55, %bb.k ], [ %i.av, %bb.j ]
  %i.be = fcmp ogt float %i.bd, %i.bc
  br i1 %i.be, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %1, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !110
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %1, i64 20, i1 false), !tbaa.struct !110
  %i.bf = load i32, ptr %i.n, align 4, !tbaa !108
  %i.bg = add nsw i32 %i.bf, %i.ar
  store i32 %i.bg, ptr %i.n, align 4, !tbaa !108
  call void @_ZN2cv8ximgproc13EdgeBoxesImpl8scoreBoxERNS0_3BoxE(ptr noundef nonnull align 8 dereferenceable(2132) %0, ptr noundef nonnull align 4 dereferenceable(20) %2)
  %i.bh = load float, ptr %i.l, align 4, !tbaa !109 ; 2 uses
  %i.bi = load float, ptr %i.m, align 4, !tbaa !109 ; 2 uses
  %i.bj = fcmp ugt float %i.bh, %i.bi
  br i1 %i.bj, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %1, i64 20, i1 false), !tbaa.struct !110
  %i.bk = load i32, ptr %i.n, align 4, !tbaa !108
  %i.bl = sub nsw i32 %i.bk, %i.ar
  store i32 %i.bl, ptr %i.n, align 4, !tbaa !108
  call void @_ZN2cv8ximgproc13EdgeBoxesImpl8scoreBoxERNS0_3BoxE(ptr noundef nonnull align 8 dereferenceable(2132) %0, ptr noundef nonnull align 4 dereferenceable(20) %2)
  %.pre57 = load float, ptr %i.l, align 4, !tbaa !109
  %.pre58 = load float, ptr %i.m, align 4, !tbaa !109
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bm = phi float [ %.pre58, %bb.o ], [ %i.bi, %bb.n ]
  %i.bn = phi float [ %.pre57, %bb.o ], [ %i.bh, %bb.n ]
  %i.bo = fcmp ogt float %i.bn, %i.bm
  br i1 %i.bo, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %1, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !110
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %6 = icmp slt <2 x i32> %i.o, splat (i32 12)    ; 2 uses
  %7 = extractelement <2 x i1> %6, i64 0
  %8 = extractelement <2 x i1> %6, i64 1
  %or.cond = select i1 %8, i1 %7, i1 false
  br i1 %or.cond, label %._crit_edge, label %bb.b, !llvm.loop !191

._crit_edge:                                      ; preds = %bb.r, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv8ximgproc13EdgeBoxesImpl13scoreAllBoxesERSt6vectorINS0_3BoxESaIS3_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(2132) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.cv::ximgproc::Box", align 4 ; 4 uses
  %3 = alloca %"struct.cv::ximgproc::Box", align 4 ; 4 uses
  %4 = alloca %"class.std::reverse_iterator", align 8 ; 4 uses
  %5 = alloca %"class.std::reverse_iterator", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !113    ; 6 uses
  %.not.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPN2cv8ximgproc3BoxES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv8ximgproc3BoxES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 8, !tbaa !112
  br label %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE6resizeEm.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN2cv8ximgproc3BoxES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.d = phi ptr [ %i.b, %bb.a ], [ %i.c, %_ZSt8_DestroyIPN2cv8ximgproc3BoxES2_EvT_S4_RSaIT0_E.exit.i.i ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = load float, ptr %i.e, align 4, !tbaa !62
  %i.g = tail call noundef float @sqrtf(float noundef %i.f) #18 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load float, ptr %i.h, align 8, !tbaa !61
  %i.j = tail call noundef float @logf(float noundef %i.i) #18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1284 ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !219 ; 2 uses
  %i.m = fmul float %i.l, %i.l
  %i.n = tail call noundef float @logf(float noundef %i.m) #18
  %i.o = fdiv float %i.j, %i.n
  %i.p = fptosi float %i.o to i32                 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.s = load i32, ptr %i.q, align 4, !tbaa !96   ; 3 uses
  %i.t = load i32, ptr %i.r, align 8, !tbaa !96   ; 2 uses
  %i.u = tail call i32 @llvm.smax.i32(i32 %i.s, i32 %i.t)
  %i.v = sitofp i32 %i.u to float
  %i.w = fdiv float %i.v, %i.g
  %i.x = tail call noundef float @logf(float noundef %i.w) #18
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 2 uses
  %i.z = load float, ptr %i.y, align 8, !tbaa !65
  %i.aa = tail call noundef float @logf(float noundef %i.z) #18
  %i.ab = fdiv float %i.x, %i.aa
  %i.ac = tail call noundef float @llvm.ceil.f32(float %i.ab)
  %i.ad = fptosi float %i.ac to i32               ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.preheader97.lr.ph, label %._crit_edge106.split

.preheader97.lr.ph:                               ; preds = %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE6resizeEm.exit
  %.not101 = icmp slt i32 %i.p, 0
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br i1 %.not101, label %._crit_edge106.split, label %.preheader97.preheader

.preheader97.preheader:                           ; preds = %.preheader97.lr.ph
  %i.ah = shl nuw i32 %i.p, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ah, i32 0)
  br label %.preheader97

.preheader97:                                     ; preds = %.preheader97.preheader, %._crit_edge104
  %i.ai = phi i32 [ %i.dn, %._crit_edge104 ], [ %i.s, %.preheader97.preheader ]
  %i.aj = phi ptr [ %i.do, %._crit_edge104 ], [ %i.c, %.preheader97.preheader ]
  %i.ak = phi ptr [ %i.dp, %._crit_edge104 ], [ %i.d, %.preheader97.preheader ]
  %i.al = phi i32 [ %i.dq, %._crit_edge104 ], [ %i.t, %.preheader97.preheader ]
  %i.am = phi i32 [ %i.dr, %._crit_edge104 ], [ %i.s, %.preheader97.preheader ]
  %.052105 = phi i32 [ %i.dt, %._crit_edge104 ], [ 0, %.preheader97.preheader ] ; 2 uses
  %i.an = uitofp nneg i32 %.052105 to float
  br label %bb.b

._crit_edge106.split:                             ; preds = %._crit_edge104, %.preheader97.lr.ph, %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE6resizeEm.exit
  %i.ao = phi ptr [ %i.c, %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE6resizeEm.exit ], [ %i.c, %.preheader97.lr.ph ], [ %i.do, %._crit_edge104 ] ; 2 uses
  %i.ap = phi ptr [ %i.d, %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE6resizeEm.exit ], [ %i.d, %.preheader97.lr.ph ], [ %i.dp, %._crit_edge104 ] ; 2 uses
  %i.aq = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = sdiv exact i64 %i.as, 20                ; 2 uses
  %i.au = trunc i64 %i.at to i32
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph110.preheader, label %._crit_edge111

.lr.ph110.preheader:                              ; preds = %._crit_edge106.split
  %wide.trip.count = and i64 %i.at, 2147483647
  %.pre118 = load ptr, ptr %1, align 8, !tbaa !113
  br label %.lr.ph110

bb.b:                                             ; preds = %.preheader97, %._crit_edge100
  %i.aw = phi i32 [ %i.ai, %.preheader97 ], [ %i.dn, %._crit_edge100 ] ; 2 uses
  %i.ax = phi ptr [ %i.aj, %.preheader97 ], [ %i.do, %._crit_edge100 ] ; 2 uses
  %i.ay = phi ptr [ %i.ak, %.preheader97 ], [ %i.dp, %._crit_edge100 ] ; 2 uses
  %i.az = phi i32 [ %i.al, %.preheader97 ], [ %i.dq, %._crit_edge100 ] ; 2 uses
  %i.ba = phi i32 [ %i.am, %.preheader97 ], [ %i.dr, %._crit_edge100 ] ; 2 uses
  %.051102 = phi i32 [ 0, %.preheader97 ], [ %i.ds, %._crit_edge100 ] ; 3 uses
  %i.bb = load float, ptr %i.k, align 4, !tbaa !219
  %i.bc = sub nsw i32 %.051102, %i.p
  %i.bd = sitofp i32 %i.bc to float
  %i.be = tail call noundef float @powf(float noundef %i.bb, float noundef %i.bd) #18 ; 2 uses
  %i.bf = load float, ptr %i.y, align 8, !tbaa !65
  %i.bg = tail call noundef float @powf(float noundef %i.bf, float noundef %i.an) #18
  %i.bh = fmul float %i.g, %i.bg                  ; 2 uses
  %i.bi = fdiv float %i.bh, %i.be
  %i.bj = fptosi float %i.bi to i32               ; 4 uses
  %i.bk = sitofp i32 %i.bj to float
  %i.bl = load float, ptr %i.af, align 8, !tbaa !220 ; 2 uses
  %i.bm = fmul float %i.bl, %i.bk
  %i.bn = fptosi float %i.bm to i32
  %.sroa.speculated74 = tail call i32 @llvm.smax.i32(i32 %i.bn, i32 2) ; 2 uses
  %i.bo = fmul float %i.be, %i.bh
  %i.bp = fptosi float %i.bo to i32               ; 4 uses
  %i.bq = sitofp i32 %i.bp to float
  %i.br = fmul float %i.bl, %i.bq
  %i.bs = fptosi float %i.br to i32
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.bs, i32 2) ; 2 uses
  %i.bt = sub i32 %.sroa.speculated, %i.bp        ; 2 uses
  %i.bu = add i32 %i.bt, %i.ba
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %.preheader.lr.ph, label %._crit_edge100

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.bw = sub i32 %.sroa.speculated74, %i.bj      ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.bx = phi i32 [ %i.aw, %.preheader.lr.ph ], [ %i.dg, %._crit_edge ]
  %i.by = phi ptr [ %i.ax, %.preheader.lr.ph ], [ %i.dh, %._crit_edge ] ; 2 uses
  %i.bz = phi ptr [ %i.ay, %.preheader.lr.ph ], [ %i.di, %._crit_edge ] ; 2 uses
  %i.ca = phi i32 [ %i.az, %.preheader.lr.ph ], [ %i.dj, %._crit_edge ] ; 2 uses
  %.04999 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.dk, %._crit_edge ] ; 3 uses
  %i.cb = add i32 %i.bw, %i.ca
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %.pre = load ptr, ptr %i.ag, align 8, !tbaa !114
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE9push_backERKS2_.exit
  %i.cd = phi ptr [ %i.cz, %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE9push_backERKS2_.exit ], [ %i.by, %.lr.ph.preheader ] ; 5 uses
  %i.ce = phi ptr [ %i.da, %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE9push_backERKS2_.exit ], [ %.pre, %.lr.ph.preheader ] ; 3 uses
  %i.cf = phi ptr [ %i.db, %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE9push_backERKS2_.exit ], [ %i.bz, %.lr.ph.preheader ] ; 6 uses
  %.05098 = phi i32 [ %i.dc, %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE9push_backERKS2_.exit ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.not.i = icmp eq ptr %i.cf, %i.ce
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  store i32 %.04999, ptr %i.cf, align 4, !tbaa !96
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  store i32 %.05098, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !96
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i32 %i.bp, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !96
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  store i32 %i.bj, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !96
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 20 ; 2 uses
  store ptr %i.cg, ptr %i.a, align 8, !tbaa !112
  br label %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE9push_backERKS2_.exit

bb.d:                                             ; preds = %.lr.ph
  %i.ch = ptrtoint ptr %i.ce to i64
  %i.ci = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.cj = sub i64 %i.ch, %i.ci                    ; 5 uses
  %i.ck = icmp eq i64 %i.cj, 9223372036854775800
  br i1 %i.ck, label %bb.e, label %_ZNKSt6vectorIN2cv8ximgproc3BoxESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #20
  unreachable

_ZNKSt6vectorIN2cv8ximgproc3BoxESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.cl = sdiv exact i64 %i.cj, 20                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cl, i64 1)
  %i.cm = add nsw i64 %.sroa.speculated.i.i.i, %i.cl ; 2 uses
  %i.cn = icmp ult i64 %i.cm, %i.cl
  %i.co = tail call i64 @llvm.umin.i64(i64 %i.cm, i64 461168601842738790)
  %i.cp = select i1 %i.cn, i64 461168601842738790, i64 %i.co ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.cq = mul nuw nsw i64 %i.cp, 20
  %i.cr = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #21 ; 5 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 %i.cj ; 5 uses
  store i32 %.04999, ptr %i.cs, align 4, !tbaa !96
  %.sroa.5.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store i32 %.05098, ptr %.sroa.5.0..sroa_idx63, align 4, !tbaa !96
  %.sroa.6.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i32 %i.bp, ptr %.sroa.6.0..sroa_idx65, align 4, !tbaa !96
  %.sroa.7.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 %i.bj, ptr %.sroa.7.0..sroa_idx67, align 4, !tbaa !96
  %i.ct = icmp sgt i64 %i.cj, 0
  br i1 %i.ct, label %bb.f, label %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIN2cv8ximgproc3BoxESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cr, ptr align 4 %i.cd, i64 %i.cj, i1 false)
  br label %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIN2cv8ximgproc3BoxESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 20 ; 2 uses
end_hunk_0
