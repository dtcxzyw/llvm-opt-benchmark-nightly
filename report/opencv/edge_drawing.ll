Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/edge_drawing?download=true
inline.NumInlined: 1880
inline.NumDeleted: 742
loop-unroll.NumCompletelyUnrolled: 82
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 151
begin_hunk_0
$_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt19_Sp_make_shared_tag = comdat any

$_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = comdat any

@_ZZN6NFALUT3nfaEiiE3inv = internal unnamed_addr global [100000 x double] zeroinitializer, align 16
@.str = private unnamed_addr constant [10 x i8] c"prev >= 0\00", align 1
@__func__._ZN8AngleSet4_setEdd = private unnamed_addr constant [5 x i8] c"_set\00", align 1
@.str.1 = private unnamed_addr constant [83 x i8] c"/opt-bench/work/opencv/opencv_contrib/modules/ximgproc/src/edge_drawing_common.hpp\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"PFmode\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"EdgeDetectionOperator\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"GradientThresholdValue\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"AnchorThresholdValue\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"ScanInterval\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"MinPathLength\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Sigma\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"SumFlag\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"NFAValidation\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"MinLineLength\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"MaxDistanceBetweenTwoLines\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"LineFitErrorThreshold\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"MaxErrorThreshold\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"EdgeDrawing\00", align 1
@_ZTVN2cv8ximgproc15EdgeDrawingImplE = hidden constant { [17 x ptr] } { [17 x ptr] [ptr null, ptr @_ZTIN2cv8ximgproc15EdgeDrawingImplE, ptr @_ZN2cv8ximgproc15EdgeDrawingImplD2Ev, ptr @_ZN2cv8ximgproc15EdgeDrawingImplD0Ev, ptr @_ZN2cv9Algorithm5clearEv, ptr @_ZNK2cv8ximgproc15EdgeDrawingImpl5writeERNS_11FileStorageE, ptr @_ZN2cv8ximgproc15EdgeDrawingImpl4readERKNS_8FileNodeE, ptr @_ZNK2cv9Algorithm5emptyEv, ptr @_ZNK2cv9Algorithm4saveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK2cv8ximgproc15EdgeDrawingImpl14getDefaultNameB5cxx11Ev, ptr @_ZN2cv8ximgproc15EdgeDrawingImpl11detectEdgesERKNS_11_InputArrayE, ptr @_ZN2cv8ximgproc15EdgeDrawingImpl12getEdgeImageERKNS_12_OutputArrayE, ptr @_ZN2cv8ximgproc15EdgeDrawingImpl16getGradientImageERKNS_12_OutputArrayE, ptr @_ZN2cv8ximgproc15EdgeDrawingImpl11getSegmentsEv, ptr @_ZNK2cv8ximgproc15EdgeDrawingImpl24getSegmentIndicesOfLinesEv, ptr @_ZN2cv8ximgproc15EdgeDrawingImpl11detectLinesERKNS_12_OutputArrayE, ptr @_ZN2cv8ximgproc15EdgeDrawingImpl14detectEllipsesERKNS_12_OutputArrayE] }, align 8
@.str.16 = private unnamed_addr constant [90 x i8] c"!src.empty() && (src.type() == CV_8UC1 || src.type() == CV_8UC3 || src.type() == CV_8UC4)\00", align 1
@__func__._ZN2cv8ximgproc15EdgeDrawingImpl11detectEdgesERKNS_11_InputArrayE = private unnamed_addr constant [12 x i8] c"detectEdges\00", align 1
@.str.17 = private unnamed_addr constant [76 x i8] c"/opt-bench/work/opencv/opencv_contrib/modules/ximgproc/src/edge_drawing.cpp\00", align 1
@_ZN2cv8ximgproc15EdgeDrawingImpl15LUT_InitializedE = hidden local_unnamed_addr global i8 0, align 1
@_ZN2cv8ximgproc15EdgeDrawingImpl4LUT1E = hidden local_unnamed_addr global [4194305 x double] zeroinitializer, align 16
@_ZN2cv8ximgproc15EdgeDrawingImpl4LUT2E = hidden local_unnamed_addr global [4194305 x double] zeroinitializer, align 16
@_ZTVN2cv8ximgproc19ComputeGradientBodyE = hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv8ximgproc19ComputeGradientBodyE, ptr @_ZN2cv8ximgproc19ComputeGradientBodyD2Ev, ptr @_ZN2cv8ximgproc19ComputeGradientBodyD0Ev, ptr @_ZNK2cv8ximgproc19ComputeGradientBodyclERKNS_5RangeE] }, align 8
@_ZTIN2cv8ximgproc19ComputeGradientBodyE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv8ximgproc19ComputeGradientBodyE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN2cv8ximgproc19ComputeGradientBodyE = hidden constant [36 x i8] c"N2cv8ximgproc19ComputeGradientBodyE\00", align 1
@_ZTIN2cv16ParallelLoopBodyE = external constant ptr
@_ZTIN2cv8ximgproc15EdgeDrawingImplE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv8ximgproc15EdgeDrawingImplE, ptr @_ZTIN2cv8ximgproc11EdgeDrawingE }, align 8
@_ZTSN2cv8ximgproc15EdgeDrawingImplE = hidden constant [32 x i8] c"N2cv8ximgproc15EdgeDrawingImplE\00", align 1
@_ZTIN2cv8ximgproc11EdgeDrawingE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv8ximgproc11EdgeDrawingE, ptr @_ZTIN2cv9AlgorithmE }, comdat, align 8
@_ZTSN2cv8ximgproc11EdgeDrawingE = linkonce_odr constant [28 x i8] c"N2cv8ximgproc11EdgeDrawingE\00", comdat, align 1
@_ZTIN2cv9AlgorithmE = external constant ptr
@_ZTVN2cv8ximgproc11EdgeDrawingE = linkonce_odr constant { [17 x ptr] } { [17 x ptr] [ptr null, ptr @_ZTIN2cv8ximgproc11EdgeDrawingE, ptr @_ZN2cv9AlgorithmD2Ev, ptr @_ZN2cv8ximgproc11EdgeDrawingD0Ev, ptr @_ZN2cv9Algorithm5clearEv, ptr @_ZNK2cv9Algorithm5writeERNS_11FileStorageE, ptr @_ZN2cv9Algorithm4readERKNS_8FileNodeE, ptr @_ZNK2cv9Algorithm5emptyEv, ptr @_ZNK2cv9Algorithm4saveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK2cv9Algorithm14getDefaultNameB5cxx11Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@.str.18 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN2cv8ximgproc15EdgeDrawingImplESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN2cv8ximgproc15EdgeDrawingImplESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv8ximgproc15EdgeDrawingImplESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv8ximgproc15EdgeDrawingImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv8ximgproc15EdgeDrawingImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv8ximgproc15EdgeDrawingImplESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN2cv8ximgproc15EdgeDrawingImplESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN2cv8ximgproc15EdgeDrawingImplESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN2cv8ximgproc15EdgeDrawingImplESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [95 x i8] c"St23_Sp_counted_ptr_inplaceIN2cv8ximgproc15EdgeDrawingImplESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8
@.str.19 = private unnamed_addr constant [31 x i8] c"No element name has been given\00", align 1
@__func__._ZN2cvlsIbEERNS_11FileStorageES2_RKT_ = private unnamed_addr constant [11 x i8] c"operator<<\00", align 1
@.str.20 = private unnamed_addr constant [80 x i8] c"/opt-bench/work/opencv/opencv/modules/core/include/opencv2/core/persistence.hpp\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.22 = private unnamed_addr constant [53 x i8] c"DataType<_Tp>::channels == m.channels() || m.empty()\00", align 1
@__func__._ZN2cv4Mat_IhEaSERKNS_3MatE = private unnamed_addr constant [10 x i8] c"operator=\00", align 1
@.str.23 = private unnamed_addr constant [76 x i8] c"/opt-bench/work/opencv/opencv/modules/core/include/opencv2/core/mat.inl.hpp\00", align 1
@.str.24 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"vector<bool>::_M_insert_aux\00", align 1

@_ZN6NFALUTC1Eidd = hidden unnamed_addr alias void (ptr, i32, double, double), ptr @_ZN6NFALUTC2Eidd
@_ZN6NFALUTD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6NFALUTD2Ev
@_ZN2cv8ximgproc11EdgeDrawing6ParamsC1Ev = unnamed_addr alias void (ptr), ptr @_ZN2cv8ximgproc11EdgeDrawing6ParamsC2Ev
@_ZN2cv8ximgproc15EdgeDrawingImplC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN2cv8ximgproc15EdgeDrawingImplC2Ev
@_ZN2cv8ximgproc15EdgeDrawingImplD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN2cv8ximgproc15EdgeDrawingImplD2Ev

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6NFALUTC2Eidd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) initializes((0, 12), (16, 32)) %0, i32 noundef %1, double noundef %2, double noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i32 @llvm.smin.i32(i32 %1, i32 60) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 %i.a, ptr %i.b, align 8, !tbaa !40
  %i.c = sext i32 %i.a to i64
  %i.d = icmp slt i32 %1, 0
  %i.e = shl nsw i64 %i.c, 2
  %i.f = select i1 %i.d, i64 -1, i64 %i.e
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #41 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %2, ptr %i.h, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %3, ptr %i.i, align 8, !tbaa !43
  store i32 1, ptr %i.g, align 4, !tbaa !44
  %i.j = load i32, ptr %i.b, align 8, !tbaa !40   ; 2 uses
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %.lr.ph36, label %._crit_edge37

._crit_edge37:                                    ; preds = %._crit_edge28.thread, %bb.a
  ret void

.lr.ph36:                                         ; preds = %bb.a, %._crit_edge28.thread
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge28.thread ], [ 1, %bb.a ] ; 6 uses
  %i.l = phi i32 [ %i.ab, %._crit_edge28.thread ], [ %i.j, %bb.a ]
  %.02031 = phi i32 [ %.4, %._crit_edge28.thread ], [ 1, %bb.a ] ; 5 uses
  %i.m = add nuw nsw i32 %i.l, 1
  %i.n = load ptr, ptr %0, align 8, !tbaa !41
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  store i32 %i.m, ptr %i.o, align 4, !tbaa !44
  %i.p = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.q = tail call noundef double @_ZN6NFALUT3nfaEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.p, i32 noundef %.02031)
  %i.r = fcmp olt double %i.q, 0.000000e+00
  br i1 %i.r, label %.preheader, label %._crit_edge28.thread47

