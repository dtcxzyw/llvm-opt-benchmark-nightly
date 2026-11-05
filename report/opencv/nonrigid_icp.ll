Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/nonrigid_icp?download=true
inline.NumInlined: 1007
inline.NumDeleted: 377
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 49
begin_hunk_0
$_ZTVSt23_Sp_counted_ptr_inplaceIN2cv6dynafu7ICPImplESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt23_Sp_counted_ptr_inplaceIN2cv6dynafu7ICPImplESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt23_Sp_counted_ptr_inplaceIN2cv6dynafu7ICPImplESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt19_Sp_make_shared_tag = comdat any

$_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = comdat any

@_ZTVN2cv6dynafu11NonRigidICPE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv6dynafu11NonRigidICPE, ptr @__cxa_pure_virtual, ptr @_ZN2cv6dynafu11NonRigidICPD2Ev, ptr @_ZN2cv6dynafu11NonRigidICPD0Ev] }, comdat, align 8
@_ZTVN2cv6dynafu7ICPImplE = hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv6dynafu7ICPImplE, ptr @_ZNK2cv6dynafu7ICPImpl17estimateWarpNodesERNS0_9WarpFieldERKNS_7Affine3IfEERKNS_11_InputArrayESA_SA_SA_SA_, ptr @_ZN2cv6dynafu11NonRigidICPD2Ev, ptr @_ZN2cv6dynafu7ICPImplD0Ev] }, align 8
@.str = private unnamed_addr constant [19 x i8] c"_vertImage.isMat()\00", align 1
@__func__._ZNK2cv6dynafu7ICPImpl17estimateWarpNodesERNS0_9WarpFieldERKNS_7Affine3IfEERKNS_11_InputArrayESA_SA_SA_SA_ = private unnamed_addr constant [18 x i8] c"estimateWarpNodes\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"/opt-bench/work/opencv/opencv_contrib/modules/rgbd/src/nonrigid_icp.cpp\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"_oldPoints.isMat()\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"_newPoints.isMat()\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"_newNormals.isMat()\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"!vertImage.empty()\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"!oldPoints.empty()\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"!newPoints.empty()\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"!newNormals.empty()\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.9 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"Total reg energy: \00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c", Average: \00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"[Reg] Sigma: \00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c" from \00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c" residuals \00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"median: \00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"A_reg det:\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"Solving \00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"Done \00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"Nan count: \00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZTIN2cv6dynafu7ICPImplE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv6dynafu7ICPImplE, ptr @_ZTIN2cv6dynafu11NonRigidICPE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN2cv6dynafu7ICPImplE = hidden constant [21 x i8] c"N2cv6dynafu7ICPImplE\00", align 1
@_ZTIN2cv6dynafu11NonRigidICPE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN2cv6dynafu11NonRigidICPE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN2cv6dynafu11NonRigidICPE = linkonce_odr hidden constant [26 x i8] c"N2cv6dynafu11NonRigidICPE\00", comdat, align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"dims <= 2\00", align 1
@__func__._ZNK2cv8MatShapeclEv = private unnamed_addr constant [11 x i8] c"operator()\00", align 1
@.str.24 = private unnamed_addr constant [76 x i8] c"/opt-bench/work/opencv/opencv/modules/core/include/opencv2/core/mat.inl.hpp\00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.26 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN2cv6dynafu7ICPImplESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN2cv6dynafu7ICPImplESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv6dynafu7ICPImplESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv6dynafu7ICPImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv6dynafu7ICPImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv6dynafu7ICPImplESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN2cv6dynafu7ICPImplESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN2cv6dynafu7ICPImplESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN2cv6dynafu7ICPImplESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [84 x i8] c"St23_Sp_counted_ptr_inplaceIN2cv6dynafu7ICPImplESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

@_ZN2cv6dynafu7ICPImplC1ENS_4MatxIfLi3ELi3EEERKNS_3PtrINS0_10TSDFVolumeEEEi = hidden unnamed_addr alias void (ptr, ptr, ptr, i32), ptr @_ZN2cv6dynafu7ICPImplC2ENS_4MatxIfLi3ELi3EEERKNS_3PtrINS0_10TSDFVolumeEEEi

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv6dynafu11NonRigidICPC2ENS_4MatxIfLi3ELi3EEERKNS_3PtrINS0_10TSDFVolumeEEEi(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(60) initializes((0, 12), (16, 60)) %0, ptr nofree noundef readonly byval(%"class.cv::Matx.0") align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv6dynafu11NonRigidICPE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %i.a, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.c, ptr noundef nonnull align 8 dereferenceable(36) %1, i64 36, i1 false), !tbaa.struct !42
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv6dynafu7ICPImplC2ENS_4MatxIfLi3ELi3EEERKNS_3PtrINS0_10TSDFVolumeEEEi(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(60) initializes((0, 12), (16, 60)) %0, ptr nofree noundef readonly byval(%"class.cv::Matx.0") align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.a, ptr noundef nonnull align 8 dereferenceable(36) %1, i64 36, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.c, align 8, !tbaa !17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv6dynafu7ICPImplE, i64 16), ptr %0, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef float @_ZNK2cv6dynafu7ICPImpl6medianESt6vectorIfSaIfEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(60) %0, ptr nofree noundef readonly align 8 captures(none) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !22     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 2 uses
  %i.h = lshr i64 %i.g, 1                         ; 4 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.h ; 2 uses
  %i.k = icmp eq ptr %i.c, %i.b
  %i.l = icmp eq ptr %i.j, %i.b
  %or.cond.i = select i1 %i.k, i1 true, i1 %i.l
  br i1 %or.cond.i, label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.n = shl nuw nsw i64 %i.m, 1
  %i.o = xor i64 %i.n, 126
  tail call void @_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_(ptr %i.c, ptr nonnull %i.j, ptr %i.b, i64 noundef %i.o)
  %.pre = load ptr, ptr %1, align 8, !tbaa !22
  br label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit

_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit: ; preds = %bb.b, %bb.c
  %i.p = phi ptr [ %i.c, %bb.b ], [ %.pre, %bb.c ] ; 5 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.h ; 2 uses
  %i.r = load float, ptr %i.q, align 4, !tbaa !24 ; 2 uses
  %i.s = and i64 %i.f, 8
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 -4 ; 2 uses
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !25   ; 4 uses
  %i.w = icmp eq ptr %i.p, %i.v
  %i.x = icmp eq ptr %i.u, %i.v
  %or.cond.i14 = select i1 %i.w, i1 true, i1 %i.x
  br i1 %or.cond.i14, label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit15, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = ptrtoint ptr %i.p to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2
  %i.ac = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ab, i1 true)
  %i.ad = shl nuw nsw i64 %i.ac, 1
  %i.ae = xor i64 %i.ad, 126
  tail call void @_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_(ptr nonnull %i.p, ptr nonnull %i.u, ptr %i.v, i64 noundef %i.ae)
  %.pre18 = load ptr, ptr %1, align 8, !tbaa !22
  br label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit15

_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit15: ; preds = %bb.d, %bb.e
  %i.af = phi ptr [ %i.p, %bb.d ], [ %.pre18, %bb.e ]
  %i.ag = getelementptr [4 x i8], ptr %i.af, i64 %i.h
  %i.ah = getelementptr i8, ptr %i.ag, i64 -4
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !24
  %i.aj = fadd float %i.r, %i.ai
  %i.ak = fmul float %i.aj, 5.000000e-01
  br label %bb.f

bb.f:                                             ; preds = %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit15, %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit, %bb.a
  %.1 = phi float [ 0.000000e+00, %bb.a ], [ %i.ak, %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit15 ], [ %i.r, %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit ]
  ret float %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef float @_ZNK2cv6dynafu7ICPImpl11tukeyWeightEff(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(60) %0, float noundef %1, float noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = fdiv float %1, %2                        ; 3 uses
  %i.b = tail call noundef float @llvm.fabs.f32(float %i.a)
  %i.c = fcmp ugt float %i.b, 4.685100e+00
  %i.d = fmul float %i.a, %i.a
  %i.e = fdiv float %i.d, f0x41AF99EF
  %i.f = fsub float 1.000000e+00, %i.e            ; 2 uses
  %i.g = fmul float %i.f, %i.f
  %.0 = select i1 %i.c, float 0.000000e+00, float %i.g
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef float @_ZNK2cv6dynafu7ICPImpl11huberWeightENS_3VecIfLi3EEEf(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(60) %0, ptr nofree noundef readonly align 4 captures(none) dead_on_return %1, float noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = fcmp oeq float %2, 0.000000e+00
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load float, ptr %1, align 4, !tbaa !24
  %i.c = fpext float %i.b to double               ; 2 uses
  %3 = tail call double @llvm.fmuladd.f64(double %i.c, double %i.c, double 0.000000e+00)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !24
  %i.f = fpext float %i.e to double               ; 2 uses
  %i.g = tail call double @llvm.fmuladd.f64(double %i.f, double %i.f, double %3)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load float, ptr %i.h, align 4, !tbaa !24
  %i.j = fpext float %i.i to double               ; 2 uses
  %i.k = tail call noundef double @llvm.fmuladd.f64(double %i.j, double %i.j, double %i.g)
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.k)
  %i.l = fpext float %2 to double
  %i.m = fdiv double %sqrt.i, %i.l                ; 2 uses
  %i.n = tail call noundef double @llvm.fabs.f64(double %i.m)
  %i.o = fptrunc double %i.m to float
  %i.p = tail call float @llvm.fabs.f32(float %i.o)
  %i.q = fcmp ogt double %i.n, f0x3FF5851ED0000000
  %i.r = fdiv float 1.345000e+00, %i.p
  %i.s = select i1 %i.q, float %i.r, float 1.000000e+00
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi float [ %i.s, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK2cv6dynafu7ICPImpl17estimateWarpNodesERNS0_9WarpFieldERKNS_7Affine3IfEERKNS_11_InputArrayESA_SA_SA_SA_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(320) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.cv::Scalar_", align 8       ; 4 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.1", align 1 ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator.1", align 1 ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator.1", align 1 ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator.1", align 1 ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::allocator.1", align 1 ; 3 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::allocator.1", align 1 ; 3 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %22 = alloca %"class.std::allocator.1", align 1 ; 3 uses
  %23 = alloca %"class.cv::Scalar_", align 8      ; 4 uses
  %24 = alloca %"class.cv::Scalar_", align 8      ; 4 uses
  %25 = alloca %"class.cv::Scalar_", align 8      ; 4 uses
  %26 = alloca %"class.cv::_InputArray", align 8  ; 6 uses
  %27 = alloca %"class.cv::_OutputArray", align 8 ; 6 uses
  %28 = alloca %"class.cv::Matx.23", align 8      ; 10 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %30 = alloca %"class.std::allocator.1", align 1 ; 3 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %32 = alloca %"class.std::allocator.1", align 1 ; 3 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %34 = alloca %"class.std::allocator.1", align 1 ; 3 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %36 = alloca %"class.std::allocator.1", align 1 ; 3 uses
  %37 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %38 = alloca %"class.cv::Mat", align 8          ; 17 uses
  %39 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %40 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %41 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %43 = alloca %"class.std::allocator.1", align 1 ; 3 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %45 = alloca %"class.std::allocator.1", align 1 ; 3 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %47 = alloca %"class.std::allocator.1", align 1 ; 3 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %49 = alloca %"class.std::allocator.1", align 1 ; 3 uses
  %50 = alloca %"class.cv::Mat_", align 8         ; 24 uses
  %51 = alloca %"class.cv::Mat_", align 8         ; 16 uses
  %52 = alloca %"class.cv::Mat_", align 8         ; 8 uses
  %53 = alloca %"class.std::vector", align 8      ; 16 uses
  %54 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %55 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
  %56 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %57 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
  %58 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %59 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %60 = alloca %"struct.std::array", align 4      ; 6 uses
  %i.c = alloca [10 x float], align 16            ; 4 uses
  %61 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %62 = alloca %"class.cv::Mat_", align 8         ; 16 uses
  %63 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %64 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %65 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %66 = alloca %"class.cv::Vec", align 8          ; 9 uses
  %67 = alloca %"class.cv::Affine3", align 8      ; 18 uses
  %i.d = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.e = icmp eq i32 %i.d, 65536
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %30)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @__func__._ZNK2cv6dynafu7ICPImpl17estimateWarpNodesERNS0_9WarpFieldERKNS_7Affine3IfEERKNS_11_InputArrayESA_SA_SA_SA_, ptr noundef nonnull @.str.1, i32 noundef 94) #22
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %29, align 8, !tbaa !30    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !18
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.g, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  br label %bb.ng

bb.g:                                             ; preds = %bb.a
  %i.m = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.n = icmp eq i32 %i.m, 65536
  br i1 %i.n, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %32)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull @__func__._ZNK2cv6dynafu7ICPImpl17estimateWarpNodesERNS0_9WarpFieldERKNS_7Affine3IfEERKNS_11_InputArrayESA_SA_SA_SA_, ptr noundef nonnull @.str.1, i32 noundef 95) #22
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit718

bb.l:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %31, align 8, !tbaa !30    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit718, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i716

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i716: ; preds = %bb.l
  %i.t = load i64, ptr %i.r, align 8, !tbaa !18
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit718

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit718: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i716, %bb.k
  %.pn594 = phi { ptr, i32 } [ %i.o, %bb.k ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i716 ], [ %i.p, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  br label %bb.ng

bb.m:                                             ; preds = %bb.g
  %i.v = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
  %i.w = icmp eq i32 %i.v, 65536
  br i1 %i.w, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %34)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull @__func__._ZNK2cv6dynafu7ICPImpl17estimateWarpNodesERNS0_9WarpFieldERKNS_7Affine3IfEERKNS_11_InputArrayESA_SA_SA_SA_, ptr noundef nonnull @.str.1, i32 noundef 96) #22
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit721

bb.r:                                             ; preds = %bb.o
  %i.y = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZNK2cv6dynafu7ICPImpl17estimateWarpNodesERNS0_9WarpFieldERKNS_7Affine3IfEERKNS_11_InputArrayESA_SA_SA_SA_:bb.a
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit768 unwind label %.loopexit.split-lp1937.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit768: ; preds = %_ZNSolsEm.exit
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !151
  %i.lb = load ptr, ptr %i.kp, align 8, !tbaa !152
  %i.lc = ptrtoint ptr %i.la to i64
  %i.ld = ptrtoint ptr %i.lb to i64
  %i.le = sub i64 %i.lc, %i.ld
  %i.lf = ashr exact i64 %i.le, 4
  %i.lg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.kx, i64 noundef %i.lf)
          to label %_ZNSolsEm.exit770 unwind label %.loopexit.split-lp1937.loopexit.split-lp ; 3 uses

_ZNSolsEm.exit770:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit768
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !11
  %i.li = getelementptr i8, ptr %i.lh, i64 -24
  %i.lj = load i64, ptr %i.li, align 8
  %i.lk = getelementptr inbounds i8, ptr %i.lg, i64 %i.lj
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 240
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !195 ; 6 uses
  %.not.i.i.i1219 = icmp eq ptr %i.lm, null
  br i1 %.not.i.i.i1219, label %bb.cj, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1220

bb.cj:                                            ; preds = %_ZNSolsEm.exit770
  invoke void @_ZSt16__throw_bad_castv() #22
          to label %.noexc1224 unwind label %.loopexit.split-lp1937.loopexit.split-lp

.noexc1224:                                       ; preds = %bb.cj
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1220: ; preds = %_ZNSolsEm.exit770
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 56
  %i.lo = load i8, ptr %i.ln, align 8, !tbaa !201
  %.not.i1.i.i1221 = icmp eq i8 %i.lo, 0
  br i1 %.not.i1.i.i1221, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1220
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lm, i64 67
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !18
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1222

bb.cl:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1220
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.lm)
          to label %.noexc1225 unwind label %.loopexit.split-lp1937.loopexit.split-lp

.noexc1225:                                       ; preds = %bb.cl
  %i.lr = load ptr, ptr %i.lm, align 8, !tbaa !11
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 48
  %i.lt = load ptr, ptr %i.ls, align 8
  %i.lu = invoke noundef signext i8 %i.lt(ptr noundef nonnull align 8 dereferenceable(570) %i.lm, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1222 unwind label %.loopexit.split-lp1937.loopexit.split-lp, !inline_history !66

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1222: ; preds = %.noexc1225, %bb.ck
  %.0.i.i.i1223 = phi i8 [ %i.lq, %bb.ck ], [ %i.lu, %.noexc1225 ]
  %i.lv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.lg, i8 noundef signext %.0.i.i.i1223)
          to label %.noexc1227 unwind label %.loopexit.split-lp1937.loopexit.split-lp

.noexc1227:                                       ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1222
  %i.lw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lv)
          to label %_ZNSolsEPFRSoS_E.exit772.preheader unwind label %.loopexit.split-lp1937.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit772.preheader:               ; preds = %.noexc1227
  %i.lx = getelementptr inbounds nuw i8, ptr %i.kk, i64 8 ; 2 uses
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !205 ; 2 uses
  %i.lz = load ptr, ptr %i.kk, align 8, !tbaa !206 ; 2 uses
  %.not = icmp eq ptr %i.ly, %i.lz
  br i1 %.not, label %_ZNSolsEPFRSoS_E.exit, label %.lr.ph2024.preheader

.lr.ph2024.preheader:                             ; preds = %_ZNSolsEPFRSoS_E.exit772.preheader
  %.pre2365 = load i32, ptr %1, align 8, !tbaa !207 ; 2 uses
  br label %.lr.ph2024

_ZNSolsEPFRSoS_E.exit:                            ; preds = %_ZNSolsEPFRSoS_E.exit772, %_ZNSolsEPFRSoS_E.exit772.preheader
  %.sroa.01759.1.lcssa = phi ptr [ %.sroa.01759.02030, %_ZNSolsEPFRSoS_E.exit772.preheader ], [ %.sroa.01759.2.lcssa, %_ZNSolsEPFRSoS_E.exit772 ] ; 2 uses
  %.sroa.141768.1.lcssa = phi ptr [ %.sroa.141768.02031, %_ZNSolsEPFRSoS_E.exit772.preheader ], [ %.sroa.141768.2.lcssa, %_ZNSolsEPFRSoS_E.exit772 ] ; 2 uses
  %.sroa.23.1.lcssa = phi ptr [ %.sroa.23.02032, %_ZNSolsEPFRSoS_E.exit772.preheader ], [ %.sroa.23.2.lcssa, %_ZNSolsEPFRSoS_E.exit772 ] ; 2 uses
  %.1572.lcssa = phi i32 [ %.05712034, %_ZNSolsEPFRSoS_E.exit772.preheader ], [ %.2573.lcssa, %_ZNSolsEPFRSoS_E.exit772 ] ; 2 uses
  %.1569.lcssa = phi float [ %.05682035, %_ZNSolsEPFRSoS_E.exit772.preheader ], [ %.2570.lcssa, %_ZNSolsEPFRSoS_E.exit772 ] ; 2 uses
  %indvars.iv.next2153 = add nuw nsw i64 %indvars.iv2152, 1 ; 2 uses
  %i.ma = load i32, ptr %i.hg, align 4, !tbaa !178
  %i.mb = add nsw i32 %i.ma, -1
  %i.mc = sext i32 %i.mb to i64
  %i.md = icmp slt i64 %indvars.iv.next2153, %i.mc
  br i1 %i.md, label %.lr.ph2036, label %_ZNSolsEPFRSoS_E.exit._crit_edge, !llvm.loop !67

.loopexit.split-lp1937.loopexit.split-lp:         ; preds = %.noexc1227, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1222, %.noexc1225, %bb.cl, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit768, %_ZNSolsEm.exit, %.lr.ph2036, %bb.cj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.my

.lr.ph2024:                                       ; preds = %.lr.ph2024.preheader, %_ZNSolsEPFRSoS_E.exit772
  %i.me = phi ptr [ %i.mz, %_ZNSolsEPFRSoS_E.exit772 ], [ %i.lz, %.lr.ph2024.preheader ] ; 2 uses
  %i.mf = phi ptr [ %i.na, %_ZNSolsEPFRSoS_E.exit772 ], [ %i.ly, %.lr.ph2024.preheader ]
  %i.mg = phi i32 [ %i.nb, %_ZNSolsEPFRSoS_E.exit772 ], [ %.pre2365, %.lr.ph2024.preheader ] ; 2 uses
  %i.mh = phi i32 [ %i.nc, %_ZNSolsEPFRSoS_E.exit772 ], [ %.pre2365, %.lr.ph2024.preheader ] ; 2 uses
  %.15692023 = phi float [ %.2570.lcssa, %_ZNSolsEPFRSoS_E.exit772 ], [ %.05682035, %.lr.ph2024.preheader ] ; 2 uses
  %.15722022 = phi i32 [ %.2573.lcssa, %_ZNSolsEPFRSoS_E.exit772 ], [ %.05712034, %.lr.ph2024.preheader ] ; 2 uses
  %.05792021 = phi i64 [ %i.nd, %_ZNSolsEPFRSoS_E.exit772 ], [ 0, %.lr.ph2024.preheader ] ; 3 uses
  %.sroa.23.12020 = phi ptr [ %.sroa.23.2.lcssa, %_ZNSolsEPFRSoS_E.exit772 ], [ %.sroa.23.02032, %.lr.ph2024.preheader ] ; 2 uses
  %.sroa.141768.12019 = phi ptr [ %.sroa.141768.2.lcssa, %_ZNSolsEPFRSoS_E.exit772 ], [ %.sroa.141768.02031, %.lr.ph2024.preheader ] ; 2 uses
  %.sroa.01759.12018 = phi ptr [ %.sroa.01759.2.lcssa, %_ZNSolsEPFRSoS_E.exit772 ], [ %.sroa.01759.02030, %.lr.ph2024.preheader ] ; 2 uses
  %i.mi = getelementptr inbounds nuw [40 x i8], ptr %i.me, i64 %.05792021
  %i.mj = load ptr, ptr %i.ko, align 8, !tbaa !152
  %i.mk = getelementptr inbounds nuw [16 x i8], ptr %i.mj, i64 %.05792021
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !210 ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 4
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ml, i64 16
  %i.mo = load float, ptr %i.ml, align 4, !tbaa !212, !noalias !213 ; 2 uses
  %i.mp = load <2 x float>, ptr %i.mm, align 4, !tbaa !24, !noalias !213 ; 3 uses
  %i.mq = load <12 x float>, ptr %i.mn, align 4   ; 4 uses
  %i.mr = icmp sgt i32 %i.mh, 0
  br i1 %i.mr, label %.lr.ph2011.preheader, label %_ZNSolsEPFRSoS_E.exit772

.lr.ph2011.preheader:                             ; preds = %.lr.ph2024
  %i.ms = shufflevector <12 x float> %i.mq, <12 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 poison>
  %i.mt = insertelement <4 x float> %i.ms, float 1.000000e+00, i64 3
  %i.mu = shufflevector <12 x float> %i.mq, <12 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 poison>
  %i.mv = insertelement <4 x float> %i.mu, float -0.000000e+00, i64 3
  %i.mw = shufflevector <12 x float> %i.mq, <12 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 poison>
  %i.mx = insertelement <4 x float> %i.mw, float -0.000000e+00, i64 3
  %i.my = shufflevector <12 x float> %i.mq, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 poison>
  br label %.lr.ph2011

