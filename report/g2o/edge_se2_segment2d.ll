Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_se2_segment2d?download=true
inline.NumInlined: 3867
inline.NumDeleted: 2312
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 20
begin_hunk_0

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi4ELi3ELi0ELi4ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductINS_9TransposeIKNS4_INS5_IdLi4ELi4ELi0ELi4ELi4EEELi16ES8_EEEENSC_IKNSB_INSC_IKNS4_IS6_Li16ES8_EEEESD_Li0EEEEELi1EEEEENS0_13add_assign_opIddEELi0EEELi0ELi1EE3runERSR_ = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi3ELi4ELi0ELi3ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductINSB_INS_9TransposeIKNS4_INS5_IdLi4ELi3ELi0ELi4ELi3EEELi16ES8_EEEENS5_IdLi4ELi4ELi0ELi4ELi4EEELi0EEENS4_ISH_Li16ES8_EELi1EEEEENS0_13add_assign_opIddEELi0EEELi4ELi1EE3runERSO_ = comdat any

$_ZN5Eigen8internal26call_dense_assignment_loopINS_3MapINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi0ENS_6StrideILi0ELi0EEEEENS_7ProductINS8_INS_9TransposeIKNS2_IS4_Li16ES6_EEEES4_Li0EEESA_Li1EEENS0_13add_assign_opIddEEEEvRT_RKT0_RKT1_ = comdat any

$_ZN3g2o18BaseFixedSizedEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEJNS_9VertexSE2ENS_15VertexSegment2DEEE15linearizeOplusNILi0EEEvv = comdat any

$_ZN3g2o18BaseFixedSizedEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEJNS_9VertexSE2ENS_15VertexSegment2DEEE15linearizeOplusNILi1EEEvv = comdat any

$_ZTIN3g2o14BaseBinaryEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEENS_9VertexSE2ENS_15VertexSegment2DEEE = comdat any

$_ZTSN3g2o14BaseBinaryEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEENS_9VertexSE2ENS_15VertexSegment2DEEE = comdat any

$_ZTIN3g2o18BaseFixedSizedEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEJNS_9VertexSE2ENS_15VertexSegment2DEEEE = comdat any

$_ZTSN3g2o18BaseFixedSizedEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEJNS_9VertexSE2ENS_15VertexSegment2DEEEE = comdat any

$_ZTIN3g2o8BaseEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEEE = comdat any

$_ZTSN3g2o8BaseEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEEE = comdat any

$_ZTVN3g2o18BaseFixedSizedEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEJNS_9VertexSE2ENS_15VertexSegment2DEEEE = comdat any

