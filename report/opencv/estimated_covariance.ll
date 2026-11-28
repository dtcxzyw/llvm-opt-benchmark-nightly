Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/estimated_covariance?download=true
inline.NumInlined: 333
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2cv8ximgproc18EstimateCovariance21computeOneCombinationEiNS_3MatES2_S2_St6vectorIiSaIiEES5_:bb.a
  %i.xq = phi <2 x float> [ %i.xh, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit381 ], [ %i.xh, %bb.at ], [ %i.xm, %bb.au ] ; 3 uses
  %i.xr = icmp slt i32 %i.xp, 2                   ; 2 uses
  %i.xs = sext i32 %i.sk to i64                   ; 2 uses
  %i.xt = mul i64 %i.xn, %i.xs                    ; 3 uses
  %.sink.idx.i393 = select i1 %i.xr, i64 0, i64 %i.xt
  %.sink.i394 = getelementptr inbounds nuw i8, ptr %i.xo, i64 %.sink.idx.i393
  %i.xu = getelementptr inbounds [8 x i8], ptr %.sink.i394, i64 %i.lw
  %i.xv = sext i32 %i.si to i64                   ; 2 uses
  %i.xw = mul i64 %i.xn, %i.xv                    ; 3 uses
  %.sink.idx.i395 = select i1 %i.xr, i64 0, i64 %i.xw
  %.sink.i396 = getelementptr inbounds nuw i8, ptr %i.xo, i64 %.sink.idx.i395
  %i.xx = getelementptr inbounds [8 x i8], ptr %.sink.i396, i64 %i.lz
  %i.xy = load <2 x float>, ptr %i.xu, align 4, !tbaa !40 ; 4 uses
  %i.xz = shufflevector <2 x float> %i.xy, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.0.0.vec.extract.i.i397 = extractelement <2 x float> %i.xy, i64 0
  %i.ya = load <2 x float>, ptr %i.xx, align 4    ; 4 uses
  %i.yb = fmul <2 x float> %i.ya, %i.xy           ; 2 uses
  %i.yc = fmul <2 x float> %i.xz, %i.ya
  %shift864 = shufflevector <2 x float> %i.yb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop865 = fsub <2 x float> %i.yb, %shift864 ; 2 uses
  %i.yd = extractelement <2 x float> %foldExtExtBinop865, i64 0
  %i.ye = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.yc) ; 2 uses
  %i.yf = fcmp uno float %i.yd, 0.000000e+00
  %i.yg = insertelement <2 x float> %foldExtExtBinop865, float %i.ye, i64 1 ; 2 uses
  br i1 %i.yf, label %bb.av, label %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit403, !prof !78

bb.av:                                            ; preds = %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit392
  %i.yh = fcmp uno float %i.ye, 0.000000e+00
  br i1 %i.yh, label %bb.aw, label %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit403, !prof !78

bb.aw:                                            ; preds = %bb.av
  %i.yi = extractelement <2 x float> %i.ya, i64 0
  %i.yj = extractelement <2 x float> %i.ya, i64 1
  %i.yk = extractelement <2 x float> %i.xy, i64 1
  %i.yl = tail call noundef <2 x float> @__mulsc3(float noundef %.sroa.0.0.vec.extract.i.i397, float noundef %i.yk, float noundef %i.yi, float noundef %i.yj) #19
  %.pre706 = load i32, ptr %i.ey, align 4, !tbaa !76
  %.pre707 = load ptr, ptr %i.ez, align 8, !tbaa !77
  %.pre708 = load i64, ptr %i.fa, align 8         ; 2 uses
  %.pre729 = mul i64 %.pre708, %i.xs
  %.pre731 = mul i64 %.pre708, %i.xv
  br label %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit403