_ZNSolsEPFRSoS_E.exit772.loopexit:                ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit
  %.pre2367 = load ptr, ptr %i.lx, align 8, !tbaa !205
  %.pre2368 = load ptr, ptr %i.kk, align 8, !tbaa !206
  br label %_ZNSolsEPFRSoS_E.exit772

_ZNSolsEPFRSoS_E.exit772:                         ; preds = %_ZNSolsEPFRSoS_E.exit772.loopexit, %.lr.ph2024
  %i.mz = phi ptr [ %i.me, %.lr.ph2024 ], [ %.pre2368, %_ZNSolsEPFRSoS_E.exit772.loopexit ] ; 2 uses
  %i.na = phi ptr [ %i.mf, %.lr.ph2024 ], [ %.pre2367, %_ZNSolsEPFRSoS_E.exit772.loopexit ] ; 2 uses
  %i.nb = phi i32 [ %i.mg, %.lr.ph2024 ], [ %i.px, %_ZNSolsEPFRSoS_E.exit772.loopexit ]
  %i.nc = phi i32 [ %i.mh, %.lr.ph2024 ], [ %i.px, %_ZNSolsEPFRSoS_E.exit772.loopexit ]
  %.sroa.01759.2.lcssa = phi ptr [ %.sroa.01759.12018, %.lr.ph2024 ], [ %.sroa.01759.4, %_ZNSolsEPFRSoS_E.exit772.loopexit ] ; 2 uses
  %.sroa.141768.2.lcssa = phi ptr [ %.sroa.141768.12019, %.lr.ph2024 ], [ %.sroa.141768.3, %_ZNSolsEPFRSoS_E.exit772.loopexit ] ; 2 uses
  %.sroa.23.2.lcssa = phi ptr [ %.sroa.23.12020, %.lr.ph2024 ], [ %.sroa.23.4, %_ZNSolsEPFRSoS_E.exit772.loopexit ] ; 2 uses
  %.2573.lcssa = phi i32 [ %.15722022, %.lr.ph2024 ], [ %i.pa, %_ZNSolsEPFRSoS_E.exit772.loopexit ] ; 2 uses
  %.2570.lcssa = phi float [ %.15692023, %.lr.ph2024 ], [ %i.py, %_ZNSolsEPFRSoS_E.exit772.loopexit ] ; 2 uses
  %i.nd = add nuw i64 %.05792021, 1               ; 2 uses
  %i.ne = ptrtoint ptr %i.na to i64
  %i.nf = ptrtoint ptr %i.mz to i64
  %i.ng = sub i64 %i.ne, %i.nf
  %i.nh = sdiv exact i64 %i.ng, 40
  %i.ni = icmp ult i64 %i.nd, %i.nh
  br i1 %i.ni, label %.lr.ph2024, label %_ZNSolsEPFRSoS_E.exit, !llvm.loop !70

.lr.ph2011:                                       ; preds = %.lr.ph2011.preheader, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit
  %i.nj = phi i32 [ %i.px, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit ], [ %i.mg, %.lr.ph2011.preheader ]
  %indvars.iv2149 = phi i64 [ %indvars.iv.next2150, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit ], [ 0, %.lr.ph2011.preheader ] ; 2 uses
  %.25702009 = phi float [ %i.py, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit ], [ %.15692023, %.lr.ph2011.preheader ]
  %.25732008 = phi i32 [ %i.pa, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit ], [ %.15722022, %.lr.ph2011.preheader ]
  %.sroa.23.22006 = phi ptr [ %.sroa.23.4, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit ], [ %.sroa.23.12020, %.lr.ph2011.preheader ] ; 4 uses
  %.sroa.141768.22005 = phi ptr [ %.sroa.141768.3, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit ], [ %.sroa.141768.12019, %.lr.ph2011.preheader ] ; 3 uses
  %.sroa.01759.22004 = phi ptr [ %.sroa.01759.4, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit ], [ %.sroa.01759.12018, %.lr.ph2011.preheader ] ; 6 uses
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %indvars.iv2149
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !31
  %i.nm = sext i32 %i.nl to i64
  %i.nn = load ptr, ptr %i.kp, align 8, !tbaa !152
  %i.no = getelementptr inbounds nuw [16 x i8], ptr %i.nn, i64 %i.nm
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !210 ; 5 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 4
  %i.nr = getelementptr inbounds nuw i8, ptr %i.np, i64 28
  %i.ns = getelementptr inbounds nuw i8, ptr %i.np, i64 44
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !24, !noalias !214
  %i.nu = getelementptr inbounds nuw i8, ptr %i.np, i64 60
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !24, !noalias !214
  %i.nw = load <2 x float>, ptr %i.np, align 4, !tbaa !24, !noalias !215 ; 2 uses
  %i.nx = load float, ptr %i.nr, align 4, !tbaa !24, !noalias !214
  %i.ny = extractelement <2 x float> %i.nw, i64 0
  %i.nz = fsub float %i.ny, %i.mo
  %i.oa = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.nz, i64 0
  %i.ob = shufflevector <4 x float> %i.oa, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.oc = shufflevector <2 x float> %i.nw, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.od = shufflevector <4 x float> %i.my, <4 x float> %i.oc, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.oe = load <2 x float>, ptr %i.nq, align 4, !tbaa !24, !noalias !215 ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %i.oe, %i.mp
  %i.of = extractelement <2 x float> %foldExtExtBinop, i64 0
  %foldExtExtBinop2653 = fsub <2 x float> %i.oe, %i.mp
  %i.og = shufflevector <2 x float> %foldExtExtBinop2653, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.oh = insertelement <4 x float> poison, float %i.of, i64 0
  %i.oi = insertelement <4 x float> %i.oh, float %i.nx, i64 1
  %i.oj = shufflevector <4 x float> %i.oi, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ok = fmul <4 x float> %i.oj, %i.mt
  %i.ol = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ob, <4 x float> %i.mv, <4 x float> %i.ok)
  %i.om = shufflevector <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x float> %i.og, <4 x i32> <i32 5, i32 1, i32 poison, i32 poison>
  %i.on = shufflevector <4 x float> %i.om, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.oo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.on, <4 x float> %i.mx, <4 x float> %i.ol)
  %i.op = fadd <4 x float> %i.od, %i.oo           ; 3 uses
  %i.oq = extractelement <4 x float> %i.op, i64 0
  %i.or = fadd float %i.mo, %i.oq
  %i.os = shufflevector <4 x float> %i.op, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ot = fadd <2 x float> %i.mp, %i.os
  %i.ou = insertelement <2 x float> poison, float %i.nt, i64 0
  %i.ov = insertelement <2 x float> %i.ou, float %i.nv, i64 1
  %i.ow = fadd <2 x float> %i.oe, %i.ov
  %i.ox = extractelement <4 x float> %i.op, i64 3
  %i.oy = fsub float %i.or, %i.ox
  %i.oz = fsub <2 x float> %i.ot, %i.ow           ; 2 uses
  %i.pa = add nsw i32 %.25732008, 1               ; 2 uses
  %i.pb = fpext float %i.oy to double             ; 2 uses
  %68 = call double @llvm.fmuladd.f64(double %i.pb, double %i.pb, double 0.000000e+00)
  %i.pc = extractelement <2 x float> %i.oz, i64 0
  %i.pd = fpext float %i.pc to double             ; 2 uses
  %i.pe = call double @llvm.fmuladd.f64(double %i.pd, double %i.pd, double %68)
  %i.pf = extractelement <2 x float> %i.oz, i64 1
  %i.pg = fpext float %i.pf to double             ; 2 uses
  %i.ph = call noundef double @llvm.fmuladd.f64(double %i.pg, double %i.pg, double %i.pe)
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %i.ph)
  %i.pi = fptrunc double %sqrt.i to float         ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.141768.22005, %.sroa.23.22006
  br i1 %.not.i.i, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph2011
  store float %i.pi, ptr %.sroa.141768.22005, align 4, !tbaa !24
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

bb.cn:                                            ; preds = %.lr.ph2011
  %i.pj = ptrtoint ptr %.sroa.23.22006 to i64
  %i.pk = ptrtoint ptr %.sroa.01759.22004 to i64
  %i.pl = sub i64 %i.pj, %i.pk                    ; 6 uses
  %i.pm = icmp eq i64 %i.pl, 9223372036854775804
  br i1 %i.pm, label %bb.co, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #22
          to label %.noexc774 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc774:                                        ; preds = %bb.co
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.cn
  %i.pn = ashr exact i64 %i.pl, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.pn, i64 1)
  %i.po = add nsw i64 %.sroa.speculated.i.i.i.i, %i.pn ; 2 uses
  %i.pp = icmp ult i64 %i.po, %i.pn
  %i.pq = call i64 @llvm.umin.i64(i64 %i.po, i64 2305843009213693951)
  %i.pr = select i1 %i.pp, i64 2305843009213693951, i64 %i.pq ; 3 uses
  %.not.i.i.i.i773 = icmp ne i64 %i.pr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i773)
  %i.ps = shl nuw nsw i64 %i.pr, 2
  %i.pt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ps) #24
          to label %.noexc775 unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc775:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %i.pu = getelementptr inbounds i8, ptr %i.pt, i64 %i.pl ; 2 uses
  store float %i.pi, ptr %i.pu, align 4, !tbaa !24
  %i.pv = icmp sgt i64 %i.pl, 0
  br i1 %i.pv, label %bb.cp, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

bb.cp:                                            ; preds = %.noexc775
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.pt, ptr align 4 %.sroa.01759.22004, i64 %i.pl, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.cp, %.noexc775
  %.not.i17.i.i.i = icmp eq ptr %.sroa.01759.22004, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, label %bb.cq

bb.cq:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01759.22004, i64 noundef %i.pl) #23
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i: ; preds = %bb.cq, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %i.pr
  %.pre2366 = load i32, ptr %1, align 8, !tbaa !207
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

_ZNSt6vectorIfSaIfEE9push_backEOf.exit:           ; preds = %bb.cm, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i
  %i.px = phi i32 [ %.pre2366, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %i.nj, %bb.cm ] ; 4 uses
  %.sroa.01759.4 = phi ptr [ %i.pt, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %.sroa.01759.22004, %bb.cm ] ; 2 uses
  %.pn1919 = phi ptr [ %i.pu, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %.sroa.141768.22005, %bb.cm ]
  %.sroa.23.4 = phi ptr [ %i.pw, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %.sroa.23.22006, %bb.cm ] ; 2 uses
  %.sroa.141768.3 = getelementptr inbounds nuw i8, ptr %.pn1919, i64 4 ; 2 uses
  %i.py = fadd float %.25702009, %i.pi            ; 2 uses
  %indvars.iv.next2150 = add nuw nsw i64 %indvars.iv2149, 1 ; 2 uses
  %i.pz = sext i32 %i.px to i64
  %i.qa = icmp slt i64 %indvars.iv.next2150, %i.pz
  br i1 %i.qa, label %.lr.ph2011, label %_ZNSolsEPFRSoS_E.exit772.loopexit, !llvm.loop !75

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i, %bb.co
  %lpad.loopexit.split-lp2667 = landingpad { ptr, i32 }
          cleanup
  br label %bb.my

bb.cr:                                            ; preds = %.noexc762
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  %i.qb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.11, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit778 unwind label %bb.dv ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit778: ; preds = %bb.cr
  %i.qc = fpext float %.0568.lcssa to double
  %i.qd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.qc)
          to label %_ZNSolsEf.exit unwind label %bb.dv ; 2 uses

_ZNSolsEf.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit778
  %i.qe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qd, ptr noundef nonnull @.str.12, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit781 unwind label %bb.dv ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit781: ; preds = %_ZNSolsEf.exit
  %i.qf = sitofp i32 %.0571.lcssa to float
  %i.qg = fdiv float %.0568.lcssa, %i.qf
  %i.qh = fpext float %i.qg to double
  %i.qi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.qd, double noundef %i.qh)
          to label %_ZNSolsEf.exit783 unwind label %bb.dv ; 3 uses

_ZNSolsEf.exit783:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit781
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !11
  %i.qk = getelementptr i8, ptr %i.qj, i64 -24
  %i.ql = load i64, ptr %i.qk, align 8
  %i.qm = getelementptr inbounds i8, ptr %i.qi, i64 %i.ql
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 240
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !195 ; 6 uses
  %.not.i.i.i1230 = icmp eq ptr %i.qo, null
  br i1 %.not.i.i.i1230, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1231

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1231: ; preds = %_ZNSolsEf.exit783
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 56
  %i.qq = load i8, ptr %i.qp, align 8, !tbaa !201
  %.not.i1.i.i1232 = icmp eq i8 %i.qq, 0
  br i1 %.not.i1.i.i1232, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1231
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qo, i64 67
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !18
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1233

bb.ct:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1231
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.qo)
          to label %.noexc1236 unwind label %bb.dv

.noexc1236:                                       ; preds = %bb.ct
  %i.qt = load ptr, ptr %i.qo, align 8, !tbaa !11
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 48
  %i.qv = load ptr, ptr %i.qu, align 8
  %i.qw = invoke noundef signext i8 %i.qv(ptr noundef nonnull align 8 dereferenceable(570) %i.qo, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1233 unwind label %bb.dv, !inline_history !66

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1233: ; preds = %.noexc1236, %bb.cs
  %.0.i.i.i1234 = phi i8 [ %i.qs, %bb.cs ], [ %i.qw, %.noexc1236 ]
  %i.qx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.qi, i8 noundef signext %.0.i.i.i1234)
          to label %.noexc1238 unwind label %bb.dv

.noexc1238:                                       ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1233
  %i.qy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.qx)
          to label %_ZNSolsEPFRSoS_E.exit785 unwind label %bb.dv ; 0 uses

_ZNSolsEPFRSoS_E.exit785:                         ; preds = %.noexc1238
  %i.qz = ptrtoint ptr %.sroa.141768.0.lcssa to i64 ; 2 uses
  %i.ra = ptrtoint ptr %.sroa.01759.0.lcssa to i64 ; 3 uses
  %i.rb = sub i64 %i.qz, %i.ra                    ; 18 uses
  %.not.i.i.i.i786 = icmp eq ptr %.sroa.141768.0.lcssa, %.sroa.01759.0.lcssa ; 2 uses
  br i1 %.not.i.i.i.i786, label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit.thread, label %bb.cu

bb.cu:                                            ; preds = %_ZNSolsEPFRSoS_E.exit785
  %i.rc = icmp ugt i64 %i.rb, 9223372036854775804
  br i1 %i.rc, label %.noexc.i.i, label %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i, !prof !216

.noexc.i.i:                                       ; preds = %bb.cu
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #22
          to label %.noexc787 unwind label %bb.dv

.noexc787:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.cu
  %i.rd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rb) #24
          to label %.noexc788 unwind label %bb.dv ; 5 uses

.noexc788:                                        ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 %i.rb
  %i.rf = icmp samesign ugt i64 %i.rb, 4          ; 3 uses
  br i1 %i.rf, label %bb.cv, label %bb.cw, !prof !217

bb.cv:                                            ; preds = %.noexc788
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.rd, ptr align 4 %.sroa.01759.0.lcssa, i64 %i.rb, i1 false)
  br label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit

bb.cw:                                            ; preds = %.noexc788
  %i.rg = icmp eq i64 %i.rb, 4
  br i1 %i.rg, label %bb.cx, label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit

bb.cx:                                            ; preds = %bb.cw
  %i.rh = load float, ptr %.sroa.01759.0.lcssa, align 4, !tbaa !24
  store float %i.rh, ptr %i.rd, align 4, !tbaa !24
  br label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit

_ZNSt6vectorIfSaIfEEC2ERKS1_.exit:                ; preds = %bb.cx, %bb.cw, %bb.cv
  %i.ri = lshr exact i64 %i.rb, 2
  %i.rj = lshr i64 %i.rb, 3                       ; 2 uses
  %i.rk = icmp eq i64 %i.rj, 0
  br i1 %i.rk, label %_ZNSt6vectorIfSaIfEED2Ev.exit.thread2528, label %bb.cy

_ZNSt6vectorIfSaIfEED2Ev.exit.thread2528:         ; preds = %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.rd, i64 noundef %i.rb) #23
  br label %.lr.ph.i.preheader

_ZNSt6vectorIfSaIfEEC2ERKS1_.exit.thread:         ; preds = %_ZNSolsEPFRSoS_E.exit785
  %i.rl = getelementptr inbounds i8, ptr null, i64 %i.rb ; 2 uses
  %i.rm = ptrtoint ptr %i.rl to i64               ; 2 uses
  %i.rn = ashr exact i64 %i.rm, 2                 ; 2 uses
  %i.ro = lshr i64 %i.rn, 1                       ; 2 uses
  %i.rp = icmp eq i64 %i.ro, 0
end_hunk_1
begin_hunk_2_@_ZNK2cv6dynafu7ICPImpl17estimateWarpNodesERNS0_9WarpFieldERKNS_7Affine3IfEERKNS_11_InputArrayESA_SA_SA_SA_:bb.a
  %i.wm = icmp eq i32 %i.wb, 0
  %i.wn = zext i1 %i.wm to i32
  br label %bb.ha

bb.ds:                                            ; preds = %_ZNSolsEPFRSoS_E.exit._crit_edge
  %i.wo = landingpad { ptr, i32 }
          cleanup
  br label %.body763

bb.dt:                                            ; preds = %bb.cz
  %i.wp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i824 = icmp eq ptr %i.ru, null
  br i1 %.not.i.i.i824, label %_ZNSt6vectorIfSaIfEED2Ev.exit825, label %bb.du

bb.du:                                            ; preds = %.thread1865, %bb.dt
  %i.wq = phi { ptr, i32 } [ %i.sl, %.thread1865 ], [ %i.wp, %bb.dt ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ru, i64 noundef %i.rt) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit825

bb.dv:                                            ; preds = %.invoke, %.noexc1249, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1244, %.noexc1247, %bb.dl, %.noexc1238, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1233, %.noexc1236, %bb.ct, %_ZNSolsEm.exit816, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit814, %_ZNSolsEf.exit812, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit810, %_ZNSt6vectorIfSaIfEED2Ev.exit808, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i792, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit781, %_ZNSolsEf.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit778, %bb.cr
  %i.wr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit825

bb.dw:                                            ; preds = %bb.dg
  %i.ws = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i826 = icmp eq ptr %i.tp, null
  br i1 %.not.i.i.i826, label %_ZNSt6vectorIfSaIfEED2Ev.exit825, label %bb.dx

bb.dx:                                            ; preds = %.thread1867, %bb.dw
  %i.wt = phi { ptr, i32 } [ %i.uk, %.thread1867 ], [ %i.ws, %bb.dw ]
  call void @_ZdlPvm(ptr noundef nonnull %i.tp, i64 noundef %i.ts) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit825

bb.dy:                                            ; preds = %.lr.ph2066, %_ZNSolsEPFRSoS_E.exit820
  %i.wu = phi i32 [ %i.vo, %.lr.ph2066 ], [ %i.xh, %_ZNSolsEPFRSoS_E.exit820 ]
  %indvars.iv2206 = phi i64 [ 0, %.lr.ph2066 ], [ %indvars.iv.next2207, %_ZNSolsEPFRSoS_E.exit820 ] ; 6 uses
  %i.wv = load ptr, ptr %i.ge, align 8, !tbaa !202
  %i.ww = getelementptr inbounds nuw [24 x i8], ptr %i.wv, i64 %indvars.iv2206 ; 3 uses
  %i.wx = icmp eq i64 %indvars.iv2206, 0
  %.pre2369 = load ptr, ptr %i.gd, align 8, !tbaa !179 ; 2 uses
  %i.wy = getelementptr [24 x i8], ptr %.pre2369, i64 %indvars.iv2206
  %i.wz = getelementptr i8, ptr %i.wy, i64 -24
  %i.xa = select i1 %i.wx, ptr %i.cr, ptr %i.wz   ; 2 uses
  %i.xb = getelementptr inbounds nuw [24 x i8], ptr %.pre2369, i64 %indvars.iv2206
  %i.xc = getelementptr inbounds nuw i8, ptr %i.ww, i64 8 ; 2 uses
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !205 ; 2 uses
  %i.xe = load ptr, ptr %i.ww, align 8, !tbaa !206 ; 2 uses
  %.not2102 = icmp eq ptr %i.xd, %i.xe
  br i1 %.not2102, label %_ZNSolsEPFRSoS_E.exit820, label %.lr.ph2063

.lr.ph2063:                                       ; preds = %bb.dy
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01783.025122524, i64 %indvars.iv2206 ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 4
  %.pre2370 = load i32, ptr %1, align 8, !tbaa !207
  br label %bb.dz

_ZNSolsEPFRSoS_E.exit820.loopexit:                ; preds = %._crit_edge2060
  %.pre2377 = load i32, ptr %i.hg, align 4, !tbaa !178
  br label %_ZNSolsEPFRSoS_E.exit820

_ZNSolsEPFRSoS_E.exit820:                         ; preds = %_ZNSolsEPFRSoS_E.exit820.loopexit, %bb.dy
  %i.xh = phi i32 [ %.pre2377, %_ZNSolsEPFRSoS_E.exit820.loopexit ], [ %i.wu, %bb.dy ] ; 2 uses
  %indvars.iv.next2207 = add nuw nsw i64 %indvars.iv2206, 1 ; 2 uses
  %i.xi = add nsw i32 %i.xh, -1
  %i.xj = sext i32 %i.xi to i64
  %i.xk = icmp slt i64 %indvars.iv.next2207, %i.xj
  br i1 %i.xk, label %bb.dy, label %_ZNSolsEPFRSoS_E.exit820._crit_edge, !llvm.loop !78

bb.dz:                                            ; preds = %.lr.ph2063, %._crit_edge2060
  %i.xl = phi ptr [ %i.xe, %.lr.ph2063 ], [ %i.ze, %._crit_edge2060 ] ; 2 uses
  %i.xm = phi ptr [ %i.xd, %.lr.ph2063 ], [ %i.zf, %._crit_edge2060 ]
  %i.xn = phi i32 [ %.pre2370, %.lr.ph2063 ], [ %i.zg, %._crit_edge2060 ] ; 2 uses
  %.05822061 = phi i64 [ 0, %.lr.ph2063 ], [ %i.zh, %._crit_edge2060 ] ; 5 uses
  %i.xo = getelementptr inbounds nuw [40 x i8], ptr %i.xl, i64 %.05822061
  %i.xp = load ptr, ptr %i.xa, align 8, !tbaa !152
  %i.xq = getelementptr inbounds nuw [16 x i8], ptr %i.xp, i64 %.05822061
  %i.xr = load ptr, ptr %i.xq, align 8, !tbaa !210 ; 3 uses
  %i.xs = load <2 x float>, ptr %i.xr, align 4, !tbaa !24, !noalias !222 ; 3 uses
  %i.xt = load i32, ptr %i.xf, align 4, !tbaa !31
  %i.xu = trunc i64 %.05822061 to i32
  %i.xv = mul nsw i32 %i.xu, 6
  %i.xw = add nsw i32 %i.xt, %i.xv                ; 8 uses
  %i.xx = icmp sgt i32 %i.xn, 0
  br i1 %i.xx, label %.lr.ph2059, label %._crit_edge2060