@_ZTVN3g2o16EdgeSE2Segment2DE = constant { [31 x ptr], [4 x ptr] } { [31 x ptr] [ptr null, ptr @_ZTIN3g2o16EdgeSE2Segment2DE, ptr @_ZN3g2o16OptimizableGraph4EdgeD2Ev, ptr @_ZN3g2o16EdgeSE2Segment2DD0Ev, ptr @_ZNK3g2o10HyperGraph4Edge11elementTypeEv, ptr @_ZN3g2o18BaseFixedSizedEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEJNS_9VertexSE2ENS_15VertexSegment2DEEE6resizeEm, ptr @_ZNK3g2o18BaseFixedSizedEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEJNS_9VertexSE2ENS_15VertexSegment2DEEE16allVerticesFixedEv, ptr @_ZN3g2o16EdgeSE2Segment2D12computeErrorEv, ptr @_ZN3g2o16EdgeSE2Segment2D18setMeasurementDataEPKd, ptr @_ZNK3g2o16EdgeSE2Segment2D18getMeasurementDataEPd, ptr @_ZNK3g2o16EdgeSE2Segment2D20measurementDimensionEv, ptr @_ZN3g2o16EdgeSE2Segment2D23setMeasurementFromStateEv, ptr @_ZNK3g2o8BaseEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEE9errorDataEv, ptr @_ZN3g2o8BaseEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEE9errorDataEv, ptr @_ZNK3g2o8BaseEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEE15informationDataEv, ptr @_ZN3g2o8BaseEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEE15informationDataEv, ptr @_ZNK3g2o8BaseEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEE4chi2Ev, ptr @_ZN3g2o18BaseFixedSizedEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEJNS_9VertexSE2ENS_15VertexSegment2DEEE22constructQuadraticFormEv, ptr @_ZN3g2o18BaseFixedSizedEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEJNS_9VertexSE2ENS_15VertexSegment2DEEE16mapHessianMemoryEPdiib, ptr @_ZN3g2o18BaseFixedSizedEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEJNS_9VertexSE2ENS_15VertexSegment2DEEE14linearizeOplusERNS_17JacobianWorkspaceE, ptr @_ZN3g2o16EdgeSE2Segment2D15initialEstimateERKSt3setIPNS_10HyperGraph6VertexESt4lessIS4_ESaIS4_EEPNS_16OptimizableGraph6VertexE, ptr @_ZN3g2o16EdgeSE2Segment2D23initialEstimatePossibleERKSt3setIPNS_10HyperGraph6VertexESt4lessIS4_ESaIS4_EEPNS_16OptimizableGraph6VertexE, ptr @_ZN3g2o16OptimizableGraph4Edge10createFromEv, ptr @_ZN3g2o16OptimizableGraph4Edge8createToEv, ptr @_ZN3g2o16OptimizableGraph4Edge12createVertexEi, ptr @_ZN3g2o16EdgeSE2Segment2D4readERSi, ptr @_ZNK3g2o16EdgeSE2Segment2D5writeERSo, ptr @_ZN3g2o16OptimizableGraph4Edge13resolveCachesEv, ptr @_ZN3g2o8BaseEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEE14setMeasurementERKS3_, ptr @_ZNK3g2o8BaseEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEE4rankEv, ptr @_ZN3g2o18BaseFixedSizedEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEJNS_9VertexSE2ENS_15VertexSegment2DEEE14linearizeOplusEv], [4 x ptr] [ptr inttoptr (i64 -40 to ptr), ptr @_ZTIN3g2o16EdgeSE2Segment2DE, ptr @_ZThn40_N3g2o16EdgeSE2Segment2DD1Ev, ptr @_ZThn40_N3g2o16EdgeSE2Segment2DD0Ev] }, align 8
@_ZTIN3g2o16EdgeSE2Segment2DE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3g2o16EdgeSE2Segment2DE, ptr @_ZTIN3g2o14BaseBinaryEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEENS_9VertexSE2ENS_15VertexSegment2DEEE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN3g2o16EdgeSE2Segment2DE = constant [25 x i8] c"N3g2o16EdgeSE2Segment2DE\00", align 1
@_ZTIN3g2o14BaseBinaryEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEENS_9VertexSE2ENS_15VertexSegment2DEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3g2o14BaseBinaryEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEENS_9VertexSE2ENS_15VertexSegment2DEEE, ptr @_ZTIN3g2o18BaseFixedSizedEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEJNS_9VertexSE2ENS_15VertexSegment2DEEEE }, comdat, align 8
@_ZTSN3g2o14BaseBinaryEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEENS_9VertexSE2ENS_15VertexSegment2DEEE = linkonce_odr constant [102 x i8] c"N3g2o14BaseBinaryEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEENS_9VertexSE2ENS_15VertexSegment2DEEE\00", comdat, align 1
@_ZTIN3g2o18BaseFixedSizedEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEJNS_9VertexSE2ENS_15VertexSegment2DEEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3g2o18BaseFixedSizedEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEJNS_9VertexSE2ENS_15VertexSegment2DEEEE, ptr @_ZTIN3g2o8BaseEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEEE }, comdat, align 8
@_ZTSN3g2o18BaseFixedSizedEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEJNS_9VertexSE2ENS_15VertexSegment2DEEEE = linkonce_odr constant [108 x i8] c"N3g2o18BaseFixedSizedEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEJNS_9VertexSE2ENS_15VertexSegment2DEEEE\00", comdat, align 1
@_ZTIN3g2o8BaseEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3g2o8BaseEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEEE, ptr @_ZTIN3g2o16OptimizableGraph4EdgeE }, comdat, align 8
@_ZTSN3g2o8BaseEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEEE = linkonce_odr constant [60 x i8] c"N3g2o8BaseEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEEE\00", comdat, align 1
@_ZTIN3g2o16OptimizableGraph4EdgeE = external constant ptr
@_ZTVN3g2o18BaseFixedSizedEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEJNS_9VertexSE2ENS_15VertexSegment2DEEEE = linkonce_odr constant { [31 x ptr], [4 x ptr] } { [31 x ptr] [ptr null, ptr @_ZTIN3g2o18BaseFixedSizedEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEJNS_9VertexSE2ENS_15VertexSegment2DEEEE, ptr @_ZN3g2o16OptimizableGraph4EdgeD2Ev, ptr @_ZN3g2o18BaseFixedSizedEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEJNS_9VertexSE2ENS_15VertexSegment2DEEED0Ev, ptr @_ZNK3g2o10HyperGraph4Edge11elementTypeEv, ptr @_ZN3g2o18BaseFixedSizedEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEJNS_9VertexSE2ENS_15VertexSegment2DEEE6resizeEm, ptr @_ZNK3g2o18BaseFixedSizedEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEJNS_9VertexSE2ENS_15VertexSegment2DEEE16allVerticesFixedEv, ptr @__cxa_pure_virtual, ptr @_ZN3g2o16OptimizableGraph4Edge18setMeasurementDataEPKd, ptr @_ZNK3g2o16OptimizableGraph4Edge18getMeasurementDataEPd, ptr @_ZNK3g2o16OptimizableGraph4Edge20measurementDimensionEv, ptr @_ZN3g2o16OptimizableGraph4Edge23setMeasurementFromStateEv, ptr @_ZNK3g2o8BaseEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEE9errorDataEv, ptr @_ZN3g2o8BaseEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEE9errorDataEv, ptr @_ZNK3g2o8BaseEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEE15informationDataEv, ptr @_ZN3g2o8BaseEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEE15informationDataEv, ptr @_ZNK3g2o8BaseEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEE4chi2Ev, ptr @_ZN3g2o18BaseFixedSizedEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEJNS_9VertexSE2ENS_15VertexSegment2DEEE22constructQuadraticFormEv, ptr @_ZN3g2o18BaseFixedSizedEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEJNS_9VertexSE2ENS_15VertexSegment2DEEE16mapHessianMemoryEPdiib, ptr @_ZN3g2o18BaseFixedSizedEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEJNS_9VertexSE2ENS_15VertexSegment2DEEE14linearizeOplusERNS_17JacobianWorkspaceE, ptr @_ZN3g2o8BaseEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEE15initialEstimateERKSt3setIPNS_10HyperGraph6VertexESt4lessIS8_ESaIS8_EEPNS_16OptimizableGraph6VertexE, ptr @_ZN3g2o16OptimizableGraph4Edge23initialEstimatePossibleERKSt3setIPNS_10HyperGraph6VertexESt4lessIS5_ESaIS5_EEPNS0_6VertexE, ptr @_ZN3g2o16OptimizableGraph4Edge10createFromEv, ptr @_ZN3g2o16OptimizableGraph4Edge8createToEv, ptr @_ZN3g2o16OptimizableGraph4Edge12createVertexEi, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN3g2o16OptimizableGraph4Edge13resolveCachesEv, ptr @_ZN3g2o8BaseEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEE14setMeasurementERKS3_, ptr @_ZNK3g2o8BaseEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEE4rankEv, ptr @_ZN3g2o18BaseFixedSizedEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEJNS_9VertexSE2ENS_15VertexSegment2DEEE14linearizeOplusEv], [4 x ptr] [ptr inttoptr (i64 -40 to ptr), ptr @_ZTIN3g2o18BaseFixedSizedEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEJNS_9VertexSE2ENS_15VertexSegment2DEEEE, ptr @_ZThn40_N3g2o18BaseFixedSizedEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEJNS_9VertexSE2ENS_15VertexSegment2DEEED1Ev, ptr @_ZThn40_N3g2o18BaseFixedSizedEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEJNS_9VertexSE2ENS_15VertexSegment2DEEED0Ev] }, comdat, align 8
@.str = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

