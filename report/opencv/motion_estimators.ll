Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/motion_estimators?download=true
inline.NumInlined: 2420
inline.NumDeleted: 944
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN2cv6detail17BundleAdjusterRay9calcErrorERNS_3MatE:bb.a
  %i.gr = or disjoint i32 %i.gq, 6
  store i32 %i.gr, ptr %20, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %2) #24
  %i.gs = load ptr, ptr %21, align 8, !tbaa !86, !noalias !330 ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !88
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8
  invoke void %i.gv(ptr noundef nonnull align 8 dereferenceable(8) %i.gs, ptr noundef nonnull align 8 dereferenceable(688) %21, ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i193 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i191

_ZNK2cv7MatExprcvNS_3MatEEv.exit.i193:            ; preds = %bb.w
  %i.gx = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IdEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %20, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.z unwind label %bb.y       ; 0 uses

bb.y:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i193
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i191

.body.i191:                                       ; preds = %bb.y, %bb.x
  %.pn.i192 = phi { ptr, i32 } [ %i.gy, %bb.y ], [ %i.gw, %bb.x ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #24
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %21) #24
  br label %bb.ao

bb.z:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i193
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.au) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.av) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.aw) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ax) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ay) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.az) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !154 ; 2 uses
  %i.hc = load ptr, ptr %i.gz, align 8, !tbaa !155 ; 3 uses
  %.not248 = icmp eq ptr %i.hb, %i.hc
  br i1 %.not248, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.z
  %i.hd = ptrtoint ptr %i.hb to i64
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = sub i64 %i.hd, %i.he
  %i.hg = ashr exact i64 %i.hf, 4
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !156
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.hk = load i32, ptr %i.ba, align 4
  %i.hl = load ptr, ptr %i.bb, align 8            ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.hn = icmp slt i32 %i.hk, 2                   ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.hp = load i32, ptr %i.bd, align 4
  %i.hq = load ptr, ptr %i.be, align 8            ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.hs = icmp slt i32 %i.hp, 2                   ; 2 uses
  %i.ht = fmul double %i.bv, %i.bz
  br label %bb.aq

