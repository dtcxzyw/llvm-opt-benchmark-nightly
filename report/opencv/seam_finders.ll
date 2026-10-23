Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/seam_finders?download=true
inline.NumInlined: 2970
inline.NumDeleted: 1133
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN2cv6detail18GraphCutSeamFinder4Impl10findInPairEmmNS_5Rect_IiEE:bb.a
  %i.hn = zext nneg i32 %i.hc to i64              ; 4 uses
  %i.ho = getelementptr inbounds nuw [12 x i8], ptr %.sink.i229, i64 %i.hn
  %i.hp = add nsw i64 %indvars.iv, 10             ; 4 uses
  %i.hq = load i32, ptr %i.bi, align 4, !tbaa !63
  %i.hr = icmp slt i32 %i.hq, 2
  %i.hs = load ptr, ptr %i.bj, align 8, !tbaa !64
  %i.ht = load i64, ptr %i.bk, align 8
  %i.hu = mul i64 %i.ht, %i.cn
  %.sink.idx.i230 = select i1 %i.hr, i64 0, i64 %i.hu
  %.sink.i231 = getelementptr inbounds nuw i8, ptr %i.hs, i64 %.sink.idx.i230
  %i.hv = getelementptr inbounds [12 x i8], ptr %.sink.i231, i64 %i.hp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hv, ptr noundef nonnull align 4 dereferenceable(12) %i.ho, i64 12, i1 false), !tbaa.struct !452
  %i.hw = load i32, ptr %i.bx, align 4, !tbaa !63
  %i.hx = icmp slt i32 %i.hw, 2
  %i.hy = load ptr, ptr %i.by, align 8, !tbaa !64
  %i.hz = load i64, ptr %i.bz, align 8
  %i.ia = mul i64 %i.hz, %i.cr
  %.sink.idx.i232 = select i1 %i.hx, i64 0, i64 %i.ia
  %.sink.i233 = getelementptr inbounds nuw i8, ptr %i.hy, i64 %.sink.idx.i232
  %i.ib = getelementptr inbounds nuw i8, ptr %.sink.i233, i64 %i.hn
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !30
  %i.id = load i32, ptr %i.bl, align 4, !tbaa !63
  %i.ie = icmp slt i32 %i.id, 2
  %i.if = load ptr, ptr %i.bm, align 8, !tbaa !64
  %i.ig = load i64, ptr %i.bn, align 8
  %i.ih = mul i64 %i.ig, %i.cn
  %.sink.idx.i234 = select i1 %i.ie, i64 0, i64 %i.ih
  %.sink.i235 = getelementptr inbounds nuw i8, ptr %i.if, i64 %.sink.idx.i234
  %i.ii = getelementptr inbounds i8, ptr %.sink.i235, i64 %i.hp
  store i8 %i.ic, ptr %i.ii, align 1, !tbaa !30
  %i.ij = load i32, ptr %i.ca, align 4, !tbaa !63
  %i.ik = icmp slt i32 %i.ij, 2
  %i.il = load ptr, ptr %i.cb, align 8, !tbaa !64
  %i.im = load i64, ptr %i.cc, align 8
  %i.in = mul i64 %i.im, %i.cr
  %.sink.idx.i236 = select i1 %i.ik, i64 0, i64 %i.in
  %.sink.i237 = getelementptr inbounds nuw i8, ptr %i.il, i64 %.sink.idx.i236
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %.sink.i237, i64 %i.hn
  %i.ip = load float, ptr %i.io, align 4, !tbaa !156
  %i.iq = load i32, ptr %i.bo, align 4, !tbaa !63
  %i.ir = icmp slt i32 %i.iq, 2
  %i.is = load ptr, ptr %i.bp, align 8, !tbaa !64
  %i.it = load i64, ptr %i.bq, align 8
  %i.iu = mul i64 %i.it, %i.cn
  %.sink.idx.i238 = select i1 %i.ir, i64 0, i64 %i.iu
  %.sink.i239 = getelementptr inbounds nuw i8, ptr %i.is, i64 %.sink.idx.i238
  %i.iv = getelementptr inbounds [4 x i8], ptr %.sink.i239, i64 %i.hp
  store float %i.ip, ptr %i.iv, align 4, !tbaa !156
  %i.iw = load i32, ptr %i.cd, align 4, !tbaa !63
  %i.ix = icmp slt i32 %i.iw, 2
  %i.iy = load ptr, ptr %i.ce, align 8, !tbaa !64
  %i.iz = load i64, ptr %i.cf, align 8
  %i.ja = mul i64 %i.iz, %i.cr
  %.sink.idx.i240 = select i1 %i.ix, i64 0, i64 %i.ja
  %.sink.i241 = getelementptr inbounds nuw i8, ptr %i.iy, i64 %.sink.idx.i240
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %.sink.i241, i64 %i.hn
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !156
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.jd = add nsw i64 %indvars.iv, 10             ; 4 uses
  %i.je = load i32, ptr %i.bi, align 4, !tbaa !63
  %i.jf = icmp slt i32 %i.je, 2
  %i.jg = load ptr, ptr %i.bj, align 8, !tbaa !64
  %i.jh = load i64, ptr %i.bk, align 8
  %i.ji = mul i64 %i.jh, %i.cn
  %.sink.idx.i244 = select i1 %i.jf, i64 0, i64 %i.ji
  %.sink.i245 = getelementptr inbounds nuw i8, ptr %i.jg, i64 %.sink.idx.i244
  %i.jj = getelementptr inbounds [12 x i8], ptr %.sink.i245, i64 %i.jd ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.jj, align 4, !tbaa !156
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !156
  %i.jk = load i32, ptr %i.bl, align 4, !tbaa !63
  %i.jl = icmp slt i32 %i.jk, 2
  %i.jm = load ptr, ptr %i.bm, align 8, !tbaa !64
  %i.jn = load i64, ptr %i.bn, align 8
  %i.jo = mul i64 %i.jn, %i.cn
  %.sink.idx.i246 = select i1 %i.jl, i64 0, i64 %i.jo
  %.sink.i247 = getelementptr inbounds nuw i8, ptr %i.jm, i64 %.sink.idx.i246
  %i.jp = getelementptr inbounds i8, ptr %.sink.i247, i64 %i.jd
  store i8 0, ptr %i.jp, align 1, !tbaa !30
  %i.jq = load i32, ptr %i.bo, align 4, !tbaa !63
  %i.jr = icmp slt i32 %i.jq, 2
  %i.js = load ptr, ptr %i.bp, align 8, !tbaa !64
  %i.jt = load i64, ptr %i.bq, align 8
  %i.ju = mul i64 %i.jt, %i.cn
  %.sink.idx.i248 = select i1 %i.jr, i64 0, i64 %i.ju
  %.sink.i249 = getelementptr inbounds nuw i8, ptr %i.js, i64 %.sink.idx.i248
  %i.jv = getelementptr inbounds [4 x i8], ptr %.sink.i249, i64 %i.jd
  store float 0.000000e+00, ptr %i.jv, align 4, !tbaa !156
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.sink316 = phi i64 [ %i.jd, %bb.am ], [ %i.hp, %bb.al ]
  %.sink314 = phi float [ 0.000000e+00, %bb.am ], [ %i.jc, %bb.al ]
  %i.jw = load i32, ptr %i.br, align 4, !tbaa !63
  %i.jx = icmp slt i32 %i.jw, 2
  %i.jy = load ptr, ptr %i.bs, align 8, !tbaa !64
  %i.jz = load i64, ptr %i.bt, align 8
  %i.ka = mul i64 %i.jz, %i.cn
  %.sink.idx.i250 = select i1 %i.jx, i64 0, i64 %i.ka
  %.sink.i251 = getelementptr inbounds nuw i8, ptr %i.jy, i64 %.sink.idx.i250
  %i.kb = getelementptr inbounds [4 x i8], ptr %.sink.i251, i64 %.sink316
  store float %.sink314, ptr %i.kb, align 4, !tbaa !156
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ch, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.ah, !llvm.loop !449