@_ZN3g2o16EdgeSE2Segment2DC1Ev = unnamed_addr alias void (ptr), ptr @_ZN3g2o16EdgeSE2Segment2DC2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o16EdgeSE2Segment2DC2Ev(ptr noundef nonnull align 16 dereferenceable(456) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  tail call void @_ZN3g2o16OptimizableGraph4EdgeC2Ev(ptr noundef nonnull align 16 dereferenceable(456) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 4, ptr %i.c, align 8, !tbaa !40
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN3g2o18BaseFixedSizedEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEJNS_9VertexSE2ENS_15VertexSegment2DEEEE, i64 16), ptr %0, align 16, !tbaa !42
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o18BaseFixedSizedEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEJNS_9VertexSE2ENS_15VertexSegment2DEEEE, i64 264), ptr %i.b, align 8, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i8 0, ptr %i.d, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 376
  store ptr null, ptr %i.e, align 8, !alias.scope !143
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr null, ptr %i.f, align 8, !alias.scope !144
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8, !tbaa !44
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !45  ; 3 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !46   ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 2 uses
  %i.p = ashr exact i64 %i.o, 3                   ; 2 uses
  %i.q = icmp ult i64 %i.p, 2
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = sub nuw nsw i64 2, %i.p
  invoke void @_ZNSt6vectorIPN3g2o10HyperGraph6VertexESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr %i.k, i64 noundef %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN3g2o14BaseBinaryEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEENS_9VertexSE2ENS_15VertexSegment2DEEC2Ev.exit unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.o, 16
  br i1 %.not.i.i, label %_ZN3g2o14BaseBinaryEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEENS_9VertexSE2ENS_15VertexSegment2DEEC2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.s
  br i1 %.not.i.i.i.i, label %_ZN3g2o14BaseBinaryEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEENS_9VertexSE2ENS_15VertexSegment2DEEC2Ev.exit, label %_ZSt8_DestroyIPPN3g2o10HyperGraph6VertexES3_EvT_S5_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPPN3g2o10HyperGraph6VertexES3_EvT_S5_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.d
  store ptr %i.s, ptr %i.j, align 16, !tbaa !45
  br label %_ZN3g2o14BaseBinaryEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEENS_9VertexSE2ENS_15VertexSegment2DEEC2Ev.exit