_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit403: ; preds = %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit392, %bb.av, %bb.aw
  %.pre-phi732 = phi i64 [ %i.xw, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit392 ], [ %i.xw, %bb.av ], [ %.pre731, %bb.aw ]
  %.pre-phi730 = phi i64 [ %i.xt, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit392 ], [ %i.xt, %bb.av ], [ %.pre729, %bb.aw ]
  %i.ym = phi ptr [ %i.xo, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit392 ], [ %i.xo, %bb.av ], [ %.pre707, %bb.aw ] ; 2 uses
  %i.yn = phi i32 [ %i.xp, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit392 ], [ %i.xp, %bb.av ], [ %.pre706, %bb.aw ]
  %i.yo = phi <2 x float> [ %i.yg, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit392 ], [ %i.yg, %bb.av ], [ %i.yl, %bb.aw ] ; 3 uses
  %i.yp = icmp slt i32 %i.yn, 2                   ; 2 uses
  %.sink.idx.i404 = select i1 %i.yp, i64 0, i64 %.pre-phi730
  %.sink.i405 = getelementptr inbounds nuw i8, ptr %i.ym, i64 %.sink.idx.i404
  %i.yq = getelementptr inbounds [8 x i8], ptr %.sink.i405, i64 %i.sc
  %.sink.idx.i406 = select i1 %i.yp, i64 0, i64 %.pre-phi732
  %.sink.i407 = getelementptr inbounds nuw i8, ptr %i.ym, i64 %.sink.idx.i406
  %i.yr = getelementptr inbounds [8 x i8], ptr %.sink.i407, i64 %i.sd ; 2 uses
  %i.ys = load <2 x float>, ptr %i.yq, align 4, !tbaa !40 ; 4 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yr, i64 4
  %.sroa.0.0.vec.extract.i.i408 = extractelement <2 x float> %i.ys, i64 0
  %.sroa.0.4.vec.extract.i.i409 = extractelement <2 x float> %i.ys, i64 1
  %i.yu = load float, ptr %i.yr, align 4          ; 2 uses
  %i.yv = load float, ptr %i.yt, align 4          ; 2 uses
  %i.yw = insertelement <2 x float> poison, float %i.yv, i64 0
  %i.yx = shufflevector <2 x float> %i.ys, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.yy = shufflevector <2 x float> %i.yw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yz = fmul <2 x float> %i.yx, %i.yy           ; 2 uses
  %i.za = insertelement <2 x float> poison, float %i.yu, i64 0
  %i.zb = shufflevector <2 x float> %i.za, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zc = fmul <2 x float> %i.zb, %i.ys           ; 2 uses
  %i.zd = fsub <2 x float> %i.zc, %i.yz           ; 2 uses
  %i.ze = fadd <2 x float> %i.zc, %i.yz           ; 2 uses
  %i.zf = shufflevector <2 x float> %i.zd, <2 x float> %i.ze, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.zg = extractelement <2 x float> %i.zd, i64 0
  %i.zh = fcmp uno float %i.zg, 0.000000e+00
  br i1 %i.zh, label %bb.ax, label %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit370, !prof !78

bb.ax:                                            ; preds = %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit403
  %i.zi = extractelement <2 x float> %i.ze, i64 1
  %i.zj = fcmp uno float %i.zi, 0.000000e+00
  br i1 %i.zj, label %bb.ay, label %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit370, !prof !78

bb.ay:                                            ; preds = %bb.ax
  %i.zk = tail call noundef <2 x float> @__mulsc3(float noundef %.sroa.0.0.vec.extract.i.i408, float noundef %.sroa.0.4.vec.extract.i.i409, float noundef %i.yu, float noundef %i.yv) #19
  br label %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit370