._crit_edge:                                      ; preds = %bb.as, %bb.z
  %.1111.lcssa = phi i32 [ %.0110242, %bb.z ], [ %.2112, %bb.as ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.hu = add nuw i64 %.0109243, 1                ; 2 uses
  %i.hv = load ptr, ptr %i.g, align 8, !tbaa !135
  %i.hw = load ptr, ptr %i.f, align 8, !tbaa !134 ; 2 uses
  %i.hx = ptrtoint ptr %i.hv to i64
  %i.hy = ptrtoint ptr %i.hw to i64
  %i.hz = sub i64 %i.hx, %i.hy
  %i.ia = ashr exact i64 %i.hz, 3
  %i.ib = icmp ult i64 %i.hu, %i.ia
  br i1 %i.ib, label %bb.b, label %._crit_edge246, !llvm.loop !325

bb.aa:                                            ; preds = %bb.b
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ab:                                            ; preds = %bb.d, %bb.c
  %i.id = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.ay

bb.ac:                                            ; preds = %bb.e
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ad:                                            ; preds = %bb.g, %bb.f
  %i.if = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.aw

bb.ae:                                            ; preds = %bb.h
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %.body.i, %bb.ae
  %.pn118 = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.ig, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.av

bb.ag:                                            ; preds = %bb.l
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %.body.i171, %bb.ag
  %.pn120 = phi { ptr, i32 } [ %.pn.i172, %.body.i171 ], [ %i.ih, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.au

bb.ai:                                            ; preds = %bb.p
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.aj:                                            ; preds = %bb.q
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %.body.i185, %bb.aj
  %.pn122 = phi { ptr, i32 } [ %.pn.i186, %.body.i185 ], [ %i.ij, %bb.aj ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %19) #24
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ai
  %.pn122.pn = phi { ptr, i32 } [ %.pn122, %bb.ak ], [ %i.ii, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %bb.at

bb.am:                                            ; preds = %bb.u
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.an:                                            ; preds = %bb.v
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ao:                                            ; preds = %.body.i191, %bb.an
  %.pn125 = phi { ptr, i32 } [ %.pn.i192, %.body.i191 ], [ %i.il, %bb.an ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %22) #24
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.am
  %.pn125.pn = phi { ptr, i32 } [ %.pn125, %bb.ao ], [ %i.ik, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #24
  br label %bb.at

bb.aq:                                            ; preds = %.lr.ph, %bb.as
  %.0241 = phi i64 [ 0, %.lr.ph ], [ %i.lz, %bb.as ] ; 3 uses
  %.1111240 = phi i32 [ %.0110242, %.lr.ph ], [ %.2112, %bb.as ] ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.0241
  %i.in = load i8, ptr %i.im, align 1, !tbaa !123
  %.not = icmp eq i8 %i.in, 0
  br i1 %.not, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.io = getelementptr inbounds nuw [16 x i8], ptr %i.hc, i64 %.0241 ; 2 uses
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !158
  %i.iq = sext i32 %i.ip to i64
  %i.ir = load ptr, ptr %i.hj, align 8, !tbaa !161
  %i.is = getelementptr inbounds nuw [28 x i8], ptr %i.ir, i64 %i.iq ; 2 uses
  %.sroa.740.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  %i.it = load double, ptr %i.hm, align 8, !tbaa !30
  %i.iu = load i64, ptr %i.bc, align 8            ; 2 uses
  %.sink.idx.i203 = select i1 %i.hn, i64 0, i64 %i.iu
  %.sink.i204 = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.sink.idx.i203 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.sink.i204, i64 16
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !30
  %i.ix = shl i64 %i.iu, 1
  %.sink.idx.i209 = select i1 %i.hn, i64 0, i64 %i.ix
  %.sink.i210 = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.sink.idx.i209 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.sink.i210, i64 16
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !30
  %i.ja = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !162
  %i.jc = sext i32 %i.jb to i64
  %i.jd = load ptr, ptr %i.ho, align 8, !tbaa !161
  %i.je = getelementptr inbounds nuw [28 x i8], ptr %i.jd, i64 %i.jc ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  %i.jf = load double, ptr %i.hr, align 8, !tbaa !30
  %i.jg = load i64, ptr %i.bf, align 8            ; 2 uses
  %.sink.idx.i221 = select i1 %i.hs, i64 0, i64 %i.jg
  %.sink.i222 = getelementptr inbounds nuw i8, ptr %i.hq, i64 %.sink.idx.i221 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.sink.i222, i64 16
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !30
  %i.jj = shl i64 %i.jg, 1
  %.sink.idx.i227 = select i1 %i.hs, i64 0, i64 %i.jj
  %.sink.i228 = getelementptr inbounds nuw i8, ptr %i.hq, i64 %.sink.idx.i227 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.sink.i228, i64 16
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !30
  %i.jm = call double @sqrt(double noundef %i.ht) #24 ; 2 uses
  %i.jn = mul nsw i32 %.1111240, 3                ; 3 uses
  %i.jo = load i32, ptr %i.bg, align 4, !tbaa !89
  %i.jp = icmp slt i32 %i.jo, 2                   ; 3 uses
  %i.jq = load ptr, ptr %i.bh, align 8, !tbaa !94 ; 3 uses
  %i.jr = load i64, ptr %i.bi, align 8
  %i.js = sext i32 %i.jn to i64
  %i.jt = mul i64 %i.jr, %i.js
  %.sink.idx.i233 = select i1 %i.jp, i64 0, i64 %i.jt
  %.sink.i234 = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.sink.idx.i233
  %i.ju = add nsw i32 %i.jn, 1
  %i.jv = sext i32 %i.ju to i64
  %.sroa.740.0.copyload = load float, ptr %.sroa.740.0..sroa_idx, align 4, !tbaa !116
  %.sroa.037.0.copyload = load float, ptr %i.is, align 4, !tbaa !116
  %i.jw = load <2 x double>, ptr %i.hl, align 8, !tbaa !30 ; 2 uses
  %i.jx = load <2 x double>, ptr %.sink.i204, align 8, !tbaa !30 ; 2 uses
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !116
  %.sroa.0.0.copyload = load float, ptr %i.je, align 4, !tbaa !116
  %23 = fpext float %.sroa.7.0.copyload to double ; 2 uses
  %24 = fpext float %.sroa.0.0.copyload to double ; 2 uses
  %25 = fpext float %.sroa.740.0.copyload to double
  %26 = fpext float %.sroa.037.0.copyload to double
  %i.jy = load <2 x double>, ptr %i.hq, align 8, !tbaa !30 ; 2 uses
  %i.jz = shufflevector <2 x double> %i.jw, <2 x double> %i.jx, <2 x i32> <i32 1, i32 3>
  %27 = insertelement <2 x double> poison, double %25, i64 0 ; 2 uses
  %28 = shufflevector <2 x double> %27, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ka = fmul <2 x double> %i.jz, %28
  %i.kb = load <2 x double>, ptr %.sink.i222, align 8, !tbaa !30 ; 2 uses
  %i.kc = shufflevector <2 x double> %i.jw, <2 x double> %i.jx, <2 x i32> <i32 0, i32 2>
  %29 = insertelement <2 x double> poison, double %26, i64 0 ; 2 uses
  %i.kd = shufflevector <2 x double> %29, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ke = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kc, <2 x double> %i.kd, <2 x double> %i.ka)
  %i.kf = shufflevector <2 x double> %i.jy, <2 x double> %i.kb, <2 x i32> <i32 1, i32 3>
  %30 = insertelement <2 x double> poison, double %23, i64 0
  %31 = shufflevector <2 x double> %30, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kg = fmul <2 x double> %i.kf, %31
  %i.kh = load <2 x double>, ptr %.sink.i210, align 8, !tbaa !30 ; 2 uses
  %i.ki = insertelement <2 x double> poison, double %i.it, i64 0
  %i.kj = insertelement <2 x double> %i.ki, double %i.iw, i64 1
  %i.kk = fadd <2 x double> %i.kj, %i.ke          ; 3 uses
  %i.kl = shufflevector <2 x double> %i.jy, <2 x double> %i.kb, <2 x i32> <i32 0, i32 2>
  %32 = insertelement <2 x double> poison, double %24, i64 0
  %33 = shufflevector <2 x double> %32, <2 x double> poison, <2 x i32> zeroinitializer
  %i.km = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kl, <2 x double> %33, <2 x double> %i.kg)
  %i.kn = insertelement <2 x double> poison, double %i.jf, i64 0
  %i.ko = insertelement <2 x double> %i.kn, double %i.ji, i64 1
  %i.kp = fadd <2 x double> %i.ko, %i.km          ; 3 uses
  %i.kq = load <2 x double>, ptr %.sink.i228, align 8, !tbaa !30 ; 2 uses
  %i.kr = shufflevector <2 x double> %i.kh, <2 x double> %i.kq, <2 x i32> <i32 1, i32 3>
  %34 = insertelement <2 x double> %27, double %23, i64 1
  %i.ks = fmul <2 x double> %i.kr, %34
  %i.kt = shufflevector <2 x double> %i.kh, <2 x double> %i.kq, <2 x i32> <i32 0, i32 2>
  %35 = insertelement <2 x double> %29, double %24, i64 1
  %i.ku = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kt, <2 x double> %35, <2 x double> %i.ks)
  %i.kv = insertelement <2 x double> poison, double %i.iz, i64 0
  %i.kw = insertelement <2 x double> %i.kv, double %i.jl, i64 1
  %i.kx = fadd <2 x double> %i.kw, %i.ku          ; 3 uses
  %i.ky = shufflevector <2 x double> %i.kp, <2 x double> %i.kk, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.kz = fmul <2 x double> %i.ky, %i.ky
  %i.la = shufflevector <2 x double> %i.kp, <2 x double> %i.kk, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.lb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.la, <2 x double> %i.la, <2 x double> %i.kz)
  %i.lc = shufflevector <2 x double> %i.lb, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ld = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kx, <2 x double> %i.kx, <2 x double> %i.lc)
  %i.le = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ld) ; 3 uses
  %i.lf = fdiv <2 x double> %i.kx, %i.le          ; 2 uses
  %i.lg = shufflevector <2 x double> %i.le, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lh = fdiv <2 x double> %i.kk, %i.lg
  %i.li = shufflevector <2 x double> %i.le, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.lj = fdiv <2 x double> %i.kp, %i.li
  %i.lk = fsub <2 x double> %i.lh, %i.lj
  %i.ll = insertelement <2 x double> poison, double %i.jm, i64 0
  %i.lm = shufflevector <2 x double> %i.ll, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ln = fmul <2 x double> %i.lm, %i.lk          ; 2 uses
  %i.lo = extractelement <2 x double> %i.ln, i64 0
  store double %i.lo, ptr %.sink.i234, align 8, !tbaa !30
  %i.lp = load i64, ptr %i.bi, align 8
  %i.lq = mul i64 %i.lp, %i.jv
  %.sink.idx.i235 = select i1 %i.jp, i64 0, i64 %i.lq
  %.sink.i236 = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.sink.idx.i235
  %i.lr = extractelement <2 x double> %i.ln, i64 1
  store double %i.lr, ptr %.sink.i236, align 8, !tbaa !30
  %i.ls = add nsw i32 %i.jn, 2
  %i.lt = load i64, ptr %i.bi, align 8
  %i.lu = sext i32 %i.ls to i64
  %i.lv = mul i64 %i.lt, %i.lu
  %.sink.idx.i237 = select i1 %i.jp, i64 0, i64 %i.lv
  %.sink.i238 = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.sink.idx.i237
  %shift = shufflevector <2 x double> %i.lf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.lf, %shift
  %i.lw = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.lx = fmul double %i.jm, %i.lw
  store double %i.lx, ptr %.sink.i238, align 8, !tbaa !30
  %i.ly = add nsw i32 %.1111240, 1
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %.2112 = phi i32 [ %i.ly, %bb.ar ], [ %.1111240, %bb.aq ] ; 2 uses
  %i.lz = add nuw i64 %.0241, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.lz, %i.hg
  br i1 %exitcond.not, label %._crit_edge, label %bb.aq, !llvm.loop !326

