Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/mapprojec?download=true
inline.NumInlined: 183
inline.NumDeleted: 71
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.cv::Mat" = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.cv::MatShape", %"struct.cv::MatStep" }
%"struct.cv::MatShape" = type { i32, i32, i32, [10 x i32] }
%"struct.cv::MatStep" = type { [10 x i64] }
%"class.cv::Matx" = type { [9 x double] }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%"class.cv::_OutputArray" = type { %"class.cv::_InputArray" }
%"class.cv::_InputArray" = type { i32, ptr, %"class.cv::Size_" }
%"class.cv::Size_" = type { i32, i32 }
%"class.cv::Scalar_" = type { %"class.cv::Vec" }
%"class.cv::Vec" = type { %"class.cv::Matx.0" }
%"class.cv::Matx.0" = type { [4 x double] }
%"struct.cv::Ptr" = type { %"class.std::shared_ptr" }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }

$_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIdLi3ELi3EEEv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$__clang_call_terminate = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt15_Sp_counted_ptrIPN2cv3reg9MapProjecELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt15_Sp_counted_ptrIPN2cv3reg9MapProjecELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt15_Sp_counted_ptrIPN2cv3reg9MapProjecELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt15_Sp_counted_ptrIPN2cv3reg9MapProjecELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZTVSt15_Sp_counted_ptrIPN2cv3reg9MapProjecELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt15_Sp_counted_ptrIPN2cv3reg9MapProjecELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt15_Sp_counted_ptrIPN2cv3reg9MapProjecELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

@_ZTVN2cv3reg9MapProjecE = constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN2cv3reg9MapProjecE, ptr @_ZN2cv3reg9MapProjecD1Ev, ptr @_ZN2cv3reg9MapProjecD0Ev, ptr @_ZNK2cv3reg3Map4warpERKNS_11_InputArrayERKNS_12_OutputArrayE, ptr @_ZNK2cv3reg9MapProjec11inverseWarpERKNS_11_InputArrayERKNS_12_OutputArrayE, ptr @_ZNK2cv3reg9MapProjec10inverseMapEv, ptr @_ZN2cv3reg9MapProjec7composeENS_3PtrINS0_3MapEEE, ptr @_ZN2cv3reg9MapProjec5scaleEd] }, align 8
@_ZTIN2cv3reg9MapProjecE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv3reg9MapProjecE, ptr @_ZTIN2cv3reg3MapE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN2cv3reg9MapProjecE = constant [20 x i8] c"N2cv3reg9MapProjecE\00", align 1
@_ZTIN2cv3reg3MapE = external constant ptr
@.str = private unnamed_addr constant [10 x i8] c"dims <= 2\00", align 1
@__func__._ZNK2cv8MatShapeclEv = private unnamed_addr constant [11 x i8] c"operator()\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"/opt-bench/work/opencv/opencv/modules/core/include/opencv2/core/mat.inl.hpp\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"data && dims <= 2 && rows == m && cols == n && channels() == 1\00", align 1
@__func__._ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIdLi3ELi3EEEv = private unnamed_addr constant [14 x i8] c"operator Matx\00", align 1
@_ZTVSt15_Sp_counted_ptrIPN2cv3reg9MapProjecELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt15_Sp_counted_ptrIPN2cv3reg9MapProjecELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt15_Sp_counted_ptrIPN2cv3reg9MapProjecELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt15_Sp_counted_ptrIPN2cv3reg9MapProjecELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt15_Sp_counted_ptrIPN2cv3reg9MapProjecELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt15_Sp_counted_ptrIPN2cv3reg9MapProjecELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt15_Sp_counted_ptrIPN2cv3reg9MapProjecELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt15_Sp_counted_ptrIPN2cv3reg9MapProjecELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt15_Sp_counted_ptrIPN2cv3reg9MapProjecELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [71 x i8] c"St15_Sp_counted_ptrIPN2cv3reg9MapProjecELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1