_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit370: ; preds = %bb.ay, %bb.ax, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit403, %bb.ap, %bb.ao, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit359
  %.sroa.0453.0 = phi <2 x float> [ %i.tk, %bb.ap ], [ %i.tk, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit359 ], [ %i.tk, %bb.ao ], [ %i.wv, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit403 ], [ %i.wv, %bb.ax ], [ %i.wv, %bb.ay ]
  %.sroa.0450.0 = phi <2 x float> [ %i.uf, %bb.ap ], [ %i.uf, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit359 ], [ %i.uf, %bb.ao ], [ %i.xq, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit403 ], [ %i.xq, %bb.ax ], [ %i.xq, %bb.ay ]
  %.sroa.0447.0 = phi <2 x float> [ %i.vd, %bb.ap ], [ %i.vd, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit359 ], [ %i.vd, %bb.ao ], [ %i.yo, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit403 ], [ %i.yo, %bb.ax ], [ %i.yo, %bb.ay ]
  %i.zl = phi <2 x float> [ %i.vz, %bb.ap ], [ %i.vu, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit359 ], [ %i.vu, %bb.ao ], [ %i.zf, %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit403 ], [ %i.zf, %bb.ax ], [ %i.zk, %bb.ay ]
  %i.zm = add nsw i64 %indvars.iv672, %i.qu
  %i.zn = load i32, ptr %i.ek, align 4, !tbaa !76
  %i.zo = icmp slt i32 %i.zn, 2                   ; 4 uses
  %i.zp = load ptr, ptr %i.ej, align 8, !tbaa !77 ; 4 uses
  %i.zq = load i64, ptr %i.ei, align 8            ; 4 uses
  %i.zr = mul i64 %i.zq, %i.zm
  %.sink.idx.i415 = select i1 %i.zo, i64 0, i64 %i.zr
  %.sink.i416 = getelementptr inbounds nuw i8, ptr %i.zp, i64 %.sink.idx.i415
  %i.zs = add nsw i64 %i.sg, %i.qu
  %i.zt = mul i64 %i.zq, %i.zs
  %.sink.idx.i417 = select i1 %i.zo, i64 0, i64 %i.zt
  %.sink.i418 = getelementptr inbounds nuw i8, ptr %i.zp, i64 %.sink.idx.i417
  %i.zu = add nsw i64 %i.sg, %i.ra
  %i.zv = mul i64 %i.zq, %i.zu
  %.sink.idx.i419 = select i1 %i.zo, i64 0, i64 %i.zv
  %.sink.i420 = getelementptr inbounds nuw i8, ptr %i.zp, i64 %.sink.idx.i419
  %i.zw = add nuw nsw i64 %indvars.iv672, %i.ra
  %i.zx = mul i64 %i.zq, %i.zw
  %.sink.idx.i421 = select i1 %i.zo, i64 0, i64 %i.zx
  %.sink.i422 = getelementptr inbounds nuw i8, ptr %i.zp, i64 %.sink.idx.i421 ; 2 uses
  %i.zy = fadd <2 x float> %.sroa.0453.0, zeroinitializer
  %i.zz = fsub <2 x float> %i.zy, %.sroa.0450.0
  %i.aaa = fsub <2 x float> %i.zz, %.sroa.0447.0
  %i.aab = fadd <2 x float> %i.zl, %i.aaa
  %i.aac = load <2 x float>, ptr %.sink.i416, align 4
  %i.aad = fadd <2 x float> %i.aac, zeroinitializer
  %i.aae = load <2 x float>, ptr %.sink.i418, align 4
  %i.aaf = fsub <2 x float> %i.aad, %i.aae
  %i.aag = fadd <2 x float> %i.aab, %i.aaf
  %i.aah = load <2 x float>, ptr %.sink.i420, align 4
  %i.aai = fadd <2 x float> %i.aah, %i.aag
  %i.aaj = load <2 x float>, ptr %.sink.i422, align 4
  %i.aak = fadd <2 x float> %i.aai, %i.aaj
  store <2 x float> %i.aak, ptr %.sink.i422, align 4
  %i.aal = load ptr, ptr %5, align 8, !tbaa !32   ; 2 uses
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %i.aal, i64 %.3223.in590
  %i.aan = load i32, ptr %i.aam, align 4, !tbaa !25
  %i.aao = add nsw i32 %i.aan, 1
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %i.aal, i64 %indvars.iv670
  store i32 %i.aao, ptr %i.aap, align 4, !tbaa !25
  %i.aaq = load ptr, ptr %6, align 8, !tbaa !32   ; 2 uses
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.aaq, i64 %.3223.in590
  %i.aas = load i32, ptr %i.aar, align 4, !tbaa !25
  %i.aat = add nsw i32 %i.aas, 1
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %i.aaq, i64 %indvars.iv670
  store i32 %i.aat, ptr %i.aau, align 4, !tbaa !25
  %indvars.iv.next673 = add nuw nsw i64 %indvars.iv672, 1 ; 2 uses
  %indvars.iv.next671 = add nsw i64 %indvars.iv670, 1 ; 2 uses
  %exitcond678.not = icmp eq i64 %indvars.iv.next673, %wide.trip.count677
  br i1 %exitcond678.not, label %._crit_edge595.loopexit, label %bb.ag, !llvm.loop !65