.lr.ph2059:                                       ; preds = %bb.dz
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xr, i64 16
  %i.xz = load <12 x float>, ptr %i.xy, align 4   ; 4 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xr, i64 8
  %i.yb = load float, ptr %i.ya, align 4, !tbaa !223, !noalias !222
  %i.yc = sext i32 %i.xw to i64                   ; 42 uses
  %i.yd = add nsw i32 %i.xw, 1                    ; 3 uses
  %i.ye = sext i32 %i.yd to i64                   ; 2 uses
  %i.yf = add nsw i32 %i.xw, 2                    ; 3 uses
  %i.yg = sext i32 %i.yf to i64                   ; 2 uses
  %i.yh = add i32 %i.xw, 3                        ; 3 uses
  %i.yi = sext i32 %i.yh to i64                   ; 7 uses
  %i.yj = add i32 %i.xw, 4                        ; 3 uses
  %i.yk = sext i32 %i.yj to i64                   ; 7 uses
  %i.yl = add i32 %i.xw, 5                        ; 3 uses
  %i.ym = sext i32 %i.yl to i64                   ; 7 uses
  %i.yn = add nsw i64 %i.yc, 1                    ; 6 uses
  %i.yo = add nsw i64 %i.yc, 2                    ; 6 uses
  %i.yp = add nsw i64 %i.yc, 1                    ; 6 uses
  %i.yq = add nsw i64 %i.yc, 2                    ; 6 uses
  %i.yr = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.yb, i64 0 ; 2 uses
  %i.ys = shufflevector <12 x float> %i.xz, <12 x float> poison, <4 x i32> <i32 10, i32 2, i32 6, i32 poison>
  %i.yt = insertelement <4 x float> %i.ys, float -0.000000e+00, i64 3
  %i.yu = shufflevector <12 x float> %i.xz, <12 x float> poison, <4 x i32> <i32 8, i32 0, i32 4, i32 poison>
  %i.yv = insertelement <4 x float> %i.yu, float -0.000000e+00, i64 3
  %i.yw = shufflevector <12 x float> %i.xz, <12 x float> poison, <4 x i32> <i32 9, i32 1, i32 5, i32 poison>
  %i.yx = insertelement <4 x float> %i.yw, float 1.000000e+00, i64 3
  %i.yy = shufflevector <12 x float> %i.xz, <12 x float> poison, <4 x i32> <i32 11, i32 3, i32 7, i32 poison>
  %i.yz = insertelement <4 x float> %i.yy, float -0.000000e+00, i64 3
  %i.za = shufflevector <2 x float> %i.yr, <2 x float> %i.xs, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.zb = insertelement <4 x float> %i.za, float -0.000000e+00, i64 3
  %i.zc = shufflevector <2 x float> %i.xs, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.zd = shufflevector <2 x float> %i.xs, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  br label %bb.ea

._crit_edge2060.loopexit:                         ; preds = %_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.pre2375 = load ptr, ptr %i.xc, align 8, !tbaa !205
  %.pre2376 = load ptr, ptr %i.ww, align 8, !tbaa !206
  br label %._crit_edge2060

._crit_edge2060:                                  ; preds = %._crit_edge2060.loopexit, %bb.dz
  %i.ze = phi ptr [ %.pre2376, %._crit_edge2060.loopexit ], [ %i.xl, %bb.dz ] ; 2 uses
  %i.zf = phi ptr [ %.pre2375, %._crit_edge2060.loopexit ], [ %i.xm, %bb.dz ] ; 2 uses
  %i.zg = phi i32 [ %i.bjy, %._crit_edge2060.loopexit ], [ %i.xn, %bb.dz ]
  %i.zh = add nuw i64 %.05822061, 1               ; 2 uses
  %i.zi = ptrtoint ptr %i.zf to i64
  %i.zj = ptrtoint ptr %i.ze to i64
  %i.zk = sub i64 %i.zi, %i.zj
  %i.zl = sdiv exact i64 %i.zk, 40
  %i.zm = icmp ult i64 %i.zh, %i.zl
  br i1 %i.zm, label %bb.dz, label %_ZNSolsEPFRSoS_E.exit820.loopexit, !llvm.loop !81

bb.ea:                                            ; preds = %.lr.ph2059, %_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %indvars.iv2203 = phi i64 [ 0, %.lr.ph2059 ], [ %indvars.iv.next2204, %_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %indvars.iv2203
  %i.zo = load i32, ptr %i.zn, align 4, !tbaa !31 ; 2 uses
  %i.zp = sext i32 %i.zo to i64
  %i.zq = load ptr, ptr %i.xb, align 8, !tbaa !152
  %i.zr = getelementptr inbounds nuw [16 x i8], ptr %i.zq, i64 %i.zp ; 2 uses
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !210 ; 6 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zr, i64 8
  %i.zu = load ptr, ptr %i.zt, align 8, !tbaa !36 ; 9 uses
  %.not.i.i.i.i828 = icmp eq ptr %i.zu, null      ; 2 uses
  br i1 %.not.i.i.i.i828, label %bb.ee, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 8 ; 3 uses
  %i.zw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i = icmp eq i8 %i.zw, 0
  br i1 %.not.i.i.i.i.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.zx = load i32, ptr %i.zv, align 4, !tbaa !31
  %i.zy = add nsw i32 %i.zx, 1
  store i32 %i.zy, ptr %i.zv, align 4, !tbaa !31
  br label %bb.ee

bb.ed:                                            ; preds = %bb.eb
  %i.zz = atomicrmw volatile add ptr %i.zv, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ea, %bb.ec, %bb.ed
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zs, i64 28
  %i.aab = load float, ptr %i.aaa, align 4, !tbaa !24, !noalias !224 ; 10 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zs, i64 44
  %i.aad = load float, ptr %i.aac, align 4, !tbaa !24, !noalias !224 ; 10 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zs, i64 60
  %i.aaf = load float, ptr %i.aae, align 4, !tbaa !24, !noalias !224 ; 10 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %i.zs, i64 8
  %i.aah = load float, ptr %i.aag, align 4, !tbaa !223, !noalias !225
  %i.aai = load <2 x float>, ptr %i.zs, align 4, !tbaa !24, !noalias !225 ; 3 uses
  %i.aaj = shufflevector <2 x float> %i.aai, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.aak = fsub <4 x float> %i.aaj, %i.zc
  %i.aal = shufflevector <2 x float> %i.aai, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.aam = fsub <4 x float> %i.aal, %i.zd
  %i.aan = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aah, i64 0 ; 2 uses
  %i.aao = fsub <2 x float> %i.aan, %i.yr
  %i.aap = shufflevector <2 x float> %i.aao, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.aaq = fmul <4 x float> %i.aam, %i.yx
  %i.aar = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aak, <4 x float> %i.yv, <4 x float> %i.aaq)
  %i.aas = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aap, <4 x float> %i.yt, <4 x float> %i.aar)
  %i.aat = fadd <4 x float> %i.aas, %i.yz         ; 6 uses
  %i.aau = fadd <4 x float> %i.aat, %i.zb
  %i.aav = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.aaf, i64 0
  %i.aaw = insertelement <4 x float> %i.aav, float %i.aab, i64 1
  %i.aax = insertelement <4 x float> %i.aaw, float %i.aad, i64 2 ; 3 uses
  %i.aay = shufflevector <2 x float> %i.aan, <2 x float> %i.aai, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.aaz = insertelement <4 x float> %i.aay, float -0.000000e+00, i64 3
  %i.aba = fadd <4 x float> %i.aax, %i.aaz
  %i.abb = fsub <4 x float> %i.aau, %i.aba        ; 7 uses
  %i.abc = extractelement <4 x float> %i.abb, i64 1 ; 2 uses
  %i.abd = fpext float %i.abc to double           ; 2 uses
  %69 = call double @llvm.fmuladd.f64(double %i.abd, double %i.abd, double 0.000000e+00)
  %i.abe = extractelement <4 x float> %i.abb, i64 2 ; 7 uses
  %i.abf = fpext float %i.abe to double           ; 2 uses
  %i.abg = call double @llvm.fmuladd.f64(double %i.abf, double %i.abf, double %69)
  %i.abh = extractelement <4 x float> %i.abb, i64 0 ; 3 uses
  %i.abi = fpext float %i.abh to double           ; 2 uses
  %i.abj = call noundef double @llvm.fmuladd.f64(double %i.abi, double %i.abi, double %i.abg)
  %sqrt.i829 = call noundef double @llvm.sqrt.f64(double %i.abj) ; 2 uses
  %i.abk = fcmp ogt double %sqrt.i829, 1.000000e-02
  br i1 %i.abk, label %bb.gt, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  br i1 %i.vq, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.abl = fdiv double %sqrt.i829, %i.us          ; 2 uses
  %i.abm = call noundef double @llvm.fabs.f64(double %i.abl)
  %i.abn = fptrunc double %i.abl to float
  %i.abo = call float @llvm.fabs.f32(float %i.abn)
  %i.abp = fcmp ogt double %i.abm, f0x3FF5851ED0000000
  %i.abq = fdiv float 1.345000e+00, %i.abo
  %i.abr = select i1 %i.abp, float %i.abq, float 1.000000e+00
  br label %bb.eh

bb.eh:                                            ; preds = %bb.ef, %bb.eg
  %.0.i = phi float [ %i.abr, %bb.eg ], [ 0.000000e+00, %bb.ef ]
  %i.abs = getelementptr inbounds nuw i8, ptr %i.zs, i64 12
  %i.abt = load ptr, ptr %i.xa, align 8, !tbaa !152
  %i.abu = getelementptr inbounds nuw [16 x i8], ptr %i.abt, i64 %.05822061
  %i.abv = load ptr, ptr %i.abu, align 8, !tbaa !210
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 12
  %i.abx = load float, ptr %i.abw, align 4, !tbaa !24 ; 2 uses
  %i.aby = load float, ptr %i.abs, align 4, !tbaa !24 ; 2 uses
  %i.abz = fcmp olt float %i.abx, %i.aby
  %i.aca = select i1 %i.abz, float %i.abx, float %i.aby
  %i.acb = call noundef float @sqrtf(float noundef %i.aca) #21
  %i.acc = fneg float %i.abe                      ; 2 uses
  %i.acd = extractelement <4 x float> %i.aat, i64 2 ; 14 uses
  %i.ace = extractelement <4 x float> %i.aat, i64 1 ; 14 uses
  %i.acf = shufflevector <4 x float> %i.abb, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.acg = fneg <2 x float> %i.acf                ; 3 uses
  %i.ach = shufflevector <4 x float> %i.aat, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.aci = shufflevector <2 x float> %i.acg, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.acj = insertelement <2 x float> %i.aci, float %i.acc, i64 0
  %i.ack = fmul <2 x float> %i.ach, %i.acj
  %i.acl = shufflevector <4 x float> %i.aat, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.acm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acl, <2 x float> %i.acf, <2 x float> %i.ack) ; 3 uses
  %i.acn = extractelement <2 x float> %i.acg, i64 1
  %i.aco = fmul float %i.acd, %i.acn
  %i.acp = call float @llvm.fmuladd.f32(float %i.ace, float %i.abe, float %i.aco) ; 2 uses
  %i.acq = fmul float %.0.i, %i.acb               ; 98 uses
  %i.acr = fneg float %i.acq                      ; 32 uses
  %i.acs = load i32, ptr %i.vr, align 4, !tbaa !226
  %i.act = icmp slt i32 %i.acs, 2                 ; 2 uses
  br i1 %i.act, label %bb.fh, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.acu = load i32, ptr %50, align 8, !tbaa !227
  %i.acv = and i32 %i.acu, 16384
  %i.acw = icmp ne i32 %i.acv, 0                  ; 6 uses
  %i.acx = load i32, ptr %i.vs, align 4
  %i.acy = icmp eq i32 %i.acx, 1
  %or.cond.i.i830 = select i1 %i.acw, i1 true, i1 %i.acy
  br i1 %or.cond.i.i830, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.acz = load ptr, ptr %i.vv, align 8, !tbaa !228 ; 2 uses
  %i.ada = getelementptr inbounds [4 x i8], ptr %i.acz, i64 %i.yc
  br label %bb.en

bb.ek:                                            ; preds = %bb.ei
  %i.adb = load i32, ptr %i.vt, align 8, !tbaa !31
  %i.adc = icmp eq i32 %i.adb, 1
  br i1 %i.adc, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.add = load ptr, ptr %i.vv, align 8, !tbaa !228 ; 2 uses
  %i.ade = load i64, ptr %i.vw, align 8, !tbaa !37
  %i.adf = mul i64 %i.ade, %i.yc
  %i.adg = getelementptr inbounds nuw i8, ptr %i.add, i64 %i.adf
  br label %bb.en

bb.em:                                            ; preds = %bb.ek
  %i.adh = load i32, ptr %i.vu, align 4, !tbaa !229 ; 3 uses
  %i.adi = sdiv i32 %i.xw, %i.adh                 ; 2 uses
  %i.adj = mul nsw i32 %i.adi, %i.adh             ; 0 uses
  %.recomposed = srem i32 %i.xw, %i.adh
  %i.adk = load ptr, ptr %i.vv, align 8, !tbaa !228 ; 2 uses
  %i.adl = load i64, ptr %i.vw, align 8, !tbaa !37
  %i.adm = sext i32 %i.adi to i64
  %i.adn = mul i64 %i.adl, %i.adm
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adk, i64 %i.adn
  %i.adp = sext i32 %.recomposed to i64
  %i.adq = getelementptr inbounds [4 x i8], ptr %i.ado, i64 %i.adp
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el, %bb.ej
  %i.adr = phi ptr [ %i.adk, %bb.em ], [ %i.add, %bb.el ], [ %i.acz, %bb.ej ] ; 18 uses
  %.0.i.i.ph = phi ptr [ %i.adq, %bb.em ], [ %i.adg, %bb.el ], [ %i.ada, %bb.ej ] ; 2 uses
  %i.ads = load float, ptr %.0.i.i.ph, align 4, !tbaa !24
  %i.adt = extractelement <2 x float> %i.acm, i64 0
  %i.adu = call float @llvm.fmuladd.f32(float %i.acr, float %i.adt, float %i.ads)
  store float %i.adu, ptr %.0.i.i.ph, align 4, !tbaa !24
  %i.adv = load i32, ptr %i.vs, align 4
  %i.adw = icmp eq i32 %i.adv, 1
  %or.cond.i.i831 = select i1 %i.acw, i1 true, i1 %i.adw
  br i1 %or.cond.i.i831, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.adx = getelementptr inbounds [4 x i8], ptr %i.adr, i64 %i.ye
  br label %bb.es

bb.ep:                                            ; preds = %bb.en
  %i.ady = load i32, ptr %i.vt, align 8, !tbaa !31
  %i.adz = icmp eq i32 %i.ady, 1
  br i1 %i.adz, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.aea = load i64, ptr %i.vw, align 8, !tbaa !37
  %i.aeb = mul i64 %i.aea, %i.ye
  %i.aec = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.aeb
  br label %bb.es

bb.er:                                            ; preds = %bb.ep
  %i.aed = load i32, ptr %i.vu, align 4, !tbaa !229 ; 3 uses
  %i.aee = sdiv i32 %i.yd, %i.aed                 ; 2 uses
  %i.aef = mul nsw i32 %i.aee, %i.aed             ; 0 uses
  %.recomposed2725 = srem i32 %i.yd, %i.aed
  %i.aeg = load i64, ptr %i.vw, align 8, !tbaa !37
  %i.aeh = sext i32 %i.aee to i64
  %i.aei = mul i64 %i.aeg, %i.aeh
  %i.aej = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.aei
  %i.aek = sext i32 %.recomposed2725 to i64
  %i.ael = getelementptr inbounds [4 x i8], ptr %i.aej, i64 %i.aek
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq, %bb.eo
  %.0.i.i832.ph = phi ptr [ %i.ael, %bb.er ], [ %i.aec, %bb.eq ], [ %i.adx, %bb.eo ] ; 2 uses
  %i.aem = load float, ptr %.0.i.i832.ph, align 4, !tbaa !24
  %i.aen = extractelement <2 x float> %i.acm, i64 1
  %i.aeo = call float @llvm.fmuladd.f32(float %i.acr, float %i.aen, float %i.aem)
  store float %i.aeo, ptr %.0.i.i832.ph, align 4, !tbaa !24
  %i.aep = load i32, ptr %i.vs, align 4
  %i.aeq = icmp eq i32 %i.aep, 1
  %or.cond.i.i834 = select i1 %i.acw, i1 true, i1 %i.aeq
  br i1 %or.cond.i.i834, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.aer = getelementptr inbounds [4 x i8], ptr %i.adr, i64 %i.yg
  br label %bb.ex

bb.eu:                                            ; preds = %bb.es
  %i.aes = load i32, ptr %i.vt, align 8, !tbaa !31
  %i.aet = icmp eq i32 %i.aes, 1
  br i1 %i.aet, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.aeu = load i64, ptr %i.vw, align 8, !tbaa !37
  %i.aev = mul i64 %i.aeu, %i.yg
  %i.aew = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.aev
  br label %bb.ex

bb.ew:                                            ; preds = %bb.eu
  %i.aex = load i32, ptr %i.vu, align 4, !tbaa !229 ; 3 uses
  %i.aey = sdiv i32 %i.yf, %i.aex                 ; 2 uses
  %i.aez = mul nsw i32 %i.aey, %i.aex             ; 0 uses
  %.recomposed2726 = srem i32 %i.yf, %i.aex
  %i.afa = load i64, ptr %i.vw, align 8, !tbaa !37
  %i.afb = sext i32 %i.aey to i64
  %i.afc = mul i64 %i.afa, %i.afb
  %i.afd = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.afc
  %i.afe = sext i32 %.recomposed2726 to i64
  %i.aff = getelementptr inbounds [4 x i8], ptr %i.afd, i64 %i.afe
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev, %bb.et
  %.0.i.i835.ph = phi ptr [ %i.aff, %bb.ew ], [ %i.aew, %bb.ev ], [ %i.aer, %bb.et ] ; 2 uses
  %i.afg = load float, ptr %.0.i.i835.ph, align 4, !tbaa !24
  %i.afh = call float @llvm.fmuladd.f32(float %i.acr, float %i.acp, float %i.afg)
  store float %i.afh, ptr %.0.i.i835.ph, align 4, !tbaa !24
  %i.afi = load i32, ptr %i.vs, align 4
  %i.afj = icmp eq i32 %i.afi, 1
  %or.cond.i.i837 = select i1 %i.acw, i1 true, i1 %i.afj
  br i1 %or.cond.i.i837, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.afk = getelementptr inbounds [4 x i8], ptr %i.adr, i64 %i.yi
  br label %bb.fc

bb.ez:                                            ; preds = %bb.ex
  %i.afl = load i32, ptr %i.vt, align 8, !tbaa !31
  %i.afm = icmp eq i32 %i.afl, 1
  br i1 %i.afm, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.afn = load i64, ptr %i.vw, align 8, !tbaa !37
  %i.afo = mul i64 %i.afn, %i.yi
  %i.afp = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.afo
  br label %bb.fc

bb.fb:                                            ; preds = %bb.ez
end_hunk_2
begin_hunk_3_@_ZNK2cv6dynafu7ICPImpl17estimateWarpNodesERNS0_9WarpFieldERKNS_7Affine3IfEERKNS_11_InputArrayESA_SA_SA_SA_:bb.a
  %.sink.i940 = getelementptr inbounds nuw i8, ptr %i.bqo, i64 %.sink.idx.i939
  %i.bqs = zext nneg i32 %i.bql to i64
  %i.bqt = getelementptr inbounds nuw [12 x i8], ptr %.sink.i940, i64 %i.bqs
  %i.bqu = load i32, ptr %i.bmj, align 4, !tbaa !226
  %i.bqv = icmp slt i32 %i.bqu, 2
  %i.bqw = load ptr, ptr %i.bmk, align 8, !tbaa !228
  %i.bqx = load i64, ptr %i.bml, align 8
  %i.bqy = mul i64 %i.bqx, %indvars.iv22122632
  %.sink.idx.i941 = select i1 %i.bqv, i64 0, i64 %i.bqy
  %.sink.i942 = getelementptr inbounds nuw i8, ptr %i.bqw, i64 %.sink.idx.i941
  %i.bqz = getelementptr inbounds nuw [12 x i8], ptr %.sink.i942, i64 %indvars.iv2209
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bqz, ptr noundef nonnull align 4 dereferenceable(12) %i.bqt, i64 12, i1 false)
  %i.bra = call float @llvm.floor.f32(float %i.bpy)
  %i.brb = call float @llvm.floor.f32(float %i.bqe)
  %i.brc = insertelement <2 x float> poison, float %i.bra, i64 0
  %i.brd = insertelement <2 x float> %i.brc, float %i.brb, i64 1
  %i.bre = fptosi <2 x float> %i.brd to <2 x i32> ; 3 uses
  %i.brf = sitofp <2 x i32> %i.bre to <2 x float>
  %i.brg = fsub <2 x float> %i.bpx, %i.brf        ; 2 uses
  %i.brh = load ptr, ptr %i.bmm, align 8, !tbaa !228 ; 2 uses
  %i.bri = load i64, ptr %i.bmn, align 8, !tbaa !37 ; 2 uses
  %i.brj = extractelement <2 x i32> %i.bre, i64 1 ; 2 uses
  %i.brk = zext nneg i32 %i.brj to i64            ; 2 uses
  %i.brl = mul i64 %i.bri, %i.brk
  %i.brm = getelementptr inbounds nuw i8, ptr %i.brh, i64 %i.brl ; 2 uses
  %i.brn = add nuw nsw i32 %i.brj, 1
  %i.bro = zext nneg i32 %i.brn to i64            ; 2 uses
  %i.brp = mul i64 %i.bri, %i.bro
  %i.brq = getelementptr inbounds nuw i8, ptr %i.brh, i64 %i.brp ; 2 uses
  %i.brr = extractelement <2 x i32> %i.bre, i64 0 ; 2 uses
  %i.brs = zext nneg i32 %i.brr to i64            ; 4 uses
  %i.brt = getelementptr inbounds nuw [16 x i8], ptr %i.brm, i64 %i.brs ; 3 uses
  %i.bru = load float, ptr %i.brt, align 4, !tbaa !24, !noalias !233 ; 2 uses
  %i.brv = add nuw nsw i32 %i.brr, 1
  %i.brw = zext nneg i32 %i.brv to i64            ; 4 uses
  %i.brx = getelementptr inbounds nuw [16 x i8], ptr %i.brm, i64 %i.brw ; 3 uses
  %i.bry = load float, ptr %i.brx, align 4, !tbaa !24, !noalias !234
  %.fr = freeze float %i.bry                      ; 2 uses
  %i.brz = getelementptr inbounds nuw [16 x i8], ptr %i.brq, i64 %i.brs ; 3 uses
  %i.bsa = load float, ptr %i.brz, align 4, !tbaa !24, !noalias !235 ; 2 uses
  %i.bsb = getelementptr inbounds nuw [16 x i8], ptr %i.brq, i64 %i.brw ; 3 uses
  %i.bsc = load float, ptr %i.bsb, align 4, !tbaa !24, !noalias !236 ; 2 uses
  %or.cond1900 = fcmp ord float %i.bru, %.fr
  %i.bsd = fcmp ord float %i.bsa, 0.000000e+00
  %or.cond1901 = select i1 %or.cond1900, i1 %i.bsd, i1 false
  %i.bse = fcmp ord float %i.bsc, 0.000000e+00
  %or.cond1902 = select i1 %or.cond1901, i1 %i.bse, i1 false
  br i1 %or.cond1902, label %bb.io, label %.critedge