bb.e:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @_ZN3g2o16OptimizableGraph4EdgeD2Ev(ptr noundef nonnull align 16 dead_on_return(368) dereferenceable(456) %0) #19
  resume { ptr, i32 } %i.t

_ZN3g2o14BaseBinaryEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEENS_9VertexSE2ENS_15VertexSegment2DEEC2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPPN3g2o10HyperGraph6VertexES3_EvT_S5_RSaIT0_E.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 440
  store ptr %i.h, ptr %i.u, align 8, !tbaa !146
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr %i.g, ptr %i.v, align 16, !tbaa !148
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN3g2o16EdgeSE2Segment2DE, i64 16), ptr %0, align 16, !tbaa !42
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o16EdgeSE2Segment2DE, i64 264), ptr %i.b, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN3g2o16EdgeSE2Segment2D4readERSi(ptr noundef nonnull align 16 dereferenceable(456) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = tail call noundef zeroext i1 @_ZN3g2o8internal10readVectorIN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEEEbRSiRNS2_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 0 uses
  %i.c = tail call noundef zeroext i1 @_ZN3g2o8BaseEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEE21readInformationMatrixERSi(ptr noundef nonnull align 16 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o8internal10readVectorIN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEEEbRSiRNS2_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !42
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !56   ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = phi i32 [ %.pre14, %bb.e ], [ %i.ak, %bb.d ], [ %i.ab, %bb.c ], [ %i.s, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  %i.j = and i32 %i.h, 2
  %i.k = icmp ne i32 %i.j, 0
  %i.l = or i1 %i.i, %i.k
  ret i1 %i.l

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 0 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !42
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !56   ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.u) ; 0 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !42
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %0, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !56 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ad) ; 0 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !42
  %i.ag = getelementptr i8, ptr %i.af, i64 -24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds i8, ptr %0, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !56 ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.am) ; 0 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !42
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre11 = load i64, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert12 = getelementptr inbounds i8, ptr %0, i64 %.pre11
  %.phi.trans.insert13 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert12, i64 32
  %.pre14 = load i32, ptr %.phi.trans.insert13, align 8, !tbaa !56
  br label %.critedge
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o8BaseEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEE21readInformationMatrixERSi(ptr noundef nonnull align 16 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !42
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !56   ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.f, %bb.g, %bb.e, %.critedge2.3, %.critedge2.2, %.critedge2.1, %.critedge2, %bb.a
  %2 = phi i32 [ %.pre65.pre.pre, %.critedge2.3 ], [ %.pre59.pre, %.critedge2.2 ], [ %.pre65.pre87, %.critedge2.1 ], [ %.pre42.pre, %.critedge2 ], [ %i.f, %bb.a ], [ %i.bh, %bb.e ], [ %i.br, %bb.f ], [ %i.cb, %bb.g ], [ %i.as, %bb.d ] ; 2 uses
  %i.h = icmp eq i32 %2, 0
  %i.i = and i32 %2, 2
  %i.j = icmp ne i32 %i.i, 0
  %i.k = or i1 %i.h, %i.j
  ret i1 %i.k

.critedge2:                                       ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.l) ; 0 uses
  %i.n = load double, ptr %i.l, align 16, !tbaa !58
  %gep.335 = getelementptr inbounds nuw i8, ptr %0, i64 232
  store double %i.n, ptr %gep.335, align 8, !tbaa !58
  %.pre.pre = load ptr, ptr %1, align 8, !tbaa !42
  %.phi.trans.insert.phi.trans.insert = getelementptr i8, ptr %.pre.pre, i64 -24
  %.pre39.pre = load i64, ptr %.phi.trans.insert.phi.trans.insert, align 8
  %.phi.trans.insert40.phi.trans.insert = getelementptr inbounds i8, ptr %1, i64 %.pre39.pre
  %.phi.trans.insert41.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.phi.trans.insert40.phi.trans.insert, i64 32
  %.pre42.pre = load i32, ptr %.phi.trans.insert41.phi.trans.insert, align 8, !tbaa !56 ; 2 uses
  %i.o = icmp eq i32 %.pre42.pre, 0
  br i1 %i.o, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.critedge2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.q = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 0 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !42
  %i.s = getelementptr i8, ptr %i.r, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %1, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !56   ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.c, label %.critedge2.1

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.z = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.y) ; 0 uses
  %i.aa = load double, ptr %i.y, align 8, !tbaa !58
  %gep.1.1 = getelementptr inbounds nuw i8, ptr %0, i64 256
  store double %i.aa, ptr %gep.1.1, align 16, !tbaa !58
  %i.ab = load ptr, ptr %1, align 8, !tbaa !42
  %i.ac = getelementptr i8, ptr %i.ab, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %1, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !56 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %.critedge2.1.a, label %.critedge2.1