._crit_edge595.loopexit:                          ; preds = %_ZN2cv8ximgproc18EstimateCovariance14complexConjMulERSt7complexIfES4_S4_.exit370
  %i.aav = trunc nsw i64 %indvars.iv.next671 to i32
  br label %._crit_edge595

._crit_edge595:                                   ; preds = %._crit_edge595.loopexit, %.loopexit
  %.3223.lcssa = phi i32 [ %.3223589, %.loopexit ], [ %i.aav, %._crit_edge595.loopexit ]
  %indvars.iv.next680 = add nuw nsw i64 %indvars.iv679, 1 ; 2 uses
  %exitcond683.not = icmp eq i64 %indvars.iv.next680, %wide.trip.count682
  br i1 %exitcond683.not, label %.preheader, label %bb.v, !llvm.loop !66

bb.az:                                            ; preds = %.lr.ph601, %bb.az
  %indvars.iv684 = phi i64 [ 0, %.lr.ph601 ], [ %indvars.iv.next685, %bb.az ] ; 4 uses
  %i.aaw = load i32, ptr %i.ek, align 4, !tbaa !76
  %i.aax = icmp slt i32 %i.aaw, 2
  %i.aay = load ptr, ptr %i.ej, align 8, !tbaa !77
  %i.aaz = load i64, ptr %i.ei, align 8
  %i.aba = mul i64 %i.aaz, %indvars.iv684
  %.sink.idx.i423 = select i1 %i.aax, i64 0, i64 %i.aba
  %.sink.i424 = getelementptr inbounds nuw i8, ptr %i.aay, i64 %.sink.idx.i423
  %i.abb = load ptr, ptr %5, align 8, !tbaa !32
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %i.abb, i64 %indvars.iv684
  %i.abd = load i32, ptr %i.abc, align 4, !tbaa !25
  %i.abe = load ptr, ptr %6, align 8, !tbaa !32
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %i.abe, i64 %indvars.iv684
  %i.abg = load i32, ptr %i.abf, align 4, !tbaa !25
  %i.abh = load i32, ptr %i.lt, align 4, !tbaa !76
  %i.abi = icmp slt i32 %i.abh, 2
  %i.abj = load ptr, ptr %i.lu, align 8, !tbaa !77
  %i.abk = load i64, ptr %i.lv, align 8
  %i.abl = sext i32 %i.abd to i64
  %i.abm = mul i64 %i.abk, %i.abl
  %.sink.idx.i425 = select i1 %i.abi, i64 0, i64 %i.abm
  %.sink.i426 = getelementptr inbounds nuw i8, ptr %i.abj, i64 %.sink.idx.i425
  %i.abn = sext i32 %i.abg to i64
  %i.abo = getelementptr inbounds [8 x i8], ptr %.sink.i426, i64 %i.abn
  %i.abp = load i64, ptr %.sink.i424, align 4, !tbaa !40
  store i64 %i.abp, ptr %i.abo, align 4, !tbaa !40
  %indvars.iv.next685 = add nuw nsw i64 %indvars.iv684, 1 ; 2 uses
  %exitcond688.not = icmp eq i64 %indvars.iv.next685, %wide.trip.count687
  br i1 %exitcond688.not, label %._crit_edge602, label %bb.az, !llvm.loop !67

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
  %13 = alloca [2 x %"class.cv::Mat"], align 16   ; 10 uses
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
  %i.e = load ptr, ptr %6, align 8, !tbaa !44     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.h = load i64, ptr %i.f, align 8, !tbaa !40
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
          to label %.noexc unwind label %bb.w, !noalias !85

.noexc:                                           ; preds = %bb.g
  %i.k = icmp eq i32 %i.j, 65536
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.noexc
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !29, !noalias !85
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %i.m)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.w

bb.i:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.w

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.h, %bb.i
  %i.n = load i32, ptr %9, align 8, !tbaa !86
  %i.o = and i32 %i.n, 4064
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.j, label %bb.aa

