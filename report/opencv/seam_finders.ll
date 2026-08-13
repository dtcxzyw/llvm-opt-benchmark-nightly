inline.NumInlined: 2971
inline.NumDeleted: 1133
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN2cv6detail18GraphCutSeamFinder4Impl10findInPairEmmNS_5Rect_IiEE:bb.a
  %i.ie = icmp slt i32 %i.id, 2
  %i.if = load ptr, ptr %i.by, align 8, !tbaa !95
  %i.ig = load i64, ptr %i.bz, align 8
  %i.ih = mul i64 %i.ig, %i.cr
  %.sink.idx.i232 = select i1 %i.ie, i64 0, i64 %i.ih
  %.sink.i233 = getelementptr inbounds nuw i8, ptr %i.if, i64 %.sink.idx.i232
  %i.ii = getelementptr inbounds nuw i8, ptr %.sink.i233, i64 %i.hu
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !34
  %i.ik = load i32, ptr %i.bl, align 4, !tbaa !90
  %i.il = icmp slt i32 %i.ik, 2
  %i.im = load ptr, ptr %i.bm, align 8, !tbaa !95
  %i.in = load i64, ptr %i.bn, align 8
  %i.io = mul i64 %i.in, %i.cn
  %.sink.idx.i234 = select i1 %i.il, i64 0, i64 %i.io
  %.sink.i235 = getelementptr inbounds nuw i8, ptr %i.im, i64 %.sink.idx.i234
  %i.ip = getelementptr inbounds i8, ptr %.sink.i235, i64 %i.hw
  store i8 %i.ij, ptr %i.ip, align 1, !tbaa !34
  %i.iq = load i32, ptr %i.ca, align 4, !tbaa !90
  %i.ir = icmp slt i32 %i.iq, 2
  %i.is = load ptr, ptr %i.cb, align 8, !tbaa !95
  %i.it = load i64, ptr %i.cc, align 8
  %i.iu = mul i64 %i.it, %i.cr
  %.sink.idx.i236 = select i1 %i.ir, i64 0, i64 %i.iu
  %.sink.i237 = getelementptr inbounds nuw i8, ptr %i.is, i64 %.sink.idx.i236
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %.sink.i237, i64 %i.hu
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !319
  %i.ix = load i32, ptr %i.bo, align 4, !tbaa !90
  %i.iy = icmp slt i32 %i.ix, 2
  %i.iz = load ptr, ptr %i.bp, align 8, !tbaa !95
  %i.ja = load i64, ptr %i.bq, align 8
  %i.jb = mul i64 %i.ja, %i.cn
  %.sink.idx.i238 = select i1 %i.iy, i64 0, i64 %i.jb
  %.sink.i239 = getelementptr inbounds nuw i8, ptr %i.iz, i64 %.sink.idx.i238
  %i.jc = getelementptr inbounds [4 x i8], ptr %.sink.i239, i64 %i.hw
  store float %i.iw, ptr %i.jc, align 4, !tbaa !319
  %i.jd = load i32, ptr %i.cd, align 4, !tbaa !90
  %i.je = icmp slt i32 %i.jd, 2
  %i.jf = load ptr, ptr %i.ce, align 8, !tbaa !95
  %i.jg = load i64, ptr %i.cf, align 8
  %i.jh = mul i64 %i.jg, %i.cr
  %.sink.idx.i240 = select i1 %i.je, i64 0, i64 %i.jh
  %.sink.i241 = getelementptr inbounds nuw i8, ptr %i.jf, i64 %.sink.idx.i240
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %.sink.i241, i64 %i.hu
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !319
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.jk = add nsw i64 %indvars.iv, 10             ; 4 uses
  %i.jl = load i32, ptr %i.bi, align 4, !tbaa !90
  %i.jm = icmp slt i32 %i.jl, 2
  %i.jn = load ptr, ptr %i.bj, align 8, !tbaa !95
  %i.jo = load i64, ptr %i.bk, align 8
  %i.jp = mul i64 %i.jo, %i.cn
  %.sink.idx.i244 = select i1 %i.jm, i64 0, i64 %i.jp
  %.sink.i245 = getelementptr inbounds nuw i8, ptr %i.jn, i64 %.sink.idx.i244
  %i.jq = getelementptr inbounds [12 x i8], ptr %.sink.i245, i64 %i.jk ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.jq, align 4, !tbaa !319
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !319
  %i.jr = load i32, ptr %i.bl, align 4, !tbaa !90
  %i.js = icmp slt i32 %i.jr, 2
  %i.jt = load ptr, ptr %i.bm, align 8, !tbaa !95
  %i.ju = load i64, ptr %i.bn, align 8
  %i.jv = mul i64 %i.ju, %i.cn
  %.sink.idx.i246 = select i1 %i.js, i64 0, i64 %i.jv
  %.sink.i247 = getelementptr inbounds nuw i8, ptr %i.jt, i64 %.sink.idx.i246
  %i.jw = getelementptr inbounds i8, ptr %.sink.i247, i64 %i.jk
  store i8 0, ptr %i.jw, align 1, !tbaa !34
  %i.jx = load i32, ptr %i.bo, align 4, !tbaa !90
  %i.jy = icmp slt i32 %i.jx, 2
  %i.jz = load ptr, ptr %i.bp, align 8, !tbaa !95
  %i.ka = load i64, ptr %i.bq, align 8
  %i.kb = mul i64 %i.ka, %i.cn
  %.sink.idx.i248 = select i1 %i.jy, i64 0, i64 %i.kb
  %.sink.i249 = getelementptr inbounds nuw i8, ptr %i.jz, i64 %.sink.idx.i248
  %i.kc = getelementptr inbounds [4 x i8], ptr %.sink.i249, i64 %i.jk
  store float 0.000000e+00, ptr %i.kc, align 4, !tbaa !319
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.sink321 = phi i64 [ %i.jk, %bb.ak ], [ %i.hw, %bb.aj ]
  %.sink319 = phi float [ 0.000000e+00, %bb.ak ], [ %i.jj, %bb.aj ]
  %i.kd = load i32, ptr %i.br, align 4, !tbaa !90
  %i.ke = icmp slt i32 %i.kd, 2
  %i.kf = load ptr, ptr %i.bs, align 8, !tbaa !95
  %i.kg = load i64, ptr %i.bt, align 8
  %i.kh = mul i64 %i.kg, %i.cn
  %.sink.idx.i250 = select i1 %i.ke, i64 0, i64 %i.kh
  %.sink.i251 = getelementptr inbounds nuw i8, ptr %i.kf, i64 %.sink.idx.i250
  %i.ki = getelementptr inbounds [4 x i8], ptr %.sink.i251, i64 %.sink321
  store float %.sink319, ptr %i.ki, align 4, !tbaa !319
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ch, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.af, !llvm.loop !464