bb.io:                                            ; preds = %bb.in
  %i.bsf = load ptr, ptr %i.bmo, align 8, !tbaa !228 ; 2 uses
  %i.bsg = load i64, ptr %i.bmp, align 8, !tbaa !37 ; 2 uses
  %i.bsh = mul i64 %i.bsg, %i.brk
  %i.bsi = getelementptr inbounds nuw i8, ptr %i.bsf, i64 %i.bsh ; 2 uses
  %i.bsj = mul i64 %i.bsg, %i.bro
  %i.bsk = getelementptr inbounds nuw i8, ptr %i.bsf, i64 %i.bsj ; 2 uses
  %i.bsl = getelementptr inbounds nuw [16 x i8], ptr %i.bsi, i64 %i.brs ; 3 uses
  %i.bsm = load float, ptr %i.bsl, align 4, !tbaa !24, !noalias !237 ; 2 uses
  %i.bsn = getelementptr inbounds nuw [16 x i8], ptr %i.bsi, i64 %i.brw ; 3 uses
  %i.bso = load float, ptr %i.bsn, align 4, !tbaa !24, !noalias !238
  %.fr1916 = freeze float %i.bso                  ; 2 uses
  %i.bsp = getelementptr inbounds nuw [16 x i8], ptr %i.bsk, i64 %i.brs ; 3 uses
  %i.bsq = load float, ptr %i.bsp, align 4, !tbaa !24, !noalias !239 ; 2 uses
  %i.bsr = getelementptr inbounds nuw [16 x i8], ptr %i.bsk, i64 %i.brw ; 3 uses
  %i.bss = load float, ptr %i.bsr, align 4, !tbaa !24, !noalias !240 ; 2 uses
  %or.cond1903 = fcmp ord float %i.bsm, %.fr1916
  %i.bst = fcmp ord float %i.bsq, 0.000000e+00
  %or.cond1904 = select i1 %or.cond1903, i1 %i.bst, i1 false
  %i.bsu = fcmp ord float %i.bss, 0.000000e+00
  %or.cond1905 = select i1 %or.cond1904, i1 %i.bsu, i1 false
  br i1 %or.cond1905, label %bb.ip, label %.critedge

bb.ip:                                            ; preds = %bb.io
  %i.bsv = getelementptr inbounds nuw i8, ptr %i.bsr, i64 8
  %i.bsw = load float, ptr %i.bsv, align 4, !tbaa !24, !noalias !240
  %i.bsx = getelementptr inbounds nuw i8, ptr %i.bsr, i64 4
  %i.bsy = load float, ptr %i.bsx, align 4, !tbaa !24, !noalias !240
  %i.bsz = getelementptr inbounds nuw i8, ptr %i.bsp, i64 8
  %i.bta = load float, ptr %i.bsz, align 4, !tbaa !24, !noalias !239
  %i.btb = getelementptr inbounds nuw i8, ptr %i.bsp, i64 4
  %i.btc = load float, ptr %i.btb, align 4, !tbaa !24, !noalias !239
  %i.btd = getelementptr inbounds nuw i8, ptr %i.bsn, i64 8
  %i.bte = load float, ptr %i.btd, align 4, !tbaa !24, !noalias !238
  %i.btf = getelementptr inbounds nuw i8, ptr %i.bsn, i64 4
  %i.btg = load float, ptr %i.btf, align 4, !tbaa !24, !noalias !238
  %i.bth = getelementptr inbounds nuw i8, ptr %i.bsl, i64 8
  %i.bti = load float, ptr %i.bth, align 4, !tbaa !24, !noalias !237
  %i.btj = getelementptr inbounds nuw i8, ptr %i.bsl, i64 4
  %i.btk = load float, ptr %i.btj, align 4, !tbaa !24, !noalias !237
  %i.btl = getelementptr inbounds nuw i8, ptr %i.brt, i64 4
  %i.btm = load float, ptr %i.btl, align 4, !tbaa !24, !noalias !233
  %i.btn = getelementptr inbounds nuw i8, ptr %i.brx, i64 4
  %i.bto = load float, ptr %i.btn, align 4, !tbaa !24, !noalias !234
  %i.btp = getelementptr inbounds nuw i8, ptr %i.brz, i64 4
  %i.btq = load float, ptr %i.btp, align 4, !tbaa !24, !noalias !235
  %i.btr = getelementptr inbounds nuw i8, ptr %i.bsb, i64 4
  %i.bts = load float, ptr %i.btr, align 4, !tbaa !24, !noalias !236
  %i.btt = insertelement <2 x float> poison, float %.fr, i64 0
  %i.btu = insertelement <2 x float> %i.btt, float %i.bto, i64 1
  %i.btv = insertelement <2 x float> poison, float %i.bru, i64 0
  %i.btw = insertelement <2 x float> %i.btv, float %i.btm, i64 1 ; 2 uses
  %i.btx = fsub <2 x float> %i.btu, %i.btw
  %i.bty = shufflevector <2 x float> %i.brg, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.btz = fmul <2 x float> %i.bty, %i.btx
  %i.bua = fadd <2 x float> %i.btw, %i.btz        ; 2 uses
  %i.bub = insertelement <2 x float> poison, float %i.bsc, i64 0
  %i.buc = insertelement <2 x float> %i.bub, float %i.bts, i64 1
  %i.bud = insertelement <2 x float> poison, float %i.bsa, i64 0
  %i.bue = insertelement <2 x float> %i.bud, float %i.btq, i64 1 ; 2 uses
  %i.buf = fsub <2 x float> %i.buc, %i.bue
  %i.bug = fmul <2 x float> %i.bty, %i.buf
  %i.buh = fadd <2 x float> %i.bue, %i.bug
  %i.bui = fsub <2 x float> %i.buh, %i.bua
  %i.buj = shufflevector <2 x float> %i.brg, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.buk = fmul <2 x float> %i.buj, %i.bui
  %i.bul = fadd <2 x float> %i.bua, %i.buk        ; 3 uses
  %i.bum = getelementptr inbounds nuw i8, ptr %i.brt, i64 8
  %i.bun = load float, ptr %i.bum, align 4, !tbaa !24, !noalias !233
  %i.buo = getelementptr inbounds nuw i8, ptr %i.brx, i64 8
  %i.bup = load float, ptr %i.buo, align 4, !tbaa !24, !noalias !234
  %i.buq = getelementptr inbounds nuw i8, ptr %i.brz, i64 8
  %i.bur = load float, ptr %i.buq, align 4, !tbaa !24, !noalias !235
  %i.bus = getelementptr inbounds nuw i8, ptr %i.bsb, i64 8
  %i.but = load float, ptr %i.bus, align 4, !tbaa !24, !noalias !236
  %i.buu = insertelement <2 x float> poison, float %.fr1916, i64 0
  %i.buv = insertelement <2 x float> %i.buu, float %i.btg, i64 1
  %i.buw = insertelement <2 x float> poison, float %i.bsm, i64 0
  %i.bux = insertelement <2 x float> %i.buw, float %i.btk, i64 1 ; 2 uses
  %i.buy = fsub <2 x float> %i.buv, %i.bux
  %i.buz = fmul <2 x float> %i.bty, %i.buy
  %i.bva = fadd <2 x float> %i.bux, %i.buz        ; 2 uses
  %i.bvb = insertelement <2 x float> poison, float %i.bss, i64 0
  %i.bvc = insertelement <2 x float> %i.bvb, float %i.bsy, i64 1
  %i.bvd = insertelement <2 x float> poison, float %i.bsq, i64 0
  %i.bve = insertelement <2 x float> %i.bvd, float %i.btc, i64 1 ; 2 uses
  %i.bvf = fsub <2 x float> %i.bvc, %i.bve
  %i.bvg = fmul <2 x float> %i.bty, %i.bvf
  %i.bvh = fadd <2 x float> %i.bve, %i.bvg
  %i.bvi = fsub <2 x float> %i.bvh, %i.bva
  %i.bvj = fmul <2 x float> %i.buj, %i.bvi
  %i.bvk = fadd <2 x float> %i.bva, %i.bvj        ; 3 uses
  %i.bvl = insertelement <2 x float> poison, float %i.bup, i64 0
  %i.bvm = insertelement <2 x float> %i.bvl, float %i.bte, i64 1
  %i.bvn = insertelement <2 x float> poison, float %i.bun, i64 0
  %i.bvo = insertelement <2 x float> %i.bvn, float %i.bti, i64 1 ; 2 uses
  %i.bvp = fsub <2 x float> %i.bvm, %i.bvo
  %i.bvq = fmul <2 x float> %i.bty, %i.bvp
  %i.bvr = fadd <2 x float> %i.bvo, %i.bvq        ; 2 uses
  %i.bvs = insertelement <2 x float> poison, float %i.but, i64 0
  %i.bvt = insertelement <2 x float> %i.bvs, float %i.bsw, i64 1
  %i.bvu = insertelement <2 x float> poison, float %i.bur, i64 0
  %i.bvv = insertelement <2 x float> %i.bvu, float %i.bta, i64 1 ; 2 uses
  %i.bvw = fsub <2 x float> %i.bvt, %i.bvv
  %i.bvx = fmul <2 x float> %i.bty, %i.bvw
  %i.bvy = fadd <2 x float> %i.bvv, %i.bvx
  %i.bvz = fsub <2 x float> %i.bvy, %i.bvr
  %i.bwa = fmul <2 x float> %i.buj, %i.bvz
  %i.bwb = fadd <2 x float> %i.bvr, %i.bwa        ; 2 uses
  %i.bwc = load i32, ptr %i.bmq, align 4, !tbaa !226
  %i.bwd = icmp slt i32 %i.bwc, 2
  %i.bwe = load ptr, ptr %i.bmr, align 8, !tbaa !228
  %i.bwf = load i64, ptr %i.bms, align 8
  %i.bwg = mul i64 %i.bwf, %indvars.iv22122632
  %.sink.idx.i1015 = select i1 %i.bwd, i64 0, i64 %i.bwg
  %.sink.i1016 = getelementptr inbounds nuw i8, ptr %i.bwe, i64 %.sink.idx.i1015
  %i.bwh = getelementptr inbounds nuw [12 x i8], ptr %.sink.i1016, i64 %indvars.iv2209 ; 2 uses
  store <2 x float> %i.bul, ptr %i.bwh, align 4, !tbaa !24
  %.sroa.71543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bwh, i64 8
  %i.bwi = extractelement <2 x float> %i.bwb, i64 0 ; 2 uses
  store float %i.bwi, ptr %.sroa.71543.0..sroa_idx, align 4, !tbaa !24
  %i.bwj = load i32, ptr %i.bmt, align 4, !tbaa !226
  %i.bwk = icmp slt i32 %i.bwj, 2
  %i.bwl = load ptr, ptr %i.bmu, align 8, !tbaa !228
  %i.bwm = load i64, ptr %i.bmv, align 8
  %i.bwn = mul i64 %i.bwm, %indvars.iv22122632
  %.sink.idx.i1017 = select i1 %i.bwk, i64 0, i64 %i.bwn
  %.sink.i1018 = getelementptr inbounds nuw i8, ptr %i.bwl, i64 %.sink.idx.i1017
  %i.bwo = getelementptr inbounds nuw [12 x i8], ptr %.sink.i1018, i64 %indvars.iv2209 ; 2 uses
  store <2 x float> %i.bvk, ptr %i.bwo, align 4, !tbaa !24
  %.sroa.91489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bwo, i64 8
  %i.bwp = extractelement <2 x float> %i.bwb, i64 1 ; 2 uses
  store float %i.bwp, ptr %.sroa.91489.0..sroa_idx, align 4, !tbaa !24
  %i.bwq = load i32, ptr %i.bmb, align 4, !tbaa !226
  %i.bwr = icmp slt i32 %i.bwq, 2
  %i.bws = load ptr, ptr %i.bmc, align 8, !tbaa !228
  %i.bwt = load i64, ptr %i.bmd, align 8
  %i.bwu = mul i64 %i.bwt, %indvars.iv22122632
  %.sink.idx.i1019 = select i1 %i.bwr, i64 0, i64 %i.bwu
  %.sink.i1020 = getelementptr inbounds nuw i8, ptr %i.bws, i64 %.sink.idx.i1019
  %i.bwv = getelementptr inbounds nuw [12 x i8], ptr %.sink.i1020, i64 %indvars.iv2209 ; 3 uses
  %i.bww = load float, ptr %i.bwv, align 4, !tbaa !24, !noalias !241
  %i.bwx = extractelement <2 x float> %i.bul, i64 0
  %i.bwy = fsub float %i.bww, %i.bwx              ; 3 uses
  %i.bwz = getelementptr inbounds nuw i8, ptr %i.bwv, i64 4
  %i.bxa = load float, ptr %i.bwz, align 4, !tbaa !24, !noalias !241
  %i.bxb = extractelement <2 x float> %i.bul, i64 1
  %i.bxc = fsub float %i.bxa, %i.bxb              ; 3 uses
  %i.bxd = getelementptr inbounds nuw i8, ptr %i.bwv, i64 8
  %i.bxe = load float, ptr %i.bxd, align 4, !tbaa !24, !noalias !241
  %i.bxf = fsub float %i.bxe, %i.bwi              ; 3 uses
  %70 = call float @llvm.fmuladd.f32(float %i.bwy, float %i.bwy, float 0.000000e+00)
  %i.bxg = call float @llvm.fmuladd.f32(float %i.bxc, float %i.bxc, float %70)
  %i.bxh = call noundef float @llvm.fmuladd.f32(float %i.bxf, float %i.bxf, float %i.bxg)
  %i.bxi = fcmp ogt float %i.bxh, 4.000000e-04
  br i1 %i.bxi, label %.critedge, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.bxj = extractelement <2 x float> %i.bvk, i64 1
  %i.bxk = fmul float %i.bxj, %i.bxc
  %i.bxl = extractelement <2 x float> %i.bvk, i64 0
  %i.bxm = call float @llvm.fmuladd.f32(float %i.bxl, float %i.bwy, float %i.bxk)
  %i.bxn = call noundef float @llvm.fmuladd.f32(float %i.bwp, float %i.bxf, float %i.bxm)
  store float %i.bxn, ptr %i.a, align 4, !tbaa !24
  invoke void @_ZNSt6vectorIfSaIfEE9push_backERKf(ptr noundef nonnull align 8 dereferenceable(24) %53, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.ir unwind label %bb.is

bb.ir:                                            ; preds = %bb.iq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.critedge

.critedge:                                        ; preds = %bb.ij, %bb.in, %bb.ir, %bb.ip, %bb.io, %bb.im, %bb.il, %bb.ik
  %indvars.iv.next2210 = add nuw nsw i64 %indvars.iv2209, 1
  %i.bxo = load i32, ptr %i.wa, align 8, !tbaa !221 ; 2 uses
  %i.bxp = icmp slt i32 %i.bxo, 3
  br i1 %i.bxp, label %.lr.ph2068, label %.preheader1928._crit_edge, !llvm.loop !106

bb.is:                                            ; preds = %bb.iq
  %i.bxq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit1081

bb.it:                                            ; preds = %bb.hw, %bb.hv
  %i.bxr = getelementptr inbounds i8, ptr %i.bnv, i64 %i.bnw ; 2 uses
  %i.bxs = ashr exact i64 %i.bnw, 2               ; 3 uses
  %i.bxt = lshr i64 %i.bxs, 1                     ; 2 uses
  %i.bxu = icmp eq i64 %i.bxt, 0
  br i1 %i.bxu, label %_ZNK2cv6dynafu7ICPImpl6medianESt6vectorIfSaIfEE.exit1032, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %.idx = shl i64 %i.bxt, 2                       ; 3 uses
  %i.bxv = getelementptr i8, ptr %i.bnv, i64 %.idx ; 3 uses
  %i.bxw = icmp eq ptr %i.bnt, %i.bnu             ; 2 uses
  %i.bxx = icmp eq i64 %.idx, %i.bnw
  %or.cond.i.i1023 = or i1 %i.bxw, %i.bxx
  br i1 %or.cond.i.i1023, label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit.i1025, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.bxy = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bxs, i1 true)
  %i.bxz = shl nuw nsw i64 %i.bxy, 1
  %i.bya = xor i64 %i.bxz, 126
  invoke void @_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_(ptr %i.bnv, ptr nonnull %i.bxv, ptr nonnull %i.bxr, i64 noundef %i.bya)
          to label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit.i1025 unwind label %bb.jl

_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit.i1025: ; preds = %bb.iv, %bb.iu
  %i.byb = load float, ptr %i.bxv, align 4, !tbaa !24 ; 2 uses
  %i.byc = and i64 %i.bnw, 8
  %i.byd = icmp eq i64 %i.byc, 0
  br i1 %i.byd, label %bb.iw, label %_ZNK2cv6dynafu7ICPImpl6medianESt6vectorIfSaIfEE.exit1032.thread

bb.iw:                                            ; preds = %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit.i1025
  %i.bye = getelementptr i8, ptr %i.bxv, i64 -4   ; 2 uses
  %i.byf = add i64 %.idx, -4
  %i.byg = icmp eq i64 %i.byf, %i.bnw
  %or.cond.i14.i1027 = or i1 %i.bxw, %i.byg
  br i1 %or.cond.i14.i1027, label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit15.i1029, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.byh = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bxs, i1 true)
  %i.byi = shl nuw nsw i64 %i.byh, 1
  %i.byj = xor i64 %i.byi, 126
  invoke void @_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_(ptr nonnull %i.bnv, ptr nonnull %i.bye, ptr nonnull %i.bxr, i64 noundef %i.byj)
          to label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit15.i1029 unwind label %.thread1886

.thread1886:                                      ; preds = %bb.ix
  %i.byk = landingpad { ptr, i32 }
          cleanup
  br label %bb.jm

_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit15.i1029: ; preds = %bb.ix, %bb.iw
  %i.byl = load float, ptr %i.bye, align 4, !tbaa !24
  %i.bym = fadd float %i.byb, %i.byl
  %i.byn = fmul float %i.bym, 5.000000e-01
  br label %_ZNK2cv6dynafu7ICPImpl6medianESt6vectorIfSaIfEE.exit1032.thread

_ZNK2cv6dynafu7ICPImpl6medianESt6vectorIfSaIfEE.exit1032: ; preds = %bb.it
  %.not.i.i.i1033 = icmp eq ptr %i.bnv, null
  br i1 %.not.i.i.i1033, label %_ZNSt6vectorIfSaIfEED2Ev.exit1034, label %_ZNK2cv6dynafu7ICPImpl6medianESt6vectorIfSaIfEE.exit1032.thread

_ZNK2cv6dynafu7ICPImpl6medianESt6vectorIfSaIfEE.exit1032.thread: ; preds = %_ZNK2cv6dynafu7ICPImpl6medianESt6vectorIfSaIfEE.exit1032.thread2540, %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit.i1025, %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit15.i1029, %_ZNK2cv6dynafu7ICPImpl6medianESt6vectorIfSaIfEE.exit1032
  %.1.i10261882 = phi float [ 0.000000e+00, %_ZNK2cv6dynafu7ICPImpl6medianESt6vectorIfSaIfEE.exit1032 ], [ %i.byb, %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit.i1025 ], [ %i.byn, %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit15.i1029 ], [ 0.000000e+00, %_ZNK2cv6dynafu7ICPImpl6medianESt6vectorIfSaIfEE.exit1032.thread2540 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.bnv, i64 noundef %i.bnq) #23
  %.pre2382 = load ptr, ptr %53, align 8, !tbaa !25
  %.pre2383 = load ptr, ptr %i.bnl, align 8, !tbaa !25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit1034

_ZNSt6vectorIfSaIfEED2Ev.exit1034:                ; preds = %_ZNK2cv6dynafu7ICPImpl6medianESt6vectorIfSaIfEE.exit1032, %_ZNK2cv6dynafu7ICPImpl6medianESt6vectorIfSaIfEE.exit1032.thread
  %i.byo = phi ptr [ %i.bnt, %_ZNK2cv6dynafu7ICPImpl6medianESt6vectorIfSaIfEE.exit1032 ], [ %.pre2383, %_ZNK2cv6dynafu7ICPImpl6medianESt6vectorIfSaIfEE.exit1032.thread ] ; 3 uses
  %i.byp = phi ptr [ %i.bnu, %_ZNK2cv6dynafu7ICPImpl6medianESt6vectorIfSaIfEE.exit1032 ], [ %.pre2382, %_ZNK2cv6dynafu7ICPImpl6medianESt6vectorIfSaIfEE.exit1032.thread ] ; 5 uses
  %.1.i10261883 = phi float [ 0.000000e+00, %_ZNK2cv6dynafu7ICPImpl6medianESt6vectorIfSaIfEE.exit1032 ], [ %.1.i10261882, %_ZNK2cv6dynafu7ICPImpl6medianESt6vectorIfSaIfEE.exit1032.thread ] ; 3 uses
  %.not5.i1035 = icmp eq ptr %i.byp, %i.byo
  br i1 %.not5.i1035, label %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEZNK2cv6dynafu7ICPImpl17estimateWarpNodesERNS8_9WarpFieldERKNS7_7Affine3IfEERKNS7_11_InputArrayESI_SI_SI_SI_E3$_1ET0_T_SL_SK_.exit", label %.lr.ph.i1036.preheader

.lr.ph.i1036.preheader:                           ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit1034
  %i.byq = ptrtoaddr ptr %i.byo to i64
  %i.byr = ptrtoaddr ptr %i.byp to i64
  %i.bys = add i64 %i.byq, -4
  %i.byt = sub i64 %i.bys, %i.byr                 ; 2 uses
  %i.byu = lshr i64 %i.byt, 2
  %i.byv = add nuw nsw i64 %i.byu, 1              ; 2 uses
  %min.iters.check2638 = icmp ult i64 %i.byt, 28
  br i1 %min.iters.check2638, label %.lr.ph.i1036.preheader2661, label %vector.ph2639

vector.ph2639:                                    ; preds = %.lr.ph.i1036.preheader
  %n.vec2640 = and i64 %i.byv, 9223372036854775800 ; 3 uses
  %i.byw = shl i64 %n.vec2640, 2
  %i.byx = getelementptr i8, ptr %i.byp, i64 %i.byw
  %broadcast.splatinsert2641 = insertelement <4 x float> poison, float %.1.i10261883, i64 0
  %broadcast.splat2642 = shufflevector <4 x float> %broadcast.splatinsert2641, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body2643

vector.body2643:                                  ; preds = %vector.body2643, %vector.ph2639
  %index2644 = phi i64 [ 0, %vector.ph2639 ], [ %index.next2648, %vector.body2643 ] ; 2 uses
  %i.byy = shl i64 %index2644, 2
  %next.gep2645 = getelementptr i8, ptr %i.byp, i64 %i.byy ; 3 uses
  %i.byz = getelementptr i8, ptr %next.gep2645, i64 16 ; 2 uses
  %wide.load2646 = load <4 x float>, ptr %next.gep2645, align 4, !tbaa !24
  %wide.load2647 = load <4 x float>, ptr %i.byz, align 4, !tbaa !24
  %i.bza = fsub <4 x float> %wide.load2646, %broadcast.splat2642
  %i.bzb = fsub <4 x float> %wide.load2647, %broadcast.splat2642
  %i.bzc = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bza)
  %i.bzd = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bzb)
  store <4 x float> %i.bzc, ptr %next.gep2645, align 4, !tbaa !24
  store <4 x float> %i.bzd, ptr %i.byz, align 4, !tbaa !24
  %index.next2648 = add nuw i64 %index2644, 8     ; 2 uses
  %i.bze = icmp eq i64 %index.next2648, %n.vec2640
  br i1 %i.bze, label %middle.block2649, label %vector.body2643, !llvm.loop !107