.preheader:                                       ; preds = %.lr.ph36
  %i.s = sext i32 %.02031 to i64
  %i.t = icmp sgt i64 %indvars.iv, %i.s
  br i1 %i.t, label %.lr.ph, label %._crit_edge28.thread

bb.b:                                             ; preds = %.lr.ph
  %i.u = zext i32 %i.v to i64
  %exitcond.not = icmp eq i64 %indvars.iv, %i.u
  br i1 %exitcond.not, label %._crit_edge28, label %.lr.ph, !llvm.loop !0

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %.12126 = phi i32 [ %i.v, %bb.b ], [ %.02031, %.preheader ]
  %i.v = add nsw i32 %.12126, 1                   ; 6 uses
  %i.w = tail call noundef double @_ZN6NFALUT3nfaEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.p, i32 noundef %i.v) ; 2 uses
  %i.x = fcmp ult double %i.w, 0.000000e+00
  br i1 %i.x, label %bb.b, label %._crit_edge28.thread47, !llvm.loop !0

._crit_edge28:                                    ; preds = %bb.b
  %i.y = fcmp olt double %i.w, 0.000000e+00
  br i1 %i.y, label %._crit_edge28.thread, label %._crit_edge28.thread47

._crit_edge28.thread47:                           ; preds = %.lr.ph, %._crit_edge28, %.lr.ph36
  %.3 = phi i32 [ %i.v, %._crit_edge28 ], [ %.02031, %.lr.ph36 ], [ %i.v, %.lr.ph ] ; 2 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !41
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  store i32 %.3, ptr %i.aa, align 4, !tbaa !44
  br label %._crit_edge28.thread