@_ZN2cv3reg9MapProjecC1Ev = unnamed_addr alias void (ptr), ptr @_ZN2cv3reg9MapProjecC2Ev
@_ZN2cv3reg9MapProjecC1ERKNS_11_InputArrayE = unnamed_addr alias void (ptr, ptr), ptr @_ZN2cv3reg9MapProjecC2ERKNS_11_InputArrayE
@_ZN2cv3reg9MapProjecD1Ev = unnamed_addr alias void (ptr), ptr @_ZN2cv3reg9MapProjecD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN2cv3reg9MapProjecC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(80) initializes((0, 80)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN2cv3reg9MapProjecE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 56, i1 false), !tbaa !11, !alias.scope !41
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !11, !alias.scope !41
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double 1.000000e+00, ptr %i.c, align 8, !tbaa !11, !alias.scope !41
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !11, !alias.scope !41
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN2cv3reg3MapD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3reg9MapProjecC2ERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(80) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 8 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN2cv3reg9MapProjecE, i64 16), ptr %0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.a
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15, !noalias !44
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.e

bb.c:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.e

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIdLi3ELi3EEEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Matx") align 8 %i.e, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.g, %bb.f ], [ %i.f, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @_ZN2cv3reg3MapD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #19
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIdLi3ELi3EEEv(ptr dead_on_unwind noalias writable sret(%"class.cv::Matx") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %5 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 10 uses
  %.not = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp slt i32 %i.d, 3
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, 3
  %or.cond17 = select i1 %or.cond, i1 %i.h, i1 false
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp eq i32 %i.j, 3
  %or.cond20 = select i1 %or.cond17, i1 %i.k, i1 false
  br i1 %or.cond20, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %1, align 8, !tbaa !46     ; 2 uses
  %i.m = and i32 %i.l, 4064
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIdLi3ELi3EEEv, ptr noundef nonnull @.str.1, i32 noundef 1314) #20
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !26     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.t = load i64, ptr %i.r, align 8, !tbaa !27
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.p, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.n

bb.h:                                             ; preds = %bb.b
  %i.v = and i32 %i.l, 16415
  %or.cond12 = icmp eq i32 %i.v, 16390
  br i1 %or.cond12, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = load double, ptr %i.b, align 8, !tbaa !11
  store double %i.w, ptr %0, align 8, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = load double, ptr %i.x, align 8, !tbaa !11
end_hunk_0
begin_hunk_1_@_ZNK2cv3reg9MapProjec11inverseWarpERKNS_11_InputArrayERKNS_12_OutputArrayE:bb.a
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv76
  %i.di = trunc nuw nsw i64 %indvars.iv76 to i32
  %i.dj = uitofp nneg i32 %i.di to double         ; 2 uses
  %i.dk = insertelement <2 x double> poison, double %i.dj, i64 0
  %i.dl = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dl, <2 x double> %i.cm, <2 x double> %i.cr)
  %i.dn = fadd <2 x double> %i.cn, %i.dm          ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv76
  %i.dp = call double @llvm.fmuladd.f64(double %i.dj, double %i.cb, double %i.cs)
  %i.dq = fadd double %i.cd, %i.dp
  %i.dr = insertelement <2 x double> %i.dn, double %i.dq, i64 1
  %i.ds = shufflevector <2 x double> %i.dn, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dt = fdiv <2 x double> %i.dr, %i.ds
  %i.du = fptrunc <2 x double> %i.dt to <2 x float> ; 2 uses
  %i.dv = extractelement <2 x float> %i.du, i64 0
  store float %i.dv, ptr %i.dh, align 4, !tbaa !58
  %i.dw = extractelement <2 x float> %i.du, i64 1
  store float %i.dw, ptr %i.do, align 4, !tbaa !58
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next77, %wide.trip.count79
  br i1 %exitcond80.not, label %._crit_edge.split.us.us.split.us.us, label %scalar.ph, !llvm.loop !50

