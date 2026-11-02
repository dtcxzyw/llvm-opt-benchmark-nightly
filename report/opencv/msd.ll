Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/msd?download=true
inline.NumInlined: 804
inline.NumDeleted: 382
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0
@.str.9 = private unnamed_addr constant [19 x i8] c"search_area_radius\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"nms_radius\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"nms_scale_radius\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"th_saliency\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"kNN\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"scale_factor\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"n_scales\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"compute_orientation\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"No element name has been given\00", align 1
@__func__._ZN2cvlsIiEERNS_11FileStorageES2_RKT_ = private unnamed_addr constant [11 x i8] c"operator<<\00", align 1
@.str.18 = private unnamed_addr constant [80 x i8] c"/opt-bench/work/opencv/opencv/modules/core/include/opencv2/core/persistence.hpp\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@_ZTVN2cv11xfeatures2d15MSDImagePyramid22MSDImagePyramidBuilderE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv11xfeatures2d15MSDImagePyramid22MSDImagePyramidBuilderE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv11xfeatures2d15MSDImagePyramid22MSDImagePyramidBuilderD0Ev, ptr @_ZNK2cv11xfeatures2d15MSDImagePyramid22MSDImagePyramidBuilderclERKNS_5RangeE] }, comdat, align 8
@_ZTIN2cv11xfeatures2d15MSDImagePyramid22MSDImagePyramidBuilderE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv11xfeatures2d15MSDImagePyramid22MSDImagePyramidBuilderE, ptr @_ZTIN2cv16ParallelLoopBodyE }, comdat, align 8
@_ZTSN2cv11xfeatures2d15MSDImagePyramid22MSDImagePyramidBuilderE = linkonce_odr hidden constant [60 x i8] c"N2cv11xfeatures2d15MSDImagePyramid22MSDImagePyramidBuilderE\00", comdat, align 1
@_ZTIN2cv16ParallelLoopBodyE = external constant ptr
@_ZTVN2cv11xfeatures2d16MSDDetector_Impl24MSDSelfDissimilarityScanE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv11xfeatures2d16MSDDetector_Impl24MSDSelfDissimilarityScanE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv11xfeatures2d16MSDDetector_Impl24MSDSelfDissimilarityScanD0Ev, ptr @_ZNK2cv11xfeatures2d16MSDDetector_Impl24MSDSelfDissimilarityScanclERKNS_5RangeE] }, comdat, align 8
@_ZTIN2cv11xfeatures2d16MSDDetector_Impl24MSDSelfDissimilarityScanE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv11xfeatures2d16MSDDetector_Impl24MSDSelfDissimilarityScanE, ptr @_ZTIN2cv16ParallelLoopBodyE }, comdat, align 8
@_ZTSN2cv11xfeatures2d16MSDDetector_Impl24MSDSelfDissimilarityScanE = linkonce_odr hidden constant [63 x i8] c"N2cv11xfeatures2d16MSDDetector_Impl24MSDSelfDissimilarityScanE\00", comdat, align 1
@.str.20 = private unnamed_addr constant [74 x i8] c"vector::_M_range_check: __n (which is %zu) >= this->size() (which is %zu)\00", align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv11xfeatures2d16MSDDetector_Impl12rescalePointEiiiRSt6vectorIS2_IfSaIfEESaIS4_EERNS_6Point_IfEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(8) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::Vec", align 4           ; 5 uses
  %7 = alloca %"class.cv::Matx.10", align 4       ; 7 uses
  %8 = alloca %"class.cv::Vec", align 8           ; 5 uses
  %9 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %10 = alloca %"class.cv::_InputArray", align 8  ; 6 uses
  %11 = alloca %"class.cv::_OutputArray", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = sext i32 %3 to i64                       ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw [208 x i8], ptr %i.c, i64 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !21   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.g = load ptr, ptr %4, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.b
  %i.i = mul nsw i32 %i.f, %2
  %i.j = add nsw i32 %i.i, %1
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !27   ; 3 uses
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr [4 x i8], ptr %i.k, i64 %i.l ; 3 uses
  %i.n = getelementptr i8, ptr %i.m, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !29 ; 2 uses
  %i.p = getelementptr i8, ptr %i.m, i64 -4
  %i.q = load float, ptr %i.p, align 4, !tbaa !29 ; 2 uses
  %i.r = fsub float %i.o, %i.q
  %i.s = fmul float %i.r, 5.000000e-01
  %i.t = add nsw i32 %2, 1
  %i.u = mul nsw i32 %i.f, %i.t
  %i.v = add nsw i32 %i.u, %1
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr [4 x i8], ptr %i.k, i64 %i.w ; 3 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !29 ; 2 uses
  %i.z = add nsw i32 %2, -1
  %i.aa = mul nsw i32 %i.f, %i.z
  %i.ab = add nsw i32 %i.aa, %1
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr [4 x i8], ptr %i.k, i64 %i.ac ; 3 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !29 ; 2 uses
  %i.af = fsub float %i.y, %i.ae
  %i.ag = fmul float %i.af, 5.000000e-01
  store float %i.s, ptr %6, align 4, !tbaa !29
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.ag, ptr %i.ah, align 4, !tbaa !29
  %i.ai = load float, ptr %i.m, align 4, !tbaa !29
  %i.aj = fmul float %i.ai, 2.000000e+00          ; 2 uses
  %i.ak = fadd float %i.o, %i.q
  %i.al = fsub float %i.ak, %i.aj
  %i.am = fadd float %i.y, %i.ae
  %i.an = fsub float %i.am, %i.aj
  %i.ao = getelementptr i8, ptr %i.x, i64 4
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !29
  %i.aq = getelementptr i8, ptr %i.x, i64 -4
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !29
  %i.as = fsub float %i.ap, %i.ar
  %i.at = getelementptr i8, ptr %i.ad, i64 4
  %i.au = load float, ptr %i.at, align 4, !tbaa !29
  %i.av = fsub float %i.as, %i.au
  %i.aw = getelementptr i8, ptr %i.ad, i64 -4
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !29
  %i.ay = fadd float %i.av, %i.ax
  %i.az = fmul float %i.ay, 2.500000e-01          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store float %i.al, ptr %7, align 4, !tbaa !29
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %i.az, ptr %i.ba, align 4, !tbaa !29
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float %i.az, ptr %i.bb, align 4, !tbaa !29
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 12
  store float %i.an, ptr %i.bc, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store i64 0, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 -1056833531, ptr %9, align 8, !tbaa !32
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %7, ptr %i.be, align 8, !tbaa !33
  store i64 8589934594, ptr %i.bd, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 -1056833531, ptr %10, align 8, !tbaa !32
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %6, ptr %i.bg, align 8, !tbaa !33
  store i64 8589934593, ptr %i.bf, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 -1040056315, ptr %11, align 8, !tbaa !32
  store ptr %8, ptr %i.bh, align 8, !tbaa !33
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 8589934593, ptr %i.bi, align 8, !tbaa !34
  %i.bj = call noundef zeroext i1 @_ZN2cv5solveERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.bk = load <2 x float>, ptr %8, align 8, !tbaa !29 ; 3 uses
  %i.bl = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bk)
  %i.bm = fcmp ogt <2 x float> %i.bl, splat (float 5.000000e+00) ; 2 uses
  %i.bn = extractelement <2 x i1> %i.bm, i64 0
  %i.bo = extractelement <2 x i1> %i.bm, i64 1
  %or.cond111 = select i1 %i.bo, i1 true, i1 %i.bn
  br i1 %or.cond111, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bp = icmp eq i32 %3, 0
  br i1 %i.bp, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bq = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.br = insertelement <2 x i32> %i.bq, i32 %2, i64 1
  %i.bs = sitofp <2 x i32> %i.br to <2 x float>
  %i.bt = fsub <2 x float> %i.bs, %i.bk
  %i.bu = fadd <2 x float> %i.bt, splat (float 5.000000e-01)
  store <2 x float> %i.bu, ptr %5, align 4, !tbaa !29
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bw = load float, ptr %i.bv, align 8, !tbaa !43
  %i.bx = sitofp i32 %3 to float
  %i.by = call noundef float @powf(float noundef %i.bw, float noundef %i.bx) #21
  %i.bz = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.ca = insertelement <2 x i32> %i.bz, i32 %2, i64 1
  %i.cb = sitofp <2 x i32> %i.ca to <2 x float>
  %i.cc = fsub <2 x float> %i.cb, %i.bk
  %i.cd = fadd <2 x float> %i.cc, splat (float 5.000000e-01)
  %i.ce = insertelement <2 x float> poison, float %i.by, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = fmul <2 x float> %i.cd, %i.cf
  %i.ch = fadd <2 x float> %i.cg, splat (float -5.000000e-01) ; 3 uses
  store <2 x float> %i.ch, ptr %5, align 4, !tbaa !29
  %i.ci = extractelement <2 x float> %i.ch, i64 0 ; 2 uses
  %i.cj = fcmp olt float %i.ci, 0.000000e+00
  br i1 %i.cj, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ck = load ptr, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !21
  %i.cn = sitofp i32 %i.cm to float
  %i.co = fcmp oge float %i.ci, %i.cn
  %i.cp = extractelement <2 x float> %i.ch, i64 1 ; 2 uses
  %i.cq = fcmp olt float %i.cp, 0.000000e+00
  %or.cond = select i1 %i.co, i1 true, i1 %i.cq
  br i1 %or.cond, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !44
  %i.ct = sitofp i32 %i.cs to float
  %i.cu = fcmp ult float %i.cp, %i.ct
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.c, %bb.e, %bb.d, %bb.a
  %.1104 = phi i1 [ false, %bb.a ], [ %i.cu, %bb.f ], [ true, %bb.c ], [ false, %bb.d ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  ret i1 %.1104
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef zeroext i1 @_ZN2cv5solveERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv11xfeatures2d16MSDDetector_Impl27contextualSelfDissimilarityERNS_3MatEiiPf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !45
  %.fr690 = freeze i32 %i.b                       ; 27 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !46   ; 19 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !47
  %.fr691 = freeze i32 %i.f                       ; 18 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !21   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !44
  %i.k = shl nsw i32 %.fr690, 1
  %i.l = or disjoint i32 %i.k, 1                  ; 2 uses
  %i.m = add nsw i32 %i.d, %.fr690                ; 11 uses
  %i.n = mul nsw i32 %i.l, %i.l
  %i.o = mul nuw nsw i32 %i.n, %.fr691
  %i.p = sext i32 %.fr691 to i64                  ; 3 uses
  %i.q = icmp slt i32 %.fr691, 0
  br i1 %i.q, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %.fr691, 0          ; 5 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %.noexc423

.noexc423:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.r = shl nuw nsw i64 %i.p, 2
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #23 ; 5 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.p ; 2 uses
  store i32 0, ptr %i.s, align 4, !tbaa !34
  %i.u = getelementptr i8, ptr %i.s, i64 4        ; 3 uses
  %i.v = add nsw i64 %i.p, -1                     ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc423
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.v, 2   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.u, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc423, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.45.0 = phi ptr [ %i.t, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.t, %.noexc423 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0469.0 = phi ptr [ %i.s, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.s, %.noexc423 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 32 uses
  %.0.i.i.i.i.i = phi ptr [ %i.x, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.u, %.noexc423 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.y = shl i32 %i.d, 1                          ; 5 uses
  %i.z = or disjoint i32 %i.y, 1                  ; 2 uses
  %i.aa = mul nsw i32 %i.z, %i.z
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 2                ; 2 uses
  %i.ad = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ac) #23
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 16 uses

bb.b:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.ae = sext i32 %i.h to i64                    ; 2 uses
  %i.af = icmp slt i32 %i.h, 0
  %i.ag = shl nsw i64 %i.ae, 3
  %i.ah = select i1 %i.af, i64 -1, i64 %i.ag
  %i.ai = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ah) #23
          to label %.preheader520 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

.preheader520:                                    ; preds = %bb.b
  %i.aj = icmp sgt i32 %i.h, 0                    ; 2 uses
  br i1 %i.aj, label %.lr.ph.preheader, label %.preheader519

.lr.ph.preheader:                                 ; preds = %.preheader520
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %.lr.ph

.preheader519:                                    ; preds = %bb.c, %.preheader520
  br i1 %.not.i.i.i.i, label %.preheader518, label %.lr.ph529.preheader

.lr.ph529.preheader:                              ; preds = %.preheader519
  %wide.trip.count718 = zext nneg i32 %.fr691 to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.fr691, 8
  br i1 %min.iters.check, label %.lr.ph529.preheader961, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph529.preheader
  %n.vec = and i64 %wide.trip.count718, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %i.ak, align 4, !tbaa !34
  store <4 x i32> splat (i32 2147483647), ptr %i.al, align 4, !tbaa !34
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count718
  br i1 %cmp.n, label %.preheader518, label %.lr.ph529.preheader961

.lr.ph529.preheader961:                           ; preds = %.lr.ph529.preheader, %middle.block
  %indvars.iv715.ph = phi i64 [ 0, %.lr.ph529.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph529

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.an = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ac) #23
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %.lr.ph
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !144
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader519, label %.lr.ph, !llvm.loop !114

.preheader518:                                    ; preds = %.lr.ph529, %middle.block, %.preheader519
  %i.ap = add nsw i32 %i.m, %i.d
  %.not551 = icmp sgt i32 %.fr690, %i.ap          ; 2 uses
  br i1 %.not551, label %._crit_edge556.split, label %.lr.ph555

.lr.ph555:                                        ; preds = %.preheader518
  %i.aq = sub i32 %2, %i.d                        ; 7 uses
  %i.ar = add i32 %i.d, %2                        ; 7 uses
  %.not412544 = icmp slt i32 %i.d, 0
  %i.as = sub nsw i32 0, %.fr690
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.aw = zext nneg i32 %.fr691 to i64
  %i.ax = getelementptr [4 x i8], ptr %.sroa.0469.0, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 -4     ; 10 uses
  %i.az = add nsw i32 %.fr691, -2                 ; 2 uses
  %i.ba = icmp sgt i32 %.fr691, 1                 ; 2 uses
  br i1 %.not412544, label %._crit_edge556.split, label %.lr.ph555.split

.lr.ph555.split:                                  ; preds = %.lr.ph555
  %.not413535 = icmp slt i32 %.fr690, 0
  br i1 %.not413535, label %.lr.ph555.split.split.us, label %.lr.ph548.preheader

.lr.ph548.preheader:                              ; preds = %.lr.ph555.split
  %i.bb = sext i32 %i.as to i64                   ; 2 uses
  %i.bc = zext nneg i32 %i.m to i64               ; 2 uses
  %i.bd = add nuw i32 %.fr690, 1                  ; 2 uses
  %i.be = sext i32 %2 to i64                      ; 2 uses
  %5 = zext i32 %i.az to i64
  %i.bf = sext i32 %i.aq to i64
  %i.bg = sext i32 %i.ar to i64
  %i.bh = zext nneg i32 %.fr690 to i64
  %i.bi = add i32 %.fr690, %i.y
  %i.bj = add i32 %i.bi, 1
  br label %.lr.ph548

.lr.ph555.split.split.us:                         ; preds = %.lr.ph555.split
  br i1 %i.ba, label %.lr.ph555.split.split.us.a, label %.lr.ph548.us.preheader

.lr.ph548.us.preheader:                           ; preds = %.lr.ph555.split.split.us
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ar, i32 %i.aq)
  %6 = add i32 %i.d, %smax
  %7 = sub i32 %6, %2
  %8 = zext i32 %7 to i64
  %9 = shl nuw nsw i64 %8, 2
  %10 = add nuw nsw i64 %9, 4
  %11 = add i32 %.fr690, %i.y
  br label %.lr.ph548.us

.lr.ph555.split.split.us.a:                       ; preds = %.lr.ph555.split.split.us
  %12 = zext nneg i32 %i.az to i64                ; 2 uses
  %smax743 = tail call i32 @llvm.smax.i32(i32 %i.ar, i32 %i.aq)
  %i.bk = add i32 %i.d, %smax743
  %i.bl = sub i32 %i.bk, %2
  %i.bm = zext i32 %i.bl to i64
  %i.bn = shl nuw nsw i64 %i.bm, 2
  %i.bo = add nuw nsw i64 %i.bn, 4
  %i.bp = add i32 %.fr690, %i.y
  br label %.lr.ph548.us.us

.lr.ph548.us.us:                                  ; preds = %.lr.ph555.split.split.us.a, %._crit_edge549.split.us.split.us.us.us
  %.0379553.us.us = phi i32 [ %i.cq, %._crit_edge549.split.us.split.us.us.us ], [ %.fr690, %.lr.ph555.split.split.us.a ] ; 3 uses
  %.0381552.us.us = phi i32 [ %.us-phi572, %._crit_edge549.split.us.split.us.us.us ], [ 0, %.lr.ph555.split.split.us.a ] ; 2 uses
  %i.bq = icmp eq i32 %.0379553.us.us, %i.m
  %.fr573 = freeze i1 %i.bq
  br i1 %.fr573, label %.lr.ph548.split.us.split.us.us.us.split, label %.lr.ph548.split.us.split.us.us.us.split.us.preheader

.lr.ph548.split.us.split.us.us.us.split.us.preheader: ; preds = %.lr.ph548.us.us
  %i.br = sext i32 %.0381552.us.us to i64         ; 2 uses
  %i.bs = shl nsw i64 %i.br, 2
  %scevgep742 = getelementptr i8, ptr %i.ad, i64 %i.bs
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep742, i8 0, i64 %i.bo, i1 false), !tbaa !34
  br label %.lr.ph548.split.us.split.us.us.us.split.us