middle.block2649:                                 ; preds = %vector.body2643
  %cmp.n2650 = icmp eq i64 %i.byv, %n.vec2640
  br i1 %cmp.n2650, label %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEZNK2cv6dynafu7ICPImpl17estimateWarpNodesERNS8_9WarpFieldERKNS7_7Affine3IfEERKNS7_11_InputArrayESI_SI_SI_SI_E3$_1ET0_T_SL_SK_.exit", label %.lr.ph.i1036.preheader2661

.lr.ph.i1036.preheader2661:                       ; preds = %.lr.ph.i1036.preheader, %middle.block2649
  %.sroa.02.06.i1037.ph = phi ptr [ %i.byp, %.lr.ph.i1036.preheader ], [ %i.byx, %middle.block2649 ]
  br label %.lr.ph.i1036

.lr.ph.i1036:                                     ; preds = %.lr.ph.i1036.preheader2661, %.lr.ph.i1036
  %.sroa.02.06.i1037 = phi ptr [ %i.bzi, %.lr.ph.i1036 ], [ %.sroa.02.06.i1037.ph, %.lr.ph.i1036.preheader2661 ] ; 3 uses
  %i.bzf = load float, ptr %.sroa.02.06.i1037, align 4, !tbaa !24
  %i.bzg = fsub float %i.bzf, %.1.i10261883
  %i.bzh = call noundef float @llvm.fabs.f32(float %i.bzg)
  store float %i.bzh, ptr %.sroa.02.06.i1037, align 4, !tbaa !24
  %i.bzi = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i1037, i64 4 ; 2 uses
  %.not.i1038 = icmp eq ptr %i.bzi, %i.byo
  br i1 %.not.i1038, label %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEZNK2cv6dynafu7ICPImpl17estimateWarpNodesERNS8_9WarpFieldERKNS7_7Affine3IfEERKNS7_11_InputArrayESI_SI_SI_SI_E3$_1ET0_T_SL_SK_.exit", label %.lr.ph.i1036, !llvm.loop !108

"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEZNK2cv6dynafu7ICPImpl17estimateWarpNodesERNS8_9WarpFieldERKNS7_7Affine3IfEERKNS7_11_InputArrayESI_SI_SI_SI_E3$_1ET0_T_SL_SK_.exit": ; preds = %.lr.ph.i1036, %middle.block2649, %_ZNSt6vectorIfSaIfEED2Ev.exit1034
  %i.bzj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.16, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1040 unwind label %bb.lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1040: ; preds = %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEZNK2cv6dynafu7ICPImpl17estimateWarpNodesERNS8_9WarpFieldERKNS7_7Affine3IfEERKNS7_11_InputArrayESI_SI_SI_SI_E3$_1ET0_T_SL_SK_.exit"
  %i.bzk = fpext float %.1.i10261883 to double
  %i.bzl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.bzk)
          to label %_ZNSolsEf.exit1042 unwind label %bb.lp ; 2 uses

_ZNSolsEf.exit1042:                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1040
  %i.bzm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bzl, ptr noundef nonnull @.str.14, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1044 unwind label %bb.lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1044: ; preds = %_ZNSolsEf.exit1042
  %i.bzn = load ptr, ptr %i.bnl, align 8, !tbaa !21
  %i.bzo = load ptr, ptr %53, align 8, !tbaa !22
  %i.bzp = ptrtoint ptr %i.bzn to i64
  %i.bzq = ptrtoint ptr %i.bzo to i64
  %i.bzr = sub i64 %i.bzp, %i.bzq
  %i.bzs = ashr exact i64 %i.bzr, 2
  %i.bzt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bzl, i64 noundef %i.bzs)
          to label %_ZNSolsEm.exit1046 unwind label %bb.lp ; 4 uses

_ZNSolsEm.exit1046:                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1044
  %i.bzu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bzt, ptr noundef nonnull @.str.15, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1048 unwind label %bb.lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1048: ; preds = %_ZNSolsEm.exit1046
  %i.bzv = load ptr, ptr %i.bzt, align 8, !tbaa !11
  %i.bzw = getelementptr i8, ptr %i.bzv, i64 -24
  %i.bzx = load i64, ptr %i.bzw, align 8
  %i.bzy = getelementptr inbounds i8, ptr %i.bzt, i64 %i.bzx
  %i.bzz = getelementptr inbounds nuw i8, ptr %i.bzy, i64 240
  %i.caa = load ptr, ptr %i.bzz, align 8, !tbaa !195 ; 6 uses
  %.not.i.i.i1252 = icmp eq ptr %i.caa, null
  br i1 %.not.i.i.i1252, label %.invoke2599, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1253

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1253: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1048
  %i.cab = getelementptr inbounds nuw i8, ptr %i.caa, i64 56
  %i.cac = load i8, ptr %i.cab, align 8, !tbaa !201
  %.not.i1.i.i1254 = icmp eq i8 %i.cac, 0
  br i1 %.not.i1.i.i1254, label %bb.iz, label %bb.iy

bb.iy:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1253
end_hunk_3
begin_hunk_4_@_ZNK2cv6dynafu7ICPImpl17estimateWarpNodesERNS0_9WarpFieldERKNS_7Affine3IfEERKNS_11_InputArrayESA_SA_SA_SA_:bb.a
  %i.cgu = getelementptr inbounds nuw i8, ptr %i.cgf, i64 8
  %i.cgv = load float, ptr %i.cgu, align 4, !tbaa !24
  %i.cgw = extractelement <2 x float> %i.cgo, i64 1
  %i.cgx = call noundef float @llvm.fmuladd.f32(float %i.cgv, float %i.cgw, float %i.cgt) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #21
  %i.cgy = load ptr, ptr %i.cfo, align 8, !tbaa !11
  %i.cgz = getelementptr inbounds nuw i8, ptr %i.cgy, i64 48
  %i.cha = load ptr, ptr %i.cgz, align 8
  %i.chb = invoke noundef nonnull align 4 dereferenceable(40) ptr %i.cha(ptr noundef nonnull align 8 dereferenceable(164) %i.cfo, i64 %.sroa.01424.4.insert.insert, i32 %i.cgi, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.ka unwind label %bb.kb

bb.ka:                                            ; preds = %bb.jz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %60, ptr noundef nonnull align 4 dereferenceable(40) %i.chb, i64 40, i1 false), !tbaa.struct !243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.chc = load i32, ptr %i.b, align 4, !tbaa !31 ; 3 uses
  %i.chd = icmp sgt i32 %i.chc, 0
  br i1 %i.chd, label %.lr.ph2077, label %.loopexit

.lr.ph2077:                                       ; preds = %bb.ka
  %i.che = load ptr, ptr %i.cr, align 8, !tbaa !152
  %i.chf = load ptr, ptr %i.dm, align 8, !tbaa !142, !nonnull !143, !align !144
  %i.chg = load ptr, ptr %i.chf, align 8, !tbaa !147
  %i.chh = getelementptr inbounds nuw i8, ptr %i.chg, i64 8
  %i.chi = load float, ptr %i.chh, align 8, !tbaa !252 ; 2 uses
  %i.chj = extractelement <3 x float> %i.cfs, i64 0
  %i.chk = fmul float %i.chj, %i.chi
  %i.chl = shufflevector <3 x float> %i.cfs, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.chm = insertelement <2 x float> poison, float %i.chi, i64 0
  %i.chn = shufflevector <2 x float> %i.chm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cho = fmul <2 x float> %i.chl, %i.chn        ; 2 uses
  %wide.trip.count = zext nneg i32 %i.chc to i64
  %i.chp = extractelement <2 x float> %i.cho, i64 0
  %i.chq = extractelement <2 x float> %i.cho, i64 1
  br label %bb.kc

._crit_edge2078:                                  ; preds = %bb.kc
  %i.chr = fpext float %i.cji to double
  %i.chs = fcmp uge double %i.chr, 1.000000e-05
  br i1 %i.chs, label %.lr.ph2092, label %.loopexit

.lr.ph2092:                                       ; preds = %._crit_edge2078
  %i.cht = load i32, ptr %i.bmt, align 4
  %i.chu = icmp slt i32 %i.cht, 2
  %i.chv = load ptr, ptr %i.bmu, align 8
  %invariant.gep = getelementptr [12 x i8], ptr %i.chv, i64 %indvars.iv2252
  %i.chw = fdiv float %i.cgx, %i.cby              ; 3 uses
  %i.chx = call float @llvm.fabs.f32(float %i.chw)
  %i.chy = fcmp ugt float %i.chx, 4.685100e+00
  %i.chz = fmul float %i.chw, %i.chw
  %i.cia = fdiv float %i.chz, f0x41AF99EF
  %i.cib = fsub float 1.000000e+00, %i.cia        ; 2 uses
  %i.cic = fmul float %i.cib, %i.cib
  %.0.i1134 = select i1 %i.chy, float 0.000000e+00, float %i.cic ; 2 uses
  %i.cid = load i32, ptr %i.ccf, align 4
  %.fr2116 = freeze i32 %i.cid
  %i.cie = icmp slt i32 %.fr2116, 2
  %i.cif = load ptr, ptr %i.ccg, align 8          ; 38 uses
  %i.cig = load i32, ptr %i.cci, align 4
  %i.cih = icmp slt i32 %i.cig, 2
  %i.cii = fneg float %.0.i1134
  %i.cij = fmul float %i.cgx, %i.cii
  %wide.trip.count2250 = zext nneg i32 %i.chc to i64
  br label %bb.kd

bb.kb:                                            ; preds = %bb.jz
  %i.cik = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit1081

bb.kc:                                            ; preds = %.lr.ph2077, %bb.kc
  %indvars.iv2215 = phi i64 [ 0, %.lr.ph2077 ], [ %indvars.iv.next2216, %bb.kc ] ; 3 uses
  %.05752074 = phi float [ 0.000000e+00, %.lr.ph2077 ], [ %i.cji, %bb.kc ]
  %i.cil = getelementptr inbounds nuw [4 x i8], ptr %60, i64 %indvars.iv2215
  %i.cim = load i32, ptr %i.cil, align 4, !tbaa !31
  %i.cin = sext i32 %i.cim to i64
  %i.cio = getelementptr inbounds nuw [16 x i8], ptr %i.che, i64 %i.cin
  %i.cip = load ptr, ptr %i.cio, align 8, !tbaa !210 ; 4 uses
  %i.ciq = load float, ptr %i.cip, align 4, !tbaa !212
  %i.cir = fsub float %i.ciq, %i.chk              ; 2 uses
  %i.cis = getelementptr inbounds nuw i8, ptr %i.cip, i64 4
  %i.cit = load float, ptr %i.cis, align 4, !tbaa !253
  %i.ciu = fsub float %i.cit, %i.chp              ; 2 uses
  %i.civ = getelementptr inbounds nuw i8, ptr %i.cip, i64 8
  %i.ciw = load float, ptr %i.civ, align 4, !tbaa !223
  %i.cix = fsub float %i.ciw, %i.chq              ; 2 uses
  %i.ciy = fmul float %i.ciu, %i.ciu
  %i.ciz = call float @llvm.fmuladd.f32(float %i.cir, float %i.cir, float %i.ciy)
  %i.cja = call float @llvm.fmuladd.f32(float %i.cix, float %i.cix, float %i.ciz)
  %i.cjb = fneg float %i.cja
  %i.cjc = getelementptr inbounds nuw i8, ptr %i.cip, i64 12
  %i.cjd = load float, ptr %i.cjc, align 4, !tbaa !255
  %i.cje = fmul float %i.cjd, 2.000000e+00
  %i.cjf = fdiv float %i.cjb, %i.cje
  %i.cjg = call noundef float @expf(float noundef %i.cjf) #21 ; 2 uses
  %i.cjh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv2215
  store float %i.cjg, ptr %i.cjh, align 4, !tbaa !24
  %i.cji = fadd float %.05752074, %i.cjg          ; 3 uses
  %indvars.iv.next2216 = add nuw nsw i64 %indvars.iv2215, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next2216, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge2078, label %bb.kc, !llvm.loop !111