_ZN2cv6detail7GCGraphIfEC2Ejj.exit:               ; preds = %._crit_edge274.split
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.kd = load i32, ptr %i.kc, align 8, !tbaa !201
  switch i32 %i.kd, label %bb.aq [
    i32 0, label %bb.ao
    i32 1, label %bb.ap
  ]

bb.ao:                                            ; preds = %_ZN2cv6detail7GCGraphIfEC2Ejj.exit
  invoke void @_ZN2cv6detail18GraphCutSeamFinder4Impl20setGraphWeightsColorERKNS_3MatES5_S5_S5_RNS0_7GCGraphIfEE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 8 dereferenceable(208) %16, ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(52) %23)
          to label %bb.av unwind label %bb.bf

bb.ap:                                            ; preds = %_ZN2cv6detail7GCGraphIfEC2Ejj.exit
  invoke void @_ZN2cv6detail18GraphCutSeamFinder4Impl24setGraphWeightsColorGradERKNS_3MatES5_S5_S5_S5_S5_S5_S5_RNS0_7GCGraphIfEE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 8 dereferenceable(208) %16, ptr noundef nonnull align 8 dereferenceable(208) %19, ptr noundef nonnull align 8 dereferenceable(208) %21, ptr noundef nonnull align 8 dereferenceable(208) %20, ptr noundef nonnull align 8 dereferenceable(208) %22, ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(52) %23)
          to label %bb.av unwind label %bb.bf

