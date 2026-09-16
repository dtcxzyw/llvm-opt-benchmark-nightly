Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/aruco_detector?download=true
inline.NumInlined: 4513
inline.NumDeleted: 1557
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZZN2cv5aruco13ArucoDetector17ArucoDetectorImpl13detectMarkersERKNS_11_InputArrayERKNS_12_OutputArrayES8_S8_S8_S8_NS0_14DictionaryModeEENKUlRKNS_5RangeEE_clESC_:bb.a
  %.not.i23.i.i115.i = icmp eq ptr %i.eq, null
  br i1 %.not.i23.i.i115.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i116.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i113.i
  call void @_ZdlPvm(ptr noundef nonnull %i.eq, i64 noundef %i.et) #33
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i116.i

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i116.i: ; preds = %bb.p, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i113.i
  store ptr %i.fb, ptr %i.ck, align 8, !tbaa !105
  store ptr %i.fh, ptr %i.cl, align 8, !tbaa !141
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.ez
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit119.i

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit119.i: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i116.i, %bb.m
  %i.fj = phi ptr [ %i.fh, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i116.i ], [ %i.ep, %bb.m ]
  %i.fk = phi ptr [ %i.fi, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i116.i ], [ %i.ek, %bb.m ] ; 2 uses
  %i.fl = add i32 %.072179.i, 1                   ; 2 uses
  %i.fm = zext i32 %i.fl to i64                   ; 2 uses
  %i.fn = load ptr, ptr %i.g, align 8, !tbaa !141 ; 2 uses
  %i.fo = load ptr, ptr %i.f, align 16, !tbaa !105 ; 6 uses
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = sub i64 %i.fp, %i.fq
  %i.fs = ashr exact i64 %i.fr, 3
  %i.ft = icmp ugt i64 %i.fs, %i.fm
  br i1 %i.ft, label %.lr.ph.i, label %bb.l, !llvm.loop !751

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i105.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  %i.fu = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bg
  store ptr %i.ek, ptr %i.cn, align 8
  br label %bb.ay

.loopexit.split-lp.i:                             ; preds = %bb.o
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  %i.fv = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bg
  br label %bb.ay

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i.i, %bb.l, %bb.g
  %i.fw = phi ptr [ %i.fo, %_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i.i ], [ %i.fo, %bb.l ], [ %i.dx, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %17, i8 0, i64 48, i1 false), !tbaa !156
  %i.fx = shufflevector <4 x i32> %.fr, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.fy = icmp sgt <4 x i32> %.fr, %i.fx          ; 4 uses
  %i.fz = extractelement <4 x i1> %i.fy, i64 0
  %i.ga = extractelement <4 x i1> %i.fy, i64 3
  %or.cond.i = select i1 %i.fz, i1 %i.ga, i1 false
  %i.gb = extractelement <4 x i1> %i.fy, i64 1
  %i.gc = extractelement <4 x i1> %i.fy, i64 2
  %or.cond96.i = select i1 %i.gc, i1 %i.gb, i1 false
  %i.gd = select i1 %or.cond96.i, i1 true, i1 %or.cond.i
  br label %bb.u

.preheader.i:                                     ; preds = %bb.an
  %.sroa.014.0.copyload.us.i = load <2 x float>, ptr %17, align 16 ; 7 uses
  %.sroa.04.0.vec.extract.i.us.i = extractelement <2 x float> %.sroa.014.0.copyload.us.i, i64 0 ; 5 uses
  %.sroa.04.4.vec.extract.i.us.i = extractelement <2 x float> %.sroa.014.0.copyload.us.i, i64 1 ; 6 uses
  br i1 %i.gd, label %.preheader.split.us.preheader.i, label %.preheader.split.preheader.i

.preheader.split.preheader.i:                     ; preds = %.preheader.i
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.aj, align 4 ; 5 uses
  %.sroa.01.0.vec.extract.i125.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 0 ; 3 uses
  %.sroa.01.4.vec.extract.i126.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 1 ; 2 uses
  %i.ge = fneg float %.sroa.01.0.vec.extract.i125.i
  %i.gf = fmul float %.sroa.04.4.vec.extract.i.us.i, %i.ge
  %i.gg = call float @llvm.fmuladd.f32(float %.sroa.04.0.vec.extract.i.us.i, float %.sroa.01.4.vec.extract.i126.i, float %i.gf) ; 2 uses
  %i.gh = fcmp une float %i.gg, 0.000000e+00
  br i1 %i.gh, label %bb.ap, label %_ZN2cv5arucoL14_getCrossPointENS_7Point3_IfEES2_.exit130.i

.preheader.split.us.preheader.i:                  ; preds = %.preheader.i
  %.sroa.012.0.copyload.us.i = load <2 x float>, ptr %i.ak, align 4 ; 4 uses
  %.sroa.01.0.vec.extract.i.us.i = extractelement <2 x float> %.sroa.012.0.copyload.us.i, i64 0 ; 3 uses
  %.sroa.01.4.vec.extract.i.us.i = extractelement <2 x float> %.sroa.012.0.copyload.us.i, i64 1 ; 3 uses
  %i.gi = fneg float %.sroa.01.0.vec.extract.i.us.i
  %i.gj = fmul float %.sroa.04.4.vec.extract.i.us.i, %i.gi
  %i.gk = call float @llvm.fmuladd.f32(float %.sroa.04.0.vec.extract.i.us.i, float %.sroa.01.4.vec.extract.i.us.i, float %i.gj) ; 2 uses
  %i.gl = fcmp une float %i.gk, 0.000000e+00
  br i1 %i.gl, label %bb.q, label %_ZN2cv5arucoL14_getCrossPointENS_7Point3_IfEES2_.exit.us.i

bb.q:                                             ; preds = %.preheader.split.us.preheader.i
  %.sroa.213.0.copyload.us.i = load float, ptr %.sroa.26.0..sroa_idx.1.i, align 4, !tbaa !156 ; 2 uses
  %.sroa.215.0.copyload.us.i = load float, ptr %.sroa.26.0..sroa_idx.i, align 8, !tbaa !156 ; 2 uses
  %i.gm = fdiv float 1.000000e+00, %i.gk
  %i.gn = insertelement <2 x float> poison, float %.sroa.215.0.copyload.us.i, i64 0
  %i.go = insertelement <2 x float> %i.gn, float %.sroa.213.0.copyload.us.i, i64 1
  %i.gp = fneg <2 x float> %i.go
  %i.gq = fmul float %.sroa.01.0.vec.extract.i.us.i, %.sroa.215.0.copyload.us.i
  %i.gr = fmul float %.sroa.04.4.vec.extract.i.us.i, %.sroa.213.0.copyload.us.i
  %i.gs = shufflevector <2 x float> %.sroa.012.0.copyload.us.i, <2 x float> %.sroa.014.0.copyload.us.i, <2 x i32> <i32 1, i32 2>
  %i.gt = insertelement <2 x float> poison, float %i.gr, i64 0
  %i.gu = insertelement <2 x float> %i.gt, float %i.gq, i64 1
  %i.gv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gp, <2 x float> %i.gs, <2 x float> %i.gu)
  %i.gw = insertelement <2 x float> poison, float %i.gm, i64 0
  %i.gx = shufflevector <2 x float> %i.gw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gy = fmul <2 x float> %i.gx, %i.gv
  br label %_ZN2cv5arucoL14_getCrossPointENS_7Point3_IfEES2_.exit.us.i