.lr.ph548.split.us.split.us.us.us.split.us:       ; preds = %.lr.ph548.split.us.split.us.us.us.split.us.preheader, %.loopexit517.us.us.us.us.us
  %indvars.iv744 = phi i64 [ %i.br, %.lr.ph548.split.us.split.us.us.us.split.us.preheader ], [ %indvars.iv.next745, %.loopexit517.us.us.us.us.us ]
  %.0378546.us.us.us.us.us = phi i32 [ %i.aq, %.lr.ph548.split.us.split.us.us.us.split.us.preheader ], [ %i.cb, %.loopexit517.us.us.us.us.us ] ; 2 uses
  %i.bt = load i32, ptr %i.ay, align 4, !tbaa !34
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph542.us.us.us.us.us, label %.loopexit517.us.us.us.us.us

.lr.ph542.us.us.us.us.us:                         ; preds = %.lr.ph548.split.us.split.us.us.us.split.us
  store i32 0, ptr %i.ay, align 4, !tbaa !34
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph542.us.us.us.us.us
  %indvars.iv745 = phi i64 [ %indvars.iv.next746, %bb.e ], [ %12, %.lr.ph542.us.us.us.us.us ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv745 ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !34 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 4 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !34 ; 2 uses
  %i.bz = icmp sgt i32 %i.bw, %i.by
  br i1 %i.bz, label %bb.e, label %.loopexit517.us.us.us.us.us

bb.e:                                             ; preds = %bb.d
  store i32 %i.by, ptr %i.bv, align 4, !tbaa !34
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !34
  %indvars.iv.next746 = add nsw i64 %indvars.iv745, -1
  %i.ca = icmp sgt i64 %indvars.iv745, 0
  br i1 %i.ca, label %bb.d, label %.loopexit517.us.us.us.us.us, !llvm.loop !115

.loopexit517.us.us.us.us.us:                      ; preds = %bb.d, %bb.e, %.lr.ph548.split.us.split.us.us.us.split.us
  %indvars.iv.next745 = add nsw i64 %indvars.iv744, 1 ; 2 uses
  %i.cb = add nsw i32 %.0378546.us.us.us.us.us, 1
  %.not412.us.us.us.us.us.not = icmp slt i32 %.0378546.us.us.us.us.us, %i.ar
  br i1 %.not412.us.us.us.us.us.not, label %.lr.ph548.split.us.split.us.us.us.split.us, label %._crit_edge549.split.us.split.us.us.us.loopexit701, !llvm.loop !116

.lr.ph548.split.us.split.us.us.us.split:          ; preds = %.lr.ph548.us.us, %bb.i
  %.0378546.us.us.us.us = phi i32 [ %i.co, %bb.i ], [ %i.aq, %.lr.ph548.us.us ] ; 3 uses
  %.1545.us.us.us.us = phi i32 [ %.2.us.us.us.us, %bb.i ], [ %.0381552.us.us, %.lr.ph548.us.us ] ; 3 uses
  %i.cc = icmp eq i32 %.0378546.us.us.us.us, %2
  br i1 %i.cc, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph548.split.us.split.us.us.us.split
  %i.cd = sext i32 %.1545.us.us.us.us to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.cd
  store i32 0, ptr %i.ce, align 4, !tbaa !34
  %i.cf = load i32, ptr %i.ay, align 4, !tbaa !34
  %i.cg = icmp sgt i32 %i.cf, 0
  br i1 %i.cg, label %.lr.ph542.us.us.us.us, label %.loopexit517.us.us.us.us

.lr.ph542.us.us.us.us:                            ; preds = %bb.f
  store i32 0, ptr %i.ay, align 4, !tbaa !34
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph542.us.us.us.us
  %indvars.iv753 = phi i64 [ %indvars.iv.next754, %bb.h ], [ %12, %.lr.ph542.us.us.us.us ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv753 ; 3 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !34 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 4 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !34 ; 2 uses
  %i.cl = icmp sgt i32 %i.ci, %i.ck
  br i1 %i.cl, label %bb.h, label %.loopexit517.us.us.us.us

bb.h:                                             ; preds = %bb.g
  store i32 %i.ck, ptr %i.ch, align 4, !tbaa !34
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !34
  %indvars.iv.next754 = add nsw i64 %indvars.iv753, -1
  %i.cm = icmp sgt i64 %indvars.iv753, 0
  br i1 %i.cm, label %bb.g, label %.loopexit517.us.us.us.us, !llvm.loop !115

.loopexit517.us.us.us.us:                         ; preds = %bb.g, %bb.h, %bb.f
  %i.cn = add nsw i32 %.1545.us.us.us.us, 1
  br label %bb.i

bb.i:                                             ; preds = %.loopexit517.us.us.us.us, %.lr.ph548.split.us.split.us.us.us.split
  %.2.us.us.us.us = phi i32 [ %.1545.us.us.us.us, %.lr.ph548.split.us.split.us.us.us.split ], [ %i.cn, %.loopexit517.us.us.us.us ] ; 2 uses
  %i.co = add nsw i32 %.0378546.us.us.us.us, 1
  %.not412.us.us.us.us.not = icmp slt i32 %.0378546.us.us.us.us, %i.ar
  br i1 %.not412.us.us.us.us.not, label %.lr.ph548.split.us.split.us.us.us.split, label %._crit_edge549.split.us.split.us.us.us, !llvm.loop !116

._crit_edge549.split.us.split.us.us.us.loopexit701: ; preds = %.loopexit517.us.us.us.us.us
  %i.cp = trunc nsw i64 %indvars.iv.next745 to i32
  br label %._crit_edge549.split.us.split.us.us.us

._crit_edge549.split.us.split.us.us.us:           ; preds = %bb.i, %._crit_edge549.split.us.split.us.us.us.loopexit701
  %.us-phi572 = phi i32 [ %i.cp, %._crit_edge549.split.us.split.us.us.us.loopexit701 ], [ %.2.us.us.us.us, %bb.i ]
  %i.cq = add i32 %.0379553.us.us, 1
  %exitcond747.not = icmp eq i32 %.0379553.us.us, %i.bp
  br i1 %exitcond747.not, label %._crit_edge556.split, label %.lr.ph548.us.us, !llvm.loop !117

.lr.ph548.us:                                     ; preds = %.lr.ph548.us.preheader, %._crit_edge549.split.us.split.us565
  %.0379553.us = phi i32 [ %i.dg, %._crit_edge549.split.us.split.us565 ], [ %.fr690, %.lr.ph548.us.preheader ] ; 3 uses
  %.0381552.us = phi i32 [ %.us-phi, %._crit_edge549.split.us.split.us565 ], [ 0, %.lr.ph548.us.preheader ] ; 2 uses
  %i.cr = icmp eq i32 %.0379553.us, %i.m
  %.fr570 = freeze i1 %i.cr
  br i1 %.fr570, label %.lr.ph548.split.us.split.us558.split, label %.lr.ph548.split.us.split.us558.split.us

.lr.ph548.split.us.split.us558.split.us:          ; preds = %.lr.ph548.us
  %.promoted = load i32, ptr %i.ay, align 4, !tbaa !34
  %i.cs = sext i32 %.0381552.us to i64            ; 2 uses
  %i.ct = shl nsw i64 %i.cs, 2
  %scevgep = getelementptr i8, ptr %i.ad, i64 %i.ct
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %10, i1 false), !tbaa !34
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph548.split.us.split.us558.split.us
  %indvars.iv738 = phi i64 [ %indvars.iv.next739, %bb.k ], [ %i.cs, %.lr.ph548.split.us.split.us558.split.us ]
  %i.cu = phi i32 [ %i.cw, %bb.k ], [ %.promoted, %.lr.ph548.split.us.split.us558.split.us ] ; 2 uses
  %.0378546.us.us559.us = phi i32 [ %i.cx, %bb.k ], [ %i.aq, %.lr.ph548.split.us.split.us558.split.us ] ; 2 uses
  %i.cv = icmp sgt i32 %i.cu, 0
  br i1 %i.cv, label %.loopexit517.us.us562.us, label %bb.k

.loopexit517.us.us562.us:                         ; preds = %bb.j
  store i32 0, ptr %i.ay, align 4, !tbaa !34
  br label %bb.k

bb.k:                                             ; preds = %.loopexit517.us.us562.us, %bb.j
  %i.cw = phi i32 [ 0, %.loopexit517.us.us562.us ], [ %i.cu, %bb.j ]
  %indvars.iv.next739 = add nsw i64 %indvars.iv738, 1 ; 2 uses
  %i.cx = add nsw i32 %.0378546.us.us559.us, 1
  %.not412.us.us564.us.not = icmp slt i32 %.0378546.us.us559.us, %i.ar
  br i1 %.not412.us.us564.us.not, label %bb.j, label %._crit_edge549.split.us.split.us565.loopexit702, !llvm.loop !116

.lr.ph548.split.us.split.us558.split:             ; preds = %.lr.ph548.us, %bb.n
  %.0378546.us.us559 = phi i32 [ %i.de, %bb.n ], [ %i.aq, %.lr.ph548.us ] ; 3 uses
  %.1545.us.us560 = phi i32 [ %.2.us.us563, %bb.n ], [ %.0381552.us, %.lr.ph548.us ] ; 3 uses
  %i.cy = icmp eq i32 %.0378546.us.us559, %2
  br i1 %i.cy, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.lr.ph548.split.us.split.us558.split
  %i.cz = sext i32 %.1545.us.us560 to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.cz
  store i32 0, ptr %i.da, align 4, !tbaa !34
  %i.db = load i32, ptr %i.ay, align 4, !tbaa !34
  %i.dc = icmp sgt i32 %i.db, 0
  br i1 %i.dc, label %.loopexit517.us.us562, label %bb.m

.loopexit517.us.us562:                            ; preds = %bb.l
  store i32 0, ptr %i.ay, align 4, !tbaa !34
  br label %bb.m

bb.m:                                             ; preds = %.loopexit517.us.us562, %bb.l
  %i.dd = add nsw i32 %.1545.us.us560, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph548.split.us.split.us558.split
  %.2.us.us563 = phi i32 [ %.1545.us.us560, %.lr.ph548.split.us.split.us558.split ], [ %i.dd, %bb.m ] ; 2 uses
  %i.de = add nsw i32 %.0378546.us.us559, 1
  %.not412.us.us564.not = icmp slt i32 %.0378546.us.us559, %i.ar
  br i1 %.not412.us.us564.not, label %.lr.ph548.split.us.split.us558.split, label %._crit_edge549.split.us.split.us565, !llvm.loop !116

._crit_edge549.split.us.split.us565.loopexit702:  ; preds = %bb.k
  %i.df = trunc nsw i64 %indvars.iv.next739 to i32
  br label %._crit_edge549.split.us.split.us565

._crit_edge549.split.us.split.us565:              ; preds = %bb.n, %._crit_edge549.split.us.split.us565.loopexit702
  %.us-phi = phi i32 [ %i.df, %._crit_edge549.split.us.split.us565.loopexit702 ], [ %.2.us.us563, %bb.n ]
  %i.dg = add i32 %.0379553.us, 1
  %exitcond741.not = icmp eq i32 %.0379553.us, %11
  br i1 %exitcond741.not, label %._crit_edge556.split, label %.lr.ph548.us, !llvm.loop !117

.lr.ph529:                                        ; preds = %.lr.ph529.preheader961, %.lr.ph529
  %indvars.iv715 = phi i64 [ %indvars.iv.next716, %.lr.ph529 ], [ %indvars.iv715.ph, %.lr.ph529.preheader961 ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv715
  store i32 2147483647, ptr %i.dh, align 4, !tbaa !34
  %indvars.iv.next716 = add nuw nsw i64 %indvars.iv715, 1 ; 2 uses
  %exitcond719.not = icmp eq i64 %indvars.iv.next716, %wide.trip.count718
  br i1 %exitcond719.not, label %.preheader518, label %.lr.ph529, !llvm.loop !118

._crit_edge556.split:                             ; preds = %._crit_edge549.split, %._crit_edge549.split.us.split.us565, %._crit_edge549.split.us.split.us.us.us, %.lr.ph555, %.preheader518
  %i.di = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.dj = ptrtoint ptr %.sroa.0469.0 to i64       ; 2 uses
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = ashr exact i64 %i.dk, 2                 ; 4 uses
  %.not.i = icmp eq ptr %.0.i.i.i.i.i, %.sroa.0469.0 ; 4 uses
  br i1 %.not.i, label %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge556.split, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %._crit_edge556.split ] ; 2 uses
  %.0810.i = phi float [ %i.dp, %.lr.ph.i ], [ 0.000000e+00, %._crit_edge556.split ]
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv.i
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !34
  %i.do = sitofp i32 %i.dn to float
  %i.dp = fadd float %.0810.i, %i.do              ; 2 uses
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1   ; 2 uses
  %i.dq = and i64 %indvars.iv.next.i, 4294967295
  %i.dr = icmp ugt i64 %i.dl, %i.dq
  br i1 %i.dr, label %.lr.ph.i, label %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit, !llvm.loop !119

_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit: ; preds = %.lr.ph.i, %._crit_edge556.split
  %.08.lcssa.i = phi float [ 0.000000e+00, %._crit_edge556.split ], [ %i.dp, %.lr.ph.i ]
  %i.ds = sitofp i32 %i.o to float                ; 4 uses
  %i.dt = fdiv float %.08.lcssa.i, %i.ds
  %i.du = mul nsw i32 %i.h, %i.m                  ; 2 uses
  %i.dv = add nsw i32 %i.du, %2
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %4, i64 %i.dw
  store float %i.dt, ptr %i.dx, align 4, !tbaa !29
  %i.dy = add i32 %2, 1                           ; 5 uses
  %i.dz = icmp slt i32 %i.dy, %3                  ; 2 uses
  br i1 %i.dz, label %.preheader516.lr.ph, label %.preheader513

.preheader516.lr.ph:                              ; preds = %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit
  %i.ea = sub i32 0, %.fr690
  %.not411576 = icmp slt i32 %.fr690, 0
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ee = xor i32 %.fr690, -1
  %i.ef = zext nneg i32 %.fr691 to i64            ; 4 uses
  %i.eg = getelementptr [4 x i8], ptr %.sroa.0469.0, i64 %i.ef
  %i.eh = getelementptr i8, ptr %i.eg, i64 -4     ; 8 uses
  %i.ei = add nsw i32 %.fr691, -2
  %i.ej = icmp sgt i32 %.fr691, 1                 ; 2 uses
  %i.ek = sext i32 %i.ea to i64
  %i.el = sext i32 %i.m to i64                    ; 2 uses
  %i.em = add i32 %.fr690, 1
  %13 = zext i32 %i.ei to i64                     ; 3 uses
  %i.en = sub i32 %i.dy, %i.d
  %i.eo = sext i32 %.fr690 to i64                 ; 3 uses
  %i.ep = add i32 %.fr690, %i.y                   ; 3 uses
  %i.eq = add i32 %i.ep, 1
  %i.er = sext i32 %i.dy to i64
  %i.es = sext i32 %i.d to i64
  %i.et = sext i32 %i.du to i64
  %.not410589 = icmp slt i32 %i.d, 0
  %invariant.gep = getelementptr [4 x i8], ptr %4, i64 %i.et
  %min.iters.check916 = icmp ult i32 %.fr691, 8
  %n.vec918 = and i64 %i.ef, 2147483640           ; 3 uses
  %cmp.n923 = icmp eq i64 %n.vec918, %i.ef
  br label %.preheader516

.lr.ph548:                                        ; preds = %.lr.ph548.preheader, %._crit_edge549.split
  %indvars.iv732.a = phi i64 [ %i.bh, %.lr.ph548.preheader ], [ %indvars.iv.next733.a, %._crit_edge549.split ] ; 3 uses
  %.0381552 = phi i32 [ 0, %.lr.ph548.preheader ], [ %.2, %._crit_edge549.split ]
  %i.eu = icmp eq i64 %indvars.iv732.a, %i.bc
  br label %bb.o

._crit_edge549.split:                             ; preds = %bb.s
  %indvars.iv.next733.a = add nuw nsw i64 %indvars.iv732.a, 1 ; 2 uses
  %lftr.wideiv736 = trunc i64 %indvars.iv.next733.a to i32
  %exitcond737.not = icmp eq i32 %i.bj, %lftr.wideiv736
  br i1 %exitcond737.not, label %._crit_edge556.split, label %.lr.ph548, !llvm.loop !117

bb.o:                                             ; preds = %.lr.ph548, %bb.s
  %indvars.iv729.a = phi i64 [ %i.bf, %.lr.ph548 ], [ %indvars.iv.next730.a, %bb.s ] ; 4 uses
  %.1545 = phi i32 [ %.0381552, %.lr.ph548 ], [ %.2, %bb.s ] ; 3 uses
  %i.ev = icmp eq i64 %indvars.iv729.a, %i.be
  %or.cond = and i1 %i.eu, %i.ev
  br i1 %or.cond, label %bb.s, label %.lr.ph538

.lr.ph538:                                        ; preds = %bb.o
  %i.ew = sext i32 %.1545 to i64                  ; 2 uses
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.ew ; 2 uses
  store i32 0, ptr %i.ex, align 4, !tbaa !34
  %i.ey = load ptr, ptr %i.au, align 8, !tbaa !51 ; 2 uses
  %invariant.gep895 = getelementptr i8, ptr %i.ey, i64 %indvars.iv729.a
  br label %.lr.ph532

._crit_edge539.split:                             ; preds = %._crit_edge
  %i.ez = load i32, ptr %i.ay, align 4, !tbaa !34
  %i.fa = icmp slt i32 %i.fg, %i.ez
  br i1 %i.fa, label %bb.q, label %.loopexit517

.lr.ph532:                                        ; preds = %.lr.ph538, %._crit_edge
  %i.fb = phi i32 [ 0, %.lr.ph538 ], [ %i.fg, %._crit_edge ]
  %indvars.iv724 = phi i64 [ %i.bb, %.lr.ph538 ], [ %indvars.iv.next725, %._crit_edge ] ; 3 uses
  %i.fc = add nsw i64 %indvars.iv724, %i.be       ; 2 uses
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.fc
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !144
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.fe, i64 %i.ew ; 2 uses
  store i32 0, ptr %i.ff, align 4, !tbaa !34
  %gep896 = getelementptr i8, ptr %invariant.gep895, i64 %indvars.iv724
  %invariant.gep533 = getelementptr i8, ptr %i.ey, i64 %i.fc
  br label %bb.p

._crit_edge:                                      ; preds = %bb.p
  %i.fg = add nuw nsw i32 %i.fb, %i.fv            ; 4 uses
  store i32 %i.fg, ptr %i.ex, align 4, !tbaa !34
  %indvars.iv.next725 = add nsw i64 %indvars.iv724, 1 ; 2 uses
  %lftr.wideiv727 = trunc i64 %indvars.iv.next725 to i32
  %exitcond728.not = icmp eq i32 %i.bd, %lftr.wideiv727
  br i1 %exitcond728.not, label %._crit_edge539.split, label %.lr.ph532, !llvm.loop !120

bb.p:                                             ; preds = %.lr.ph532, %bb.p
  %i.fh = phi i32 [ 0, %.lr.ph532 ], [ %i.fv, %bb.p ]
  %indvars.iv720 = phi i64 [ %i.bb, %.lr.ph532 ], [ %indvars.iv.next721, %bb.p ] ; 3 uses
  %i.fi = add nsw i64 %indvars.iv720, %indvars.iv732.a
  %i.fj = load i32, ptr %i.at, align 4, !tbaa !52
  %i.fk = icmp slt i32 %i.fj, 2                   ; 2 uses
  %i.fl = load i64, ptr %i.av, align 8            ; 2 uses
  %i.fm = mul i64 %i.fl, %i.fi
  %.sink.idx.i = select i1 %i.fk, i64 0, i64 %i.fm
  %gep = getelementptr i8, ptr %gep896, i64 %.sink.idx.i
  %i.fn = load i8, ptr %gep, align 1, !tbaa !53
  %i.fo = add nsw i64 %indvars.iv720, %i.bc
  %i.fp = mul i64 %i.fl, %i.fo
  %.sink.idx.i424 = select i1 %i.fk, i64 0, i64 %i.fp
  %gep534 = getelementptr i8, ptr %invariant.gep533, i64 %.sink.idx.i424
  %i.fq = zext i8 %i.fn to i32
  %i.fr = load i8, ptr %gep534, align 1, !tbaa !53
  %i.fs = zext i8 %i.fr to i32
  %i.ft = sub nsw i32 %i.fq, %i.fs                ; 2 uses
  %i.fu = mul nsw i32 %i.ft, %i.ft
  %i.fv = add nuw nsw i32 %i.fu, %i.fh            ; 3 uses
  store i32 %i.fv, ptr %i.ff, align 4, !tbaa !34
  %indvars.iv.next721 = add nsw i64 %indvars.iv720, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next721 to i32
  %exitcond723.not = icmp eq i32 %i.bd, %lftr.wideiv
  br i1 %exitcond723.not, label %._crit_edge, label %bb.p, !llvm.loop !121

bb.q:                                             ; preds = %._crit_edge539.split
  store i32 %i.fg, ptr %i.ay, align 4, !tbaa !34
  br i1 %i.ba, label %.lr.ph542, label %.loopexit517

.lr.ph542:                                        ; preds = %bb.q, %bb.r
  %indvars.iv729 = phi i64 [ %indvars.iv.next730, %bb.r ], [ %5, %bb.q ] ; 3 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv729 ; 3 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !34 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 4 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !34 ; 2 uses
  %i.ga = icmp sgt i32 %i.fx, %i.fz
  br i1 %i.ga, label %bb.r, label %.loopexit517

bb.r:                                             ; preds = %.lr.ph542
  store i32 %i.fz, ptr %i.fw, align 4, !tbaa !34
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !34
  %indvars.iv.next730 = add nsw i64 %indvars.iv729, -1
  %i.gb = icmp sgt i64 %indvars.iv729, 0
  br i1 %i.gb, label %.lr.ph542, label %.loopexit517, !llvm.loop !115

.loopexit517:                                     ; preds = %.lr.ph542, %bb.r, %bb.q, %._crit_edge539.split
  %i.gc = add nsw i32 %.1545, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %.loopexit517
  %.2 = phi i32 [ %.1545, %bb.o ], [ %i.gc, %.loopexit517 ] ; 2 uses
  %indvars.iv.next730.a = add nsw i64 %indvars.iv729.a, 1
  %.not412.not = icmp slt i64 %indvars.iv729.a, %i.bg
  br i1 %.not412.not, label %bb.o, label %._crit_edge549.split, !llvm.loop !116

.preheader516:                                    ; preds = %.preheader516.lr.ph, %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit432
  %indvars.iv776.a = phi i64 [ %i.er, %.preheader516.lr.ph ], [ %indvars.iv.next777.a, %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit432 ] ; 7 uses
  %indvars.iv758 = phi i32 [ %i.en, %.preheader516.lr.ph ], [ %indvars.iv.next759, %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit432 ] ; 2 uses
  %i.gd = sext i32 %indvars.iv758 to i64
  br i1 %.not.i.i.i.i, label %.preheader515, label %.lr.ph575.preheader

.lr.ph575.preheader:                              ; preds = %.preheader516
  br i1 %min.iters.check916, label %.lr.ph575.preheader953, label %vector.body919

vector.body919:                                   ; preds = %.lr.ph575.preheader, %vector.body919
  %index920 = phi i64 [ %index.next921, %vector.body919 ], [ 0, %.lr.ph575.preheader ] ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %index920 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %i.ge, align 4, !tbaa !34
  store <4 x i32> splat (i32 2147483647), ptr %i.gf, align 4, !tbaa !34
  %index.next921 = add nuw i64 %index920, 8       ; 2 uses
  %i.gg = icmp eq i64 %index.next921, %n.vec918
  br i1 %i.gg, label %middle.block922, label %vector.body919, !llvm.loop !122

middle.block922:                                  ; preds = %vector.body919
  br i1 %cmp.n923, label %.preheader515, label %.lr.ph575.preheader953

.lr.ph575.preheader953:                           ; preds = %.lr.ph575.preheader, %middle.block922
  %indvars.iv748.ph = phi i64 [ 0, %.lr.ph575.preheader ], [ %n.vec918, %middle.block922 ]
  br label %.lr.ph575

.preheader513:                                    ; preds = %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit432, %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit
  %i.gh = sub nsw i32 %i.j, %i.m                  ; 2 uses
  %.0382680 = add nsw i32 %i.m, 1                 ; 2 uses
  %i.gi = icmp slt i32 %.0382680, %i.gh
  br i1 %i.gi, label %.preheader512.lr.ph, label %.preheader

.preheader512.lr.ph:                              ; preds = %.preheader513
  %i.gj = sub i32 %2, %i.d                        ; 6 uses
  %i.gk = add i32 %i.d, %2                        ; 6 uses
  %.not407625 = icmp slt i32 %i.d, 0              ; 2 uses
  %i.gl = sub i32 0, %.fr690
  %.not408616 = icmp slt i32 %.fr690, 0
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.gp = xor i32 %.fr690, -1                     ; 3 uses
  %i.gq = zext nneg i32 %.fr691 to i64            ; 7 uses
  %i.gr = getelementptr [4 x i8], ptr %.sroa.0469.0, i64 %i.gq
  %i.gs = getelementptr i8, ptr %i.gr, i64 -4     ; 12 uses
  %i.gt = add nsw i32 %.fr691, -2
  %i.gu = icmp sgt i32 %.fr691, 1                 ; 3 uses
  %i.gv = sext i32 %i.gl to i64
  %i.gw = sext i32 %2 to i64                      ; 3 uses
  %i.gx = add i32 %.fr690, 1                      ; 2 uses
  %14 = zext i32 %i.gt to i64                     ; 4 uses
  %i.gy = sext i32 %i.gj to i64
  %i.gz = sext i32 %i.gk to i64
  %i.ha = sext i32 %.fr690 to i64                 ; 6 uses
  %smax802 = tail call i32 @llvm.smax.i32(i32 %i.gk, i32 %i.gj)
  %i.hb = add i32 %i.d, %smax802
  %i.hc = sub i32 %i.hb, %2
  %i.hd = zext i32 %i.hc to i64
  %i.he = shl nuw nsw i64 %i.hd, 2
  %i.hf = add nuw nsw i64 %i.he, 4                ; 2 uses
  %i.hg = sub i32 %i.dy, %i.d
  %i.hh = sext i32 %i.dy to i64
  %i.hi = sext i32 %i.d to i64                    ; 2 uses
  %i.hj = sext i32 %.0382680 to i64
  %invariant.gep900 = getelementptr [4 x i8], ptr %4, i64 %i.gw
  %min.iters.check936 = icmp ult i32 %.fr691, 8
  %n.vec938 = and i64 %i.gq, 2147483640           ; 3 uses
  %cmp.n943 = icmp eq i64 %n.vec938, %i.gq
  %min.iters.check926 = icmp ult i32 %.fr691, 8
  %n.vec928 = and i64 %i.gq, 2147483640           ; 3 uses
  %cmp.n933 = icmp eq i64 %n.vec928, %i.gq
  br label %.preheader512

.preheader515:                                    ; preds = %.lr.ph575, %middle.block922, %.preheader516
  br i1 %.not551, label %._crit_edge602.split, label %.lr.ph601

.lr.ph601:                                        ; preds = %.preheader515
  %i.hk = add nsw i64 %indvars.iv776.a, %i.es     ; 4 uses
  %i.hl = add nsw i64 %indvars.iv776.a, %i.eo     ; 2 uses
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.hl ; 4 uses
  %i.hn = trunc nsw i64 %indvars.iv776.a to i32   ; 3 uses
  %i.ho = add i32 %i.hn, %i.ee
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.hp ; 4 uses
  br i1 %.not410589, label %._crit_edge602.split, label %.lr.ph601.split

.lr.ph601.split:                                  ; preds = %.lr.ph601
  br i1 %.not411576, label %.lr.ph601.split.split.us, label %.lr.ph593

.lr.ph601.split.split.us:                         ; preds = %.lr.ph601.split
  %i.hr = trunc i64 %indvars.iv776.a to i32
  %i.hs = sub i32 %i.hr, %i.d                     ; 3 uses
  br i1 %i.ej, label %.lr.ph593.us.us, label %.lr.ph593.us

.lr.ph593.us.us:                                  ; preds = %.lr.ph601.split.split.us, %._crit_edge594.split.us.us.split.us.us
  %.0373599.us.us = phi i32 [ %i.jj, %._crit_edge594.split.us.us.split.us.us ], [ %.fr690, %.lr.ph601.split.split.us ] ; 3 uses
  %.3598.us.us = phi i32 [ %.us-phi607, %._crit_edge594.split.us.us.split.us.us ], [ 0, %.lr.ph601.split.split.us ] ; 2 uses
  %i.ht = icmp eq i32 %.0373599.us.us, %i.m
  %.fr608 = freeze i1 %i.ht
  br i1 %.fr608, label %.lr.ph593.split.us.us.split.us.us.split, label %.lr.ph593.split.us.us.split.us.us.split.us

.lr.ph593.split.us.us.split.us.us.split.us:       ; preds = %.lr.ph593.us.us
  %i.hu = load ptr, ptr %i.hm, align 8, !tbaa !144
  %i.hv = load ptr, ptr %i.hq, align 8, !tbaa !144
  %i.hw = sext i32 %.3598.us.us to i64
  br label %bb.t

bb.t:                                             ; preds = %.loopexit514.us.us.us.us.us, %.lr.ph593.split.us.us.split.us.us.split.us
  %indvars.iv772.a = phi i64 [ %indvars.iv.next773.a, %.loopexit514.us.us.us.us.us ], [ %i.hw, %.lr.ph593.split.us.us.split.us.us.split.us ] ; 4 uses
  %.0372591.us.us.us.us.us = phi i32 [ %i.il, %.loopexit514.us.us.us.us.us ], [ %i.hs, %.lr.ph593.split.us.us.split.us.us.split.us ] ; 2 uses
  %i.hx = getelementptr inbounds [4 x i8], ptr %i.hu, i64 %indvars.iv772.a
  store i32 0, ptr %i.hx, align 4, !tbaa !34
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %indvars.iv772.a ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !34
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.hv, i64 %indvars.iv772.a
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !34
  %i.ic = sub i32 %i.hz, %i.ib                    ; 3 uses
  store i32 %i.ic, ptr %i.hy, align 4, !tbaa !34
  %i.id = load i32, ptr %i.eh, align 4, !tbaa !34
  %i.ie = icmp slt i32 %i.ic, %i.id
  br i1 %i.ie, label %.lr.ph587.us.us.us.us.us, label %.loopexit514.us.us.us.us.us

.lr.ph587.us.us.us.us.us:                         ; preds = %bb.t
  store i32 %i.ic, ptr %i.eh, align 4, !tbaa !34
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %.lr.ph587.us.us.us.us.us
  %indvars.iv783 = phi i64 [ %indvars.iv.next784, %bb.v ], [ %13, %.lr.ph587.us.us.us.us.us ] ; 3 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv783 ; 3 uses
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !34 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 4 ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !34 ; 2 uses
  %i.ij = icmp sgt i32 %i.ig, %i.ii
  br i1 %i.ij, label %bb.v, label %.loopexit514.us.us.us.us.us

bb.v:                                             ; preds = %bb.u
  store i32 %i.ii, ptr %i.if, align 4, !tbaa !34
  store i32 %i.ig, ptr %i.ih, align 4, !tbaa !34
  %indvars.iv.next784 = add nsw i64 %indvars.iv783, -1
  %i.ik = icmp sgt i64 %indvars.iv783, 0
  br i1 %i.ik, label %bb.u, label %.loopexit514.us.us.us.us.us, !llvm.loop !123

.loopexit514.us.us.us.us.us:                      ; preds = %bb.u, %bb.v, %bb.t
  %indvars.iv.next773.a = add nsw i64 %indvars.iv772.a, 1 ; 2 uses
  %i.il = add nsw i32 %.0372591.us.us.us.us.us, 1
  %i.im = sext i32 %.0372591.us.us.us.us.us to i64
  %.not410.us.us.us.us.us.not = icmp sgt i64 %i.hk, %i.im
  br i1 %.not410.us.us.us.us.us.not, label %bb.t, label %._crit_edge594.split.us.us.split.us.us.loopexit698, !llvm.loop !124

.lr.ph593.split.us.us.split.us.us.split:          ; preds = %.lr.ph593.us.us, %bb.z
  %.0372591.us.us.us.us = phi i32 [ %i.jg, %bb.z ], [ %i.hs, %.lr.ph593.us.us ] ; 3 uses
  %.4590.us.us.us.us = phi i32 [ %.5.us.us.us.us, %bb.z ], [ %.3598.us.us, %.lr.ph593.us.us ] ; 3 uses
  %i.in = icmp eq i32 %.0372591.us.us.us.us, %i.hn
  br i1 %i.in, label %bb.z, label %bb.w

bb.w:                                             ; preds = %.lr.ph593.split.us.us.split.us.us.split
  %i.io = load ptr, ptr %i.hm, align 8, !tbaa !144
  %i.ip = sext i32 %.4590.us.us.us.us to i64      ; 3 uses
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.io, i64 %i.ip
  store i32 0, ptr %i.iq, align 4, !tbaa !34
  %i.ir = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.ip ; 2 uses
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !34
  %i.it = load ptr, ptr %i.hq, align 8, !tbaa !144
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.it, i64 %i.ip
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !34
  %i.iw = sub i32 %i.is, %i.iv                    ; 3 uses
  store i32 %i.iw, ptr %i.ir, align 4, !tbaa !34
  %i.ix = load i32, ptr %i.eh, align 4, !tbaa !34
  %i.iy = icmp slt i32 %i.iw, %i.ix
  br i1 %i.iy, label %.lr.ph587.us.us.us.us, label %.loopexit514.us.us.us.us

.lr.ph587.us.us.us.us:                            ; preds = %bb.w
  store i32 %i.iw, ptr %i.eh, align 4, !tbaa !34
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %.lr.ph587.us.us.us.us
  %indvars.iv790 = phi i64 [ %indvars.iv.next791, %bb.y ], [ %13, %.lr.ph587.us.us.us.us ] ; 3 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv790 ; 3 uses
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !34 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 4 ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !34 ; 2 uses
  %i.jd = icmp sgt i32 %i.ja, %i.jc
  br i1 %i.jd, label %bb.y, label %.loopexit514.us.us.us.us

bb.y:                                             ; preds = %bb.x
  store i32 %i.jc, ptr %i.iz, align 4, !tbaa !34
  store i32 %i.ja, ptr %i.jb, align 4, !tbaa !34
  %indvars.iv.next791 = add nsw i64 %indvars.iv790, -1
  %i.je = icmp sgt i64 %indvars.iv790, 0
  br i1 %i.je, label %bb.x, label %.loopexit514.us.us.us.us, !llvm.loop !123

.loopexit514.us.us.us.us:                         ; preds = %bb.x, %bb.y, %bb.w
  %i.jf = add nsw i32 %.4590.us.us.us.us, 1
  br label %bb.z

bb.z:                                             ; preds = %.loopexit514.us.us.us.us, %.lr.ph593.split.us.us.split.us.us.split
  %.5.us.us.us.us = phi i32 [ %.4590.us.us.us.us, %.lr.ph593.split.us.us.split.us.us.split ], [ %i.jf, %.loopexit514.us.us.us.us ] ; 2 uses
  %i.jg = add nsw i32 %.0372591.us.us.us.us, 1
  %i.jh = sext i32 %.0372591.us.us.us.us to i64
  %.not410.us.us.us.us.not = icmp sgt i64 %i.hk, %i.jh
  br i1 %.not410.us.us.us.us.not, label %.lr.ph593.split.us.us.split.us.us.split, label %._crit_edge594.split.us.us.split.us.us, !llvm.loop !124

._crit_edge594.split.us.us.split.us.us.loopexit698: ; preds = %.loopexit514.us.us.us.us.us
  %i.ji = trunc nsw i64 %indvars.iv.next773.a to i32
  br label %._crit_edge594.split.us.us.split.us.us

._crit_edge594.split.us.us.split.us.us:           ; preds = %bb.z, %._crit_edge594.split.us.us.split.us.us.loopexit698
  %.us-phi607 = phi i32 [ %i.ji, %._crit_edge594.split.us.us.split.us.us.loopexit698 ], [ %.5.us.us.us.us, %bb.z ]
  %i.jj = add i32 %.0373599.us.us, 1
  %exitcond775.not = icmp eq i32 %.0373599.us.us, %i.ep
  br i1 %exitcond775.not, label %._crit_edge602.split, label %.lr.ph593.us.us, !llvm.loop !125

.lr.ph593.us:                                     ; preds = %.lr.ph601.split.split.us, %._crit_edge594.split.us.us.split
  %.0373599.us = phi i32 [ %i.ka, %._crit_edge594.split.us.us.split ], [ %.fr690, %.lr.ph601.split.split.us ] ; 3 uses
  %.3598.us = phi i32 [ %.5.us.us, %._crit_edge594.split.us.us.split ], [ 0, %.lr.ph601.split.split.us ]
  %i.jk = icmp eq i32 %.0373599.us, %i.m
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ad, %.lr.ph593.us
  %.0372591.us.us = phi i32 [ %i.hs, %.lr.ph593.us ], [ %i.jy, %bb.ad ] ; 3 uses
  %.4590.us.us = phi i32 [ %.3598.us, %.lr.ph593.us ], [ %.5.us.us, %bb.ad ] ; 3 uses
  %i.jl = icmp eq i32 %.0372591.us.us, %i.hn
  %or.cond420.us.us = and i1 %i.jk, %i.jl
  br i1 %or.cond420.us.us, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.jm = load ptr, ptr %i.hm, align 8, !tbaa !144
  %i.jn = sext i32 %.4590.us.us to i64            ; 3 uses
  %i.jo = getelementptr inbounds [4 x i8], ptr %i.jm, i64 %i.jn
  store i32 0, ptr %i.jo, align 4, !tbaa !34
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.jn ; 2 uses
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !34
  %i.jr = load ptr, ptr %i.hq, align 8, !tbaa !144
  %i.js = getelementptr inbounds [4 x i8], ptr %i.jr, i64 %i.jn
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !34
  %i.ju = sub i32 %i.jq, %i.jt                    ; 3 uses
  store i32 %i.ju, ptr %i.jp, align 4, !tbaa !34
  %i.jv = load i32, ptr %i.eh, align 4, !tbaa !34
  %i.jw = icmp slt i32 %i.ju, %i.jv
  br i1 %i.jw, label %.loopexit514.us.us, label %bb.ac

.loopexit514.us.us:                               ; preds = %bb.ab
  store i32 %i.ju, ptr %i.eh, align 4, !tbaa !34
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit514.us.us, %bb.ab
  %i.jx = add nsw i32 %.4590.us.us, 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %.5.us.us = phi i32 [ %.4590.us.us, %bb.aa ], [ %i.jx, %bb.ac ] ; 2 uses
  %i.jy = add nsw i32 %.0372591.us.us, 1
  %i.jz = sext i32 %.0372591.us.us to i64
  %.not410.us.us.not = icmp sgt i64 %i.hk, %i.jz
  br i1 %.not410.us.us.not, label %bb.aa, label %._crit_edge594.split.us.us.split, !llvm.loop !124

._crit_edge594.split.us.us.split:                 ; preds = %bb.ad
  %i.ka = add i32 %.0373599.us, 1
  %exitcond770.not = icmp eq i32 %.0373599.us, %i.ep
  br i1 %exitcond770.not, label %._crit_edge602.split, label %.lr.ph593.us, !llvm.loop !125

.lr.ph575:                                        ; preds = %.lr.ph575.preheader953, %.lr.ph575
  %indvars.iv748 = phi i64 [ %indvars.iv.next749, %.lr.ph575 ], [ %indvars.iv748.ph, %.lr.ph575.preheader953 ] ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv748
  store i32 2147483647, ptr %i.kb, align 4, !tbaa !34
  %indvars.iv.next749 = add nuw nsw i64 %indvars.iv748, 1 ; 2 uses
  %exitcond752.not = icmp eq i64 %indvars.iv.next749, %i.ef
  br i1 %exitcond752.not, label %.preheader515, label %.lr.ph575, !llvm.loop !126

._crit_edge602.split:                             ; preds = %._crit_edge594.split, %._crit_edge594.split.us.us.split, %._crit_edge594.split.us.us.split.us.us, %.lr.ph601, %.preheader515
  br i1 %.not.i, label %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit432, label %.lr.ph.i427

.lr.ph.i427:                                      ; preds = %._crit_edge602.split, %.lr.ph.i427
  %indvars.iv.i428 = phi i64 [ %indvars.iv.next.i430, %.lr.ph.i427 ], [ 0, %._crit_edge602.split ] ; 2 uses
  %.0810.i429 = phi float [ %i.kf, %.lr.ph.i427 ], [ 0.000000e+00, %._crit_edge602.split ]
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv.i428
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !34
  %i.ke = sitofp i32 %i.kd to float
  %i.kf = fadd float %.0810.i429, %i.ke           ; 2 uses
  %indvars.iv.next.i430 = add i64 %indvars.iv.i428, 1 ; 2 uses
  %i.kg = and i64 %indvars.iv.next.i430, 4294967295
  %i.kh = icmp ugt i64 %i.dl, %i.kg
  br i1 %i.kh, label %.lr.ph.i427, label %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit432, !llvm.loop !119

_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit432: ; preds = %.lr.ph.i427, %._crit_edge602.split
  %.08.lcssa.i431 = phi float [ 0.000000e+00, %._crit_edge602.split ], [ %i.kf, %.lr.ph.i427 ]
  %i.ki = fdiv float %.08.lcssa.i431, %i.ds
  %gep897 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv776.a
  store float %i.ki, ptr %gep897, align 4, !tbaa !29
  %indvars.iv.next777.a = add nsw i64 %indvars.iv776.a, 1 ; 2 uses
  %indvars.iv.next759 = add i32 %indvars.iv758, 1
  %lftr.wideiv779 = trunc i64 %indvars.iv.next777.a to i32
  %exitcond780.not = icmp eq i32 %3, %lftr.wideiv779
  br i1 %exitcond780.not, label %.preheader513, label %.preheader516, !llvm.loop !127

.lr.ph593:                                        ; preds = %.lr.ph601.split, %._crit_edge594.split
  %indvars.iv764 = phi i64 [ %indvars.iv.next765, %._crit_edge594.split ], [ %i.eo, %.lr.ph601.split ] ; 3 uses
  %.3598 = phi i32 [ %.5, %._crit_edge594.split ], [ 0, %.lr.ph601.split ]
  %i.kj = icmp eq i64 %indvars.iv764, %i.el
  br label %bb.ae

._crit_edge594.split:                             ; preds = %bb.ai
  %indvars.iv.next765 = add nuw nsw i64 %indvars.iv764, 1 ; 2 uses
  %lftr.wideiv768 = trunc i64 %indvars.iv.next765 to i32
  %exitcond769.not = icmp eq i32 %i.eq, %lftr.wideiv768
  br i1 %exitcond769.not, label %._crit_edge602.split, label %.lr.ph593, !llvm.loop !125

bb.ae:                                            ; preds = %.lr.ph593, %bb.ai
  %indvars.iv760 = phi i64 [ %i.gd, %.lr.ph593 ], [ %indvars.iv.next761, %bb.ai ] ; 4 uses
  %.4590 = phi i32 [ %.3598, %.lr.ph593 ], [ %.5, %bb.ai ] ; 3 uses
  %i.kk = icmp eq i64 %indvars.iv760, %indvars.iv776.a
  %or.cond420 = and i1 %i.kj, %i.kk
  br i1 %or.cond420, label %bb.ai, label %.lr.ph579

.lr.ph579:                                        ; preds = %bb.ae
  %i.kl = load ptr, ptr %i.hm, align 8, !tbaa !144
  %i.km = sext i32 %.4590 to i64                  ; 3 uses
  %i.kn = getelementptr inbounds [4 x i8], ptr %i.kl, i64 %i.km ; 2 uses
  store i32 0, ptr %i.kn, align 4, !tbaa !34
  %i.ko = load ptr, ptr %i.ec, align 8, !tbaa !51 ; 2 uses
  %i.kp = getelementptr i8, ptr %i.ko, i64 %indvars.iv760
  %invariant.gep581 = getelementptr i8, ptr %i.kp, i64 %i.eo
  %invariant.gep583 = getelementptr i8, ptr %i.ko, i64 %i.hl
  br label %bb.af

._crit_edge580:                                   ; preds = %bb.af
  %i.kq = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.km ; 2 uses
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !34
  %i.ks = add nsw i32 %i.ln, %i.kr
  %i.kt = load ptr, ptr %i.hq, align 8, !tbaa !144
  %i.ku = getelementptr inbounds [4 x i8], ptr %i.kt, i64 %i.km
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !34
  %i.kw = sub i32 %i.ks, %i.kv                    ; 3 uses
  store i32 %i.kw, ptr %i.kq, align 4, !tbaa !34
  %i.kx = load i32, ptr %i.eh, align 4, !tbaa !34
  %i.ky = icmp slt i32 %i.kw, %i.kx
  br i1 %i.ky, label %bb.ag, label %.loopexit514

bb.af:                                            ; preds = %.lr.ph579, %bb.af
  %i.kz = phi i32 [ 0, %.lr.ph579 ], [ %i.ln, %bb.af ]
  %indvars.iv753.a = phi i64 [ %i.ek, %.lr.ph579 ], [ %indvars.iv.next754.a, %bb.af ] ; 3 uses
  %i.la = add nsw i64 %indvars.iv753.a, %indvars.iv764
  %i.lb = load i32, ptr %i.eb, align 4, !tbaa !52
  %i.lc = icmp slt i32 %i.lb, 2                   ; 2 uses
  %i.ld = load i64, ptr %i.ed, align 8            ; 2 uses
  %i.le = mul i64 %i.ld, %i.la
  %.sink.idx.i433 = select i1 %i.lc, i64 0, i64 %i.le
  %gep582 = getelementptr i8, ptr %invariant.gep581, i64 %.sink.idx.i433
  %i.lf = load i8, ptr %gep582, align 1, !tbaa !53
  %i.lg = add nsw i64 %indvars.iv753.a, %i.el
  %i.lh = mul i64 %i.ld, %i.lg
  %.sink.idx.i435 = select i1 %i.lc, i64 0, i64 %i.lh
  %gep584 = getelementptr i8, ptr %invariant.gep583, i64 %.sink.idx.i435
  %i.li = zext i8 %i.lf to i32
  %i.lj = load i8, ptr %gep584, align 1, !tbaa !53
  %i.lk = zext i8 %i.lj to i32
  %i.ll = sub nsw i32 %i.li, %i.lk                ; 2 uses
  %i.lm = mul nsw i32 %i.ll, %i.ll
  %i.ln = add nuw nsw i32 %i.lm, %i.kz            ; 3 uses
  store i32 %i.ln, ptr %i.kn, align 4, !tbaa !34
  %indvars.iv.next754.a = add nsw i64 %indvars.iv753.a, 1 ; 2 uses
  %lftr.wideiv756 = trunc i64 %indvars.iv.next754.a to i32
  %exitcond757.not = icmp eq i32 %i.em, %lftr.wideiv756
  br i1 %exitcond757.not, label %._crit_edge580, label %bb.af, !llvm.loop !128

bb.ag:                                            ; preds = %._crit_edge580
  store i32 %i.kw, ptr %i.eh, align 4, !tbaa !34
  br i1 %i.ej, label %.lr.ph587, label %.loopexit514

.lr.ph587:                                        ; preds = %bb.ag, %bb.ah
  %indvars.iv767 = phi i64 [ %indvars.iv.next768, %bb.ah ], [ %13, %bb.ag ] ; 3 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv767 ; 3 uses
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !34 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 4 ; 2 uses
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !34 ; 2 uses
  %i.ls = icmp sgt i32 %i.lp, %i.lr
  br i1 %i.ls, label %bb.ah, label %.loopexit514

bb.ah:                                            ; preds = %.lr.ph587
  store i32 %i.lr, ptr %i.lo, align 4, !tbaa !34
  store i32 %i.lp, ptr %i.lq, align 4, !tbaa !34
  %indvars.iv.next768 = add nsw i64 %indvars.iv767, -1
  %i.lt = icmp sgt i64 %indvars.iv767, 0
  br i1 %i.lt, label %.lr.ph587, label %.loopexit514, !llvm.loop !123

.loopexit514:                                     ; preds = %.lr.ph587, %bb.ah, %bb.ag, %._crit_edge580
  %i.lu = add nsw i32 %.4590, 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ae, %.loopexit514
  %.5 = phi i32 [ %.4590, %bb.ae ], [ %i.lu, %.loopexit514 ] ; 2 uses
  %indvars.iv.next761 = add nsw i64 %indvars.iv760, 1
  %.not410.not = icmp slt i64 %indvars.iv760, %i.hk
  br i1 %.not410.not, label %bb.ae, label %._crit_edge594.split, !llvm.loop !124

.loopexit511:                                     ; preds = %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit458, %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit443
  %indvars.iv.next832 = add nsw i64 %indvars.iv831, 1 ; 2 uses
  %indvars.iv.next796 = add i32 %indvars.iv795, 1
  %i.lv = trunc nsw i64 %indvars.iv831 to i32
  %lftr.wideiv834 = trunc i64 %indvars.iv.next832 to i32
  %exitcond835.not = icmp eq i32 %i.gh, %lftr.wideiv834
  br i1 %exitcond835.not, label %.preheader, label %.preheader512, !llvm.loop !129

.preheader512:                                    ; preds = %.preheader512.lr.ph, %.loopexit511
  %indvars.iv831 = phi i64 [ %i.hj, %.preheader512.lr.ph ], [ %indvars.iv.next832, %.loopexit511 ] ; 10 uses
  %indvars.iv795 = phi i32 [ %i.gx, %.preheader512.lr.ph ], [ %indvars.iv.next796, %.loopexit511 ] ; 2 uses
  %.0382.in681 = phi i32 [ %i.m, %.preheader512.lr.ph ], [ %i.lv, %.loopexit511 ] ; 2 uses
  %i.lw = sext i32 %indvars.iv795 to i64          ; 2 uses
  br i1 %.not.i.i.i.i, label %._crit_edge615, label %.lr.ph614.preheader

.lr.ph614.preheader:                              ; preds = %.preheader512
  br i1 %min.iters.check936, label %.lr.ph614.preheader948, label %vector.body939

vector.body939:                                   ; preds = %.lr.ph614.preheader, %vector.body939
  %index940 = phi i64 [ %index.next941, %vector.body939 ], [ 0, %.lr.ph614.preheader ] ; 2 uses
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %index940 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %i.lx, align 4, !tbaa !34
  store <4 x i32> splat (i32 2147483647), ptr %i.ly, align 4, !tbaa !34
  %index.next941 = add nuw i64 %index940, 8       ; 2 uses
  %i.lz = icmp eq i64 %index.next941, %n.vec938
  br i1 %i.lz, label %middle.block942, label %vector.body939, !llvm.loop !130

middle.block942:                                  ; preds = %vector.body939
  br i1 %cmp.n943, label %._crit_edge615, label %.lr.ph614.preheader948

.lr.ph614.preheader948:                           ; preds = %.lr.ph614.preheader, %middle.block942
  %indvars.iv781.ph = phi i64 [ 0, %.lr.ph614.preheader ], [ %n.vec938, %middle.block942 ]
  br label %.lr.ph614

.preheader:                                       ; preds = %.loopexit511, %.preheader513
  br i1 %i.aj, label %.lr.ph687.preheader, label %._crit_edge688

.lr.ph687.preheader:                              ; preds = %.preheader
  %wide.trip.count839 = zext nneg i32 %i.h to i64
  br label %.lr.ph687

._crit_edge615:                                   ; preds = %.lr.ph614, %middle.block942, %.preheader512
  %i.ma = add nsw i64 %indvars.iv831, %i.hi       ; 4 uses
  br i1 %.not407625, label %._crit_edge640.split, label %.lr.ph639.split

.lr.ph639.split:                                  ; preds = %._crit_edge615
  %i.mb = add nuw nsw i64 %indvars.iv831, %i.ha
  %i.mc = sub nsw i32 %.0382.in681, %.fr690
  %i.md = sext i32 %i.mc to i64
  br i1 %.not408616, label %.lr.ph639.split.split.us, label %.lr.ph629

.lr.ph639.split.split.us:                         ; preds = %.lr.ph639.split
  %i.me = trunc i64 %indvars.iv831 to i32
  %i.mf = sub i32 %i.me, %i.d                     ; 2 uses
  %i.mg = trunc nsw i64 %indvars.iv831 to i32     ; 2 uses
  br i1 %i.gu, label %.lr.ph629.us.us, label %.lr.ph629.us

.lr.ph629.us.us:                                  ; preds = %.lr.ph639.split.split.us, %._crit_edge630.split.us.split.us.us.us
  %.0368637.us.us = phi i32 [ %i.nh, %._crit_edge630.split.us.split.us.us.us ], [ %i.mf, %.lr.ph639.split.split.us ] ; 3 uses
  %.6636.us.us = phi i32 [ %.us-phi658, %._crit_edge630.split.us.split.us.us.us ], [ 0, %.lr.ph639.split.split.us ] ; 2 uses
  %i.mh = icmp eq i32 %.0368637.us.us, %i.mg
  %.fr659 = freeze i1 %i.mh
  br i1 %.fr659, label %.lr.ph629.split.us.split.us.us.us.split, label %.lr.ph629.split.us.split.us.us.us.split.us.preheader

.lr.ph629.split.us.split.us.us.us.split.us.preheader: ; preds = %.lr.ph629.us.us
  %i.mi = sext i32 %.6636.us.us to i64            ; 2 uses
  %i.mj = shl nsw i64 %i.mi, 2
  %scevgep806 = getelementptr i8, ptr %i.ad, i64 %i.mj
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep806, i8 0, i64 %i.hf, i1 false), !tbaa !34
  br label %.lr.ph629.split.us.split.us.us.us.split.us