._crit_edge.split.us.us.split.us.us:              ; preds = %scalar.ph, %middle.block
  %i.dx = add nuw nsw i32 %.02252.us.us, 1        ; 2 uses
  %exitcond81.not = icmp eq i32 %i.dx, %i.at
  br i1 %exitcond81.not, label %._crit_edge53.split, label %.preheader.us.us, !llvm.loop !51

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.split.us.us.split
  %indvars.iv71 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next72, %._crit_edge.split.us.us.split ] ; 3 uses
  %i.dy = trunc nuw nsw i64 %indvars.iv71 to i32
  %i.dz = uitofp nneg i32 %i.dy to double         ; 2 uses
  %i.ea = insertelement <2 x double> poison, double %i.dz, i64 0
  %i.eb = shufflevector <2 x double> %i.ea, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ec = fmul <2 x double> %i.ch, %i.eb
  %i.ed = fmul double %i.cc, %i.dz
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.preheader.us
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %bb.s ], [ 0, %.preheader.us ] ; 4 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv66
  %i.ef = trunc nuw nsw i64 %indvars.iv66 to i32
  %i.eg = uitofp nneg i32 %i.ef to double         ; 2 uses
  %i.eh = insertelement <2 x double> poison, double %i.eg, i64 0
  %i.ei = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ej = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ei, <2 x double> %i.cj, <2 x double> %i.ec)
  %i.ek = fadd <2 x double> %i.ci, %i.ej          ; 2 uses
  %i.el = call double @llvm.fmuladd.f64(double %i.eg, double %i.cb, double %i.ed)
  %i.em = fadd double %i.cd, %i.el
  %i.en = insertelement <2 x double> %i.ek, double %i.em, i64 1
  %i.eo = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ep = fdiv <2 x double> %i.en, %i.eo
  %i.eq = fptrunc <2 x double> %i.ep to <2 x float> ; 2 uses
  %i.er = extractelement <2 x float> %i.eq, i64 0
  store float %i.er, ptr %i.ee, align 4, !tbaa !58
  %i.es = load i64, ptr %i.bi, align 8
  %i.et = mul i64 %i.es, %indvars.iv71
  %.sink.i45.us.us = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.et
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.sink.i45.us.us, i64 %indvars.iv66
  %i.ev = extractelement <2 x float> %i.eq, i64 1
  store float %i.ev, ptr %i.eu, align 4, !tbaa !58
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %exitcond70.not = icmp eq i64 %indvars.iv.next67, %wide.trip.count69
  br i1 %exitcond70.not, label %._crit_edge.split.us.us.split, label %bb.s, !llvm.loop !52

._crit_edge.split.us.us.split:                    ; preds = %bb.s
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond75.not = icmp eq i64 %indvars.iv.next72, %wide.trip.count74
  br i1 %exitcond75.not, label %._crit_edge53.split, label %.preheader.us, !llvm.loop !51

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge.split
  %indvars.iv61 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next62, %._crit_edge.split ] ; 4 uses
  %i.ew = trunc nuw nsw i64 %indvars.iv61 to i32
  %i.ex = uitofp nneg i32 %i.ew to double         ; 2 uses
  %i.ey = insertelement <2 x double> poison, double %i.ex, i64 0
  %i.ez = shufflevector <2 x double> %i.ey, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fa = fmul <2 x double> %i.ce, %i.ez
  %i.fb = fmul double %i.cc, %i.ex
  br label %bb.t

._crit_edge53.split:                              ; preds = %._crit_edge.split, %._crit_edge.split.us.us.split, %._crit_edge.split.us.us.split.us.us, %.preheader.lr.ph, %.preheader50
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.v unwind label %bb.u

._crit_edge.split:                                ; preds = %bb.t
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count64
  br i1 %exitcond65.not, label %._crit_edge53.split, label %.preheader, !llvm.loop !51