._crit_edge28.thread:                             ; preds = %.preheader, %._crit_edge28, %._crit_edge28.thread47
  %.4 = phi i32 [ %.3, %._crit_edge28.thread47 ], [ %i.v, %._crit_edge28 ], [ %.02031, %.preheader ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = load i32, ptr %i.b, align 8, !tbaa !40  ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next, %i.ac
  br i1 %i.ad, label %.lr.ph36, label %._crit_edge37, !llvm.loop !1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef double @_ZN6NFALUT3nfaEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = or i32 %2, %1
  %or.cond.not = icmp slt i32 %i.a, 0
  %i.b = icmp sgt i32 %2, %1
  %or.cond = or i1 %i.b, %or.cond.not
  br i1 %or.cond, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !42 ; 7 uses
  %i.e = fcmp ugt double %i.d, 0.000000e+00
  %i.f = fcmp ult double %i.d, 1.000000e+00
  %or.cond63 = and i1 %i.e, %i.f
  br i1 %or.cond63, label %bb.c, label %bb.v

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i32 %1, 0
  %i.h = icmp eq i32 %2, 0
  %or.cond3 = or i1 %i.g, %i.h
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load double, ptr %i.i, align 8, !tbaa !43
  %i.k = fneg double %i.j
  br label %bb.v

bb.e:                                             ; preds = %bb.c
  %i.l = icmp eq i32 %1, %2
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load double, ptr %i.m, align 8, !tbaa !43
  %i.o = fneg double %i.n
  %i.p = uitofp nneg i32 %2 to double
  %i.q = tail call double @llvm.log10.f64(double %i.d)
  %i.r = fneg double %i.p
  %i.s = tail call double @llvm.fmuladd.f64(double %i.r, double %i.q, double %i.o)
  br label %bb.v

bb.g:                                             ; preds = %bb.e
  %i.t = fsub double 1.000000e+00, %i.d           ; 2 uses
  %i.u = fdiv double %i.d, %i.t
  %3 = uitofp nneg i32 %1 to double               ; 2 uses
  %4 = fadd double %3, 1.000000e+00               ; 9 uses
  %5 = fcmp ogt double %4, 1.500000e+01
  br i1 %5, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = fadd double %4, -5.000000e-01
  %i.w = tail call double @llvm.log.f64(double %4)
  %i.x = tail call double @llvm.fmuladd.f64(double %i.v, double %i.w, double f0x3FED67F1C864BEB7)
  %i.y = fsub double %i.x, %4
  %i.z = fmul nnan double %4, 5.000000e-01
  %i.aa = fdiv double 1.000000e+00, %4
  %i.ab = tail call double @sinh(double noundef %i.aa) #42
  %i.ac = tail call double @pow(double noundef %4, double noundef 6.000000e+00) #42
  %i.ad = fmul double %i.ac, 8.100000e+02
  %i.ae = fdiv double 1.000000e+00, %i.ad
  %i.af = tail call double @llvm.fmuladd.f64(double %4, double %i.ab, double %i.ae)
  %i.ag = tail call double @log(double noundef %i.af) #42
  %i.ah = tail call noundef double @llvm.fmuladd.f64(double %i.z, double %i.ag, double %i.y)
  br label %_ZN6NFALUT9log_gammaEd.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = tail call noundef double @_ZN6NFALUT17log_gamma_lanczosEd(double noundef %4)
  br label %_ZN6NFALUT9log_gammaEd.exit

_ZN6NFALUT9log_gammaEd.exit:                      ; preds = %bb.h, %bb.i
  %i.aj = phi double [ %i.ah, %bb.h ], [ %i.ai, %bb.i ]
  %i.ak = uitofp nneg i32 %2 to double            ; 3 uses
  %6 = fadd double %i.ak, 1.000000e+00            ; 9 uses
  %7 = fcmp ogt double %6, 1.500000e+01
  br i1 %7, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN6NFALUT9log_gammaEd.exit
  %i.al = fadd double %6, -5.000000e-01
  %i.am = tail call double @llvm.log.f64(double %6)
  %i.an = tail call double @llvm.fmuladd.f64(double %i.al, double %i.am, double f0x3FED67F1C864BEB7)
  %i.ao = fsub double %i.an, %6
  %i.ap = fmul nnan double %6, 5.000000e-01
  %i.aq = fdiv double 1.000000e+00, %6
  %i.ar = tail call double @sinh(double noundef %i.aq) #42
  %i.as = tail call double @pow(double noundef %6, double noundef 6.000000e+00) #42
  %i.at = fmul double %i.as, 8.100000e+02
  %i.au = fdiv double 1.000000e+00, %i.at
  %i.av = tail call double @llvm.fmuladd.f64(double %6, double %i.ar, double %i.au)
  %i.aw = tail call double @log(double noundef %i.av) #42
  %i.ax = tail call noundef double @llvm.fmuladd.f64(double %i.ap, double %i.aw, double %i.ao)
  br label %_ZN6NFALUT9log_gammaEd.exit64

bb.k:                                             ; preds = %_ZN6NFALUT9log_gammaEd.exit
  %i.ay = tail call noundef double @_ZN6NFALUT17log_gamma_lanczosEd(double noundef %6)
  br label %_ZN6NFALUT9log_gammaEd.exit64

_ZN6NFALUT9log_gammaEd.exit64:                    ; preds = %bb.j, %bb.k
  %i.az = phi double [ %i.ax, %bb.j ], [ %i.ay, %bb.k ]
  %i.ba = fsub double %i.aj, %i.az
  %i.bb = sub nsw i32 %1, %2
  %i.bc = sitofp i32 %i.bb to double              ; 2 uses
  %i.bd = fadd double %i.bc, 1.000000e+00         ; 9 uses
  %i.be = fcmp ogt double %i.bd, 1.500000e+01
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN6NFALUT9log_gammaEd.exit64
  %i.bf = fadd double %i.bd, -5.000000e-01
  %i.bg = tail call double @llvm.log.f64(double %i.bd)
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.bg, double f0x3FED67F1C864BEB7)
  %i.bi = fsub double %i.bh, %i.bd
  %i.bj = fmul nnan double %i.bd, 5.000000e-01
  %i.bk = fdiv double 1.000000e+00, %i.bd
  %i.bl = tail call double @sinh(double noundef %i.bk) #42
  %i.bm = tail call double @pow(double noundef %i.bd, double noundef 6.000000e+00) #42
  %i.bn = fmul double %i.bm, 8.100000e+02
  %i.bo = fdiv double 1.000000e+00, %i.bn
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.bl, double %i.bo)
  %i.bq = tail call double @log(double noundef %i.bp) #42
  %i.br = tail call noundef double @llvm.fmuladd.f64(double %i.bj, double %i.bq, double %i.bi)
  br label %_ZN6NFALUT9log_gammaEd.exit65