.lr.ph629.split.us.split.us.us.us.split.us:       ; preds = %.lr.ph629.split.us.split.us.us.us.split.us.preheader, %.loopexit508.us.us.us.us.us
  %indvars.iv808 = phi i64 [ %i.mi, %.lr.ph629.split.us.split.us.us.us.split.us.preheader ], [ %indvars.iv.next809, %.loopexit508.us.us.us.us.us ]
  %.0367627.us.us.us.us.us = phi i32 [ %i.gj, %.lr.ph629.split.us.split.us.us.us.split.us.preheader ], [ %i.ms, %.loopexit508.us.us.us.us.us ] ; 2 uses
  %i.mk = load i32, ptr %i.gs, align 4, !tbaa !34
  %i.ml = icmp sgt i32 %i.mk, 0
  br i1 %i.ml, label %.lr.ph623.us.us.us.us.us, label %.loopexit508.us.us.us.us.us

.lr.ph623.us.us.us.us.us:                         ; preds = %.lr.ph629.split.us.split.us.us.us.split.us
  store i32 0, ptr %i.gs, align 4, !tbaa !34
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ak, %.lr.ph623.us.us.us.us.us
  %indvars.iv827 = phi i64 [ %indvars.iv.next828, %bb.ak ], [ %14, %.lr.ph623.us.us.us.us.us ] ; 3 uses
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv827 ; 3 uses
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !34 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mm, i64 4 ; 2 uses
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !34 ; 2 uses
  %i.mq = icmp sgt i32 %i.mn, %i.mp
  br i1 %i.mq, label %bb.ak, label %.loopexit508.us.us.us.us.us