bb.j:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 0, ptr %i.r, align 8
  store i32 33619968, ptr %10, align 8, !tbaa !28
  store ptr %9, ptr %i.q, align 8, !tbaa !29
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef 37, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.k unwind label %bb.x

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.t = load i32, ptr %i.s, align 8, !tbaa !87   ; 6 uses
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
  %i.w = load ptr, ptr %4, align 8, !tbaa !44     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.n
  %i.z = load i64, ptr %i.x, align 8, !tbaa !40
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %.body

bb.o:                                             ; preds = %bb.k
  %i.ab = icmp sgt i32 %i.t, 0
  br i1 %i.ab, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ac = icmp eq i32 %i.t, 2
  %.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ac, i64 88, i64 84
  %.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %9, i64 %.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.ad = load i32, ptr %.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !25
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ae = icmp eq i32 %i.t, 0
  %i.af = zext i1 %i.ae to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ag = phi i32 [ %i.ad, %bb.p ], [ %i.af, %bb.q ]
  %i.ah = icmp eq i32 %i.t, 2
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 84
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = icmp sgt i32 %i.t, -1
  %i.al = zext i1 %i.ak to i32
  %i.am = select i1 %i.ah, i32 %i.aj, i32 %i.al
  %.sroa.2.0.insert.ext.i = zext i32 %i.am to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.ag to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  invoke void @_ZN2cv3Mat5zerosENS_5Size_IiEEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %12, i64 %.sroa.0.0.insert.insert.i, i32 noundef 5)
          to label %bb.s unwind label %bb.y

bb.s:                                             ; preds = %bb.r
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %11) #19
  %i.an = load ptr, ptr %12, align 8, !tbaa !94, !noalias !95 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !97
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  invoke void %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 8 dereferenceable(688) %12, ptr noundef nonnull align 8 dereferenceable(208) %11, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit unwind label %.body50

.body50:                                          ; preds = %bb.s
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #19
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %12) #19
  br label %.body

_ZNK2cv7MatExprcvNS_3MatEEv.exit:                 ; preds = %bb.s
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.as) #19
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.at) #19
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.au) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 8 dereferenceable(208) %9)
          to label %bb.t unwind label %.thread

.thread:                                          ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.t:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 208
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.aw, ptr noundef nonnull align 8 dereferenceable(208) %11)
          to label %bb.u unwind label %.loopexit.loopexit61

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  %i.ax = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 0, ptr %i.ay, align 8
  store i32 33619968, ptr %14, align 8, !tbaa !28
  store ptr %8, ptr %i.ax, align 8, !tbaa !29
  invoke void @_ZN2cv5mergeEPKNS_3MatEmRKNS_12_OutputArrayE(ptr noundef nonnull %13, i64 noundef 2, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.v unwind label %.loopexit.loopexit

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.az) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.ad

bb.w:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.x:                                             ; preds = %bb.j
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.ar

