Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/msd?download=true
inline.NumInlined: 804
inline.NumDeleted: 382
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0
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
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw [208 x i8], ptr %i.c, i64 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !12   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.g = load ptr, ptr %4, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.b
  %i.i = mul nsw i32 %i.f, %2
  %i.j = add nsw i32 %i.i, %1
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !23   ; 3 uses
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr [4 x i8], ptr %i.k, i64 %i.l ; 3 uses
  %i.n = getelementptr i8, ptr %i.m, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !26 ; 2 uses
  %i.p = getelementptr i8, ptr %i.m, i64 -4
  %i.q = load float, ptr %i.p, align 4, !tbaa !26 ; 2 uses
  %i.r = fsub float %i.o, %i.q
  %i.s = fmul float %i.r, 5.000000e-01
  %i.t = add nsw i32 %2, 1
  %i.u = mul nsw i32 %i.f, %i.t
  %i.v = add nsw i32 %i.u, %1
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr [4 x i8], ptr %i.k, i64 %i.w ; 3 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !26 ; 2 uses
  %i.z = add nsw i32 %2, -1
  %i.aa = mul nsw i32 %i.f, %i.z
  %i.ab = add nsw i32 %i.aa, %1
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr [4 x i8], ptr %i.k, i64 %i.ac ; 3 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !26 ; 2 uses
  %i.af = fsub float %i.y, %i.ae
  %i.ag = fmul float %i.af, 5.000000e-01
  store float %i.s, ptr %6, align 4, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.ag, ptr %i.ah, align 4, !tbaa !26
  %i.ai = load float, ptr %i.m, align 4, !tbaa !26
  %i.aj = fmul float %i.ai, 2.000000e+00          ; 2 uses
  %i.ak = fadd float %i.o, %i.q
  %i.al = fsub float %i.ak, %i.aj
  %i.am = fadd float %i.y, %i.ae
  %i.an = fsub float %i.am, %i.aj
  %i.ao = getelementptr i8, ptr %i.x, i64 4
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !26
  %i.aq = getelementptr i8, ptr %i.x, i64 -4
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !26
  %i.as = fsub float %i.ap, %i.ar
  %i.at = getelementptr i8, ptr %i.ad, i64 4
  %i.au = load float, ptr %i.at, align 4, !tbaa !26
  %i.av = fsub float %i.as, %i.au
  %i.aw = getelementptr i8, ptr %i.ad, i64 -4
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !26
  %i.ay = fadd float %i.av, %i.ax
  %i.az = fmul float %i.ay, 2.500000e-01          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store float %i.al, ptr %7, align 4, !tbaa !26
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %i.az, ptr %i.ba, align 4, !tbaa !26
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float %i.az, ptr %i.bb, align 4, !tbaa !26
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 12
  store float %i.an, ptr %i.bc, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store i64 0, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 -1056833531, ptr %9, align 8, !tbaa !28
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %7, ptr %i.be, align 8, !tbaa !31
  store i64 8589934594, ptr %i.bd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 -1056833531, ptr %10, align 8, !tbaa !28
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %6, ptr %i.bg, align 8, !tbaa !31
  store i64 8589934593, ptr %i.bf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 -1040056315, ptr %11, align 8, !tbaa !28
  store ptr %8, ptr %i.bh, align 8, !tbaa !31
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 8589934593, ptr %i.bi, align 8
  %i.bj = call noundef zeroext i1 @_ZN2cv5solveERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.bk = load <2 x float>, ptr %8, align 8, !tbaa !26 ; 3 uses
  %i.bl = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bk)
  %i.bm = fcmp ogt <2 x float> %i.bl, splat (float 5.000000e+00) ; 2 uses
  %i.bn = extractelement <2 x i1> %i.bm, i64 0
  %i.bo = extractelement <2 x i1> %i.bm, i64 1
  %or.cond111 = select i1 %i.bo, i1 true, i1 %i.bn
  br i1 %or.cond111, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bp = icmp eq i32 %3, 0
  br i1 %i.bp, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bq = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.br = insertelement <2 x i32> %i.bq, i32 %2, i64 1
  %i.bs = sitofp <2 x i32> %i.br to <2 x float>
  %i.bt = fsub <2 x float> %i.bs, %i.bk
  %i.bu = fadd <2 x float> %i.bt, splat (float 5.000000e-01)
  store <2 x float> %i.bu, ptr %5, align 4, !tbaa !26
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bw = load float, ptr %i.bv, align 8, !tbaa !32
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
  store <2 x float> %i.ch, ptr %5, align 4, !tbaa !26
  %i.ci = extractelement <2 x float> %i.ch, i64 0 ; 2 uses
  %i.cj = fcmp olt float %i.ci, 0.000000e+00
  br i1 %i.cj, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ck = load ptr, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !12
  %i.cn = sitofp i32 %i.cm to float
  %i.co = fcmp oge float %i.ci, %i.cn
  %i.cp = extractelement <2 x float> %i.ch, i64 1 ; 2 uses
  %i.cq = fcmp olt float %i.cp, 0.000000e+00
  %or.cond = select i1 %i.co, i1 true, i1 %i.cq
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !41
  %i.ct = sitofp i32 %i.cs to float
  %i.cu = fcmp ult float %i.cp, %i.ct
  br i1 %i.cu, label %.critedge, label %bb.g

.critedge:                                        ; preds = %bb.f
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %.critedge, %bb.f, %bb.e, %bb.d, %bb.a
  %.1104 = phi i1 [ false, %bb.a ], [ false, %bb.f ], [ true, %.critedge ], [ false, %bb.d ], [ false, %bb.e ], [ true, %bb.c ]
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !42
  %.fr689 = freeze i32 %i.b                       ; 27 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !43   ; 19 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !44
  %.fr690 = freeze i32 %i.f                       ; 20 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !12   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !41
  %i.k = shl nsw i32 %.fr689, 1
  %i.l = or disjoint i32 %i.k, 1                  ; 2 uses
  %i.m = add nsw i32 %i.d, %.fr689                ; 11 uses
  %i.n = mul nsw i32 %i.l, %i.l
  %i.o = mul nsw i32 %i.n, %.fr690
  %i.p = sext i32 %.fr690 to i64                  ; 3 uses
  %i.q = icmp slt i32 %.fr690, 0
  br i1 %i.q, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %.fr690, 0          ; 5 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %.noexc423

.noexc423:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.r = shl nuw nsw i64 %i.p, 2
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #23 ; 5 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.p ; 2 uses
  store i32 0, ptr %i.s, align 4, !tbaa !45
  %i.u = getelementptr i8, ptr %i.s, i64 4        ; 3 uses
  %i.v = add nsw i64 %i.p, -1                     ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc423
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.v, 2   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.u, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !45
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
          to label %bb.b unwind label %bb.c       ; 16 uses

bb.b:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.ae = sext i32 %i.h to i64                    ; 2 uses
  %i.af = icmp slt i32 %i.h, 0
  %i.ag = shl nsw i64 %i.ae, 3
  %i.ah = select i1 %i.af, i64 -1, i64 %i.ag
  %i.ai = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ah) #23
          to label %.preheader520 unwind label %bb.d ; 9 uses

.preheader520:                                    ; preds = %bb.b
  %i.aj = icmp sgt i32 %i.h, 0                    ; 2 uses
  br i1 %i.aj, label %.lr.ph.preheader, label %.preheader519

.lr.ph.preheader:                                 ; preds = %.preheader520
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %.lr.ph

.preheader519:                                    ; preds = %bb.e, %.preheader520
  br i1 %.not.i.i.i.i, label %.preheader518, label %.lr.ph528.preheader

.lr.ph528.preheader:                              ; preds = %.preheader519
  %wide.trip.count716 = zext nneg i32 %.fr690 to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.fr690, 8
  br i1 %min.iters.check, label %.lr.ph528.preheader963, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph528.preheader
  %n.vec = and i64 %wide.trip.count716, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %i.ak, align 4, !tbaa !45
  store <4 x i32> splat (i32 2147483647), ptr %i.al, align 4, !tbaa !45
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count716
  br i1 %cmp.n, label %.preheader518, label %.lr.ph528.preheader963

.lr.ph528.preheader963:                           ; preds = %.lr.ph528.preheader, %middle.block
  %indvars.iv713.ph = phi i64 [ 0, %.lr.ph528.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph528

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.d:                                             ; preds = %bb.b
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.ap = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ac) #23
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !50
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader519, label %.lr.ph, !llvm.loop !52

bb.f:                                             ; preds = %.lr.ph
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

.preheader518:                                    ; preds = %.lr.ph528, %middle.block, %.preheader519
  %i.as = add nsw i32 %i.m, %i.d
  %.not550 = icmp sgt i32 %.fr689, %i.as          ; 2 uses
  br i1 %.not550, label %._crit_edge555.split, label %.lr.ph554

.lr.ph554:                                        ; preds = %.preheader518
  %i.at = sub i32 %2, %i.d                        ; 7 uses
  %i.au = add i32 %i.d, %2                        ; 7 uses
  %.not412543 = icmp slt i32 %i.d, 0
  %i.av = sub nsw i32 0, %.fr689
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.az = zext nneg i32 %.fr690 to i64
  %i.ba = getelementptr [4 x i8], ptr %.sroa.0469.0, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 -4     ; 10 uses
  %i.bc = add nsw i32 %.fr690, -2                 ; 2 uses
  %i.bd = icmp sgt i32 %.fr690, 1                 ; 2 uses
  br i1 %.not412543, label %._crit_edge555.split, label %.lr.ph554.split

.lr.ph554.split:                                  ; preds = %.lr.ph554
  %.not413534 = icmp slt i32 %.fr689, 0
  br i1 %.not413534, label %.lr.ph554.split.split.us, label %.lr.ph547.preheader

.lr.ph547.preheader:                              ; preds = %.lr.ph554.split
  %i.be = sext i32 %i.av to i64                   ; 2 uses
  %i.bf = zext nneg i32 %i.m to i64               ; 2 uses
  %i.bg = add nuw i32 %.fr689, 1                  ; 2 uses
  %i.bh = sext i32 %2 to i64                      ; 2 uses
  %5 = zext i32 %i.bc to i64
  %i.bi = sext i32 %i.at to i64
  %i.bj = sext i32 %i.au to i64
  %i.bk = zext nneg i32 %.fr689 to i64
  %i.bl = add i32 %.fr689, %i.y
  %i.bm = add i32 %i.bl, 1
  br label %.lr.ph547

.lr.ph554.split.split.us:                         ; preds = %.lr.ph554.split
  br i1 %i.bd, label %.lr.ph554.split.split.us.a, label %.lr.ph547.us.preheader

.lr.ph547.us.preheader:                           ; preds = %.lr.ph554.split.split.us
  %smax739 = tail call i32 @llvm.smax.i32(i32 %i.au, i32 %i.at)
  %6 = add i32 %i.d, %smax739
  %7 = sub i32 %6, %2
  %8 = zext i32 %7 to i64
  %9 = shl nuw nsw i64 %8, 2
  %10 = add nuw nsw i64 %9, 4
  %11 = add i32 %.fr689, %i.y
  br label %.lr.ph547.us

.lr.ph554.split.split.us.a:                       ; preds = %.lr.ph554.split.split.us
  %12 = zext nneg i32 %i.bc to i64                ; 2 uses
  %smax742 = tail call i32 @llvm.smax.i32(i32 %i.au, i32 %i.at)
  %i.bn = add i32 %i.d, %smax742
  %i.bo = sub i32 %i.bn, %2
  %i.bp = zext i32 %i.bo to i64
  %i.bq = shl nuw nsw i64 %i.bp, 2
  %i.br = add nuw nsw i64 %i.bq, 4
  %i.bs = add i32 %.fr689, %i.y
  br label %.lr.ph547.us.us

.lr.ph547.us.us:                                  ; preds = %.lr.ph554.split.split.us.a, %._crit_edge548.split.us.split.us.us.us
  %.0379552.us.us = phi i32 [ %i.ct, %._crit_edge548.split.us.split.us.us.us ], [ %.fr689, %.lr.ph554.split.split.us.a ] ; 3 uses
  %.0381551.us.us = phi i32 [ %.us-phi571, %._crit_edge548.split.us.split.us.us.us ], [ 0, %.lr.ph554.split.split.us.a ] ; 2 uses
  %i.bt = icmp eq i32 %.0379552.us.us, %i.m
  %.fr572 = freeze i1 %i.bt
  br i1 %.fr572, label %.lr.ph547.split.us.split.us.us.us.split, label %.lr.ph547.split.us.split.us.us.us.split.us.preheader

.lr.ph547.split.us.split.us.us.us.split.us.preheader: ; preds = %.lr.ph547.us.us
  %i.bu = sext i32 %.0381551.us.us to i64         ; 2 uses
  %i.bv = shl nsw i64 %i.bu, 2
  %scevgep741 = getelementptr i8, ptr %i.ad, i64 %i.bv
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep741, i8 0, i64 %i.br, i1 false), !tbaa !45
  br label %.lr.ph547.split.us.split.us.us.us.split.us

.lr.ph547.split.us.split.us.us.us.split.us:       ; preds = %.lr.ph547.split.us.split.us.us.us.split.us.preheader, %.loopexit517.us.us.us.us.us
  %indvars.iv743 = phi i64 [ %i.bu, %.lr.ph547.split.us.split.us.us.us.split.us.preheader ], [ %indvars.iv.next744, %.loopexit517.us.us.us.us.us ]
  %.0378545.us.us.us.us.us = phi i32 [ %i.at, %.lr.ph547.split.us.split.us.us.us.split.us.preheader ], [ %i.ce, %.loopexit517.us.us.us.us.us ] ; 2 uses
  %i.bw = load i32, ptr %i.bb, align 4, !tbaa !45
  %i.bx = icmp sgt i32 %i.bw, 0
  br i1 %i.bx, label %.lr.ph541.us.us.us.us.us, label %.loopexit517.us.us.us.us.us