bb.ak:                                            ; preds = %bb.aj
  store i32 %i.mp, ptr %i.mm, align 4, !tbaa !34
  store i32 %i.mn, ptr %i.mo, align 4, !tbaa !34
  %indvars.iv.next828 = add nsw i64 %indvars.iv827, -1
  %i.mr = icmp sgt i64 %indvars.iv827, 0
  br i1 %i.mr, label %bb.aj, label %.loopexit508.us.us.us.us.us, !llvm.loop !131

.loopexit508.us.us.us.us.us:                      ; preds = %bb.aj, %bb.ak, %.lr.ph629.split.us.split.us.us.us.split.us
  %indvars.iv.next809 = add nsw i64 %indvars.iv808, 1 ; 2 uses
  %i.ms = add nsw i32 %.0367627.us.us.us.us.us, 1
  %.not407.us.us.us.us.us.not = icmp slt i32 %.0367627.us.us.us.us.us, %i.gk
  br i1 %.not407.us.us.us.us.us.not, label %.lr.ph629.split.us.split.us.us.us.split.us, label %._crit_edge630.split.us.split.us.us.us.loopexit694, !llvm.loop !132

.lr.ph629.split.us.split.us.us.us.split:          ; preds = %.lr.ph629.us.us, %bb.ao
  %.0367627.us.us.us.us = phi i32 [ %i.nf, %bb.ao ], [ %i.gj, %.lr.ph629.us.us ] ; 3 uses
  %.7626.us.us.us.us = phi i32 [ %.8.us.us.us.us, %bb.ao ], [ %.6636.us.us, %.lr.ph629.us.us ] ; 3 uses
  %i.mt = icmp eq i32 %.0367627.us.us.us.us, %2
  br i1 %i.mt, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %.lr.ph629.split.us.split.us.us.us.split
  %i.mu = sext i32 %.7626.us.us.us.us to i64
  %i.mv = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.mu
  store i32 0, ptr %i.mv, align 4, !tbaa !34
  %i.mw = load i32, ptr %i.gs, align 4, !tbaa !34
  %i.mx = icmp sgt i32 %i.mw, 0
  br i1 %i.mx, label %.lr.ph623.us.us.us.us, label %.loopexit508.us.us.us.us