_ZN2cv5arucoL14_getCrossPointENS_7Point3_IfEES2_.exit.us.i: ; preds = %bb.q, %.preheader.split.us.preheader.i
  %.sroa.0.0.i.i.us.i = phi <2 x float> [ %i.gy, %bb.q ], [ zeroinitializer, %.preheader.split.us.preheader.i ]
  %i.gz = load ptr, ptr %i.ba, align 8, !tbaa !105
  store <2 x float> %.sroa.0.0.i.i.us.i, ptr %i.gz, align 4
  %.sroa.012.0.copyload.us.1.i = load <2 x float>, ptr %i.al, align 8 ; 4 uses
  %.sroa.01.0.vec.extract.i.us.1.i = extractelement <2 x float> %.sroa.012.0.copyload.us.1.i, i64 0 ; 3 uses
  %.sroa.01.4.vec.extract.i.us.1.i = extractelement <2 x float> %.sroa.012.0.copyload.us.1.i, i64 1 ; 3 uses
  %i.ha = fneg float %.sroa.01.0.vec.extract.i.us.1.i
  %i.hb = fmul float %.sroa.01.4.vec.extract.i.us.i, %i.ha
  %i.hc = call float @llvm.fmuladd.f32(float %.sroa.01.0.vec.extract.i.us.i, float %.sroa.01.4.vec.extract.i.us.1.i, float %i.hb) ; 2 uses
  %i.hd = fcmp une float %i.hc, 0.000000e+00
  br i1 %i.hd, label %bb.r, label %_ZN2cv5arucoL14_getCrossPointENS_7Point3_IfEES2_.exit.us.1.i

bb.r:                                             ; preds = %_ZN2cv5arucoL14_getCrossPointENS_7Point3_IfEES2_.exit.us.i
  %.sroa.213.0.copyload.us.1.i = load float, ptr %.sroa.26.0..sroa_idx.2.i, align 16, !tbaa !156 ; 2 uses
  %.sroa.215.0.copyload.us.1.i = load float, ptr %.sroa.26.0..sroa_idx.1.i, align 4, !tbaa !156 ; 2 uses
  %i.he = fdiv float 1.000000e+00, %i.hc
  %i.hf = insertelement <2 x float> poison, float %.sroa.215.0.copyload.us.1.i, i64 0
  %i.hg = insertelement <2 x float> %i.hf, float %.sroa.213.0.copyload.us.1.i, i64 1
  %i.hh = fneg <2 x float> %i.hg
  %i.hi = fmul float %.sroa.01.0.vec.extract.i.us.1.i, %.sroa.215.0.copyload.us.1.i
  %i.hj = fmul float %.sroa.01.4.vec.extract.i.us.i, %.sroa.213.0.copyload.us.1.i
  %i.hk = shufflevector <2 x float> %.sroa.012.0.copyload.us.1.i, <2 x float> %.sroa.012.0.copyload.us.i, <2 x i32> <i32 1, i32 2>
  %i.hl = insertelement <2 x float> poison, float %i.hj, i64 0
  %i.hm = insertelement <2 x float> %i.hl, float %i.hi, i64 1
  %i.hn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hh, <2 x float> %i.hk, <2 x float> %i.hm)
  %i.ho = insertelement <2 x float> poison, float %i.he, i64 0
  %i.hp = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hq = fmul <2 x float> %i.hp, %i.hn
  br label %_ZN2cv5arucoL14_getCrossPointENS_7Point3_IfEES2_.exit.us.1.i

_ZN2cv5arucoL14_getCrossPointENS_7Point3_IfEES2_.exit.us.1.i: ; preds = %bb.r, %_ZN2cv5arucoL14_getCrossPointENS_7Point3_IfEES2_.exit.us.i
  %.sroa.0.0.i.i.us.1.i = phi <2 x float> [ %i.hq, %bb.r ], [ zeroinitializer, %_ZN2cv5arucoL14_getCrossPointENS_7Point3_IfEES2_.exit.us.i ]
  %i.hr = load ptr, ptr %i.ba, align 8, !tbaa !105
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store <2 x float> %.sroa.0.0.i.i.us.1.i, ptr %i.hs, align 4
  %.sroa.012.0.copyload.us.2.i = load <2 x float>, ptr %i.aj, align 4 ; 4 uses
  %.sroa.01.0.vec.extract.i.us.2.i = extractelement <2 x float> %.sroa.012.0.copyload.us.2.i, i64 0 ; 3 uses
  %.sroa.01.4.vec.extract.i.us.2.i = extractelement <2 x float> %.sroa.012.0.copyload.us.2.i, i64 1 ; 3 uses
  %i.ht = fneg float %.sroa.01.0.vec.extract.i.us.2.i
  %i.hu = fmul float %.sroa.01.4.vec.extract.i.us.1.i, %i.ht
  %i.hv = call float @llvm.fmuladd.f32(float %.sroa.01.0.vec.extract.i.us.1.i, float %.sroa.01.4.vec.extract.i.us.2.i, float %i.hu) ; 2 uses
  %i.hw = fcmp une float %i.hv, 0.000000e+00
  br i1 %i.hw, label %bb.s, label %_ZN2cv5arucoL14_getCrossPointENS_7Point3_IfEES2_.exit.us.2.i