.lr.ph541.us.us.us.us.us:                         ; preds = %.lr.ph547.split.us.split.us.us.us.split.us
  store i32 0, ptr %i.bb, align 4, !tbaa !45
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph541.us.us.us.us.us
  %indvars.iv744 = phi i64 [ %indvars.iv.next745, %bb.h ], [ %12, %.lr.ph541.us.us.us.us.us ] ; 3 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv744 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !45 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 4 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !45 ; 2 uses
  %i.cc = icmp sgt i32 %i.bz, %i.cb
  br i1 %i.cc, label %bb.h, label %.loopexit517.us.us.us.us.us

bb.h:                                             ; preds = %bb.g
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !45
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !45
  %indvars.iv.next745 = add nsw i64 %indvars.iv744, -1
  %i.cd = icmp sgt i64 %indvars.iv744, 0
  br i1 %i.cd, label %bb.g, label %.loopexit517.us.us.us.us.us, !llvm.loop !53

.loopexit517.us.us.us.us.us:                      ; preds = %bb.h, %bb.g, %.lr.ph547.split.us.split.us.us.us.split.us
  %indvars.iv.next744 = add nsw i64 %indvars.iv743, 1 ; 2 uses
  %i.ce = add nsw i32 %.0378545.us.us.us.us.us, 1
  %.not412.us.us.us.us.us.not = icmp slt i32 %.0378545.us.us.us.us.us, %i.au
  br i1 %.not412.us.us.us.us.us.not, label %.lr.ph547.split.us.split.us.us.us.split.us, label %._crit_edge548.split.us.split.us.us.us.loopexit700, !llvm.loop !54

.lr.ph547.split.us.split.us.us.us.split:          ; preds = %.lr.ph547.us.us, %bb.l
  %.0378545.us.us.us.us = phi i32 [ %i.cr, %bb.l ], [ %i.at, %.lr.ph547.us.us ] ; 3 uses
  %.1544.us.us.us.us = phi i32 [ %.2.us.us.us.us, %bb.l ], [ %.0381551.us.us, %.lr.ph547.us.us ] ; 3 uses
  %i.cf = icmp eq i32 %.0378545.us.us.us.us, %2
  br i1 %i.cf, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.lr.ph547.split.us.split.us.us.us.split
  %i.cg = sext i32 %.1544.us.us.us.us to i64
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.cg
  store i32 0, ptr %i.ch, align 4, !tbaa !45
  %i.ci = load i32, ptr %i.bb, align 4, !tbaa !45
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %.lr.ph541.us.us.us.us, label %.loopexit517.us.us.us.us

.lr.ph541.us.us.us.us:                            ; preds = %bb.i
  store i32 0, ptr %i.bb, align 4, !tbaa !45
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph541.us.us.us.us
  %indvars.iv752 = phi i64 [ %indvars.iv.next753, %bb.k ], [ %12, %.lr.ph541.us.us.us.us ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv752 ; 3 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !45 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 4 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !45 ; 2 uses
  %i.co = icmp sgt i32 %i.cl, %i.cn
  br i1 %i.co, label %bb.k, label %.loopexit517.us.us.us.us

bb.k:                                             ; preds = %bb.j
  store i32 %i.cn, ptr %i.ck, align 4, !tbaa !45
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !45
  %indvars.iv.next753 = add nsw i64 %indvars.iv752, -1
  %i.cp = icmp sgt i64 %indvars.iv752, 0
  br i1 %i.cp, label %bb.j, label %.loopexit517.us.us.us.us, !llvm.loop !53

.loopexit517.us.us.us.us:                         ; preds = %bb.k, %bb.j, %bb.i
  %i.cq = add nsw i32 %.1544.us.us.us.us, 1
  br label %bb.l

bb.l:                                             ; preds = %.loopexit517.us.us.us.us, %.lr.ph547.split.us.split.us.us.us.split
  %.2.us.us.us.us = phi i32 [ %.1544.us.us.us.us, %.lr.ph547.split.us.split.us.us.us.split ], [ %i.cq, %.loopexit517.us.us.us.us ] ; 2 uses
  %i.cr = add nsw i32 %.0378545.us.us.us.us, 1
  %.not412.us.us.us.us.not = icmp slt i32 %.0378545.us.us.us.us, %i.au
  br i1 %.not412.us.us.us.us.not, label %.lr.ph547.split.us.split.us.us.us.split, label %._crit_edge548.split.us.split.us.us.us, !llvm.loop !54

._crit_edge548.split.us.split.us.us.us.loopexit700: ; preds = %.loopexit517.us.us.us.us.us
  %i.cs = trunc nsw i64 %indvars.iv.next744 to i32
  br label %._crit_edge548.split.us.split.us.us.us

._crit_edge548.split.us.split.us.us.us:           ; preds = %bb.l, %._crit_edge548.split.us.split.us.us.us.loopexit700
  %.us-phi571 = phi i32 [ %i.cs, %._crit_edge548.split.us.split.us.us.us.loopexit700 ], [ %.2.us.us.us.us, %bb.l ]
  %i.ct = add i32 %.0379552.us.us, 1
  %exitcond746.not = icmp eq i32 %.0379552.us.us, %i.bs
  br i1 %exitcond746.not, label %._crit_edge555.split, label %.lr.ph547.us.us, !llvm.loop !55

.lr.ph547.us:                                     ; preds = %.lr.ph547.us.preheader, %._crit_edge548.split.us.split.us563
  %.0379552.us = phi i32 [ %i.dd, %._crit_edge548.split.us.split.us563 ], [ %.fr689, %.lr.ph547.us.preheader ] ; 3 uses
  %.0381551.us = phi i32 [ %.us-phi, %._crit_edge548.split.us.split.us563 ], [ 0, %.lr.ph547.us.preheader ] ; 2 uses
  %i.cu = icmp eq i32 %.0379552.us, %i.m
  %.fr569 = freeze i1 %i.cu
  br i1 %.fr569, label %.lr.ph547.split.us.split.us565.split, label %.lr.ph547.split.us.split.us565.split.us

.lr.ph547.split.us.split.us565.split:             ; preds = %.lr.ph547.us, %bb.o
  %.0378545.us.us557 = phi i32 [ %i.db, %bb.o ], [ %i.at, %.lr.ph547.us ] ; 3 uses
  %.1544.us.us558 = phi i32 [ %.2.us.us561, %bb.o ], [ %.0381551.us, %.lr.ph547.us ] ; 3 uses
  %i.cv = icmp eq i32 %.0378545.us.us557, %2
  br i1 %i.cv, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.lr.ph547.split.us.split.us565.split
  %i.cw = sext i32 %.1544.us.us558 to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.cw
  store i32 0, ptr %i.cx, align 4, !tbaa !45
  %i.cy = load i32, ptr %i.bb, align 4, !tbaa !45
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %.loopexit517.us.us560, label %bb.n

.loopexit517.us.us560:                            ; preds = %bb.m
  store i32 0, ptr %i.bb, align 4, !tbaa !45
  br label %bb.n

bb.n:                                             ; preds = %.loopexit517.us.us560, %bb.m
  %i.da = add nsw i32 %.1544.us.us558, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph547.split.us.split.us565.split
  %.2.us.us561 = phi i32 [ %.1544.us.us558, %.lr.ph547.split.us.split.us565.split ], [ %i.da, %bb.n ] ; 2 uses
  %i.db = add nsw i32 %.0378545.us.us557, 1
  %.not412.us.us562.not = icmp slt i32 %.0378545.us.us557, %i.au
  br i1 %.not412.us.us562.not, label %.lr.ph547.split.us.split.us565.split, label %._crit_edge548.split.us.split.us563, !llvm.loop !54

._crit_edge548.split.us.split.us563.loopexit701:  ; preds = %bb.q
  %i.dc = trunc nsw i64 %indvars.iv.next738 to i32
  br label %._crit_edge548.split.us.split.us563

._crit_edge548.split.us.split.us563:              ; preds = %bb.o, %._crit_edge548.split.us.split.us563.loopexit701
  %.us-phi = phi i32 [ %i.dc, %._crit_edge548.split.us.split.us563.loopexit701 ], [ %.2.us.us561, %bb.o ]
  %i.dd = add i32 %.0379552.us, 1
  %exitcond740.not = icmp eq i32 %.0379552.us, %11
  br i1 %exitcond740.not, label %._crit_edge555.split, label %.lr.ph547.us, !llvm.loop !55

.lr.ph547.split.us.split.us565.split.us:          ; preds = %.lr.ph547.us
  %.promoted = load i32, ptr %i.bb, align 4, !tbaa !45
  %i.de = sext i32 %.0381551.us to i64            ; 2 uses
  %i.df = shl nsw i64 %i.de, 2
  %scevgep = getelementptr i8, ptr %i.ad, i64 %i.df
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %10, i1 false), !tbaa !45
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph547.split.us.split.us565.split.us
  %indvars.iv737 = phi i64 [ %indvars.iv.next738, %bb.q ], [ %i.de, %.lr.ph547.split.us.split.us565.split.us ]
  %i.dg = phi i32 [ %i.di, %bb.q ], [ %.promoted, %.lr.ph547.split.us.split.us565.split.us ] ; 2 uses
  %.0378545.us.us557.us = phi i32 [ %i.dj, %bb.q ], [ %i.at, %.lr.ph547.split.us.split.us565.split.us ] ; 2 uses
  %i.dh = icmp sgt i32 %i.dg, 0
  br i1 %i.dh, label %.loopexit517.us.us560.us, label %bb.q

.loopexit517.us.us560.us:                         ; preds = %bb.p
  store i32 0, ptr %i.bb, align 4, !tbaa !45
  br label %bb.q

bb.q:                                             ; preds = %.loopexit517.us.us560.us, %bb.p
  %i.di = phi i32 [ 0, %.loopexit517.us.us560.us ], [ %i.dg, %bb.p ]
  %indvars.iv.next738 = add nsw i64 %indvars.iv737, 1 ; 2 uses
  %i.dj = add nsw i32 %.0378545.us.us557.us, 1
  %.not412.us.us562.us.not = icmp slt i32 %.0378545.us.us557.us, %i.au
  br i1 %.not412.us.us562.us.not, label %bb.p, label %._crit_edge548.split.us.split.us563.loopexit701, !llvm.loop !54

.lr.ph528:                                        ; preds = %.lr.ph528.preheader963, %.lr.ph528
  %indvars.iv713 = phi i64 [ %indvars.iv.next714, %.lr.ph528 ], [ %indvars.iv713.ph, %.lr.ph528.preheader963 ] ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv713
  store i32 2147483647, ptr %i.dk, align 4, !tbaa !45
  %indvars.iv.next714 = add nuw nsw i64 %indvars.iv713, 1 ; 2 uses
  %exitcond717.not = icmp eq i64 %indvars.iv.next714, %wide.trip.count716
  br i1 %exitcond717.not, label %.preheader518, label %.lr.ph528, !llvm.loop !56

._crit_edge555.split:                             ; preds = %._crit_edge548.split, %._crit_edge548.split.us.split.us563, %._crit_edge548.split.us.split.us.us.us, %.lr.ph554, %.preheader518
  %i.dl = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.dm = ptrtoint ptr %.sroa.0469.0 to i64       ; 2 uses
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = ashr exact i64 %i.dn, 2                 ; 4 uses
  %.not.i = icmp eq ptr %.0.i.i.i.i.i, %.sroa.0469.0 ; 4 uses
  br i1 %.not.i, label %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge555.split, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %._crit_edge555.split ] ; 2 uses
  %.0810.i = phi float [ %i.ds, %.lr.ph.i ], [ 0.000000e+00, %._crit_edge555.split ]
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv.i
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !45
  %i.dr = sitofp i32 %i.dq to float
  %i.ds = fadd float %.0810.i, %i.dr              ; 2 uses
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1   ; 2 uses
  %i.dt = and i64 %indvars.iv.next.i, 4294967295
  %i.du = icmp ugt i64 %i.do, %i.dt
  br i1 %i.du, label %.lr.ph.i, label %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit, !llvm.loop !57

_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit: ; preds = %.lr.ph.i, %._crit_edge555.split
  %.08.lcssa.i = phi float [ 0.000000e+00, %._crit_edge555.split ], [ %i.ds, %.lr.ph.i ]
  %i.dv = sitofp i32 %i.o to float                ; 4 uses
  %i.dw = fdiv float %.08.lcssa.i, %i.dv
  %i.dx = mul nsw i32 %i.h, %i.m                  ; 2 uses
  %i.dy = add nsw i32 %i.dx, %2
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %4, i64 %i.dz
  store float %i.dw, ptr %i.ea, align 4, !tbaa !26
  %i.eb = add i32 %2, 1                           ; 5 uses
  %i.ec = icmp slt i32 %i.eb, %3                  ; 2 uses
  br i1 %i.ec, label %.preheader516.lr.ph, label %.preheader513

.preheader516.lr.ph:                              ; preds = %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit
  %i.ed = sub i32 0, %.fr689
  %.not411575 = icmp slt i32 %.fr689, 0
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.eh = xor i32 %.fr689, -1
  %i.ei = zext nneg i32 %.fr690 to i64
  %i.ej = getelementptr [4 x i8], ptr %.sroa.0469.0, i64 %i.ei
  %i.ek = getelementptr i8, ptr %i.ej, i64 -4     ; 8 uses
  %i.el = add nsw i32 %.fr690, -2
  %i.em = icmp sgt i32 %.fr690, 1                 ; 2 uses
  %smax750 = tail call i32 @llvm.smax.i32(i32 %.fr690, i32 1)
  %i.en = sext i32 %i.ed to i64
  %i.eo = sext i32 %i.m to i64                    ; 2 uses
  %i.ep = add i32 %.fr689, 1
  %13 = zext i32 %i.el to i64                     ; 3 uses
  %i.eq = sub i32 %i.eb, %i.d
  %i.er = sext i32 %.fr689 to i64                 ; 3 uses
  %i.es = add i32 %.fr689, %i.y                   ; 3 uses
  %i.et = add i32 %i.es, 1
  %i.eu = sext i32 %i.eb to i64
  %i.ev = sext i32 %i.d to i64
  %i.ew = sext i32 %i.dx to i64
  %wide.trip.count751 = zext nneg i32 %smax750 to i64 ; 3 uses
  %.not410588 = icmp slt i32 %i.d, 0
  %invariant.gep = getelementptr [4 x i8], ptr %4, i64 %i.ew
  %min.iters.check918 = icmp slt i32 %.fr690, 8
  %n.vec920 = and i64 %wide.trip.count751, 2147483640 ; 3 uses
  %cmp.n925 = icmp eq i64 %n.vec920, %wide.trip.count751
  br label %.preheader516