.lr.ph623.us.us.us.us:                            ; preds = %bb.al
  store i32 0, ptr %i.gs, align 4, !tbaa !34
  br label %bb.am

bb.am:                                            ; preds = %bb.an, %.lr.ph623.us.us.us.us
  %indvars.iv835 = phi i64 [ %indvars.iv.next836, %bb.an ], [ %14, %.lr.ph623.us.us.us.us ] ; 3 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv835 ; 3 uses
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !34 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.my, i64 4 ; 2 uses
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !34 ; 2 uses
  %i.nc = icmp sgt i32 %i.mz, %i.nb
  br i1 %i.nc, label %bb.an, label %.loopexit508.us.us.us.us

bb.an:                                            ; preds = %bb.am
  store i32 %i.nb, ptr %i.my, align 4, !tbaa !34
  store i32 %i.mz, ptr %i.na, align 4, !tbaa !34
  %indvars.iv.next836 = add nsw i64 %indvars.iv835, -1
  %i.nd = icmp sgt i64 %indvars.iv835, 0
  br i1 %i.nd, label %bb.am, label %.loopexit508.us.us.us.us, !llvm.loop !131

.loopexit508.us.us.us.us:                         ; preds = %bb.am, %bb.an, %bb.al
  %i.ne = add nsw i32 %.7626.us.us.us.us, 1
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit508.us.us.us.us, %.lr.ph629.split.us.split.us.us.us.split
  %.8.us.us.us.us = phi i32 [ %.7626.us.us.us.us, %.lr.ph629.split.us.split.us.us.us.split ], [ %i.ne, %.loopexit508.us.us.us.us ] ; 2 uses
  %i.nf = add nsw i32 %.0367627.us.us.us.us, 1
  %.not407.us.us.us.us.not = icmp slt i32 %.0367627.us.us.us.us, %i.gk
  br i1 %.not407.us.us.us.us.not, label %.lr.ph629.split.us.split.us.us.us.split, label %._crit_edge630.split.us.split.us.us.us, !llvm.loop !132