bb.kd:                                            ; preds = %.lr.ph2092, %.split2090.us
  %indvars.iv2247 = phi i64 [ 0, %.lr.ph2092 ], [ %indvars.iv.next2248, %.split2090.us ] ; 3 uses
  %i.cjj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv2247
  %i.cjk = load float, ptr %i.cjj, align 4, !tbaa !24 ; 2 uses
  %i.cjl = fpext float %i.cjk to double
  %i.cjm = fcmp olt double %i.cjl, 1.000000e-02
  br i1 %i.cjm, label %.split2090.us, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.cjn = getelementptr inbounds nuw [4 x i8], ptr %60, i64 %indvars.iv2247
  %i.cjo = load i32, ptr %i.cjn, align 4, !tbaa !31 ; 2 uses
  %i.cjp = sext i32 %i.cjo to i64
  %i.cjq = load ptr, ptr %i.cr, align 8, !tbaa !152
  %i.cjr = getelementptr inbounds nuw [16 x i8], ptr %i.cjq, i64 %i.cjp
  %i.cjs = load ptr, ptr %i.cjr, align 8, !tbaa !210 ; 6 uses
  %i.cjt = getelementptr inbounds nuw i8, ptr %i.cjs, i64 16
  %i.cju = load ptr, ptr %i.dm, align 8, !tbaa !142, !nonnull !143, !align !144
  %i.cjv = load ptr, ptr %i.cju, align 8, !tbaa !147
  %i.cjw = getelementptr inbounds nuw i8, ptr %i.cjv, i64 8
  %i.cjx = load float, ptr %i.cjw, align 8, !tbaa !252
  %i.cjy = load float, ptr %i.cjt, align 4, !tbaa !24
  %i.cjz = getelementptr inbounds nuw i8, ptr %i.cjs, i64 20
  %i.cka = load float, ptr %i.cjz, align 4, !tbaa !24
  %i.ckb = getelementptr inbounds nuw i8, ptr %i.cjs, i64 24
  %i.ckc = load float, ptr %i.ckb, align 4, !tbaa !24
  %i.ckd = getelementptr inbounds nuw i8, ptr %i.cjs, i64 28
  %i.cke = load float, ptr %i.ckd, align 4, !tbaa !24
  %i.ckf = getelementptr inbounds nuw i8, ptr %i.cjs, i64 32
  %i.ckg = insertelement <3 x float> poison, float %i.cjx, i64 0
  %i.ckh = shufflevector <3 x float> %i.ckg, <3 x float> poison, <3 x i32> zeroinitializer
  %i.cki = fmul <3 x float> %i.cfs, %i.ckh
  %i.ckj = load <3 x float>, ptr %i.cjs, align 4, !tbaa !24
  %i.ckk = fsub <3 x float> %i.cki, %i.ckj        ; 6 uses
  %i.ckl = extractelement <3 x float> %i.ckk, i64 1
  %i.ckm = fmul float %i.ckl, %i.cka
  %i.ckn = extractelement <3 x float> %i.ckk, i64 0
  %i.cko = call float @llvm.fmuladd.f32(float %i.cjy, float %i.ckn, float %i.ckm)
  %i.ckp = extractelement <3 x float> %i.ckk, i64 2
  %i.ckq = call float @llvm.fmuladd.f32(float %i.ckc, float %i.ckp, float %i.cko)
  %i.ckr = fadd float %i.cke, %i.ckq              ; 2 uses
  %i.cks = load <8 x float>, ptr %i.ckf, align 4, !tbaa !24 ; 4 uses
  %i.ckt = shufflevector <3 x float> %i.ckk, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cku = shufflevector <8 x float> %i.cks, <8 x float> poison, <2 x i32> <i32 5, i32 1>
  %i.ckv = fmul <2 x float> %i.ckt, %i.cku
  %i.ckw = fneg float %i.ckr
  %i.ckx = shufflevector <8 x float> %i.cks, <8 x float> poison, <2 x i32> <i32 4, i32 0>
  %i.cky = shufflevector <3 x float> %i.ckk, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ckz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ckx, <2 x float> %i.cky, <2 x float> %i.ckv)
  %i.cla = shufflevector <8 x float> %i.cks, <8 x float> poison, <2 x i32> <i32 6, i32 2>
  %i.clb = shufflevector <3 x float> %i.ckk, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.clc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cla, <2 x float> %i.clb, <2 x float> %i.ckz)
  %i.cld = shufflevector <8 x float> %i.cks, <8 x float> poison, <2 x i32> <i32 7, i32 3>
  %i.cle = fadd <2 x float> %i.cld, %i.clc        ; 4 uses
  %i.clf = fneg <2 x float> %i.cle                ; 2 uses
  %i.clg = extractelement <2 x float> %i.cle, i64 0 ; 2 uses
  %i.clh = call float @llvm.fmuladd.f32(float %i.clg, float %i.ccb, float 0.000000e+00)
  %i.cli = call float @llvm.fmuladd.f32(float %i.clg, float %i.ccx, float 0.000000e+00)
  %i.clj = shufflevector <2 x float> %i.cle, <2 x float> %i.clf, <4 x i32> <i32 0, i32 3, i32 3, i32 3>
  %i.clk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.clj, <4 x float> %i.eg, <4 x float> zeroinitializer) ; 3 uses
  %i.cll = load i64, ptr %i.bmv, align 8
  %i.clm = mul i64 %i.cll, %indvars.iv22552634
  %.sink.idx.i1129 = select i1 %i.chu, i64 0, i64 %i.clm
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.sink.idx.i1129 ; 3 uses
  %i.cln = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %i.clo = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %i.clp = shufflevector <2 x float> %i.clf, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.clq = shufflevector <4 x float> %i.clp, <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 poison, i32 7>
  %i.clr = insertelement <4 x float> %i.clq, float %i.ckr, i64 2 ; 3 uses
  %i.cls = shufflevector <4 x float> %i.cct, <4 x float> %i.clk, <4 x i32> <i32 0, i32 poison, i32 5, i32 poison>
  %i.clt = shufflevector <4 x float> %i.cls, <4 x float> %i.eg, <4 x i32> <i32 0, i32 poison, i32 2, i32 5>
  %i.clu = insertelement <4 x float> %i.clt, float %i.clh, i64 1
  %i.clv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.clr, <4 x float> %i.ew, <4 x float> %i.clu)
  %i.clw = shufflevector <2 x float> %i.cle, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.clx = shufflevector <4 x float> <float poison, float poison, float 0.000000e+00, float -0.000000e+00>, <4 x float> %i.clw, <4 x i32> <i32 5, i32 poison, i32 2, i32 3>
  %i.cly = insertelement <4 x float> %i.clx, float %i.ckw, i64 1 ; 3 uses
  %i.clz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cly, <4 x float> %i.fd, <4 x float> %i.clv)
  %i.cma = shufflevector <4 x float> %i.ccy, <4 x float> %i.clk, <4 x i32> <i32 0, i32 poison, i32 6, i32 poison>
  %i.cmb = shufflevector <4 x float> %i.cma, <4 x float> %i.eg, <4 x i32> <i32 0, i32 poison, i32 2, i32 6>
  %i.cmc = insertelement <4 x float> %i.cmb, float %i.cli, i64 1
  %i.cmd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.clr, <4 x float> %i.fk, <4 x float> %i.cmc)
  %i.cme = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cly, <4 x float> %i.fo, <4 x float> %i.cmd)
  %i.cmf = shufflevector <4 x float> %i.ccz, <4 x float> %i.clk, <4 x i32> <i32 0, i32 4, i32 7, i32 poison>
  %i.cmg = shufflevector <4 x float> %i.cmf, <4 x float> %i.eg, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.cmh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.clr, <4 x float> %i.fy, <4 x float> %i.cmg)
  %i.cmi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cly, <4 x float> %i.gc, <4 x float> %i.cmh)
  %i.cmj = load float, ptr %gep, align 4, !tbaa !24, !noalias !256 ; 2 uses
  %i.cmk = load float, ptr %i.cln, align 4, !tbaa !24, !noalias !256 ; 2 uses
  %i.cml = load float, ptr %i.clo, align 4, !tbaa !24, !noalias !256 ; 2 uses
  %i.cmm = insertelement <4 x float> poison, float %i.cmj, i64 0
  %i.cmn = shufflevector <4 x float> %i.cmm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cmo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.clz, <4 x float> %i.cmn, <4 x float> zeroinitializer)
  %i.cmp = insertelement <4 x float> poison, float %i.cmk, i64 0
  %i.cmq = shufflevector <4 x float> %i.cmp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cmr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cme, <4 x float> %i.cmq, <4 x float> %i.cmo)
  %i.cms = insertelement <4 x float> poison, float %i.cml, i64 0
  %i.cmt = shufflevector <4 x float> %i.cms, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cmu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cmi, <4 x float> %i.cmt, <4 x float> %i.cmr) ; 13 uses
  %i.cmv = insertelement <2 x float> poison, float %i.cmj, i64 0
  %i.cmw = shufflevector <2 x float> %i.cmv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cmx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ccw, <2 x float> %i.cmw, <2 x float> zeroinitializer)
  %i.cmy = insertelement <2 x float> poison, float %i.cmk, i64 0
  %i.cmz = shufflevector <2 x float> %i.cmy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cna = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ccv, <2 x float> %i.cmz, <2 x float> %i.cmx)
  %i.cnb = insertelement <2 x float> poison, float %i.cml, i64 0
  %i.cnc = shufflevector <2 x float> %i.cnb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cnd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ccu, <2 x float> %i.cnc, <2 x float> %i.cna) ; 8 uses
  %i.cne = extractelement <4 x float> %i.cmu, i64 0 ; 3 uses
  %i.cnf = call float @llvm.fmuladd.f32(float %i.cne, float %i.cne, float 0.000000e+00) ; 2 uses
  %71 = shufflevector <4 x float> %i.cmu, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cng = shufflevector <4 x float> %i.cmu, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.cnh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %71, <2 x float> %i.cng, <2 x float> zeroinitializer) ; 4 uses
  %i.cni = shufflevector <4 x float> %i.cmu, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.cnj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cng, <2 x float> %i.cni, <2 x float> zeroinitializer) ; 4 uses
  %72 = shufflevector <4 x float> %i.cmu, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %73 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cmu, <4 x float> %72, <4 x float> zeroinitializer) ; 8 uses
  %i.cnk = shufflevector <2 x float> %i.cnd, <2 x float> poison, <4 x i32> zeroinitializer
  %i.cnl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cmu, <4 x float> %i.cnk, <4 x float> zeroinitializer) ; 9 uses
  %i.cnm = shufflevector <2 x float> %i.cnd, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cnn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cmu, <4 x float> %i.cnm, <4 x float> zeroinitializer) ; 9 uses
  %74 = shufflevector <2 x float> %i.cnd, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %75 = shufflevector <4 x float> %i.cmu, <4 x float> %74, <2 x i32> <i32 2, i32 4> ; 2 uses
  %76 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %75, <2 x float> %75, <2 x float> zeroinitializer) ; 4 uses
  %77 = shufflevector <2 x float> %i.cnd, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %78 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %77, <2 x float> %i.cnd, <2 x float> zeroinitializer) ; 4 uses
  %i.cno = fdiv float %i.cjk, %i.cji              ; 3 uses
  %i.cnp = load i32, ptr %.sroa.01783.025122524, align 4, !tbaa !31
  %i.cnq = mul nsw i32 %i.cjo, 6
  %i.cnr = add nsw i32 %i.cnp, %i.cnq             ; 3 uses
  %i.cns = fmul float %.0.i1134, %i.cno
  %i.cnt = fmul float %i.cno, %i.cns              ; 38 uses
  %i.cnu = sext i32 %i.cnr to i64                 ; 19 uses
  br i1 %i.cie, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.ke
  %i.cnv = load i64, ptr %i.cch, align 8
  %i.cnw = mul i64 %i.cnv, %i.cnu
  %.sink.i1136 = getelementptr inbounds nuw i8, ptr %i.cif, i64 %i.cnw
  %i.cnx = getelementptr inbounds [4 x i8], ptr %.sink.i1136, i64 %i.cnu ; 2 uses
  %i.cny = load float, ptr %i.cnx, align 4, !tbaa !24
  %i.cnz = call float @llvm.fmuladd.f32(float %i.cnt, float %i.cnf, float %i.cny)
  store float %i.cnz, ptr %i.cnx, align 4, !tbaa !24
  %i.coa = add nsw i64 %i.cnu, 1                  ; 12 uses
  %i.cob = load i64, ptr %i.cch, align 8
  %i.coc = mul i64 %i.cob, %i.cnu
  %.sink.i1136.1 = getelementptr inbounds nuw i8, ptr %i.cif, i64 %i.coc
  %i.cod = getelementptr inbounds [4 x i8], ptr %.sink.i1136.1, i64 %i.coa ; 2 uses
  %i.coe = load float, ptr %i.cod, align 4, !tbaa !24
  %79 = extractelement <2 x float> %i.cnh, i64 0  ; 2 uses
  %i.cof = call float @llvm.fmuladd.f32(float %i.cnt, float %79, float %i.coe)
  store float %i.cof, ptr %i.cod, align 4, !tbaa !24
  %i.cog = add nsw i64 %i.cnu, 2                  ; 12 uses
  %i.coh = load i64, ptr %i.cch, align 8
  %i.coi = mul i64 %i.coh, %i.cnu
  %.sink.i1136.2 = getelementptr inbounds nuw i8, ptr %i.cif, i64 %i.coi
  %i.coj = getelementptr inbounds [4 x i8], ptr %.sink.i1136.2, i64 %i.cog ; 2 uses
  %i.cok = load float, ptr %i.coj, align 4, !tbaa !24
  %i.col = extractelement <2 x float> %i.cnj, i64 0 ; 2 uses
  %i.com = call float @llvm.fmuladd.f32(float %i.cnt, float %i.col, float %i.cok)
  store float %i.com, ptr %i.coj, align 4, !tbaa !24
  %i.con = add nsw i64 %i.cnu, 3                  ; 12 uses
  %i.coo = load i64, ptr %i.cch, align 8
  %i.cop = mul i64 %i.coo, %i.cnu
  %.sink.i1136.3 = getelementptr inbounds nuw i8, ptr %i.cif, i64 %i.cop
  %i.coq = getelementptr inbounds [4 x i8], ptr %.sink.i1136.3, i64 %i.con ; 2 uses
  %i.cor = load float, ptr %i.coq, align 4, !tbaa !24
  %i.cos = extractelement <4 x float> %73, i64 0  ; 2 uses
  %i.cot = call float @llvm.fmuladd.f32(float %i.cnt, float %i.cos, float %i.cor)
  store float %i.cot, ptr %i.coq, align 4, !tbaa !24
  %i.cou = add nsw i64 %i.cnu, 4                  ; 12 uses
  %i.cov = load i64, ptr %i.cch, align 8
  %i.cow = mul i64 %i.cov, %i.cnu
  %.sink.i1136.4 = getelementptr inbounds nuw i8, ptr %i.cif, i64 %i.cow
  %i.cox = getelementptr inbounds [4 x i8], ptr %.sink.i1136.4, i64 %i.cou ; 2 uses
  %i.coy = load float, ptr %i.cox, align 4, !tbaa !24
  %i.coz = extractelement <4 x float> %i.cnl, i64 0 ; 2 uses
  %i.cpa = call float @llvm.fmuladd.f32(float %i.cnt, float %i.coz, float %i.coy)
  store float %i.cpa, ptr %i.cox, align 4, !tbaa !24
  %i.cpb = add nsw i64 %i.cnu, 5                  ; 12 uses
  %i.cpc = load i64, ptr %i.cch, align 8
  %i.cpd = mul i64 %i.cpc, %i.cnu
  %.sink.i1136.5 = getelementptr inbounds nuw i8, ptr %i.cif, i64 %i.cpd
  %i.cpe = getelementptr inbounds [4 x i8], ptr %.sink.i1136.5, i64 %i.cpb ; 2 uses
  %i.cpf = load float, ptr %i.cpe, align 4, !tbaa !24
  %i.cpg = extractelement <4 x float> %i.cnn, i64 0 ; 2 uses
  %i.cph = call float @llvm.fmuladd.f32(float %i.cnt, float %i.cpg, float %i.cpf)
  store float %i.cph, ptr %i.cpe, align 4, !tbaa !24
  %i.cpi = load i64, ptr %i.cch, align 8
  %i.cpj = mul i64 %i.cpi, %i.coa
  %.sink.i1136.12226 = getelementptr inbounds nuw i8, ptr %i.cif, i64 %i.cpj
  %i.cpk = getelementptr inbounds [4 x i8], ptr %.sink.i1136.12226, i64 %i.cnu ; 2 uses
  %i.cpl = load float, ptr %i.cpk, align 4, !tbaa !24
  %i.cpm = call float @llvm.fmuladd.f32(float %i.cnt, float %79, float %i.cpl)
  store float %i.cpm, ptr %i.cpk, align 4, !tbaa !24
  %i.cpn = load i64, ptr %i.cch, align 8
  %i.cpo = mul i64 %i.cpn, %i.coa
  %.sink.i1136.1.1 = getelementptr inbounds nuw i8, ptr %i.cif, i64 %i.cpo
  %i.cpp = getelementptr inbounds [4 x i8], ptr %.sink.i1136.1.1, i64 %i.coa ; 2 uses
  %i.cpq = load float, ptr %i.cpp, align 4, !tbaa !24
  %80 = extractelement <2 x float> %i.cnh, i64 1
  %i.cpr = call float @llvm.fmuladd.f32(float %i.cnt, float %80, float %i.cpq)
  store float %i.cpr, ptr %i.cpp, align 4, !tbaa !24
  %i.cps = load i64, ptr %i.cch, align 8
  %i.cpt = mul i64 %i.cps, %i.coa
  %.sink.i1136.2.1 = getelementptr inbounds nuw i8, ptr %i.cif, i64 %i.cpt
  %i.cpu = getelementptr inbounds [4 x i8], ptr %.sink.i1136.2.1, i64 %i.cog ; 2 uses
  %i.cpv = load float, ptr %i.cpu, align 4, !tbaa !24
  %i.cpw = extractelement <2 x float> %i.cnj, i64 1 ; 2 uses
  %i.cpx = call float @llvm.fmuladd.f32(float %i.cnt, float %i.cpw, float %i.cpv)
  store float %i.cpx, ptr %i.cpu, align 4, !tbaa !24
  %i.cpy = load i64, ptr %i.cch, align 8
  %i.cpz = mul i64 %i.cpy, %i.coa
  %.sink.i1136.3.1 = getelementptr inbounds nuw i8, ptr %i.cif, i64 %i.cpz
  %i.cqa = getelementptr inbounds [4 x i8], ptr %.sink.i1136.3.1, i64 %i.con ; 2 uses
  %i.cqb = load float, ptr %i.cqa, align 4, !tbaa !24
  %i.cqc = extractelement <4 x float> %73, i64 1  ; 2 uses
  %i.cqd = call float @llvm.fmuladd.f32(float %i.cnt, float %i.cqc, float %i.cqb)
  store float %i.cqd, ptr %i.cqa, align 4, !tbaa !24
  %i.cqe = load i64, ptr %i.cch, align 8
  %i.cqf = mul i64 %i.cqe, %i.coa
  %.sink.i1136.4.1 = getelementptr inbounds nuw i8, ptr %i.cif, i64 %i.cqf
  %i.cqg = getelementptr inbounds [4 x i8], ptr %.sink.i1136.4.1, i64 %i.cou ; 2 uses
  %i.cqh = load float, ptr %i.cqg, align 4, !tbaa !24
  %i.cqi = extractelement <4 x float> %i.cnl, i64 1 ; 2 uses
  %i.cqj = call float @llvm.fmuladd.f32(float %i.cnt, float %i.cqi, float %i.cqh)
  store float %i.cqj, ptr %i.cqg, align 4, !tbaa !24
  %i.cqk = load i64, ptr %i.cch, align 8
  %i.cql = mul i64 %i.cqk, %i.coa
  %.sink.i1136.5.1 = getelementptr inbounds nuw i8, ptr %i.cif, i64 %i.cql
  %i.cqm = getelementptr inbounds [4 x i8], ptr %.sink.i1136.5.1, i64 %i.cpb ; 2 uses
  %i.cqn = load float, ptr %i.cqm, align 4, !tbaa !24
  %i.cqo = extractelement <4 x float> %i.cnn, i64 1 ; 2 uses
  %i.cqp = call float @llvm.fmuladd.f32(float %i.cnt, float %i.cqo, float %i.cqn)
  store float %i.cqp, ptr %i.cqm, align 4, !tbaa !24
  %i.cqq = load i64, ptr %i.cch, align 8
  %i.cqr = mul i64 %i.cqq, %i.cog
  %.sink.i1136.22227 = getelementptr inbounds nuw i8, ptr %i.cif, i64 %i.cqr
  %i.cqs = getelementptr inbounds [4 x i8], ptr %.sink.i1136.22227, i64 %i.cnu ; 2 uses
  %i.cqt = load float, ptr %i.cqs, align 4, !tbaa !24
  %i.cqu = call float @llvm.fmuladd.f32(float %i.cnt, float %i.col, float %i.cqt)
  store float %i.cqu, ptr %i.cqs, align 4, !tbaa !24
  %i.cqv = load i64, ptr %i.cch, align 8
  %i.cqw = mul i64 %i.cqv, %i.cog
  %.sink.i1136.1.2 = getelementptr inbounds nuw i8, ptr %i.cif, i64 %i.cqw
  %i.cqx = getelementptr inbounds [4 x i8], ptr %.sink.i1136.1.2, i64 %i.coa ; 2 uses
  %i.cqy = load float, ptr %i.cqx, align 4, !tbaa !24
  %i.cqz = call float @llvm.fmuladd.f32(float %i.cnt, float %i.cpw, float %i.cqy)
  store float %i.cqz, ptr %i.cqx, align 4, !tbaa !24
  %i.cra = load i64, ptr %i.cch, align 8
  %i.crb = mul i64 %i.cra, %i.cog
  %.sink.i1136.2.2 = getelementptr inbounds nuw i8, ptr %i.cif, i64 %i.crb
  %i.crc = getelementptr inbounds [4 x i8], ptr %.sink.i1136.2.2, i64 %i.cog ; 2 uses
  %i.crd = load float, ptr %i.crc, align 4, !tbaa !24
  %81 = extractelement <2 x float> %76, i64 0
  %i.cre = call float @llvm.fmuladd.f32(float %i.cnt, float %81, float %i.crd)
  store float %i.cre, ptr %i.crc, align 4, !tbaa !24
  %i.crf = load i64, ptr %i.cch, align 8
  %i.crg = mul i64 %i.crf, %i.cog
  %.sink.i1136.3.2 = getelementptr inbounds nuw i8, ptr %i.cif, i64 %i.crg
  %i.crh = getelementptr inbounds [4 x i8], ptr %.sink.i1136.3.2, i64 %i.con ; 2 uses
  %i.cri = load float, ptr %i.crh, align 4, !tbaa !24
  %82 = extractelement <4 x float> %73, i64 2     ; 2 uses
  %i.crj = call float @llvm.fmuladd.f32(float %i.cnt, float %82, float %i.cri)
  store float %i.crj, ptr %i.crh, align 4, !tbaa !24
  %i.crk = load i64, ptr %i.cch, align 8
  %i.crl = mul i64 %i.crk, %i.cog
  %.sink.i1136.4.2 = getelementptr inbounds nuw i8, ptr %i.cif, i64 %i.crl
  %i.crm = getelementptr inbounds [4 x i8], ptr %.sink.i1136.4.2, i64 %i.cou ; 2 uses
  %i.crn = load float, ptr %i.crm, align 4, !tbaa !24
  %i.cro = extractelement <4 x float> %i.cnl, i64 2 ; 2 uses
  %i.crp = call float @llvm.fmuladd.f32(float %i.cnt, float %i.cro, float %i.crn)
  store float %i.crp, ptr %i.crm, align 4, !tbaa !24
  %i.crq = load i64, ptr %i.cch, align 8
  %i.crr = mul i64 %i.crq, %i.cog
  %.sink.i1136.5.2 = getelementptr inbounds nuw i8, ptr %i.cif, i64 %i.crr
  %i.crs = getelementptr inbounds [4 x i8], ptr %.sink.i1136.5.2, i64 %i.cpb ; 2 uses
  %i.crt = load float, ptr %i.crs, align 4, !tbaa !24
  %i.cru = extractelement <4 x float> %i.cnn, i64 2 ; 2 uses
  %i.crv = call float @llvm.fmuladd.f32(float %i.cnt, float %i.cru, float %i.crt)
  store float %i.crv, ptr %i.crs, align 4, !tbaa !24
  %i.crw = load i64, ptr %i.cch, align 8
  %i.crx = mul i64 %i.crw, %i.con
  %.sink.i1136.32228 = getelementptr inbounds nuw i8, ptr %i.cif, i64 %i.crx
  %i.cry = getelementptr inbounds [4 x i8], ptr %.sink.i1136.32228, i64 %i.cnu ; 2 uses
  %i.crz = load float, ptr %i.cry, align 4, !tbaa !24
  %i.csa = call float @llvm.fmuladd.f32(float %i.cnt, float %i.cos, float %i.crz)
  store float %i.csa, ptr %i.cry, align 4, !tbaa !24
  %i.csb = load i64, ptr %i.cch, align 8
  %i.csc = mul i64 %i.csb, %i.con
  %.sink.i1136.1.3 = getelementptr inbounds nuw i8, ptr %i.cif, i64 %i.csc
  %i.csd = getelementptr inbounds [4 x i8], ptr %.sink.i1136.1.3, i64 %i.coa ; 2 uses
  %i.cse = load float, ptr %i.csd, align 4, !tbaa !24
  %i.csf = call float @llvm.fmuladd.f32(float %i.cnt, float %i.cqc, float %i.cse)
  store float %i.csf, ptr %i.csd, align 4, !tbaa !24
  %i.csg = load i64, ptr %i.cch, align 8
  %i.csh = mul i64 %i.csg, %i.con
  %.sink.i1136.2.3 = getelementptr inbounds nuw i8, ptr %i.cif, i64 %i.csh
  %i.csi = getelementptr inbounds [4 x i8], ptr %.sink.i1136.2.3, i64 %i.cog ; 2 uses
  %i.csj = load float, ptr %i.csi, align 4, !tbaa !24
  %i.csk = call float @llvm.fmuladd.f32(float %i.cnt, float %82, float %i.csj)
  store float %i.csk, ptr %i.csi, align 4, !tbaa !24
  %i.csl = load i64, ptr %i.cch, align 8
  %i.csm = mul i64 %i.csl, %i.con
  %.sink.i1136.3.3 = getelementptr inbounds nuw i8, ptr %i.cif, i64 %i.csm
  %i.csn = getelementptr inbounds [4 x i8], ptr %.sink.i1136.3.3, i64 %i.con ; 2 uses
  %i.cso = load float, ptr %i.csn, align 4, !tbaa !24
  %83 = extractelement <4 x float> %73, i64 3
  %i.csp = call float @llvm.fmuladd.f32(float %i.cnt, float %83, float %i.cso)
  store float %i.csp, ptr %i.csn, align 4, !tbaa !24
  %i.csq = load i64, ptr %i.cch, align 8
  %i.csr = mul i64 %i.csq, %i.con
  %.sink.i1136.4.3 = getelementptr inbounds nuw i8, ptr %i.cif, i64 %i.csr
  %i.css = getelementptr inbounds [4 x i8], ptr %.sink.i1136.4.3, i64 %i.cou ; 2 uses
  %i.cst = load float, ptr %i.css, align 4, !tbaa !24
  %i.csu = extractelement <4 x float> %i.cnl, i64 3 ; 2 uses
  %i.csv = call float @llvm.fmuladd.f32(float %i.cnt, float %i.csu, float %i.cst)
  store float %i.csv, ptr %i.css, align 4, !tbaa !24
  %i.csw = load i64, ptr %i.cch, align 8
  %i.csx = mul i64 %i.csw, %i.con
  %.sink.i1136.5.3 = getelementptr inbounds nuw i8, ptr %i.cif, i64 %i.csx
  %i.csy = getelementptr inbounds [4 x i8], ptr %.sink.i1136.5.3, i64 %i.cpb ; 2 uses
  %i.csz = load float, ptr %i.csy, align 4, !tbaa !24
  %i.cta = extractelement <4 x float> %i.cnn, i64 3 ; 2 uses
  %i.ctb = call float @llvm.fmuladd.f32(float %i.cnt, float %i.cta, float %i.csz)
  store float %i.ctb, ptr %i.csy, align 4, !tbaa !24
  %i.ctc = load i64, ptr %i.cch, align 8
  %i.ctd = mul i64 %i.ctc, %i.cou
  %.sink.i1136.42229 = getelementptr inbounds nuw i8, ptr %i.cif, i64 %i.ctd
  %i.cte = getelementptr inbounds [4 x i8], ptr %.sink.i1136.42229, i64 %i.cnu ; 2 uses
  %i.ctf = load float, ptr %i.cte, align 4, !tbaa !24
  %i.ctg = call float @llvm.fmuladd.f32(float %i.cnt, float %i.coz, float %i.ctf)
  store float %i.ctg, ptr %i.cte, align 4, !tbaa !24
  %i.cth = load i64, ptr %i.cch, align 8
  %i.cti = mul i64 %i.cth, %i.cou
  %.sink.i1136.1.4 = getelementptr inbounds nuw i8, ptr %i.cif, i64 %i.cti
  %i.ctj = getelementptr inbounds [4 x i8], ptr %.sink.i1136.1.4, i64 %i.coa ; 2 uses
  %i.ctk = load float, ptr %i.ctj, align 4, !tbaa !24
  %i.ctl = call float @llvm.fmuladd.f32(float %i.cnt, float %i.cqi, float %i.ctk)
  store float %i.ctl, ptr %i.ctj, align 4, !tbaa !24
  %i.ctm = load i64, ptr %i.cch, align 8
  %i.ctn = mul i64 %i.ctm, %i.cou
  %.sink.i1136.2.4 = getelementptr inbounds nuw i8, ptr %i.cif, i64 %i.ctn
  %i.cto = getelementptr inbounds [4 x i8], ptr %.sink.i1136.2.4, i64 %i.cog ; 2 uses
  %i.ctp = load float, ptr %i.cto, align 4, !tbaa !24
  %i.ctq = call float @llvm.fmuladd.f32(float %i.cnt, float %i.cro, float %i.ctp)
  store float %i.ctq, ptr %i.cto, align 4, !tbaa !24
  %i.ctr = load i64, ptr %i.cch, align 8
  %i.cts = mul i64 %i.ctr, %i.cou
  %.sink.i1136.3.4 = getelementptr inbounds nuw i8, ptr %i.cif, i64 %i.cts
  %i.ctt = getelementptr inbounds [4 x i8], ptr %.sink.i1136.3.4, i64 %i.con ; 2 uses
  %i.ctu = load float, ptr %i.ctt, align 4, !tbaa !24
  %i.ctv = call float @llvm.fmuladd.f32(float %i.cnt, float %i.csu, float %i.ctu)
  store float %i.ctv, ptr %i.ctt, align 4, !tbaa !24
  %i.ctw = load i64, ptr %i.cch, align 8
  %i.ctx = mul i64 %i.ctw, %i.cou
  %.sink.i1136.4.4 = getelementptr inbounds nuw i8, ptr %i.cif, i64 %i.ctx
  %i.cty = getelementptr inbounds [4 x i8], ptr %.sink.i1136.4.4, i64 %i.cou ; 2 uses
  %i.ctz = load float, ptr %i.cty, align 4, !tbaa !24
  %84 = extractelement <2 x float> %76, i64 1
  %i.cua = call float @llvm.fmuladd.f32(float %i.cnt, float %84, float %i.ctz)
  store float %i.cua, ptr %i.cty, align 4, !tbaa !24
  %i.cub = load i64, ptr %i.cch, align 8
  %i.cuc = mul i64 %i.cub, %i.cou
  %.sink.i1136.5.4 = getelementptr inbounds nuw i8, ptr %i.cif, i64 %i.cuc
  %i.cud = getelementptr inbounds [4 x i8], ptr %.sink.i1136.5.4, i64 %i.cpb ; 2 uses
  %i.cue = load float, ptr %i.cud, align 4, !tbaa !24
  %85 = extractelement <2 x float> %78, i64 0     ; 2 uses
  %i.cuf = call float @llvm.fmuladd.f32(float %i.cnt, float %85, float %i.cue)
  store float %i.cuf, ptr %i.cud, align 4, !tbaa !24
  %i.cug = load i64, ptr %i.cch, align 8
  %i.cuh = mul i64 %i.cug, %i.cpb
  %.sink.i1136.52230 = getelementptr inbounds nuw i8, ptr %i.cif, i64 %i.cuh
  %i.cui = getelementptr inbounds [4 x i8], ptr %.sink.i1136.52230, i64 %i.cnu ; 2 uses
  %i.cuj = load float, ptr %i.cui, align 4, !tbaa !24
  %i.cuk = call float @llvm.fmuladd.f32(float %i.cnt, float %i.cpg, float %i.cuj)
  store float %i.cuk, ptr %i.cui, align 4, !tbaa !24
  %i.cul = load i64, ptr %i.cch, align 8
  %i.cum = mul i64 %i.cul, %i.cpb
  %.sink.i1136.1.5 = getelementptr inbounds nuw i8, ptr %i.cif, i64 %i.cum
  %i.cun = getelementptr inbounds [4 x i8], ptr %.sink.i1136.1.5, i64 %i.coa ; 2 uses
  %i.cuo = load float, ptr %i.cun, align 4, !tbaa !24
  %i.cup = call float @llvm.fmuladd.f32(float %i.cnt, float %i.cqo, float %i.cuo)
  store float %i.cup, ptr %i.cun, align 4, !tbaa !24
  %i.cuq = load i64, ptr %i.cch, align 8
  %i.cur = mul i64 %i.cuq, %i.cpb
  %.sink.i1136.2.5 = getelementptr inbounds nuw i8, ptr %i.cif, i64 %i.cur
  %i.cus = getelementptr inbounds [4 x i8], ptr %.sink.i1136.2.5, i64 %i.cog ; 2 uses
  %i.cut = load float, ptr %i.cus, align 4, !tbaa !24
  %i.cuu = call float @llvm.fmuladd.f32(float %i.cnt, float %i.cru, float %i.cut)
  store float %i.cuu, ptr %i.cus, align 4, !tbaa !24
  %i.cuv = load i64, ptr %i.cch, align 8
  %i.cuw = mul i64 %i.cuv, %i.cpb
  %.sink.i1136.3.5 = getelementptr inbounds nuw i8, ptr %i.cif, i64 %i.cuw
  %i.cux = getelementptr inbounds [4 x i8], ptr %.sink.i1136.3.5, i64 %i.con ; 2 uses
  %i.cuy = load float, ptr %i.cux, align 4, !tbaa !24
  %i.cuz = call float @llvm.fmuladd.f32(float %i.cnt, float %i.cta, float %i.cuy)
  store float %i.cuz, ptr %i.cux, align 4, !tbaa !24
  %i.cva = load i64, ptr %i.cch, align 8
  %i.cvb = mul i64 %i.cva, %i.cpb
  %.sink.i1136.4.5 = getelementptr inbounds nuw i8, ptr %i.cif, i64 %i.cvb
  %i.cvc = getelementptr inbounds [4 x i8], ptr %.sink.i1136.4.5, i64 %i.cou ; 2 uses
  %i.cvd = load float, ptr %i.cvc, align 4, !tbaa !24
  %i.cve = call float @llvm.fmuladd.f32(float %i.cnt, float %85, float %i.cvd)
  store float %i.cve, ptr %i.cvc, align 4, !tbaa !24
  %i.cvf = load i64, ptr %i.cch, align 8
  %i.cvg = mul i64 %i.cvf, %i.cpb
  %.sink.i1136.5.5 = getelementptr inbounds nuw i8, ptr %i.cif, i64 %i.cvg
  %i.cvh = getelementptr inbounds [4 x i8], ptr %.sink.i1136.5.5, i64 %i.cpb ; 2 uses
  %i.cvi = load float, ptr %i.cvh, align 4, !tbaa !24
  %86 = extractelement <2 x float> %78, i64 1
  %i.cvj = call float @llvm.fmuladd.f32(float %i.cnt, float %86, float %i.cvi)
  store float %i.cvj, ptr %i.cvh, align 4, !tbaa !24
  br label %.preheader1925