.critedge2.1.a:                                   ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.aj = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.ai) ; 0 uses
  %i.ak = load double, ptr %i.ai, align 8, !tbaa !58
  %gep.1.2 = getelementptr inbounds nuw i8, ptr %0, i64 264
  store double %i.ak, ptr %gep.1.2, align 8, !tbaa !58
  %.pre46.pre = load ptr, ptr %1, align 8, !tbaa !42
  %.phi.trans.insert47.phi.trans.insert = getelementptr i8, ptr %.pre46.pre, i64 -24
  %.pre48.pre = load i64, ptr %.phi.trans.insert47.phi.trans.insert, align 8
  %.phi.trans.insert49.phi.trans.insert = getelementptr inbounds i8, ptr %1, i64 %.pre48.pre
  %.phi.trans.insert50.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.phi.trans.insert49.phi.trans.insert, i64 32
  %.pre51.pre = load i32, ptr %.phi.trans.insert50.phi.trans.insert, align 8, !tbaa !56
  br label %.critedge2.1

.critedge2.1:                                     ; preds = %bb.b, %bb.c, %.critedge2.1.a
  %.pre65.pre87 = phi i32 [ %i.w, %bb.b ], [ %.pre51.pre, %.critedge2.1.a ], [ %i.ag, %bb.c ] ; 2 uses
  %3 = icmp eq i32 %.pre65.pre87, 0
  br i1 %3, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.critedge2.1
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.am = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.al) ; 0 uses
  %i.an = load ptr, ptr %1, align 8, !tbaa !42
  %i.ao = getelementptr i8, ptr %i.an, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %1, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !56 ; 2 uses
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %.critedge2.2, label %.critedge