._crit_edge630.split.us.split.us.us.us.loopexit694: ; preds = %.loopexit508.us.us.us.us.us
  %i.ng = trunc nsw i64 %indvars.iv.next809 to i32
  br label %._crit_edge630.split.us.split.us.us.us

._crit_edge630.split.us.split.us.us.us:           ; preds = %bb.ao, %._crit_edge630.split.us.split.us.us.us.loopexit694
  %.us-phi658 = phi i32 [ %i.ng, %._crit_edge630.split.us.split.us.us.us.loopexit694 ], [ %.8.us.us.us.us, %bb.ao ]
  %i.nh = add nsw i32 %.0368637.us.us, 1
  %i.ni = sext i32 %.0368637.us.us to i64
  %.not404.us.us.not = icmp sgt i64 %i.ma, %i.ni
  br i1 %.not404.us.us.not, label %.lr.ph629.us.us, label %._crit_edge640.split, !llvm.loop !133

.lr.ph629.us:                                     ; preds = %.lr.ph639.split.split.us, %._crit_edge630.split.us.split.us649
  %.0368637.us = phi i32 [ %i.ny, %._crit_edge630.split.us.split.us649 ], [ %i.mf, %.lr.ph639.split.split.us ] ; 3 uses
  %.6636.us = phi i32 [ %.us-phi654, %._crit_edge630.split.us.split.us649 ], [ 0, %.lr.ph639.split.split.us ] ; 2 uses
  %i.nj = icmp eq i32 %.0368637.us, %i.mg
  %.fr655 = freeze i1 %i.nj
  br i1 %.fr655, label %.lr.ph629.split.us.split.us642.split, label %.lr.ph629.split.us.split.us642.split.us

.lr.ph629.split.us.split.us642.split.us:          ; preds = %.lr.ph629.us
  %.promoted656 = load i32, ptr %i.gs, align 4, !tbaa !34
  %i.nk = sext i32 %.6636.us to i64               ; 2 uses
  %i.nl = shl nsw i64 %i.nk, 2
  %scevgep801 = getelementptr i8, ptr %i.ad, i64 %i.nl
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep801, i8 0, i64 %i.hf, i1 false), !tbaa !34
  br label %bb.ap

bb.ap:                                            ; preds = %bb.aq, %.lr.ph629.split.us.split.us642.split.us
  %indvars.iv803 = phi i64 [ %indvars.iv.next804, %bb.aq ], [ %i.nk, %.lr.ph629.split.us.split.us642.split.us ]
  %i.nm = phi i32 [ %i.no, %bb.aq ], [ %.promoted656, %.lr.ph629.split.us.split.us642.split.us ] ; 2 uses
  %.0367627.us.us643.us = phi i32 [ %i.np, %bb.aq ], [ %i.gj, %.lr.ph629.split.us.split.us642.split.us ] ; 2 uses
  %i.nn = icmp sgt i32 %i.nm, 0
  br i1 %i.nn, label %.loopexit508.us.us646.us, label %bb.aq

.loopexit508.us.us646.us:                         ; preds = %bb.ap
  store i32 0, ptr %i.gs, align 4, !tbaa !34
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit508.us.us646.us, %bb.ap
  %i.no = phi i32 [ 0, %.loopexit508.us.us646.us ], [ %i.nm, %bb.ap ]
  %indvars.iv.next804 = add nsw i64 %indvars.iv803, 1 ; 2 uses
  %i.np = add nsw i32 %.0367627.us.us643.us, 1
  %.not407.us.us648.us.not = icmp slt i32 %.0367627.us.us643.us, %i.gk
  br i1 %.not407.us.us648.us.not, label %bb.ap, label %._crit_edge630.split.us.split.us649.loopexit695, !llvm.loop !132

.lr.ph629.split.us.split.us642.split:             ; preds = %.lr.ph629.us, %bb.at
  %.0367627.us.us643 = phi i32 [ %i.nw, %bb.at ], [ %i.gj, %.lr.ph629.us ] ; 3 uses
  %.7626.us.us644 = phi i32 [ %.8.us.us647, %bb.at ], [ %.6636.us, %.lr.ph629.us ] ; 3 uses
  %i.nq = icmp eq i32 %.0367627.us.us643, %2
  br i1 %i.nq, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph629.split.us.split.us642.split
  %i.nr = sext i32 %.7626.us.us644 to i64
  %i.ns = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.nr
  store i32 0, ptr %i.ns, align 4, !tbaa !34
  %i.nt = load i32, ptr %i.gs, align 4, !tbaa !34
  %i.nu = icmp sgt i32 %i.nt, 0
  br i1 %i.nu, label %.loopexit508.us.us646, label %bb.as

.loopexit508.us.us646:                            ; preds = %bb.ar
  store i32 0, ptr %i.gs, align 4, !tbaa !34
  br label %bb.as

bb.as:                                            ; preds = %.loopexit508.us.us646, %bb.ar
  %i.nv = add nsw i32 %.7626.us.us644, 1
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.lr.ph629.split.us.split.us642.split
  %.8.us.us647 = phi i32 [ %.7626.us.us644, %.lr.ph629.split.us.split.us642.split ], [ %i.nv, %bb.as ] ; 2 uses
  %i.nw = add nsw i32 %.0367627.us.us643, 1
  %.not407.us.us648.not = icmp slt i32 %.0367627.us.us643, %i.gk
  br i1 %.not407.us.us648.not, label %.lr.ph629.split.us.split.us642.split, label %._crit_edge630.split.us.split.us649, !llvm.loop !132

._crit_edge630.split.us.split.us649.loopexit695:  ; preds = %bb.aq
  %i.nx = trunc nsw i64 %indvars.iv.next804 to i32
  br label %._crit_edge630.split.us.split.us649

._crit_edge630.split.us.split.us649:              ; preds = %bb.at, %._crit_edge630.split.us.split.us649.loopexit695
  %.us-phi654 = phi i32 [ %i.nx, %._crit_edge630.split.us.split.us649.loopexit695 ], [ %.8.us.us647, %bb.at ]
  %i.ny = add nsw i32 %.0368637.us, 1
  %i.nz = sext i32 %.0368637.us to i64
  %.not404.us.not = icmp sgt i64 %i.ma, %i.nz
  br i1 %.not404.us.not, label %.lr.ph629.us, label %._crit_edge640.split, !llvm.loop !133

.lr.ph614:                                        ; preds = %.lr.ph614.preheader948, %.lr.ph614
  %indvars.iv781 = phi i64 [ %indvars.iv.next782, %.lr.ph614 ], [ %indvars.iv781.ph, %.lr.ph614.preheader948 ] ; 2 uses
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv781
  store i32 2147483647, ptr %i.oa, align 4, !tbaa !34
  %indvars.iv.next782 = add nuw nsw i64 %indvars.iv781, 1 ; 2 uses
  %exitcond785.not = icmp eq i64 %indvars.iv.next782, %i.gq
  br i1 %exitcond785.not, label %._crit_edge615, label %.lr.ph614, !llvm.loop !134

._crit_edge640.split:                             ; preds = %._crit_edge630.split, %._crit_edge630.split.us.split.us649, %._crit_edge630.split.us.split.us.us.us, %._crit_edge615
  br i1 %.not.i, label %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit443, label %.lr.ph.i438

.lr.ph.i438:                                      ; preds = %._crit_edge640.split, %.lr.ph.i438
  %indvars.iv.i439 = phi i64 [ %indvars.iv.next.i441, %.lr.ph.i438 ], [ 0, %._crit_edge640.split ] ; 2 uses
  %.0810.i440 = phi float [ %i.oe, %.lr.ph.i438 ], [ 0.000000e+00, %._crit_edge640.split ]
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv.i439
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !34
  %i.od = sitofp i32 %i.oc to float
  %i.oe = fadd float %.0810.i440, %i.od           ; 2 uses
  %indvars.iv.next.i441 = add i64 %indvars.iv.i439, 1 ; 2 uses
  %i.of = and i64 %indvars.iv.next.i441, 4294967295
  %i.og = icmp ugt i64 %i.dl, %i.of
  br i1 %i.og, label %.lr.ph.i438, label %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit443, !llvm.loop !119

_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit443: ; preds = %.lr.ph.i438, %._crit_edge640.split
  %.08.lcssa.i442 = phi float [ 0.000000e+00, %._crit_edge640.split ], [ %i.oe, %.lr.ph.i438 ]
  %i.oh = fdiv float %.08.lcssa.i442, %i.ds
  %i.oi = mul nsw i64 %indvars.iv831, %i.ae       ; 2 uses
  %gep901 = getelementptr [4 x i8], ptr %invariant.gep900, i64 %i.oi
  store float %i.oh, ptr %gep901, align 4, !tbaa !29
  br i1 %i.dz, label %.preheader510.lr.ph, label %.loopexit511

.preheader510.lr.ph:                              ; preds = %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit443
  %i.oj = add nsw i64 %indvars.iv831, %i.ha
  %i.ok = sub i32 %.0382.in681, %.fr690
  %i.ol = sext i32 %i.ok to i64
  %invariant.gep898 = getelementptr [4 x i8], ptr %4, i64 %i.oi
  br label %.preheader510

.lr.ph629:                                        ; preds = %.lr.ph639.split, %._crit_edge630.split
  %indvars.iv797 = phi i64 [ %indvars.iv.next798, %._crit_edge630.split ], [ %i.lw, %.lr.ph639.split ] ; 5 uses
  %.6636 = phi i32 [ %.8, %._crit_edge630.split ], [ 0, %.lr.ph639.split ]
  %i.om = icmp eq i64 %indvars.iv797, %indvars.iv831
  %i.on = add nuw nsw i64 %indvars.iv797, %i.ha
  %i.oo = trunc nsw i64 %indvars.iv797 to i32
  %i.op = add i32 %i.oo, %i.gp
  %i.oq = sext i32 %i.op to i64
  br label %bb.au

._crit_edge630.split:                             ; preds = %bb.ay
  %indvars.iv.next798 = add nsw i64 %indvars.iv797, 1
  %.not404.not = icmp slt i64 %indvars.iv797, %i.ma
  br i1 %.not404.not, label %.lr.ph629, label %._crit_edge640.split, !llvm.loop !133