.preheader.us.preheader:                          ; preds = %bb.ke
  %i.cvk = getelementptr inbounds [4 x i8], ptr %i.cif, i64 %i.cnu ; 8 uses
  %i.cvl = load <4 x float>, ptr %i.cvk, align 4, !tbaa !24
  %i.cvm = insertelement <4 x float> poison, float %i.cnt, i64 0
  %i.cvn = shufflevector <4 x float> %i.cvm, <4 x float> poison, <4 x i32> zeroinitializer ; 6 uses
  %87 = shufflevector <2 x float> %i.cnh, <2 x float> %i.cnj, <4 x i32> <i32 poison, i32 0, i32 2, i32 poison>
  %88 = insertelement <4 x float> %87, float %i.cnf, i64 0
  %89 = shufflevector <4 x float> %88, <4 x float> %73, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.cvo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cvn, <4 x float> %89, <4 x float> %i.cvl)
  store <4 x float> %i.cvo, ptr %i.cvk, align 4, !tbaa !24
  %i.cvp = getelementptr [4 x i8], ptr %i.cif, i64 %i.cnu
  %i.cvq = getelementptr i8, ptr %i.cvp, i64 16   ; 9 uses
  %i.cvr = load <2 x float>, ptr %i.cvq, align 4, !tbaa !24
  %i.cvs = insertelement <2 x float> poison, float %i.cnt, i64 0
  %i.cvt = shufflevector <2 x float> %i.cvs, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.cvu = shufflevector <4 x float> %i.cnl, <4 x float> %i.cnn, <2 x i32> <i32 0, i32 4>
  %i.cvv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cvt, <2 x float> %i.cvu, <2 x float> %i.cvr)
  store <2 x float> %i.cvv, ptr %i.cvq, align 4, !tbaa !24
  %i.cvw = load <4 x float>, ptr %i.cvk, align 4, !tbaa !24
  %90 = shufflevector <2 x float> %i.cnj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %91 = shufflevector <4 x float> %90, <4 x float> %73, <4 x i32> <i32 poison, i32 poison, i32 1, i32 5>
  %92 = shufflevector <2 x float> %i.cnh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %93 = shufflevector <4 x float> %92, <4 x float> %91, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cvx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cvn, <4 x float> %93, <4 x float> %i.cvw) ; 2 uses
  store <4 x float> %i.cvx, ptr %i.cvk, align 4, !tbaa !24
  %i.cvy = load <2 x float>, ptr %i.cvq, align 4, !tbaa !24
  %i.cvz = shufflevector <4 x float> %i.cnl, <4 x float> %i.cnn, <2 x i32> <i32 1, i32 5>
  %i.cwa = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cvt, <2 x float> %i.cvz, <2 x float> %i.cvy)
  store <2 x float> %i.cwa, ptr %i.cvq, align 4, !tbaa !24
  %94 = shufflevector <4 x float> %73, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 2>
  %95 = shufflevector <2 x float> %76, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %96 = shufflevector <4 x float> %94, <4 x float> %95, <4 x i32> <i32 poison, i32 poison, i32 6, i32 3>
  %i.cwb = shufflevector <4 x float> %90, <4 x float> %96, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cwc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cvn, <4 x float> %i.cwb, <4 x float> %i.cvx) ; 2 uses
  store <4 x float> %i.cwc, ptr %i.cvk, align 4, !tbaa !24
  %i.cwd = load <2 x float>, ptr %i.cvq, align 4, !tbaa !24
  %i.cwe = shufflevector <4 x float> %i.cnl, <4 x float> %i.cnn, <2 x i32> <i32 2, i32 6>
  %i.cwf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cvt, <2 x float> %i.cwe, <2 x float> %i.cwd) ; 2 uses
  store <2 x float> %i.cwf, ptr %i.cvq, align 4, !tbaa !24
  %i.cwg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cvn, <4 x float> %73, <4 x float> %i.cwc) ; 2 uses
  store <4 x float> %i.cwg, ptr %i.cvk, align 4, !tbaa !24
  %i.cwh = shufflevector <4 x float> %i.cnl, <4 x float> %i.cnn, <2 x i32> <i32 3, i32 7>
  %i.cwi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cvt, <2 x float> %i.cwh, <2 x float> %i.cwf) ; 2 uses
  store <2 x float> %i.cwi, ptr %i.cvq, align 4, !tbaa !24
  %i.cwj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cvn, <4 x float> %i.cnl, <4 x float> %i.cwg) ; 2 uses
  store <4 x float> %i.cwj, ptr %i.cvk, align 4, !tbaa !24
  %97 = shufflevector <2 x float> %76, <2 x float> %78, <2 x i32> <i32 1, i32 2>
  %i.cwk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cvt, <2 x float> %97, <2 x float> %i.cwi) ; 2 uses
  store <2 x float> %i.cwk, ptr %i.cvq, align 4, !tbaa !24
  %i.cwl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cvn, <4 x float> %i.cnn, <4 x float> %i.cwj)
  store <4 x float> %i.cwl, ptr %i.cvk, align 4, !tbaa !24
  %i.cwm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cvt, <2 x float> %78, <2 x float> %i.cwk)
  store <2 x float> %i.cwm, ptr %i.cvq, align 4, !tbaa !24
  br label %.preheader1925

.preheader1925:                                   ; preds = %.preheader.preheader, %.preheader.us.preheader
  %i.cwn = fmul float %i.cij, %i.cno              ; 8 uses
  %i.cwo = load i32, ptr %50, align 8
  %i.cwp = and i32 %i.cwo, 16384
  %i.cwq = icmp ne i32 %i.cwp, 0                  ; 6 uses
  %i.cwr = load i32, ptr %i.cck, align 8
  %i.cws = icmp eq i32 %i.cwr, 1                  ; 6 uses
  %i.cwt = load i32, ptr %i.ccl, align 4          ; 12 uses
  %i.cwu = load ptr, ptr %i.ccm, align 8          ; 20 uses
  %i.cwv = load i64, ptr %i.ccn, align 8          ; 12 uses
  %i.cww = sext i32 %i.cnr to i64                 ; 10 uses
  br i1 %i.cih, label %_ZN2cv4Mat_IfEclEi.exit1139.us.preheader, label %.preheader1925.split2088.preheader

.preheader1925.split2088.preheader:               ; preds = %.preheader1925
  %i.cwx = load i32, ptr %i.ccj, align 4
  %i.cwy = icmp eq i32 %i.cwx, 1
  %or.cond.i.i1137 = select i1 %i.cwq, i1 true, i1 %i.cwy
  br i1 %or.cond.i.i1137, label %bb.kf, label %bb.kg

_ZN2cv4Mat_IfEclEi.exit1139.us.preheader:         ; preds = %.preheader1925
  %i.cwz = getelementptr inbounds [4 x i8], ptr %i.cwu, i64 %i.cww ; 2 uses
  %i.cxa = load <4 x float>, ptr %i.cwz, align 4, !tbaa !24
  %i.cxb = insertelement <4 x float> poison, float %i.cwn, i64 0
  %i.cxc = shufflevector <4 x float> %i.cxb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cxd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cxc, <4 x float> %i.cmu, <4 x float> %i.cxa)
  store <4 x float> %i.cxd, ptr %i.cwz, align 4, !tbaa !24
  %i.cxe = getelementptr [4 x i8], ptr %i.cwu, i64 %i.cww
  %i.cxf = getelementptr i8, ptr %i.cxe, i64 16   ; 2 uses
  %i.cxg = load <2 x float>, ptr %i.cxf, align 4, !tbaa !24
  %i.cxh = insertelement <2 x float> poison, float %i.cwn, i64 0
  %i.cxi = shufflevector <2 x float> %i.cxh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cxj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cxi, <2 x float> %i.cnd, <2 x float> %i.cxg)
  store <2 x float> %i.cxj, ptr %i.cxf, align 4, !tbaa !24
  br label %.split2090.us

bb.kf:                                            ; preds = %.preheader1925.split2088.preheader
  %i.cxk = getelementptr inbounds [4 x i8], ptr %i.cwu, i64 %i.cww
  br label %_ZN2cv4Mat_IfEclEi.exit1139

bb.kg:                                            ; preds = %.preheader1925.split2088.preheader
  br i1 %i.cws, label %bb.kh, label %bb.ki

bb.kh:                                            ; preds = %bb.kg
  %i.cxl = mul i64 %i.cwv, %i.cww
  %i.cxm = getelementptr inbounds nuw i8, ptr %i.cwu, i64 %i.cxl
  br label %_ZN2cv4Mat_IfEclEi.exit1139

bb.ki:                                            ; preds = %bb.kg
  %i.cxn = sdiv i32 %i.cnr, %i.cwt                ; 2 uses
  %i.cxo = mul nsw i32 %i.cxn, %i.cwt
  %i.cxp = sext i32 %i.cxo to i64
  %i.cxq = sub nsw i64 %i.cww, %i.cxp
  %i.cxr = sext i32 %i.cxn to i64
  %i.cxs = mul i64 %i.cwv, %i.cxr
  %i.cxt = getelementptr inbounds nuw i8, ptr %i.cwu, i64 %i.cxs
  %i.cxu = getelementptr inbounds [4 x i8], ptr %i.cxt, i64 %i.cxq
  br label %_ZN2cv4Mat_IfEclEi.exit1139

_ZN2cv4Mat_IfEclEi.exit1139:                      ; preds = %bb.ki, %bb.kh, %bb.kf
  %.0.i.i1138 = phi ptr [ %i.cxu, %bb.ki ], [ %i.cxk, %bb.kf ], [ %i.cxm, %bb.kh ] ; 2 uses
  %i.cxv = load float, ptr %.0.i.i1138, align 4, !tbaa !24
  %i.cxw = call float @llvm.fmuladd.f32(float %i.cwn, float %i.cne, float %i.cxv)
  store float %i.cxw, ptr %.0.i.i1138, align 4, !tbaa !24
  %i.cxx = add nsw i64 %i.cww, 1                  ; 4 uses
  %i.cxy = load i32, ptr %i.ccj, align 4
  %i.cxz = icmp eq i32 %i.cxy, 1
  %or.cond.i.i1137.1 = select i1 %i.cwq, i1 true, i1 %i.cxz
  br i1 %or.cond.i.i1137.1, label %bb.km, label %bb.kj

bb.kj:                                            ; preds = %_ZN2cv4Mat_IfEclEi.exit1139
  br i1 %i.cws, label %bb.kl, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %i.cya = trunc nsw i64 %i.cxx to i32
  %i.cyb = sdiv i32 %i.cya, %i.cwt                ; 2 uses
  %i.cyc = mul nsw i32 %i.cyb, %i.cwt
  %i.cyd = sext i32 %i.cyc to i64
  %i.cye = sub nsw i64 %i.cxx, %i.cyd
  %i.cyf = sext i32 %i.cyb to i64
  %i.cyg = mul i64 %i.cwv, %i.cyf
  %i.cyh = getelementptr inbounds nuw i8, ptr %i.cwu, i64 %i.cyg
  %i.cyi = getelementptr inbounds [4 x i8], ptr %i.cyh, i64 %i.cye
  br label %_ZN2cv4Mat_IfEclEi.exit1139.1

bb.kl:                                            ; preds = %bb.kj
  %i.cyj = mul i64 %i.cwv, %i.cxx
  %i.cyk = getelementptr inbounds nuw i8, ptr %i.cwu, i64 %i.cyj
  br label %_ZN2cv4Mat_IfEclEi.exit1139.1

bb.km:                                            ; preds = %_ZN2cv4Mat_IfEclEi.exit1139
  %i.cyl = getelementptr inbounds [4 x i8], ptr %i.cwu, i64 %i.cxx
  br label %_ZN2cv4Mat_IfEclEi.exit1139.1

_ZN2cv4Mat_IfEclEi.exit1139.1:                    ; preds = %bb.km, %bb.kl, %bb.kk
  %.0.i.i1138.1 = phi ptr [ %i.cyi, %bb.kk ], [ %i.cyl, %bb.km ], [ %i.cyk, %bb.kl ] ; 2 uses
  %i.cym = load float, ptr %.0.i.i1138.1, align 4, !tbaa !24
  %98 = extractelement <4 x float> %i.cmu, i64 1
  %i.cyn = call float @llvm.fmuladd.f32(float %i.cwn, float %98, float %i.cym)
  store float %i.cyn, ptr %.0.i.i1138.1, align 4, !tbaa !24
  %i.cyo = add nsw i64 %i.cww, 2                  ; 4 uses
  %i.cyp = load i32, ptr %i.ccj, align 4
  %i.cyq = icmp eq i32 %i.cyp, 1
  %or.cond.i.i1137.2 = select i1 %i.cwq, i1 true, i1 %i.cyq
  br i1 %or.cond.i.i1137.2, label %bb.kq, label %bb.kn

bb.kn:                                            ; preds = %_ZN2cv4Mat_IfEclEi.exit1139.1
  br i1 %i.cws, label %bb.kp, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %i.cyr = trunc nsw i64 %i.cyo to i32
  %i.cys = sdiv i32 %i.cyr, %i.cwt                ; 2 uses
  %i.cyt = mul nsw i32 %i.cys, %i.cwt
  %i.cyu = sext i32 %i.cyt to i64
  %i.cyv = sub nsw i64 %i.cyo, %i.cyu
  %i.cyw = sext i32 %i.cys to i64
  %i.cyx = mul i64 %i.cwv, %i.cyw
  %i.cyy = getelementptr inbounds nuw i8, ptr %i.cwu, i64 %i.cyx
  %i.cyz = getelementptr inbounds [4 x i8], ptr %i.cyy, i64 %i.cyv
  br label %_ZN2cv4Mat_IfEclEi.exit1139.2

bb.kp:                                            ; preds = %bb.kn
  %i.cza = mul i64 %i.cwv, %i.cyo
  %i.czb = getelementptr inbounds nuw i8, ptr %i.cwu, i64 %i.cza
  br label %_ZN2cv4Mat_IfEclEi.exit1139.2

bb.kq:                                            ; preds = %_ZN2cv4Mat_IfEclEi.exit1139.1
  %i.czc = getelementptr inbounds [4 x i8], ptr %i.cwu, i64 %i.cyo
  br label %_ZN2cv4Mat_IfEclEi.exit1139.2

_ZN2cv4Mat_IfEclEi.exit1139.2:                    ; preds = %bb.kq, %bb.kp, %bb.ko
  %.0.i.i1138.2 = phi ptr [ %i.cyz, %bb.ko ], [ %i.czc, %bb.kq ], [ %i.czb, %bb.kp ] ; 2 uses
  %i.czd = load float, ptr %.0.i.i1138.2, align 4, !tbaa !24
  %99 = extractelement <4 x float> %i.cmu, i64 2
  %i.cze = call float @llvm.fmuladd.f32(float %i.cwn, float %99, float %i.czd)
  store float %i.cze, ptr %.0.i.i1138.2, align 4, !tbaa !24
  %i.czf = add nsw i64 %i.cww, 3                  ; 4 uses
  %i.czg = load i32, ptr %i.ccj, align 4
  %i.czh = icmp eq i32 %i.czg, 1
  %or.cond.i.i1137.3 = select i1 %i.cwq, i1 true, i1 %i.czh
  br i1 %or.cond.i.i1137.3, label %bb.ku, label %bb.kr

bb.kr:                                            ; preds = %_ZN2cv4Mat_IfEclEi.exit1139.2
  br i1 %i.cws, label %bb.kt, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  %i.czi = trunc nsw i64 %i.czf to i32
  %i.czj = sdiv i32 %i.czi, %i.cwt                ; 2 uses
  %i.czk = mul nsw i32 %i.czj, %i.cwt
  %i.czl = sext i32 %i.czk to i64
  %i.czm = sub nsw i64 %i.czf, %i.czl
  %i.czn = sext i32 %i.czj to i64
  %i.czo = mul i64 %i.cwv, %i.czn
  %i.czp = getelementptr inbounds nuw i8, ptr %i.cwu, i64 %i.czo
  %i.czq = getelementptr inbounds [4 x i8], ptr %i.czp, i64 %i.czm
  br label %_ZN2cv4Mat_IfEclEi.exit1139.3

bb.kt:                                            ; preds = %bb.kr
  %i.czr = mul i64 %i.cwv, %i.czf
  %i.czs = getelementptr inbounds nuw i8, ptr %i.cwu, i64 %i.czr
  br label %_ZN2cv4Mat_IfEclEi.exit1139.3

bb.ku:                                            ; preds = %_ZN2cv4Mat_IfEclEi.exit1139.2
  %i.czt = getelementptr inbounds [4 x i8], ptr %i.cwu, i64 %i.czf
  br label %_ZN2cv4Mat_IfEclEi.exit1139.3

_ZN2cv4Mat_IfEclEi.exit1139.3:                    ; preds = %bb.ku, %bb.kt, %bb.ks
  %.0.i.i1138.3 = phi ptr [ %i.czq, %bb.ks ], [ %i.czt, %bb.ku ], [ %i.czs, %bb.kt ] ; 2 uses
  %i.czu = load float, ptr %.0.i.i1138.3, align 4, !tbaa !24
  %100 = extractelement <4 x float> %i.cmu, i64 3
  %i.czv = call float @llvm.fmuladd.f32(float %i.cwn, float %100, float %i.czu)
  store float %i.czv, ptr %.0.i.i1138.3, align 4, !tbaa !24
  %i.czw = add nsw i64 %i.cww, 4                  ; 4 uses
  %i.czx = load i32, ptr %i.ccj, align 4
  %i.czy = icmp eq i32 %i.czx, 1
  %or.cond.i.i1137.4 = select i1 %i.cwq, i1 true, i1 %i.czy
  br i1 %or.cond.i.i1137.4, label %bb.ky, label %bb.kv

bb.kv:                                            ; preds = %_ZN2cv4Mat_IfEclEi.exit1139.3
  br i1 %i.cws, label %bb.kx, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.czz = trunc nsw i64 %i.czw to i32
  %i.daa = sdiv i32 %i.czz, %i.cwt                ; 2 uses
  %i.dab = mul nsw i32 %i.daa, %i.cwt
  %i.dac = sext i32 %i.dab to i64
  %i.dad = sub nsw i64 %i.czw, %i.dac
  %i.dae = sext i32 %i.daa to i64
  %i.daf = mul i64 %i.cwv, %i.dae
  %i.dag = getelementptr inbounds nuw i8, ptr %i.cwu, i64 %i.daf
  %i.dah = getelementptr inbounds [4 x i8], ptr %i.dag, i64 %i.dad
  br label %_ZN2cv4Mat_IfEclEi.exit1139.4

bb.kx:                                            ; preds = %bb.kv
  %i.dai = mul i64 %i.cwv, %i.czw
  %i.daj = getelementptr inbounds nuw i8, ptr %i.cwu, i64 %i.dai
  br label %_ZN2cv4Mat_IfEclEi.exit1139.4

bb.ky:                                            ; preds = %_ZN2cv4Mat_IfEclEi.exit1139.3
  %i.dak = getelementptr inbounds [4 x i8], ptr %i.cwu, i64 %i.czw
  br label %_ZN2cv4Mat_IfEclEi.exit1139.4

_ZN2cv4Mat_IfEclEi.exit1139.4:                    ; preds = %bb.ky, %bb.kx, %bb.kw
  %.0.i.i1138.4 = phi ptr [ %i.dah, %bb.kw ], [ %i.dak, %bb.ky ], [ %i.daj, %bb.kx ] ; 2 uses
  %i.dal = load float, ptr %.0.i.i1138.4, align 4, !tbaa !24
  %101 = extractelement <2 x float> %i.cnd, i64 0
  %i.dam = call float @llvm.fmuladd.f32(float %i.cwn, float %101, float %i.dal)
  store float %i.dam, ptr %.0.i.i1138.4, align 4, !tbaa !24
  %i.dan = add nsw i64 %i.cww, 5                  ; 4 uses
  %i.dao = load i32, ptr %i.ccj, align 4
  %i.dap = icmp eq i32 %i.dao, 1
  %or.cond.i.i1137.5 = select i1 %i.cwq, i1 true, i1 %i.dap
  br i1 %or.cond.i.i1137.5, label %bb.lc, label %bb.kz

bb.kz:                                            ; preds = %_ZN2cv4Mat_IfEclEi.exit1139.4
  br i1 %i.cws, label %bb.lb, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.daq = trunc nsw i64 %i.dan to i32
  %i.dar = sdiv i32 %i.daq, %i.cwt                ; 2 uses
  %i.das = mul nsw i32 %i.dar, %i.cwt
  %i.dat = sext i32 %i.das to i64
  %i.dau = sub nsw i64 %i.dan, %i.dat
  %i.dav = sext i32 %i.dar to i64
  %i.daw = mul i64 %i.cwv, %i.dav
  %i.dax = getelementptr inbounds nuw i8, ptr %i.cwu, i64 %i.daw
  %i.day = getelementptr inbounds [4 x i8], ptr %i.dax, i64 %i.dau
  br label %_ZN2cv4Mat_IfEclEi.exit1139.5

bb.lb:                                            ; preds = %bb.kz
  %i.daz = mul i64 %i.cwv, %i.dan
  %i.dba = getelementptr inbounds nuw i8, ptr %i.cwu, i64 %i.daz
  br label %_ZN2cv4Mat_IfEclEi.exit1139.5

bb.lc:                                            ; preds = %_ZN2cv4Mat_IfEclEi.exit1139.4
  %i.dbb = getelementptr inbounds [4 x i8], ptr %i.cwu, i64 %i.dan
  br label %_ZN2cv4Mat_IfEclEi.exit1139.5