bb.t:                                             ; preds = %.preheader, %bb.t
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.t ] ; 4 uses
  %i.fc = load i64, ptr %i.bb, align 8
  %i.fd = mul i64 %i.fc, %indvars.iv61
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.fd
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.sink.i, i64 %indvars.iv
  %i.ff = trunc nuw nsw i64 %indvars.iv to i32
  %i.fg = uitofp nneg i32 %i.ff to double         ; 2 uses
  %i.fh = insertelement <2 x double> poison, double %i.fg, i64 0
  %i.fi = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fi, <2 x double> %i.cg, <2 x double> %i.fa)
  %i.fk = fadd <2 x double> %i.cf, %i.fj          ; 2 uses
  %i.fl = call double @llvm.fmuladd.f64(double %i.fg, double %i.cb, double %i.fb)
  %i.fm = fadd double %i.cd, %i.fl
  %i.fn = insertelement <2 x double> %i.fk, double %i.fm, i64 1
  %i.fo = shufflevector <2 x double> %i.fk, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fp = fdiv <2 x double> %i.fn, %i.fo
  %i.fq = fptrunc <2 x double> %i.fp to <2 x float> ; 2 uses
  %i.fr = extractelement <2 x float> %i.fq, i64 0
  store float %i.fr, ptr %i.fe, align 4, !tbaa !58
  %i.fs = load i64, ptr %i.bi, align 8
  %i.ft = mul i64 %i.fs, %indvars.iv61
  %.sink.idx.i44 = select i1 %i.be, i64 0, i64 %i.ft
  %.sink.i45 = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.sink.idx.i44
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.sink.i45, i64 %indvars.iv
  %i.fv = extractelement <2 x float> %i.fq, i64 1
  store float %i.fv, ptr %i.fu, align 4, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.split, label %bb.t, !llvm.loop !52

bb.u:                                             ; preds = %bb.l, %bb.d, %bb.j, %bb.r, %._crit_edge53.split
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %._crit_edge53.split
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.fx = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 0, ptr %i.fx, align 8, !tbaa !62
  %i.fy = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 0, ptr %i.fy, align 4, !tbaa !63
  store i32 16842752, ptr %10, align 8, !tbaa !28
  %i.fz = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %7, ptr %i.fz, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.ga = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.ga, align 8, !tbaa !62
  %i.gb = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %i.gb, align 4, !tbaa !63
  store i32 16842752, ptr %11, align 8, !tbaa !28
  %i.gc = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %9, ptr %i.gc, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.gd = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 0, ptr %i.gd, align 8, !tbaa !62
  %i.ge = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i32 0, ptr %i.ge, align 4, !tbaa !63
  store i32 16842752, ptr %12, align 8, !tbaa !28
  %i.gf = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %8, ptr %i.gf, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv5remapERKNS_11_InputArrayERKNS_12_OutputArrayES2_S2_iiRKNS_7Scalar_IdEENS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, i32 noundef 2, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef 0)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  ret void

bb.x:                                             ; preds = %bb.v
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i34, %bb.u, %bb.x
  %.pn31 = phi { ptr, i32 } [ %i.gg, %bb.x ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.fw, %bb.u ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i34 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  resume { ptr, i32 } %.pn31
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #1

declare void @_ZN2cv3Mat6createENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208), i64, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