bb.aq:                                            ; preds = %_ZN2cv6detail7GCGraphIfEC2Ejj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %25)
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @__func__._ZN2cv6detail18GraphCutSeamFinder4Impl10findInPairEmmNS_5Rect_IiEE, ptr noundef nonnull @.str.1, i32 noundef 1340) #29
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %bb.ar
  unreachable

bb.at:                                            ; preds = %bb.aq
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.au:                                            ; preds = %bb.ar
  %i.kf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kg = load ptr, ptr %24, align 8, !tbaa !29   ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.ki = icmp eq ptr %i.kg, %i.kh
  br i1 %i.ki, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.au
  %i.kj = load i64, ptr %i.kh, align 8, !tbaa !30
  %i.kk = add i64 %i.kj, 1
  call void @_ZdlPvm(ptr noundef %i.kg, i64 noundef %i.kk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.at
  %.pn = phi { ptr, i32 } [ %i.ke, %bb.at ], [ %i.kf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.kf, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  br label %.body255

bb.av:                                            ; preds = %bb.ap, %bb.ao
  %i.kl = invoke noundef float @_ZN2cv6detail7GCGraphIfE7maxFlowEv(ptr noundef nonnull align 8 dereferenceable(52) %23)
          to label %.preheader269 unwind label %bb.bf ; 0 uses

.preheader269:                                    ; preds = %bb.av
  %i.km = icmp sgt i32 %.sroa.28.8.extract.trunc, 0
  br i1 %i.km, label %.preheader.lr.ph, label %._crit_edge278.split

.preheader.lr.ph:                                 ; preds = %.preheader269
  %i.kn = icmp sgt i32 %.sroa.13.8.extract.trunc, 0
  %i.ko = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.kp = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %14, i64 128 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %13, i64 128 ; 2 uses
  br i1 %i.kn, label %.preheader.preheader, label %._crit_edge278.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.kv = sub i32 %.sroa.0105.0.extract.trunc, %.sroa.087.0.copyload
  %i.kw = sub i32 %.sroa.7111.0.extract.trunc, %.sroa.790.0.copyload
  %i.kx = sub i32 %.sroa.0105.0.extract.trunc, %.sroa.0.0.copyload
  %i.ky = sub i32 %.sroa.7111.0.extract.trunc, %.sroa.7.0.copyload
  %i.kz = mul i32 %.sroa.13.8.extract.trunc, 10
  %i.la = add i32 %i.kz, 200
  %i.lb = sext i32 %i.kv to i64                   ; 2 uses
  %i.lc = sext i32 %i.kx to i64                   ; 2 uses
  %i.ld = zext nneg i32 %i.z to i64
  %i.le = sext i32 %i.kw to i64
  %i.lf = sext i32 %i.ky to i64
  %wide.trip.count = and i64 %4, 2147483647
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge276
  %indvars.iv292 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next293, %._crit_edge276 ] ; 4 uses
  %indvars.iv286 = phi i32 [ %i.la, %.preheader.preheader ], [ %indvars.iv.next287, %._crit_edge276 ] ; 2 uses
  %i.lg = add nsw i64 %indvars.iv292, %i.lf       ; 2 uses
  %invariant.op.a = add nsw i64 %indvars.iv292, %i.le ; 2 uses
  %i.lh = icmp sgt i32 %indvars.iv286, -11
  br i1 %i.lh, label %.preheader.split, label %bb.az

.preheader.split:                                 ; preds = %.preheader
  %26 = add nuw nsw i64 %indvars.iv292, 10
  %27 = mul nuw nsw i64 %26, %i.ld
  %invariant.op = add nuw nsw i64 %27, 10
  br label %bb.ay

._crit_edge278.split:                             ; preds = %._crit_edge276, %.preheader.lr.ph, %.preheader269
  %i.li = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !199 ; 3 uses
  %.not.i.i.i.i252 = icmp eq ptr %i.lj, null
  br i1 %.not.i.i.i.i252, label %_ZNSt6vectorIN2cv6detail7GCGraphIfE4EdgeESaIS4_EED2Ev.exit.i253, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge278.split
  %i.lk = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !200
  %i.lm = ptrtoint ptr %i.ll to i64
  %i.ln = ptrtoint ptr %i.lj to i64
  %i.lo = sub i64 %i.lm, %i.ln
  call void @_ZdlPvm(ptr noundef nonnull %i.lj, i64 noundef %i.lo) #27
  br label %_ZNSt6vectorIN2cv6detail7GCGraphIfE4EdgeESaIS4_EED2Ev.exit.i253

_ZNSt6vectorIN2cv6detail7GCGraphIfE4EdgeESaIS4_EED2Ev.exit.i253: ; preds = %bb.aw, %._crit_edge278.split
  %i.lp = load ptr, ptr %23, align 8, !tbaa !172  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.lp, null
  br i1 %.not.i.i.i1.i, label %_ZN2cv6detail7GCGraphIfED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIN2cv6detail7GCGraphIfE4EdgeESaIS4_EED2Ev.exit.i253
  %i.lq = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !171
  %i.ls = ptrtoint ptr %i.lr to i64
  %i.lt = ptrtoint ptr %i.lp to i64
  %i.lu = sub i64 %i.ls, %i.lt
  call void @_ZdlPvm(ptr noundef nonnull %i.lp, i64 noundef %i.lu) #27
  br label %_ZN2cv6detail7GCGraphIfED2Ev.exit

_ZN2cv6detail7GCGraphIfED2Ev.exit:                ; preds = %_ZNSt6vectorIN2cv6detail7GCGraphIfE4EdgeESaIS4_EED2Ev.exit.i253, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret void

._crit_edge276:                                   ; preds = %bb.bi
  %indvars.iv.next293 = add nuw nsw i64 %indvars.iv292, 1 ; 2 uses
  %indvars.iv.next287 = add i32 %indvars.iv286, %i.z
  %exitcond296.not = icmp eq i64 %indvars.iv.next293, %.sroa.28.8.extract.shift
  br i1 %exitcond296.not, label %._crit_edge278.split, label %.preheader, !llvm.loop !450

bb.ay:                                            ; preds = %.preheader.split, %bb.bi
  %indvars.iv288 = phi i64 [ 0, %.preheader.split ], [ %indvars.iv.next289, %bb.bi ] ; 5 uses
  %.reass = add nuw nsw i64 %indvars.iv288, %invariant.op ; 2 uses
  %i.lv = load ptr, ptr %i.ko, align 8, !tbaa !170
  %i.lw = load ptr, ptr %23, align 8, !tbaa !172  ; 2 uses
  %i.lx = ptrtoint ptr %i.lv to i64
  %i.ly = ptrtoint ptr %i.lw to i64
  %i.lz = sub i64 %i.lx, %i.ly
  %i.ma = shl i64 %i.lz, 27
  %i.mb = ashr i64 %i.ma, 32
  %i.mc = icmp slt i64 %.reass, %i.mb
  br i1 %i.mc, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %.preheader, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc unwind label %bb.bf

.noexc:                                           ; preds = %bb.az
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv6detail7GCGraphIfE15inSourceSegmentEi, ptr noundef nonnull @.str.30, i32 noundef 386) #29
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %.noexc
  unreachable