.lr.ph547:                                        ; preds = %.lr.ph547.preheader, %._crit_edge548.split
  %indvars.iv730.a = phi i64 [ %i.bk, %.lr.ph547.preheader ], [ %indvars.iv.next731.a, %._crit_edge548.split ] ; 3 uses
  %.0381551 = phi i32 [ 0, %.lr.ph547.preheader ], [ %.2, %._crit_edge548.split ]
  %i.ex = icmp eq i64 %indvars.iv730.a, %i.bf
  br label %bb.r

._crit_edge548.split:                             ; preds = %bb.v
  %indvars.iv.next731.a = add nuw nsw i64 %indvars.iv730.a, 1 ; 2 uses
  %lftr.wideiv734 = trunc i64 %indvars.iv.next731.a to i32
  %exitcond735.not = icmp eq i32 %i.bm, %lftr.wideiv734
  br i1 %exitcond735.not, label %._crit_edge555.split, label %.lr.ph547, !llvm.loop !55

bb.r:                                             ; preds = %.lr.ph547, %bb.v
  %indvars.iv727.a = phi i64 [ %i.bi, %.lr.ph547 ], [ %indvars.iv.next728.a, %bb.v ] ; 4 uses
  %.1544 = phi i32 [ %.0381551, %.lr.ph547 ], [ %.2, %bb.v ] ; 3 uses
  %i.ey = icmp eq i64 %indvars.iv727.a, %i.bh
  %or.cond = and i1 %i.ex, %i.ey
  br i1 %or.cond, label %bb.v, label %.lr.ph537

.lr.ph537:                                        ; preds = %bb.r
  %i.ez = sext i32 %.1544 to i64                  ; 2 uses
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.ez ; 2 uses
  store i32 0, ptr %i.fa, align 4, !tbaa !45
  %i.fb = load ptr, ptr %i.ax, align 8, !tbaa !58 ; 2 uses
  %invariant.gep897 = getelementptr i8, ptr %i.fb, i64 %indvars.iv727.a
  br label %.lr.ph531

._crit_edge538.split:                             ; preds = %._crit_edge
  %i.fc = load i32, ptr %i.bb, align 4, !tbaa !45
  %i.fd = icmp slt i32 %i.fj, %i.fc
  br i1 %i.fd, label %bb.t, label %.loopexit517

.lr.ph531:                                        ; preds = %.lr.ph537, %._crit_edge
  %i.fe = phi i32 [ 0, %.lr.ph537 ], [ %i.fj, %._crit_edge ]
  %indvars.iv722 = phi i64 [ %i.be, %.lr.ph537 ], [ %indvars.iv.next723, %._crit_edge ] ; 3 uses
  %i.ff = add nsw i64 %indvars.iv722, %i.bh       ; 2 uses
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ff
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !50
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.ez ; 2 uses
  store i32 0, ptr %i.fi, align 4, !tbaa !45
  %gep898 = getelementptr i8, ptr %invariant.gep897, i64 %indvars.iv722
  %invariant.gep532 = getelementptr i8, ptr %i.fb, i64 %i.ff
  br label %bb.s

._crit_edge:                                      ; preds = %bb.s
  %i.fj = add nuw nsw i32 %i.fe, %i.fy            ; 4 uses
  store i32 %i.fj, ptr %i.fa, align 4, !tbaa !45
  %indvars.iv.next723 = add nsw i64 %indvars.iv722, 1 ; 2 uses
  %lftr.wideiv725 = trunc i64 %indvars.iv.next723 to i32
  %exitcond726.not = icmp eq i32 %i.bg, %lftr.wideiv725
  br i1 %exitcond726.not, label %._crit_edge538.split, label %.lr.ph531, !llvm.loop !59

bb.s:                                             ; preds = %.lr.ph531, %bb.s
  %i.fk = phi i32 [ 0, %.lr.ph531 ], [ %i.fy, %bb.s ]
  %indvars.iv718 = phi i64 [ %i.be, %.lr.ph531 ], [ %indvars.iv.next719, %bb.s ] ; 3 uses
  %i.fl = add nsw i64 %indvars.iv718, %indvars.iv730.a
  %i.fm = load i32, ptr %i.aw, align 4, !tbaa !60
  %i.fn = icmp slt i32 %i.fm, 2                   ; 2 uses
  %i.fo = load i64, ptr %i.ay, align 8            ; 2 uses
  %i.fp = mul i64 %i.fo, %i.fl
  %.sink.idx.i = select i1 %i.fn, i64 0, i64 %i.fp
  %gep = getelementptr i8, ptr %gep898, i64 %.sink.idx.i
  %i.fq = load i8, ptr %gep, align 1, !tbaa !61
  %i.fr = add nsw i64 %indvars.iv718, %i.bf
  %i.fs = mul i64 %i.fo, %i.fr
  %.sink.idx.i424 = select i1 %i.fn, i64 0, i64 %i.fs
  %gep533 = getelementptr i8, ptr %invariant.gep532, i64 %.sink.idx.i424
  %i.ft = zext i8 %i.fq to i32
  %i.fu = load i8, ptr %gep533, align 1, !tbaa !61
  %i.fv = zext i8 %i.fu to i32
  %i.fw = sub nsw i32 %i.ft, %i.fv                ; 2 uses
  %i.fx = mul nsw i32 %i.fw, %i.fw
  %i.fy = add nuw nsw i32 %i.fx, %i.fk            ; 3 uses
  store i32 %i.fy, ptr %i.fi, align 4, !tbaa !45
  %indvars.iv.next719 = add nsw i64 %indvars.iv718, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next719 to i32
  %exitcond721.not = icmp eq i32 %i.bg, %lftr.wideiv
  br i1 %exitcond721.not, label %._crit_edge, label %bb.s, !llvm.loop !62

bb.t:                                             ; preds = %._crit_edge538.split
  store i32 %i.fj, ptr %i.bb, align 4, !tbaa !45
  br i1 %i.bd, label %.lr.ph541, label %.loopexit517

.lr.ph541:                                        ; preds = %bb.t, %bb.u
  %indvars.iv727 = phi i64 [ %indvars.iv.next728, %bb.u ], [ %5, %bb.t ] ; 3 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv727 ; 3 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !45 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 4 ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !45 ; 2 uses
  %i.gd = icmp sgt i32 %i.ga, %i.gc
  br i1 %i.gd, label %bb.u, label %.loopexit517

bb.u:                                             ; preds = %.lr.ph541
  store i32 %i.gc, ptr %i.fz, align 4, !tbaa !45
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !45
  %indvars.iv.next728 = add nsw i64 %indvars.iv727, -1
  %i.ge = icmp sgt i64 %indvars.iv727, 0
  br i1 %i.ge, label %.lr.ph541, label %.loopexit517, !llvm.loop !53

.loopexit517:                                     ; preds = %.lr.ph541, %bb.u, %bb.t, %._crit_edge538.split
  %i.gf = add nsw i32 %.1544, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.r, %.loopexit517
  %.2 = phi i32 [ %.1544, %bb.r ], [ %i.gf, %.loopexit517 ] ; 2 uses
  %indvars.iv.next728.a = add nsw i64 %indvars.iv727.a, 1
  %.not412.not = icmp slt i64 %indvars.iv727.a, %i.bj
  br i1 %.not412.not, label %bb.r, label %._crit_edge548.split, !llvm.loop !54

.preheader516:                                    ; preds = %.preheader516.lr.ph, %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit432
  %indvars.iv776.a = phi i64 [ %i.eu, %.preheader516.lr.ph ], [ %indvars.iv.next777.a, %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit432 ] ; 7 uses
  %indvars.iv758 = phi i32 [ %i.eq, %.preheader516.lr.ph ], [ %indvars.iv.next759, %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit432 ] ; 2 uses
  %i.gg = sext i32 %indvars.iv758 to i64
  br i1 %.not.i.i.i.i, label %.preheader515, label %.lr.ph574.preheader

.lr.ph574.preheader:                              ; preds = %.preheader516
  br i1 %min.iters.check918, label %.lr.ph574.preheader955, label %vector.body921

vector.body921:                                   ; preds = %.lr.ph574.preheader, %vector.body921
  %index922 = phi i64 [ %index.next923, %vector.body921 ], [ 0, %.lr.ph574.preheader ] ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %index922 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %i.gh, align 4, !tbaa !45
  store <4 x i32> splat (i32 2147483647), ptr %i.gi, align 4, !tbaa !45
  %index.next923 = add nuw i64 %index922, 8       ; 2 uses
  %i.gj = icmp eq i64 %index.next923, %n.vec920
  br i1 %i.gj, label %middle.block924, label %vector.body921, !llvm.loop !63

middle.block924:                                  ; preds = %vector.body921
  br i1 %cmp.n925, label %.preheader515, label %.lr.ph574.preheader955

.lr.ph574.preheader955:                           ; preds = %.lr.ph574.preheader, %middle.block924
  %indvars.iv747.ph = phi i64 [ 0, %.lr.ph574.preheader ], [ %n.vec920, %middle.block924 ]
  br label %.lr.ph574

.preheader513:                                    ; preds = %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit432, %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit
  %i.gk = sub nsw i32 %i.j, %i.m                  ; 2 uses
  %.0382679 = add nsw i32 %i.m, 1                 ; 2 uses
  %i.gl = icmp slt i32 %.0382679, %i.gk
  br i1 %i.gl, label %.preheader512.lr.ph, label %.preheader

.preheader512.lr.ph:                              ; preds = %.preheader513
  %i.gm = sub i32 %2, %i.d                        ; 6 uses
  %i.gn = add i32 %i.d, %2                        ; 6 uses
  %.not407624 = icmp slt i32 %i.d, 0              ; 2 uses
  %i.go = sub i32 0, %.fr689
  %.not408615 = icmp slt i32 %.fr689, 0
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.gs = xor i32 %.fr689, -1                     ; 3 uses
  %i.gt = zext nneg i32 %.fr690 to i64
  %i.gu = getelementptr [4 x i8], ptr %.sroa.0469.0, i64 %i.gt
  %i.gv = getelementptr i8, ptr %i.gu, i64 -4     ; 12 uses
  %i.gw = add nsw i32 %.fr690, -2
  %i.gx = icmp sgt i32 %.fr690, 1                 ; 3 uses
  %smax784 = tail call i32 @llvm.smax.i32(i32 %.fr690, i32 1) ; 2 uses
  %i.gy = sext i32 %i.go to i64
  %i.gz = sext i32 %2 to i64                      ; 3 uses
  %i.ha = add i32 %.fr689, 1                      ; 2 uses
  %14 = zext i32 %i.gw to i64                     ; 4 uses
  %i.hb = sext i32 %i.gm to i64
  %i.hc = sext i32 %i.gn to i64
  %i.hd = sext i32 %.fr689 to i64                 ; 6 uses
  %smax803 = tail call i32 @llvm.smax.i32(i32 %i.gn, i32 %i.gm)
  %i.he = add i32 %i.d, %smax803
  %i.hf = sub i32 %i.he, %2
  %i.hg = zext i32 %i.hf to i64
  %i.hh = shl nuw nsw i64 %i.hg, 2
  %i.hi = add nuw nsw i64 %i.hh, 4                ; 2 uses
  %i.hj = sub i32 %i.eb, %i.d
  %i.hk = sext i32 %i.eb to i64
  %i.hl = sext i32 %i.d to i64                    ; 2 uses
  %i.hm = sext i32 %.0382679 to i64
  %wide.trip.count785 = zext nneg i32 %smax784 to i64 ; 5 uses
  %invariant.gep902 = getelementptr [4 x i8], ptr %4, i64 %i.gz
  %wide.trip.count816 = zext nneg i32 %smax784 to i64
  %min.iters.check938 = icmp slt i32 %.fr690, 8
  %n.vec940 = and i64 %wide.trip.count785, 2147483640 ; 3 uses
  %cmp.n945 = icmp eq i64 %n.vec940, %wide.trip.count785
  %min.iters.check928 = icmp slt i32 %.fr690, 8
  %n.vec930 = and i64 %wide.trip.count785, 2147483640 ; 3 uses
  %cmp.n935 = icmp eq i64 %n.vec930, %wide.trip.count785
  br label %.preheader512

.preheader515:                                    ; preds = %.lr.ph574, %middle.block924, %.preheader516
  br i1 %.not550, label %._crit_edge601.split, label %.lr.ph600

.lr.ph600:                                        ; preds = %.preheader515
  %i.hn = add nsw i64 %indvars.iv776.a, %i.ev     ; 4 uses
  %i.ho = add nsw i64 %indvars.iv776.a, %i.er     ; 2 uses
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ho ; 4 uses
  %i.hq = trunc nsw i64 %indvars.iv776.a to i32   ; 3 uses
  %i.hr = add i32 %i.hq, %i.eh
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.hs ; 4 uses
  br i1 %.not410588, label %._crit_edge601.split, label %.lr.ph600.split

.lr.ph600.split:                                  ; preds = %.lr.ph600
  br i1 %.not411575, label %.lr.ph600.split.split.us, label %.lr.ph592

.lr.ph600.split.split.us:                         ; preds = %.lr.ph600.split
  %i.hu = trunc i64 %indvars.iv776.a to i32
  %i.hv = sub i32 %i.hu, %i.d                     ; 3 uses
  br i1 %i.em, label %.lr.ph592.us.us, label %.lr.ph592.us