_ZN2cv4Mat_IfEclEi.exit1139.5:                    ; preds = %bb.lc, %bb.lb, %bb.la
  %.0.i.i1138.5 = phi ptr [ %i.day, %bb.la ], [ %i.dbb, %bb.lc ], [ %i.dba, %bb.lb ] ; 2 uses
  %i.dbc = load float, ptr %.0.i.i1138.5, align 4, !tbaa !24
  %102 = extractelement <2 x float> %i.cnd, i64 1
  %i.dbd = call float @llvm.fmuladd.f32(float %i.cwn, float %102, float %i.dbc)
  store float %i.dbd, ptr %.0.i.i1138.5, align 4, !tbaa !24
  br label %.split2090.us

.split2090.us:                                    ; preds = %_ZN2cv4Mat_IfEclEi.exit1139.us.preheader, %_ZN2cv4Mat_IfEclEi.exit1139.5, %bb.kd
  %indvars.iv.next2248 = add nuw nsw i64 %indvars.iv2247, 1 ; 2 uses
  %exitcond2251.not = icmp eq i64 %indvars.iv.next2248, %wide.trip.count2250
  br i1 %exitcond2251.not, label %.loopexit, label %bb.kd, !llvm.loop !114

.loopexit:                                        ; preds = %.split2090.us, %bb.ka, %._crit_edge2078
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %.pre2386 = load i32, ptr %i.wa, align 8, !tbaa !221
  br label %.critedge4

.critedge4:                                       ; preds = %bb.jw, %bb.jv, %.loopexit, %bb.jx, %bb.jy
  %i.dbe = phi i32 [ %i.cds, %bb.jw ], [ %i.cds, %bb.jv ], [ %.pre2386, %.loopexit ], [ %i.cds, %bb.jx ], [ %i.cds, %bb.jy ] ; 3 uses
  %indvars.iv.next2253 = add nuw nsw i64 %indvars.iv2252, 1
  %i.dbf = icmp slt i32 %i.dbe, 3
  br i1 %i.dbf, label %.lr.ph2094, label %.preheader1927._crit_edge, !llvm.loop !115

._crit_edge2635:                                  ; preds = %bb.ju, %.lr.ph2097
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #21
  %i.dbg = getelementptr inbounds nuw i8, ptr %61, i64 16
  store i32 0, ptr %i.dbg, align 8, !tbaa !257
  %i.dbh = getelementptr inbounds nuw i8, ptr %61, i64 20
  store i32 0, ptr %i.dbh, align 4, !tbaa !258
  store i32 -2130640891, ptr %61, align 8, !tbaa !140
  %i.dbi = getelementptr inbounds nuw i8, ptr %61, i64 8
  store ptr %51, ptr %i.dbi, align 8, !tbaa !134
  %i.dbj = invoke noundef double @_ZN2cv11determinantERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %61)
          to label %bb.ld unwind label %bb.lo

bb.ld:                                            ; preds = %._crit_edge2635
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #21
  %i.dbk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.17, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1141 unwind label %bb.lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1141: ; preds = %bb.ld
  %i.dbl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.dbj)
          to label %_ZNSolsEd.exit unwind label %bb.lp ; 3 uses

_ZNSolsEd.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1141
  %i.dbm = load ptr, ptr %i.dbl, align 8, !tbaa !11
  %i.dbn = getelementptr i8, ptr %i.dbm, i64 -24
  %i.dbo = load i64, ptr %i.dbn, align 8
  %i.dbp = getelementptr inbounds i8, ptr %i.dbl, i64 %i.dbo
  %i.dbq = getelementptr inbounds nuw i8, ptr %i.dbp, i64 240
  %i.dbr = load ptr, ptr %i.dbq, align 8, !tbaa !195 ; 6 uses
  %.not.i.i.i1263 = icmp eq ptr %i.dbr, null
  br i1 %.not.i.i.i1263, label %.invoke2599, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1264

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1264: ; preds = %_ZNSolsEd.exit
  %i.dbs = getelementptr inbounds nuw i8, ptr %i.dbr, i64 56
  %i.dbt = load i8, ptr %i.dbs, align 8, !tbaa !201
  %.not.i1.i.i1265 = icmp eq i8 %i.dbt, 0
  br i1 %.not.i1.i.i1265, label %bb.lf, label %bb.le

bb.le:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1264
  %i.dbu = getelementptr inbounds nuw i8, ptr %i.dbr, i64 67
  %i.dbv = load i8, ptr %i.dbu, align 1, !tbaa !18
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1266

bb.lf:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1264
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dbr)
          to label %.noexc1269 unwind label %bb.lp

.noexc1269:                                       ; preds = %bb.lf
  %i.dbw = load ptr, ptr %i.dbr, align 8, !tbaa !11
  %i.dbx = getelementptr inbounds nuw i8, ptr %i.dbw, i64 48
  %i.dby = load ptr, ptr %i.dbx, align 8
  %i.dbz = invoke noundef signext i8 %i.dby(ptr noundef nonnull align 8 dereferenceable(570) %i.dbr, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1266 unwind label %bb.lp, !inline_history !66

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1266: ; preds = %.noexc1269, %bb.le
  %.0.i.i.i1267 = phi i8 [ %i.dbv, %bb.le ], [ %i.dbz, %.noexc1269 ]
  %i.dca = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dbl, i8 noundef signext %.0.i.i.i1267)
          to label %.noexc1271 unwind label %bb.lp

.noexc1271:                                       ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1266
  %i.dcb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dca)
          to label %_ZNSolsEPFRSoS_E.exit1144 unwind label %bb.lp ; 0 uses

_ZNSolsEPFRSoS_E.exit1144:                        ; preds = %.noexc1271
  %i.dcc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.18, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1146 unwind label %bb.lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1146: ; preds = %_ZNSolsEPFRSoS_E.exit1144
  %i.dcd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.gq)
          to label %bb.lg unwind label %bb.lp     ; 3 uses

bb.lg:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1146
  %i.dce = load ptr, ptr %i.dcd, align 8, !tbaa !11
  %i.dcf = getelementptr i8, ptr %i.dce, i64 -24
  %i.dcg = load i64, ptr %i.dcf, align 8
  %i.dch = getelementptr inbounds i8, ptr %i.dcd, i64 %i.dcg
  %i.dci = getelementptr inbounds nuw i8, ptr %i.dch, i64 240
  %i.dcj = load ptr, ptr %i.dci, align 8, !tbaa !195 ; 6 uses
  %.not.i.i.i1274 = icmp eq ptr %i.dcj, null
  br i1 %.not.i.i.i1274, label %.invoke2599, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1275

.invoke2599:                                      ; preds = %bb.lg, %_ZNSolsEd.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1048
  invoke void @_ZSt16__throw_bad_castv() #22
          to label %.cont2600 unwind label %bb.lp

.cont2600:                                        ; preds = %.invoke2599
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1275: ; preds = %bb.lg
  %i.dck = getelementptr inbounds nuw i8, ptr %i.dcj, i64 56
  %i.dcl = load i8, ptr %i.dck, align 8, !tbaa !201
  %.not.i1.i.i1276 = icmp eq i8 %i.dcl, 0
  br i1 %.not.i1.i.i1276, label %bb.li, label %bb.lh

bb.lh:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1275
  %i.dcm = getelementptr inbounds nuw i8, ptr %i.dcj, i64 67
  %i.dcn = load i8, ptr %i.dcm, align 1, !tbaa !18
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1277

bb.li:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1275
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dcj)
          to label %.noexc1280 unwind label %bb.lp

.noexc1280:                                       ; preds = %bb.li
  %i.dco = load ptr, ptr %i.dcj, align 8, !tbaa !11
  %i.dcp = getelementptr inbounds nuw i8, ptr %i.dco, i64 48
  %i.dcq = load ptr, ptr %i.dcp, align 8
  %i.dcr = invoke noundef signext i8 %i.dcq(ptr noundef nonnull align 8 dereferenceable(570) %i.dcj, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1277 unwind label %bb.lp, !inline_history !66

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1277: ; preds = %.noexc1280, %bb.lh
  %.0.i.i.i1278 = phi i8 [ %i.dcn, %bb.lh ], [ %i.dcr, %.noexc1280 ]
  %i.dcs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dcd, i8 noundef signext %.0.i.i.i1278)
          to label %.noexc1282 unwind label %bb.lp

.noexc1282:                                       ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1277
  %i.dct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dcs)
          to label %_ZNSolsEPFRSoS_E.exit1148 unwind label %bb.lp ; 0 uses

_ZNSolsEPFRSoS_E.exit1148:                        ; preds = %.noexc1282
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #21
  invoke void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %62, i32 noundef %i.gq, i32 noundef 1, i32 noundef 5)
          to label %.noexc1149 unwind label %bb.lq

.noexc1149:                                       ; preds = %_ZNSolsEPFRSoS_E.exit1148
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  %i.dcu = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %62, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.lk unwind label %bb.lj     ; 0 uses

bb.lj:                                            ; preds = %.noexc1149
  %i.dcv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %62) #21
  br label %.body1150

bb.lk:                                            ; preds = %.noexc1149
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #21
  %i.dcw = getelementptr inbounds nuw i8, ptr %63, i64 16
  store i32 0, ptr %i.dcw, align 8, !tbaa !257
  %i.dcx = getelementptr inbounds nuw i8, ptr %63, i64 20
  store i32 0, ptr %i.dcx, align 4, !tbaa !258
  store i32 -2130640891, ptr %63, align 8, !tbaa !140
  %i.dcy = getelementptr inbounds nuw i8, ptr %63, i64 8
  store ptr %51, ptr %i.dcy, align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #21
  %i.dcz = getelementptr inbounds nuw i8, ptr %64, i64 16
  store i32 0, ptr %i.dcz, align 8, !tbaa !257
  %i.dda = getelementptr inbounds nuw i8, ptr %64, i64 20
  store i32 0, ptr %i.dda, align 4, !tbaa !258
  store i32 -2130640891, ptr %64, align 8, !tbaa !140
  %i.ddb = getelementptr inbounds nuw i8, ptr %64, i64 8
  store ptr %50, ptr %i.ddb, align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #21
  %i.ddc = getelementptr inbounds nuw i8, ptr %65, i64 8
  %i.ddd = getelementptr inbounds nuw i8, ptr %65, i64 16
  store i64 0, ptr %i.ddd, align 8
  store i32 -2113863675, ptr %65, align 8, !tbaa !140
  store ptr %62, ptr %i.ddc, align 8, !tbaa !134
  %i.dde = invoke noundef zeroext i1 @_ZN2cv5solveERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %63, ptr noundef nonnull align 8 dereferenceable(24) %64, ptr noundef nonnull align 8 dereferenceable(24) %65, i32 noundef 1)
          to label %bb.ll unwind label %bb.lr

bb.ll:                                            ; preds = %bb.lk
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #21
  %i.ddf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.19, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1154 unwind label %bb.ls ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1154: ; preds = %bb.ll
  %i.ddg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i1 noundef zeroext %i.dde)
          to label %_ZNSolsEb.exit unwind label %bb.ls ; 3 uses

_ZNSolsEb.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1154
  %i.ddh = load ptr, ptr %i.ddg, align 8, !tbaa !11
  %i.ddi = getelementptr i8, ptr %i.ddh, i64 -24
  %i.ddj = load i64, ptr %i.ddi, align 8
  %i.ddk = getelementptr inbounds i8, ptr %i.ddg, i64 %i.ddj
  %i.ddl = getelementptr inbounds nuw i8, ptr %i.ddk, i64 240
end_hunk_4
begin_hunk_5_@_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_:bb.a
  br i1 %i.bd, label %.lr.ph.split.split.us.split, label %._crit_edge, !llvm.loop !280

._crit_edge:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.g
  %i.be = phi float [ %i.bh, %bb.g ], [ %.pre, %.lr.ph.split.split.preheader ] ; 3 uses
  %.sroa.0.011 = phi ptr [ %i.bi, %bb.g ], [ %1, %.lr.ph.split.split.preheader ] ; 3 uses
  %i.bf = load float, ptr %.sroa.0.011, align 4, !tbaa !24 ; 3 uses
  %i.bg = fcmp olt float %i.bf, %i.be
  br i1 %i.bg, label %._crit_edge.i.i, label %bb.g

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.split
  store float %i.be, ptr %.sroa.0.011, align 4, !tbaa !24
  store float %i.bf, ptr %0, align 4, !tbaa !24
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.split, %._crit_edge.i.i
  %i.bh = phi float [ %i.be, %.lr.ph.split.split ], [ %i.bf, %._crit_edge.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 4 ; 2 uses
  %i.bj = icmp ult ptr %i.bi, %2
  br i1 %i.bj, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !280
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = ashr exact i64 %.fr, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us
  %.07.us = phi i64 [ %i.al, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %.07.us
  %i.q = load float, ptr %i.p, align 4, !tbaa !24 ; 2 uses
  %i.r = icmp slt i64 %.07.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.034.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.07.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.034.i.us, 1                    ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %0, i64 %i.v
  %i.x = load float, ptr %i.u, align 4, !tbaa !24
  %i.y = load float, ptr %i.w, align 4, !tbaa !24
  %i.z = fcmp olt float %i.x, %i.y
  %spec.select.i.us = select i1 %i.z, i64 %i.v, i64 %i.t ; 6 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !24
  %i.ac = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.us
  store float %i.ab, ptr %i.ac, align 4, !tbaa !24
  %i.ad = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ad, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !0

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ae = icmp sgt i64 %spec.select.i.us, %.07.us
  br i1 %i.ae, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.019.i.i.us = phi i64 [ %.0920.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i.us
  %i.ag = load float, ptr %i.af, align 4, !tbaa !24 ; 2 uses
  %i.ah = fcmp olt float %i.ag, %i.q
  br i1 %i.ah, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i.us
  store float %i.ag, ptr %i.ai, align 4, !tbaa !24
  %i.aj = icmp sgt i64 %.0920.i.i.us, %.07.us
  br i1 %i.aj, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, !llvm.loop !1

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.07.us, %.split.us ], [ %.019.i.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.c ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.us
  store float %i.q, ptr %i.ak, align 4, !tbaa !24
  %.not.us = icmp eq i64 %.07.us, 0
  %i.al = add nsw i64 %.07.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !281

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit
  %.07 = phi i64 [ %i.bk, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %0, i64 %.07
  %i.an = load float, ptr %i.am, align 4, !tbaa !24 ; 2 uses
  %i.ao = icmp slt i64 %.07, %i.i
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.034.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.07, %.split ] ; 2 uses
  %i.ap = shl i64 %.034.i, 1                      ; 2 uses
  %i.aq = add i64 %i.ap, 2                        ; 2 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aq
  %i.as = or disjoint i64 %i.ap, 1                ; 2 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %0, i64 %i.as
  %i.au = load float, ptr %i.ar, align 4, !tbaa !24
  %i.av = load float, ptr %i.at, align 4, !tbaa !24
  %i.aw = fcmp olt float %i.au, %i.av
  %spec.select.i = select i1 %i.aw, i64 %i.as, i64 %i.aq ; 4 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !24
  %i.az = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i
  store float %i.ay, ptr %i.az, align 4, !tbaa !24
  %i.ba = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ba, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.07, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bb = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bc = load float, ptr %i.n, align 4, !tbaa !24
  store float %i.bc, ptr %i.o, align 4, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bd = icmp sgt i64 %.1.i, %.07
  br i1 %i.bd, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i
  %i.bf = load float, ptr %i.be, align 4, !tbaa !24 ; 2 uses
  %i.bg = fcmp olt float %i.bf, %i.an
  br i1 %i.bg, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i
  store float %i.bf, ptr %i.bh, align 4, !tbaa !24
  %i.bi = icmp sgt i64 %.0920.i.i, %.07
  br i1 %i.bi, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, !llvm.loop !1

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store float %i.an, ptr %i.bj, align 4, !tbaa !24
  %.not = icmp eq i64 %.07, 0
  %i.bk = add nsw i64 %.07, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !281

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

declare noundef double @_ZN2cv6invertERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #7

declare void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #16

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv7Affine3IfE8rotationERKNS_3VecIfLi3EEE(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load <2 x float>, ptr %1, align 4, !tbaa !24
  %i.c = load <2 x float>, ptr %i.a, align 4, !tbaa !24
  %i.d = fpext <2 x float> %i.b to <2 x double>   ; 3 uses
  %2 = extractelement <2 x double> %i.d, i64 0    ; 2 uses
  %3 = tail call double @llvm.fmuladd.f64(double %2, double %2, double 0.000000e+00)
  %i.e = fpext <2 x float> %i.c to <2 x double>   ; 2 uses
  %i.f = extractelement <2 x double> %i.d, i64 1  ; 2 uses
  %i.g = tail call double @llvm.fmuladd.f64(double %i.f, double %i.f, double %3)
  %i.h = extractelement <2 x double> %i.e, i64 1  ; 2 uses
  %i.i = tail call noundef double @llvm.fmuladd.f64(double %i.h, double %i.h, double %i.g)
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.i) ; 4 uses
  %i.j = fcmp olt double %sqrt.i, f0x3CB0000000000000
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = fdiv double 1.000000e+00, %sqrt.i
  %i.l = tail call double @cos(double noundef %sqrt.i) #21 ; 2 uses
  %i.m = tail call double @sin(double noundef %sqrt.i) #21
  %i.n = fsub double 1.000000e+00, %i.l           ; 4 uses
  %i.o = insertelement <2 x double> poison, double %i.k, i64 0
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.q = fmul <2 x double> %i.p, %i.d             ; 3 uses
  %i.r = fmul <2 x double> %i.p, %i.e             ; 3 uses
  %i.s = fptrunc <2 x double> %i.q to <2 x float> ; 5 uses
  %i.t = fptrunc <2 x double> %i.r to <2 x float> ; 2 uses
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.v = fmul <2 x float> %i.u, %i.s
  %i.w = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = fmul <2 x float> %i.w, %i.s
  %i.y = fpext <2 x float> %i.x to <2 x double>
  %i.z = insertelement <2 x double> poison, double %i.n, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x double> %i.aa, %i.y
  %i.ac = fptrunc <2 x double> %i.ab to <2 x float>
  %i.ad = fpext <2 x float> %i.v to <2 x double>
  %i.ae = insertelement <4 x double> poison, double %i.l, i64 0
  %i.af = insertelement <4 x double> %i.ae, double %i.n, i64 2
  %i.ag = shufflevector <4 x double> %i.af, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.ah = shufflevector <2 x double> %i.ad, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ai = shufflevector <4 x double> <double 1.000000e+00, double 0.000000e+00, double poison, double poison>, <4 x double> %i.ah, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aj = fmul <4 x double> %i.ag, %i.ai
  %i.ak = fptrunc <4 x double> %i.aj to <4 x float> ; 3 uses
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 1, i32 0, i32 3, i32 2, i32 1>
  %i.am = shufflevector <2 x double> %i.q, <2 x double> %i.r, <2 x i32> <i32 1, i32 3>
  %i.an = fptrunc <2 x double> %i.am to <2 x float> ; 2 uses
  %i.ao = fmul <2 x float> %i.an, %i.an
  %i.ap = fpext <2 x float> %i.ao to <2 x double> ; 2 uses
  %i.aq = extractelement <2 x double> %i.ap, i64 0
  %i.ar = fmul double %i.n, %i.aq
  %i.as = fptrunc double %i.ar to float
  %i.at = extractelement <2 x double> %i.ap, i64 1
  %i.au = fmul double %i.n, %i.at
  %i.av = fptrunc double %i.au to float
  %i.aw = shufflevector <4 x float> %i.ak, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 1, i32 1, i32 3> ; 2 uses
  %i.ax = shufflevector <2 x float> %i.ac, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ay = shufflevector <8 x float> %i.ax, <8 x float> %i.aw, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 13, i32 14, i32 15>
  %i.az = shufflevector <8 x float> %i.ay, <8 x float> %i.aw, <8 x i32> <i32 0, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 6, i32 7>
  %i.ba = insertelement <8 x float> %i.az, float %i.as, i64 4
  %i.bb = shufflevector <8 x float> %i.ba, <8 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 1, i32 4, i32 5, i32 6, i32 7>
  %i.bc = fadd <8 x float> %i.al, %i.bb
  %i.bd = extractelement <4 x float> %i.ak, i64 0
  %i.be = fadd float %i.bd, %i.av
  %i.bf = fpext <2 x float> %i.t to <2 x double>
  %i.bg = shufflevector <2 x double> %i.r, <2 x double> %i.q, <2 x i32> <i32 1, i32 2>
  %i.bh = fptrunc <2 x double> %i.bg to <2 x float>
  %i.bi = fneg <2 x float> %i.bh
  %i.bj = fpext <2 x float> %i.bi to <2 x double>
  %i.bk = fneg <2 x float> %i.s
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> %i.s, <2 x i32> <i32 1, i32 2>
  %i.bm = fpext <2 x float> %i.bl to <2 x double>
  %i.bn = insertelement <8 x double> poison, double %i.m, i64 0
  %i.bo = shufflevector <8 x double> %i.bn, <8 x double> poison, <8 x i32> zeroinitializer
  %i.bp = shufflevector <2 x double> %i.bj, <2 x double> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.bq = shufflevector <8 x double> <double 0.000000e+00, double poison, double poison, double poison, double 0.000000e+00, double poison, double poison, double poison>, <8 x double> %i.bp, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.br = shufflevector <2 x double> %i.bm, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bs = shufflevector <8 x double> %i.bq, <8 x double> %i.br, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 4, i32 5, i32 8, i32 9>
  %i.bt = shufflevector <2 x double> %i.bf, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bu = shufflevector <8 x double> %i.bs, <8 x double> %i.bt, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 6, i32 7>
  %i.bv = fmul <8 x double> %i.bo, %i.bu
  %i.bw = fptrunc <8 x double> %i.bv to <8 x float> ; 2 uses
  %i.bx = fadd <8 x float> %i.bc, %i.bw
  %i.by = extractelement <8 x float> %i.bw, i64 0
  %i.bz = fadd float %i.be, %i.by
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi float [ %i.bz, %bb.b ], [ 1.000000e+00, %bb.a ]
  %i.ca = phi <8 x float> [ %i.bx, %bb.b ], [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, %bb.a ] ; 8 uses
  %i.cb = extractelement <8 x float> %i.ca, i64 0
  store float %i.cb, ptr %0, align 4, !tbaa !24
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cd = extractelement <8 x float> %i.ca, i64 1
  store float %i.cd, ptr %i.cc, align 4, !tbaa !24
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cf = extractelement <8 x float> %i.ca, i64 2
  store float %i.cf, ptr %i.ce, align 4, !tbaa !24
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ch = extractelement <8 x float> %i.ca, i64 3
  store float %i.ch, ptr %i.cg, align 4, !tbaa !24
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cj = extractelement <8 x float> %i.ca, i64 4
  store float %i.cj, ptr %i.ci, align 4, !tbaa !24
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cl = extractelement <8 x float> %i.ca, i64 5
  store float %i.cl, ptr %i.ck, align 4, !tbaa !24
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cn = extractelement <8 x float> %i.ca, i64 6
  store float %i.cn, ptr %i.cm, align 4, !tbaa !24
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.cp = extractelement <8 x float> %i.ca, i64 7
  store float %i.cp, ptr %i.co, align 4, !tbaa !24
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %.sink, ptr %i.cq, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv6dynafu7ICPImplESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv6dynafu7ICPImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %i.a) #21, !inline_history !282
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv6dynafu7ICPImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv6dynafu7ICPImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv6dynafu7ICPImplESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !284  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !18
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #21
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #8
end_hunk_5