bb.s:                                             ; preds = %_ZN2cv5arucoL14_getCrossPointENS_7Point3_IfEES2_.exit.us.1.i
  %.sroa.213.0.copyload.us.2.i = load float, ptr %.sroa.24.0..sroa_idx.i, align 4, !tbaa !156 ; 2 uses
  %.sroa.215.0.copyload.us.2.i = load float, ptr %.sroa.26.0..sroa_idx.2.i, align 16, !tbaa !156 ; 2 uses
  %i.hx = fdiv float 1.000000e+00, %i.hv
  %i.hy = insertelement <2 x float> poison, float %.sroa.215.0.copyload.us.2.i, i64 0
  %i.hz = insertelement <2 x float> %i.hy, float %.sroa.213.0.copyload.us.2.i, i64 1
  %i.ia = fneg <2 x float> %i.hz
  %i.ib = fmul float %.sroa.01.0.vec.extract.i.us.2.i, %.sroa.215.0.copyload.us.2.i
  %i.ic = fmul float %.sroa.01.4.vec.extract.i.us.1.i, %.sroa.213.0.copyload.us.2.i
  %i.id = shufflevector <2 x float> %.sroa.012.0.copyload.us.2.i, <2 x float> %.sroa.012.0.copyload.us.1.i, <2 x i32> <i32 1, i32 2>
  %i.ie = insertelement <2 x float> poison, float %i.ic, i64 0
  %i.if = insertelement <2 x float> %i.ie, float %i.ib, i64 1
  %i.ig = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ia, <2 x float> %i.id, <2 x float> %i.if)
  %i.ih = insertelement <2 x float> poison, float %i.hx, i64 0
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ij = fmul <2 x float> %i.ii, %i.ig
  br label %_ZN2cv5arucoL14_getCrossPointENS_7Point3_IfEES2_.exit.us.2.i

_ZN2cv5arucoL14_getCrossPointENS_7Point3_IfEES2_.exit.us.2.i: ; preds = %bb.s, %_ZN2cv5arucoL14_getCrossPointENS_7Point3_IfEES2_.exit.us.1.i
  %.sroa.0.0.i.i.us.2.i = phi <2 x float> [ %i.ij, %bb.s ], [ zeroinitializer, %_ZN2cv5arucoL14_getCrossPointENS_7Point3_IfEES2_.exit.us.1.i ]
  %i.ik = load ptr, ptr %i.ba, align 8, !tbaa !105
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  store <2 x float> %.sroa.0.0.i.i.us.2.i, ptr %i.il, align 4
  %i.im = fneg float %.sroa.04.0.vec.extract.i.us.i
  %i.in = fmul float %.sroa.01.4.vec.extract.i.us.2.i, %i.im
  %i.io = call float @llvm.fmuladd.f32(float %.sroa.01.0.vec.extract.i.us.2.i, float %.sroa.04.4.vec.extract.i.us.i, float %i.in) ; 2 uses
  %i.ip = fcmp une float %i.io, 0.000000e+00
  br i1 %i.ip, label %bb.t, label %.split.us.i

bb.t:                                             ; preds = %_ZN2cv5arucoL14_getCrossPointENS_7Point3_IfEES2_.exit.us.2.i
  %.sroa.213.0.copyload.us.3.i = load float, ptr %.sroa.26.0..sroa_idx.i, align 8, !tbaa !156 ; 2 uses
  %.sroa.215.0.copyload.us.3.i = load float, ptr %.sroa.24.0..sroa_idx.i, align 4, !tbaa !156 ; 2 uses
  %i.iq = fdiv float 1.000000e+00, %i.io
  %i.ir = insertelement <2 x float> poison, float %.sroa.215.0.copyload.us.3.i, i64 0
  %i.is = insertelement <2 x float> %i.ir, float %.sroa.213.0.copyload.us.3.i, i64 1
  %i.it = fneg <2 x float> %i.is
  %i.iu = fmul float %.sroa.04.0.vec.extract.i.us.i, %.sroa.215.0.copyload.us.3.i
  %i.iv = fmul float %.sroa.01.4.vec.extract.i.us.2.i, %.sroa.213.0.copyload.us.3.i
  %i.iw = shufflevector <2 x float> %.sroa.014.0.copyload.us.i, <2 x float> %.sroa.012.0.copyload.us.2.i, <2 x i32> <i32 1, i32 2>
  %i.ix = insertelement <2 x float> poison, float %i.iv, i64 0
  %i.iy = insertelement <2 x float> %i.ix, float %i.iu, i64 1
  %i.iz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.it, <2 x float> %i.iw, <2 x float> %i.iy)
  %i.ja = insertelement <2 x float> poison, float %i.iq, i64 0
  %i.jb = shufflevector <2 x float> %i.ja, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jc = fmul <2 x float> %i.jb, %i.iz
  br label %.split.us.i

bb.u:                                             ; preds = %bb.an, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE5clearEv.exit.i
  %indvars.iv.i = phi i64 [ 0, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE5clearEv.exit.i ], [ %indvars.iv.next.i, %bb.an ] ; 3 uses
  %i.jd = getelementptr inbounds nuw [24 x i8], ptr %14, i64 %indvars.iv.i ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !141 ; 4 uses
  %i.jg = load ptr, ptr %i.jd, align 8, !tbaa !105 ; 18 uses
  %i.jh = ptrtoint ptr %i.jf to i64
  %i.ji = ptrtoint ptr %i.jg to i64
  %i.jj = sub i64 %i.jh, %i.ji                    ; 5 uses
  %i.jk = ashr exact i64 %i.jj, 3                 ; 14 uses
  %i.jl = icmp ugt i64 %i.jk, 1
  br i1 %i.jl, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.75, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cv5arucoL18_interpolate2DlineERKSt6vectorINS_6Point_IfEESaIS3_EE, ptr noundef nonnull @.str.1, i32 noundef 559) #32
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.v
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

bb.z:                                             ; preds = %bb.w
  %i.jn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jo = load ptr, ptr %2, align 8, !tbaa !44    ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.z
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !45
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.js) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.y
  %.pn.i.i = phi { ptr, i32 } [ %i.jm, %bb.y ], [ %i.jn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.jn, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %.body121.i

bb.aa:                                            ; preds = %bb.u
  %i.jt = load <2 x float>, ptr %i.jg, align 4, !tbaa !156 ; 2 uses
  br label %bb.ac

bb.ab:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.ju = trunc nuw i64 %i.jk to i32
  invoke void @_ZN2cv3Mat4onesEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %5, i32 noundef %i.ju, i32 noundef 2, i32 noundef 5)
          to label %.noexc120.i unwind label %bb.ao