bb.am:                                            ; preds = %_ZNSt6vectorIN2cv6detail7GCGraphIfE3VtxESaIS4_EE7reserveEm.exit.i, %_ZNSt12_Vector_baseIN2cv6detail7GCGraphIfE4EdgeESaIS4_EE13_M_deallocateEPS4_m.exit.i.i
  %i.kj = getelementptr inbounds nuw i8, ptr %23, i64 48
  store float 0.000000e+00, ptr %i.kj, align 8, !tbaa !440
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.kl = load i32, ptr %i.kk, align 8, !tbaa !465
  switch i32 %i.kl, label %bb.aq [
    i32 0, label %bb.an
    i32 1, label %bb.ap
  ]

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN2cv6detail18GraphCutSeamFinder4Impl20setGraphWeightsColorERKNS_3MatES5_S5_S5_RNS0_7GCGraphIfEE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 8 dereferenceable(208) %16, ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(52) %23)
          to label %bb.av unwind label %bb.ao

bb.ao:                                            ; preds = %bb.av, %bb.ap, %bb.an
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %.body255

bb.ap:                                            ; preds = %bb.am
  invoke void @_ZN2cv6detail18GraphCutSeamFinder4Impl24setGraphWeightsColorGradERKNS_3MatES5_S5_S5_S5_S5_S5_S5_RNS0_7GCGraphIfEE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 8 dereferenceable(208) %16, ptr noundef nonnull align 8 dereferenceable(208) %19, ptr noundef nonnull align 8 dereferenceable(208) %21, ptr noundef nonnull align 8 dereferenceable(208) %20, ptr noundef nonnull align 8 dereferenceable(208) %22, ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(52) %23)
          to label %bb.av unwind label %bb.ao