declare void @_ZN2cv5remapERKNS_11_InputArrayERKNS_12_OutputArrayES2_S2_iiRKNS_7Scalar_IdEENS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv3reg9MapProjec10inverseMapEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.cv::Ptr") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Matx", align 16         ; 10 uses
  %3 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %5 = load double, ptr %4, align 8, !tbaa !11, !noalias !69 ; 5 uses
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %10 = load <2 x double>, ptr %7, align 8, !tbaa !11, !noalias !69 ; 6 uses
  %11 = load <2 x double>, ptr %6, align 8, !tbaa !11, !noalias !69 ; 6 uses
  %12 = load <2 x double>, ptr %9, align 8, !tbaa !11, !noalias !69 ; 6 uses
  %13 = load <2 x double>, ptr %8, align 8, !tbaa !11, !noalias !69 ; 6 uses
  %14 = extractelement <2 x double> %13, i64 0
  %15 = fneg double %14                           ; 2 uses
  %16 = load <2 x double>, ptr %i.a, align 8, !tbaa !11, !noalias !69 ; 9 uses
  %17 = shufflevector <2 x double> %10, <2 x double> %13, <2 x i32> <i32 0, i32 3> ; 2 uses
  %18 = insertelement <2 x double> poison, double %15, i64 0
  %19 = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> zeroinitializer
  %20 = fmul <2 x double> %17, %19
  %21 = shufflevector <2 x double> %11, <2 x double> %16, <2 x i32> <i32 0, i32 3>
  %22 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %23 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %21, <2 x double> %22, <2 x double> %20) ; 2 uses
  %24 = shufflevector <2 x double> %23, <2 x double> %11, <2 x i32> <i32 1, i32 2>
  %25 = fneg <2 x double> %24                     ; 2 uses
  %26 = shufflevector <2 x double> %12, <2 x double> %13, <2 x i32> <i32 0, i32 3>
  %27 = fmul <2 x double> %26, %25
  %28 = insertelement <2 x double> %16, double %5, i64 0
  %29 = shufflevector <2 x double> %23, <2 x double> %10, <2 x i32> <i32 0, i32 2>
  %30 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %28, <2 x double> %29, <2 x double> %27) ; 2 uses
  %31 = extractelement <2 x double> %16, i64 0
  %32 = extractelement <2 x double> %30, i64 0
  %33 = extractelement <2 x double> %30, i64 1
  %34 = tail call noundef double @llvm.fmuladd.f64(double %31, double %33, double %32) ; 2 uses
  %35 = fcmp une double %34, 0.000000e+00
  br i1 %35, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %36 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %37 = fdiv double 1.000000e+00, %34             ; 2 uses
  %38 = fneg <2 x double> %10                     ; 3 uses
  %39 = extractelement <2 x double> %12, i64 0
  %40 = extractelement <2 x double> %16, i64 1
  %41 = extractelement <2 x double> %11, i64 0
  %42 = fneg double %40
  %43 = fmul double %39, %42
  %44 = tail call double @llvm.fmuladd.f64(double %5, double %41, double %43)
  %45 = fmul double %44, %37
  %46 = shufflevector <2 x double> %11, <2 x double> %12, <2 x i32> <i32 1, i32 2>
  %47 = fmul <2 x double> %46, %38
  %48 = shufflevector <2 x double> %11, <2 x double> %12, <2 x i32> <i32 0, i32 3>
  %49 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %48, <2 x double> %36, <2 x double> %47)
  %50 = insertelement <2 x double> poison, double %37, i64 0
  %51 = shufflevector <2 x double> %50, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %52 = fmul <2 x double> %49, %51
  store <2 x double> %52, ptr %2, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %53 = shufflevector <2 x double> %38, <2 x double> %25, <2 x i32> <i32 3, i32 1>
  %54 = fmul <2 x double> %16, %53
  %55 = shufflevector <2 x double> %12, <2 x double> %13, <2 x i32> <i32 0, i32 2>
  %56 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %55, <2 x double> %13, <2 x double> %54)
  %57 = fmul <2 x double> %56, %51
  store <2 x double> %57, ptr %.sroa.6.0..sroa_idx, align 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %58 = insertelement <2 x double> %16, double %5, i64 1
  %59 = fneg <2 x double> %13
  %60 = shufflevector <2 x double> %59, <2 x double> poison, <2 x i32> <i32 1, i32 poison> ; 2 uses
  %61 = insertelement <2 x double> %60, double %15, i64 1
  %62 = fmul <2 x double> %58, %61
  %63 = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %64 = insertelement <2 x double> %63, double %5, i64 0
  %65 = shufflevector <2 x double> %10, <2 x double> %16, <2 x i32> <i32 1, i32 3>
  %66 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %64, <2 x double> %65, <2 x double> %62)
  %67 = fmul <2 x double> %66, %51
  store <2 x double> %67, ptr %.sroa.8.0..sroa_idx, align 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %68 = shufflevector <2 x double> %11, <2 x double> %38, <2 x i32> <i32 0, i32 2>
  %69 = insertelement <2 x double> %60, double %5, i64 1
  %70 = fmul <2 x double> %68, %69
  %71 = shufflevector <2 x double> %16, <2 x double> %12, <2 x i32> <i32 1, i32 2>
  %72 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %71, <2 x double> %17, <2 x double> %70)
  %73 = fmul <2 x double> %72, %51
  store <2 x double> %73, ptr %.sroa.10.0..sroa_idx, align 16
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  store double %45, ptr %.sroa.12.0..sroa_idx, align 16, !tbaa !27
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %2, i8 0, i64 72, i1 false), !alias.scope !70
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %74 = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #22 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 -1056833530, ptr %3, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.c, align 8, !tbaa !15
  store i64 12884901891, ptr %i.b, align 8, !tbaa !29
  invoke void @_ZN2cv3reg9MapProjecC1ERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(80) %74, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  store ptr %74, ptr %0, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !71
  %i.e = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %bb.j unwind label %bb.f       ; 5 uses

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = call ptr @__cxa_begin_catch(ptr %i.g) #19 ; 0 uses
  %i.i = load ptr, ptr %74, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(80) %74) #19, !inline_history !68
  invoke void @__cxa_rethrow() #20
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #23
  unreachable