.noexc120.i:                                      ; preds = %bb.ab
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %4) #31
  %i.jv = load ptr, ptr %5, align 8, !tbaa !286, !noalias !772 ; 2 uses
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !50
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  %i.jy = load ptr, ptr %i.jx, align 8
  invoke void %i.jy(ptr noundef nonnull align 8 dereferenceable(8) %i.jv, ptr noundef nonnull align 8 dereferenceable(688) %5, ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i.i unwind label %.body.i.i

.body.i.i:                                        ; preds = %.noexc120.i
  %i.jz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #31
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.am

bb.ac:                                            ; preds = %bb.ac, %bb.aa
  %indvars.iv.i.i = phi i64 [ 0, %bb.aa ], [ %indvars.iv.next.i.i, %bb.ac ] ; 2 uses
  %i.ka = phi <2 x float> [ %i.jt, %bb.aa ], [ %i.kh, %bb.ac ] ; 2 uses
  %i.kb = phi <2 x float> [ %i.jt, %bb.aa ], [ %i.kf, %bb.ac ] ; 2 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %indvars.iv.i.i
  %i.kd = load <2 x float>, ptr %i.kc, align 4, !tbaa !156 ; 4 uses
  %i.ke = fcmp olt <2 x float> %i.kd, %i.kb
  %i.kf = select <2 x i1> %i.ke, <2 x float> %i.kd, <2 x float> %i.kb ; 2 uses
  %i.kg = fcmp ogt <2 x float> %i.kd, %i.ka
  %i.kh = select <2 x i1> %i.kg, <2 x float> %i.kd, <2 x float> %i.ka ; 2 uses
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ki = and i64 %indvars.iv.next.i.i, 4294967295
  %i.kj = icmp ugt i64 %i.jk, %i.ki
  br i1 %i.kj, label %bb.ac, label %bb.ab, !llvm.loop !754

_ZNK2cv7MatExprcvNS_3MatEEv.exit.i.i:             ; preds = %.noexc120.i
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.h) #31
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.i) #31
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.j) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.kk = lshr exact i64 %i.jj, 3
  %i.kl = trunc i64 %i.kk to i32
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %6, i32 noundef %i.kl, i32 noundef 1, i32 noundef 5)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %7) #31
  %i.km = fsub <2 x float> %i.kh, %i.kf           ; 2 uses
  %i.kn = extractelement <2 x float> %i.km, i64 0
  %i.ko = extractelement <2 x float> %i.km, i64 1
  %i.kp = fcmp ogt float %i.kn, %i.ko
  %.not126.i.i = icmp eq ptr %i.jf, %i.jg         ; 2 uses
  br i1 %i.kp, label %.preheader.i.i, label %.preheader109.i.i

.preheader109.i.i:                                ; preds = %bb.ad
  br i1 %.not126.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader109.i.i
  %i.kq = load i32, ptr %i.k, align 4, !tbaa !160
  %.fr125.i.i = freeze i32 %i.kq
  %i.kr = icmp slt i32 %.fr125.i.i, 2
  %i.ks = load ptr, ptr %i.l, align 8, !tbaa !167 ; 14 uses
  %i.kt = load i32, ptr %i.n, align 4, !tbaa !160
  %.fr.i.i = freeze i32 %i.kt
  %i.ku = icmp slt i32 %.fr.i.i, 2                ; 2 uses
  %i.kv = load ptr, ptr %i.o, align 8, !tbaa !167 ; 14 uses
  br i1 %i.kr, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i
  br i1 %i.ku, label %.lr.ph.split.us.split.us.i.i.preheader, label %.lr.ph.split.us.split.i.i.preheader.new

.lr.ph.split.us.split.i.i.preheader.new:          ; preds = %.lr.ph.split.us.i.i
  %unroll_iter426 = and i64 %i.jk, -2
  br label %.lr.ph.split.us.split.i.i

.lr.ph.split.us.split.us.i.i.preheader:           ; preds = %.lr.ph.split.us.i.i
  %18 = call i64 @llvm.smax.i64(i64 %i.jk, i64 1) ; 2 uses
  %min.iters.check = icmp slt i64 %i.jk, 20
  br i1 %min.iters.check, label %.lr.ph.split.us.split.us.i.i.preheader355, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.split.us.split.us.i.i.preheader
  %i.kw = add nsw i64 %i.jk, -1                   ; 2 uses
  %i.kx = and i64 %i.kw, 4294967295
  %i.ky = icmp eq i64 %i.kx, 4294967295
  %i.kz = icmp ugt i64 %i.kw, 4294967295
  %i.la = or i1 %i.ky, %i.kz
  br i1 %i.la, label %.lr.ph.split.us.split.us.i.i.preheader355, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep = getelementptr i8, ptr %i.ks, i64 4   ; 2 uses
  %scevgep345 = getelementptr i8, ptr %i.kv, i64 4 ; 2 uses
  %bound0 = icmp ult ptr %i.ks, %scevgep345
  %bound1 = icmp ult ptr %i.kv, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0347 = icmp ult ptr %i.ks, %i.jf
  %bound1348 = icmp ult ptr %i.jg, %scevgep
  %found.conflict349 = and i1 %bound0347, %bound1348
  %conflict.rdx = or i1 %found.conflict, %found.conflict349
  %bound0350 = icmp ult ptr %i.kv, %i.jf
  %bound1351 = icmp ult ptr %i.jg, %scevgep345
  %found.conflict352 = and i1 %bound0350, %bound1351
  %conflict.rdx353 = or i1 %conflict.rdx, %found.conflict352
  br i1 %conflict.rdx353, label %.lr.ph.split.us.split.us.i.i.preheader355, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %18, 8589934584                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.lb = icmp eq i64 %index.next, %n.vec
  br i1 %i.lb, label %middle.block, label %vector.body, !llvm.loop !755

middle.block:                                     ; preds = %vector.body
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %index
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 32
  %wide.vec = load <8 x float>, ptr %i.ld, align 4, !tbaa !156, !alias.scope !773 ; 2 uses
  %i.le = extractelement <8 x float> %wide.vec, i64 7
  store float %i.le, ptr %i.ks, align 4, !tbaa !156, !alias.scope !774, !noalias !775
  %i.lf = extractelement <8 x float> %wide.vec, i64 6
  store float %i.lf, ptr %i.kv, align 4, !tbaa !156, !alias.scope !776, !noalias !773
  %cmp.n = icmp eq i64 %18, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %.lr.ph.split.us.split.us.i.i.preheader355

.lr.ph.split.us.split.us.i.i.preheader355:        ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.split.us.split.us.i.i.preheader, %middle.block
  %indvars.iv137.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.split.us.split.us.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split.us.split.us.i.i

.lr.ph.split.us.split.us.i.i:                     ; preds = %.lr.ph.split.us.split.us.i.i.preheader355, %.lr.ph.split.us.split.us.i.i
  %indvars.iv137.i.i = phi i64 [ %indvars.iv.next138.i.i, %.lr.ph.split.us.split.us.i.i ], [ %indvars.iv137.i.i.ph, %.lr.ph.split.us.split.us.i.i.preheader355 ] ; 2 uses
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %indvars.iv137.i.i ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 4
  %i.li = load float, ptr %i.lh, align 4, !tbaa !144
  store float %i.li, ptr %i.ks, align 4, !tbaa !156
  %i.lj = load float, ptr %i.lg, align 4, !tbaa !143
  store float %i.lj, ptr %i.kv, align 4, !tbaa !156
  %indvars.iv.next138.i.i = add i64 %indvars.iv137.i.i, 1 ; 2 uses
  %i.lk = and i64 %indvars.iv.next138.i.i, 4294967295
  %i.ll = icmp samesign ugt i64 %i.jk, %i.lk
  br i1 %i.ll, label %.lr.ph.split.us.split.us.i.i, label %._crit_edge.i.i, !llvm.loop !760