bb.bb:                                            ; preds = %.noexc
  %i.md = landingpad { ptr, i32 }
          cleanup
  %i.me = load ptr, ptr %5, align 8, !tbaa !29    ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.mg = icmp eq ptr %i.me, %i.mf
  br i1 %i.mg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bb
  %i.mh = load i64, ptr %i.mf, align 8, !tbaa !30
  %i.mi = add i64 %i.mh, 1
  call void @_ZdlPvm(ptr noundef %i.me, i64 noundef %i.mi) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %.body255

bb.bc:                                            ; preds = %bb.ay
  %i.mj = getelementptr inbounds nuw [32 x i8], ptr %i.lw, i64 %.reass
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 28
  %i.ml = load i8, ptr %i.mk, align 4, !tbaa !202
  %i.mm = icmp eq i8 %i.ml, 0
  br i1 %i.mm, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %i.mn = load i32, ptr %i.ks, align 4, !tbaa !63
  %i.mo = icmp slt i32 %i.mn, 2
  %i.mp = load ptr, ptr %i.kt, align 8, !tbaa !64
  %i.mq = load i64, ptr %i.ku, align 8
  %i.mr = mul i64 %i.mq, %invariant.op.a
  %.sink.idx.i257 = select i1 %i.mo, i64 0, i64 %i.mr
  %.sink.i258 = getelementptr inbounds nuw i8, ptr %i.mp, i64 %.sink.idx.i257
  %i.ms = getelementptr i8, ptr %.sink.i258, i64 %indvars.iv288
  %i.mt = getelementptr i8, ptr %i.ms, i64 %i.lb
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !30
  %.not171 = icmp eq i8 %i.mu, 0
  br i1 %.not171, label %bb.bi, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.mv = load i32, ptr %i.kp, align 4, !tbaa !63
  %i.mw = icmp slt i32 %i.mv, 2
  %i.mx = load ptr, ptr %i.kq, align 8, !tbaa !64
  %i.my = load i64, ptr %i.kr, align 8
  %i.mz = mul i64 %i.my, %i.lg
  %.sink.idx.i259 = select i1 %i.mw, i64 0, i64 %i.mz
  %.sink.i260 = getelementptr inbounds nuw i8, ptr %i.mx, i64 %.sink.idx.i259
  br label %.sink.split