bb.i:                                             ; preds = %bb.f
  unreachable

bb.j:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 1, ptr %i.o, align 8, !tbaa !72
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 1, ptr %i.p, align 4, !tbaa !73
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN2cv3reg9MapProjecELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.e, align 8, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %74, ptr %i.q, align 8, !tbaa !38
  store ptr %i.e, ptr %i.d, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

bb.k:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @_ZdlPvm(ptr noundef nonnull %74, i64 noundef 80) #21
  br label %bb.l

.body:                                            ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.l

bb.l:                                             ; preds = %.body, %bb.k
  %.pn8 = phi { ptr, i32 } [ %i.r, %bb.k ], [ %i.l, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %.pn8
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN2cv3reg9MapProjec7composeENS_3PtrINS0_3MapEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef readonly align 8 captures(none) %1) unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !34     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !11, !noalias !76 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load <2 x double>, ptr %i.b, align 8, !tbaa !11, !noalias !76 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !11, !noalias !76 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !11, !noalias !76 ; 2 uses
  %i.n = load <2 x double>, ptr %i.f, align 8, !tbaa !11, !noalias !76 ; 5 uses
  %i.o = shufflevector <2 x double> %i.i, <2 x double> %i.n, <2 x i32> <i32 1, i32 2>
  %i.p = insertelement <2 x double> poison, double %i.m, i64 0
  %i.q = insertelement <2 x double> %i.p, double %i.d, i64 1 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.s = load double, ptr %i.r, align 8, !tbaa !11, !noalias !76 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.u = load <2 x double>, ptr %i.t, align 8, !tbaa !11, !noalias !76 ; 4 uses
  %i.v = load <2 x double>, ptr %i.h, align 8, !tbaa !11, !noalias !76 ; 5 uses
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.x = shufflevector <2 x double> %i.i, <2 x double> %i.n, <2 x i32> <i32 0, i32 3>
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.v, <2 x double> zeroinitializer) ; 2 uses
  %i.z = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.y, <2 x i32> <i32 0, i32 2>
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ab = extractelement <2 x double> %i.u, i64 1
  %i.ac = load <2 x double>, ptr %i.e, align 8, !tbaa !11, !noalias !76 ; 4 uses
  %i.ad = load <2 x double>, ptr %i.g, align 8, !tbaa !11, !noalias !76 ; 4 uses
  %i.ae = shufflevector <2 x double> %i.v, <2 x double> %i.ac, <2 x i32> <i32 1, i32 3>
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.i, <2 x double> %i.ae, <2 x double> %i.z)
  %i.ag = insertelement <2 x double> %i.ad, double %i.k, i64 0
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.o, <2 x double> %i.ag, <2 x double> %i.af) ; 2 uses
  %i.ai = insertelement <2 x double> %i.ah, double 0.000000e+00, i64 1
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.q, <2 x double> %i.ai) ; 2 uses
  %i.ak = extractelement <2 x double> %i.v, i64 0
  %i.al = insertelement <2 x double> %i.n, double %i.s, i64 0
  %i.am = insertelement <2 x double> %i.w, double %i.k, i64 0
  %i.an = shufflevector <2 x double> %i.y, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> %i.am, <2 x double> %i.an) ; 2 uses
  %i.ap = insertelement <2 x double> %i.ao, double 0.000000e+00, i64 1
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.q, <2 x double> %i.ap) ; 2 uses
  %i.ar = insertelement <2 x double> poison, double %i.s, i64 0
  %i.as = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> zeroinitializer
  %i.at = shufflevector <2 x double> %i.aj, <2 x double> %i.ao, <2 x i32> <i32 1, i32 3>
  %i.au = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> %i.ac, <2 x double> %i.at)
  %i.av = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.av, <2 x double> %i.ad, <2 x double> %i.au)
  %i.ax = shufflevector <2 x double> %i.ah, <2 x double> %i.aj, <2 x i32> <i32 1, i32 2>
  %i.ay = extractelement <2 x double> %i.aq, i64 0
  %i.az = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.ak, double 0.000000e+00)
  %i.ba = shufflevector <2 x double> %i.i, <2 x double> %i.u, <2 x i32> <i32 0, i32 3>
  %i.bb = insertelement <2 x double> %i.v, double %i.d, i64 0
  %i.bc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %i.bb, <2 x double> zeroinitializer)
  %i.bd = load <2 x double>, ptr %i.aa, align 8, !tbaa !11, !noalias !76 ; 4 uses
  %i.be = shufflevector <2 x double> %i.i, <2 x double> %i.bd, <2 x i32> <i32 1, i32 2>
  %i.bf = insertelement <2 x double> %i.ac, double %i.k, i64 1
  %i.bg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.be, <2 x double> %i.bf, <2 x double> %i.bc)
  %i.bh = shufflevector <2 x double> %i.n, <2 x double> %i.bd, <2 x i32> <i32 0, i32 3>
  %i.bi = insertelement <2 x double> %i.ad, double %i.m, i64 1
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> %i.bi, <2 x double> %i.bg) ; 2 uses
  %i.bk = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bl = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bm = insertelement <2 x double> %i.bl, double %i.az, i64 1
  %i.bn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.ac, <2 x double> %i.bm)
  %i.bo = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %i.ad, <2 x double> %i.bn)
  %i.bq = extractelement <2 x double> %i.bj, i64 0
  store double %i.bq, ptr %i.c, align 8
  store <2 x double> %i.ax, ptr %i.h, align 8
  store <2 x double> %i.aw, ptr %i.e, align 8
  store double %i.ay, ptr %i.j, align 8
  store <2 x double> %i.bp, ptr %i.g, align 8
  %i.br = extractelement <2 x double> %i.bj, i64 1
  store double %i.br, ptr %i.l, align 8, !tbaa !27
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN2cv3reg9MapProjec5scaleEd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, double noundef %1) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !11
  %i.c = fmul double %1, %i.b
  store double %i.c, ptr %i.a, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load double, ptr %i.d, align 8, !tbaa !11
  %i.f = fmul double %1, %i.e
  store double %i.f, ptr %i.d, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = load <2 x double>, ptr %i.g, align 8, !tbaa !11
  %i.i = insertelement <2 x double> poison, double %1, i64 0
  %i.j = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.k = fdiv <2 x double> %i.h, %i.j
  store <2 x double> %i.k, ptr %i.g, align 8, !tbaa !11
  ret void
}