.lr.ph.split.us.split.i.i:                        ; preds = %.lr.ph.split.us.split.i.i, %.lr.ph.split.us.split.i.i.preheader.new
  %i.lm = phi i64 [ 0, %.lr.ph.split.us.split.i.i.preheader.new ], [ %i.mc, %.lr.ph.split.us.split.i.i ] ; 4 uses
  %niter427 = phi i64 [ 0, %.lr.ph.split.us.split.i.i.preheader.new ], [ %niter427.next.1, %.lr.ph.split.us.split.i.i ]
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.lm ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 4
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !144
  %sext147.i.i = shl nuw i64 %i.lm, 32
  %i.lq = ashr exact i64 %sext147.i.i, 32
  store float %i.lp, ptr %i.ks, align 4, !tbaa !156
  %i.lr = load float, ptr %i.ln, align 4, !tbaa !143
  %i.ls = load i64, ptr %i.p, align 8
  %i.lt = mul i64 %i.ls, %i.lq
  %.sink.i99.us.i.i = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.lt
  store float %i.lr, ptr %.sink.i99.us.i.i, align 4, !tbaa !156
  %i.lu = or disjoint i64 %i.lm, 1                ; 2 uses
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.lu ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 4
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !144
  %sext147.i.i.1 = shl nuw i64 %i.lu, 32
  %i.ly = ashr exact i64 %sext147.i.i.1, 32
  store float %i.lx, ptr %i.ks, align 4, !tbaa !156
  %i.lz = load float, ptr %i.lv, align 4, !tbaa !143
  %i.ma = load i64, ptr %i.p, align 8
  %i.mb = mul i64 %i.ma, %i.ly
  %.sink.i99.us.i.i.1 = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.mb
  store float %i.lz, ptr %.sink.i99.us.i.i.1, align 4, !tbaa !156
  %i.mc = add nuw nsw i64 %i.lm, 2                ; 3 uses
  %niter427.next.1 = add nuw i64 %niter427, 2     ; 2 uses
  %niter427.ncmp.1 = icmp eq i64 %niter427.next.1, %unroll_iter426
  br i1 %niter427.ncmp.1, label %._crit_edge.i.i.loopexit356.unr-lcssa, label %.lr.ph.split.us.split.i.i, !llvm.loop !761

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  br i1 %i.ku, label %.lr.ph.split.split.us.i.i.preheader.new, label %.lr.ph.split.split.i.i.preheader.new

.lr.ph.split.split.i.i.preheader.new:             ; preds = %.lr.ph.split.i.i
  %unroll_iter = and i64 %i.jk, -2
  br label %.lr.ph.split.split.i.i

.lr.ph.split.split.us.i.i.preheader.new:          ; preds = %.lr.ph.split.i.i
  %unroll_iter419 = and i64 %i.jk, -2
  br label %.lr.ph.split.split.us.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.split.us.i.i, %.lr.ph.split.split.us.i.i.preheader.new
  %i.md = phi i64 [ 0, %.lr.ph.split.split.us.i.i.preheader.new ], [ %i.mt, %.lr.ph.split.split.us.i.i ] ; 4 uses
  %niter420 = phi i64 [ 0, %.lr.ph.split.split.us.i.i.preheader.new ], [ %niter420.next.1, %.lr.ph.split.split.us.i.i ]
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.md ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 4
  %i.mg = load float, ptr %i.mf, align 4, !tbaa !144
  %i.mh = load i64, ptr %i.m, align 8
  %sext146.i.i = shl nuw i64 %i.md, 32
  %i.mi = ashr exact i64 %sext146.i.i, 32
  %i.mj = mul i64 %i.mh, %i.mi
  %.sink.i97.us117.i.i = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.mj
  store float %i.mg, ptr %.sink.i97.us117.i.i, align 4, !tbaa !156
  %i.mk = load float, ptr %i.me, align 4, !tbaa !143
  store float %i.mk, ptr %i.kv, align 4, !tbaa !156
  %i.ml = or disjoint i64 %i.md, 1                ; 2 uses
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.ml ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 4
  %i.mo = load float, ptr %i.mn, align 4, !tbaa !144
  %i.mp = load i64, ptr %i.m, align 8
  %sext146.i.i.1 = shl nuw i64 %i.ml, 32
  %i.mq = ashr exact i64 %sext146.i.i.1, 32
  %i.mr = mul i64 %i.mp, %i.mq
  %.sink.i97.us117.i.i.1 = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.mr
  store float %i.mo, ptr %.sink.i97.us117.i.i.1, align 4, !tbaa !156
  %i.ms = load float, ptr %i.mm, align 4, !tbaa !143
  store float %i.ms, ptr %i.kv, align 4, !tbaa !156
  %i.mt = add nuw nsw i64 %i.md, 2                ; 3 uses
  %niter420.next.1 = add nuw i64 %niter420, 2     ; 2 uses
  %niter420.ncmp.1 = icmp eq i64 %niter420.next.1, %unroll_iter419
  br i1 %niter420.ncmp.1, label %._crit_edge.i.i.loopexit357.unr-lcssa, label %.lr.ph.split.split.us.i.i, !llvm.loop !761

.preheader.i.i:                                   ; preds = %bb.ad
  br i1 %.not126.i.i, label %._crit_edge124.i.i, label %.lr.ph123.i.i

.lr.ph123.i.i:                                    ; preds = %.preheader.i.i
  %i.mu = load i32, ptr %i.k, align 4, !tbaa !160
  %i.mv = icmp slt i32 %i.mu, 2
  %i.mw = load ptr, ptr %i.l, align 8, !tbaa !167
  %i.mx = load i32, ptr %i.n, align 4, !tbaa !160
  %i.my = icmp slt i32 %i.mx, 2
  %i.mz = load ptr, ptr %i.o, align 8, !tbaa !167
  br label %bb.af