.lr.ph592.us.us:                                  ; preds = %.lr.ph600.split.split.us, %._crit_edge593.split.us.us.split.us.us
  %.0373598.us.us = phi i32 [ %i.jm, %._crit_edge593.split.us.us.split.us.us ], [ %.fr689, %.lr.ph600.split.split.us ] ; 3 uses
  %.3597.us.us = phi i32 [ %.us-phi606, %._crit_edge593.split.us.us.split.us.us ], [ 0, %.lr.ph600.split.split.us ] ; 2 uses
  %i.hw = icmp eq i32 %.0373598.us.us, %i.m
  %.fr607 = freeze i1 %i.hw
  br i1 %.fr607, label %.lr.ph592.split.us.us.split.us.us.split, label %.lr.ph592.split.us.us.split.us.us.split.us

.lr.ph592.split.us.us.split.us.us.split.us:       ; preds = %.lr.ph592.us.us
  %i.hx = load ptr, ptr %i.hp, align 8, !tbaa !50
  %i.hy = load ptr, ptr %i.ht, align 8, !tbaa !50
  %i.hz = sext i32 %.3597.us.us to i64
  br label %bb.w

bb.w:                                             ; preds = %.loopexit514.us.us.us.us.us, %.lr.ph592.split.us.us.split.us.us.split.us
  %indvars.iv772.a = phi i64 [ %indvars.iv.next773.a, %.loopexit514.us.us.us.us.us ], [ %i.hz, %.lr.ph592.split.us.us.split.us.us.split.us ] ; 4 uses
  %.0372590.us.us.us.us.us = phi i32 [ %i.io, %.loopexit514.us.us.us.us.us ], [ %i.hv, %.lr.ph592.split.us.us.split.us.us.split.us ] ; 2 uses
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %indvars.iv772.a
  store i32 0, ptr %i.ia, align 4, !tbaa !45
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %indvars.iv772.a ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !45
  %i.id = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %indvars.iv772.a
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !45
  %i.if = sub i32 %i.ic, %i.ie                    ; 3 uses
  store i32 %i.if, ptr %i.ib, align 4, !tbaa !45
  %i.ig = load i32, ptr %i.ek, align 4, !tbaa !45
  %i.ih = icmp slt i32 %i.if, %i.ig
  br i1 %i.ih, label %.lr.ph586.us.us.us.us.us, label %.loopexit514.us.us.us.us.us

.lr.ph586.us.us.us.us.us:                         ; preds = %bb.w
  store i32 %i.if, ptr %i.ek, align 4, !tbaa !45
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %.lr.ph586.us.us.us.us.us
  %indvars.iv783 = phi i64 [ %indvars.iv.next784, %bb.y ], [ %13, %.lr.ph586.us.us.us.us.us ] ; 3 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv783 ; 3 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !45 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 4 ; 2 uses
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !45 ; 2 uses
  %i.im = icmp sgt i32 %i.ij, %i.il
  br i1 %i.im, label %bb.y, label %.loopexit514.us.us.us.us.us

bb.y:                                             ; preds = %bb.x
  store i32 %i.il, ptr %i.ii, align 4, !tbaa !45
  store i32 %i.ij, ptr %i.ik, align 4, !tbaa !45
  %indvars.iv.next784 = add nsw i64 %indvars.iv783, -1
  %i.in = icmp sgt i64 %indvars.iv783, 0
  br i1 %i.in, label %bb.x, label %.loopexit514.us.us.us.us.us, !llvm.loop !64

.loopexit514.us.us.us.us.us:                      ; preds = %bb.y, %bb.x, %bb.w
  %indvars.iv.next773.a = add nsw i64 %indvars.iv772.a, 1 ; 2 uses
  %i.io = add nsw i32 %.0372590.us.us.us.us.us, 1
  %i.ip = sext i32 %.0372590.us.us.us.us.us to i64
  %.not410.us.us.us.us.us.not = icmp sgt i64 %i.hn, %i.ip
  br i1 %.not410.us.us.us.us.us.not, label %bb.w, label %._crit_edge593.split.us.us.split.us.us.loopexit697, !llvm.loop !65

.lr.ph592.split.us.us.split.us.us.split:          ; preds = %.lr.ph592.us.us, %bb.ac
  %.0372590.us.us.us.us = phi i32 [ %i.jj, %bb.ac ], [ %i.hv, %.lr.ph592.us.us ] ; 3 uses
  %.4589.us.us.us.us = phi i32 [ %.5.us.us.us.us, %bb.ac ], [ %.3597.us.us, %.lr.ph592.us.us ] ; 3 uses
  %i.iq = icmp eq i32 %.0372590.us.us.us.us, %i.hq
  br i1 %i.iq, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %.lr.ph592.split.us.us.split.us.us.split
  %i.ir = load ptr, ptr %i.hp, align 8, !tbaa !50
  %i.is = sext i32 %.4589.us.us.us.us to i64      ; 3 uses
  %i.it = getelementptr inbounds [4 x i8], ptr %i.ir, i64 %i.is
  store i32 0, ptr %i.it, align 4, !tbaa !45
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.is ; 2 uses
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !45
  %i.iw = load ptr, ptr %i.ht, align 8, !tbaa !50
  %i.ix = getelementptr inbounds [4 x i8], ptr %i.iw, i64 %i.is
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !45
  %i.iz = sub i32 %i.iv, %i.iy                    ; 3 uses
  store i32 %i.iz, ptr %i.iu, align 4, !tbaa !45
  %i.ja = load i32, ptr %i.ek, align 4, !tbaa !45
  %i.jb = icmp slt i32 %i.iz, %i.ja
  br i1 %i.jb, label %.lr.ph586.us.us.us.us, label %.loopexit514.us.us.us.us

.lr.ph586.us.us.us.us:                            ; preds = %bb.z
  store i32 %i.iz, ptr %i.ek, align 4, !tbaa !45
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %.lr.ph586.us.us.us.us
  %indvars.iv790 = phi i64 [ %indvars.iv.next791, %bb.ab ], [ %13, %.lr.ph586.us.us.us.us ] ; 3 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv790 ; 3 uses
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !45 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 4 ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !45 ; 2 uses
  %i.jg = icmp sgt i32 %i.jd, %i.jf
  br i1 %i.jg, label %bb.ab, label %.loopexit514.us.us.us.us

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.jf, ptr %i.jc, align 4, !tbaa !45
  store i32 %i.jd, ptr %i.je, align 4, !tbaa !45
  %indvars.iv.next791 = add nsw i64 %indvars.iv790, -1
  %i.jh = icmp sgt i64 %indvars.iv790, 0
  br i1 %i.jh, label %bb.aa, label %.loopexit514.us.us.us.us, !llvm.loop !64

.loopexit514.us.us.us.us:                         ; preds = %bb.ab, %bb.aa, %bb.z
  %i.ji = add nsw i32 %.4589.us.us.us.us, 1
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit514.us.us.us.us, %.lr.ph592.split.us.us.split.us.us.split
  %.5.us.us.us.us = phi i32 [ %.4589.us.us.us.us, %.lr.ph592.split.us.us.split.us.us.split ], [ %i.ji, %.loopexit514.us.us.us.us ] ; 2 uses
  %i.jj = add nsw i32 %.0372590.us.us.us.us, 1
  %i.jk = sext i32 %.0372590.us.us.us.us to i64
  %.not410.us.us.us.us.not = icmp sgt i64 %i.hn, %i.jk
  br i1 %.not410.us.us.us.us.not, label %.lr.ph592.split.us.us.split.us.us.split, label %._crit_edge593.split.us.us.split.us.us, !llvm.loop !65

._crit_edge593.split.us.us.split.us.us.loopexit697: ; preds = %.loopexit514.us.us.us.us.us
  %i.jl = trunc nsw i64 %indvars.iv.next773.a to i32
  br label %._crit_edge593.split.us.us.split.us.us

._crit_edge593.split.us.us.split.us.us:           ; preds = %bb.ac, %._crit_edge593.split.us.us.split.us.us.loopexit697
  %.us-phi606 = phi i32 [ %i.jl, %._crit_edge593.split.us.us.split.us.us.loopexit697 ], [ %.5.us.us.us.us, %bb.ac ]
  %i.jm = add i32 %.0373598.us.us, 1
  %exitcond775.not = icmp eq i32 %.0373598.us.us, %i.es
  br i1 %exitcond775.not, label %._crit_edge601.split, label %.lr.ph592.us.us, !llvm.loop !66

.lr.ph592.us:                                     ; preds = %.lr.ph600.split.split.us, %._crit_edge593.split.us.us.split
  %.0373598.us = phi i32 [ %i.kd, %._crit_edge593.split.us.us.split ], [ %.fr689, %.lr.ph600.split.split.us ] ; 3 uses
  %.3597.us = phi i32 [ %.5.us.us, %._crit_edge593.split.us.us.split ], [ 0, %.lr.ph600.split.split.us ]
  %i.jn = icmp eq i32 %.0373598.us, %i.m
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ag, %.lr.ph592.us
  %.0372590.us.us = phi i32 [ %i.hv, %.lr.ph592.us ], [ %i.kb, %bb.ag ] ; 3 uses
  %.4589.us.us = phi i32 [ %.3597.us, %.lr.ph592.us ], [ %.5.us.us, %bb.ag ] ; 3 uses
  %i.jo = icmp eq i32 %.0372590.us.us, %i.hq
  %or.cond420.us.us = and i1 %i.jn, %i.jo
  br i1 %or.cond420.us.us, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jp = load ptr, ptr %i.hp, align 8, !tbaa !50
  %i.jq = sext i32 %.4589.us.us to i64            ; 3 uses
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.jp, i64 %i.jq
  store i32 0, ptr %i.jr, align 4, !tbaa !45
  %i.js = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.jq ; 2 uses
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !45
  %i.ju = load ptr, ptr %i.ht, align 8, !tbaa !50
  %i.jv = getelementptr inbounds [4 x i8], ptr %i.ju, i64 %i.jq
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !45
  %i.jx = sub i32 %i.jt, %i.jw                    ; 3 uses
  store i32 %i.jx, ptr %i.js, align 4, !tbaa !45
  %i.jy = load i32, ptr %i.ek, align 4, !tbaa !45
  %i.jz = icmp slt i32 %i.jx, %i.jy
  br i1 %i.jz, label %.loopexit514.us.us, label %bb.af

.loopexit514.us.us:                               ; preds = %bb.ae
  store i32 %i.jx, ptr %i.ek, align 4, !tbaa !45
  br label %bb.af

bb.af:                                            ; preds = %.loopexit514.us.us, %bb.ae
  %i.ka = add nsw i32 %.4589.us.us, 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ad
  %.5.us.us = phi i32 [ %.4589.us.us, %bb.ad ], [ %i.ka, %bb.af ] ; 2 uses
  %i.kb = add nsw i32 %.0372590.us.us, 1
  %i.kc = sext i32 %.0372590.us.us to i64
  %.not410.us.us.not = icmp sgt i64 %i.hn, %i.kc
  br i1 %.not410.us.us.not, label %bb.ad, label %._crit_edge593.split.us.us.split, !llvm.loop !65

._crit_edge593.split.us.us.split:                 ; preds = %bb.ag
  %i.kd = add i32 %.0373598.us, 1
  %exitcond770.not = icmp eq i32 %.0373598.us, %i.es
  br i1 %exitcond770.not, label %._crit_edge601.split, label %.lr.ph592.us, !llvm.loop !66

.lr.ph574:                                        ; preds = %.lr.ph574.preheader955, %.lr.ph574
  %indvars.iv747 = phi i64 [ %indvars.iv.next748, %.lr.ph574 ], [ %indvars.iv747.ph, %.lr.ph574.preheader955 ] ; 2 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv747
  store i32 2147483647, ptr %i.ke, align 4, !tbaa !45
  %indvars.iv.next748 = add nuw nsw i64 %indvars.iv747, 1 ; 2 uses
  %exitcond752.not = icmp eq i64 %indvars.iv.next748, %wide.trip.count751
  br i1 %exitcond752.not, label %.preheader515, label %.lr.ph574, !llvm.loop !67

._crit_edge601.split:                             ; preds = %._crit_edge593.split, %._crit_edge593.split.us.us.split, %._crit_edge593.split.us.us.split.us.us, %.lr.ph600, %.preheader515
  br i1 %.not.i, label %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit432, label %.lr.ph.i427

.lr.ph.i427:                                      ; preds = %._crit_edge601.split, %.lr.ph.i427
  %indvars.iv.i428 = phi i64 [ %indvars.iv.next.i430, %.lr.ph.i427 ], [ 0, %._crit_edge601.split ] ; 2 uses
  %.0810.i429 = phi float [ %i.ki, %.lr.ph.i427 ], [ 0.000000e+00, %._crit_edge601.split ]
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv.i428
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !45
  %i.kh = sitofp i32 %i.kg to float
  %i.ki = fadd float %.0810.i429, %i.kh           ; 2 uses
  %indvars.iv.next.i430 = add i64 %indvars.iv.i428, 1 ; 2 uses
  %i.kj = and i64 %indvars.iv.next.i430, 4294967295
  %i.kk = icmp ugt i64 %i.do, %i.kj
  br i1 %i.kk, label %.lr.ph.i427, label %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit432, !llvm.loop !57

_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit432: ; preds = %.lr.ph.i427, %._crit_edge601.split
  %.08.lcssa.i431 = phi float [ 0.000000e+00, %._crit_edge601.split ], [ %i.ki, %.lr.ph.i427 ]
  %i.kl = fdiv float %.08.lcssa.i431, %i.dv
  %gep899 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv776.a
  store float %i.kl, ptr %gep899, align 4, !tbaa !26
  %indvars.iv.next777.a = add nsw i64 %indvars.iv776.a, 1 ; 2 uses
  %indvars.iv.next759 = add i32 %indvars.iv758, 1
  %lftr.wideiv779 = trunc i64 %indvars.iv.next777.a to i32
  %exitcond780.not = icmp eq i32 %3, %lftr.wideiv779
  br i1 %exitcond780.not, label %.preheader513, label %.preheader516, !llvm.loop !68