bb.au:                                            ; preds = %.lr.ph629, %bb.ay
  %indvars.iv791 = phi i64 [ %i.gy, %.lr.ph629 ], [ %indvars.iv.next792, %bb.ay ] ; 4 uses
  %.7626 = phi i32 [ %.6636, %.lr.ph629 ], [ %.8, %bb.ay ] ; 3 uses
  %i.or = icmp eq i64 %indvars.iv791, %i.gw
  %or.cond421 = and i1 %i.om, %i.or
  br i1 %or.cond421, label %bb.ay, label %.lr.ph619

.lr.ph619:                                        ; preds = %bb.au
  %i.os = sext i32 %.7626 to i64                  ; 2 uses
  %i.ot = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.os ; 2 uses
  store i32 0, ptr %i.ot, align 4, !tbaa !34
  %i.ou = load ptr, ptr %i.gn, align 8, !tbaa !51 ; 4 uses
  br label %bb.av

._crit_edge620:                                   ; preds = %bb.av
  %i.ov = load i32, ptr %i.gs, align 4, !tbaa !34
  %i.ow = icmp slt i32 %i.qg, %i.ov
  br i1 %i.ow, label %bb.aw, label %.loopexit508

bb.av:                                            ; preds = %.lr.ph619, %bb.av
  %i.ox = phi i32 [ 0, %.lr.ph619 ], [ %i.qg, %bb.av ]
  %indvars.iv786 = phi i64 [ %i.gv, %.lr.ph619 ], [ %indvars.iv.next787, %bb.av ] ; 3 uses
  %i.oy = add nsw i64 %indvars.iv786, %indvars.iv791 ; 2 uses
  %i.oz = load i32, ptr %i.gm, align 4, !tbaa !52
  %i.pa = icmp slt i32 %i.oz, 2                   ; 2 uses
  %i.pb = load i64, ptr %i.go, align 8            ; 2 uses
  %i.pc = mul i64 %i.pb, %i.on
  %.sink.idx.i444 = select i1 %i.pa, i64 0, i64 %i.pc
  %.sink.i445 = getelementptr inbounds nuw i8, ptr %i.ou, i64 %.sink.idx.i444
  %i.pd = getelementptr inbounds i8, ptr %.sink.i445, i64 %i.oy
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !53
  %i.pf = add nsw i64 %indvars.iv786, %i.gw       ; 3 uses
  %i.pg = mul i64 %i.pb, %i.mb
  %.sink.idx.i446 = select i1 %i.pa, i64 0, i64 %i.pg
  %.sink.i447 = getelementptr inbounds nuw i8, ptr %i.ou, i64 %.sink.idx.i446
  %i.ph = getelementptr inbounds i8, ptr %.sink.i447, i64 %i.pf
  %i.pi = zext i8 %i.pe to i32
  %i.pj = load i8, ptr %i.ph, align 1, !tbaa !53
  %i.pk = zext i8 %i.pj to i32
  %i.pl = sub nsw i32 %i.pi, %i.pk                ; 2 uses
  %i.pm = mul nsw i32 %i.pl, %i.pl
  %i.pn = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.pf
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !144
  %i.pp = getelementptr inbounds [4 x i8], ptr %i.po, i64 %i.os ; 3 uses
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !34
  %i.pr = add nsw i32 %i.pm, %i.pq                ; 2 uses
  store i32 %i.pr, ptr %i.pp, align 4, !tbaa !34
  %i.ps = load i32, ptr %i.gm, align 4, !tbaa !52
  %i.pt = icmp slt i32 %i.ps, 2                   ; 2 uses
  %i.pu = load i64, ptr %i.go, align 8            ; 2 uses
  %i.pv = mul i64 %i.pu, %i.oq
  %.sink.idx.i448 = select i1 %i.pt, i64 0, i64 %i.pv
  %.sink.i449 = getelementptr inbounds nuw i8, ptr %i.ou, i64 %.sink.idx.i448
  %i.pw = getelementptr inbounds i8, ptr %.sink.i449, i64 %i.oy
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !53
  %i.py = mul i64 %i.pu, %i.md
  %.sink.idx.i450 = select i1 %i.pt, i64 0, i64 %i.py
  %.sink.i451 = getelementptr inbounds nuw i8, ptr %i.ou, i64 %.sink.idx.i450
  %i.pz = getelementptr inbounds i8, ptr %.sink.i451, i64 %i.pf
  %i.qa = zext i8 %i.px to i32
  %i.qb = load i8, ptr %i.pz, align 1, !tbaa !53
  %i.qc = zext i8 %i.qb to i32
  %i.qd = sub nsw i32 %i.qa, %i.qc                ; 2 uses
  %i.qe = mul nsw i32 %i.qd, %i.qd
  %i.qf = sub nsw i32 %i.pr, %i.qe                ; 2 uses
  store i32 %i.qf, ptr %i.pp, align 4, !tbaa !34
  %i.qg = add nsw i32 %i.qf, %i.ox                ; 4 uses
  store i32 %i.qg, ptr %i.ot, align 4, !tbaa !34
  %indvars.iv.next787 = add nsw i64 %indvars.iv786, 1 ; 2 uses
  %lftr.wideiv789 = trunc i64 %indvars.iv.next787 to i32
  %exitcond790.not = icmp eq i32 %i.gx, %lftr.wideiv789
  br i1 %exitcond790.not, label %._crit_edge620, label %bb.av, !llvm.loop !135

bb.aw:                                            ; preds = %._crit_edge620
  store i32 %i.qg, ptr %i.gs, align 4, !tbaa !34
  br i1 %i.gu, label %.lr.ph623, label %.loopexit508

.lr.ph623:                                        ; preds = %bb.aw, %bb.ax
  %indvars.iv809 = phi i64 [ %indvars.iv.next810, %bb.ax ], [ %14, %bb.aw ] ; 3 uses
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv809 ; 3 uses
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !34 ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qh, i64 4 ; 2 uses
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !34 ; 2 uses
  %i.ql = icmp sgt i32 %i.qi, %i.qk
  br i1 %i.ql, label %bb.ax, label %.loopexit508

bb.ax:                                            ; preds = %.lr.ph623
  store i32 %i.qk, ptr %i.qh, align 4, !tbaa !34
  store i32 %i.qi, ptr %i.qj, align 4, !tbaa !34
  %indvars.iv.next810 = add nsw i64 %indvars.iv809, -1
  %i.qm = icmp sgt i64 %indvars.iv809, 0
  br i1 %i.qm, label %.lr.ph623, label %.loopexit508, !llvm.loop !131

.loopexit508:                                     ; preds = %.lr.ph623, %bb.ax, %bb.aw, %._crit_edge620
  %i.qn = add nsw i32 %.7626, 1
  br label %bb.ay

bb.ay:                                            ; preds = %bb.au, %.loopexit508
  %.8 = phi i32 [ %.7626, %bb.au ], [ %i.qn, %.loopexit508 ] ; 2 uses
  %indvars.iv.next792 = add nsw i64 %indvars.iv791, 1
  %.not407.not = icmp slt i64 %indvars.iv791, %i.gz
  br i1 %.not407.not, label %bb.au, label %._crit_edge630.split, !llvm.loop !132

.preheader510:                                    ; preds = %.preheader510.lr.ph, %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit458
  %indvars.iv826 = phi i64 [ %i.hh, %.preheader510.lr.ph ], [ %indvars.iv.next827, %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit458 ] ; 6 uses
  %indvars.iv816 = phi i32 [ %i.hg, %.preheader510.lr.ph ], [ %indvars.iv.next817, %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit458 ] ; 2 uses
  %i.qo = sext i32 %indvars.iv816 to i64
  br i1 %.not.i.i.i.i, label %.preheader509, label %.lr.ph661.preheader

.lr.ph661.preheader:                              ; preds = %.preheader510
  br i1 %min.iters.check926, label %.lr.ph661.preheader945, label %vector.body929

vector.body929:                                   ; preds = %.lr.ph661.preheader, %vector.body929
  %index930 = phi i64 [ %index.next931, %vector.body929 ], [ 0, %.lr.ph661.preheader ] ; 2 uses
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %index930 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %i.qp, align 4, !tbaa !34
  store <4 x i32> splat (i32 2147483647), ptr %i.qq, align 4, !tbaa !34
  %index.next931 = add nuw i64 %index930, 8       ; 2 uses
  %i.qr = icmp eq i64 %index.next931, %n.vec928
  br i1 %i.qr, label %middle.block932, label %vector.body929, !llvm.loop !136

middle.block932:                                  ; preds = %vector.body929
  br i1 %cmp.n933, label %.preheader509, label %.lr.ph661.preheader945

.lr.ph661.preheader945:                           ; preds = %.lr.ph661.preheader, %middle.block932
  %indvars.iv811.ph = phi i64 [ 0, %.lr.ph661.preheader ], [ %n.vec928, %middle.block932 ]
  br label %.lr.ph661

.preheader509:                                    ; preds = %.lr.ph661, %middle.block932, %.preheader510
  br i1 %.not407625, label %._crit_edge677.split, label %.lr.ph670.preheader

.lr.ph670.preheader:                              ; preds = %.preheader509
  %i.qs = add nsw i64 %indvars.iv826, %i.hi
  %i.qt = add nsw i64 %indvars.iv826, %i.ha       ; 3 uses
  %i.qu = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.qt
  %i.qv = trunc nsw i64 %indvars.iv826 to i32
  %i.qw = add i32 %i.qv, %i.gp
  %i.qx = sext i32 %i.qw to i64
  %i.qy = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.qx
  br label %.lr.ph670

.lr.ph661:                                        ; preds = %.lr.ph661.preheader945, %.lr.ph661
  %indvars.iv811 = phi i64 [ %indvars.iv.next812, %.lr.ph661 ], [ %indvars.iv811.ph, %.lr.ph661.preheader945 ] ; 2 uses
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv811
  store i32 2147483647, ptr %i.qz, align 4, !tbaa !34
  %indvars.iv.next812 = add nuw nsw i64 %indvars.iv811, 1 ; 2 uses
  %exitcond815.not = icmp eq i64 %indvars.iv.next812, %i.gq
  br i1 %exitcond815.not, label %.preheader509, label %.lr.ph661, !llvm.loop !137

._crit_edge677.split:                             ; preds = %._crit_edge671, %.preheader509
  br i1 %.not.i, label %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit458, label %.lr.ph.i453

.lr.ph.i453:                                      ; preds = %._crit_edge677.split, %.lr.ph.i453
  %indvars.iv.i454 = phi i64 [ %indvars.iv.next.i456, %.lr.ph.i453 ], [ 0, %._crit_edge677.split ] ; 2 uses
  %.0810.i455 = phi float [ %i.rd, %.lr.ph.i453 ], [ 0.000000e+00, %._crit_edge677.split ]
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv.i454
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !34
  %i.rc = sitofp i32 %i.rb to float
  %i.rd = fadd float %.0810.i455, %i.rc           ; 2 uses
  %indvars.iv.next.i456 = add i64 %indvars.iv.i454, 1 ; 2 uses
  %i.re = and i64 %indvars.iv.next.i456, 4294967295
  %i.rf = icmp ugt i64 %i.dl, %i.re
  br i1 %i.rf, label %.lr.ph.i453, label %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit458, !llvm.loop !119

_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit458: ; preds = %.lr.ph.i453, %._crit_edge677.split
  %.08.lcssa.i457 = phi float [ 0.000000e+00, %._crit_edge677.split ], [ %i.rd, %.lr.ph.i453 ]
  %i.rg = fdiv float %.08.lcssa.i457, %i.ds
  %gep899 = getelementptr [4 x i8], ptr %invariant.gep898, i64 %indvars.iv826
  store float %i.rg, ptr %gep899, align 4, !tbaa !29
  %indvars.iv.next827 = add nsw i64 %indvars.iv826, 1 ; 2 uses
  %indvars.iv.next817 = add i32 %indvars.iv816, 1
  %lftr.wideiv829 = trunc i64 %indvars.iv.next827 to i32
  %exitcond830.not = icmp eq i32 %3, %lftr.wideiv829
  br i1 %exitcond830.not, label %.loopexit511, label %.preheader510, !llvm.loop !138

.lr.ph670:                                        ; preds = %.lr.ph670.preheader, %._crit_edge671
  %indvars.iv822 = phi i64 [ %i.lw, %.lr.ph670.preheader ], [ %indvars.iv.next823, %._crit_edge671 ] ; 5 uses
  %.9674 = phi i32 [ 0, %.lr.ph670.preheader ], [ %.11, %._crit_edge671 ]
  %i.rh = icmp eq i64 %indvars.iv822, %indvars.iv831
  %i.ri = add nsw i64 %indvars.iv822, %i.ha
  %i.rj = trunc nsw i64 %indvars.iv822 to i32
  %i.rk = add i32 %i.rj, %i.gp
  %i.rl = sext i32 %i.rk to i64
  br label %bb.az

._crit_edge671:                                   ; preds = %bb.be
  %indvars.iv.next823 = add nsw i64 %indvars.iv822, 1
  %.not405.not = icmp slt i64 %indvars.iv822, %i.ma
  br i1 %.not405.not, label %.lr.ph670, label %._crit_edge677.split, !llvm.loop !139