bb.ae:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i.i
  %i.na = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.af:                                            ; preds = %bb.af, %.lr.ph123.i.i
  %i.nb = phi i64 [ 0, %.lr.ph123.i.i ], [ %i.nl, %bb.af ] ; 3 uses
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.nb ; 2 uses
  %i.nd = load float, ptr %i.nc, align 4, !tbaa !143
  %i.ne = load i64, ptr %i.m, align 8
  %sext148.i.i = shl nuw i64 %i.nb, 32
  %i.nf = ashr exact i64 %sext148.i.i, 32         ; 2 uses
  %i.ng = mul i64 %i.ne, %i.nf
  %.sink.idx.i.i.i = select i1 %i.mv, i64 0, i64 %i.ng
  %.sink.i.i.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 %.sink.idx.i.i.i
  store float %i.nd, ptr %.sink.i.i.i, align 4, !tbaa !156
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nc, i64 4
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !144
  %i.nj = load i64, ptr %i.p, align 8
  %i.nk = mul i64 %i.nj, %i.nf
  %.sink.idx.i90.i.i = select i1 %i.my, i64 0, i64 %i.nk
  %.sink.i91.i.i = getelementptr inbounds nuw i8, ptr %i.mz, i64 %.sink.idx.i90.i.i
  store float %i.ni, ptr %.sink.i91.i.i, align 4, !tbaa !156
  %i.nl = add nuw nsw i64 %i.nb, 1                ; 2 uses
  %exitcond210.not.i = icmp eq i64 %i.nl, %i.jk
  br i1 %exitcond210.not.i, label %._crit_edge124.i.i, label %bb.af, !llvm.loop !762

._crit_edge124.i.i:                               ; preds = %bb.af, %.preheader.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  store i32 0, ptr %i.ab, align 8, !tbaa !86
  store i32 0, ptr %i.ac, align 4, !tbaa !87
  store i32 16842752, ptr %8, align 8, !tbaa !89
  store ptr %4, ptr %i.ad, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  store i32 0, ptr %i.ae, align 8, !tbaa !86
  store i32 0, ptr %i.af, align 4, !tbaa !87
  store i32 16842752, ptr %9, align 8, !tbaa !89
  store ptr %6, ptr %i.ag, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  store i64 0, ptr %i.ai, align 8
  store i32 33619968, ptr %10, align 8, !tbaa !89
  store ptr %7, ptr %i.ah, align 8, !tbaa !90
  %i.nm = invoke noundef zeroext i1 @_ZN2cv5solveERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef 16)
          to label %bb.ag unwind label %bb.ah     ; 0 uses

bb.ag:                                            ; preds = %._crit_edge124.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.nn = load i32, ptr %i.y, align 4, !tbaa !160
  %i.no = load ptr, ptr %i.z, align 8, !tbaa !167 ; 2 uses
  %i.np = load float, ptr %i.no, align 4, !tbaa !156
  %i.nq = icmp slt i32 %i.nn, 2
  %i.nr = load i64, ptr %i.aa, align 8
  %.sink.idx.i94.i.i = select i1 %i.nq, i64 0, i64 %i.nr
  %.sink.i95.i.i = getelementptr inbounds nuw i8, ptr %i.no, i64 %.sink.idx.i94.i.i
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.np, i64 0
  br label %bb.an

bb.ah:                                            ; preds = %._crit_edge124.i.i
  %i.ns = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.ak

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.split.i.i, %.lr.ph.split.split.i.i.preheader.new
  %i.nt = phi i64 [ 0, %.lr.ph.split.split.i.i.preheader.new ], [ %i.on, %.lr.ph.split.split.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.split.split.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.split.split.i.i ]
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.nt ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 4
  %i.nw = load float, ptr %i.nv, align 4, !tbaa !144
  %i.nx = load i64, ptr %i.m, align 8
  %sext.i.i = shl nuw i64 %i.nt, 32
  %i.ny = ashr exact i64 %sext.i.i, 32            ; 2 uses
  %i.nz = mul i64 %i.nx, %i.ny
  %.sink.i97.i.i = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.nz
  store float %i.nw, ptr %.sink.i97.i.i, align 4, !tbaa !156
  %i.oa = load float, ptr %i.nu, align 4, !tbaa !143
  %i.ob = load i64, ptr %i.p, align 8
  %i.oc = mul i64 %i.ob, %i.ny
  %.sink.i99.i.i = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.oc
  store float %i.oa, ptr %.sink.i99.i.i, align 4, !tbaa !156
  %i.od = or disjoint i64 %i.nt, 1                ; 2 uses
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.od ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 4
  %i.og = load float, ptr %i.of, align 4, !tbaa !144
  %i.oh = load i64, ptr %i.m, align 8
  %sext.i.i.1 = shl nuw i64 %i.od, 32
  %i.oi = ashr exact i64 %sext.i.i.1, 32          ; 2 uses
  %i.oj = mul i64 %i.oh, %i.oi
  %.sink.i97.i.i.1 = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.oj
  store float %i.og, ptr %.sink.i97.i.i.1, align 4, !tbaa !156
  %i.ok = load float, ptr %i.oe, align 4, !tbaa !143
  %i.ol = load i64, ptr %i.p, align 8
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN2cv5aruco10DictionaryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:bb.a

bb.e:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %_ZNKSt6vectorIN2cv5aruco10DictionaryESaIS2_EE12_M_check_lenEmPKc.exit
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  %i.an = tail call ptr @__cxa_begin_catch(ptr %i.am) #31 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #33
  invoke void @__cxa_rethrow() #32
          to label %bb.i unwind label %bb.e

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ak

bb.h:                                             ; preds = %bb.e
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #35
  unreachable

bb.i:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt6vectorIN2cv5aruco10DictionaryESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN2cv5aruco10DictionaryESaIS2_EE11_M_allocateEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %1, 42700796466920258
  br i1 %i.a, label %bb.c, label %_ZNSt15__new_allocatorIN2cv5aruco10DictionaryEE8allocateEmPKv.exit.i, !prof !71

bb.c:                                             ; preds = %bb.b
  %i.b = icmp ugt i64 %1, 85401592933840516
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZNSt15__new_allocatorIN2cv5aruco10DictionaryEE8allocateEmPKv.exit.i: ; preds = %bb.b
  %i.c = mul nuw nsw i64 %1, 216
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #34
  br label %_ZNSt12_Vector_baseIN2cv5aruco10DictionaryESaIS2_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN2cv5aruco10DictionaryESaIS2_EE11_M_allocateEm.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorIN2cv5aruco10DictionaryEE8allocateEmPKv.exit.i
  %i.e = phi ptr [ %i.d, %_ZNSt15__new_allocatorIN2cv5aruco10DictionaryEE8allocateEmPKv.exit.i ], [ null, %bb.a ] ; 6 uses
  %.not12.i.i.i.i = icmp eq ptr %2, %3
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN2cv5aruco10DictionaryESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN2cv5aruco10DictionaryESaIS2_EE11_M_allocateEm.exit, %bb.f
  %.014.i.i.i.i = phi ptr [ %i.j, %bb.f ], [ %i.e, %_ZNSt12_Vector_baseIN2cv5aruco10DictionaryESaIS2_EE11_M_allocateEm.exit ] ; 5 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.i, %bb.f ], [ %2, %_ZNSt12_Vector_baseIN2cv5aruco10DictionaryESaIS2_EE11_M_allocateEm.exit ] ; 3 uses
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(216) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.08.013.i.i.i.i)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 208
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 208
  %i.h = load i64, ptr %i.g, align 8
  store i64 %i.h, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 216 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 216
  %.not.i.i.i.i = icmp eq ptr %i.i, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN2cv5aruco10DictionaryESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !9

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  %i.m = tail call ptr @__cxa_begin_catch(ptr %i.l) #31 ; 0 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.e, %.014.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv5aruco10DictionaryEEvT_S4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i ], [ %i.e, %bb.g ] ; 2 uses
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(216) %.05.i.i.i.i.i.i) #31
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 216 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, %.014.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv5aruco10DictionaryEEvT_S4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN2cv5aruco10DictionaryEEvT_S4_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.g
  invoke void @__cxa_rethrow() #32
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN2cv5aruco10DictionaryEEvT_S4_.exit.i.i.i.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #35
  unreachable