bb.m:                                             ; preds = %_ZN6NFALUT9log_gammaEd.exit64
  %i.bs = tail call noundef double @_ZN6NFALUT17log_gamma_lanczosEd(double noundef %i.bd)
  br label %_ZN6NFALUT9log_gammaEd.exit65

_ZN6NFALUT9log_gammaEd.exit65:                    ; preds = %bb.l, %bb.m
  %i.bt = phi double [ %i.br, %bb.l ], [ %i.bs, %bb.m ]
  %i.bu = fsub double %i.ba, %i.bt
  %i.bv = tail call double @llvm.log.f64(double %i.d)
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.bv, double %i.bu)
  %i.bx = tail call double @log(double noundef %i.t) #42
  %i.by = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.bx, double %i.bw) ; 2 uses
  %i.bz = tail call double @exp(double noundef %i.by) #42 ; 6 uses
  %i.ca = fcmp oeq double %i.bz, 0.000000e+00
  br i1 %i.ca, label %_ZN6NFALUT12double_equalEdd.exit.thread, label %_ZN6NFALUT12double_equalEdd.exit

_ZN6NFALUT12double_equalEdd.exit:                 ; preds = %_ZN6NFALUT9log_gammaEd.exit65
  %i.cb = tail call double @llvm.fabs.f64(double %i.bz) ; 2 uses
  %i.cc = fcmp one double %i.bz, 0.000000e+00
  %i.cd = select i1 %i.cc, double %i.cb, double 0.000000e+00 ; 2 uses
  %i.ce = fcmp olt double %i.cd, f0x0010000000000000
  %spec.store.select.i = select i1 %i.ce, double f0x0010000000000000, double %i.cd
  %i.cf = fdiv double %i.cb, %spec.store.select.i
  %i.cg = fcmp ugt double %i.cf, f0x3D19000000000000
  br i1 %i.cg, label %.preheader, label %_ZN6NFALUT12double_equalEdd.exit.thread