declare void @_ZNK2cv3reg3Map4warpERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #7

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #7

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !77
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.2) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.d, ptr %i.a, align 8, !tbaa !78
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !26
  %i.g = load i64, ptr %i.a, align 8, !tbaa !78
  store i64 %i.g, ptr %i.b, align 8, !tbaa !27
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !27
  store i8 %i.i, ptr %i.h, align 1, !tbaa !27
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !79
  %i.l = load ptr, ptr %0, align 8, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #15

declare void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) unnamed_addr #7

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #7

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv3reg9MapProjecELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv3reg9MapProjecELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(80) %i.b) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv3reg9MapProjecELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt15_Sp_counted_ptrIPN2cv3reg9MapProjecELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree noreturn }
attributes #16 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin nounwind }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"vtable pointer", !3, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"double", !4, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"any pointer", !4, i64 0}
!13 = !{!"_ZTSN2cv5Size_IiEE", !5, i64 0, !5, i64 4}
!14 = !{!"_ZTSN2cv11_InputArrayE", !5, i64 0, !12, i64 8, !13, i64 16}
!15 = !{!14, !12, i64 8}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"p1 _ZTSN2cv12MatAllocatorE", !12, i64 0}
!18 = !{!"p1 _ZTSN2cv8UMatDataE", !12, i64 0}
!19 = !{!"_ZTSN2cv10DataLayoutE", !4, i64 0}
!20 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !19, i64 4, !5, i64 8, !4, i64 12}
!21 = !{!"_ZTSN2cv7MatStepE", !4, i64 0}
!22 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !17, i64 56, !18, i64 64, !20, i64 72, !21, i64 128}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!24 = !{!"long", !4, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !23, i64 0, !24, i64 8, !4, i64 16}
!26 = !{!25, !16, i64 0}
!27 = !{!4, !4, i64 0}
!28 = !{!14, !5, i64 0}
!29 = !{!5, !5, i64 0}
!30 = !{!"p1 _ZTSN2cv3reg3MapE", !12, i64 0}
!31 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!32 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !31, i64 0}
!33 = !{!"_ZTSSt12__shared_ptrIN2cv3reg3MapELN9__gnu_cxx12_Lock_policyE2EE", !30, i64 0, !32, i64 8}
!34 = !{!33, !30, i64 0}
!35 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !5, i64 8, !5, i64 12}
!36 = !{!"p1 _ZTSN2cv3reg9MapProjecE", !12, i64 0}
!37 = !{!"_ZTSSt15_Sp_counted_ptrIPN2cv3reg9MapProjecELN9__gnu_cxx12_Lock_policyE2EE", !35, i64 0, !36, i64 16}
!38 = !{!37, !36, i64 16}
!39 = distinct !{!39, i1 true, !"_ZN2cv4MatxIdLi3ELi3EE3eyeEv"}
!40 = distinct !{!40, !39, !"_ZN2cv4MatxIdLi3ELi3EE3eyeEv: argument 0"}
!41 = !{!40}
!42 = distinct !{!42, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!43 = distinct !{!43, !42, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!44 = !{!43}
!45 = !{!22, !16, i64 24}
!46 = !{!22, !5, i64 0}
!47 = distinct !{!47, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!48 = distinct !{!48, !47, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!49 = distinct !{!49, !59, !60, !61}
!50 = distinct !{!50, !59, !60}
!51 = distinct !{!51, !59}
!52 = distinct !{!52, !59}
!53 = !{!48}
!54 = !{!20, !5, i64 0}
!55 = !{!22, !5, i64 8}
!56 = !{!22, !5, i64 12}
!57 = !{!"float", !4, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"llvm.loop.isvectorized", i32 1}
!61 = !{!"llvm.loop.unroll.runtime.disable"}
!62 = !{!13, !5, i64 0}
!63 = !{!13, !5, i64 4}
!64 = distinct !{!64, i1 true, !"_ZNK2cv4MatxIdLi3ELi3EE3invEiPb"}
!65 = distinct !{!65, !64, !"_ZNK2cv4MatxIdLi3ELi3EE3invEiPb: argument 0"}
!66 = distinct !{!66, i1 true, !"_ZN2cv4MatxIdLi3ELi3EE5zerosEv"}
!67 = distinct !{!67, !66, !"_ZN2cv4MatxIdLi3ELi3EE5zerosEv: argument 0"}
!68 = distinct !{null, null, null, null, null, null}
!69 = !{!65}
!70 = !{!67, !65}
!71 = !{!32, !31, i64 0}
!72 = !{!35, !5, i64 8}
!73 = !{!35, !5, i64 12}
!74 = distinct !{!74, i1 true, !"_ZN2cvmlIdLi3ELi3ELi3EEENS_4MatxIT_XT0_EXT1_EEERKNS1_IS2_XT0_EXT2_EEERKNS1_IS2_XT2_EXT1_EEE"}
!75 = distinct !{!75, !74, !"_ZN2cvmlIdLi3ELi3ELi3EEENS_4MatxIT_XT0_EXT1_EEERKNS1_IS2_XT0_EXT2_EEERKNS1_IS2_XT2_EXT1_EEE: argument 0"}
!76 = !{!75}
!77 = !{!23, !16, i64 0}
!78 = !{!24, !24, i64 0}
!79 = !{!25, !24, i64 8}
end_hunk_1