.critedge2.2:                                     ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.av = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.au) ; 0 uses
  %i.aw = load double, ptr %i.au, align 16, !tbaa !58
  %gep.2.1 = getelementptr inbounds nuw i8, ptr %0, i64 296
  store double %i.aw, ptr %gep.2.1, align 8, !tbaa !58
  %.pre54.pre = load ptr, ptr %1, align 8, !tbaa !42
  %.phi.trans.insert55.phi.trans.insert = getelementptr i8, ptr %.pre54.pre, i64 -24
  %.pre56.pre = load i64, ptr %.phi.trans.insert55.phi.trans.insert, align 8
  %.phi.trans.insert57.phi.trans.insert = getelementptr inbounds i8, ptr %1, i64 %.pre56.pre
  %.phi.trans.insert58.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.phi.trans.insert57.phi.trans.insert, i64 32
  %.pre59.pre = load i32, ptr %.phi.trans.insert58.phi.trans.insert, align 8, !tbaa !56 ; 2 uses
  %i.ax = icmp eq i32 %.pre59.pre, 0
  br i1 %i.ax, label %.critedge2.3, label %.critedge

.critedge2.3:                                     ; preds = %.critedge2.2
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.az = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.ay) ; 0 uses
  %.pre60.pre.pre = load ptr, ptr %1, align 8, !tbaa !42
  %.phi.trans.insert61.phi.trans.insert.phi.trans.insert = getelementptr i8, ptr %.pre60.pre.pre, i64 -24
  %.pre62.pre.pre = load i64, ptr %.phi.trans.insert61.phi.trans.insert.phi.trans.insert, align 8
  %.phi.trans.insert63.phi.trans.insert.phi.trans.insert = getelementptr inbounds i8, ptr %1, i64 %.pre62.pre.pre
  %.phi.trans.insert64.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.phi.trans.insert63.phi.trans.insert.phi.trans.insert, i64 32
  %.pre65.pre.pre = load i32, ptr %.phi.trans.insert64.phi.trans.insert.phi.trans.insert, align 8, !tbaa !56
  br label %.critedge