bb.y:                                             ; preds = %bb.l, %bb.r
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %.body50
  %.pn33 = phi { ptr, i32 } [ %i.ar, %.body50 ], [ %i.bc, %bb.y ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.z

.loopexit.loopexit61:                             ; preds = %bb.t
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.sink.split

.loopexit.loopexit:                               ; preds = %bb.u
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bf) #19
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.loopexit.loopexit, %.loopexit.loopexit61
  %.pn35.pn.ph = phi { ptr, i32 } [ %i.bd, %.loopexit.loopexit61 ], [ %i.be, %.loopexit.loopexit ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #19
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %.thread
  %.pn35.pn = phi { ptr, i32 } [ %i.av, %.thread ], [ %.pn35.pn.ph, %.loopexit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #19
  br label %bb.z

bb.z:                                             ; preds = %.loopexit, %.body
  %.pn35.pn.pn = phi { ptr, i32 } [ %.pn35.pn, %.loopexit ], [ %.pn33, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.ar

bb.aa:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  %i.bg = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 0, ptr %i.bh, align 8
  store i32 33619968, ptr %15, align 8, !tbaa !28
  store ptr %8, ptr %i.bg, align 8, !tbaa !29
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(24) %15, i32 noundef 37, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %bb.ar

bb.ad:                                            ; preds = %bb.ab, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  %i.bj = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i8 0, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %2, ptr %i.bk, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 %3, ptr %i.bl, align 4, !tbaa !19
  %i.bm = mul nsw i32 %3, %2                      ; 2 uses
  invoke void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.bm, i32 noundef %i.bm, i32 noundef 37, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.ae unwind label %.thread70

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.bn = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc52 unwind label %.thread74, !noalias !98

.noexc52:                                         ; preds = %bb.ae
  %i.bo = icmp eq i32 %i.bn, 65536
  br i1 %i.bo, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.noexc52
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !29, !noalias !98
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 8 dereferenceable(208) %i.bq)
          to label %_ZNK2cv11_InputArray6getMatEi.exit55 unwind label %.thread74

bb.ag:                                            ; preds = %.noexc52
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit55 unwind label %.thread74

_ZNK2cv11_InputArray6getMatEi.exit55:             ; preds = %bb.af, %bb.ag
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(208) %8)
          to label %bb.ah unwind label %bb.al

bb.ah:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit55
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %19, ptr noundef nonnull align 8 dereferenceable(208) %17)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN2cv8ximgproc18EstimateCovariance25computeEstimateCovarianceENS_3MatES2_(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 8 %18, ptr noundef nonnull align 8 %19)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %bb.ai
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  %i.br = load ptr, ptr %i.bj, align 8, !tbaa !20 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8ximgproc18EstimateCovarianceD2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bs = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !21
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bw) #18
  br label %_ZN2cv8ximgproc18EstimateCovarianceD2Ev.exit

_ZN2cv8ximgproc18EstimateCovarianceD2Ev.exit:     ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  ret void

.thread70:                                        ; preds = %bb.ad
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv8ximgproc18EstimateCovarianceD2Ev.exit57

.thread74:                                        ; preds = %bb.ae, %bb.af, %bb.ag
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %_ZN2cv8ximgproc18EstimateCovarianceD2Ev.exit57

bb.al:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit55
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.am:                                            ; preds = %bb.ah
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %bb.ai
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #19
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn39 = phi { ptr, i32 } [ %i.cb, %bb.an ], [ %i.ca, %bb.am ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #19
  br label %bb.ap

bb.ap:                                            ; preds = %bb.al, %bb.ao
  %.pn39.pn = phi { ptr, i32 } [ %.pn39, %bb.ao ], [ %i.bz, %bb.al ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #19
  %.pre.pre = load ptr, ptr %i.bj, align 8, !tbaa !20 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  %.not.i.i.i.i56 = icmp eq ptr %.pre.pre, null
  br i1 %.not.i.i.i.i56, label %_ZN2cv8ximgproc18EstimateCovarianceD2Ev.exit57, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cc = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !21
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %.pre.pre to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %.pre.pre, i64 noundef %i.cg) #18
  br label %_ZN2cv8ximgproc18EstimateCovarianceD2Ev.exit57

_ZN2cv8ximgproc18EstimateCovarianceD2Ev.exit57:   ; preds = %.thread74, %.thread70, %bb.ap, %bb.aq
  %.pn39.pn.pn.pn73 = phi { ptr, i32 } [ %i.bx, %.thread70 ], [ %.pn39.pn, %bb.ap ], [ %.pn39.pn, %bb.aq ], [ %i.by, %.thread74 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN2cv8ximgproc18EstimateCovarianceD2Ev.exit57, %bb.ac, %bb.z, %bb.x
  %.pn39.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn39.pn.pn.pn73, %_ZN2cv8ximgproc18EstimateCovarianceD2Ev.exit57 ], [ %.pn35.pn.pn, %bb.z ], [ %i.bb, %bb.x ], [ %i.bi, %bb.ac ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #19
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.w
  %.pn39.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn39.pn.pn.pn.pn, %bb.ar ], [ %i.ba, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn39.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn39.pn.pn.pn.pn.pn, %bb.as ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn39.pn.pn.pn.pn.pn.pn
}

declare noundef i32 @_ZNK2cv11_InputArray8channelsEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !99
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.4) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.d, ptr %i.a, align 8, !tbaa !100
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !44
  %i.g = load i64, ptr %i.a, align 8, !tbaa !100
  store i64 %i.g, ptr %i.b, align 8, !tbaa !40
  br label %._crit_edge.i
end_hunk_0