bb.j:                                             ; preds = %_ZSt8_DestroyIPN2cv5aruco10DictionaryEEvT_S4_.exit.i.i.i.i
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN2cv5aruco10DictionaryESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %bb.f, %_ZNSt12_Vector_baseIN2cv5aruco10DictionaryESaIS2_EE11_M_allocateEm.exit
  ret ptr %i.e

.body:                                            ; preds = %bb.h
  %i.r = extractvalue { ptr, i32 } %i.o, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #31 ; 0 uses
  %.not.i11 = icmp eq ptr %i.e, null
  br i1 %.not.i11, label %_ZNSt12_Vector_baseIN2cv5aruco10DictionaryESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.k

bb.k:                                             ; preds = %.body
  %i.t = mul i64 %1, 216
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.t) #33
  br label %_ZNSt12_Vector_baseIN2cv5aruco10DictionaryESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN2cv5aruco10DictionaryESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %bb.k, %.body
  invoke void @__cxa_rethrow() #32
          to label %bb.o unwind label %bb.l

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIN2cv5aruco10DictionaryESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.u

bb.n:                                             ; preds = %bb.l
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #35
  unreachable

bb.o:                                             ; preds = %_ZNSt12_Vector_baseIN2cv5aruco10DictionaryESaIS2_EE13_M_deallocateEPS2_m.exit
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse2.cvtsd2si(<2 x double>) #27

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree noreturn }
attributes #16 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #20 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #21 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #22 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #23 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #28 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #31 = { nounwind }
attributes #32 = { noreturn }
attributes #33 = { builtin nounwind }
attributes #34 = { builtin allocsize(0) }
attributes #35 = { noreturn nounwind }
attributes #36 = { nounwind willreturn memory(read) }
attributes #37 = { nounwind allocsize(0) }

!llvm.module.flags = !{!31, !32}
!llvm.ident = !{!33}
!llvm.errno.tbaa = !{!38}