bb.aq:                                            ; preds = %bb.am
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
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.au:                                            ; preds = %bb.ar
  %i.ko = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kp = load ptr, ptr %24, align 8, !tbaa !28   ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.kr = icmp eq ptr %i.kp, %i.kq
  br i1 %i.kr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.au
  %i.ks = load i64, ptr %i.kq, align 8, !tbaa !34
  %i.kt = add i64 %i.ks, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.kt) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.at
  %.pn = phi { ptr, i32 } [ %i.kn, %bb.at ], [ %i.ko, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ko, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  br label %.body255

bb.av:                                            ; preds = %bb.ap, %bb.an
  %i.ku = invoke noundef float @_ZN2cv6detail7GCGraphIfE7maxFlowEv(ptr noundef nonnull align 8 dereferenceable(52) %23)
          to label %.preheader272 unwind label %bb.ao ; 0 uses

.preheader272:                                    ; preds = %bb.av
  %i.kv = icmp sgt i32 %.sroa.28.8.extract.trunc, 0
  br i1 %i.kv, label %.preheader.lr.ph, label %._crit_edge281.split

.preheader.lr.ph:                                 ; preds = %.preheader272
  %i.kw = icmp sgt i32 %.sroa.13.8.extract.trunc, 0
  %i.kx = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ky = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %14, i64 128 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %13, i64 128 ; 2 uses
  br i1 %i.kw, label %.preheader.preheader, label %._crit_edge281.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.le = sub i32 %.sroa.0105.0.extract.trunc, %.sroa.087.0.copyload
  %i.lf = sub i32 %.sroa.7111.0.extract.trunc, %.sroa.790.0.copyload
  %i.lg = sub i32 %.sroa.0105.0.extract.trunc, %.sroa.0.0.copyload
  %i.lh = sub i32 %.sroa.7111.0.extract.trunc, %.sroa.7.0.copyload
  %i.li = mul i32 %.sroa.13.8.extract.trunc, 10
  %i.lj = add i32 %i.li, 200
  %i.lk = sext i32 %i.le to i64                   ; 2 uses
  %i.ll = sext i32 %i.lg to i64                   ; 2 uses
  %i.lm = zext nneg i32 %i.z to i64
  %i.ln = sext i32 %i.lf to i64
  %i.lo = sext i32 %i.lh to i64
  %wide.trip.count = and i64 %4, 2147483647
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge279
  %indvars.iv295 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next296, %._crit_edge279 ] ; 4 uses
  %indvars.iv289 = phi i32 [ %i.lj, %.preheader.preheader ], [ %indvars.iv.next290, %._crit_edge279 ] ; 2 uses
  %i.lp = add nuw nsw i64 %indvars.iv295, 10
  %i.lq = mul nuw nsw i64 %i.lp, %i.lm
  %i.lr = add nsw i64 %indvars.iv295, %i.lo       ; 2 uses
  %i.ls = add nsw i64 %indvars.iv295, %i.ln       ; 2 uses
  %invariant.op = add nuw nsw i64 %i.lq, 10
  %i.lt = icmp sgt i32 %indvars.iv289, -11
  br i1 %i.lt, label %bb.ay, label %bb.az

._crit_edge281.split:                             ; preds = %._crit_edge279, %.preheader.lr.ph, %.preheader272
  %i.lu = load ptr, ptr %i.dh, align 8, !tbaa !455 ; 3 uses
  %.not.i.i.i.i252 = icmp eq ptr %i.lu, null
  br i1 %.not.i.i.i.i252, label %_ZNSt6vectorIN2cv6detail7GCGraphIfE4EdgeESaIS4_EED2Ev.exit.i253, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge281.split
  %i.lv = load ptr, ptr %i.dl, align 8, !tbaa !457
  %i.lw = ptrtoint ptr %i.lv to i64
  %i.lx = ptrtoint ptr %i.lu to i64
  %i.ly = sub i64 %i.lw, %i.lx
  call void @_ZdlPvm(ptr noundef nonnull %i.lu, i64 noundef %i.ly) #27
  br label %_ZNSt6vectorIN2cv6detail7GCGraphIfE4EdgeESaIS4_EED2Ev.exit.i253

_ZNSt6vectorIN2cv6detail7GCGraphIfE4EdgeESaIS4_EED2Ev.exit.i253: ; preds = %bb.aw, %._crit_edge281.split
  %i.lz = load ptr, ptr %23, align 8, !tbaa !425  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.lz, null
  br i1 %.not.i.i.i1.i, label %_ZN2cv6detail7GCGraphIfED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIN2cv6detail7GCGraphIfE4EdgeESaIS4_EED2Ev.exit.i253
  %i.ma = load ptr, ptr %i.cy, align 8, !tbaa !424
  %i.mb = ptrtoint ptr %i.ma to i64
  %i.mc = ptrtoint ptr %i.lz to i64
  %i.md = sub i64 %i.mb, %i.mc
  call void @_ZdlPvm(ptr noundef nonnull %i.lz, i64 noundef %i.md) #27
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