bb.az:                                            ; preds = %.lr.ph670, %bb.be
  %indvars.iv818 = phi i64 [ %i.qo, %.lr.ph670 ], [ %indvars.iv.next819, %bb.be ] ; 4 uses
  %.10667 = phi i32 [ %.9674, %.lr.ph670 ], [ %.11, %bb.be ] ; 3 uses
  %i.rm = icmp eq i64 %indvars.iv818, %indvars.iv826
  %or.cond422 = and i1 %i.rh, %i.rm
  br i1 %or.cond422, label %bb.be, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.rn = add nsw i64 %indvars.iv818, %i.ha       ; 2 uses
  %i.ro = load i32, ptr %i.gm, align 4, !tbaa !52
  %i.rp = icmp slt i32 %i.ro, 2                   ; 2 uses
  %i.rq = load ptr, ptr %i.gn, align 8, !tbaa !51 ; 4 uses
  %i.rr = load i64, ptr %i.go, align 8            ; 2 uses
  %i.rs = mul i64 %i.rr, %i.ri
  %.sink.idx.i459 = select i1 %i.rp, i64 0, i64 %i.rs
  %.sink.i460 = getelementptr inbounds nuw i8, ptr %i.rq, i64 %.sink.idx.i459
  %i.rt = getelementptr inbounds i8, ptr %.sink.i460, i64 %i.rn
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !53
  %i.rv = mul i64 %i.rr, %i.oj
  %.sink.idx.i461 = select i1 %i.rp, i64 0, i64 %i.rv
  %.sink.i462 = getelementptr inbounds nuw i8, ptr %i.rq, i64 %.sink.idx.i461
  %i.rw = getelementptr inbounds i8, ptr %.sink.i462, i64 %i.qt
  %i.rx = zext i8 %i.ru to i32
  %i.ry = load i8, ptr %i.rw, align 1, !tbaa !53
  %i.rz = zext i8 %i.ry to i32
  %i.sa = sub nsw i32 %i.rx, %i.rz                ; 2 uses
  %i.sb = mul nsw i32 %i.sa, %i.sa
  %i.sc = load ptr, ptr %i.qu, align 8, !tbaa !144
  %i.sd = sext i32 %.10667 to i64                 ; 3 uses
  %i.se = getelementptr inbounds [4 x i8], ptr %i.sc, i64 %i.sd ; 3 uses
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !34
  %i.sg = add nsw i32 %i.sb, %i.sf                ; 2 uses
  store i32 %i.sg, ptr %i.se, align 4, !tbaa !34
  %i.sh = load i32, ptr %i.gm, align 4, !tbaa !52
  %i.si = icmp slt i32 %i.sh, 2                   ; 2 uses
  %i.sj = load i64, ptr %i.go, align 8            ; 2 uses
  %i.sk = mul i64 %i.sj, %i.rl
  %.sink.idx.i463 = select i1 %i.si, i64 0, i64 %i.sk
  %.sink.i464 = getelementptr inbounds nuw i8, ptr %i.rq, i64 %.sink.idx.i463
  %i.sl = getelementptr inbounds i8, ptr %.sink.i464, i64 %i.rn
  %i.sm = load i8, ptr %i.sl, align 1, !tbaa !53
  %i.sn = mul i64 %i.sj, %i.ol
  %.sink.idx.i465 = select i1 %i.si, i64 0, i64 %i.sn
  %.sink.i466 = getelementptr inbounds nuw i8, ptr %i.rq, i64 %.sink.idx.i465
  %i.so = getelementptr inbounds i8, ptr %.sink.i466, i64 %i.qt
  %i.sp = zext i8 %i.sm to i32
  %i.sq = load i8, ptr %i.so, align 1, !tbaa !53
  %i.sr = zext i8 %i.sq to i32
  %i.ss = sub nsw i32 %i.sp, %i.sr                ; 2 uses
  %i.st = mul nsw i32 %i.ss, %i.ss
  %i.su = sub nsw i32 %i.sg, %i.st                ; 2 uses
  store i32 %i.su, ptr %i.se, align 4, !tbaa !34
  %i.sv = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.sd ; 2 uses
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !34
  %i.sx = add nsw i32 %i.su, %i.sw
  %i.sy = load ptr, ptr %i.qy, align 8, !tbaa !144
  %i.sz = getelementptr inbounds [4 x i8], ptr %i.sy, i64 %i.sd
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !34
  %i.tb = sub i32 %i.sx, %i.ta                    ; 3 uses
  store i32 %i.tb, ptr %i.sv, align 4, !tbaa !34
  %i.tc = load i32, ptr %i.gs, align 4, !tbaa !34
  %i.td = icmp slt i32 %i.tb, %i.tc
  br i1 %i.td, label %bb.bb, label %.loopexit

bb.bb:                                            ; preds = %bb.ba
  store i32 %i.tb, ptr %i.gs, align 4, !tbaa !34
  br i1 %i.gu, label %.lr.ph664, label %.loopexit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.b, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %lpad.loopexit.split-lp962 = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i = icmp eq ptr %.sroa.0469.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.te = ptrtoint ptr %.sroa.45.0 to i64
  %i.tf = ptrtoint ptr %.sroa.0469.0 to i64
  %i.tg = sub i64 %i.te, %i.tf
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0469.0, i64 noundef %i.tg) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

.lr.ph664:                                        ; preds = %bb.bb, %bb.bd
  %indvars.iv843 = phi i64 [ %indvars.iv.next844, %bb.bd ], [ %14, %bb.bb ] ; 3 uses
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv843 ; 3 uses
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !34 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.th, i64 4 ; 2 uses
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !34 ; 2 uses
  %i.tl = icmp sgt i32 %i.ti, %i.tk
  br i1 %i.tl, label %bb.bd, label %.loopexit

bb.bd:                                            ; preds = %.lr.ph664
  store i32 %i.tk, ptr %i.th, align 4, !tbaa !34
  store i32 %i.ti, ptr %i.tj, align 4, !tbaa !34
  %indvars.iv.next844 = add nsw i64 %indvars.iv843, -1
  %i.tm = icmp sgt i64 %indvars.iv843, 0
  br i1 %i.tm, label %.lr.ph664, label %.loopexit, !llvm.loop !140

.loopexit:                                        ; preds = %.lr.ph664, %bb.bd, %bb.bb, %bb.ba
  %i.tn = add nsw i32 %.10667, 1
  br label %bb.be

bb.be:                                            ; preds = %bb.az, %.loopexit
  %.11 = phi i32 [ %.10667, %bb.az ], [ %i.tn, %.loopexit ] ; 2 uses
  %indvars.iv.next819 = add nsw i64 %indvars.iv818, 1
  %.not406.not = icmp slt i64 %indvars.iv818, %i.qs
  br i1 %.not406.not, label %bb.az, label %._crit_edge671, !llvm.loop !141

.lr.ph687:                                        ; preds = %.lr.ph687.preheader, %bb.bg
  %indvars.iv836 = phi i64 [ 0, %.lr.ph687.preheader ], [ %indvars.iv.next837, %bb.bg ] ; 2 uses
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv836
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !144 ; 2 uses
  %i.tq = icmp eq ptr %i.tp, null
  br i1 %i.tq, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph687
  tail call void @_ZdaPv(ptr noundef nonnull %i.tp) #24
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph687, %bb.bf
  %indvars.iv.next837 = add nuw nsw i64 %indvars.iv836, 1 ; 2 uses
  %exitcond840.not = icmp eq i64 %indvars.iv.next837, %wide.trip.count839
  br i1 %exitcond840.not, label %._crit_edge688, label %.lr.ph687, !llvm.loop !142

._crit_edge688:                                   ; preds = %bb.bg, %.preheader
  tail call void @_ZdaPv(ptr noundef nonnull %i.ai) #24
  tail call void @_ZdaPv(ptr noundef nonnull %i.ad) #24
  %.not.i.i.i467 = icmp eq ptr %.sroa.0469.0, null
  br i1 %.not.i.i.i467, label %_ZNSt6vectorIiSaIiEED2Ev.exit468, label %bb.bh

bb.bh:                                            ; preds = %._crit_edge688
  %i.tr = ptrtoint ptr %.sroa.45.0 to i64
  %i.ts = sub i64 %i.tr, %i.dj
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0469.0, i64 noundef %i.ts) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit468

_ZNSt6vectorIiSaIiEED2Ev.exit468:                 ; preds = %._crit_edge688, %bb.bh
  ret void

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.bc, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp962
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden noundef float @_ZN2cv11xfeatures2d16MSDDetector_Impl18computeOrientationERNS_3MatEiiSt6vectorINS_6Point_IfEESaIS6_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly align 8 captures(none) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.21", align 1 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #23 ; 44 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(144) %i.a, i8 0, i64 144, i1 false), !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56   ; 2 uses
  %i.d = load ptr, ptr %4, align 8, !tbaa !57     ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = ashr exact i64 %i.g, 3                   ; 2 uses
  %i.i = icmp ugt i64 %i.h, 2305843009213693951
  br i1 %i.i, label %bb.a, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.a:                                             ; preds = %.noexc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
          to label %.noexc127 unwind label %bb.c

.noexc127:                                        ; preds = %bb.a
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %.noexc
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %.preheader, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.j = ashr exact i64 %i.g, 1                   ; 2 uses
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #23
          to label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit unwind label %bb.c ; 11 uses

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit:            ; preds = %bb.b
  %i.l = and i64 %i.j, -4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.k, i8 0, i64 %i.l, i1 false), !tbaa !34
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.h
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !56
  %.pre226 = load ptr, ptr %4, align 8, !tbaa !57 ; 2 uses
  %.pre227 = ptrtoint ptr %.pre to i64
  %.pre228 = ptrtoint ptr %.pre226 to i64
  %.pre230 = sub i64 %.pre227, %.pre228
  %i.n = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.o = lshr exact i64 %.pre230, 3               ; 5 uses
  %i.p = trunc i64 %i.o to i32
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !45   ; 14 uses
  %i.t = sub i32 0, %i.s                          ; 2 uses
  %.not170 = icmp slt i32 %i.s, 0
  br i1 %.not170, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count215 = and i64 %i.o, 2147483647  ; 3 uses
  %min.iters.check359 = icmp samesign ult i64 %wide.trip.count215, 8
  br i1 %min.iters.check359, label %.lr.ph.split.us.preheader377, label %vector.ph360

vector.ph360:                                     ; preds = %.lr.ph.split.us.preheader
  %n.vec361 = and i64 %i.o, 2147483640            ; 3 uses
  br label %vector.body362

vector.body362:                                   ; preds = %vector.body362, %vector.ph360
  %index363 = phi i64 [ 0, %vector.ph360 ], [ %index.next370, %vector.body362 ] ; 2 uses
  %vec.phi364 = phi <4 x i32> [ splat (i32 -1), %vector.ph360 ], [ %i.w, %vector.body362 ]
  %vec.phi365 = phi <4 x i32> [ splat (i32 -1), %vector.ph360 ], [ %i.x, %vector.body362 ]
  %vec.phi366 = phi <4 x i32> [ splat (i32 2147483647), %vector.ph360 ], [ %i.y, %vector.body362 ]
  %vec.phi367 = phi <4 x i32> [ splat (i32 2147483647), %vector.ph360 ], [ %i.z, %vector.body362 ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index363 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load368 = load <4 x i32>, ptr %i.u, align 4, !tbaa !34 ; 2 uses
  %wide.load369 = load <4 x i32>, ptr %i.v, align 4, !tbaa !34 ; 2 uses
  %i.w = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load368, <4 x i32> %vec.phi364) ; 2 uses
  %i.x = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load369, <4 x i32> %vec.phi365) ; 2 uses
  %i.y = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load368, <4 x i32> %vec.phi366) ; 2 uses
  %i.z = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load369, <4 x i32> %vec.phi367) ; 2 uses
  %index.next370 = add nuw i64 %index363, 8       ; 2 uses
  %i.aa = icmp eq i64 %index.next370, %n.vec361
  br i1 %i.aa, label %middle.block371, label %vector.body362, !llvm.loop !145

middle.block371:                                  ; preds = %vector.body362
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.w, <4 x i32> %i.x)
  %i.ab = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %rdx.minmax372 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.y, <4 x i32> %i.z)
  %i.ac = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %rdx.minmax372) ; 2 uses
  %cmp.n373 = icmp eq i64 %wide.trip.count215, %n.vec361
  br i1 %cmp.n373, label %.lr.ph188, label %.lr.ph.split.us.preheader377

.lr.ph.split.us.preheader377:                     ; preds = %.lr.ph.split.us.preheader, %middle.block371
  %indvars.iv212.ph = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %n.vec361, %middle.block371 ]
  %.0105180.us.ph = phi i32 [ -1, %.lr.ph.split.us.preheader ], [ %i.ab, %middle.block371 ]
  %.0107179.us.ph = phi i32 [ 2147483647, %.lr.ph.split.us.preheader ], [ %i.ac, %middle.block371 ]
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader377, %.lr.ph.split.us
  %indvars.iv212 = phi i64 [ %indvars.iv.next213, %.lr.ph.split.us ], [ %indvars.iv212.ph, %.lr.ph.split.us.preheader377 ] ; 2 uses
  %.0105180.us = phi i32 [ %spec.select.us, %.lr.ph.split.us ], [ %.0105180.us.ph, %.lr.ph.split.us.preheader377 ]
  %.0107179.us = phi i32 [ %.1108.us, %.lr.ph.split.us ], [ %.0107179.us.ph, %.lr.ph.split.us.preheader377 ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv212
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !34 ; 2 uses
  %spec.select.us = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 %.0105180.us) ; 2 uses
  %.1108.us = tail call i32 @llvm.smin.i32(i32 %i.ae, i32 %.0107179.us) ; 2 uses
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1 ; 2 uses
  %exitcond216.not = icmp eq i64 %indvars.iv.next213, %wide.trip.count215
  br i1 %exitcond216.not, label %.lr.ph188, label %.lr.ph.split.us, !llvm.loop !146

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !52
  %.fr192 = freeze i32 %i.ai
  %i.aj = icmp slt i32 %.fr192, 2
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !51 ; 12 uses
  %i.al = load i64, ptr %i.af, align 8            ; 6 uses
  %i.am = sext i32 %i.t to i64                    ; 15 uses
  %i.an = sext i32 %2 to i64                      ; 5 uses
  %i.ao = add nuw i32 %i.s, 1                     ; 3 uses
  %i.ap = sext i32 %3 to i64                      ; 2 uses
  %wide.trip.count = and i64 %i.o, 2147483647
  %invariant.gep = getelementptr i8, ptr %i.ak, i64 %i.an
  %invariant.gep276 = getelementptr i8, ptr %i.ak, i64 %i.an ; 4 uses
  %i.aq = shl nuw i32 %i.s, 1
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr i8, ptr %i.ak, i64 %i.am
  %i.at = getelementptr i8, ptr %i.as, i64 %i.ar
  %scevgep = getelementptr i8, ptr %i.at, i64 1
  %scevgep298 = getelementptr i8, ptr %i.ak, i64 %i.am
  %i.au = add nsw i64 %i.an, %i.am                ; 2 uses
  %i.av = getelementptr i8, ptr %i.ak, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 %i.ar
  %scevgep300 = getelementptr i8, ptr %i.aw, i64 1
  %scevgep301 = getelementptr i8, ptr %i.ak, i64 %i.au
  %i.ax = add i64 %i.al, 1
  %i.ay = shl nuw i32 %i.s, 1
  %i.az = zext i32 %i.ay to i64
  %i.ba = mul i64 %i.ax, %i.az                    ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ak, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 %i.am
  %scevgep325 = getelementptr i8, ptr %i.bc, i64 1
  %i.bd = add nsw i64 %i.ap, %i.am                ; 2 uses
  %scevgep327 = getelementptr i8, ptr %i.ak, i64 %i.am
  %i.be = mul i64 %i.al, %i.bd                    ; 2 uses
  %i.bf = getelementptr i8, ptr %i.ak, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 %i.ba
end_hunk_0