bb.at:                                            ; preds = %bb.ap, %bb.al
  %.pn128.pn = phi { ptr, i32 } [ %.pn125.pn, %bb.ap ], [ %.pn122.pn, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #24
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ah
  %.pn128.pn.pn = phi { ptr, i32 } [ %.pn128.pn, %bb.at ], [ %.pn120, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #24
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.af
  %.pn128.pn.pn.pn = phi { ptr, i32 } [ %.pn128.pn.pn, %bb.au ], [ %.pn118, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.ad
  %.pn128.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn128.pn.pn.pn, %bb.av ], [ %i.if, %bb.ad ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #24
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.ac
  %.pn128.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn128.pn.pn.pn.pn, %bb.aw ], [ %i.ie, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.ab
  %.pn128.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn128.pn.pn.pn.pn.pn, %bb.ax ], [ %i.id, %bb.ab ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #24
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.aa
  %.pn128.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn128.pn.pn.pn.pn.pn.pn, %bb.ay ], [ %i.ic, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  resume { ptr, i32 } %.pn128.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN2cv6detail17BundleAdjusterRay12calcJacobianERNS_3MatE(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Range", align 8         ; 4 uses
  %3 = alloca %"class.cv::Range", align 4         ; 5 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.b = load i32, ptr %i.a, align 4, !tbaa !136
  %i.c = mul nsw i32 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !131
  %i.f = shl nsw i32 %i.e, 2
  tail call void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %i.c, i32 noundef %i.f, i32 noundef 6)
  %i.g = load i32, ptr %i.d, align 8, !tbaa !131
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 716
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 12 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 508
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 12 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 12 uses
  %.pre.pre = load i32, ptr %i.i, align 4, !tbaa !89
  %.pre48.pre = load ptr, ptr %i.j, align 8, !tbaa !94
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.b
  %.pre48 = phi ptr [ %.pre48.pre, %.preheader.lr.ph ], [ %i.ip, %bb.b ]
  %.pre = phi i32 [ %.pre.pre, %.preheader.lr.ph ], [ %i.in, %bb.b ]
  %indvars.iv45 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next46, %bb.b ] ; 2 uses
  %i.y = shl nuw nsw i64 %indvars.iv45, 2
  br label %bb.c

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %_ZN12_GLOBAL__N_19calcDerivERKN2cv3MatES3_dS1_.exit
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %i.z = load i32, ptr %i.d, align 8, !tbaa !131
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp slt i64 %indvars.iv.next46, %i.aa
  br i1 %i.ab, label %.preheader, label %._crit_edge, !llvm.loop !331

bb.c:                                             ; preds = %.preheader, %_ZN12_GLOBAL__N_19calcDerivERKN2cv3MatES3_dS1_.exit
  %i.ac = phi ptr [ %.pre48, %.preheader ], [ %i.ip, %_ZN12_GLOBAL__N_19calcDerivERKN2cv3MatES3_dS1_.exit ]
  %i.ad = phi i32 [ %.pre, %.preheader ], [ %i.in, %_ZN12_GLOBAL__N_19calcDerivERKN2cv3MatES3_dS1_.exit ]
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZN12_GLOBAL__N_19calcDerivERKN2cv3MatES3_dS1_.exit ] ; 2 uses
  %i.ae = add nuw nsw i64 %indvars.iv, %i.y       ; 5 uses
  %i.af = icmp slt i32 %i.ad, 2
  %i.ag = load i64, ptr %i.k, align 8
  %i.ah = mul i64 %i.ag, %i.ae
  %.sink.idx.i = select i1 %i.af, i64 0, i64 %i.ah
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sink.idx.i ; 2 uses
  %i.ai = load double, ptr %.sink.i, align 8, !tbaa !30 ; 3 uses
  %i.aj = fadd double %i.ai, -1.000000e-03
  store double %i.aj, ptr %.sink.i, align 8, !tbaa !30
  %i.ak = load ptr, ptr %0, align 8, !tbaa !88
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr noundef nonnull align 8 dereferenceable(208) %i.l)
  %i.an = fadd double %i.ai, 1.000000e-03
  %i.ao = load i32, ptr %i.i, align 4, !tbaa !89
  %i.ap = icmp slt i32 %i.ao, 2
  %i.aq = load ptr, ptr %i.j, align 8, !tbaa !94
  %i.ar = load i64, ptr %i.k, align 8
  %i.as = mul i64 %i.ar, %i.ae
  %.sink.idx.i24 = select i1 %i.ap, i64 0, i64 %i.as
  %.sink.i25 = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sink.idx.i24
  store double %i.an, ptr %.sink.i25, align 8, !tbaa !30
  %i.at = load ptr, ptr %0, align 8, !tbaa !88
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr noundef nonnull align 8 dereferenceable(208) %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !336
  store i64 9223372034707292160, ptr %2, align 8, !noalias !336
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !336
  %i.aw = trunc nuw i64 %i.ae to i32
  store i32 %i.aw, ptr %3, align 4, !tbaa !164, !noalias !336
  %i.ax = trunc i64 %i.ae to i32
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.n, align 4, !tbaa !165, !noalias !336
  call void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !336
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !336
  %i.az = load i32, ptr %i.o, align 8, !tbaa !166 ; 21 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i, label %_ZN12_GLOBAL__N_19calcDerivERKN2cv3MatES3_dS1_.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.bb = load i32, ptr %i.p, align 4, !tbaa !89
  %.fr35.i = freeze i32 %i.bb
  %i.bc = icmp slt i32 %.fr35.i, 2
  %i.bd = load ptr, ptr %i.q, align 8, !tbaa !94  ; 26 uses
  %i.be = load i32, ptr %i.s, align 4, !tbaa !89
  %.fr.i = freeze i32 %i.be
  %i.bf = icmp slt i32 %.fr.i, 2                  ; 2 uses
end_hunk_0