.preheader:                                       ; preds = %_ZN6NFALUT12double_equalEdd.exit
  %.not62.not69 = icmp slt i32 %2, %1
  br i1 %.not62.not69, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ci = zext i32 %2 to i64
  %i.cj = load double, ptr %i.ch, align 8
  br label %.backedge

_ZN6NFALUT12double_equalEdd.exit.thread:          ; preds = %_ZN6NFALUT9log_gammaEd.exit65, %_ZN6NFALUT12double_equalEdd.exit
  %i.ck = fmul double %i.d, %3
  %i.cl = fcmp olt double %i.ck, %i.ak
  br i1 %i.cl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN6NFALUT12double_equalEdd.exit.thread
  %i.cm = fdiv double %i.by, f0xC0026BB1BBB55516
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.co = load double, ptr %i.cn, align 8, !tbaa !43
  %i.cp = fsub double %i.cm, %i.co
  br label %bb.v

bb.o:                                             ; preds = %_ZN6NFALUT12double_equalEdd.exit.thread
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !43
  %i.cs = fneg double %i.cr
  br label %bb.v

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph
  %indvars.iv = phi i64 [ %i.ci, %.lr.ph ], [ %indvars.iv.next, %.backedge.backedge ] ; 2 uses
  %.05571 = phi double [ %i.bz, %.lr.ph ], [ %i.dk, %.backedge.backedge ]
  %.05670 = phi double [ %i.bz, %.lr.ph ], [ %i.dj, %.backedge.backedge ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 6 uses
  %i.ct = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.cu = sub i32 %1, %i.ct
  %i.cv = sitofp i32 %i.cu to double              ; 2 uses
  %i.cw = icmp slt i32 %i.ct, 99999
  br i1 %i.cw, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.backedge
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6NFALUT3nfaEiiE3inv, i64 %indvars.iv.next ; 2 uses
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !46 ; 2 uses
  %i.cz = fcmp une double %i.cy, 0.000000e+00
  br i1 %i.cz, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.da = trunc nuw i64 %indvars.iv.next to i32
  %i.db = uitofp nneg i32 %i.da to double
  %i.dc = fdiv double 1.000000e+00, %i.db         ; 2 uses
  store double %i.dc, ptr %i.cx, align 8, !tbaa !46
  br label %bb.s

bb.r:                                             ; preds = %.backedge
  %i.dd = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.de = uitofp nneg i32 %i.dd to double
  %i.df = fdiv nnan double 1.000000e+00, %i.de
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %i.dg = phi double [ %i.df, %bb.r ], [ %i.dc, %bb.q ], [ %i.cy, %bb.p ]
  %i.dh = fmul double %i.dg, %i.cv                ; 2 uses
  %i.di = fmul double %i.u, %i.dh                 ; 3 uses
  %i.dj = fmul double %.05670, %i.di              ; 3 uses
  %i.dk = fadd double %.05571, %i.dj              ; 5 uses
  %i.dl = fcmp olt double %i.dh, 1.000000e+00
  br i1 %i.dl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dm = tail call double @pow(double noundef %i.di, double noundef %i.cv) #42
  %i.dn = fsub double 1.000000e+00, %i.dm
  %i.do = fsub double 1.000000e+00, %i.di
  %i.dp = fdiv double %i.dn, %i.do
  %i.dq = fadd double %i.dp, -1.000000e+00
  %i.dr = fmul double %i.dj, %i.dq
  %i.ds = tail call double @log10(double noundef %i.dk) #42
  %i.dt = fneg double %i.ds
  %i.du = fsub double %i.dt, %i.cj
  %i.dv = tail call double @llvm.fabs.f64(double %i.du)
  %i.dw = fmul double %i.dv, 1.000000e-01
  %i.dx = fmul double %i.dk, %i.dw
  %i.dy = fcmp uge double %i.dr, %i.dx
  %i.dz = trunc nuw i64 %indvars.iv.next to i32
  %.not62.not = icmp sgt i32 %1, %i.dz
  %or.cond76 = select i1 %i.dy, i1 %.not62.not, i1 false
  br i1 %or.cond76, label %.backedge.backedge, label %._crit_edge

bb.u:                                             ; preds = %bb.s
  %i.ea = trunc nuw i64 %indvars.iv.next to i32
  %.not62.not.old = icmp sgt i32 %1, %i.ea
  br i1 %.not62.not.old, label %.backedge.backedge, label %._crit_edge

.backedge.backedge:                               ; preds = %bb.u, %bb.t
  br label %.backedge, !llvm.loop !310

._crit_edge:                                      ; preds = %bb.u, %bb.t, %.preheader
  %.1 = phi double [ %i.bz, %.preheader ], [ %i.dk, %bb.t ], [ %i.dk, %bb.u ]
  %i.eb = tail call double @log10(double noundef %.1) #42
  %i.ec = fneg double %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !43
  %i.ef = fsub double %i.ec, %i.ee
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %bb.b, %._crit_edge, %bb.o, %bb.n, %bb.f, %bb.d
  %.057 = phi double [ %i.ef, %._crit_edge ], [ %i.k, %bb.d ], [ %i.s, %bb.f ], [ %i.cp, %bb.n ], [ %i.cs, %bb.o ], [ -1.000000e+00, %bb.b ], [ -1.000000e+00, %bb.a ]
  ret double %.057
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6NFALUTD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(32) dereferenceable(32) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !41     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.a) #43
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN6NFALUT20checkValidationByNFAEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !40
  %.not = icmp slt i32 %1, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef double @_ZN6NFALUT3nfaEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2)
  %i.d = fcmp oge double %i.c, 0.000000e+00
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !41
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !44
  %i.i = icmp sge i32 %2, %i.h
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.d, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef double @_ZN6NFALUT7myAtan2Edd(double noundef %0, double noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = fptrunc double %0 to float
  %i.b = fptrunc double %1 to float
  %i.c = tail call noundef float @_ZN2cv9fastAtan2Eff(float noundef %i.a, float noundef %i.b) ; 2 uses
  %i.d = fpext float %i.c to double               ; 2 uses
  %i.e = fcmp ogt float %i.c, 1.800000e+02
  %i.f = fadd nnan double %i.d, -1.800000e+02
  %.0 = select i1 %i.e, double %i.f, double %i.d
  %i.g = fdiv double %.0, 1.800000e+02
  %i.h = fmul double %i.g, f0x400921FB54442D18
  ret double %i.h
}