.lr.ph592:                                        ; preds = %.lr.ph600.split, %._crit_edge593.split
  %indvars.iv764 = phi i64 [ %indvars.iv.next765, %._crit_edge593.split ], [ %i.er, %.lr.ph600.split ] ; 3 uses
  %.3597 = phi i32 [ %.5, %._crit_edge593.split ], [ 0, %.lr.ph600.split ]
  %i.km = icmp eq i64 %indvars.iv764, %i.eo
  br label %bb.ah

._crit_edge593.split:                             ; preds = %bb.al
  %indvars.iv.next765 = add nuw nsw i64 %indvars.iv764, 1 ; 2 uses
  %lftr.wideiv768 = trunc i64 %indvars.iv.next765 to i32
  %exitcond769.not = icmp eq i32 %i.et, %lftr.wideiv768
  br i1 %exitcond769.not, label %._crit_edge601.split, label %.lr.ph592, !llvm.loop !66

bb.ah:                                            ; preds = %.lr.ph592, %bb.al
  %indvars.iv760 = phi i64 [ %i.gg, %.lr.ph592 ], [ %indvars.iv.next761, %bb.al ] ; 4 uses
  %.4589 = phi i32 [ %.3597, %.lr.ph592 ], [ %.5, %bb.al ] ; 3 uses
  %i.kn = icmp eq i64 %indvars.iv760, %indvars.iv776.a
  %or.cond420 = and i1 %i.km, %i.kn
  br i1 %or.cond420, label %bb.al, label %.lr.ph578

.lr.ph578:                                        ; preds = %bb.ah
  %i.ko = load ptr, ptr %i.hp, align 8, !tbaa !50
  %i.kp = sext i32 %.4589 to i64                  ; 3 uses
  %i.kq = getelementptr inbounds [4 x i8], ptr %i.ko, i64 %i.kp ; 2 uses
  store i32 0, ptr %i.kq, align 4, !tbaa !45
  %i.kr = load ptr, ptr %i.ef, align 8, !tbaa !58 ; 2 uses
  %i.ks = getelementptr i8, ptr %i.kr, i64 %indvars.iv760
  %invariant.gep580 = getelementptr i8, ptr %i.ks, i64 %i.er
  %invariant.gep582 = getelementptr i8, ptr %i.kr, i64 %i.ho
  br label %bb.ai

._crit_edge579:                                   ; preds = %bb.ai
  %i.kt = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.kp ; 2 uses
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !45
  %i.kv = add nsw i32 %i.lq, %i.ku
  %i.kw = load ptr, ptr %i.ht, align 8, !tbaa !50
  %i.kx = getelementptr inbounds [4 x i8], ptr %i.kw, i64 %i.kp
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !45
  %i.kz = sub i32 %i.kv, %i.ky                    ; 3 uses
  store i32 %i.kz, ptr %i.kt, align 4, !tbaa !45
  %i.la = load i32, ptr %i.ek, align 4, !tbaa !45
  %i.lb = icmp slt i32 %i.kz, %i.la
  br i1 %i.lb, label %bb.aj, label %.loopexit514

bb.ai:                                            ; preds = %.lr.ph578, %bb.ai
  %i.lc = phi i32 [ 0, %.lr.ph578 ], [ %i.lq, %bb.ai ]
  %indvars.iv753 = phi i64 [ %i.en, %.lr.ph578 ], [ %indvars.iv.next754, %bb.ai ] ; 3 uses
  %i.ld = add nsw i64 %indvars.iv753, %indvars.iv764
  %i.le = load i32, ptr %i.ee, align 4, !tbaa !60
  %i.lf = icmp slt i32 %i.le, 2                   ; 2 uses
  %i.lg = load i64, ptr %i.eg, align 8            ; 2 uses
  %i.lh = mul i64 %i.lg, %i.ld
  %.sink.idx.i433 = select i1 %i.lf, i64 0, i64 %i.lh
  %gep581 = getelementptr i8, ptr %invariant.gep580, i64 %.sink.idx.i433
  %i.li = load i8, ptr %gep581, align 1, !tbaa !61
  %i.lj = add nsw i64 %indvars.iv753, %i.eo
  %i.lk = mul i64 %i.lg, %i.lj
  %.sink.idx.i435 = select i1 %i.lf, i64 0, i64 %i.lk
  %gep583 = getelementptr i8, ptr %invariant.gep582, i64 %.sink.idx.i435
  %i.ll = zext i8 %i.li to i32
  %i.lm = load i8, ptr %gep583, align 1, !tbaa !61
  %i.ln = zext i8 %i.lm to i32
  %i.lo = sub nsw i32 %i.ll, %i.ln                ; 2 uses
  %i.lp = mul nsw i32 %i.lo, %i.lo
  %i.lq = add nuw nsw i32 %i.lp, %i.lc            ; 3 uses
  store i32 %i.lq, ptr %i.kq, align 4, !tbaa !45
  %indvars.iv.next754 = add nsw i64 %indvars.iv753, 1 ; 2 uses
  %lftr.wideiv756 = trunc i64 %indvars.iv.next754 to i32
  %exitcond757.not = icmp eq i32 %i.ep, %lftr.wideiv756
  br i1 %exitcond757.not, label %._crit_edge579, label %bb.ai, !llvm.loop !69

bb.aj:                                            ; preds = %._crit_edge579
  store i32 %i.kz, ptr %i.ek, align 4, !tbaa !45
  br i1 %i.em, label %.lr.ph586, label %.loopexit514

.lr.ph586:                                        ; preds = %bb.aj, %bb.ak
  %indvars.iv767 = phi i64 [ %indvars.iv.next768, %bb.ak ], [ %13, %bb.aj ] ; 3 uses
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv767 ; 3 uses
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !45 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 4 ; 2 uses
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !45 ; 2 uses
  %i.lv = icmp sgt i32 %i.ls, %i.lu
  br i1 %i.lv, label %bb.ak, label %.loopexit514

bb.ak:                                            ; preds = %.lr.ph586
  store i32 %i.lu, ptr %i.lr, align 4, !tbaa !45
  store i32 %i.ls, ptr %i.lt, align 4, !tbaa !45
  %indvars.iv.next768 = add nsw i64 %indvars.iv767, -1
  %i.lw = icmp sgt i64 %indvars.iv767, 0
  br i1 %i.lw, label %.lr.ph586, label %.loopexit514, !llvm.loop !64

.loopexit514:                                     ; preds = %.lr.ph586, %bb.ak, %bb.aj, %._crit_edge579
  %i.lx = add nsw i32 %.4589, 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ah, %.loopexit514
  %.5 = phi i32 [ %.4589, %bb.ah ], [ %i.lx, %.loopexit514 ] ; 2 uses
  %indvars.iv.next761 = add nsw i64 %indvars.iv760, 1
  %.not410.not = icmp slt i64 %indvars.iv760, %i.hn
  br i1 %.not410.not, label %bb.ah, label %._crit_edge593.split, !llvm.loop !65

.loopexit511:                                     ; preds = %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit458, %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit443
  %indvars.iv.next834.a = add nsw i64 %indvars.iv833.a, 1 ; 2 uses
  %indvars.iv.next797 = add i32 %indvars.iv796, 1
  %i.ly = trunc nsw i64 %indvars.iv833.a to i32
  %lftr.wideiv836 = trunc i64 %indvars.iv.next834.a to i32
  %exitcond837.not = icmp eq i32 %i.gk, %lftr.wideiv836
  br i1 %exitcond837.not, label %.preheader, label %.preheader512, !llvm.loop !70

.preheader512:                                    ; preds = %.preheader512.lr.ph, %.loopexit511
  %indvars.iv833.a = phi i64 [ %i.hm, %.preheader512.lr.ph ], [ %indvars.iv.next834.a, %.loopexit511 ] ; 10 uses
  %indvars.iv796 = phi i32 [ %i.ha, %.preheader512.lr.ph ], [ %indvars.iv.next797, %.loopexit511 ] ; 2 uses
  %.0382.in680 = phi i32 [ %i.m, %.preheader512.lr.ph ], [ %i.ly, %.loopexit511 ] ; 2 uses
  %i.lz = sext i32 %indvars.iv796 to i64          ; 2 uses
  br i1 %.not.i.i.i.i, label %._crit_edge614, label %.lr.ph613.preheader

.lr.ph613.preheader:                              ; preds = %.preheader512
  br i1 %min.iters.check938, label %.lr.ph613.preheader950, label %vector.body941

vector.body941:                                   ; preds = %.lr.ph613.preheader, %vector.body941
  %index942 = phi i64 [ %index.next943, %vector.body941 ], [ 0, %.lr.ph613.preheader ] ; 2 uses
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %index942 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %i.ma, align 4, !tbaa !45
  store <4 x i32> splat (i32 2147483647), ptr %i.mb, align 4, !tbaa !45
  %index.next943 = add nuw i64 %index942, 8       ; 2 uses
  %i.mc = icmp eq i64 %index.next943, %n.vec940
  br i1 %i.mc, label %middle.block944, label %vector.body941, !llvm.loop !71

middle.block944:                                  ; preds = %vector.body941
  br i1 %cmp.n945, label %._crit_edge614, label %.lr.ph613.preheader950

.lr.ph613.preheader950:                           ; preds = %.lr.ph613.preheader, %middle.block944
  %indvars.iv781.ph = phi i64 [ 0, %.lr.ph613.preheader ], [ %n.vec940, %middle.block944 ]
  br label %.lr.ph613

.preheader:                                       ; preds = %.loopexit511, %.preheader513
  br i1 %i.aj, label %.lr.ph686.preheader, label %._crit_edge687

.lr.ph686.preheader:                              ; preds = %.preheader
  %wide.trip.count841 = zext nneg i32 %i.h to i64
  br label %.lr.ph686

._crit_edge614:                                   ; preds = %.lr.ph613, %middle.block944, %.preheader512
  %i.md = add nsw i64 %indvars.iv833.a, %i.hl     ; 4 uses
  br i1 %.not407624, label %._crit_edge639.split, label %.lr.ph638.split

.lr.ph638.split:                                  ; preds = %._crit_edge614
  %i.me = add nsw i64 %indvars.iv833.a, %i.hd
  %i.mf = sub i32 %.0382.in680, %.fr689
  %i.mg = sext i32 %i.mf to i64
  br i1 %.not408615, label %.lr.ph638.split.split.us, label %.lr.ph628

.lr.ph638.split.split.us:                         ; preds = %.lr.ph638.split
  %i.mh = trunc i64 %indvars.iv833.a to i32
  %i.mi = sub i32 %i.mh, %i.d                     ; 2 uses
  %i.mj = trunc nsw i64 %indvars.iv833.a to i32   ; 2 uses
  br i1 %i.gx, label %.lr.ph628.us.us, label %.lr.ph628.us

.lr.ph628.us.us:                                  ; preds = %.lr.ph638.split.split.us, %._crit_edge629.split.us.split.us.us.us
  %.0368636.us.us = phi i32 [ %i.nk, %._crit_edge629.split.us.split.us.us.us ], [ %i.mi, %.lr.ph638.split.split.us ] ; 3 uses
  %.6635.us.us = phi i32 [ %.us-phi657, %._crit_edge629.split.us.split.us.us.us ], [ 0, %.lr.ph638.split.split.us ] ; 2 uses
  %i.mk = icmp eq i32 %.0368636.us.us, %i.mj
  %.fr658 = freeze i1 %i.mk
  br i1 %.fr658, label %.lr.ph628.split.us.split.us.us.us.split, label %.lr.ph628.split.us.split.us.us.us.split.us.preheader

.lr.ph628.split.us.split.us.us.us.split.us.preheader: ; preds = %.lr.ph628.us.us
  %i.ml = sext i32 %.6635.us.us to i64            ; 2 uses
  %i.mm = shl nsw i64 %i.ml, 2
  %scevgep807 = getelementptr i8, ptr %i.ad, i64 %i.mm
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep807, i8 0, i64 %i.hi, i1 false), !tbaa !45
  br label %.lr.ph628.split.us.split.us.us.us.split.us

.lr.ph628.split.us.split.us.us.us.split.us:       ; preds = %.lr.ph628.split.us.split.us.us.us.split.us.preheader, %.loopexit508.us.us.us.us.us
  %indvars.iv809 = phi i64 [ %i.ml, %.lr.ph628.split.us.split.us.us.us.split.us.preheader ], [ %indvars.iv.next810, %.loopexit508.us.us.us.us.us ]
  %.0367626.us.us.us.us.us = phi i32 [ %i.gm, %.lr.ph628.split.us.split.us.us.us.split.us.preheader ], [ %i.mv, %.loopexit508.us.us.us.us.us ] ; 2 uses
  %i.mn = load i32, ptr %i.gv, align 4, !tbaa !45
  %i.mo = icmp sgt i32 %i.mn, 0
  br i1 %i.mo, label %.lr.ph622.us.us.us.us.us, label %.loopexit508.us.us.us.us.us

.lr.ph622.us.us.us.us.us:                         ; preds = %.lr.ph628.split.us.split.us.us.us.split.us
  store i32 0, ptr %i.gv, align 4, !tbaa !45
  br label %bb.am

bb.am:                                            ; preds = %bb.an, %.lr.ph622.us.us.us.us.us
  %indvars.iv828 = phi i64 [ %indvars.iv.next829, %bb.an ], [ %14, %.lr.ph622.us.us.us.us.us ] ; 3 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv828 ; 3 uses
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !45 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 4 ; 2 uses
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !45 ; 2 uses
  %i.mt = icmp sgt i32 %i.mq, %i.ms
  br i1 %i.mt, label %bb.an, label %.loopexit508.us.us.us.us.us

bb.an:                                            ; preds = %bb.am
  store i32 %i.ms, ptr %i.mp, align 4, !tbaa !45
  store i32 %i.mq, ptr %i.mr, align 4, !tbaa !45
  %indvars.iv.next829 = add nsw i64 %indvars.iv828, -1
  %i.mu = icmp sgt i64 %indvars.iv828, 0
  br i1 %i.mu, label %bb.am, label %.loopexit508.us.us.us.us.us, !llvm.loop !72