._crit_edge279:                                   ; preds = %bb.bi
  %indvars.iv.next296 = add nuw nsw i64 %indvars.iv295, 1 ; 2 uses
  %indvars.iv.next290 = add i32 %indvars.iv289, %i.z
  %exitcond299.not = icmp eq i64 %indvars.iv.next296, %.sroa.28.8.extract.shift
  br i1 %exitcond299.not, label %._crit_edge281.split, label %.preheader, !llvm.loop !466

bb.ay:                                            ; preds = %.preheader, %bb.bi
  %indvars.iv291 = phi i64 [ %indvars.iv.next292, %bb.bi ], [ 0, %.preheader ] ; 5 uses
  %.reass = add nuw nsw i64 %indvars.iv291, %invariant.op ; 2 uses
  %i.me = load ptr, ptr %i.kx, align 8, !tbaa !420
  %i.mf = load ptr, ptr %23, align 8, !tbaa !425  ; 2 uses
  %i.mg = ptrtoint ptr %i.me to i64
  %i.mh = ptrtoint ptr %i.mf to i64
  %i.mi = sub i64 %i.mg, %i.mh
  %sext = shl i64 %i.mi, 27
  %i.mj = ashr i64 %sext, 32
  %i.mk = icmp slt i64 %.reass, %i.mj
  br i1 %i.mk, label %bb.bc, label %bb.az

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
  %i.ml = landingpad { ptr, i32 }
          cleanup
  %i.mm = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.mo = icmp eq ptr %i.mm, %i.mn
  br i1 %i.mo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bb
  %i.mp = load i64, ptr %i.mn, align 8, !tbaa !34
  %i.mq = add i64 %i.mp, 1
  call void @_ZdlPvm(ptr noundef %i.mm, i64 noundef %i.mq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %.body255

bb.bc:                                            ; preds = %bb.ay
  %i.mr = getelementptr inbounds nuw [32 x i8], ptr %i.mf, i64 %.reass
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 28
  %i.mt = load i8, ptr %i.ms, align 4, !tbaa !467
  %i.mu = icmp eq i8 %i.mt, 0
  br i1 %i.mu, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %i.mv = load i32, ptr %i.lb, align 4, !tbaa !90
  %i.mw = icmp slt i32 %i.mv, 2
  %i.mx = load ptr, ptr %i.lc, align 8, !tbaa !95
  %i.my = load i64, ptr %i.ld, align 8
  %i.mz = mul i64 %i.my, %i.ls
  %.sink.idx.i257 = select i1 %i.mw, i64 0, i64 %i.mz
  %.sink.i258 = getelementptr inbounds nuw i8, ptr %i.mx, i64 %.sink.idx.i257
  %i.na = getelementptr i8, ptr %.sink.i258, i64 %indvars.iv291
  %i.nb = getelementptr i8, ptr %i.na, i64 %i.lk
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !34
  %.not171 = icmp eq i8 %i.nc, 0
  br i1 %.not171, label %bb.bi, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.nd = load i32, ptr %i.ky, align 4, !tbaa !90
  %i.ne = icmp slt i32 %i.nd, 2
  %i.nf = load ptr, ptr %i.kz, align 8, !tbaa !95
  %i.ng = load i64, ptr %i.la, align 8
  %i.nh = mul i64 %i.ng, %i.lr
  %.sink.idx.i259 = select i1 %i.ne, i64 0, i64 %i.nh
  %.sink.i260 = getelementptr inbounds nuw i8, ptr %i.nf, i64 %.sink.idx.i259
  br label %.sink.split

bb.bf:                                            ; preds = %bb.az
  %i.ni = landingpad { ptr, i32 }
          cleanup
  br label %.body255

bb.bg:                                            ; preds = %bb.bc
  %i.nj = load i32, ptr %i.ky, align 4, !tbaa !90
  %i.nk = icmp slt i32 %i.nj, 2
  %i.nl = load ptr, ptr %i.kz, align 8, !tbaa !95
  %i.nm = load i64, ptr %i.la, align 8
  %i.nn = mul i64 %i.nm, %i.lr
  %.sink.idx.i261 = select i1 %i.nk, i64 0, i64 %i.nn
  %.sink.i262 = getelementptr inbounds nuw i8, ptr %i.nl, i64 %.sink.idx.i261
  %i.no = getelementptr i8, ptr %.sink.i262, i64 %indvars.iv291
  %i.np = getelementptr i8, ptr %i.no, i64 %i.ll
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !34
  %.not = icmp eq i8 %i.nq, 0
  br i1 %.not, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.nr = load i32, ptr %i.lb, align 4, !tbaa !90
  %i.ns = icmp slt i32 %i.nr, 2
  %i.nt = load ptr, ptr %i.lc, align 8, !tbaa !95
  %i.nu = load i64, ptr %i.ld, align 8
  %i.nv = mul i64 %i.nu, %i.ls
  %.sink.idx.i263 = select i1 %i.ns, i64 0, i64 %i.nv
  %.sink.i264 = getelementptr inbounds nuw i8, ptr %i.nt, i64 %.sink.idx.i263
  br label %.sink.split

.sink.split:                                      ; preds = %bb.bh, %bb.be
  %.sink.i260.sink = phi ptr [ %.sink.i260, %bb.be ], [ %.sink.i264, %bb.bh ]
  %.sink329 = phi i64 [ %i.ll, %bb.be ], [ %i.lk, %bb.bh ]
  %i.nw = getelementptr i8, ptr %.sink.i260.sink, i64 %indvars.iv291
  %i.nx = getelementptr i8, ptr %i.nw, i64 %.sink329
  store i8 0, ptr %i.nx, align 1, !tbaa !34
  br label %bb.bi

bb.bi:                                            ; preds = %.sink.split, %bb.bd, %bb.bg
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %exitcond294.not = icmp eq i64 %indvars.iv.next292, %wide.trip.count
  br i1 %exitcond294.not, label %._crit_edge279, label %bb.ay, !llvm.loop !468

.body255:                                         ; preds = %bb.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ao
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.km, %bb.ao ], [ %i.ni, %bb.bf ], [ %i.ml, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @_ZN2cv6detail7GCGraphIfED2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %23) #28
  br label %.body