declare noundef float @_ZN2cv9fastAtan2Eff(float noundef, float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log10(double noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define hidden noundef double @_ZN6NFALUT9log_gammaEd(double noundef %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = fcmp ogt double %0, 1.500000e+01
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = fadd double %0, -5.000000e-01
  %i.c = tail call double @llvm.log.f64(double %0)
  %i.d = tail call double @llvm.fmuladd.f64(double %i.b, double %i.c, double f0x3FED67F1C864BEB7)
  %i.e = fsub double %i.d, %0
  %i.f = fmul nnan double %0, 5.000000e-01
  %i.g = fdiv double 1.000000e+00, %0
  %i.h = tail call double @sinh(double noundef %i.g) #42
  %i.i = tail call double @pow(double noundef %0, double noundef 6.000000e+00) #42
  %i.j = fmul double %i.i, 8.100000e+02
  %i.k = fdiv double 1.000000e+00, %i.j
  %i.l = tail call double @llvm.fmuladd.f64(double %0, double %i.h, double %i.k)
  %i.m = tail call double @log(double noundef %i.l) #42
  %i.n = tail call noundef double @llvm.fmuladd.f64(double %i.f, double %i.m, double %i.e)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = tail call noundef double @_ZN6NFALUT17log_gamma_lanczosEd(double noundef %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = phi double [ %i.n, %bb.b ], [ %i.o, %bb.c ]
  ret double %i.p
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #9

end_hunk_0