.loopexit508.us.us.us.us.us:                      ; preds = %bb.an, %bb.am, %.lr.ph628.split.us.split.us.us.us.split.us
  %indvars.iv.next810 = add nsw i64 %indvars.iv809, 1 ; 2 uses
  %i.mv = add nsw i32 %.0367626.us.us.us.us.us, 1
  %.not407.us.us.us.us.us.not = icmp slt i32 %.0367626.us.us.us.us.us, %i.gn
  br i1 %.not407.us.us.us.us.us.not, label %.lr.ph628.split.us.split.us.us.us.split.us, label %._crit_edge629.split.us.split.us.us.us.loopexit693, !llvm.loop !73

.lr.ph628.split.us.split.us.us.us.split:          ; preds = %.lr.ph628.us.us, %bb.ar
  %.0367626.us.us.us.us = phi i32 [ %i.ni, %bb.ar ], [ %i.gm, %.lr.ph628.us.us ] ; 3 uses
  %.7625.us.us.us.us = phi i32 [ %.8.us.us.us.us, %bb.ar ], [ %.6635.us.us, %.lr.ph628.us.us ] ; 3 uses
  %i.mw = icmp eq i32 %.0367626.us.us.us.us, %2
  br i1 %i.mw, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph628.split.us.split.us.us.us.split
  %i.mx = sext i32 %.7625.us.us.us.us to i64
  %i.my = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.mx
  store i32 0, ptr %i.my, align 4, !tbaa !45
  %i.mz = load i32, ptr %i.gv, align 4, !tbaa !45
  %i.na = icmp sgt i32 %i.mz, 0
  br i1 %i.na, label %.lr.ph622.us.us.us.us, label %.loopexit508.us.us.us.us

.lr.ph622.us.us.us.us:                            ; preds = %bb.ao
  store i32 0, ptr %i.gv, align 4, !tbaa !45
  br label %bb.ap

bb.ap:                                            ; preds = %bb.aq, %.lr.ph622.us.us.us.us
  %indvars.iv836 = phi i64 [ %indvars.iv.next837, %bb.aq ], [ %14, %.lr.ph622.us.us.us.us ] ; 3 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv836 ; 3 uses
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !45 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nb, i64 4 ; 2 uses
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !45 ; 2 uses
  %i.nf = icmp sgt i32 %i.nc, %i.ne
  br i1 %i.nf, label %bb.aq, label %.loopexit508.us.us.us.us

bb.aq:                                            ; preds = %bb.ap
  store i32 %i.ne, ptr %i.nb, align 4, !tbaa !45
  store i32 %i.nc, ptr %i.nd, align 4, !tbaa !45
  %indvars.iv.next837 = add nsw i64 %indvars.iv836, -1
  %i.ng = icmp sgt i64 %indvars.iv836, 0
  br i1 %i.ng, label %bb.ap, label %.loopexit508.us.us.us.us, !llvm.loop !72

.loopexit508.us.us.us.us:                         ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.nh = add nsw i32 %.7625.us.us.us.us, 1
  br label %bb.ar

bb.ar:                                            ; preds = %.loopexit508.us.us.us.us, %.lr.ph628.split.us.split.us.us.us.split
  %.8.us.us.us.us = phi i32 [ %.7625.us.us.us.us, %.lr.ph628.split.us.split.us.us.us.split ], [ %i.nh, %.loopexit508.us.us.us.us ] ; 2 uses
  %i.ni = add nsw i32 %.0367626.us.us.us.us, 1
  %.not407.us.us.us.us.not = icmp slt i32 %.0367626.us.us.us.us, %i.gn
  br i1 %.not407.us.us.us.us.not, label %.lr.ph628.split.us.split.us.us.us.split, label %._crit_edge629.split.us.split.us.us.us, !llvm.loop !73

._crit_edge629.split.us.split.us.us.us.loopexit693: ; preds = %.loopexit508.us.us.us.us.us
  %i.nj = trunc nsw i64 %indvars.iv.next810 to i32
  br label %._crit_edge629.split.us.split.us.us.us

._crit_edge629.split.us.split.us.us.us:           ; preds = %bb.ar, %._crit_edge629.split.us.split.us.us.us.loopexit693
  %.us-phi657 = phi i32 [ %i.nj, %._crit_edge629.split.us.split.us.us.us.loopexit693 ], [ %.8.us.us.us.us, %bb.ar ]
  %i.nk = add nsw i32 %.0368636.us.us, 1
  %i.nl = sext i32 %.0368636.us.us to i64
  %.not404.us.us.not = icmp sgt i64 %i.md, %i.nl
  br i1 %.not404.us.us.not, label %.lr.ph628.us.us, label %._crit_edge639.split, !llvm.loop !74

.lr.ph628.us:                                     ; preds = %.lr.ph638.split.split.us, %._crit_edge629.split.us.split.us647
  %.0368636.us = phi i32 [ %i.nv, %._crit_edge629.split.us.split.us647 ], [ %i.mi, %.lr.ph638.split.split.us ] ; 3 uses
  %.6635.us = phi i32 [ %.us-phi653, %._crit_edge629.split.us.split.us647 ], [ 0, %.lr.ph638.split.split.us ] ; 2 uses
  %i.nm = icmp eq i32 %.0368636.us, %i.mj
  %.fr654 = freeze i1 %i.nm
  br i1 %.fr654, label %.lr.ph628.split.us.split.us649.split, label %.lr.ph628.split.us.split.us649.split.us

.lr.ph628.split.us.split.us649.split:             ; preds = %.lr.ph628.us, %bb.au
  %.0367626.us.us641 = phi i32 [ %i.nt, %bb.au ], [ %i.gm, %.lr.ph628.us ] ; 3 uses
  %.7625.us.us642 = phi i32 [ %.8.us.us645, %bb.au ], [ %.6635.us, %.lr.ph628.us ] ; 3 uses
  %i.nn = icmp eq i32 %.0367626.us.us641, %2
  br i1 %i.nn, label %bb.au, label %bb.as

bb.as:                                            ; preds = %.lr.ph628.split.us.split.us649.split
  %i.no = sext i32 %.7625.us.us642 to i64
  %i.np = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.no
  store i32 0, ptr %i.np, align 4, !tbaa !45
  %i.nq = load i32, ptr %i.gv, align 4, !tbaa !45
  %i.nr = icmp sgt i32 %i.nq, 0
  br i1 %i.nr, label %.loopexit508.us.us644, label %bb.at

.loopexit508.us.us644:                            ; preds = %bb.as
  store i32 0, ptr %i.gv, align 4, !tbaa !45
  br label %bb.at

bb.at:                                            ; preds = %.loopexit508.us.us644, %bb.as
  %i.ns = add nsw i32 %.7625.us.us642, 1
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph628.split.us.split.us649.split
  %.8.us.us645 = phi i32 [ %.7625.us.us642, %.lr.ph628.split.us.split.us649.split ], [ %i.ns, %bb.at ] ; 2 uses
  %i.nt = add nsw i32 %.0367626.us.us641, 1
  %.not407.us.us646.not = icmp slt i32 %.0367626.us.us641, %i.gn
  br i1 %.not407.us.us646.not, label %.lr.ph628.split.us.split.us649.split, label %._crit_edge629.split.us.split.us647, !llvm.loop !73

._crit_edge629.split.us.split.us647.loopexit694:  ; preds = %bb.aw
  %i.nu = trunc nsw i64 %indvars.iv.next805 to i32
  br label %._crit_edge629.split.us.split.us647

._crit_edge629.split.us.split.us647:              ; preds = %bb.au, %._crit_edge629.split.us.split.us647.loopexit694
  %.us-phi653 = phi i32 [ %i.nu, %._crit_edge629.split.us.split.us647.loopexit694 ], [ %.8.us.us645, %bb.au ]
  %i.nv = add nsw i32 %.0368636.us, 1
  %i.nw = sext i32 %.0368636.us to i64
  %.not404.us.not = icmp sgt i64 %i.md, %i.nw
  br i1 %.not404.us.not, label %.lr.ph628.us, label %._crit_edge639.split, !llvm.loop !74

.lr.ph628.split.us.split.us649.split.us:          ; preds = %.lr.ph628.us
  %.promoted655 = load i32, ptr %i.gv, align 4, !tbaa !45
  %i.nx = sext i32 %.6635.us to i64               ; 2 uses
  %i.ny = shl nsw i64 %i.nx, 2
  %scevgep802 = getelementptr i8, ptr %i.ad, i64 %i.ny
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep802, i8 0, i64 %i.hi, i1 false), !tbaa !45
  br label %bb.av

bb.av:                                            ; preds = %bb.aw, %.lr.ph628.split.us.split.us649.split.us
  %indvars.iv804 = phi i64 [ %indvars.iv.next805, %bb.aw ], [ %i.nx, %.lr.ph628.split.us.split.us649.split.us ]
  %i.nz = phi i32 [ %i.ob, %bb.aw ], [ %.promoted655, %.lr.ph628.split.us.split.us649.split.us ] ; 2 uses
  %.0367626.us.us641.us = phi i32 [ %i.oc, %bb.aw ], [ %i.gm, %.lr.ph628.split.us.split.us649.split.us ] ; 2 uses
  %i.oa = icmp sgt i32 %i.nz, 0
  br i1 %i.oa, label %.loopexit508.us.us644.us, label %bb.aw

.loopexit508.us.us644.us:                         ; preds = %bb.av
  store i32 0, ptr %i.gv, align 4, !tbaa !45
  br label %bb.aw

bb.aw:                                            ; preds = %.loopexit508.us.us644.us, %bb.av
  %i.ob = phi i32 [ 0, %.loopexit508.us.us644.us ], [ %i.nz, %bb.av ]
  %indvars.iv.next805 = add nsw i64 %indvars.iv804, 1 ; 2 uses
  %i.oc = add nsw i32 %.0367626.us.us641.us, 1
  %.not407.us.us646.us.not = icmp slt i32 %.0367626.us.us641.us, %i.gn
  br i1 %.not407.us.us646.us.not, label %bb.av, label %._crit_edge629.split.us.split.us647.loopexit694, !llvm.loop !73

.lr.ph613:                                        ; preds = %.lr.ph613.preheader950, %.lr.ph613
  %indvars.iv781 = phi i64 [ %indvars.iv.next782, %.lr.ph613 ], [ %indvars.iv781.ph, %.lr.ph613.preheader950 ] ; 2 uses
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv781
  store i32 2147483647, ptr %i.od, align 4, !tbaa !45
  %indvars.iv.next782 = add nuw nsw i64 %indvars.iv781, 1 ; 2 uses
  %exitcond786.not = icmp eq i64 %indvars.iv.next782, %wide.trip.count785
  br i1 %exitcond786.not, label %._crit_edge614, label %.lr.ph613, !llvm.loop !75

._crit_edge639.split:                             ; preds = %._crit_edge629.split, %._crit_edge629.split.us.split.us647, %._crit_edge629.split.us.split.us.us.us, %._crit_edge614
  br i1 %.not.i, label %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit443, label %.lr.ph.i438

.lr.ph.i438:                                      ; preds = %._crit_edge639.split, %.lr.ph.i438
  %indvars.iv.i439 = phi i64 [ %indvars.iv.next.i441, %.lr.ph.i438 ], [ 0, %._crit_edge639.split ] ; 2 uses
  %.0810.i440 = phi float [ %i.oh, %.lr.ph.i438 ], [ 0.000000e+00, %._crit_edge639.split ]
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv.i439
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !45
  %i.og = sitofp i32 %i.of to float
  %i.oh = fadd float %.0810.i440, %i.og           ; 2 uses
  %indvars.iv.next.i441 = add i64 %indvars.iv.i439, 1 ; 2 uses
  %i.oi = and i64 %indvars.iv.next.i441, 4294967295
  %i.oj = icmp ugt i64 %i.do, %i.oi
  br i1 %i.oj, label %.lr.ph.i438, label %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit443, !llvm.loop !57

_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit443: ; preds = %.lr.ph.i438, %._crit_edge639.split
  %.08.lcssa.i442 = phi float [ 0.000000e+00, %._crit_edge639.split ], [ %i.oh, %.lr.ph.i438 ]
  %i.ok = fdiv float %.08.lcssa.i442, %i.dv
  %i.ol = mul nsw i64 %indvars.iv833.a, %i.ae     ; 2 uses
  %gep903 = getelementptr [4 x i8], ptr %invariant.gep902, i64 %i.ol
  store float %i.ok, ptr %gep903, align 4, !tbaa !26
  br i1 %i.ec, label %.preheader510.lr.ph, label %.loopexit511

.preheader510.lr.ph:                              ; preds = %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit443
  %i.om = add nsw i64 %indvars.iv833.a, %i.hd
  %i.on = sub i32 %.0382.in680, %.fr689
  %i.oo = sext i32 %i.on to i64
  %invariant.gep900 = getelementptr [4 x i8], ptr %4, i64 %i.ol
  br label %.preheader510

.lr.ph628:                                        ; preds = %.lr.ph638.split, %._crit_edge629.split
  %indvars.iv798 = phi i64 [ %indvars.iv.next799, %._crit_edge629.split ], [ %i.lz, %.lr.ph638.split ] ; 5 uses
  %.6635 = phi i32 [ %.8, %._crit_edge629.split ], [ 0, %.lr.ph638.split ]
  %i.op = icmp eq i64 %indvars.iv798, %indvars.iv833.a
  %i.oq = add nsw i64 %indvars.iv798, %i.hd
  %i.or = trunc nsw i64 %indvars.iv798 to i32
  %i.os = add i32 %i.or, %i.gs
  %i.ot = sext i32 %i.os to i64
  br label %bb.ax

._crit_edge629.split:                             ; preds = %bb.bb
  %indvars.iv.next799 = add nsw i64 %indvars.iv798, 1
  %.not404.not = icmp slt i64 %indvars.iv798, %i.md
  br i1 %.not404.not, label %.lr.ph628, label %._crit_edge639.split, !llvm.loop !74