.body:                                            ; preds = %_ZNSt6vectorIN2cv6detail7GCGraphIfE4EdgeESaIS4_EED2Ev.exit.i.thread, %bb.p, %_ZNSt6vectorIN2cv6detail7GCGraphIfE4EdgeESaIS4_EED2Ev.exit.i, %.body255
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body255 ], [ %i.dq, %_ZNSt6vectorIN2cv6detail7GCGraphIfE4EdgeESaIS4_EED2Ev.exit.i ], [ %i.dq, %bb.p ], [ %i.db, %_ZNSt6vectorIN2cv6detail7GCGraphIfE4EdgeESaIS4_EED2Ev.exit.i.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #28
  br label %bb.bj

bb.bj:                                            ; preds = %.body, %bb.ae
  %.pn175.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.eh, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #28
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.ad
  %.pn175.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn, %bb.bj ], [ %i.eg, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #28
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.ac
  %.pn175.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn.pn, %bb.bk ], [ %i.ef, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #28
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.ab
  %.pn175.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn.pn.pn, %bb.bl ], [ %i.ee, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #28
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.aa
  %.pn175.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn.pn.pn.pn, %bb.bm ], [ %i.ed, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #28
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.z
  %.pn175.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn.pn.pn.pn.pn, %bb.bn ], [ %i.ec, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #28
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.y
  %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bo ], [ %i.eb, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #28
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.x
  %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bp ], [ %i.ea, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #28
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.w
  %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bq ], [ %i.dz, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #28
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.v
  %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.br ], [ %i.dy, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #28
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.u
  %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bs ], [ %i.dx, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #28
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.t
  %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bt ], [ %i.dw, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #28
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.s
  %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bu ], [ %i.dv, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #28
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.r
  %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bv ], [ %i.du, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #28
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.q
  %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bw ], [ %i.dt, %bb.q ]
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !469    ; 18 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !469  ; 2 uses
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
  %i.g = load ptr, ptr %1, align 8, !tbaa !28     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.j = load i64, ptr %i.h, align 8, !tbaa !34
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
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !470  ; 22 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !470
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
  %i.s = load ptr, ptr %3, align 8, !tbaa !28     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245: ; preds = %bb.l
  %i.v = load i64, ptr %i.t, align 8, !tbaa !34
end_hunk_0