!0 = distinct !{null, null, null, null, null}
!1 = distinct !{ptr @_ZNSt12__shared_ptrIN2cv5aruco13ArucoDetector17ArucoDetectorImplELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2 = distinct !{!2, !73}
!3 = distinct !{!3, !73}
!4 = distinct !{!4, !73}
!5 = distinct !{!5, !73}
!6 = distinct !{!6, !73}
!7 = distinct !{!7, !73}
!8 = distinct !{!8, !73}
!9 = distinct !{!9, !73}
!10 = distinct !{!10, !73}
!11 = distinct !{!11, !73}
!12 = distinct !{!12, !73}
!13 = distinct !{!13, !73}
!14 = distinct !{!14, !73}
!15 = distinct !{!15, !73}
!16 = distinct !{!16, !73}
!17 = distinct !{!17, !73}
!18 = distinct !{!18, !73}
!19 = distinct !{!19, !73}
!20 = distinct !{!20, !73}
!21 = distinct !{!21, !73}
!22 = distinct !{!22, !73}
!23 = distinct !{!23, !73}
!24 = distinct !{!24, !73}
!25 = distinct !{!25, !73}
!26 = distinct !{!26, !73}
!27 = distinct !{!27, !73}
!28 = distinct !{!28, !73}
!29 = distinct !{!29, !73}
!30 = distinct !{!30, !73}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!34 = !{!"Simple C++ TBAA"}
!35 = !{!"omnipotent char", !34, i64 0}
!36 = !{!"int", !35, i64 0}
!37 = !{!"__libc_errno", !36, i64 0}
!38 = !{!37, !36, i64 0}
!39 = !{!"any pointer", !35, i64 0}
!40 = !{!"p1 omnipotent char", !39, i64 0}
!41 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !40, i64 0}
!42 = !{!"long", !35, i64 0}
!43 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !41, i64 0, !42, i64 8, !35, i64 16}
!44 = !{!43, !40, i64 0}
!45 = !{!35, !35, i64 0}
!46 = !{!41, !40, i64 0}
!47 = !{!42, !42, i64 0}
!48 = !{!43, !42, i64 8}
!49 = !{!"vtable pointer", !34, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!"float", !35, i64 0}
!52 = !{!"bool", !35, i64 0}
!53 = !{!"_ZTSN2cv5aruco16RefineParametersE", !51, i64 0, !51, i64 4, !52, i64 8}
!54 = !{!53, !51, i64 0}
!55 = !{!53, !51, i64 4}
!56 = !{!53, !52, i64 8}
!57 = !{!"p1 _ZTSN2cv5aruco10DictionaryE", !39, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseIN2cv5aruco10DictionaryESaIS2_EE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!59 = !{!58, !57, i64 0}
!60 = !{!58, !57, i64 16}
!61 = !{!"p1 _ZTSN2cv5aruco13ArucoDetector17ArucoDetectorImplE", !39, i64 0}
!62 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !39, i64 0}
!63 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !62, i64 0}
!64 = !{!"_ZTSSt12__shared_ptrIN2cv5aruco13ArucoDetector17ArucoDetectorImplELN9__gnu_cxx12_Lock_policyE2EE", !61, i64 0, !63, i64 8}
!65 = !{!64, !61, i64 0}
!66 = !{!63, !62, i64 0}
!67 = !{!36, !36, i64 0}
!68 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !36, i64 8, !36, i64 12}
!69 = !{!68, !36, i64 8}
!70 = !{!68, !36, i64 12}
!71 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!72 = !{!58, !57, i64 8}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!"_ZTSNSt12_Vector_baseIN2cv5aruco10DictionaryESaIS2_EE12_Vector_implE", !58, i64 0}
!75 = !{!"_ZTSSt12_Vector_baseIN2cv5aruco10DictionaryESaIS2_EE", !74, i64 0}
!76 = !{!"_ZTSSt6vectorIN2cv5aruco10DictionaryESaIS2_EE", !75, i64 0}
!77 = !{!"double", !35, i64 0}
!78 = !{!"_ZTSN2cv5aruco18DetectorParametersE", !36, i64 0, !36, i64 4, !36, i64 8, !77, i64 16, !77, i64 24, !77, i64 32, !77, i64 40, !77, i64 48, !36, i64 56, !77, i64 64, !51, i64 72, !36, i64 76, !36, i64 80, !51, i64 84, !36, i64 88, !77, i64 96, !36, i64 104, !36, i64 108, !77, i64 112, !77, i64 120, !77, i64 128, !77, i64 136, !51, i64 144, !51, i64 148, !36, i64 152, !36, i64 156, !51, i64 160, !51, i64 164, !36, i64 168, !36, i64 172, !52, i64 176, !52, i64 177, !36, i64 180, !51, i64 184, !51, i64 188}
!79 = !{!"_ZTSN2cv5aruco13ArucoDetector17ArucoDetectorImplE", !76, i64 0, !78, i64 24, !53, i64 216}
!80 = !{!79, !36, i64 128}
!81 = !{!79, !52, i64 201}
!82 = !{i8 0, i8 2}
!83 = !{}
!84 = !{!79, !36, i64 204}
!85 = !{!"_ZTSN2cv5Size_IiEE", !36, i64 0, !36, i64 4}
!86 = !{!85, !36, i64 0}
!87 = !{!85, !36, i64 4}
!88 = !{!"_ZTSN2cv11_InputArrayE", !36, i64 0, !39, i64 8, !85, i64 16}
!89 = !{!88, !36, i64 0}
!90 = !{!88, !39, i64 8}
!91 = !{!"_ZTSN2cv10DataLayoutE", !35, i64 0}
!92 = !{!"_ZTSN2cv8MatShapeE", !36, i64 0, !91, i64 4, !36, i64 8, !35, i64 12}
!93 = !{!"p1 _ZTSN2cv12MatAllocatorE", !39, i64 0}
!94 = !{!"p1 _ZTSN2cv8UMatDataE", !39, i64 0}
!95 = !{!"_ZTSN2cv7MatStepE", !35, i64 0}
!96 = !{!"_ZTSN2cv3MatE", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !93, i64 56, !94, i64 64, !92, i64 72, !95, i64 128}
!97 = !{!"_ZTSN2cv5aruco10DictionaryE", !96, i64 0, !36, i64 208, !36, i64 212}
!98 = !{!97, !36, i64 208}
!99 = !{!"p1 _ZTSSt6vectorIN2cv6Point_IfEESaIS2_EE", !39, i64 0}
!100 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN2cv6Point_IfEESaIS3_EESaIS5_EE17_Vector_impl_dataE", !99, i64 0, !99, i64 8, !99, i64 16}
!101 = !{!100, !99, i64 0}
!102 = !{!100, !99, i64 8}
!103 = !{!"p1 _ZTSN2cv6Point_IfEE", !39, i64 0}
!104 = !{!"_ZTSNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE17_Vector_impl_dataE", !103, i64 0, !103, i64 8, !103, i64 16}
!105 = !{!104, !103, i64 0}
!106 = !{!104, !103, i64 16}
!107 = !{!"p1 _ZTSSt6vectorIN2cv6Point_IiEESaIS2_EE", !39, i64 0}
!108 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EE17_Vector_impl_dataE", !107, i64 0, !107, i64 8, !107, i64 16}
!109 = !{!108, !107, i64 0}
!110 = !{!108, !107, i64 8}
!111 = !{!"p1 _ZTSN2cv6Point_IiEE", !39, i64 0}
!112 = !{!"_ZTSNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EE17_Vector_impl_dataE", !111, i64 0, !111, i64 8, !111, i64 16}
!113 = !{!112, !111, i64 0}
!114 = !{!112, !111, i64 16}
!115 = !{!"p1 _ZTSN2cv5aruco19MarkerCandidateTreeE", !39, i64 0}
!116 = !{!"_ZTSNSt12_Vector_baseIN2cv5aruco19MarkerCandidateTreeESaIS2_EE17_Vector_impl_dataE", !115, i64 0, !115, i64 8, !115, i64 16}
!117 = !{!116, !115, i64 0}
!118 = !{!116, !115, i64 8}
!119 = !{!116, !115, i64 16}
!120 = !{!"_ZTSSt14_Rb_tree_color", !35, i64 0}
!121 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !39, i64 0}
!122 = !{!"_ZTSSt18_Rb_tree_node_base", !120, i64 0, !121, i64 8, !121, i64 16, !121, i64 24}
!123 = !{!"_ZTSSt15_Rb_tree_header", !122, i64 0, !42, i64 32}
!124 = !{!123, !121, i64 8}
!125 = !{!123, !121, i64 16}
!126 = !{!123, !42, i64 32}
!127 = !{!57, !57, i64 0}
!128 = !{!121, !121, i64 0}
!129 = !{!99, !99, i64 0}
!130 = !{!100, !99, i64 16}
!131 = !{!108, !107, i64 16}
!132 = !{!"_ZTSNSt12_Vector_baseIN2cv5aruco19MarkerCandidateTreeESaIS2_EE12_Vector_implE", !116, i64 0}
!133 = !{!"_ZTSSt12_Vector_baseIN2cv5aruco19MarkerCandidateTreeESaIS2_EE", !132, i64 0}
!134 = !{!"_ZTSSt6vectorIN2cv5aruco19MarkerCandidateTreeESaIS2_EE", !133, i64 0}
!135 = !{!"_ZTSSt4pairIKiSt6vectorIN2cv5aruco19MarkerCandidateTreeESaIS4_EEE", !36, i64 0, !134, i64 8}
!136 = !{!135, !36, i64 0}
!137 = !{!115, !115, i64 0}
!138 = !{!"p1 int", !39, i64 0}
!139 = !{!138, !138, i64 0}
!140 = !{!103, !103, i64 0}
!141 = !{!104, !103, i64 8}
!142 = !{!"_ZTSN2cv6Point_IfEE", !51, i64 0, !51, i64 4}
!143 = !{!142, !51, i64 0}
!144 = !{!142, !51, i64 4}
!145 = !{!"_ZTSN2cv5RangeE", !36, i64 0, !36, i64 4}
!146 = !{!145, !36, i64 0}
!147 = !{!145, !36, i64 4}
!148 = !{!"p1 _ZTSSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE", !39, i64 0}
!149 = !{!148, !148, i64 0}
!150 = !{!"p1 _ZTSSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE", !39, i64 0}
!151 = !{!150, !150, i64 0}
!152 = !{!"_ZTSSt14_Function_base", !35, i64 0, !39, i64 16}
!153 = !{!"_ZTSSt8functionIFvRKN2cv5RangeEEE", !152, i64 0, !39, i64 24}
!154 = !{!153, !39, i64 24}
!155 = !{!152, !39, i64 16}
!156 = !{!51, !51, i64 0}
end_hunk_1