bb.ax:                                            ; preds = %.lr.ph628, %bb.bb
  %indvars.iv792 = phi i64 [ %i.hb, %.lr.ph628 ], [ %indvars.iv.next793, %bb.bb ] ; 4 uses
  %.7625 = phi i32 [ %.6635, %.lr.ph628 ], [ %.8, %bb.bb ] ; 3 uses
  %i.ou = icmp eq i64 %indvars.iv792, %i.gz
  %or.cond421 = and i1 %i.op, %i.ou
  br i1 %or.cond421, label %bb.bb, label %.lr.ph618

.lr.ph618:                                        ; preds = %bb.ax
  %i.ov = sext i32 %.7625 to i64                  ; 2 uses
  %i.ow = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.ov ; 2 uses
  store i32 0, ptr %i.ow, align 4, !tbaa !45
  %i.ox = load ptr, ptr %i.gq, align 8, !tbaa !58 ; 4 uses
  br label %bb.ay

._crit_edge619:                                   ; preds = %bb.ay
  %i.oy = load i32, ptr %i.gv, align 4, !tbaa !45
  %i.oz = icmp slt i32 %i.qj, %i.oy
  br i1 %i.oz, label %bb.az, label %.loopexit508

bb.ay:                                            ; preds = %.lr.ph618, %bb.ay
  %i.pa = phi i32 [ 0, %.lr.ph618 ], [ %i.qj, %bb.ay ]
  %indvars.iv787 = phi i64 [ %i.gy, %.lr.ph618 ], [ %indvars.iv.next788, %bb.ay ] ; 3 uses
  %i.pb = add nsw i64 %indvars.iv787, %indvars.iv792 ; 2 uses
  %i.pc = load i32, ptr %i.gp, align 4, !tbaa !60
  %i.pd = icmp slt i32 %i.pc, 2                   ; 2 uses
  %i.pe = load i64, ptr %i.gr, align 8            ; 2 uses
  %i.pf = mul i64 %i.pe, %i.oq
  %.sink.idx.i444 = select i1 %i.pd, i64 0, i64 %i.pf
  %.sink.i445 = getelementptr inbounds nuw i8, ptr %i.ox, i64 %.sink.idx.i444
  %i.pg = getelementptr inbounds i8, ptr %.sink.i445, i64 %i.pb
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !61
  %i.pi = add nsw i64 %indvars.iv787, %i.gz       ; 3 uses
  %i.pj = mul i64 %i.pe, %i.me
  %.sink.idx.i446 = select i1 %i.pd, i64 0, i64 %i.pj
  %.sink.i447 = getelementptr inbounds nuw i8, ptr %i.ox, i64 %.sink.idx.i446
  %i.pk = getelementptr inbounds i8, ptr %.sink.i447, i64 %i.pi
  %i.pl = zext i8 %i.ph to i32
  %i.pm = load i8, ptr %i.pk, align 1, !tbaa !61
  %i.pn = zext i8 %i.pm to i32
  %i.po = sub nsw i32 %i.pl, %i.pn                ; 2 uses
  %i.pp = mul nsw i32 %i.po, %i.po
  %i.pq = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.pi
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !50
  %i.ps = getelementptr inbounds [4 x i8], ptr %i.pr, i64 %i.ov ; 3 uses
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !45
  %i.pu = add nsw i32 %i.pp, %i.pt                ; 2 uses
  store i32 %i.pu, ptr %i.ps, align 4, !tbaa !45
  %i.pv = load i32, ptr %i.gp, align 4, !tbaa !60
  %i.pw = icmp slt i32 %i.pv, 2                   ; 2 uses
  %i.px = load i64, ptr %i.gr, align 8            ; 2 uses
  %i.py = mul i64 %i.px, %i.ot
  %.sink.idx.i448 = select i1 %i.pw, i64 0, i64 %i.py
  %.sink.i449 = getelementptr inbounds nuw i8, ptr %i.ox, i64 %.sink.idx.i448
  %i.pz = getelementptr inbounds i8, ptr %.sink.i449, i64 %i.pb
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !61
  %i.qb = mul i64 %i.px, %i.mg
  %.sink.idx.i450 = select i1 %i.pw, i64 0, i64 %i.qb
  %.sink.i451 = getelementptr inbounds nuw i8, ptr %i.ox, i64 %.sink.idx.i450
  %i.qc = getelementptr inbounds i8, ptr %.sink.i451, i64 %i.pi
  %i.qd = zext i8 %i.qa to i32
  %i.qe = load i8, ptr %i.qc, align 1, !tbaa !61
  %i.qf = zext i8 %i.qe to i32
  %i.qg = sub nsw i32 %i.qd, %i.qf                ; 2 uses
  %i.qh = mul nsw i32 %i.qg, %i.qg
  %i.qi = sub nsw i32 %i.pu, %i.qh                ; 2 uses
  store i32 %i.qi, ptr %i.ps, align 4, !tbaa !45
  %i.qj = add nsw i32 %i.qi, %i.pa                ; 4 uses
  store i32 %i.qj, ptr %i.ow, align 4, !tbaa !45
  %indvars.iv.next788 = add nsw i64 %indvars.iv787, 1 ; 2 uses
  %lftr.wideiv790 = trunc i64 %indvars.iv.next788 to i32
  %exitcond791.not = icmp eq i32 %i.ha, %lftr.wideiv790
  br i1 %exitcond791.not, label %._crit_edge619, label %bb.ay, !llvm.loop !76

bb.az:                                            ; preds = %._crit_edge619
  store i32 %i.qj, ptr %i.gv, align 4, !tbaa !45
  br i1 %i.gx, label %.lr.ph622, label %.loopexit508

.lr.ph622:                                        ; preds = %bb.az, %bb.ba
  %indvars.iv810 = phi i64 [ %indvars.iv.next811, %bb.ba ], [ %14, %bb.az ] ; 3 uses
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv810 ; 3 uses
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !45 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qk, i64 4 ; 2 uses
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !45 ; 2 uses
  %i.qo = icmp sgt i32 %i.ql, %i.qn
  br i1 %i.qo, label %bb.ba, label %.loopexit508

bb.ba:                                            ; preds = %.lr.ph622
  store i32 %i.qn, ptr %i.qk, align 4, !tbaa !45
  store i32 %i.ql, ptr %i.qm, align 4, !tbaa !45
  %indvars.iv.next811 = add nsw i64 %indvars.iv810, -1
  %i.qp = icmp sgt i64 %indvars.iv810, 0
  br i1 %i.qp, label %.lr.ph622, label %.loopexit508, !llvm.loop !72

.loopexit508:                                     ; preds = %.lr.ph622, %bb.ba, %bb.az, %._crit_edge619
  %i.qq = add nsw i32 %.7625, 1
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ax, %.loopexit508
  %.8 = phi i32 [ %.7625, %bb.ax ], [ %i.qq, %.loopexit508 ] ; 2 uses
  %indvars.iv.next793 = add nsw i64 %indvars.iv792, 1
  %.not407.not = icmp slt i64 %indvars.iv792, %i.hc
  br i1 %.not407.not, label %bb.ax, label %._crit_edge629.split, !llvm.loop !73

.preheader510:                                    ; preds = %.preheader510.lr.ph, %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit458
  %indvars.iv828.a = phi i64 [ %i.hk, %.preheader510.lr.ph ], [ %indvars.iv.next829.a, %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit458 ] ; 6 uses
  %indvars.iv818 = phi i32 [ %i.hj, %.preheader510.lr.ph ], [ %indvars.iv.next819, %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit458 ] ; 2 uses
  %i.qr = sext i32 %indvars.iv818 to i64
  br i1 %.not.i.i.i.i, label %.preheader509, label %.lr.ph660.preheader

.lr.ph660.preheader:                              ; preds = %.preheader510
  br i1 %min.iters.check928, label %.lr.ph660.preheader947, label %vector.body931

vector.body931:                                   ; preds = %.lr.ph660.preheader, %vector.body931
  %index932 = phi i64 [ %index.next933, %vector.body931 ], [ 0, %.lr.ph660.preheader ] ; 2 uses
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %index932 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %i.qs, align 4, !tbaa !45
  store <4 x i32> splat (i32 2147483647), ptr %i.qt, align 4, !tbaa !45
  %index.next933 = add nuw i64 %index932, 8       ; 2 uses
  %i.qu = icmp eq i64 %index.next933, %n.vec930
  br i1 %i.qu, label %middle.block934, label %vector.body931, !llvm.loop !77

middle.block934:                                  ; preds = %vector.body931
  br i1 %cmp.n935, label %.preheader509, label %.lr.ph660.preheader947

.lr.ph660.preheader947:                           ; preds = %.lr.ph660.preheader, %middle.block934
  %indvars.iv812.ph = phi i64 [ 0, %.lr.ph660.preheader ], [ %n.vec930, %middle.block934 ]
  br label %.lr.ph660

.preheader509:                                    ; preds = %.lr.ph660, %middle.block934, %.preheader510
  br i1 %.not407624, label %._crit_edge676.split, label %.lr.ph669.preheader

.lr.ph669.preheader:                              ; preds = %.preheader509
  %i.qv = add nsw i64 %indvars.iv828.a, %i.hl
  %i.qw = add nsw i64 %indvars.iv828.a, %i.hd     ; 3 uses
  %i.qx = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.qw
  %i.qy = trunc nsw i64 %indvars.iv828.a to i32
  %i.qz = add i32 %i.qy, %i.gs
  %i.ra = sext i32 %i.qz to i64
  %i.rb = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ra
  br label %.lr.ph669

.lr.ph660:                                        ; preds = %.lr.ph660.preheader947, %.lr.ph660
  %indvars.iv812 = phi i64 [ %indvars.iv.next813, %.lr.ph660 ], [ %indvars.iv812.ph, %.lr.ph660.preheader947 ] ; 2 uses
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv812
  store i32 2147483647, ptr %i.rc, align 4, !tbaa !45
  %indvars.iv.next813 = add nuw nsw i64 %indvars.iv812, 1 ; 2 uses
  %exitcond817.not = icmp eq i64 %indvars.iv.next813, %wide.trip.count816
  br i1 %exitcond817.not, label %.preheader509, label %.lr.ph660, !llvm.loop !78

._crit_edge676.split:                             ; preds = %._crit_edge670, %.preheader509
  br i1 %.not.i, label %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit458, label %.lr.ph.i453

.lr.ph.i453:                                      ; preds = %._crit_edge676.split, %.lr.ph.i453
  %indvars.iv.i454 = phi i64 [ %indvars.iv.next.i456, %.lr.ph.i453 ], [ 0, %._crit_edge676.split ] ; 2 uses
  %.0810.i455 = phi float [ %i.rg, %.lr.ph.i453 ], [ 0.000000e+00, %._crit_edge676.split ]
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv.i454
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !45
  %i.rf = sitofp i32 %i.re to float
  %i.rg = fadd float %.0810.i455, %i.rf           ; 2 uses
  %indvars.iv.next.i456 = add i64 %indvars.iv.i454, 1 ; 2 uses
  %i.rh = and i64 %indvars.iv.next.i456, 4294967295
  %i.ri = icmp ugt i64 %i.do, %i.rh
  br i1 %i.ri, label %.lr.ph.i453, label %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit458, !llvm.loop !57

_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit458: ; preds = %.lr.ph.i453, %._crit_edge676.split
  %.08.lcssa.i457 = phi float [ 0.000000e+00, %._crit_edge676.split ], [ %i.rg, %.lr.ph.i453 ]
  %i.rj = fdiv float %.08.lcssa.i457, %i.dv
  %gep901 = getelementptr [4 x i8], ptr %invariant.gep900, i64 %indvars.iv828.a
  store float %i.rj, ptr %gep901, align 4, !tbaa !26
  %indvars.iv.next829.a = add nsw i64 %indvars.iv828.a, 1 ; 2 uses
  %indvars.iv.next819 = add i32 %indvars.iv818, 1
  %lftr.wideiv831 = trunc i64 %indvars.iv.next829.a to i32
  %exitcond832.not = icmp eq i32 %3, %lftr.wideiv831
  br i1 %exitcond832.not, label %.loopexit511, label %.preheader510, !llvm.loop !79

.lr.ph669:                                        ; preds = %.lr.ph669.preheader, %._crit_edge670
  %indvars.iv824 = phi i64 [ %i.lz, %.lr.ph669.preheader ], [ %indvars.iv.next825, %._crit_edge670 ] ; 5 uses
  %.9673 = phi i32 [ 0, %.lr.ph669.preheader ], [ %.11, %._crit_edge670 ]
  %i.rk = icmp eq i64 %indvars.iv824, %indvars.iv833.a
  %i.rl = add nsw i64 %indvars.iv824, %i.hd
  %i.rm = trunc nsw i64 %indvars.iv824 to i32
  %i.rn = add i32 %i.rm, %i.gs
  %i.ro = sext i32 %i.rn to i64
  br label %bb.bc

._crit_edge670:                                   ; preds = %bb.bg
  %indvars.iv.next825 = add nsw i64 %indvars.iv824, 1
  %.not405.not = icmp slt i64 %indvars.iv824, %i.md
  br i1 %.not405.not, label %.lr.ph669, label %._crit_edge676.split, !llvm.loop !80