bb.bf:                                            ; preds = %bb.az, %bb.ao, %bb.ap, %bb.av
  %i.na = landingpad { ptr, i32 }
          cleanup
  br label %.body255

bb.bg:                                            ; preds = %bb.bc
  %i.nb = load i32, ptr %i.kp, align 4, !tbaa !63
  %i.nc = icmp slt i32 %i.nb, 2
  %i.nd = load ptr, ptr %i.kq, align 8, !tbaa !64
  %i.ne = load i64, ptr %i.kr, align 8
  %i.nf = mul i64 %i.ne, %i.lg
  %.sink.idx.i261 = select i1 %i.nc, i64 0, i64 %i.nf
  %.sink.i262 = getelementptr inbounds nuw i8, ptr %i.nd, i64 %.sink.idx.i261
  %i.ng = getelementptr i8, ptr %.sink.i262, i64 %indvars.iv288
  %i.nh = getelementptr i8, ptr %i.ng, i64 %i.lc
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !30
  %.not = icmp eq i8 %i.ni, 0
  br i1 %.not, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.nj = load i32, ptr %i.ks, align 4, !tbaa !63
  %i.nk = icmp slt i32 %i.nj, 2
  %i.nl = load ptr, ptr %i.kt, align 8, !tbaa !64
  %i.nm = load i64, ptr %i.ku, align 8
  %i.nn = mul i64 %i.nm, %invariant.op.a
  %.sink.idx.i263 = select i1 %i.nk, i64 0, i64 %i.nn
  %.sink.i264 = getelementptr inbounds nuw i8, ptr %i.nl, i64 %.sink.idx.i263
  br label %.sink.split