bb.e:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bb = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.ba) ; 0 uses
  %i.bc = load ptr, ptr %1, align 8, !tbaa !42
  %i.bd = getelementptr i8, ptr %i.bc, i64 -24
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds i8, ptr %1, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !56 ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.bk = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.bj) ; 0 uses
  %i.bl = load double, ptr %i.bj, align 16, !tbaa !58
  %gep.133 = getelementptr inbounds nuw i8, ptr %0, i64 216
  store double %i.bl, ptr %gep.133, align 8, !tbaa !58
  %i.bm = load ptr, ptr %1, align 8, !tbaa !42
  %i.bn = getelementptr i8, ptr %i.bm, i64 -24
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds i8, ptr %1, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !56 ; 2 uses
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.bu = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.bt) ; 0 uses
  %i.bv = load double, ptr %i.bt, align 16, !tbaa !58
  %gep.234 = getelementptr inbounds nuw i8, ptr %0, i64 224
  store double %i.bv, ptr %gep.234, align 16, !tbaa !58
  %i.bw = load ptr, ptr %1, align 8, !tbaa !42
  %i.bx = getelementptr i8, ptr %i.bw, i64 -24
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds i8, ptr %1, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !56 ; 2 uses
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %.critedge2, label %.critedge
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK3g2o16EdgeSE2Segment2D5writeERSo(ptr noundef nonnull align 16 dereferenceable(456) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load double, ptr %i.a, align 16, !tbaa !58
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.b)
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.4, i64 noundef 1) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.f = load double, ptr %i.e, align 8, !tbaa !58
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.f)
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.4, i64 noundef 1) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.j = load double, ptr %i.i, align 16, !tbaa !58
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.j)
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.4, i64 noundef 1) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.n = load double, ptr %i.m, align 8, !tbaa !58
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.n)
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.4, i64 noundef 1) ; 0 uses
  %i.q = tail call noundef zeroext i1 @_ZNK3g2o8BaseEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEE22writeInformationMatrixERSo(ptr noundef nonnull align 16 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret i1 %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o8BaseEdgeILi4EN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEEE22writeInformationMatrixERSo(ptr noundef nonnull align 16 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load double, ptr %i.a, align 16, !tbaa !58
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.b)
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.4, i64 noundef 1) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.f = load double, ptr %i.e, align 16, !tbaa !58
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.f)
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.4, i64 noundef 1) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.j = load double, ptr %i.i, align 16, !tbaa !58
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.j)
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.4, i64 noundef 1) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.n = load double, ptr %i.m, align 16, !tbaa !58
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.n)
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.4, i64 noundef 1) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.r = load double, ptr %i.q, align 8, !tbaa !58
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.r)
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.4, i64 noundef 1) ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.v = load double, ptr %i.u, align 8, !tbaa !58
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.v)
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.4, i64 noundef 1) ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.z = load double, ptr %i.y, align 8, !tbaa !58
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.z)
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.4, i64 noundef 1) ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ad = load double, ptr %i.ac, align 16, !tbaa !58
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.ad)
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull @.str.4, i64 noundef 1) ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ah = load double, ptr %i.ag, align 16, !tbaa !58
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.ah)
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.4, i64 noundef 1) ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.al = load double, ptr %i.ak, align 8, !tbaa !58
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.al)
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.4, i64 noundef 1) ; 0 uses
  %i.ao = load ptr, ptr %1, align 8, !tbaa !42
  %i.ap = getelementptr i8, ptr %i.ao, i64 -24
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds i8, ptr %1, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !56
  %i.au = icmp eq i32 %i.at, 0
  ret i1 %i.au
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3g2o16EdgeSE2Segment2D15initialEstimateERKSt3setIPNS_10HyperGraph6VertexESt4lessIS4_ESaIS4_EEPNS_16OptimizableGraph6VertexE(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(456) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !63   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not10.i.i.i, label %_ZNKSt3setIPN3g2o10HyperGraph6VertexESt4lessIS3_ESaIS3_EE5countERKS3_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.g, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.h, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.k = icmp ult ptr %i.j, %i.c                  ; 2 uses
  %.19.i.i.i = select i1 %i.k, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.k, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeIPN3g2o10HyperGraph6VertexES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNKSt8_Rb_treeIPN3g2o10HyperGraph6VertexES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.l = icmp eq ptr %.19.i.i.i, %i.h
  br i1 %i.l, label %_ZNKSt3setIPN3g2o10HyperGraph6VertexESt4lessIS3_ESaIS3_EE5countERKS3_.exit.thread, label %_ZNKSt3setIPN3g2o10HyperGraph6VertexESt4lessIS3_ESaIS3_EE5countERKS3_.exit

_ZNKSt3setIPN3g2o10HyperGraph6VertexESt4lessIS3_ESaIS3_EE5countERKS3_.exit: ; preds = %_ZNKSt8_Rb_treeIPN3g2o10HyperGraph6VertexES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !44
  %i.o = icmp uge ptr %i.c, %i.n
  %i.p = icmp eq ptr %2, %i.e
  %i.q = select i1 %i.o, i1 %i.p, i1 false
  br i1 %i.q, label %bb.b, label %_ZNKSt3setIPN3g2o10HyperGraph6VertexESt4lessIS3_ESaIS3_EE5countERKS3_.exit.thread

bb.b:                                             ; preds = %_ZNKSt3setIPN3g2o10HyperGraph6VertexESt4lessIS3_ESaIS3_EE5countERKS3_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 176 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.t = load <2 x double>, ptr %i.s, align 16, !tbaa !66, !noalias !165 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 192 ; 2 uses
end_hunk_0