bb.bc:                                            ; preds = %.lr.ph669, %bb.bg
  %indvars.iv820 = phi i64 [ %i.qr, %.lr.ph669 ], [ %indvars.iv.next821, %bb.bg ] ; 4 uses
  %.10666 = phi i32 [ %.9673, %.lr.ph669 ], [ %.11, %bb.bg ] ; 3 uses
  %i.rp = icmp eq i64 %indvars.iv820, %indvars.iv828.a
  %or.cond422 = and i1 %i.rk, %i.rp
  br i1 %or.cond422, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.rq = add nsw i64 %indvars.iv820, %i.hd       ; 2 uses
  %i.rr = load i32, ptr %i.gp, align 4, !tbaa !60
  %i.rs = icmp slt i32 %i.rr, 2                   ; 2 uses
  %i.rt = load ptr, ptr %i.gq, align 8, !tbaa !58 ; 4 uses
  %i.ru = load i64, ptr %i.gr, align 8            ; 2 uses
  %i.rv = mul i64 %i.ru, %i.rl
  %.sink.idx.i459 = select i1 %i.rs, i64 0, i64 %i.rv
  %.sink.i460 = getelementptr inbounds nuw i8, ptr %i.rt, i64 %.sink.idx.i459
  %i.rw = getelementptr inbounds i8, ptr %.sink.i460, i64 %i.rq
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !61
  %i.ry = mul i64 %i.ru, %i.om
  %.sink.idx.i461 = select i1 %i.rs, i64 0, i64 %i.ry
  %.sink.i462 = getelementptr inbounds nuw i8, ptr %i.rt, i64 %.sink.idx.i461
  %i.rz = getelementptr inbounds i8, ptr %.sink.i462, i64 %i.qw
  %i.sa = zext i8 %i.rx to i32
  %i.sb = load i8, ptr %i.rz, align 1, !tbaa !61
  %i.sc = zext i8 %i.sb to i32
  %i.sd = sub nsw i32 %i.sa, %i.sc                ; 2 uses
  %i.se = mul nsw i32 %i.sd, %i.sd
  %i.sf = load ptr, ptr %i.qx, align 8, !tbaa !50
  %i.sg = sext i32 %.10666 to i64                 ; 3 uses
  %i.sh = getelementptr inbounds [4 x i8], ptr %i.sf, i64 %i.sg ; 3 uses
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !45
  %i.sj = add nsw i32 %i.se, %i.si                ; 2 uses
  store i32 %i.sj, ptr %i.sh, align 4, !tbaa !45
  %i.sk = load i32, ptr %i.gp, align 4, !tbaa !60
  %i.sl = icmp slt i32 %i.sk, 2                   ; 2 uses
  %i.sm = load i64, ptr %i.gr, align 8            ; 2 uses
  %i.sn = mul i64 %i.sm, %i.ro
  %.sink.idx.i463 = select i1 %i.sl, i64 0, i64 %i.sn
  %.sink.i464 = getelementptr inbounds nuw i8, ptr %i.rt, i64 %.sink.idx.i463
  %i.so = getelementptr inbounds i8, ptr %.sink.i464, i64 %i.rq
  %i.sp = load i8, ptr %i.so, align 1, !tbaa !61
  %i.sq = mul i64 %i.sm, %i.oo
  %.sink.idx.i465 = select i1 %i.sl, i64 0, i64 %i.sq
  %.sink.i466 = getelementptr inbounds nuw i8, ptr %i.rt, i64 %.sink.idx.i465
  %i.sr = getelementptr inbounds i8, ptr %.sink.i466, i64 %i.qw
  %i.ss = zext i8 %i.sp to i32
  %i.st = load i8, ptr %i.sr, align 1, !tbaa !61
  %i.su = zext i8 %i.st to i32
  %i.sv = sub nsw i32 %i.ss, %i.su                ; 2 uses
  %i.sw = mul nsw i32 %i.sv, %i.sv
  %i.sx = sub nsw i32 %i.sj, %i.sw                ; 2 uses
  store i32 %i.sx, ptr %i.sh, align 4, !tbaa !45
  %i.sy = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.sg ; 2 uses
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !45
  %i.ta = add nsw i32 %i.sx, %i.sz
  %i.tb = load ptr, ptr %i.rb, align 8, !tbaa !50
  %i.tc = getelementptr inbounds [4 x i8], ptr %i.tb, i64 %i.sg
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !45
  %i.te = sub i32 %i.ta, %i.td                    ; 3 uses
  store i32 %i.te, ptr %i.sy, align 4, !tbaa !45
  %i.tf = load i32, ptr %i.gv, align 4, !tbaa !45
  %i.tg = icmp slt i32 %i.te, %i.tf
  br i1 %i.tg, label %bb.be, label %.loopexit

bb.be:                                            ; preds = %bb.bd
  store i32 %i.te, ptr %i.gv, align 4, !tbaa !45
  br i1 %i.gx, label %.lr.ph663, label %.loopexit

.lr.ph663:                                        ; preds = %bb.be, %bb.bf
  %indvars.iv845 = phi i64 [ %indvars.iv.next846, %bb.bf ], [ %14, %bb.be ] ; 3 uses
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv845 ; 3 uses
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !45 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.th, i64 4 ; 2 uses
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !45 ; 2 uses
  %i.tl = icmp sgt i32 %i.ti, %i.tk
  br i1 %i.tl, label %bb.bf, label %.loopexit

bb.bf:                                            ; preds = %.lr.ph663
  store i32 %i.tk, ptr %i.th, align 4, !tbaa !45
  store i32 %i.ti, ptr %i.tj, align 4, !tbaa !45
  %indvars.iv.next846 = add nsw i64 %indvars.iv845, -1
  %i.tm = icmp sgt i64 %indvars.iv845, 0
  br i1 %i.tm, label %.lr.ph663, label %.loopexit, !llvm.loop !81

.loopexit:                                        ; preds = %.lr.ph663, %bb.bf, %bb.be, %bb.bd
  %i.tn = add nsw i32 %.10666, 1
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bc, %.loopexit
  %.11 = phi i32 [ %.10666, %bb.bc ], [ %i.tn, %.loopexit ] ; 2 uses
  %indvars.iv.next821 = add nsw i64 %indvars.iv820, 1
  %.not406.not = icmp slt i64 %indvars.iv820, %i.qv
  br i1 %.not406.not, label %bb.bc, label %._crit_edge670, !llvm.loop !82

.lr.ph686:                                        ; preds = %.lr.ph686.preheader, %bb.bi
  %indvars.iv838 = phi i64 [ 0, %.lr.ph686.preheader ], [ %indvars.iv.next839, %bb.bi ] ; 2 uses
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv838
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !50 ; 2 uses
  %i.tq = icmp eq ptr %i.tp, null
  br i1 %i.tq, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph686
  tail call void @_ZdaPv(ptr noundef nonnull %i.tp) #24
  br label %bb.bi

bb.bi:                                            ; preds = %.lr.ph686, %bb.bh
  %indvars.iv.next839 = add nuw nsw i64 %indvars.iv838, 1 ; 2 uses
  %exitcond842.not = icmp eq i64 %indvars.iv.next839, %wide.trip.count841
  br i1 %exitcond842.not, label %._crit_edge687, label %.lr.ph686, !llvm.loop !83

._crit_edge687:                                   ; preds = %bb.bi, %.preheader
  tail call void @_ZdaPv(ptr noundef nonnull %i.ai) #24
  tail call void @_ZdaPv(ptr noundef nonnull %i.ad) #24
  %.not.i.i.i = icmp eq ptr %.sroa.0469.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %._crit_edge687
  %i.tr = ptrtoint ptr %.sroa.45.0 to i64
  %i.ts = sub i64 %i.tr, %i.dm
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0469.0, i64 noundef %i.ts) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge687, %bb.bj
  ret void

bb.bk:                                            ; preds = %bb.d, %bb.f, %bb.c
  %.pn416.pn = phi { ptr, i32 } [ %i.an, %bb.c ], [ %i.ar, %bb.f ], [ %i.ao, %bb.d ]
  %.not.i.i.i467 = icmp eq ptr %.sroa.0469.0, null
  br i1 %.not.i.i.i467, label %_ZNSt6vectorIiSaIiEED2Ev.exit468, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.tt = ptrtoint ptr %.sroa.45.0 to i64
  %i.tu = ptrtoint ptr %.sroa.0469.0 to i64
  %i.tv = sub i64 %i.tt, %i.tu
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0469.0, i64 noundef %i.tv) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit468

_ZNSt6vectorIiSaIiEED2Ev.exit468:                 ; preds = %bb.bl, %bb.bk
  resume { ptr, i32 } %.pn416.pn
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(144) %i.a, i8 0, i64 144, i1 false), !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !84   ; 2 uses
  %i.d = load ptr, ptr %4, align 8, !tbaa !87     ; 2 uses
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
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.k, i8 0, i64 %i.l, i1 false), !tbaa !45
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.h
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !84
  %.pre226 = load ptr, ptr %4, align 8, !tbaa !87 ; 2 uses
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
  %i.s = load i32, ptr %i.r, align 8, !tbaa !42   ; 14 uses
  %i.t = sub i32 0, %i.s                          ; 2 uses
  %.not170 = icmp slt i32 %i.s, 0
  br i1 %.not170, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count215 = and i64 %i.o, 2147483647  ; 3 uses
  %min.iters.check336 = icmp samesign ult i64 %wide.trip.count215, 8
  br i1 %min.iters.check336, label %.lr.ph.split.us.preheader354, label %vector.ph337

vector.ph337:                                     ; preds = %.lr.ph.split.us.preheader
  %n.vec338 = and i64 %i.o, 2147483640            ; 3 uses
  br label %vector.body339

vector.body339:                                   ; preds = %vector.body339, %vector.ph337
  %index340 = phi i64 [ 0, %vector.ph337 ], [ %index.next347, %vector.body339 ] ; 2 uses
  %vec.phi341 = phi <4 x i32> [ splat (i32 -1), %vector.ph337 ], [ %i.w, %vector.body339 ]
  %vec.phi342 = phi <4 x i32> [ splat (i32 -1), %vector.ph337 ], [ %i.x, %vector.body339 ]
  %vec.phi343 = phi <4 x i32> [ splat (i32 2147483647), %vector.ph337 ], [ %i.y, %vector.body339 ]
  %vec.phi344 = phi <4 x i32> [ splat (i32 2147483647), %vector.ph337 ], [ %i.z, %vector.body339 ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index340 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load345 = load <4 x i32>, ptr %i.u, align 4, !tbaa !45 ; 2 uses
  %wide.load346 = load <4 x i32>, ptr %i.v, align 4, !tbaa !45 ; 2 uses
  %i.w = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load345, <4 x i32> %vec.phi341) ; 2 uses
  %i.x = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load346, <4 x i32> %vec.phi342) ; 2 uses
  %i.y = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load345, <4 x i32> %vec.phi343) ; 2 uses
  %i.z = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load346, <4 x i32> %vec.phi344) ; 2 uses
  %index.next347 = add nuw i64 %index340, 8       ; 2 uses
  %i.aa = icmp eq i64 %index.next347, %n.vec338
  br i1 %i.aa, label %middle.block348, label %vector.body339, !llvm.loop !88

middle.block348:                                  ; preds = %vector.body339
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.w, <4 x i32> %i.x)
  %i.ab = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %rdx.minmax349 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.y, <4 x i32> %i.z)
  %i.ac = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %rdx.minmax349) ; 2 uses
  %cmp.n350 = icmp eq i64 %wide.trip.count215, %n.vec338
  br i1 %cmp.n350, label %.lr.ph188, label %.lr.ph.split.us.preheader354

.lr.ph.split.us.preheader354:                     ; preds = %.lr.ph.split.us.preheader, %middle.block348
  %indvars.iv212.ph = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %n.vec338, %middle.block348 ]
  %.0105180.us.ph = phi i32 [ -1, %.lr.ph.split.us.preheader ], [ %i.ab, %middle.block348 ]
  %.0107179.us.ph = phi i32 [ 2147483647, %.lr.ph.split.us.preheader ], [ %i.ac, %middle.block348 ]
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader354, %.lr.ph.split.us
  %indvars.iv212 = phi i64 [ %indvars.iv.next213, %.lr.ph.split.us ], [ %indvars.iv212.ph, %.lr.ph.split.us.preheader354 ] ; 2 uses
  %.0105180.us = phi i32 [ %spec.select.us, %.lr.ph.split.us ], [ %.0105180.us.ph, %.lr.ph.split.us.preheader354 ]
  %.0107179.us = phi i32 [ %.1108.us, %.lr.ph.split.us ], [ %.0107179.us.ph, %.lr.ph.split.us.preheader354 ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv212
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !45 ; 2 uses
  %spec.select.us = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 %.0105180.us) ; 2 uses
  %.1108.us = tail call i32 @llvm.smin.i32(i32 %i.ae, i32 %.0107179.us) ; 2 uses
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1 ; 2 uses
  %exitcond216.not = icmp eq i64 %indvars.iv.next213, %wide.trip.count215
  br i1 %exitcond216.not, label %.lr.ph188, label %.lr.ph.split.us, !llvm.loop !89

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !60
  %.fr192 = freeze i32 %i.ai
  %i.aj = icmp slt i32 %.fr192, 2
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !58 ; 12 uses
  %i.al = load i64, ptr %i.af, align 8            ; 6 uses
  %i.am = sext i32 %i.t to i64                    ; 16 uses
  %i.an = sext i32 %2 to i64                      ; 5 uses
  %i.ao = add nuw i32 %i.s, 1                     ; 3 uses
  %i.ap = sext i32 %3 to i64                      ; 3 uses
  %wide.trip.count = and i64 %i.o, 2147483647
  %invariant.gep = getelementptr i8, ptr %i.ak, i64 %i.an
  %invariant.gep276 = getelementptr i8, ptr %i.ak, i64 %i.an ; 4 uses
  %i.aq = add nsw i64 %i.an, %i.am                ; 2 uses
  %scevgep288 = getelementptr i8, ptr %i.ak, i64 %i.aq
  %i.ar = shl nuw i32 %i.s, 1
  %i.as = zext i32 %i.ar to i64                   ; 2 uses
  %i.at = getelementptr i8, ptr %i.ak, i64 %i.aq
  %i.au = getelementptr i8, ptr %i.at, i64 %i.as
  %scevgep289 = getelementptr i8, ptr %i.au, i64 1
  %scevgep290 = getelementptr i8, ptr %i.ak, i64 %i.am
  %i.av = getelementptr i8, ptr %i.ak, i64 %i.am
  %i.aw = getelementptr i8, ptr %i.av, i64 %i.as
  %scevgep292 = getelementptr i8, ptr %i.aw, i64 1
end_hunk_0