.sink.split:                                      ; preds = %bb.bh, %bb.be
  %.sink.i260.sink = phi ptr [ %.sink.i260, %bb.be ], [ %.sink.i264, %bb.bh ]
  %.sink324 = phi i64 [ %i.lc, %bb.be ], [ %i.lb, %bb.bh ]
  %i.no = getelementptr i8, ptr %.sink.i260.sink, i64 %indvars.iv288
  %i.np = getelementptr i8, ptr %i.no, i64 %.sink324
  store i8 0, ptr %i.np, align 1, !tbaa !30
  br label %bb.bi

bb.bi:                                            ; preds = %.sink.split, %bb.bd, %bb.bg
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %exitcond291.not = icmp eq i64 %indvars.iv.next289, %wide.trip.count
  br i1 %exitcond291.not, label %._crit_edge276, label %bb.ay, !llvm.loop !451

.body255:                                         ; preds = %bb.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.na, %bb.bf ], [ %i.md, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @_ZN2cv6detail7GCGraphIfED2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %23) #28
  br label %.body

.body:                                            ; preds = %bb.r, %_ZNSt6vectorIN2cv6detail7GCGraphIfE4EdgeESaIS4_EED2Ev.exit.i, %.body255
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body255 ], [ %i.cy, %_ZNSt6vectorIN2cv6detail7GCGraphIfE4EdgeESaIS4_EED2Ev.exit.i ], [ %i.cy, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #28
  br label %bb.bj

bb.bj:                                            ; preds = %.body, %bb.ag
  %.pn175.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.ea, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #28
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.af
  %.pn175.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn, %bb.bj ], [ %i.dz, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #28
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.ae
  %.pn175.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn.pn, %bb.bk ], [ %i.dy, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #28
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.ad
  %.pn175.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn.pn.pn, %bb.bl ], [ %i.dx, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #28
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.ac
  %.pn175.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn.pn.pn.pn, %bb.bm ], [ %i.dw, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #28
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.ab
  %.pn175.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn.pn.pn.pn.pn, %bb.bn ], [ %i.dv, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #28
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.aa
  %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bo ], [ %i.du, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #28
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.z
  %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bp ], [ %i.dt, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #28
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.y
  %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bq ], [ %i.ds, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #28
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.x
  %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.br ], [ %i.dr, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #28
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.w
  %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bs ], [ %i.dq, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #28
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.v
  %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bt ], [ %i.dp, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #28
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.u
  %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bu ], [ %i.do, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #28
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.t
  %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bv ], [ %i.dn, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #28
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.s
  %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bw ], [ %i.dm, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  resume { ptr, i32 } %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef float @_ZN2cv6detail7GCGraphIfE7maxFlowEv(ptr noundef nonnull align 8 dereferenceable(52) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::allocator", align 1    ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.cv::detail::GCGraph<float>::Vtx", align 8 ; 17 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !463    ; 18 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !463  ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @__func__._ZN2cv6detail7GCGraphIfE7maxFlowEv, ptr noundef nonnull @.str.30, i32 noundef 158) #29
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.j = load i64, ptr %i.h, align 8, !tbaa !30
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn241 = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.f, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.ct

bb.g:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !464  ; 22 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !464
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv6detail7GCGraphIfE7maxFlowEv, ptr noundef nonnull @.str.30, i32 noundef 159) #29
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

bb.l:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %3, align 8, !tbaa !29     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245: ; preds = %bb.l
  %i.v = load i64, ptr %i.t, align 8, !tbaa !30
end_hunk_0
